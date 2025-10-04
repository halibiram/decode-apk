package com.google.android.gms.internal.ads;

import android.content.Context;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzavh extends zzavg {
    public zzavh(Context context, String str, boolean z) {
        super(context, str, z);
    }

    public static zzavh zzt(String str, Context context, boolean z) {
        zzavg.zzr(context, false);
        return new zzavh(context, str, false);
    }

    @Deprecated
    public static zzavh zzu(String str, Context context, boolean z, int i) {
        zzavg.zzr(context, z);
        return new zzavh(context, str, z);
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final List zzp(zzawj zzawjVar, Context context, zzasg zzasgVar, zzarz zzarzVar) {
        if (zzawjVar.zzk() != null && ((zzavg) this).zzu) {
            int zza = zzawjVar.zza();
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(super.zzp(zzawjVar, context, zzasgVar, null));
            arrayList.add(new zzaxb(zzawjVar, new ObfuscatedString(new long[]{8595692693319071315L, 3506438415520247237L, 988729935566923740L, -8647109104699188702L, -8472319468229108420L, 5316769310312779714L, 6933747373741881501L, -4168299102268822676L, -3141484188638721493L}).toString(), new ObfuscatedString(new long[]{-1089880035847864453L, -406894286398074493L, 6745792775468574272L, 3702643251032585837L, 314545741035561377L, -4860484782573497L, 963494526894944790L}).toString(), zzasgVar, zza, 24));
            return arrayList;
        }
        return super.zzp(zzawjVar, context, zzasgVar, null);
    }
}
