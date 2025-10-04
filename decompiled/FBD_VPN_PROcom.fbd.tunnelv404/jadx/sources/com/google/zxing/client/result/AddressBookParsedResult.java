package com.google.zxing.client.result;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes3.dex */
public final class AddressBookParsedResult extends ParsedResult {
    private final String[] addressTypes;
    private final String[] addresses;
    private final String birthday;
    private final String[] emailTypes;
    private final String[] emails;
    private final String[] geo;
    private final String instantMessenger;
    private final String[] names;
    private final String[] nicknames;
    private final String note;

    /* renamed from: org, reason: collision with root package name */
    private final String f5770org;
    private final String[] phoneNumbers;
    private final String[] phoneTypes;
    private final String pronunciation;
    private final String title;
    private final String[] urls;

    public AddressBookParsedResult(String[] strArr, String[] strArr2, String[] strArr3, String[] strArr4, String[] strArr5, String[] strArr6, String[] strArr7) {
        this(strArr, null, null, strArr2, strArr3, strArr4, strArr5, null, null, strArr6, strArr7, null, null, null, null, null);
    }

    public String[] getAddressTypes() {
        return this.addressTypes;
    }

    public String[] getAddresses() {
        return this.addresses;
    }

    public String getBirthday() {
        return this.birthday;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(100);
        ParsedResult.maybeAppend(this.names, sb);
        ParsedResult.maybeAppend(this.nicknames, sb);
        ParsedResult.maybeAppend(this.pronunciation, sb);
        ParsedResult.maybeAppend(this.title, sb);
        ParsedResult.maybeAppend(this.f5770org, sb);
        ParsedResult.maybeAppend(this.addresses, sb);
        ParsedResult.maybeAppend(this.phoneNumbers, sb);
        ParsedResult.maybeAppend(this.emails, sb);
        ParsedResult.maybeAppend(this.instantMessenger, sb);
        ParsedResult.maybeAppend(this.urls, sb);
        ParsedResult.maybeAppend(this.birthday, sb);
        ParsedResult.maybeAppend(this.geo, sb);
        ParsedResult.maybeAppend(this.note, sb);
        return sb.toString();
    }

    public String[] getEmailTypes() {
        return this.emailTypes;
    }

    public String[] getEmails() {
        return this.emails;
    }

    public String[] getGeo() {
        return this.geo;
    }

    public String getInstantMessenger() {
        return this.instantMessenger;
    }

    public String[] getNames() {
        return this.names;
    }

    public String[] getNicknames() {
        return this.nicknames;
    }

    public String getNote() {
        return this.note;
    }

    public String getOrg() {
        return this.f5770org;
    }

    public String[] getPhoneNumbers() {
        return this.phoneNumbers;
    }

    public String[] getPhoneTypes() {
        return this.phoneTypes;
    }

    public String getPronunciation() {
        return this.pronunciation;
    }

    public String getTitle() {
        return this.title;
    }

    public String[] getURLs() {
        return this.urls;
    }

    public AddressBookParsedResult(String[] strArr, String[] strArr2, String str, String[] strArr3, String[] strArr4, String[] strArr5, String[] strArr6, String str2, String str3, String[] strArr7, String[] strArr8, String str4, String str5, String str6, String[] strArr9, String[] strArr10) {
        super(ParsedResultType.ADDRESSBOOK);
        if (strArr3 != null && strArr4 != null && strArr3.length != strArr4.length) {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{1836943429102680013L, 2011550994164439975L, -3729592555885676555L, 5629607721484357218L, 177116380198299999L, -8053276657641700277L}).toString());
        }
        if (strArr5 != null && strArr6 != null && strArr5.length != strArr6.length) {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-9066967961114868773L, -7977330717315651345L, 2133841851701711378L, 151292878520646628L, 7950008814034861388L}).toString());
        }
        if (strArr7 != null && strArr8 != null && strArr7.length != strArr8.length) {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{2345855789807225310L, 1357189642693781003L, -8957638309724831912L, 5685086962945930491L, -1727418360161587016L, -6501064397138851285L}).toString());
        }
        this.names = strArr;
        this.nicknames = strArr2;
        this.pronunciation = str;
        this.phoneNumbers = strArr3;
        this.phoneTypes = strArr4;
        this.emails = strArr5;
        this.emailTypes = strArr6;
        this.instantMessenger = str2;
        this.note = str3;
        this.addresses = strArr7;
        this.addressTypes = strArr8;
        this.f5770org = str4;
        this.birthday = str5;
        this.title = str6;
        this.urls = strArr9;
        this.geo = strArr10;
    }
}
