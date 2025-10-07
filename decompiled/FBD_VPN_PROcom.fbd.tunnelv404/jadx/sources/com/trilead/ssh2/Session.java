package com.trilead.ssh2;

import com.panda912.muddy.ObfuscatedString;
import com.trilead.ssh2.channel.Channel;
import com.trilead.ssh2.channel.ChannelManager;
import com.trilead.ssh2.channel.X11ServerData;
import com.trilead.ssh2.packets.PacketSignal;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.SecureRandom;

/* loaded from: classes3.dex */
public class Session {
    ChannelManager cm;
    Channel cn;
    final SecureRandom rnd;
    boolean flag_pty_requested = false;
    boolean flag_x11_requested = false;
    boolean flag_execution_started = false;
    boolean flag_closed = false;
    String x11FakeCookie = null;

    public Session(ChannelManager channelManager, SecureRandom secureRandom) {
        this.cm = channelManager;
        this.cn = channelManager.openSessionChannel();
        this.rnd = secureRandom;
    }

    public void close() {
        synchronized (this) {
            try {
                if (this.flag_closed) {
                    return;
                }
                this.flag_closed = true;
                String str = this.x11FakeCookie;
                if (str != null) {
                    this.cm.unRegisterX11Cookie(str, true);
                }
                try {
                    this.cm.closeChannel(this.cn, new ObfuscatedString(new long[]{2573774501252191846L, 9222874066821151945L, 1895677799100138569L, 799967083878978820L, -4041995018009161376L}).toString(), true);
                } catch (IOException unused) {
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void execCommand(String str) {
        if (str != null) {
            synchronized (this) {
                if (!this.flag_closed) {
                    if (!this.flag_execution_started) {
                        this.flag_execution_started = true;
                    } else {
                        throw new IOException(new ObfuscatedString(new long[]{4465493732861059972L, -8878967430753137766L, -764661696604833012L, 4788901297855047393L, -6451951224212791826L, -4179345711515739120L}).toString());
                    }
                } else {
                    throw new IOException(new ObfuscatedString(new long[]{-8925042161282507462L, 1724100777608851237L, 4237065101145310082L, -419702462608193697L}).toString());
                }
            }
            this.cm.requestExecCommand(this.cn, str);
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-3358422738624799996L, 4575473111359627140L, 3918567241027461838L, -1350682852320552510L, -6033396480175865710L}).toString());
    }

    public String getExitSignal() {
        return this.cn.getExitSignal();
    }

    public Integer getExitStatus() {
        return this.cn.getExitStatus();
    }

    public InputStream getStderr() {
        return this.cn.getStderrStream();
    }

    public OutputStream getStdin() {
        return this.cn.getStdinStream();
    }

    public InputStream getStdout() {
        return this.cn.getStdoutStream();
    }

    public void ping() {
        synchronized (this) {
            if (this.flag_closed) {
                throw new IOException(new ObfuscatedString(new long[]{-6510876979047660136L, -5753938857986701082L, -3864614518620463168L, 676815144118188236L}).toString());
            }
        }
        this.cm.requestChannelTrileadPing(this.cn);
    }

    public void pipeStderr(OutputStream outputStream) {
        this.cn.pipeStderrStream(outputStream);
    }

    public void pipeStdout(OutputStream outputStream) {
        this.cn.pipeStdoutStream(outputStream);
    }

    public void requestDumbPTY() {
        requestPTY(new ObfuscatedString(new long[]{9196016906364105750L, 2818538797372569161L}).toString(), 0, 0, 0, 0, null);
    }

    public void requestPTY(String str) {
        requestPTY(str, 0, 0, 0, 0, null);
    }

    public void requestWindowChange(int i, int i2, int i3, int i4) {
        synchronized (this) {
            if (!this.flag_closed) {
                if (!this.flag_pty_requested) {
                    throw new IOException(new ObfuscatedString(new long[]{-671467661780294073L, -4419891837098639131L, 389512546135608423L, -4309685118758974581L}).toString());
                }
            } else {
                throw new IOException(new ObfuscatedString(new long[]{-1699106313352993616L, 1378984732141664173L, -6422999123328471654L, -4353101780819900765L}).toString());
            }
        }
        this.cn.requestWindowChange(i, i2, i3, i4);
    }

    public void requestX11Forwarding(String str, int i, byte[] bArr, boolean z) {
        String sb;
        if (str != null) {
            synchronized (this) {
                if (!this.flag_closed) {
                    if (!this.flag_x11_requested) {
                        if (!this.flag_execution_started) {
                            this.flag_x11_requested = true;
                        } else {
                            throw new IOException(new ObfuscatedString(new long[]{-7612394375840954927L, -5337220332927940222L, 5252446324403072590L, 5591001892880748024L, 4283331843054274256L, -1663463624276854867L, 4864667109232310698L, -2593187397279865002L, 1695906176108386794L, -9118995706370284236L, 1491244988802755889L, 6301706423280521085L, 8759405958382438228L}).toString());
                        }
                    } else {
                        throw new IOException(new ObfuscatedString(new long[]{-8691546538395095715L, -3782316357802259148L, -3694498420106438899L, -4363344773123892876L, -7410264177309671522L, 5314871277255540562L}).toString());
                    }
                } else {
                    throw new IOException(new ObfuscatedString(new long[]{4245681423828462701L, -1897035346239552159L, 403542355896627186L, 2798116660322914480L}).toString());
                }
            }
            X11ServerData x11ServerData = new X11ServerData();
            x11ServerData.hostname = str;
            x11ServerData.port = i;
            x11ServerData.x11_magic_cookie = bArr;
            byte[] bArr2 = new byte[16];
            do {
                this.rnd.nextBytes(bArr2);
                StringBuilder sb2 = new StringBuilder(32);
                for (int i2 = 0; i2 < 16; i2++) {
                    String hexString = Integer.toHexString(bArr2[i2] & 255);
                    if (hexString.length() != 2) {
                        hexString = AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{4839699223189483312L, 25113641321196984L}), new StringBuilder(), hexString);
                    }
                    sb2.append(hexString);
                }
                sb = sb2.toString();
            } while (this.cm.checkX11Cookie(sb) != null);
            this.cm.requestX11(this.cn, z, new ObfuscatedString(new long[]{-8724133101259878967L, 7381282634780216954L, 7894397486026114813L, -8914105797095964248L}).toString(), sb, 0);
            synchronized (this) {
                try {
                    if (!this.flag_closed) {
                        this.x11FakeCookie = sb;
                        this.cm.registerX11Cookie(sb, x11ServerData);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-7549288271291480515L, 6094657028235984591L, -1854962526491323749L, -873558728530809580L, -3757738788261003433L, -902052780744993361L}).toString());
    }

    public synchronized void setWindowSize(int i) {
        this.cn.setWindowSize(i);
    }

    public void signal(String str) {
        synchronized (this) {
            if (this.flag_closed) {
                throw new IOException(new ObfuscatedString(new long[]{6368291099842448678L, -7736755396299979789L, 1767423230216892770L, 4995439617596114710L}).toString());
            }
        }
        this.cn.signal(str);
    }

    public void startShell() {
        synchronized (this) {
            if (!this.flag_closed) {
                if (!this.flag_execution_started) {
                    this.flag_execution_started = true;
                } else {
                    throw new IOException(new ObfuscatedString(new long[]{-737262883410246580L, -5102335832487037610L, -910829964384108691L, -4981339546374384657L, 2179579469409687015L, -6271237495663344772L}).toString());
                }
            } else {
                throw new IOException(new ObfuscatedString(new long[]{-8422816941501272120L, 5655423289763365400L, 669311994488419530L, -8514391743381801372L}).toString());
            }
        }
        this.cm.requestShell(this.cn);
    }

    public void startSubSystem(String str) {
        if (str != null) {
            synchronized (this) {
                if (!this.flag_closed) {
                    if (!this.flag_execution_started) {
                        this.flag_execution_started = true;
                    } else {
                        throw new IOException(new ObfuscatedString(new long[]{2914628977447160880L, 3285714410284673370L, 4221743208812095236L, 1945502051039266746L, 9206880079178255741L, 3067863189621441012L}).toString());
                    }
                } else {
                    throw new IOException(new ObfuscatedString(new long[]{1307122767029839537L, -6040615780005029908L, -5130523877966720358L, -6174003760293558038L}).toString());
                }
            }
            this.cm.requestSubSystem(this.cn, str);
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{6191699474760726337L, 6190208858251823599L, 5647676871010453835L, -6575275496747427312L, -8524678474268520804L}).toString());
    }

