package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import app.tunnel.logger.utils.TrafficData;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzhd implements zzgw {
    private final Context zza;
    private final List zzb = new ArrayList();
    private final zzgw zzc;

    @Nullable
    private zzgw zzd;

    @Nullable
    private zzgw zze;

    @Nullable
    private zzgw zzf;

    @Nullable
    private zzgw zzg;

    @Nullable
    private zzgw zzh;

    @Nullable
    private zzgw zzi;

    @Nullable
    private zzgw zzj;

    @Nullable
    private zzgw zzk;

    public zzhd(Context context, zzgw zzgwVar) {
        this.zza = context.getApplicationContext();
        this.zzc = zzgwVar;
    }

    private final zzgw zzg() {
        if (this.zze == null) {
            zzgp zzgpVar = new zzgp(this.zza);
            this.zze = zzgpVar;
            zzh(zzgpVar);
        }
        return this.zze;
    }

    private final void zzh(zzgw zzgwVar) {
        for (int i = 0; i < this.zzb.size(); i++) {
            zzgwVar.zzf((zzhy) this.zzb.get(i));
        }
    }

    private static final void zzi(@Nullable zzgw zzgwVar, zzhy zzhyVar) {
        if (zzgwVar != null) {
            zzgwVar.zzf(zzhyVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzu
    public final int zza(byte[] bArr, int i, int i2) {
        zzgw zzgwVar = this.zzk;
        zzgwVar.getClass();
        return zzgwVar.zza(bArr, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final long zzb(zzhb zzhbVar) {
        boolean z;
        zzgw zzgwVar;
        if (this.zzk == null) {
            z = true;
        } else {
            z = false;
        }
        zzek.zzf(z);
        String scheme = zzhbVar.zza.getScheme();
        Uri uri = zzhbVar.zza;
        int i = zzfy.zza;
        String scheme2 = uri.getScheme();
        if (!TextUtils.isEmpty(scheme2) && !new ObfuscatedString(new long[]{-286831096899195106L, -133656768493982191L}).toString().equals(scheme2)) {
            if (new ObfuscatedString(new long[]{-6460694167347402547L, -8151683731138053462L}).toString().equals(scheme)) {
                this.zzk = zzg();
            } else if (new ObfuscatedString(new long[]{8534751694808177092L, 8117831940596299666L}).toString().equals(scheme)) {
                if (this.zzf == null) {
                    zzgt zzgtVar = new zzgt(this.zza);
                    this.zzf = zzgtVar;
                    zzh(zzgtVar);
                }
                this.zzk = this.zzf;
            } else if (new ObfuscatedString(new long[]{-8029567760846950720L, -950348530100417817L}).toString().equals(scheme)) {
                if (this.zzg == null) {
                    try {
                        zzgw zzgwVar2 = (zzgw) Class.forName(new ObfuscatedString(new long[]{2941972636061761073L, -7440846451317532715L, 2233817034659616936L, 7991217905366241701L, -2122484467207217237L, -8978079437760474984L, 4781854746461213364L}).toString()).getConstructor(null).newInstance(null);
                        this.zzg = zzgwVar2;
                        zzh(zzgwVar2);
                    } catch (ClassNotFoundException unused) {
                        zzff.zzf(new ObfuscatedString(new long[]{-3816680323285782779L, -2907580574539282526L, -6969708772166270541L, -3712078352533887898L}).toString(), new ObfuscatedString(new long[]{6545543725648878493L, 301231414213334167L, -2674381326641222131L, -8529915088543276859L, 503411657918804926L, -4986332058392169436L, 3942945868834912194L, 7685996151864251032L, 7244145788470269445L, -8297291912854638819L}).toString());
                    } catch (Exception e) {
                        throw new RuntimeException(new ObfuscatedString(new long[]{8267819376732452886L, -6033887823574948178L, 4955462032876487751L, -4047991223860958986L, 3491491526789979538L, 5225727076412864851L}).toString(), e);
                    }
                    if (this.zzg == null) {
                        this.zzg = this.zzc;
                    }
                }
                this.zzk = this.zzg;
            } else if (new ObfuscatedString(new long[]{-4550436631833356546L, 2378910300726944077L}).toString().equals(scheme)) {
                if (this.zzh == null) {
                    zzia zziaVar = new zzia(TrafficData.INTERVAL_TIME);
                    this.zzh = zziaVar;
                    zzh(zziaVar);
                }
                this.zzk = this.zzh;
            } else if (new ObfuscatedString(new long[]{6692731887774061941L, -3881228150168090532L}).toString().equals(scheme)) {
                if (this.zzi == null) {
                    zzgu zzguVar = new zzgu();
                    this.zzi = zzguVar;
                    zzh(zzguVar);
                }
                this.zzk = this.zzi;
            } else {
                if (!new ObfuscatedString(new long[]{7676843274906355202L, -3042395117597212556L, -7216523712348975407L}).toString().equals(scheme) && !new ObfuscatedString(new long[]{-4971289472615955647L, 6246483628388687502L, 8138770643045992247L}).toString().equals(scheme)) {
                    zzgwVar = this.zzc;
                } else {
                    if (this.zzj == null) {
                        zzhw zzhwVar = new zzhw(this.zza);
                        this.zzj = zzhwVar;
                        zzh(zzhwVar);
                    }
                    zzgwVar = this.zzj;
                }
                this.zzk = zzgwVar;
            }
        } else {
            String path = zzhbVar.zza.getPath();
            if (path != null && path.startsWith(new ObfuscatedString(new long[]{4243402667507001091L, 8375826176385975917L, 1700602542879627663L}).toString())) {
                this.zzk = zzg();
            } else {
                if (this.zzd == null) {
                    zzhm zzhmVar = new zzhm();
                    this.zzd = zzhmVar;
                    zzh(zzhmVar);
                }
                this.zzk = this.zzd;
            }
        }
        return this.zzk.zzb(zzhbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    @Nullable
    public final Uri zzc() {
        zzgw zzgwVar = this.zzk;
        if (zzgwVar == null) {
            return null;
        }
        return zzgwVar.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final void zzd() {
        zzgw zzgwVar = this.zzk;
        if (zzgwVar != null) {
            try {
                zzgwVar.zzd();
            } finally {
                this.zzk = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final Map zze() {
        zzgw zzgwVar = this.zzk;
        if (zzgwVar == null) {
            return Collections.emptyMap();
        }
        return zzgwVar.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final void zzf(zzhy zzhyVar) {
        zzhyVar.getClass();
        this.zzc.zzf(zzhyVar);
        this.zzb.add(zzhyVar);
        zzi(this.zzd, zzhyVar);
        zzi(this.zze, zzhyVar);
        zzi(this.zzf, zzhyVar);
        zzi(this.zzg, zzhyVar);
        zzi(this.zzh, zzhyVar);
        zzi(this.zzi, zzhyVar);
        zzi(this.zzj, zzhyVar);
    }
}
