package com.trilead.ssh2.transport;

import app.tunnel.logger.utils.TrafficData;
import com.panda912.muddy.ObfuscatedString;
import com.trilead.ssh2.crypto.cipher.BlockCipher;
import com.trilead.ssh2.crypto.cipher.CipherInputStream;
import com.trilead.ssh2.crypto.cipher.CipherOutputStream;
import com.trilead.ssh2.crypto.cipher.NullCipher;
import com.trilead.ssh2.crypto.digest.MAC;
import com.trilead.ssh2.log.Logger;
import com.trilead.ssh2.packets.Packets;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.SecureRandom;

/* loaded from: classes3.dex */
public class TransportConnection {
    private static final Logger log = Logger.getLogger(TransportConnection.class);
    CipherInputStream cis;
    CipherOutputStream cos;
    ClientServerHello csh;
    MAC recv_mac;
    byte[] recv_mac_buffer;
    byte[] recv_mac_buffer_cmp;
    final SecureRandom rnd;
    MAC send_mac;
    byte[] send_mac_buffer;
    int send_seq_number = 0;
    int recv_seq_number = 0;
    boolean useRandomPadding = false;
    int send_padd_blocksize = 8;
    int recv_padd_blocksize = 8;
    final byte[] send_padding_buffer = new byte[256];
    final byte[] send_packet_header_buffer = new byte[5];
    final byte[] recv_padding_buffer = new byte[256];
    final byte[] recv_packet_header_buffer = new byte[5];
    boolean recv_packet_header_present = false;

    public TransportConnection(InputStream inputStream, OutputStream outputStream, SecureRandom secureRandom) {
        this.cis = new CipherInputStream(new NullCipher(), inputStream);
        this.cos = new CipherOutputStream(new NullCipher(), outputStream);
        this.rnd = secureRandom;
    }

    public void changeRecvCipher(BlockCipher blockCipher, MAC mac) {
        byte[] bArr;
        this.cis.changeCipher(blockCipher);
        this.recv_mac = mac;
        byte[] bArr2 = null;
        if (mac != null) {
            bArr = new byte[mac.size()];
        } else {
            bArr = null;
        }
        this.recv_mac_buffer = bArr;
        if (mac != null) {
            bArr2 = new byte[mac.size()];
        }
        this.recv_mac_buffer_cmp = bArr2;
        int blockSize = blockCipher.getBlockSize();
        this.recv_padd_blocksize = blockSize;
        if (blockSize < 8) {
            this.recv_padd_blocksize = 8;
        }
    }

    public void changeSendCipher(BlockCipher blockCipher, MAC mac) {
        byte[] bArr;
        if (!(blockCipher instanceof NullCipher)) {
            this.useRandomPadding = true;
        }
        this.cos.changeCipher(blockCipher);
        this.send_mac = mac;
        if (mac != null) {
            bArr = new byte[mac.size()];
        } else {
            bArr = null;
        }
        this.send_mac_buffer = bArr;
        int blockSize = blockCipher.getBlockSize();
        this.send_padd_blocksize = blockSize;
        if (blockSize < 8) {
            this.send_padd_blocksize = 8;
        }
    }

    public int getPacketOverheadEstimate() {
        return this.send_padd_blocksize + 8 + this.send_mac_buffer.length;
    }