    public int waitForCondition(int i, long j) {
        if (j >= 0) {
            return this.cm.waitForCondition(this.cn, j, i);
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-6993985433821524953L, 4968310697791287669L, 2586630029578394345L, 6368700998906455074L, 7397711680221592685L}).toString());
    }

    public int waitUntilDataAvailable(long j) {
        if (j >= 0) {
            int waitForCondition = this.cm.waitForCondition(this.cn, j, 28);
            if ((waitForCondition & 1) != 0) {
                return -1;
            }
            if ((waitForCondition & 12) != 0) {
                return 1;
            }
            if ((waitForCondition & 16) != 0) {
                return 0;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-8213265009435702075L, -8895062005880824363L, -4907686156600221959L, -5457822370849386381L, -6252787192661399233L}).toString());
            sb.append(waitForCondition);
            throw new IllegalStateException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-737960823362320855L, 8845075283330465360L}), sb));
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-5894980397299876100L, -7765995017156519821L, 8181701615999343385L, 4533787787295994525L, -8945250091426814455L}).toString());
    }

    public void requestPTY(String str, int i, int i2, int i3, int i4, byte[] bArr) {
        byte[] bArr2 = bArr;
        if (str != null) {
            if (bArr2 != null && bArr2.length > 0) {
                if (bArr2[bArr2.length - 1] != 0) {
                    throw new IOException(new ObfuscatedString(new long[]{190943055149882815L, 5843599463349588407L, 3497113636705645605L, 1017317004525593571L, 8829399932306831324L, -5624605438245747968L, 7025958250066908614L, -1774240911944714774L, 3335255880626774101L}).toString());
                }
            } else {
                bArr2 = new byte[]{0};
            }
            byte[] bArr3 = bArr2;
            synchronized (this) {
                if (!this.flag_closed) {
                    if (!this.flag_pty_requested) {
                        if (!this.flag_execution_started) {
                            this.flag_pty_requested = true;
                        } else {
                            throw new IOException(new ObfuscatedString(new long[]{3130838961379393989L, 3572144484643704509L, -4372326694197777705L, 5389769527835727261L, -6489919479749746316L, 8562156666060726501L, -5234379600175489638L, 6756101164054958540L, 470134518069191674L, 3998394551468454315L, 5812403247436516548L, 5428006941840263512L}).toString());
                        }
                    } else {
                        throw new IOException(new ObfuscatedString(new long[]{1434859887568411110L, -3486839986822571690L, 2369019578277475302L, 7993157245623220297L, -2044422428724628047L}).toString());
                    }
                } else {
                    throw new IOException(new ObfuscatedString(new long[]{-3416810733366579955L, 4012713229308685801L, 5774778587302945664L, 4675705058251710483L}).toString());
                }
            }
            this.cm.requestPTY(this.cn, str, i, i2, i3, i4, bArr3);
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-7764031219001730012L, 8030488289504306095L, -1542659660738933390L, 8168165284545872899L}).toString());
    }

    public void signal(int i) {
        String strsignal = PacketSignal.strsignal(i);
        if (strsignal != null) {
            signal(strsignal);
        } else {
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-7445534006948893388L, -7894567849987933703L, 4021472705943986957L, -3919849636396793211L, -6377182455135196464L}), new StringBuilder(), i));
        }
    }
}
