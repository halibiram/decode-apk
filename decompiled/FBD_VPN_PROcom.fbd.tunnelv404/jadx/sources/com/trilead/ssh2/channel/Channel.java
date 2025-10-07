package com.trilead.ssh2.channel;

import com.panda912.muddy.ObfuscatedString;
import com.trilead.ssh2.log.Logger;
import com.trilead.ssh2.packets.PacketSignal;
import com.trilead.ssh2.packets.PacketWindowChange;
import com.trilead.ssh2.transport.TransportManager;
import com.trilead.ssh2.util.IOUtils;
import defpackage.AbstractC0362x4440ab85;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.OutputStream;

/* loaded from: classes3.dex */
public class Channel {
    static final int STATE_CLOSED = 4;
    static final int STATE_OPEN = 2;
    static final int STATE_OPENING = 1;
    int channelBufferSize = CHANNEL_BUFFER_SIZE;
    final Object channelSendLock;
    boolean closeMessageRecv;
    boolean closeMessageSent;
    final ChannelManager cm;
    private boolean eof;
    String exit_signal;
    Integer exit_status;
    int failedCounter;
    String hexX11FakeCookie;
    int localID;
    int localMaxPacketSize;
    int localWindow;
    final byte[] msgWindowAdjust;
    private Throwable reasonClosed;
    private final Object reasonClosedLock;
    int remoteID;
    int remoteMaxPacketSize;
    long remoteWindow;
    int state;
    final Output stderr;
    final ChannelOutputStream stdinStream;
    final Output stdout;
    int successCounter;
    private static final int CHANNEL_BUFFER_SIZE = Integer.getInteger(Channel.class.getName() + new ObfuscatedString(new long[]{-4188314755508810739L, -4276832999551071033L, -5626514949104793670L}).toString(), 1064960).intValue();
    private static final Logger log = Logger.getLogger(Channel.class);

    /* loaded from: classes3.dex */
    public class Output {
        FifoBuffer buffer;
        OutputStream sink;
        ChannelInputStream stream;

        public Output() {
            this.buffer = new FifoBuffer(Channel.this, 2048, Channel.this.channelBufferSize);
        }

        public int available() {
            FifoBuffer fifoBuffer = this.buffer;
            if (fifoBuffer != null) {
                int readable = fifoBuffer.readable();
                if (readable > 0) {
                    return readable;
                }
                if (Channel.this.isEOF()) {
                    return -1;
                }
                return 0;
            }
            throw new IllegalStateException(new ObfuscatedString(new long[]{7269842111112158430L, -7547787757797803544L, -4036768295970913158L, 2211568911817509097L, 4368747532622012183L}).toString() + this.sink);
        }

        public void eof() {
            FifoBuffer fifoBuffer = this.buffer;
            if (fifoBuffer != null) {
                fifoBuffer.close();
            } else {
                IOUtils.closeQuietly(this.sink);
            }
        }

        public void pipeTo(OutputStream outputStream) {
            this.sink = outputStream;
            if (this.buffer.readable() != 0) {
                Channel.this.freeupWindow(this.buffer.writeTo(outputStream));
            }
            this.buffer = null;
            this.stream = null;
        }

        public int read(byte[] bArr, int i, int i2) {
            return this.buffer.read(bArr, i, i2);
        }

        public int readable() {
            FifoBuffer fifoBuffer = this.buffer;
            if (fifoBuffer != null) {
                return fifoBuffer.readable();
            }
            return 0;
        }

        public void write(byte[] bArr, int i, int i2) {
            FifoBuffer fifoBuffer = this.buffer;
            if (fifoBuffer != null) {
                try {
                    fifoBuffer.write(bArr, i, i2);
                } catch (InterruptedException unused) {
                    throw new InterruptedIOException();
                }
            } else {
                this.sink.write(bArr, i, i2);
                Channel.this.freeupWindow(i2, true);
            }
        }
    }

    public Channel(ChannelManager channelManager) {
        Output output = new Output();
        this.stdout = output;
        Output output2 = new Output();
        this.stderr = output2;
        this.localID = -1;
        this.remoteID = -1;
        this.channelSendLock = new Object();
        this.closeMessageSent = false;
        this.msgWindowAdjust = new byte[9];
        this.state = 1;
        this.closeMessageRecv = false;
        this.successCounter = 0;
        this.failedCounter = 0;
        this.remoteWindow = 0L;
        this.localMaxPacketSize = -1;
        this.remoteMaxPacketSize = -1;
        this.eof = false;
        this.reasonClosedLock = new Object();
        this.reasonClosed = null;
        this.cm = channelManager;
        this.localWindow = this.channelBufferSize;
        this.localMaxPacketSize = TransportManager.MAX_PACKET_SIZE - 1024;
        this.stdinStream = new ChannelOutputStream(this);
        output.stream = new ChannelInputStream(this, false);
        output2.stream = new ChannelInputStream(this, true);
    }

    public synchronized void eof() {
        this.stdout.eof();
        this.stderr.eof();
        this.eof = true;
    }

    public void freeupWindow(int i) {
        freeupWindow(i, false);
    }

    public String getExitSignal() {
        String str;
        synchronized (this) {
            str = this.exit_signal;
        }
        return str;
    }

    public Integer getExitStatus() {
        Integer num;
        synchronized (this) {
            num = this.exit_status;
        }
        return num;
    }

