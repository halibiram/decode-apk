package com.google.zxing.client.result;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes3.dex */
public final class EmailAddressParsedResult extends ParsedResult {
    private final String[] bccs;
    private final String body;
    private final String[] ccs;
    private final String subject;
    private final String[] tos;

    public EmailAddressParsedResult(String str) {
        this(new String[]{str}, null, null, null, null);
    }

    public String[] getBCCs() {
        return this.bccs;
    }

    public String getBody() {
        return this.body;
    }

    public String[] getCCs() {
        return this.ccs;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(30);
        ParsedResult.maybeAppend(this.tos, sb);
        ParsedResult.maybeAppend(this.ccs, sb);
        ParsedResult.maybeAppend(this.bccs, sb);
        ParsedResult.maybeAppend(this.subject, sb);
        ParsedResult.maybeAppend(this.body, sb);
        return sb.toString();
    }

    @Deprecated
    public String getEmailAddress() {
        String[] strArr = this.tos;
        if (strArr != null && strArr.length != 0) {
            return strArr[0];
        }
        return null;
    }

    @Deprecated
    public String getMailtoURI() {
        return new ObfuscatedString(new long[]{-8054797879311724280L, -2624699800072948318L}).toString();
    }

    public String getSubject() {
        return this.subject;
    }

    public String[] getTos() {
        return this.tos;
    }

    public EmailAddressParsedResult(String[] strArr, String[] strArr2, String[] strArr3, String str, String str2) {
        super(ParsedResultType.EMAIL_ADDRESS);
        this.tos = strArr;
        this.ccs = strArr2;
        this.bccs = strArr3;
        this.subject = str;
        this.body = str2;
    }
}
