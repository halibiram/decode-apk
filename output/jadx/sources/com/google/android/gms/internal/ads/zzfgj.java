package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzfgj extends zzbzw {
    private final zzffz zza;
    private final zzffp zzb;
    private final zzfgz zzc;

    @Nullable
    private zzdso zzd;
    private boolean zze = false;

    public zzfgj(zzffz zzffzVar, zzffp zzffpVar, zzfgz zzfgzVar) {
        this.zza = zzffzVar;
        this.zzb = zzffpVar;
        this.zzc = zzfgzVar;
    }

    private final synchronized boolean zzy() {
        zzdso zzdsoVar = this.zzd;
        if (zzdsoVar != null) {
            if (!zzdsoVar.zze()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final Bundle zzb() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{3079173067082069645L, 6531251789527700249L, -8227361584661333956L, 1115824939292230637L, 281228790843225201L, 8904846590429628554L, 6845774395828370149L, 446986529526827444L}).toString());
        zzdso zzdsoVar = this.zzd;
        if (zzdsoVar != null) {
            return zzdsoVar.zza();
        }
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    @Nullable
    public final synchronized com.google.android.gms.ads.internal.client.zzdn zzc() {
        zzdso zzdsoVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgN)).booleanValue() && (zzdsoVar = this.zzd) != null) {
            return zzdsoVar.zzl();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    @Nullable
    public final synchronized String zzd() {
        zzdso zzdsoVar = this.zzd;
        if (zzdsoVar != null && zzdsoVar.zzl() != null) {
            return zzdsoVar.zzl().zzg();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final void zze() {
        zzf(null);
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final synchronized void zzf(IObjectWrapper iObjectWrapper) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{8149897555278727529L, -1724043992423938305L, -9107716859572589755L, 8776975285858968846L, 108406172423507748L, 174073389860532011L, 7124063610096228279L}).toString());
        Context context = null;
        this.zzb.zzg(null);
        if (this.zzd != null) {
            if (iObjectWrapper != null) {
                context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
            }
            this.zzd.zzm().zza(context);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x005f, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005c, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(com.google.android.gms.internal.ads.zzbgc.zzfr)).booleanValue() == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x002a, code lost:
    
        if (java.util.regex.Pattern.matches(r1, r0) != false) goto L18;
     */
    @Override // com.google.android.gms.internal.ads.zzbzx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void zzg(zzcab zzcabVar) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-9199888998160756210L, 4955288922162209795L, -5983216385909108574L, 6531898548257618087L, 9080604620814927448L, 384388611244923897L, -5003578954471757662L}).toString());
        String str = zzcabVar.zzb;
        String str2 = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzfp);
        if (str2 != null && str != null) {
            try {
            } catch (RuntimeException e) {
                com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{6660261886790143539L, 7387408230485397017L, 6996894354590950002L, 9039051923938722784L, 5890616618188292355L}).toString());
            }
        }
        if (zzy()) {
        }
        zzffr zzffrVar = new zzffr(null);
        this.zzd = null;
        this.zza.zzj(1);
        this.zza.zzb(zzcabVar.zza, zzcabVar.zzb, zzffrVar, new zzfgh(this));
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final void zzh() {
        zzi(null);
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final synchronized void zzi(IObjectWrapper iObjectWrapper) {
        Context context;
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{3276286982190091872L, -6284690202664430340L, -2222428007325932598L, 2091707760633411062L, 7299542607886188070L, -2186489891990273168L, 5135123996038798007L}).toString());
        if (this.zzd != null) {
            if (iObjectWrapper == null) {
                context = null;
            } else {
                context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
            }
            this.zzd.zzm().zzb(context);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final void zzj() {
        zzk(null);
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final synchronized void zzk(IObjectWrapper iObjectWrapper) {
        Context context;
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-8976796804412913824L, -4466795185422111333L, 1846252996083253059L, -3946496355167407511L, 6324232621357326670L, 3998541986380370366L, -107527762403079778L}).toString());
        if (this.zzd != null) {
            if (iObjectWrapper == null) {
                context = null;
            } else {
                context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
            }
            this.zzd.zzm().zzc(context);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final void zzl(com.google.android.gms.ads.internal.client.zzby zzbyVar) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-5917177959888713988L, 4065508551643995256L, -4130869786274432592L, -715058495250643646L, 6929953894890765004L, -2858141727636713717L, 1112432803337333847L, 1252671988197729365L, -5017016061197865266L}).toString());
        if (zzbyVar == null) {
            this.zzb.zzg(null);
        } else {
            this.zzb.zzg(new zzfgi(this, zzbyVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final synchronized void zzm(String str) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{3830299952135767908L, 6768532392954688552L, -6699689084695310552L, -3308309552611526477L, -9099068865228684541L, -5725570673500912255L, -3025591193564762813L, -9187292074662096582L, 2399185219723814626L}).toString());
        this.zzc.zzb = str;
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final synchronized void zzn(boolean z) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-915922928747703808L, -2851501645206135893L, -1724888397077184368L, 7832401651993623488L, -4915000553492537487L, 3986756324391660536L, 8941420329819363857L, 4379335225027581233L}).toString());
        this.zze = z;
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final void zzo(zzcaa zzcaaVar) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{7010121842609997882L, 52683910021911102L, 8953142103530382903L, 5555479775073615178L, 8815221667923207893L, -6519081220319782628L, 7678038390798505214L, 8670682530498290483L, 1596699497654070115L, 932994263297892093L}).toString());
        this.zzb.zzm(zzcaaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final synchronized void zzp(String str) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-7431094081021425906L, -7180529156629241127L, -6293426216995740173L, 5619875317442818553L, 535202415763355011L, -5104128936335218890L, 6670925496633649742L}).toString());
        this.zzc.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final synchronized void zzq() {
        zzr(null);
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final synchronized void zzr(@Nullable IObjectWrapper iObjectWrapper) {
        try {
            Preconditions.checkMainThread(new ObfuscatedString(new long[]{-534030086701848824L, -207664628624449776L, 6666916168673622961L, 6168794921664691639L, 5099305718085922560L, -8626543849549644299L, 3375117212988504953L}).toString());
            if (this.zzd != null) {
                Activity activity = null;
                if (iObjectWrapper != null) {
                    Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
                    if (unwrap instanceof Activity) {
                        activity = (Activity) unwrap;
                    }
                }
                this.zzd.zzh(this.zze, activity);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final boolean zzs() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-5652648537441767055L, -9171200773118464111L, 2223656773623020083L, 8032384929795467175L, 5018847511242247905L, 90883376061352920L, -4037154983492810337L}).toString());
        return zzy();
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final boolean zzt() {
        zzdso zzdsoVar = this.zzd;
        if (zzdsoVar != null && zzdsoVar.zzg()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final void zzu(zzbzv zzbzvVar) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{1073392595814608227L, 433106962236353106L, 4734122133564500216L, -2444683090498635821L, -3175638715021472796L, 983235824862183446L, 4022736033581917216L, 3467434415379441481L, 3570778657431528170L, -5040140586853257139L}).toString());
        this.zzb.zzn(zzbzvVar);
    }
}
