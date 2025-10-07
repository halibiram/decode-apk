package com.trilead.ssh2.channel;

import com.panda912.muddy.ObfuscatedString;
import com.trilead.ssh2.channel.Channel;
import com.trilead.ssh2.log.Logger;
import com.trilead.ssh2.packets.PacketChannelOpenConfirmation;
import com.trilead.ssh2.packets.PacketChannelOpenFailure;
import com.trilead.ssh2.packets.PacketChannelTrileadPing;
import com.trilead.ssh2.packets.PacketGlobalCancelForwardRequest;
import com.trilead.ssh2.packets.PacketGlobalForwardRequest;
import com.trilead.ssh2.packets.PacketGlobalTrileadPing;
import com.trilead.ssh2.packets.PacketOpenDirectTCPIPChannel;
import com.trilead.ssh2.packets.PacketOpenSessionChannel;
import com.trilead.ssh2.packets.PacketSessionExecCommand;
import com.trilead.ssh2.packets.PacketSessionPtyRequest;
import com.trilead.ssh2.packets.PacketSessionStartShell;
import com.trilead.ssh2.packets.PacketSessionSubsystemRequest;
import com.trilead.ssh2.packets.PacketSessionX11Request;
import com.trilead.ssh2.packets.TypesReader;
import com.trilead.ssh2.transport.MessageHandler;
import com.trilead.ssh2.transport.TransportManager;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.HashMap;
import java.util.Vector;
import okio.Utf8;

/* loaded from: classes3.dex */
public class ChannelManager implements MessageHandler {
    private static final Logger log = Logger.getLogger(ChannelManager.class);
    TransportManager tm;
    private HashMap x11_magic_cookies = new HashMap();
    private Vector channels = new Vector();
    private int nextLocalChannel = 100;
    private boolean shutdown = false;
    private int globalSuccessCounter = 0;
    private int globalFailedCounter = 0;
    private HashMap remoteForwardings = new HashMap();
    private Vector listenerThreads = new Vector();
    private boolean listenerThreadsAllowed = true;

    public ChannelManager(TransportManager transportManager) {
        this.tm = transportManager;
        transportManager.registerMessageHandler(this, 80, 100);
    }

    private int addChannel(Channel channel) {
        int i;
        synchronized (this.channels) {
            this.channels.addElement(channel);
            i = this.nextLocalChannel;
            this.nextLocalChannel = i + 1;
        }
        return i;
    }

