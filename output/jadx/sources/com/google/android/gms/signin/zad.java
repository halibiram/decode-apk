package com.google.android.gms.signin;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.signin.internal.SignInClientImpl;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zad {
    public static final Api.ClientKey<SignInClientImpl> zaa;

    @ShowFirstParty
    public static final Api.ClientKey<SignInClientImpl> zab;
    public static final Api.AbstractClientBuilder<SignInClientImpl, SignInOptions> zac;
    static final Api.AbstractClientBuilder<SignInClientImpl, zac> zad;
    public static final Scope zae;
    public static final Scope zaf;
    public static final Api<SignInOptions> zag;
    public static final Api<zac> zah;

    static {
        Api.ClientKey<SignInClientImpl> clientKey = new Api.ClientKey<>();
        zaa = clientKey;
        Api.ClientKey<SignInClientImpl> clientKey2 = new Api.ClientKey<>();
        zab = clientKey2;
        zaa zaaVar = new zaa();
        zac = zaaVar;
        zab zabVar = new zab();
        zad = zabVar;
        zae = new Scope(new ObfuscatedString(new long[]{-618467669458716833L, -6897281307537454878L}).toString());
        zaf = new Scope(new ObfuscatedString(new long[]{-6475771740503125565L, -4607831990049514141L}).toString());
        zag = new Api<>(new ObfuscatedString(new long[]{-6166608555576531413L, 5231739102118419294L, 7976302756599899675L}).toString(), zaaVar, clientKey);
        zah = new Api<>(new ObfuscatedString(new long[]{-4056148303054864769L, -1683070958231099169L, -7114866329049372917L, -2600743502353854592L}).toString(), zabVar, clientKey2);
    }
}