    public int peekNextMessageLength() {
        if (!this.recv_packet_header_present) {
            this.cis.read(this.recv_packet_header_buffer, 0, 5);
            this.recv_packet_header_present = true;
        }
        byte[] bArr = this.recv_packet_header_buffer;
        int i = ((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255);
        int i2 = bArr[4] & 255;
        if (i <= TransportManager.MAX_PACKET_SIZE && i >= 12) {
            int i3 = (i - i2) - 1;
            if (i3 >= 0) {
                return i3;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{5641387965697071234L, 5852647566457050925L, -7341244527277246784L, 5139647251403547513L, -6053755197541572993L, -1659175257870431943L, -4196263337748879657L}).toString());
            sb.append(i2);
            throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4607530286303806738L, 2963397511964292226L}), sb));
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(new ObfuscatedString(new long[]{736548493978804121L, -931047710143526990L, -815012554614384794L, -5724737119819586895L}).toString());
        sb2.append(i);
        throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{4394117541971786081L, -540416947256533806L}), sb2));
    }

    public int receiveMessage(byte[] bArr, int i, int i2) {
        int i3 = 0;
        if (!this.recv_packet_header_present) {
            this.cis.read(this.recv_packet_header_buffer, 0, 5);
        } else {
            this.recv_packet_header_present = false;
        }
        byte[] bArr2 = this.recv_packet_header_buffer;
        int i4 = ((bArr2[0] & 255) << 24) | ((bArr2[1] & 255) << 16) | ((bArr2[2] & 255) << 8) | (bArr2[3] & 255);
        int i5 = bArr2[4] & 255;
        if (i4 <= TransportManager.MAX_PACKET_SIZE && i4 >= 12) {
            int i6 = (i4 - i5) - 1;
            if (i6 >= 0) {
                if (i6 < i2) {
                    int read = this.cis.read(bArr, i, i6);
                    this.cis.read(this.recv_padding_buffer, 0, i5);
                    if (this.recv_mac != null) {
                        CipherInputStream cipherInputStream = this.cis;
                        byte[] bArr3 = this.recv_mac_buffer;
                        cipherInputStream.readPlain(bArr3, 0, bArr3.length);
                        this.recv_mac.initMac(this.recv_seq_number);
                        this.recv_mac.update(this.recv_packet_header_buffer, 0, 5);
                        this.recv_mac.update(bArr, i, i6);
                        this.recv_mac.update(this.recv_padding_buffer, 0, i5);
                        this.recv_mac.getMac(this.recv_mac_buffer_cmp, 0);
                        while (true) {
                            byte[] bArr4 = this.recv_mac_buffer;
                            if (i3 >= bArr4.length) {
                                break;
                            }
                            if (bArr4[i3] == this.recv_mac_buffer_cmp[i3]) {
                                i3++;
                            } else {
                                throw new IOException(new ObfuscatedString(new long[]{-1280221748862354358L, 4447233679879123672L, -2485820703492271734L, 2903195006416334545L}).toString());
                            }
                        }
                    }
                    this.recv_seq_number++;
                    Logger logger = log;
                    if (logger.isEnabled()) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(new ObfuscatedString(new long[]{1001177586600584598L, 7610768919954035585L, -8396772682810116956L}).toString());
                        sb.append(Packets.getMessageName(bArr[i] & 255));
                        sb.append(new ObfuscatedString(new long[]{-4964996398312981686L, -8497632420782679650L}).toString());
                        sb.append(i6);
                        AbstractC0362x4440ab85.m2949xe1f61061(new ObfuscatedString(new long[]{171783312953187593L, 4457488725876784252L, -9098054103139520044L}), sb, logger, 90);
                    }
                    TrafficData.addBytesDownload(read);
                    return i6;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append(new ObfuscatedString(new long[]{121035206362748234L, -4741496528472359927L, 7207686545146166831L, 5564162734462353351L, 3336686073615157911L}).toString());
                sb2.append(i2);
                sb2.append(new ObfuscatedString(new long[]{3911287325275375675L, 5968898411732451558L}).toString());
                sb2.append(i6);
                throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{146759615259717568L, 7561484644099151452L}), sb2));
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append(new ObfuscatedString(new long[]{1912991040793787858L, 5105933087319773689L, 4313832869552056162L, 8034710718167067093L, -6879752497429437877L, -1109511780086740083L, 2791988185939745474L}).toString());
            sb3.append(i5);
            throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{3368488002112360331L, -5334903541259363133L}), sb3));
        }
        StringBuilder sb4 = new StringBuilder();
        sb4.append(new ObfuscatedString(new long[]{-3519273935455249903L, 8290979257283811397L, 5579086222677563889L, 8445720875457065793L}).toString());
        sb4.append(i4);
        throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-8693409351139836287L, -6279906789617539035L}), sb4));
    }

    public void sendMessage(byte[] bArr) {
        sendMessage(bArr, 0, bArr.length, 0);
    }

    public void sendMessage(byte[] bArr, int i, int i2) {
        sendMessage(bArr, i, i2, 0);
    }

    public void sendMessage(byte[] bArr, int i, int i2, int i3) {
        int i4;
        char c = 1;
        if (i3 < 4) {
            i4 = 4;
        } else {
            i4 = 64;
            if (i3 <= 64) {
                i4 = i3;
            }
        }
        int i5 = i2 + 5;
        int i6 = i4 + i5;
        int i7 = this.send_padd_blocksize;
        int i8 = i6 % i7;
        if (i8 != 0) {
            i6 += i7 - i8;
        }
        if (i6 < 16) {
            i6 = 16;
        }
        int i9 = i6 - i5;
        if (this.useRandomPadding) {
            int i10 = 0;
            while (i10 < i9) {
                int nextInt = this.rnd.nextInt();
                byte[] bArr2 = this.send_padding_buffer;
                bArr2[i10] = (byte) nextInt;
                bArr2[i10 + 1] = (byte) (nextInt >> 8);
                bArr2[i10 + 2] = (byte) (nextInt >> 16);
                bArr2[i10 + 3] = (byte) (nextInt >> 24);
                i10 += 4;
                c = 1;
            }
        } else {
            for (int i11 = 0; i11 < i9; i11++) {
                this.send_padding_buffer[i11] = 0;
            }
            c = 1;
        }
        byte[] bArr3 = this.send_packet_header_buffer;
        int i12 = i6 - 4;
        bArr3[0] = (byte) (i12 >> 24);
        bArr3[c] = (byte) (i12 >> 16);
        bArr3[2] = (byte) (i12 >> 8);
        bArr3[3] = (byte) i12;
        bArr3[4] = (byte) i9;
        this.cos.write(bArr3, 0, 5);
        this.cos.write(bArr, i, i2);
        this.cos.write(this.send_padding_buffer, 0, i9);
        MAC mac = this.send_mac;
        if (mac != null) {
            mac.initMac(this.send_seq_number);
            this.send_mac.update(this.send_packet_header_buffer, 0, 5);
            this.send_mac.update(bArr, i, i2);
            this.send_mac.update(this.send_padding_buffer, 0, i9);
            this.send_mac.getMac(this.send_mac_buffer, 0);
            CipherOutputStream cipherOutputStream = this.cos;
            byte[] bArr4 = this.send_mac_buffer;
            cipherOutputStream.writePlain(bArr4, 0, bArr4.length);
        }
        this.cos.flush();
        Logger logger = log;
        if (logger.isEnabled()) {
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-3482931920684033817L, -1338454817969061928L}).toString());
            sb.append(Packets.getMessageName(bArr[i] & 255));
            sb.append(new ObfuscatedString(new long[]{6368488432268653834L, -7742672097365150396L}).toString());
            sb.append(i2);
            AbstractC0362x4440ab85.m2949xe1f61061(new ObfuscatedString(new long[]{-8320242634709462496L, -4977717284093324226L, -5932622296698411997L}), sb, logger, 90);
        }
        TrafficData.addBytesSend(i2);
        this.send_seq_number++;
    }
}
