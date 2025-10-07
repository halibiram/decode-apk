package com.trilead.ssh2;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;

/* loaded from: classes3.dex */
public class HTTPProxyException extends IOException {
    private static final long serialVersionUID = 2241537397104426186L;
    public final int httpErrorCode;
    public final String httpResponse;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public HTTPProxyException(String str, int i) {
        super(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-6614967938806284801L, -5587914229219517618L}), r0));
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{434467939340391248L, 2908506443360420944L, 3555836804686414796L, -5172675664775775800L}).toString());
        sb.append(i);
        sb.append(new ObfuscatedString(new long[]{8413621179249312719L, -2904402150139723740L}).toString());
        sb.append(str);
        this.httpResponse = str;
        this.httpErrorCode = i;
    }
}
