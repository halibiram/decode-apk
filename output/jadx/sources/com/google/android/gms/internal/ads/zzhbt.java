package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayDeque;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzhbt {
    private final ArrayDeque zza = new ArrayDeque();

    private zzhbt() {
    }

    public static /* bridge */ /* synthetic */ zzgyl zza(zzhbt zzhbtVar, zzgyl zzgylVar, zzgyl zzgylVar2) {
        zzhbtVar.zzb(zzgylVar);
        zzhbtVar.zzb(zzgylVar2);
        zzgyl zzgylVar3 = (zzgyl) zzhbtVar.zza.pop();
        while (!zzhbtVar.zza.isEmpty()) {
            zzgylVar3 = new zzhbx((zzgyl) zzhbtVar.zza.pop(), zzgylVar3);
        }
        return zzgylVar3;
    }

    private final void zzb(zzgyl zzgylVar) {
        zzgyl zzgylVar2;
        zzgyl zzgylVar3;
        if (zzgylVar.zzh()) {
            int zzc = zzc(zzgylVar.zzd());
            ArrayDeque arrayDeque = this.zza;
            int zzc2 = zzhbx.zzc(zzc + 1);
            if (!arrayDeque.isEmpty() && ((zzgyl) this.zza.peek()).zzd() < zzc2) {
                int zzc3 = zzhbx.zzc(zzc);
                zzgyl zzgylVar4 = (zzgyl) this.zza.pop();
                while (true) {
                    if (this.zza.isEmpty() || ((zzgyl) this.zza.peek()).zzd() >= zzc3) {
                        break;
                    } else {
                        zzgylVar4 = new zzhbx((zzgyl) this.zza.pop(), zzgylVar4);
                    }
                }
                zzhbx zzhbxVar = new zzhbx(zzgylVar4, zzgylVar);
                while (!this.zza.isEmpty()) {
                    int zzc4 = zzc(zzhbxVar.zzd()) + 1;
                    ArrayDeque arrayDeque2 = this.zza;
                    if (((zzgyl) arrayDeque2.peek()).zzd() >= zzhbx.zzc(zzc4)) {
                        break;
                    } else {
                        zzhbxVar = new zzhbx((zzgyl) this.zza.pop(), zzhbxVar);
                    }
                }
                this.zza.push(zzhbxVar);
                return;
            }
            this.zza.push(zzgylVar);
            return;
        }
        if (zzgylVar instanceof zzhbx) {
            zzhbx zzhbxVar2 = (zzhbx) zzgylVar;
            zzgylVar2 = zzhbxVar2.zzd;
            zzb(zzgylVar2);
            zzgylVar3 = zzhbxVar2.zze;
            zzb(zzgylVar3);
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-6789274411000487911L, 2382948765216199433L, 6958789324799448051L, 8177172850962753450L, 2453249543685690434L, -7699037546115935289L, -1718822221022279792L, -8852029682765054509L}).toString().concat(String.valueOf(zzgylVar.getClass())));
    }

    private static final int zzc(int i) {
        int binarySearch = Arrays.binarySearch(zzhbx.zza, i);
        if (binarySearch < 0) {
            return (-(binarySearch + 1)) - 1;
        }
        return binarySearch;
    }

    public /* synthetic */ zzhbt(zzhbs zzhbsVar) {
    }
}
