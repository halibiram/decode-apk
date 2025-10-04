package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzetg implements zzexp {
    public final int zza;
    public final boolean zzb;
    public final boolean zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final int zzh;
    public final float zzi;
    public final boolean zzj;

    public zzetg(int i, boolean z, boolean z2, int i2, int i3, int i4, int i5, int i6, float f, boolean z3) {
        this.zza = i;
        this.zzb = z;
        this.zzc = z2;
        this.zzd = i2;
        this.zze = i3;
        this.zzf = i4;
        this.zzg = i5;
        this.zzh = i6;
        this.zzi = f;
        this.zzj = z3;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        bundle.putInt(new ObfuscatedString(new long[]{5151759020721392247L, 2344572356328176917L}).toString(), this.zza);
        bundle.putBoolean(new ObfuscatedString(new long[]{-261676806886789116L, -6317768232972580307L}).toString(), this.zzb);
        bundle.putBoolean(new ObfuscatedString(new long[]{1289716888405317706L, 4233046939388321424L}).toString(), this.zzc);
        bundle.putInt(new ObfuscatedString(new long[]{-8404562399568093148L, 8154749751597727037L}).toString(), this.zzd);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkv)).booleanValue()) {
            bundle.putInt(new ObfuscatedString(new long[]{1986340075294466331L, -1211318666508716712L}).toString(), this.zze);
            bundle.putInt(new ObfuscatedString(new long[]{-2363605048106253074L, 3439770475212783276L}).toString(), this.zzf);
        }
        bundle.putInt(new ObfuscatedString(new long[]{-2380260213466426879L, -7270731145064400959L}).toString(), this.zzg);
        bundle.putInt(new ObfuscatedString(new long[]{5182494256454919119L, -7400542049576818214L}).toString(), this.zzh);
        bundle.putFloat(new ObfuscatedString(new long[]{-2400403399836104826L, -6978695776112737549L, 1389102594713646794L, -468295479580613791L}).toString(), this.zzi);
        bundle.putBoolean(new ObfuscatedString(new long[]{8398065560026306144L, -1108425128097287696L, 5228126910422972629L, -1419228873274476081L}).toString(), this.zzj);
    }
}