    public String getReasonClosed() {
        String str;
        synchronized (this.reasonClosedLock) {
            try {
                Throwable th = this.reasonClosed;
                if (th != null) {
                    str = th.getMessage();
                } else {
                    str = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return str;
    }

    public Throwable getReasonClosedCause() {
        Throwable th;
        synchronized (this.reasonClosedLock) {
            th = this.reasonClosed;
        }
        return th;
    }

    public ChannelInputStream getStderrStream() {
        return this.stderr.stream;
    }

    public ChannelOutputStream getStdinStream() {
        return this.stdinStream;
    }

    public ChannelInputStream getStdoutStream() {
        return this.stdout.stream;
    }

    public boolean isEOF() {
        return this.eof;
    }

    public synchronized void pipeStderrStream(OutputStream outputStream) {
        this.stderr.pipeTo(outputStream);
    }

    public synchronized void pipeStdoutStream(OutputStream outputStream) {
        this.stdout.pipeTo(outputStream);
    }

    public void requestWindowChange(int i, int i2, int i3, int i4) {
        PacketWindowChange packetWindowChange;
        synchronized (this) {
            if (this.state == 2) {
                packetWindowChange = new PacketWindowChange(this.remoteID, i, i2, i3, i4);
            } else {
                throw ((IOException) new IOException(new ObfuscatedString(new long[]{1057268868480289372L, 8152685727615117806L, 2481061748480273256L, 8005992343676215965L, 3339250726612579773L, -1374977026562183316L, -3547713174340448495L}).toString()).initCause(getReasonClosedCause()));
            }
        }
        synchronized (this.channelSendLock) {
            try {
                if (!this.closeMessageSent) {
                    this.cm.tm.sendMessage(packetWindowChange.getPayload());
                } else {
                    throw ((IOException) new IOException(new ObfuscatedString(new long[]{1652144825339562859L, 6716966351221835219L, 4303393203627734827L, 8780846551229744423L, -4512472174296587209L, 1973063631611329558L, 4406654120182348839L}).toString()).initCause(getReasonClosedCause()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setReasonClosed(String str) {
        setReasonClosed(new IOException(str));
    }

    public synchronized void setWindowSize(int i) {
        if (i > 0) {
            this.channelBufferSize = i;
        } else {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{5619965980093038897L, -2628463350612509971L, -5691349427236954335L}).toString() + i);
        }
    }

    public void signal(String str) {
        PacketSignal packetSignal;
        synchronized (this) {
            if (this.state == 2) {
                packetSignal = new PacketSignal(this.remoteID, str);
            } else {
                throw ((IOException) new IOException(new ObfuscatedString(new long[]{1802933024877405894L, 692607086557650867L, 9177718966090912074L, -6309209791202017265L, 5909042003637512978L, -4316066378271432045L}).toString()).initCause(getReasonClosedCause()));
            }
        }
        synchronized (this.channelSendLock) {
            try {
                if (!this.closeMessageSent) {
                    this.cm.tm.sendMessage(packetSignal.getPayload());
                } else {
                    throw ((IOException) new IOException(new ObfuscatedString(new long[]{8790000854521030080L, -6154142873177442798L, 3487218214684939508L, 6762027066267908873L, 1622903677486873461L, 3819316297026235203L, 8683070812968312653L}).toString()).initCause(getReasonClosedCause()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void freeupWindow(int i, boolean z) {
        int i2;
        int i3;
        int i4;
        if (i <= 0) {
            return;
        }
        synchronized (this) {
            try {
                int i5 = this.localWindow;
                int i6 = this.channelBufferSize;
                if (i5 <= (i6 * 3) / 4) {
                    int readable = (i6 - this.stdout.readable()) - this.stderr.readable();
                    int i7 = this.localWindow;
                    i2 = readable - i7;
                    if (i2 > 0) {
                        this.localWindow = i7 + i2;
                    }
                } else {
                    i2 = 0;
                }
                i3 = this.remoteID;
                i4 = this.localID;
            } finally {
            }
        }
        if (i2 > 0) {
            Logger logger = log;
            if (logger.isEnabled()) {
                StringBuilder sb = new StringBuilder();
                sb.append(new ObfuscatedString(new long[]{4625918586900727284L, -5414212579971355877L, 1777561541042808662L, -4153620452231365130L, 3392051379491521162L, 6564011621947671064L, 4134796803755411570L}).toString());
                sb.append(i4);
                sb.append(new ObfuscatedString(new long[]{-8965047707495141314L, 4426335537143897460L}).toString());
                sb.append(i2);
                AbstractC0362x4440ab85.m2949xe1f61061(new ObfuscatedString(new long[]{-6690511358370713062L, 6518146286768157983L}), sb, logger, 80);
            }
            synchronized (this.channelSendLock) {
                try {
                    byte[] bArr = this.msgWindowAdjust;
                    bArr[0] = 93;
                    bArr[1] = (byte) (i3 >> 24);
                    bArr[2] = (byte) (i3 >> 16);
                    bArr[3] = (byte) (i3 >> 8);
                    bArr[4] = (byte) i3;
                    bArr[5] = (byte) (i2 >> 24);
                    bArr[6] = (byte) (i2 >> 16);
                    bArr[7] = (byte) (i2 >> 8);
                    bArr[8] = (byte) i2;
                    if (!this.closeMessageSent) {
                        if (z) {
                            this.cm.tm.sendAsynchronousMessage(bArr);
                        } else {
                            this.cm.tm.sendMessage(bArr);
                        }
                    }
                } finally {
                }
            }
        }
    }

    public void setReasonClosed(Throwable th) {
        synchronized (this.reasonClosedLock) {
            try {
                if (this.reasonClosed == null) {
                    this.reasonClosed = th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