    private Channel getChannel(int i) {
        synchronized (this.channels) {
            for (int i2 = 0; i2 < this.channels.size(); i2++) {
                try {
                    Channel channel = (Channel) this.channels.elementAt(i2);
                    if (channel.localID == i) {
                        return channel;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return null;
        }
    }

    private IOException ioException(String str, Channel channel) {
        return (IOException) new IOException(str).initCause(channel.getReasonClosedCause());
    }

    private void removeChannel(int i) {
        synchronized (this.channels) {
            int i2 = 0;
            while (true) {
                try {
                    if (i2 >= this.channels.size()) {
                        break;
                    }
                    if (((Channel) this.channels.elementAt(i2)).localID == i) {
                        this.channels.removeElementAt(i2);
                        break;
                    }
                    i2++;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0041, code lost:
    
        r3 = r7.failedCounter;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0044, code lost:
    
        if (r3 != 0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0046, code lost:
    
        if (r2 != 1) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0049, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x004a, code lost:
    
        if (r3 != 1) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x004c, code lost:
    
        if (r2 != 0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x004f, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x009c, code lost:
    
        throw new java.io.IOException(new com.panda912.muddy.ObfuscatedString(new long[]{-8724891154001318341L, 5306416941442284974L, 6692500739858305001L, 7577141332727412757L, 2588148124914247218L}).toString() + r7.successCounter + new com.panda912.muddy.ObfuscatedString(new long[]{-2135035766254483846L, 8223979139092593196L, 8801042159754808355L, 696981295478065241L, 2798456528772691305L}).toString() + r7.failedCounter + new com.panda912.muddy.ObfuscatedString(new long[]{-6184403346285879742L, 2494980689782399193L, 2593320679412864861L, -2214750915049001427L, -2870729684587536638L, 7980458913072563361L}).toString());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean waitForChannelRequestResult(Channel channel) {
        synchronized (channel) {
            while (true) {
                int i = channel.successCounter;
                if (i != 0 || channel.failedCounter != 0) {
                    break;
                }
                if (channel.state == 2) {
                    try {
                        channel.wait();
                    } catch (InterruptedException unused) {
                        throw new InterruptedIOException();
                    }
                } else {
                    throw ioException(new ObfuscatedString(new long[]{-6373318268868949484L, -7944076323952408942L, -7639603758074412090L, -911916636396492751L, 5662967744166156792L, -6976477497514659390L}).toString() + channel.state, channel);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0032, code lost:
    
        r3 = r6.globalFailedCounter;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0035, code lost:
    
        if (r3 != 0) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0037, code lost:
    
        if (r2 != 1) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x003a, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x003b, code lost:
    
        if (r3 != 1) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x003d, code lost:
    
        if (r2 != 0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0040, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x008e, code lost:
    
        throw new java.io.IOException(new com.panda912.muddy.ObfuscatedString(new long[]{1494455486683856105L, 3615465598015412117L, 5298179186094723810L, -8928729386855610472L, -5151656907395220480L}).toString() + r6.globalSuccessCounter + new com.panda912.muddy.ObfuscatedString(new long[]{-5431876442186928403L, -5143589981280577730L, 5287587143403185792L, -768531726360686841L, 3132363417651187737L}).toString() + r6.globalFailedCounter + new com.panda912.muddy.ObfuscatedString(new long[]{1173180813660966743L, -6861575978435871657L, 6182144581354128919L, -5166032449722890300L, -3907719985950368839L, -2405016017778866092L}).toString());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean waitForGlobalRequestResult() {
        synchronized (this.channels) {
            while (true) {
                int i = this.globalSuccessCounter;
                if (i != 0 || this.globalFailedCounter != 0) {
                    break;
                }
                if (!this.shutdown) {
                    try {
                        this.channels.wait();
                    } catch (InterruptedException unused) {
                        throw new InterruptedIOException();
                    }
                } else {
                    throw new IOException(new ObfuscatedString(new long[]{-6492529720646224316L, 5792288876195214467L, -1044732996752390963L, -4827966121314452542L, -1573902395126879916L}).toString());
                }
            }
        }
    }

    private void waitUntilChannelOpen(Channel channel) {
        int i;
        synchronized (channel) {
            while (true) {
                i = channel.state;
                if (i != 1) {
                    break;
                }
                try {
                    channel.wait();
                } catch (InterruptedException unused) {
                    throw new InterruptedIOException();
                }
            }
            if (i != 2) {
                removeChannel(channel.localID);
                throw ioException(new ObfuscatedString(new long[]{2449283718000003421L, -1600278847359270459L, 522528322271827531L, -6812513874882186205L, -5458886488759137641L}).toString() + channel.state + new ObfuscatedString(new long[]{-7174383355065495994L, -3714698340817026569L}).toString(), channel);
            }
        }
    }

    public X11ServerData checkX11Cookie(String str) {
        synchronized (this.x11_magic_cookies) {
            try {
                if (str != null) {
                    return (X11ServerData) this.x11_magic_cookies.get(str);
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void closeAllChannels() {
        Vector vector;
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(50, new ObfuscatedString(new long[]{3681128334458357750L, 6530380906557307105L, 1225373673562892537L, 6101833380361999908L}).toString());
        }
        synchronized (this.channels) {
            vector = (Vector) this.channels.clone();
        }
        for (int i = 0; i < vector.size(); i++) {
            try {
                closeChannel((Channel) vector.elementAt(i), new ObfuscatedString(new long[]{378148888981806039L, 6029232714683744560L, 7552542962829338152L, 1533401876580420879L}).toString(), true);
            } catch (IOException unused) {
            }
        }
    }

    public void closeChannel(Channel channel, String str, boolean z) {
        byte[] bArr = new byte[5];
        synchronized (channel) {
            if (z) {
                try {
                    channel.state = 4;
                    channel.eof();
                } finally {
                }
            }
            channel.setReasonClosed(str);
            bArr[0] = 97;
            int i = channel.remoteID;
            bArr[1] = (byte) (i >> 24);
            bArr[2] = (byte) (i >> 16);
            bArr[3] = (byte) (i >> 8);
            bArr[4] = (byte) i;
            channel.notifyAll();
        }
        synchronized (channel.channelSendLock) {
            try {
                if (channel.closeMessageSent) {
                    return;
                }
                this.tm.sendMessage(bArr);
                channel.closeMessageSent = true;
                Logger logger = log;
                if (logger.isEnabled()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(new ObfuscatedString(new long[]{6011202296588987945L, -6727752745994616510L, 8390252400451267355L, 8262330386621049192L, 4805917997128341603L, 8432060606385612319L}).toString());
                    sb.append(channel.localID);
                    AbstractC0362x4440ab85.m2949xe1f61061(new ObfuscatedString(new long[]{1133467331958156839L, 7848121149361315799L}), sb, logger, 50);
                }
            } finally {
            }
        }
    }

    public int getAvailable(Channel channel, boolean z) {
        Channel.Output output;
        int available;
        synchronized (channel) {
            try {
                if (z) {
                    output = channel.stderr;
                } else {
                    output = channel.stdout;
                }
                available = output.available();
            } catch (Throwable th) {
                throw th;
            }
        }
        return available;
    }

    public int getChannelData(Channel channel, boolean z, byte[] bArr, int i, int i2) {
        Channel.Output output;
        synchronized (channel) {
            try {
                try {
                    if (z) {
                        output = channel.stderr;
                    } else {
                        output = channel.stdout;
                    }
                    int read = output.read(bArr, i, i2);
                    if (read <= 0) {
                        return read;
                    }
                    channel.freeupWindow(read);
                    return read;
                } catch (InterruptedException unused) {
                    throw new InterruptedIOException();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.trilead.ssh2.transport.MessageHandler
    public void handleEndMessage(Throwable th) {
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(50, new ObfuscatedString(new long[]{6315534715146968666L, -5398160229555517336L, 3647546746979399191L, 8550741965381379129L, -7398066350308281519L}).toString());
        }
        synchronized (this.listenerThreads) {
            for (int i = 0; i < this.listenerThreads.size(); i++) {
                try {
                    ((IChannelWorkerThread) this.listenerThreads.elementAt(i)).stopWorking();
                } finally {
                }
            }
            this.listenerThreadsAllowed = false;
        }
        synchronized (this.channels) {
            try {
                this.shutdown = true;
                for (int i2 = 0; i2 < this.channels.size(); i2++) {
                    Channel channel = (Channel) this.channels.elementAt(i2);
                    synchronized (channel) {
                        channel.eof();
                        channel.state = 4;
                        channel.setReasonClosed(new IOException(new ObfuscatedString(new long[]{-6200059333059005610L, -6555845836888427155L, -3483460801829499598L, 4678094342279252503L, -7479789567893310562L}).toString()).initCause(th));
                        channel.closeMessageRecv = true;
                        channel.notifyAll();
                    }
                }
                this.channels.setSize(0);
                this.channels.trimToSize();
                this.channels.notifyAll();
            } finally {
            }
        }
    }

    @Override // com.trilead.ssh2.transport.MessageHandler
    public void handleMessage(byte[] bArr, int i) {
        byte b = bArr[0];
        switch (b) {
            case 80:
                msgGlobalRequest(bArr, i);
                return;
            case 81:
                msgGlobalSuccess();
                return;
            case 82:
                msgGlobalFailure();
                return;
            default:
                switch (b) {
                    case 90:
                        msgChannelOpen(bArr, i);
                        return;
                    case 91:
                        msgChannelOpenConfirmation(bArr, i);
                        return;
                    case 92:
                        msgChannelOpenFailure(bArr, i);
                        return;
                    case 93:
                        msgChannelWindowAdjust(bArr, i);
                        return;
                    case 94:
                        msgChannelData(bArr, i);
                        return;
                    case 95:
                        msgChannelExtendedData(bArr, i);
                        return;
                    case 96:
                        msgChannelEOF(bArr, i);
                        return;
                    case 97:
                        msgChannelClose(bArr, i);
                        return;
                    case 98:
                        msgChannelRequest(bArr, i);
                        return;
                    case 99:
                        msgChannelSuccess(bArr, i);
                        return;
                    case 100:
                        msgChannelFailure(bArr, i);
                        return;
                    default:
                        throw new IOException(new ObfuscatedString(new long[]{-7607635484673850205L, -2735701162480875100L, -1515646963140176351L, -3756569822468589424L, 1176746045433579515L, 2037676878710916984L}).toString() + (bArr[0] & 255));
                }
        }
    }

    public void msgChannelClose(byte[] bArr, int i) {
        if (i == 5) {
            int i2 = (bArr[4] & 255) | ((bArr[1] & 255) << 24) | ((bArr[2] & 255) << 16) | ((bArr[3] & 255) << 8);
            Channel channel = getChannel(i2);
            if (channel != null) {
                synchronized (channel) {
                    channel.eof();
                    channel.state = 4;
                    channel.setReasonClosed(new ObfuscatedString(new long[]{-6602530835424541559L, -6533557117159615381L, 2547246618214650286L, 4961606295471826174L, 1577470871035308981L}).toString());
                    channel.closeMessageRecv = true;
                    removeChannel(channel.localID);
                    channel.notifyAll();
                }
                Logger logger = log;
                if (logger.isEnabled()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(new ObfuscatedString(new long[]{-2027450531888442871L, 1607510031887943800L, 3097319194162820628L, 4066197635057461234L, 5688600714503582666L, 1066598980150588449L}).toString());
                    sb.append(i2);
                    AbstractC0362x4440ab85.m2949xe1f61061(new ObfuscatedString(new long[]{5208332598840576104L, 1028285700547387355L}), sb, logger, 50);
                    return;
                }
                return;
            }
            throw new IOException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-480470424135049160L, -8891857022522716780L, 8618651102784861229L, 4418673426108170373L, 7515552858249397756L, 842863036669242150L, 7017689130381957246L, -6494495537024962533L, 8406302808837800925L, 1203325643408892234L}), new StringBuilder(), i2));
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(new ObfuscatedString(new long[]{3156773795734409242L, -8138707927842907407L, 4867694506277864451L, -24343955615033134L, -4364316787381217499L, 2519217517163333578L, -7681705472500964432L}).toString());
        sb2.append(i);
        throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{2138818110519410436L, 5712304831349079797L}), sb2));
    }

    public void msgChannelData(byte[] bArr, int i) {
        if (i > 9) {
            int i2 = ((bArr[1] & 255) << 24) | ((bArr[2] & 255) << 16) | ((bArr[3] & 255) << 8) | (bArr[4] & 255);
            int i3 = ((bArr[7] & 255) << 8) | ((bArr[5] & 255) << 24) | ((bArr[6] & 255) << 16) | (bArr[8] & 255);
            Channel channel = getChannel(i2);
            if (channel != null) {
                int i4 = i - 9;
                if (i3 == i4) {
                    Logger logger = log;
                    if (logger.isEnabled()) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(new ObfuscatedString(new long[]{1547850685539458406L, 7670135599513775113L, -3532112909091836649L, -8178673809110705655L, -6844760499741327219L, -7081528644036531710L}).toString());
                        sb.append(i2);
                        sb.append(new ObfuscatedString(new long[]{5334734059765121911L, 5511132096544887558L}).toString());
                        sb.append(i3);
                        AbstractC0362x4440ab85.m2949xe1f61061(new ObfuscatedString(new long[]{7051375532019832556L, 1924317743069619346L}), sb, logger, 80);
                    }
                    synchronized (channel) {
                        try {
                            int i5 = channel.state;
                            if (i5 == 4) {
                                return;
                            }
                            if (i5 == 2) {
                                int i6 = channel.localWindow;
                                if (i6 >= i3) {
                                    channel.localWindow = i6 - i3;
                                    channel.stdout.write(bArr, 9, i3);
                                    return;
                                }
                                throw new IOException(new ObfuscatedString(new long[]{4715417382471518520L, 5218820909807430178L, -8375158977802626497L, 7371465091891633380L, -3837798898916978060L, -6202530383934222208L, 623913006510415223L, -5451764987047807760L}).toString());
                            }
                            throw new IOException(new ObfuscatedString(new long[]{-2306407011615483232L, -7395329729351168336L, -4038786939138910476L, -3516394283846287628L, -8361087758917336609L, -1035800667085552911L, 6509641801504326465L, 7325012352375511241L, -9219653975924478183L}).toString() + channel.state + new ObfuscatedString(new long[]{-4852347865456351953L, 6590927403727532072L}).toString());
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append(new ObfuscatedString(new long[]{-7132564037458713593L, 117555215713991014L, -5316578550461044276L, -8934329652298413354L, -2498783006594451114L, -2081864771867562170L, -6785277584104026389L, 7515495540577734733L}).toString());
                sb2.append(i4);
                sb2.append(new ObfuscatedString(new long[]{6947724119035018718L, 1185955711712420476L}).toString());
                sb2.append(i3);
                throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-5295674294285256350L, 7723196205933728197L}), sb2));
            }
            throw new IOException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-1064959094608889167L, 247157550582866996L, -1116174868892298290L, 7776905732787810393L, 2361366822620696803L, 1027135967115740436L, 3217998022299849436L, 3466642227613612350L, -4801616915080375295L, -8178740222415685895L}), new StringBuilder(), i2));
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append(new ObfuscatedString(new long[]{5331938357451478418L, -4029396839815569928L, -1365345254786608412L, -53522718441707079L, 8673959668250423796L, 3912264751871521091L, 4054782734518678746L}).toString());
        sb3.append(i);
        throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{867455142048016694L, -7049321732991073090L}), sb3));
    }

    public void msgChannelEOF(byte[] bArr, int i) {
        if (i == 5) {
            int i2 = (bArr[4] & 255) | ((bArr[1] & 255) << 24) | ((bArr[2] & 255) << 16) | ((bArr[3] & 255) << 8);
            Channel channel = getChannel(i2);
            if (channel != null) {
                channel.eof();
                Logger logger = log;
                if (logger.isEnabled()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(new ObfuscatedString(new long[]{-2150127469977924294L, -9033118966484309628L, 6843233239422783340L, -6970130780412939765L, 3077618170519846803L, 1291036930883062132L}).toString());
                    sb.append(i2);
                    AbstractC0362x4440ab85.m2949xe1f61061(new ObfuscatedString(new long[]{2104142150202870918L, -2328691628506871971L}), sb, logger, 50);
                    return;
                }
                return;
            }
            throw new IOException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{27235251890067571L, 6112991072981877789L, -5040982909271481495L, 3982695381239085891L, 7841482579344962426L, -768803096706500072L, -8056806939618473502L, -7031336088798901424L, -6314066479020870724L}), new StringBuilder(), i2));
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(new ObfuscatedString(new long[]{-6351114804815377615L, 5792586589071489276L, 768197050717656881L, 8430845142617403885L, -7244256560116416617L, 3078064447707733228L, -4302677267737775007L}).toString());
        sb2.append(i);
        throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{6352364762762344784L, -1354806114200089662L}), sb2));
    }

    public void msgChannelExtendedData(byte[] bArr, int i) {
        if (i > 13) {
            int i2 = ((bArr[1] & 255) << 24) | ((bArr[2] & 255) << 16) | ((bArr[3] & 255) << 8) | (bArr[4] & 255);
            int i3 = ((bArr[5] & 255) << 24) | ((bArr[6] & 255) << 16) | ((bArr[7] & 255) << 8) | (bArr[8] & 255);
            int i4 = ((bArr[9] & 255) << 24) | ((bArr[10] & 255) << 16) | ((bArr[11] & 255) << 8) | (bArr[12] & 255);
            Channel channel = getChannel(i2);
            if (channel != null) {
                if (i3 == 1) {
                    int i5 = i - 13;
                    if (i4 == i5) {
                        Logger logger = log;
                        if (logger.isEnabled()) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(new ObfuscatedString(new long[]{-7500223182151601827L, 462871533148206913L, -4476286668692264568L, -3835422384892122961L, 5096129849958363371L, 6071683146319753165L, -5079123183097440929L}).toString());
                            sb.append(i2);
                            sb.append(new ObfuscatedString(new long[]{-1037420084411500116L, -7040588450288492805L}).toString());
                            sb.append(i4);
                            AbstractC0362x4440ab85.m2949xe1f61061(new ObfuscatedString(new long[]{882047490274559842L, 5188449710244544270L}), sb, logger, 80);
                        }
                        synchronized (channel) {
                            try {
                                int i6 = channel.state;
                                if (i6 == 4) {
                                    return;
                                }
                                if (i6 == 2) {
                                    int i7 = channel.localWindow;
                                    if (i7 >= i4) {
                                        channel.localWindow = i7 - i4;
                                        channel.stderr.write(bArr, 13, i4);
                                        return;
                                    }
                                    throw new IOException(new ObfuscatedString(new long[]{-3021263123465143510L, 1865932594265569100L, -614849582368392282L, 8584262062684959257L, 7643472232512114773L, -4957489500326475110L, 1598396207267696508L, 4635941429600489558L}).toString());
                                }
                                throw new IOException(new ObfuscatedString(new long[]{-854293058249035902L, 2413751683051378915L, 6013850092854263133L, -2447342085589905860L, 6834453243114270983L, -2586680208910989194L, -4794014275765569075L, 3666420050589154089L, 1944996454091228954L, -9215608128905261587L}).toString() + channel.state + new ObfuscatedString(new long[]{-829962303821626361L, -4192004359465313350L}).toString());
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(new ObfuscatedString(new long[]{3407469543357895430L, 5704806851482868570L, -4205762891938105959L, 1318952279794437050L, -251651167288245242L, 6832763391101579002L, -6353079986826188812L, -3903661895860455049L, 3103018362869229466L}).toString());
                    sb2.append(i5);
                    sb2.append(new ObfuscatedString(new long[]{-4055839204687638360L, -7251140423021608841L}).toString());
                    sb2.append(i4);
                    throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-8982524237984435506L, 4945199402646271496L}), sb2));
                }
                StringBuilder sb3 = new StringBuilder();
                sb3.append(new ObfuscatedString(new long[]{-1743208623512839934L, -6929714519306729107L, 7818354400332119422L, -2584992856361317813L, 2541306704658732369L, 5946477205994124582L, 4032224315933703276L, 6094799743485032312L}).toString());
                sb3.append(i3);
                throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{1167498061897571998L, 743453275862436160L}), sb3));
            }
            throw new IOException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{959264169583133780L, 5426838524401152568L, 4845613970465730440L, 1296818346803271042L, -5756034643716719368L, -2560371929513286897L, -4192985111772590233L, 7969569737152845022L, -3920706052524846308L, -344409545488582371L, -4720081658643667495L}), new StringBuilder(), i2));
        }
        StringBuilder sb4 = new StringBuilder();
        sb4.append(new ObfuscatedString(new long[]{1539007802314375952L, -2091527598368722253L, -8829875414536507877L, 5412904995413110775L, -3820592235992032070L, 8973818040772876962L, -5771462016055687920L, -7183825810269368430L}).toString());
        sb4.append(i);
        throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-2075254960543979656L, 2847053572223227134L}), sb4));
    }

    public void msgChannelFailure(byte[] bArr, int i) {
        if (i == 5) {
            int i2 = (bArr[4] & 255) | ((bArr[1] & 255) << 24) | ((bArr[2] & 255) << 16) | ((bArr[3] & 255) << 8);
            Channel channel = getChannel(i2);
            if (channel != null) {
                synchronized (channel) {
                    channel.failedCounter++;
                    channel.notifyAll();
                }
                Logger logger = log;
                if (logger.isEnabled()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(new ObfuscatedString(new long[]{-7044621714679358757L, -4313893399756037949L, 5956631398319230029L, 3215002145018234408L, 7044898354431114759L, 2734394500286700376L}).toString());
                    sb.append(i2);
                    AbstractC0362x4440ab85.m2949xe1f61061(new ObfuscatedString(new long[]{-7372785812078360240L, -6082093246766619169L}), sb, logger, 50);
                    return;
                }
                return;
            }
            throw new IOException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-5181258575079638543L, -8391431908294803544L, -6700740379327933543L, -5530823911840543037L, -4093469552284008486L, -6814214967477171485L, 2291667065692121941L, -8318638287798250315L, -2414340212397478658L, -8578009826066804271L}), new StringBuilder(), i2));
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(new ObfuscatedString(new long[]{6067137458832692353L, 4292603369550877283L, -4583480506641364959L, 6688230642511877200L, -7501104894425902553L, -6359492528626638909L, -7090310381204214713L}).toString());
        sb2.append(i);
        throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{6090067462584903834L, 7078881020977110617L}), sb2));
    }

    public void msgChannelOpen(byte[] bArr, int i) {
        RemoteForwardingData remoteForwardingData;
        TypesReader typesReader = new TypesReader(bArr, 0, i);
        typesReader.readByte();
        String readString = typesReader.readString();
        int readUINT32 = typesReader.readUINT32();
        int readUINT322 = typesReader.readUINT32();
        int readUINT323 = typesReader.readUINT32();
        if (new ObfuscatedString(new long[]{-2570017206008900911L, 6954327377749664771L}).toString().equals(readString)) {
            synchronized (this.x11_magic_cookies) {
                try {
                    if (this.x11_magic_cookies.size() == 0) {
                        this.tm.sendAsynchronousMessage(new PacketChannelOpenFailure(readUINT32, 1, new ObfuscatedString(new long[]{2161363019859334978L, -7528409600463723419L, -5167652274908516260L, -6453105650723297704L, 2362242426968314764L}).toString(), new ObfuscatedString(new long[]{-3020797636339089819L}).toString()).getPayload());
                        Logger logger = log;
                        if (logger.isEnabled()) {
                            logger.log(20, new ObfuscatedString(new long[]{7148628352362759082L, 5472682261566481240L, 8092629878698944703L, 7103892748742969322L, -1041638384087700289L, 811939128477945806L}).toString());
                        }
                        return;
                    }
                    String readString2 = typesReader.readString();
                    int readUINT324 = typesReader.readUINT32();
                    Channel channel = new Channel(this);
                    synchronized (channel) {
                        channel.remoteID = readUINT32;
                        channel.remoteWindow = readUINT322 & 4294967295L;
                        channel.remoteMaxPacketSize = readUINT323;
                        channel.localID = addChannel(channel);
                    }
                    RemoteX11AcceptThread remoteX11AcceptThread = new RemoteX11AcceptThread(channel, readString2, readUINT324);
                    remoteX11AcceptThread.setDaemon(true);
                    remoteX11AcceptThread.start();
                    return;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (new ObfuscatedString(new long[]{2818991882558429175L, -8828422262871214786L, 996505722895554330L}).toString().equals(readString)) {
            String readString3 = typesReader.readString();
            int readUINT325 = typesReader.readUINT32();
            String readString4 = typesReader.readString();
            int readUINT326 = typesReader.readUINT32();
            synchronized (this.remoteForwardings) {
                remoteForwardingData = (RemoteForwardingData) this.remoteForwardings.get(new Integer(readUINT325));
            }
            if (remoteForwardingData == null) {
                this.tm.sendAsynchronousMessage(new PacketChannelOpenFailure(readUINT32, 1, new ObfuscatedString(new long[]{3587518459981127481L, 2856724760298186804L, 8844078822841136581L, 2028458402831504006L, -4269969728790946448L, -4331055540694407474L, 5084438295788137587L, -7453165397433891001L}).toString(), new ObfuscatedString(new long[]{-9036732493142503461L}).toString()).getPayload());
                Logger logger2 = log;
                if (logger2.isEnabled()) {
                    logger2.log(20, new ObfuscatedString(new long[]{1137152981768798066L, -7118454754792723860L, -7032034015518341081L, 8897969250618439922L, 2903512778926723712L, 3142023314252611073L, 3270244126071828679L}).toString());
                    return;
                }
                return;
            }
            Channel channel2 = new Channel(this);
            synchronized (channel2) {
                channel2.remoteID = readUINT32;
                channel2.remoteWindow = readUINT322 & 4294967295L;
                channel2.remoteMaxPacketSize = readUINT323;
                channel2.localID = addChannel(channel2);
            }
            RemoteAcceptThread remoteAcceptThread = new RemoteAcceptThread(channel2, readString3, readUINT325, readString4, readUINT326, remoteForwardingData.targetAddress, remoteForwardingData.targetPort);
            remoteAcceptThread.setDaemon(true);
            remoteAcceptThread.start();
            return;
        }
        this.tm.sendAsynchronousMessage(new PacketChannelOpenFailure(readUINT32, 3, new ObfuscatedString(new long[]{5400846893445783003L, -2955204534867842415L, -8295137441593003001L, -3710690722073099827L}).toString(), new ObfuscatedString(new long[]{-2965190336734292848L}).toString()).getPayload());
        Logger logger3 = log;
        if (logger3.isEnabled()) {
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{6157177494569021540L, -5045246694288245413L, -2770490682629668773L, 7972350044991286693L, 5943749059105619000L, -3937669246902041811L, 303516904971224867L, 4637775764810926302L}).toString());
            sb.append(readString);
            AbstractC0362x4440ab85.m2949xe1f61061(new ObfuscatedString(new long[]{2748330310479660133L, -7627392084100960811L}), sb, logger3, 20);
        }
    }

    public void msgChannelOpenConfirmation(byte[] bArr, int i) {
        PacketChannelOpenConfirmation packetChannelOpenConfirmation = new PacketChannelOpenConfirmation(bArr, 0, i);
        Channel channel = getChannel(packetChannelOpenConfirmation.recipientChannelID);
        if (channel != null) {
            synchronized (channel) {
                if (channel.state == 1) {
                    channel.remoteID = packetChannelOpenConfirmation.senderChannelID;
                    channel.remoteWindow = packetChannelOpenConfirmation.initialWindowSize & 4294967295L;
                    channel.remoteMaxPacketSize = packetChannelOpenConfirmation.maxPacketSize;
                    channel.state = 2;
                    channel.notifyAll();
                } else {
                    throw new IOException(new ObfuscatedString(new long[]{-6994066505416157550L, 2444492824665128255L, 1756551424549470632L, -3370042968079083752L, -4430091092050088496L, 5275971810530748581L, 6925578124183929601L, 2792831136550929214L, -6934779934159500714L, 6148746485961792903L}).toString() + packetChannelOpenConfirmation.recipientChannelID);
                }
            }
            Logger logger = log;
            if (logger.isEnabled()) {
                StringBuilder sb = new StringBuilder();
                sb.append(new ObfuscatedString(new long[]{-3660351742543457120L, -3652156416340334841L, 3403620106897016440L, 9210567516209035006L, 9073290053950828476L, 619842625992367321L, 2284435488648207090L}).toString());
                sb.append(packetChannelOpenConfirmation.recipientChannelID);
                sb.append(new ObfuscatedString(new long[]{9107992979554913371L, -8885052206042205916L, -3813066729436278272L}).toString());
                sb.append(packetChannelOpenConfirmation.senderChannelID);
                AbstractC0362x4440ab85.m2949xe1f61061(new ObfuscatedString(new long[]{-2406319364045918617L, 1103624386814486275L}), sb, logger, 50);
                return;
            }
            return;
        }
        throw new IOException(new ObfuscatedString(new long[]{7552543796689405392L, 3884605701320731133L, -44843866842469933L, 4894342055676733273L, 6170126815298911314L, -8068778539090167367L, -6671061356060675561L, -6005952483615451220L, 3836426963356905490L, -242702492019953449L, 6523478342148900431L}).toString() + packetChannelOpenConfirmation.recipientChannelID);
    }

    public void msgChannelOpenFailure(byte[] bArr, int i) {
        String obfuscatedString;
        if (i >= 5) {
            TypesReader typesReader = new TypesReader(bArr, 0, i);
            typesReader.readByte();
            int readUINT32 = typesReader.readUINT32();
            Channel channel = getChannel(readUINT32);
            if (channel != null) {
                int readUINT322 = typesReader.readUINT32();
                String readString = typesReader.readString(new ObfuscatedString(new long[]{5291594085864743294L, -7382774562448019714L}).toString());
                if (readUINT322 != 1) {
                    if (readUINT322 != 2) {
                        if (readUINT322 != 3) {
                            if (readUINT322 != 4) {
                                StringBuilder sb = new StringBuilder();
                                sb.append(new ObfuscatedString(new long[]{7231937908781880401L, -249621050733854234L, -3763051280747297721L, -4378577309092971217L}).toString());
                                sb.append(readUINT322);
                                obfuscatedString = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{2270303774272538364L, 461893958474048926L}), sb);
                            } else {
                                obfuscatedString = new ObfuscatedString(new long[]{-2926005469922797873L, 7762085552376834257L, -6825553923178422135L, 2772955044136497912L, -5711089489961201330L}).toString();
                            }
                        } else {
                            obfuscatedString = new ObfuscatedString(new long[]{-6228841627996606378L, -1117191036463654992L, 4954747044558300029L, -4487003898054777476L, 1578124477203819632L}).toString();
                        }
                    } else {
                        obfuscatedString = new ObfuscatedString(new long[]{7194981391381614860L, 8971253089422053233L, 6284191803946328106L, 6099655871257232292L}).toString();
                    }
                } else {
                    obfuscatedString = new ObfuscatedString(new long[]{-5999055971969438787L, 1600029899070275802L, -7289503735194952126L, -4797340257100812641L, 6342512554425290217L, -5674333489685962888L}).toString();
                }
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(readString);
                for (int i2 = 0; i2 < stringBuffer.length(); i2++) {
                    char charAt = stringBuffer.charAt(i2);
                    if (charAt < ' ' || charAt > '~') {
                        stringBuffer.setCharAt(i2, Utf8.REPLACEMENT_CHARACTER);
                    }
                }
                synchronized (channel) {
                    channel.eof();
                    channel.state = 4;
                    channel.setReasonClosed(new ObfuscatedString(new long[]{4322712729492241801L, -1050552792293249893L, 1280833976944756196L, 6388064379201950217L, -8888197248605291633L, -2213716391985657793L}).toString() + obfuscatedString + new ObfuscatedString(new long[]{1944002819277254412L, 6480335134875847031L}).toString() + stringBuffer.toString() + new ObfuscatedString(new long[]{-2596841813911059189L, 8605425947778698734L}).toString());
                    channel.notifyAll();
                }
                Logger logger = log;
                if (logger.isEnabled()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(new ObfuscatedString(new long[]{2914561852428013989L, -5150109484723280428L, 884397203222767997L, 2945147849348859388L, -1703864305023195884L, -204341556472954244L, -8688365008648514552L}).toString());
                    sb2.append(readUINT32);
                    AbstractC0362x4440ab85.m2949xe1f61061(new ObfuscatedString(new long[]{-468624859742081984L, 9069652697945449107L}), sb2, logger, 50);
                    return;
                }
                return;
            }
            throw new IOException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{5382459654953821491L, -7572180556188240371L, 6064910420177412433L, 3083936884437422048L, -5139429278262867051L, -5225850130818519179L, 6120805467093023066L, -8522309931729549758L, -3241503345279976371L, 159968369417568319L, 2636143344392211464L}), new StringBuilder(), readUINT32));
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append(new ObfuscatedString(new long[]{-6231726149938920269L, 8729519693008885783L, 7070700405282121576L, 4997636022571589773L, 6440180814605076517L, 3359267152617041427L, -8149779819339323975L, 368423863588823501L}).toString());
        sb3.append(i);
        throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-6184681402822907956L, -1036174946453031590L}), sb3));
    }

    public void msgChannelRequest(byte[] bArr, int i) {
        int i2;
        TypesReader typesReader = new TypesReader(bArr, 0, i);
        typesReader.readByte();
        int readUINT32 = typesReader.readUINT32();
        Channel channel = getChannel(readUINT32);
        if (channel != null) {
            String readString = typesReader.readString(new ObfuscatedString(new long[]{-4770926825967626120L, -1032554423799317608L}).toString());
            boolean readBoolean = typesReader.readBoolean();
            Logger logger = log;
            if (logger.isEnabled()) {
                StringBuilder sb = new StringBuilder();
                sb.append(new ObfuscatedString(new long[]{-8299787613890263856L, -3982536669551344595L, -8727356085578024496L, -7374416405185714180L, -4364382423718729049L, 1003001001016091886L}).toString());
                sb.append(readUINT32);
                sb.append(new ObfuscatedString(new long[]{1995575686093755989L, -3591440525691687298L}).toString());
                sb.append(readString);
                AbstractC0362x4440ab85.m2949xe1f61061(new ObfuscatedString(new long[]{59175020128507901L, 7815097065751950701L}), sb, logger, 80);
            }
            if (readString.equals(new ObfuscatedString(new long[]{-1363287172997395826L, -9150934568547978036L, -4201619237474820024L}).toString())) {
                if (!readBoolean) {
                    int readUINT322 = typesReader.readUINT32();
                    if (typesReader.remain() == 0) {
                        synchronized (channel) {
                            channel.exit_status = new Integer(readUINT322);
                            channel.notifyAll();
                        }
                        if (logger.isEnabled()) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(new ObfuscatedString(new long[]{1699714432397660167L, -3010730865534720611L, 1790445743793644023L, 622204005070641732L, 5940402316718745829L}).toString());
                            sb2.append(readUINT32);
                            sb2.append(new ObfuscatedString(new long[]{-7679687587382034765L, 6854995160845140837L, -3712845733117953527L}).toString());
                            sb2.append(readUINT322);
                            AbstractC0362x4440ab85.m2949xe1f61061(new ObfuscatedString(new long[]{9186506504338389700L, -3447678267557633796L}), sb2, logger, 50);
                            return;
                        }
                        return;
                    }
                    throw new IOException(new ObfuscatedString(new long[]{3023396536984044007L, -6712779641595630439L, 6386862850932811029L, -1224363431510438470L, -3467032623855536733L, -1451655741816371049L, 3191446643955655379L}).toString());
                }
                throw new IOException(new ObfuscatedString(new long[]{3511037925256317553L, 1479172095592562706L, 5239891579858552407L, -2003120768337060145L, -5332314040285983117L, 4531653427283364053L, 4224354770584231324L, 8036659142047944498L, 8624269053958817398L, 2677219026195284955L}).toString());
            }
            if (!readString.equals(new ObfuscatedString(new long[]{-3536377907560980176L, -3528271584468749470L, 5802720173514769439L}).toString())) {
                if (readBoolean) {
                    int i3 = channel.remoteID;
                    i2 = 4;
                    this.tm.sendAsynchronousMessage(new byte[]{100, (byte) (i3 >> 24), (byte) (i3 >> 16), (byte) (i3 >> 8), (byte) i3});
                } else {
                    i2 = 4;
                }
                if (logger.isEnabled()) {
                    StringBuilder sb3 = new StringBuilder();
                    long[] jArr = new long[i2];
                    // fill-array-data instruction
                    jArr[0] = 2938006547344723871L;
                    jArr[1] = 4033395929122841893L;
                    jArr[2] = -2956959841377139256L;
                    jArr[3] = 6755685267719177736L;
                    sb3.append(new ObfuscatedString(jArr).toString());
                    sb3.append(readString);
                    AbstractC0362x4440ab85.m2949xe1f61061(new ObfuscatedString(new long[]{-6753285925680308412L, 6985632271213566054L, 2735640952313086745L, 7529198975704774958L, 7822820098382045770L}), sb3, logger, 50);
                    return;
                }
                return;
            }
            if (!readBoolean) {
                String readString2 = typesReader.readString(new ObfuscatedString(new long[]{2018812811165987710L, 4550897589738186714L}).toString());
                typesReader.readBoolean();
                typesReader.readString();
                typesReader.readString();
                if (typesReader.remain() == 0) {
                    synchronized (channel) {
                        channel.exit_signal = readString2;
                        channel.notifyAll();
                    }
                    if (logger.isEnabled()) {
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append(new ObfuscatedString(new long[]{1605675822161645918L, -8565279099837188161L, 6151842322181429876L, 4444492599879656831L, -6459779391650707851L}).toString());
                        sb4.append(readUINT32);
                        sb4.append(new ObfuscatedString(new long[]{5614411832480467502L, 6890278643723867283L, 2865303982557859295L}).toString());
                        sb4.append(readString2);
                        AbstractC0362x4440ab85.m2949xe1f61061(new ObfuscatedString(new long[]{-6538644282014584316L, 5173405959163257208L}), sb4, logger, 50);
                        return;
                    }
                    return;
                }
                throw new IOException(new ObfuscatedString(new long[]{1622912366772946758L, -6378611827870232022L, -785773667781916925L, 7483456636138602207L, -8133528526105171104L, -8915243428719597457L, -5546980345419021794L}).toString());
            }
            throw new IOException(new ObfuscatedString(new long[]{-8722857002683030952L, 4854760933902988657L, -5813204989662998298L, -2093992279375864587L, 2424299903030245450L, -3825609620627189174L, 7473600025526804543L, 1034748393669577212L, -8523855446631731046L, 6291235288332561698L}).toString());
        }
        throw new IOException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-8435093862344250380L, 7040138026249031336L, -5408805711040083188L, 2065816197125602280L, -6711833102052728642L, 6222485259748738941L, 556897968721373594L, -5343572264275021423L, -2804311789150936727L, 4911827602551451903L}), new StringBuilder(), readUINT32));
    }

    public void msgChannelSuccess(byte[] bArr, int i) {
        if (i == 5) {
            int i2 = (bArr[4] & 255) | ((bArr[1] & 255) << 24) | ((bArr[2] & 255) << 16) | ((bArr[3] & 255) << 8);
            Channel channel = getChannel(i2);
            if (channel != null) {
                synchronized (channel) {
                    channel.successCounter++;
                    channel.notifyAll();
                }
                Logger logger = log;
                if (logger.isEnabled()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(new ObfuscatedString(new long[]{-3388486712659661976L, 1793111058674341821L, 6050989226358496260L, 1457521269840219678L, 3132752194577670639L, -7182051088542503132L}).toString());
                    sb.append(i2);
                    AbstractC0362x4440ab85.m2949xe1f61061(new ObfuscatedString(new long[]{-8251222190389146298L, 3786039178635572410L}), sb, logger, 80);
                    return;
                }
                return;
            }
            throw new IOException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-6393854700038329954L, -9099973389407690838L, -6166753368387667196L, 8109378969188700325L, -7142016153787747574L, 5998282273809617842L, -4096078845170416376L, -3022270681274881514L, -6919928003058580216L, -6224822390779168527L}), new StringBuilder(), i2));
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(new ObfuscatedString(new long[]{-126709068732868519L, -8163528300463925973L, 8714032693602769470L, -6462778805903411877L, -4706000175696490595L, 2502514048459474918L, 8823197177262774431L}).toString());
        sb2.append(i);
        throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{7394658755366466793L, 3968412920188343020L}), sb2));
    }

    public void msgChannelWindowAdjust(byte[] bArr, int i) {
        if (i == 9) {
            int i2 = ((bArr[1] & 255) << 24) | ((bArr[2] & 255) << 16) | ((bArr[3] & 255) << 8) | (bArr[4] & 255);
            int i3 = (bArr[8] & 255) | ((bArr[5] & 255) << 24) | ((bArr[6] & 255) << 16) | ((bArr[7] & 255) << 8);
            Channel channel = getChannel(i2);
            if (channel != null) {
                synchronized (channel) {
                    try {
                        long j = channel.remoteWindow + (i3 & 4294967295L);
                        channel.remoteWindow = j;
                        if (j > 4294967295L) {
                            channel.remoteWindow = 4294967295L;
                        }
                        channel.notifyAll();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                Logger logger = log;
                if (logger.isEnabled()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(new ObfuscatedString(new long[]{6939911746321657173L, -1106679872038322806L, -4577947971592836907L, -206545887098009187L, -6263947377237510193L, 2143212020509098394L, -8698702342968301114L}).toString());
                    sb.append(i2);
                    sb.append(new ObfuscatedString(new long[]{8073926189693444682L, -3935417037754972415L}).toString());
                    sb.append(i3);
                    AbstractC0362x4440ab85.m2949xe1f61061(new ObfuscatedString(new long[]{150651641697662554L, 2486818822935852896L}), sb, logger, 80);
                    return;
                }
                return;
            }
            throw new IOException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{3602887421113577038L, 1661979755684017183L, 3853436700920877365L, -4623143475994336267L, 7951158433879480667L, 5808860622246495243L, -8041794228320729965L, -2637929093265895697L, 1228935712910742768L, -282806631436821943L, -8950749682016635801L}), new StringBuilder(), i2));
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(new ObfuscatedString(new long[]{3309497797595572043L, 3210341492698961952L, -6341192739649519382L, 1398022830582413187L, -715383120219098433L, -3809527028021961221L, -8799010595816335046L, -6416444386346939449L}).toString());
        sb2.append(i);
        throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-3925237665435486500L, 6880120606301464259L}), sb2));
    }

    public void msgGlobalFailure() {
        synchronized (this.channels) {
            this.globalFailedCounter++;
            this.channels.notifyAll();
        }
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(80, new ObfuscatedString(new long[]{-6483755991852686603L, -549662684320459990L, -6416907036099920712L, 3117529616834805518L, 3500666908868546132L}).toString());
        }
    }

    public void msgGlobalRequest(byte[] bArr, int i) {
        TypesReader typesReader = new TypesReader(bArr, 0, i);
        typesReader.readByte();
        String readString = typesReader.readString();
        if (typesReader.readBoolean()) {
            this.tm.sendAsynchronousMessage(new byte[]{82});
        }
        Logger logger = log;
        if (logger.isEnabled()) {
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-7494641685670145613L, 1290988111218399477L, 2915596144551330575L, -7365015295656656628L, 8534449190607932962L}).toString());
            sb.append(readString);
            AbstractC0362x4440ab85.m2949xe1f61061(new ObfuscatedString(new long[]{-4071516018771837321L, -8547356614534813136L}), sb, logger, 80);
        }
    }

    public void msgGlobalSuccess() {
        synchronized (this.channels) {
            this.globalSuccessCounter++;
            this.channels.notifyAll();
        }
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(80, new ObfuscatedString(new long[]{5666049406779525880L, -3784253692610148329L, 8950599619900975922L, 8456308085600999745L, 406151259280328691L}).toString());
        }
    }

    public Channel openDirectTCPIPChannel(String str, int i, String str2, int i2) {
        int addChannel;
        Channel channel = new Channel(this);
        synchronized (channel) {
            addChannel = addChannel(channel);
            channel.localID = addChannel;
        }
        this.tm.sendMessage(new PacketOpenDirectTCPIPChannel(addChannel, channel.localWindow, channel.localMaxPacketSize, str, i, str2, i2).getPayload());
        waitUntilChannelOpen(channel);
        return channel;
    }

    public Channel openSessionChannel() {
        Channel channel = new Channel(this);
        synchronized (channel) {
            channel.localID = addChannel(channel);
        }
        Logger logger = log;
        if (logger.isEnabled()) {
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-3354345790784508306L, 1146828736735673516L, -5985869381873078441L, -8983351783938413560L, -5504324237074356192L, -478664218223476599L}).toString());
            sb.append(channel.localID);
            AbstractC0362x4440ab85.m2949xe1f61061(new ObfuscatedString(new long[]{2240777963024242251L, -8538399270212067055L}), sb, logger, 50);
        }
        this.tm.sendMessage(new PacketOpenSessionChannel(channel.localID, channel.localWindow, channel.localMaxPacketSize).getPayload());
        waitUntilChannelOpen(channel);
        return channel;
    }

    public void registerThread(IChannelWorkerThread iChannelWorkerThread) {
        synchronized (this.listenerThreads) {
            try {
                if (this.listenerThreadsAllowed) {
                    this.listenerThreads.addElement(iChannelWorkerThread);
                } else {
                    throw new IOException(new ObfuscatedString(new long[]{5035614639613420944L, -372028149932964568L, -7663417458333854142L, 6497587326214025876L, 8693854146972603563L, 6387780147046572680L}).toString());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void registerX11Cookie(String str, X11ServerData x11ServerData) {
        synchronized (this.x11_magic_cookies) {
            this.x11_magic_cookies.put(str, x11ServerData);
        }
    }

    public void requestCancelGlobalForward(int i) {
        RemoteForwardingData remoteForwardingData;
        synchronized (this.remoteForwardings) {
            remoteForwardingData = (RemoteForwardingData) this.remoteForwardings.get(new Integer(i));
            if (remoteForwardingData == null) {
                throw new IOException(new ObfuscatedString(new long[]{-2554112813006755577L, -6106991544102664240L, 1345967094836214031L, 6874913621136976866L, -9033934994805461781L, -3866482490599684121L, -433498516992075885L, -372163473364132001L, 4250575813036902999L}).toString() + i);
            }
        }
        synchronized (this.channels) {
            this.globalFailedCounter = 0;
            this.globalSuccessCounter = 0;
        }
        this.tm.sendMessage(new PacketGlobalCancelForwardRequest(true, remoteForwardingData.bindAddress, remoteForwardingData.bindPort).getPayload());
        Logger logger = log;
        if (logger.isEnabled()) {
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{9218931406959505299L, -1481738171337564221L, 2157064644381964388L, -2611739641184251084L, 3167652891082261248L, -202222308476848698L, -6290071528165630774L}).toString());
            sb.append(remoteForwardingData.bindAddress);
            sb.append(new ObfuscatedString(new long[]{-1653131800648582661L, 8316575490144475072L}).toString());
            sb.append(remoteForwardingData.bindPort);
            AbstractC0362x4440ab85.m2949xe1f61061(new ObfuscatedString(new long[]{1114361458921913435L, -6969954711941216225L}), sb, logger, 50);
        }
        try {
            if (waitForGlobalRequestResult()) {
                synchronized (this.remoteForwardings) {
                    this.remoteForwardings.remove(remoteForwardingData);
                }
                return;
            }
            throw new IOException(new ObfuscatedString(new long[]{4741982252858032152L, 5654062515850218873L, 2671864808422898785L, -4271433670466249108L, -2167058324466921458L}).toString());
        } catch (Throwable th) {
            synchronized (this.remoteForwardings) {
                this.remoteForwardings.remove(remoteForwardingData);
                throw th;
            }
        }
    }

    public void requestChannelTrileadPing(Channel channel) {
        PacketChannelTrileadPing packetChannelTrileadPing;
        synchronized (channel) {
            if (channel.state == 2) {
                packetChannelTrileadPing = new PacketChannelTrileadPing(channel.remoteID);
                channel.failedCounter = 0;
                channel.successCounter = 0;
            } else {
                throw ioException(new ObfuscatedString(new long[]{4894587178250515623L, -6214831531474683753L, -7985462304651113211L, 2134658122836227149L}).toString(), channel);
            }
        }
        synchronized (channel.channelSendLock) {
            if (!channel.closeMessageSent) {
                this.tm.sendMessage(packetChannelTrileadPing.getPayload());
            } else {
                throw ioException(new ObfuscatedString(new long[]{6351692427519735984L, -8243373766601210624L, -4851281520539024016L, -8428306708181705970L}).toString(), channel);
            }
        }
        try {
            if (!waitForChannelRequestResult(channel)) {
            } else {
                throw new IOException(new ObfuscatedString(new long[]{9106954863353269692L, -6592794616094746183L, 6900343515540774953L, -4742873327150485157L, 1394784767101184052L, 2693502877281886076L, -403640306523471727L, 4793138714096732118L, 3435210446591733859L, -5004720880636234355L, -3447505569941642052L, -6978630331297825819L, 8438591618112262143L, -4358526228814490916L}).toString());
            }
        } catch (IOException e) {
            throw ((IOException) new IOException(new ObfuscatedString(new long[]{6357388621306504701L, -7738685108086908070L, -5956757548320025340L, 7096319107482754781L}).toString()).initCause(e));
        }
    }

    public void requestExecCommand(Channel channel, String str) {
        PacketSessionExecCommand packetSessionExecCommand;
        synchronized (channel) {
            if (channel.state == 2) {
                packetSessionExecCommand = new PacketSessionExecCommand(channel.remoteID, true, str);
                channel.failedCounter = 0;
                channel.successCounter = 0;
            } else {
                throw ioException(new ObfuscatedString(new long[]{-7184308593040281043L, 3038141960614905068L, 2482877783918685198L, 7927697367494937763L, 3444188330495639492L, 4903948768942483818L}).toString(), channel);
            }
        }
        synchronized (channel.channelSendLock) {
            if (!channel.closeMessageSent) {
                this.tm.sendMessage(packetSessionExecCommand.getPayload());
            } else {
                throw ioException(new ObfuscatedString(new long[]{-2308077611293442911L, 1729883239502373668L, -6075812775102964458L, 3873923018997739036L, 7621782414027184163L, 1185365804041149031L}).toString(), channel);
            }
        }
        Logger logger = log;
        if (logger.isEnabled()) {
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-5969833585486909422L, 2122615972032602960L, 802626538076548224L, 679486130756111807L, -7036147340143829756L}).toString());
            sb.append(channel.localID);
            sb.append(new ObfuscatedString(new long[]{-5329897762075571369L, 230380879811139569L}).toString());
            sb.append(str);
            AbstractC0362x4440ab85.m2949xe1f61061(new ObfuscatedString(new long[]{3232275850311128999L, 6461810632511059853L}), sb, logger, 50);
        }
        try {
            if (waitForChannelRequestResult(channel)) {
            } else {
                throw new IOException(new ObfuscatedString(new long[]{2881645954185820730L, -5286365807339352005L, -7422219450452547884L, 5001684918809857182L, -8527167101687617761L}).toString());
            }
        } catch (IOException e) {
            throw ((IOException) new IOException(new ObfuscatedString(new long[]{8211349070138357115L, 581631807696712978L, -4206308816447482134L, 8092201249125034831L, 1006922157453687363L}).toString()).initCause(e));
        }
    }

    public int requestGlobalForward(String str, int i, String str2, int i2) {
        RemoteForwardingData remoteForwardingData = new RemoteForwardingData();
        remoteForwardingData.bindAddress = str;
        remoteForwardingData.bindPort = i;
        remoteForwardingData.targetAddress = str2;
        remoteForwardingData.targetPort = i2;
        synchronized (this.remoteForwardings) {
            Integer num = new Integer(i);
            if (this.remoteForwardings.get(num) == null) {
                this.remoteForwardings.put(num, remoteForwardingData);
            } else {
                throw new IOException(new ObfuscatedString(new long[]{7602226868130170555L, -2652075366949083228L, 5798712947654741726L, -4871913351955507378L, -6594658343234243896L, -7067743397286438123L, -479856006561293289L}).toString() + i);
            }
        }
        synchronized (this.channels) {
            this.globalFailedCounter = 0;
            this.globalSuccessCounter = 0;
        }
        this.tm.sendMessage(new PacketGlobalForwardRequest(true, str, i).getPayload());
        Logger logger = log;
        if (logger.isEnabled()) {
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-8131658490061859471L, -4730031329884350787L, 5041471238291212803L, -5179603934983993964L, 8473790059782240072L, 3989306435258612355L}).toString());
            sb.append(str);
            sb.append(new ObfuscatedString(new long[]{5321315988884927927L, 4969781906514307950L}).toString());
            sb.append(i);
            AbstractC0362x4440ab85.m2949xe1f61061(new ObfuscatedString(new long[]{-7003991993618102482L, 2602924044088547845L}), sb, logger, 50);
        }
        try {
            if (waitForGlobalRequestResult()) {
                return i;
            }
            throw new IOException(new ObfuscatedString(new long[]{-8686820516075905722L, -8609312852150459638L, -2378660004663515557L, -8625975024661663926L, -2937716030435985524L, -7518996915573233953L, 7743362158924156411L, -6740049891384707177L, -1924874863138695931L}).toString());
        } catch (IOException e) {
            synchronized (this.remoteForwardings) {
                this.remoteForwardings.remove(remoteForwardingData);
                throw e;
            }
        }
    }

    public long requestGlobalTrileadPing() {
        synchronized (this.channels) {
            this.globalFailedCounter = 0;
            this.globalSuccessCounter = 0;
        }
        PacketGlobalTrileadPing packetGlobalTrileadPing = new PacketGlobalTrileadPing();
        long currentTimeMillis = System.currentTimeMillis();
        this.tm.sendMessage(packetGlobalTrileadPing.getPayload());
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(50, new ObfuscatedString(new long[]{8042103262626101199L, 8477426983324298330L, 3990110176307411348L, -2585262871338948653L, 267286031112497528L, 5554612563234991400L, -4389579425169444192L}).toString());
        }
        try {
            if (waitForGlobalRequestResult()) {
                return System.currentTimeMillis() - currentTimeMillis;
            }
            return System.currentTimeMillis() - currentTimeMillis;
        } catch (IOException e) {
            throw ((IOException) new IOException(new ObfuscatedString(new long[]{-802349473384970976L, 6763220816877471463L, 6565818464307246434L, 8754012711396543548L}).toString()).initCause(e));
        }
    }

    public void requestPTY(Channel channel, String str, int i, int i2, int i3, int i4, byte[] bArr) {
        PacketSessionPtyRequest packetSessionPtyRequest;
        synchronized (channel) {
            if (channel.state == 2) {
                packetSessionPtyRequest = new PacketSessionPtyRequest(channel.remoteID, true, str, i, i2, i3, i4, bArr);
                channel.failedCounter = 0;
                channel.successCounter = 0;
            } else {
                throw ioException(new ObfuscatedString(new long[]{-3252317851659008920L, -383897315775612523L, 870070565746257794L, 1762283856881015406L, 3421690729984634051L, 3241532024521490264L}).toString(), channel);
            }
        }
        synchronized (channel.channelSendLock) {
            if (!channel.closeMessageSent) {
                this.tm.sendMessage(packetSessionPtyRequest.getPayload());
            } else {
                throw ioException(new ObfuscatedString(new long[]{-9131658809187345676L, 2490226563751664740L, 7031874890200582877L, 8001801482083606978L, -6905318758471429096L, 4459657582554476036L}).toString(), channel);
            }
        }
        try {
            if (waitForChannelRequestResult(channel)) {
            } else {
                throw new IOException(new ObfuscatedString(new long[]{7739542614292822773L, 6671561291845789026L, -1725422588678578785L, -2290423675436515018L, -6662836470044568242L}).toString());
            }
        } catch (IOException e) {
            throw ((IOException) new IOException(new ObfuscatedString(new long[]{-2224911512165877898L, -5561761944119647377L, 3968590080680942951L, 2467532826089656049L}).toString()).initCause(e));
        }
    }

    public void requestShell(Channel channel) {
        PacketSessionStartShell packetSessionStartShell;
        synchronized (channel) {
            if (channel.state == 2) {
                packetSessionStartShell = new PacketSessionStartShell(channel.remoteID, true);
                channel.failedCounter = 0;
                channel.successCounter = 0;
            } else {
                throw ioException(new ObfuscatedString(new long[]{-5642023363626638224L, 8182264954833451731L, 3624208448490172286L, 5729886337052657320L, -2394537471544929459L, -5553831724196054134L}).toString(), channel);
            }
        }
        synchronized (channel.channelSendLock) {
            if (!channel.closeMessageSent) {
                this.tm.sendMessage(packetSessionStartShell.getPayload());
            } else {
                throw ioException(new ObfuscatedString(new long[]{-3771848393215033863L, -5062917692885360526L, -8763978984955878095L, 6206533116032677577L, -6140506088960406005L, 8756660865231488341L}).toString(), channel);
            }
        }
        try {
            if (waitForChannelRequestResult(channel)) {
            } else {
                throw new IOException(new ObfuscatedString(new long[]{2114133185498735609L, -6164180485612883312L, 290479045121314514L, -3001095195234265075L, 6240817803231210270L}).toString());
            }
        } catch (IOException e) {
            throw ((IOException) new IOException(new ObfuscatedString(new long[]{7114734746584829786L, -7298388823721213344L, -9100596806423756816L, 4977295816325809031L, 7153316428486299191L}).toString()).initCause(e));
        }
    }

    public void requestSubSystem(Channel channel, String str) {
        PacketSessionSubsystemRequest packetSessionSubsystemRequest;
        synchronized (channel) {
            if (channel.state == 2) {
                packetSessionSubsystemRequest = new PacketSessionSubsystemRequest(channel.remoteID, true, str);
                channel.failedCounter = 0;
                channel.successCounter = 0;
            } else {
                throw ioException(new ObfuscatedString(new long[]{-8687937944107839285L, 9097140619434896030L, -3835129463992118467L, -8109379891936523642L, 7910377240316815669L, -7441126253262699970L}).toString(), channel);
            }
        }
        synchronized (channel.channelSendLock) {
            if (!channel.closeMessageSent) {
                this.tm.sendMessage(packetSessionSubsystemRequest.getPayload());
            } else {
                throw ioException(new ObfuscatedString(new long[]{-2725492900582869173L, 7001727056748066333L, -7395057352497468458L, -230348826007378411L, 2926827327404889901L, -4454673655846001179L}).toString(), channel);
            }
        }
        try {
            if (waitForChannelRequestResult(channel)) {
            } else {
                throw new IOException(new ObfuscatedString(new long[]{-3310601411016346811L, 8080677550774596250L, 4776644974105896219L, -6856395785216346594L, -7983914078517938598L}).toString());
            }
        } catch (IOException e) {
            throw ((IOException) new IOException(new ObfuscatedString(new long[]{-4062028792092615615L, -6543888941102839885L, -6765490046507616279L, -8492216655655345786L, -4007505073023270540L}).toString()).initCause(e));
        }
    }

    public void requestX11(Channel channel, boolean z, String str, String str2, int i) {
        PacketSessionX11Request packetSessionX11Request;
        synchronized (channel) {
            if (channel.state == 2) {
                packetSessionX11Request = new PacketSessionX11Request(channel.remoteID, true, z, str, str2, i);
                channel.failedCounter = 0;
                channel.successCounter = 0;
            } else {
                throw ioException(new ObfuscatedString(new long[]{7432508661292060180L, 1321205208667367113L, 8787552424058798370L, -7783464620473555697L, 4928417438096462006L, 194564484753303476L}).toString(), channel);
            }
        }
        synchronized (channel.channelSendLock) {
            if (!channel.closeMessageSent) {
                this.tm.sendMessage(packetSessionX11Request.getPayload());
            } else {
                throw ioException(new ObfuscatedString(new long[]{2556897678883132976L, 187289845242888223L, -7992914286933216870L, -7122921868716806139L, -5675478207031200304L, -5285917628038503657L}).toString(), channel);
            }
        }
        Logger logger = log;
        if (logger.isEnabled()) {
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-8801113639620582554L, -1574245004018091883L, -5009752331349153605L, 2201828674653988864L, -4231179842526011882L, 2670140970975556090L}).toString());
            sb.append(channel.localID);
            sb.append(new ObfuscatedString(new long[]{3054073947276347288L, 570028201214544564L}).toString());
            sb.append(channel.remoteID);
            AbstractC0362x4440ab85.m2949xe1f61061(new ObfuscatedString(new long[]{-6335231176074728684L, 8944720265143988242L}), sb, logger, 50);
        }
        try {
            if (waitForChannelRequestResult(channel)) {
            } else {
                throw new IOException(new ObfuscatedString(new long[]{-3180491518544517191L, -3049549272424805110L, 492174561277920469L, -5668669003294051863L, -1044286458097721474L}).toString());
            }
        } catch (IOException e) {
            throw ((IOException) new IOException(new ObfuscatedString(new long[]{-2150667729954567314L, -5409573449851520803L, -1712024142060832597L, 6289983865606147841L}).toString()).initCause(e));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0023, code lost:
    
        if (r9 < r8) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0025, code lost:
    
        r10 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0028, code lost:
    
        r9 = r17.remoteMaxPacketSize - (r16.tm.getPacketOverheadEstimate() + 9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0033, code lost:
    
        if (r9 > 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0035, code lost:
    
        r9 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0036, code lost:
    
        if (r10 <= r9) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0038, code lost:
    
        r10 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0039, code lost:
    
        r17.remoteWindow -= r10;
        r9 = new byte[r10 + 9];
        r9[0] = 94;
        r12 = r17.remoteID;
        r9[1] = (byte) (r12 >> 24);
        r9[2] = (byte) (r12 >> 16);
        r9[3] = (byte) (r12 >> 8);
        r9[4] = (byte) r12;
        r9[5] = (byte) (r10 >> 24);
        r9[6] = (byte) (r10 >> 16);
        r9[7] = (byte) (r10 >> 8);
        r9[8] = (byte) r10;
        java.lang.System.arraycopy(r18, r7, r9, 9, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0027, code lost:
    
        r10 = (int) r9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void sendData(Channel channel, byte[] bArr, int i, int i2) {
        int i3;
        byte[] bArr2;
        int i4 = i;
        int i5 = i2;
        while (i5 > 0) {
            synchronized (channel) {
                while (true) {
                    int i6 = channel.state;
                    if (i6 != 4) {
                        if (i6 == 2) {
                            long j = channel.remoteWindow;
                            if (j != 0) {
                                break;
                            }
                            try {
                                channel.wait();
                            } catch (InterruptedException unused) {
                                throw new InterruptedIOException();
                            }
                        } else {
                            throw new IOException(new ObfuscatedString(new long[]{-404735904390423901L, 3185358344615107734L, 6452316483305861741L, -8165458899780933850L, 5963435205342232163L}).toString() + channel.state + new ObfuscatedString(new long[]{3318437376460335897L, 9141751979143899265L}).toString());
                        }
                    } else {
                        throw ioException(new ObfuscatedString(new long[]{-3810874484601272545L, -1766652625082606128L, 4188965387815673927L, -9200021035903029047L}).toString(), channel);
                    }
                }
            }
            synchronized (channel.channelSendLock) {
                try {
                    if (!channel.closeMessageSent) {
                        this.tm.sendMessage(bArr2);
                    } else {
                        throw ioException(new ObfuscatedString(new long[]{-7729927089769833938L, 3804419140992145163L, -4545008020307047332L, 1938484508169347252L}).toString(), channel);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            i4 += i3;
            i5 -= i3;
        }
    }

    public void sendEOF(Channel channel) {
        byte[] bArr = new byte[5];
        synchronized (channel) {
            try {
                if (channel.state != 2) {
                    return;
                }
                bArr[0] = 96;
                int i = channel.remoteID;
                bArr[1] = (byte) (i >> 24);
                bArr[2] = (byte) (i >> 16);
                bArr[3] = (byte) (i >> 8);
                bArr[4] = (byte) i;
                synchronized (channel.channelSendLock) {
                    try {
                        if (channel.closeMessageSent) {
                            return;
                        }
                        this.tm.sendMessage(bArr);
                        Logger logger = log;
                        if (logger.isEnabled()) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(new ObfuscatedString(new long[]{-6965242190970745437L, -7917128431668333213L, 2099652862669650921L, -6288143037329703002L}).toString());
                            sb.append(channel.localID);
                            sb.append(new ObfuscatedString(new long[]{-3098233951194418353L, -3975328202165698075L}).toString());
                            sb.append(channel.remoteID);
                            AbstractC0362x4440ab85.m2949xe1f61061(new ObfuscatedString(new long[]{-2871590745770104229L, 5772476637545666866L}), sb, logger, 50);
                        }
                    } finally {
                    }
                }
            } finally {
            }
        }
    }

    public void sendOpenConfirmation(Channel channel) {
        synchronized (channel) {
            try {
                if (channel.state != 1) {
                    return;
                }
                channel.state = 2;
                PacketChannelOpenConfirmation packetChannelOpenConfirmation = new PacketChannelOpenConfirmation(channel.remoteID, channel.localID, channel.localWindow, channel.localMaxPacketSize);
                synchronized (channel.channelSendLock) {
                    try {
                        if (channel.closeMessageSent) {
                            return;
                        }
                        this.tm.sendMessage(packetChannelOpenConfirmation.getPayload());
                    } finally {
                    }
                }
            } finally {
            }
        }
    }

    public void unRegisterX11Cookie(String str, boolean z) {
        Vector vector;
        if (str != null) {
            synchronized (this.x11_magic_cookies) {
                this.x11_magic_cookies.remove(str);
            }
            if (!z) {
                return;
            }
            Logger logger = log;
            if (logger.isEnabled()) {
                logger.log(50, new ObfuscatedString(new long[]{6402497146524579647L, -3615737112341416353L, 8567422118523008142L, -4648716808987097242L, -259891746355886911L, -7455956820186821034L, 8876982043245190068L, 3858636321803145657L}).toString());
            }
            synchronized (this.channels) {
                vector = (Vector) this.channels.clone();
            }
            for (int i = 0; i < vector.size(); i++) {
                Channel channel = (Channel) vector.elementAt(i);
                synchronized (channel) {
                    try {
                        if (str.equals(channel.hexX11FakeCookie)) {
                            try {
                                closeChannel(channel, new ObfuscatedString(new long[]{-2614159652230271254L, -3098786160855882838L, -5567042552373974970L, -1347628309631497956L, 2541225200535170416L, 947331787403765832L, 8338798477804841692L, 6649612070401630592L, 745163301652768551L}).toString(), true);
                            } catch (IOException unused) {
                            }
                        }
                    } finally {
                    }
                }
            }
            return;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{8820225837200039799L, -4690623209718034229L, -4815383476617067421L, 7034097746685875621L, -1727461638274111738L}).toString());
    }

    public int waitForCondition(Channel channel, long j, int i) {
        int i2;
        synchronized (channel) {
            long j2 = 0;
            boolean z = false;
            while (true) {
                try {
                    int readable = channel.stdout.readable();
                    int readable2 = channel.stderr.readable();
                    if (readable > 0) {
                        i2 = 4;
                    } else {
                        i2 = 0;
                    }
                    if (readable2 > 0) {
                        i2 |= 8;
                    }
                    if (channel.isEOF()) {
                        i2 |= 16;
                    }
                    if (channel.getExitStatus() != null) {
                        i2 |= 32;
                    }
                    if (channel.getExitSignal() != null) {
                        i2 |= 64;
                    }
                    if (channel.state == 4) {
                        return i2 | 18;
                    }
                    if ((i2 & i) != 0) {
                        return i2;
                    }
                    if (j > 0) {
                        if (!z) {
                            j2 = System.currentTimeMillis() + j;
                            z = true;
                        } else {
                            j = j2 - System.currentTimeMillis();
                            if (j <= 0) {
                                return i2 | 1;
                            }
                        }
                    }
                    if (j > 0) {
                        channel.wait(j);
                    } else {
                        channel.wait();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
