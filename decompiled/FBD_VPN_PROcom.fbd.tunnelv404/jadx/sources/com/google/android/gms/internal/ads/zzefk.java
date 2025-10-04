package com.google.android.gms.internal.ads;

import androidx.annotation.GuardedBy;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzefk implements zzdhv {
    private final String zzc;
    private final zzflw zzd;

    @GuardedBy("this")
    private boolean zza = false;

    @GuardedBy("this")
    private boolean zzb = false;
    private final com.google.android.gms.ads.internal.util.zzg zze = com.google.android.gms.ads.internal.zzt.zzo().zzi();

    public zzefk(String str, zzflw zzflwVar) {
        this.zzc = str;
        this.zzd = zzflwVar;
    }

    private final zzflv zzg(String str) {
        String str2;
        if (this.zze.zzQ()) {
            str2 = new ObfuscatedString(new long[]{-5162320368106787799L}).toString();
        } else {
            str2 = this.zzc;
        }
        zzflv zzb = zzflv.zzb(str);
        zzb.zza(new ObfuscatedString(new long[]{3551489463687078226L, -8321097951866992055L}).toString(), Long.toString(com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime(), 10));
        zzb.zza(new ObfuscatedString(new long[]{-1925769450124535425L, 5367028778677017284L}).toString(), str2);
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzdhv
    public final void zza(String str) {
        zzflv zzg = zzg(new ObfuscatedString(new long[]{2303655975838143907L, 6141669134178412951L}).toString());
        zzg.zza(new ObfuscatedString(new long[]{-7793049513211195724L, -3765167164600430260L}).toString(), new ObfuscatedString(new long[]{-3166559346529975314L, 5034964253764054626L, -6653409454092453926L}).toString());
        this.zzd.zzb(zzg);
    }

    @Override // com.google.android.gms.internal.ads.zzdhv
    public final void zzb(String str, String str2) {
        zzflv zzg = zzg(new ObfuscatedString(new long[]{1572197209904339380L, 3580464419522515773L, -6907684267321782831L, -5469221631840769198L}).toString());
        zzg.zza(new ObfuscatedString(new long[]{-7904656999528339298L, -5427955815869781830L}).toString(), str);
        zzg.zza(new ObfuscatedString(new long[]{-8462767719038407045L, 4475158903164663544L}).toString(), str2);
        this.zzd.zzb(zzg);
    }

    @Override // com.google.android.gms.internal.ads.zzdhv
    public final void zzc(String str) {
        zzflv zzg = zzg(new ObfuscatedString(new long[]{6620801791378812325L, -9029830414741055359L, -2511817187237268703L, 4844632171121320488L}).toString());
        zzg.zza(new ObfuscatedString(new long[]{3621101395657243688L, -8752256076193614019L}).toString(), str);
        this.zzd.zzb(zzg);
    }

    @Override // com.google.android.gms.internal.ads.zzdhv
    public final void zzd(String str) {
        zzflv zzg = zzg(new ObfuscatedString(new long[]{-7984609395382142080L, -1174439167890379135L, 2069746728154193919L, -3351045944805409969L}).toString());
        zzg.zza(new ObfuscatedString(new long[]{-1928636150826550155L, -2144956832546318995L}).toString(), str);
        this.zzd.zzb(zzg);
    }

    @Override // com.google.android.gms.internal.ads.zzdhv
    public final synchronized void zze() {
        if (!this.zzb) {
            this.zzd.zzb(zzg(new ObfuscatedString(new long[]{4160151491999873507L, 6131886339802369043L, 862111965380242571L}).toString()));
            this.zzb = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdhv
    public final synchronized void zzf() {
        if (!this.zza) {
            this.zzd.zzb(zzg(new ObfuscatedString(new long[]{2078523655590123164L, 291151014073923201L, 668204349135879066L}).toString()));
            this.zza = true;
        }
    }
}
