package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes2.dex */
public final class zzalx implements zzakr {
    private final zzfp zza = new zzfp();

    @Override // com.google.android.gms.internal.ads.zzakr
    public final void zza(byte[] bArr, int i, int i2, zzakq zzakqVar, zzep zzepVar) {
        boolean z;
        zzec zzp;
        boolean z2;
        this.zza.zzI(bArr, i2 + i);
        this.zza.zzK(i);
        ArrayList arrayList = new ArrayList();
        while (true) {
            zzfp zzfpVar = this.zza;
            if (zzfpVar.zzb() > 0) {
                if (zzfpVar.zzb() >= 8) {
                    z = true;
                } else {
                    z = false;
                }
                zzek.zze(z, new ObfuscatedString(new long[]{2318389459991803047L, -6982434068048972121L, -1674728349843986795L, -5478126377416996612L, 1095595656487814641L, 1012983555024709981L, -6500557438781306833L}).toString());
                zzfp zzfpVar2 = this.zza;
                int zzg = zzfpVar2.zzg() - 8;
                if (zzfpVar2.zzg() == 1987343459) {
                    zzfp zzfpVar3 = this.zza;
                    CharSequence charSequence = null;
                    zzea zzeaVar = null;
                    while (zzg > 0) {
                        if (zzg >= 8) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        zzek.zze(z2, new ObfuscatedString(new long[]{2579062511630643024L, -9138062188577665350L, 9039203654252988932L, 9143894088923442255L, -2538346840082471450L, -4711051270695170891L}).toString());
                        int zzg2 = zzfpVar3.zzg();
                        int zzg3 = zzfpVar3.zzg();
                        int i3 = zzg - 8;
                        int i4 = zzg2 - 8;
                        String zzA = zzfy.zzA(zzfpVar3.zzM(), zzfpVar3.zzd(), i4);
                        zzfpVar3.zzL(i4);
                        if (zzg3 == 1937011815) {
                            zzeaVar = zzamh.zzb(zzA);
                        } else if (zzg3 == 1885436268) {
                            charSequence = zzamh.zza(null, zzA.trim(), Collections.emptyList());
                        }
                        zzg = i3 - i4;
                    }
                    if (charSequence == null) {
                        charSequence = new ObfuscatedString(new long[]{-6355436107116373435L}).toString();
                    }
                    if (zzeaVar != null) {
                        zzeaVar.zzl(charSequence);
                        zzp = zzeaVar.zzp();
                    } else {
                        zzamg zzamgVar = new zzamg();
                        zzamgVar.zzc = charSequence;
                        zzp = zzamgVar.zza().zzp();
                    }
                    arrayList.add(zzp);
                } else {
                    this.zza.zzL(zzg);
                }
            } else {
                zzepVar.zza(new zzakj(arrayList, -9223372036854775807L, -9223372036854775807L));
                return;
            }
        }
    }
}
