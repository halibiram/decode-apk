package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzexz implements zzexp {
    public final String zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final boolean zze;
    public final int zzf;

    public zzexz(String str, int i, int i2, int i3, boolean z, int i4) {
        this.zza = str;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = i3;
        this.zze = z;
        this.zzf = i4;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        boolean z = true;
        zzfhv.zzf(bundle, new ObfuscatedString(new long[]{-5367928002896422891L, 2573428595139914497L}).toString(), this.zza, !TextUtils.isEmpty(this.zza));
        int i = this.zzb;
        if (i == -2) {
            z = false;
        }
        zzfhv.zze(bundle, new ObfuscatedString(new long[]{4948524601526515886L, -3920556114636648683L}).toString(), i, z);
        bundle.putInt(new ObfuscatedString(new long[]{876195731161049946L, 3793361329775097015L}).toString(), this.zzc);
        bundle.putInt(new ObfuscatedString(new long[]{3268340361356025064L, 4202258577440109287L}).toString(), this.zzd);
        Bundle zza = zzfhv.zza(bundle, new ObfuscatedString(new long[]{-6567598268103555580L, -4132090378935707096L}).toString());
        bundle.putBundle(new ObfuscatedString(new long[]{5794243019188102334L, 1162292151824723813L}).toString(), zza);
        Bundle zza2 = zzfhv.zza(zza, new ObfuscatedString(new long[]{2786242701088904771L, 4078632743188050210L}).toString());
        zza.putBundle(new ObfuscatedString(new long[]{5023826480723303481L, 6232653902143596287L}).toString(), zza2);
        zza2.putInt(new ObfuscatedString(new long[]{5875385786580364736L, -5492096562820315290L, 2428247022433996014L, 1203958154809572122L}).toString(), this.zzf);
        zza2.putBoolean(new ObfuscatedString(new long[]{-3393036369505111833L, 8626579787491097673L, -8642001015284091104L, -7406077272484119867L}).toString(), this.zze);
    }
}
