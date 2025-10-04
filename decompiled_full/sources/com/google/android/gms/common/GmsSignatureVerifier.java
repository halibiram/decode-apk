package com.google.android.gms.common;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.internal.common.zzag;
import com.google.errorprone.annotations.RestrictedInheritance;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;

@ShowFirstParty
@KeepForSdk
@RestrictedInheritance(allowedOnPath = ".*javatests/com/google/android/gmscore/integ/client/common/robolectric/.*", explanation = "Sub classing of GMS Core's APIs are restricted to testing fakes.", link = "go/gmscore-restrictedinheritance")
/* loaded from: classes2.dex */
public class GmsSignatureVerifier {
    private static final zzab zza;
    private static final zzab zzb;
    private static final HashMap zzc;

    static {
        zzz zzzVar = new zzz();
        zzzVar.zzd(new ObfuscatedString(new long[]{-3155677478578310404L, 8397461826140433926L, 6021625651761180475L, -3762743864868456323L}).toString());
        zzzVar.zza(204200000L);
        zzl zzlVar = zzn.zzd;
        zzzVar.zzc(zzag.zzn(zzlVar.zzf(), zzn.zzb.zzf()));
        zzl zzlVar2 = zzn.zzc;
        zzzVar.zzb(zzag.zzn(zzlVar2.zzf(), zzn.zza.zzf()));
        zza = zzzVar.zze();
        zzz zzzVar2 = new zzz();
        zzzVar2.zzd(new ObfuscatedString(new long[]{-1082989670707680410L, -1273734875406387826L, -548617630491080239L, 3213527192491427972L}).toString());
        zzzVar2.zza(82240000L);
        zzzVar2.zzc(zzag.zzm(zzlVar.zzf()));
        zzzVar2.zzb(zzag.zzm(zzlVar2.zzf()));
        zzb = zzzVar2.zze();
        zzc = new HashMap();
    }
}
