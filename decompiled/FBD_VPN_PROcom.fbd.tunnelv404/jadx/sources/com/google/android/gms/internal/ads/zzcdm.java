package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzcdm {

    @VisibleForTesting
    final String zzf;
    private final com.google.android.gms.ads.internal.util.zzg zzk;

    @VisibleForTesting
    long zza = -1;

    @VisibleForTesting
    long zzb = -1;

    @VisibleForTesting
    int zzc = -1;

    @VisibleForTesting
    int zzd = -1;

    @VisibleForTesting
    long zze = 0;
    private final Object zzj = new Object();

    @VisibleForTesting
    int zzg = 0;

    @VisibleForTesting
    int zzh = 0;

    @VisibleForTesting
    int zzi = 0;

    public zzcdm(String str, com.google.android.gms.ads.internal.util.zzg zzgVar) {
        this.zzf = str;
        this.zzk = zzgVar;
    }

    private final void zzi() {
        if (((Boolean) zzbih.zza.zze()).booleanValue()) {
            synchronized (this.zzj) {
                this.zzc--;
                this.zzd--;
            }
        }
    }

    public final int zza() {
        int i;
        synchronized (this.zzj) {
            i = this.zzi;
        }
        return i;
    }

    public final Bundle zzb(Context context, String str) {
        Bundle bundle;
        synchronized (this.zzj) {
            try {
                bundle = new Bundle();
                if (!this.zzk.zzQ()) {
                    bundle.putString(new ObfuscatedString(new long[]{6994367693655423179L, 5618630519716641812L, -3050034105537334789L}).toString(), this.zzf);
                }
                bundle.putLong(new ObfuscatedString(new long[]{-7039750194250532679L, -6766669045445624344L}).toString(), this.zzb);
                bundle.putLong(new ObfuscatedString(new long[]{2013565290630194905L, -168712837197500553L}).toString(), this.zza);
                bundle.putString(new ObfuscatedString(new long[]{8536483701938902673L, -1167849938062033214L}).toString(), str);
                bundle.putInt(new ObfuscatedString(new long[]{3089430732942733110L, -78649770875247748L}).toString(), this.zzc);
                bundle.putInt(new ObfuscatedString(new long[]{-6051034250132029019L, 87603931916754106L, -3425724174587818003L}).toString(), this.zzd);
                bundle.putLong(new ObfuscatedString(new long[]{6679497001658237886L, -1116798161421236020L, -1325207985288471206L}).toString(), this.zze);
                bundle.putInt(new ObfuscatedString(new long[]{1231077750172122498L, -9111453953116060762L}).toString(), this.zzg);
                bundle.putInt(new ObfuscatedString(new long[]{4096428846446394729L, -8002687712923491154L}).toString(), this.zzh);
                String obfuscatedString = new ObfuscatedString(new long[]{-1441687851614510836L, -1944685787057527469L, -3261197494419385637L, 6475655994988332131L, -1976831708375258072L}).toString();
                Context zza = zzbzs.zza(context);
                int identifier = zza.getResources().getIdentifier(new ObfuscatedString(new long[]{-566201075156263454L, 2550608792384834310L, 8617527105842497750L, -3735790685710962536L}).toString(), new ObfuscatedString(new long[]{1699990001485154538L, -7521237575225819575L}).toString(), new ObfuscatedString(new long[]{-8695961596637081661L, 1710109451624906989L}).toString());
                boolean z = false;
                if (identifier == 0) {
                    zzcec.zzi(new ObfuscatedString(new long[]{8560835865391848923L, -7971705382655113583L, 1514690864927319274L, 7138906237587302113L, 676869270929118408L, -4108643227409480633L, 8388431242987699249L, -8743545087576845803L, -8880193621678503161L, 5240325305546452941L, 7142516745197578921L, 453016504021625368L, -3712183372550220700L, -4103342711367947770L, -7675986721197544074L, -3190403273330739544L}).toString());
                } else {
                    try {
                        if (identifier == zza.getPackageManager().getActivityInfo(new ComponentName(zza.getPackageName(), new ObfuscatedString(new long[]{5338399261158909413L, -166764257974048018L, -4682624994486093267L, 4239771896058521689L, -3820339509033444174L, -7521034799270843426L}).toString()), 0).theme) {
                            z = true;
                        } else {
                            zzcec.zzi(new ObfuscatedString(new long[]{7946927734809625454L, -3025070371656172464L, 7297238645328935306L, 7345469741532408889L, -522017202498084133L, 1571713253965861990L, 7396205784362198189L, 1222640614433409343L, -7935257433035883650L, -1299430624430018746L, 4076571718829218947L, -6999863565179163852L, -3563556008078682192L, 8109278736687999288L, -4401335287709964173L, 4740695433264096575L}).toString());
                        }
                    } catch (PackageManager.NameNotFoundException unused) {
                        zzcec.zzj(new ObfuscatedString(new long[]{-103771351008595892L, 6198727961345156818L, 6906021497478269000L, 424408893500989936L, -3643385563849322654L}).toString());
                        zzcec.zzi(new ObfuscatedString(new long[]{5366655998234518886L, -2534535645212738771L, -8607499796573721281L, 7804329920663264698L, 3370363156361052114L, 1966028322292284098L, 826997056089269821L, 2949431481016353434L, -6533786719240061210L, -1407593343181767714L, 6426373228238803705L, -7139083973309311969L, -7295078443496556118L, -1586866649458424125L, -8344159711541847630L, 1988947992360125785L}).toString());
                    }
                }
                bundle.putBoolean(obfuscatedString, z);
                bundle.putInt(new ObfuscatedString(new long[]{-995031651987675961L, 7017617285147657070L, -2211827858532104091L, -8624092275997466808L, -1488091257745101362L}).toString(), zza());
            } catch (Throwable th) {
                throw th;
            }
        }
        return bundle;
    }

    public final void zzc() {
        synchronized (this.zzj) {
            this.zzg++;
        }
    }

    public final void zzd() {
        synchronized (this.zzj) {
            this.zzh++;
        }
    }

    public final void zze() {
        zzi();
    }

    public final void zzf() {
        zzi();
    }

    public final void zzg(com.google.android.gms.ads.internal.client.zzl zzlVar, long j) {
        Bundle bundle;
        synchronized (this.zzj) {
            try {
                long zzd = this.zzk.zzd();
                long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis();
                if (this.zzb == -1) {
                    if (currentTimeMillis - zzd > ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzaT)).longValue()) {
                        this.zzd = -1;
                    } else {
                        this.zzd = this.zzk.zzc();
                    }
                    this.zzb = j;
                    this.zza = j;
                } else {
                    this.zza = j;
                }
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdt)).booleanValue() && (bundle = zzlVar.zzc) != null && bundle.getInt(new ObfuscatedString(new long[]{4749021756609358040L, -4809049609679543421L}).toString(), 2) == 1) {
                    return;
                }
                this.zzc++;
                int i = this.zzd + 1;
                this.zzd = i;
                if (i == 0) {
                    this.zze = 0L;
                    this.zzk.zzD(currentTimeMillis);
                } else {
                    this.zze = currentTimeMillis - this.zzk.zze();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzh() {
        synchronized (this.zzj) {
            this.zzi++;
        }
    }
}
