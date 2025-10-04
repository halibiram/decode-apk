package com.tknetwork.tunnel.core;

import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.Serializable;

/* loaded from: classes3.dex */
public class Connection implements Serializable, Cloneable {
    public static final int CONNECTION_DEFAULT_TIMEOUT = 120;
    private static final long serialVersionUID = 92031902903829089L;
    public String mServerName = new ObfuscatedString(new long[]{-5157293608085326354L, 4475250738014369584L, -7824336819771794153L, 4464198179213875676L}).toString();
    public String mServerPort = new ObfuscatedString(new long[]{-4990740380147115016L, 1989197200932615914L}).toString();
    public boolean mUseUdp = true;
    public String mCustomConfiguration = new ObfuscatedString(new long[]{2826812296723302926L}).toString();
    public boolean mUseCustomConfig = false;
    public boolean mEnabled = true;
    public int mConnectTimeout = 0;

    public String getConnectionBlock() {
        String m3332x9d12c1f4;
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{6051350316299155330L, 6894625818687651084L}), AbstractC0749x8313616e.m3341xc20437a5(new ObfuscatedString(new long[]{7753710932265467470L}).toString())));
        m3341xc20437a5.append(this.mServerName);
        StringBuilder m3341xc20437a52 = AbstractC0749x8313616e.m3341xc20437a5(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-5418605875826507744L, 1080479025567962457L}), AbstractC0749x8313616e.m3341xc20437a5(m3341xc20437a5.toString())));
        m3341xc20437a52.append(this.mServerPort);
        String sb = m3341xc20437a52.toString();
        if (this.mUseUdp) {
            m3332x9d12c1f4 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{1397822831556908480L, 8651676257856167825L}), AbstractC0749x8313616e.m3341xc20437a5(sb));
        } else {
            m3332x9d12c1f4 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-8485339388859851758L, 9133465496443809210L, -3196291081943986696L}), AbstractC0749x8313616e.m3341xc20437a5(sb));
        }
        if (this.mConnectTimeout != 0) {
            StringBuilder m3341xc20437a53 = AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f4);
            m3341xc20437a53.append(String.format(new ObfuscatedString(new long[]{7008634922146736636L, 4331506087470617590L, 4347365670700382832L, -1487203524037951382L}).toString(), Integer.valueOf(this.mConnectTimeout)));
            m3332x9d12c1f4 = m3341xc20437a53.toString();
        }
        if (!TextUtils.isEmpty(this.mCustomConfiguration) && this.mUseCustomConfig) {
            StringBuilder m3341xc20437a54 = AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f4);
            m3341xc20437a54.append(this.mCustomConfiguration);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-997387379793013760L, 8537547521340443946L}), AbstractC0749x8313616e.m3341xc20437a5(m3341xc20437a54.toString()));
        }
        return m3332x9d12c1f4;
    }

    public int getTimeout() {
        int i = this.mConnectTimeout;
        if (i <= 0) {
            return 120;
        }
        return i;
    }

    public boolean isOnlyRemote() {
        if (!TextUtils.isEmpty(this.mCustomConfiguration) && this.mUseCustomConfig) {
            return false;
        }
        return true;
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Connection m1555clone() {
        return (Connection) super.clone();
    }
}
