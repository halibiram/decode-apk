package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzctz extends zzcwh {

    @Nullable
    private final zzcjk zzc;
    private final int zzd;
    private final Context zze;
    private final zzcto zzf;
    private final zzdkw zzg;
    private final zzdhy zzh;
    private final zzdbk zzi;
    private final boolean zzj;
    private final zzcdp zzk;
    private boolean zzl;

    public zzctz(zzcwg zzcwgVar, Context context, @Nullable zzcjk zzcjkVar, int i, zzcto zzctoVar, zzdkw zzdkwVar, zzdhy zzdhyVar, zzdbk zzdbkVar, zzcdp zzcdpVar) {
        super(zzcwgVar);
        this.zzl = false;
        this.zzc = zzcjkVar;
        this.zze = context;
        this.zzd = i;
        this.zzf = zzctoVar;
        this.zzg = zzdkwVar;
        this.zzh = zzdhyVar;
        this.zzi = zzdbkVar;
        this.zzj = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzfk)).booleanValue();
        this.zzk = zzcdpVar;
    }

    public final int zza() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzcwh
    public final void zzb() {
        super.zzb();
        zzcjk zzcjkVar = this.zzc;
        if (zzcjkVar != null) {
            zzcjkVar.destroy();
        }
    }

    public final void zzc(zzbad zzbadVar) {
        zzcjk zzcjkVar = this.zzc;
        if (zzcjkVar != null) {
            zzcjkVar.zzai(zzbadVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v14, types: [android.content.Context] */
    public final void zzd(Activity activity, zzbaq zzbaqVar, boolean z) {
        zzcjk zzcjkVar;
        zzfgm zzD;
        Activity activity2 = activity;
        if (activity == null) {
            activity2 = this.zze;
        }
        if (this.zzj) {
            this.zzh.zzb();
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzaB)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzp();
            if (com.google.android.gms.ads.internal.util.zzt.zzF(activity2)) {
                zzcec.zzj(new ObfuscatedString(new long[]{5289743636135874167L, -5467181280707364628L, -3581297842149912584L, 3906331836068263858L, 4924102845435192262L, -7313207076433102614L, 7649796599870753395L, 3750539746915349596L, -7847581243262626899L, 5100897085299858264L, -3890786162263271943L, -857005233805327896L, -2475431058734052629L, -2826484348761085067L, -4153049037417555207L, -7452598979586062744L, 8408355858794263034L, -2402782167165031068L, -485233805010181569L, 7916405216245938126L, -974349344219948731L, -5665205638484626768L, -1380737456339937367L, 2096543927594650077L, 2460703374192184120L, 2408962976895620256L, 1068304634379861736L, -8888362888938431942L}).toString());
                this.zzi.zzb();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzaC)).booleanValue()) {
                    new zzfrc(activity2.getApplicationContext(), com.google.android.gms.ads.internal.zzt.zzt().zzb()).zza(this.zza.zzb.zzb.zzb);
                    return;
                }
                return;
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzll)).booleanValue() && (zzcjkVar = this.zzc) != null && (zzD = zzcjkVar.zzD()) != null && zzD.zzar && zzD.zzas != this.zzk.zzb()) {
            zzcec.zzj(new ObfuscatedString(new long[]{698420626472156346L, -6423265829178445956L, -7760359298464975702L, 3711508559143451897L, 5130637187499953387L, -5455310479720108512L, 7333048143736935701L}).toString());
            this.zzi.zza(zzfij.zzd(12, new ObfuscatedString(new long[]{-9134491754763915983L, 484661757169374443L, -3742806880781233094L, -6681675646304246205L, 2083849098461935068L, 683620661579624609L}).toString(), null));
            return;
        }
        if (this.zzl) {
            zzcec.zzj(new ObfuscatedString(new long[]{7705026513215264039L, 6534371977025082922L, -3772441488317942463L, 6291711499218749613L, -3660673521659197829L, 3088456437309892773L, 856893236105930984L}).toString());
            this.zzi.zza(zzfij.zzd(10, null, null));
        }
        if (!this.zzl) {
            try {
                this.zzg.zza(z, activity2, this.zzi);
                if (this.zzj) {
                    this.zzh.zza();
                }
                this.zzl = true;
            } catch (zzdkv e) {
                this.zzi.zzc(e);
            }
        }
    }

    public final void zze(long j, int i) {
        this.zzf.zza(j, i);
    }
}
