package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzerw implements zzexq {
    private final zzexq zza;
    private final zzfhh zzb;
    private final Context zzc;
    private final zzcdl zzd;

    public zzerw(zzetq zzetqVar, zzfhh zzfhhVar, Context context, zzcdl zzcdlVar) {
        this.zza = zzetqVar;
        this.zzb = zzfhhVar;
        this.zzc = context;
        this.zzd = zzcdlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final int zza() {
        return 7;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final ListenableFuture zzb() {
        return zzgen.zzm(this.zza.zzb(), new zzfws() { // from class: com.google.android.gms.internal.ads.zzerv
            @Override // com.google.android.gms.internal.ads.zzfws
            public final Object apply(Object obj) {
                return zzerw.this.zzc((zzexv) obj);
            }
        }, zzcep.zzf);
    }

    public final /* synthetic */ zzerx zzc(zzexv zzexvVar) {
        String str;
        boolean z;
        String str2;
        int i;
        float f;
        int i2;
        int i3;
        int i4;
        DisplayMetrics displayMetrics;
        com.google.android.gms.ads.internal.client.zzq zzqVar = this.zzb.zze;
        com.google.android.gms.ads.internal.client.zzq[] zzqVarArr = zzqVar.zzg;
        if (zzqVarArr == null) {
            str = zzqVar.zza;
            z = zzqVar.zzi;
        } else {
            str = null;
            boolean z2 = false;
            boolean z3 = false;
            z = false;
            for (com.google.android.gms.ads.internal.client.zzq zzqVar2 : zzqVarArr) {
                boolean z4 = zzqVar2.zzi;
                if (!z4 && !z2) {
                    str = zzqVar2.zza;
                    z2 = true;
                }
                if (z4) {
                    if (!z3) {
                        z3 = true;
                        z = true;
                    } else {
                        z3 = true;
                    }
                }
                if (z2 && z3) {
                    break;
                }
            }
        }
        Resources resources = this.zzc.getResources();
        if (resources != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
            zzcdl zzcdlVar = this.zzd;
            f = displayMetrics.density;
            i2 = displayMetrics.widthPixels;
            i = displayMetrics.heightPixels;
            str2 = zzcdlVar.zzi().zzm();
        } else {
            str2 = null;
            i = 0;
            f = 0.0f;
            i2 = 0;
        }
        StringBuilder sb = new StringBuilder();
        com.google.android.gms.ads.internal.client.zzq[] zzqVarArr2 = zzqVar.zzg;
        if (zzqVarArr2 != null) {
            int i5 = 0;
            boolean z5 = false;
            while (i5 < zzqVarArr2.length) {
                com.google.android.gms.ads.internal.client.zzq zzqVar3 = zzqVarArr2[i5];
                if (zzqVar3.zzi) {
                    i4 = 1;
                    z5 = true;
                } else {
                    if (sb.length() != 0) {
                        sb.append(new ObfuscatedString(new long[]{1004137798154643863L, -8348873570956405880L}).toString());
                    }
                    int i6 = zzqVar3.zze;
                    if (i6 == -1) {
                        if (f != 0.0f) {
                            i6 = (int) (zzqVar3.zzf / f);
                        } else {
                            i6 = -1;
                        }
                    }
                    sb.append(i6);
                    sb.append(new ObfuscatedString(new long[]{-5506416940885200493L, -520622923308797582L}).toString());
                    int i7 = zzqVar3.zzb;
                    if (i7 == -2) {
                        if (f != 0.0f) {
                            i7 = (int) (zzqVar3.zzc / f);
                        } else {
                            i7 = -2;
                        }
                    }
                    sb.append(i7);
                    i4 = 1;
                }
                i5 += i4;
            }
            if (z5) {
                if (sb.length() != 0) {
                    i3 = 0;
                    sb.insert(0, new ObfuscatedString(new long[]{81989022431854475L, 447934151713380146L}).toString());
                } else {
                    i3 = 0;
                }
                sb.insert(i3, new ObfuscatedString(new long[]{-2294469962046188052L, 2444342529543872459L}).toString());
            }
        }
        return new zzerx(zzqVar, str, z, sb.toString(), f, i2, i, str2, this.zzb.zzp);
    }
}
