package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzdqv {
    private final zzfhh zza;
    private final Executor zzb;
    private final zzdtk zzc;
    private final zzdsf zzd;
    private final Context zze;
    private final zzdwf zzf;
    private final zzflw zzg;
    private final zzfny zzh;
    private final zzehh zzi;

    public zzdqv(zzfhh zzfhhVar, Executor executor, zzdtk zzdtkVar, Context context, zzdwf zzdwfVar, zzflw zzflwVar, zzfny zzfnyVar, zzehh zzehhVar, zzdsf zzdsfVar) {
        this.zza = zzfhhVar;
        this.zzb = executor;
        this.zzc = zzdtkVar;
        this.zze = context;
        this.zzf = zzdwfVar;
        this.zzg = zzflwVar;
        this.zzh = zzfnyVar;
        this.zzi = zzehhVar;
        this.zzd = zzdsfVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void zzh(zzcjk zzcjkVar) {
        zzj(zzcjkVar);
        zzcjkVar.zzae(new ObfuscatedString(new long[]{-2148155223973945707L, 3033500402582469476L}).toString(), zzbnf.zzl);
        zzcjkVar.zzae(new ObfuscatedString(new long[]{9066722062309085952L, 2742487066368658348L, 2688410286306232585L}).toString(), zzbnf.zzm);
        zzcjkVar.zzae(new ObfuscatedString(new long[]{-6951620682930042651L, 3518033820929805051L, -763359935071805865L}).toString(), new zzchx());
        zzcjkVar.zzae(new ObfuscatedString(new long[]{1930178905730739750L, 754687763308770931L, 1637968073348385550L}).toString(), zzbnf.zzp);
        zzcjkVar.zzae(new ObfuscatedString(new long[]{2182361057535581706L, 9169931310366170701L, -2685506849128710338L}).toString(), zzbnf.zzn);
        zzcjkVar.zzae(new ObfuscatedString(new long[]{901206300832196185L, 7559602701238328733L}).toString(), zzbnf.zzg);
        zzcjkVar.zzae(new ObfuscatedString(new long[]{2401379769387680336L, 3871312499349959617L}).toString(), new zzbme(null, 0 == true ? 1 : 0));
        if (this.zza.zzb != null) {
            zzcjkVar.zzN().zzE(true);
            zzcjkVar.zzae(new ObfuscatedString(new long[]{-6069289655505949750L, 972803904449331654L}).toString(), new zzbnr(null, null, null, null, null, null));
        } else {
            zzcjkVar.zzN().zzE(false);
        }
        if (com.google.android.gms.ads.internal.zzt.zzn().zzp(zzcjkVar.getContext())) {
            zzcjkVar.zzae(new ObfuscatedString(new long[]{-2052045553357700952L, -8911789367539827863L, -1375121375074985251L}).toString(), new zzbnl(zzcjkVar.getContext()));
        }
    }

    private final void zzi(zzcjk zzcjkVar, zzcet zzcetVar) {
        if (this.zza.zza != null && zzcjkVar.zzq() != null) {
            zzcjkVar.zzq().zzs(this.zza.zza);
        }
        zzcetVar.zzb();
    }

    private static final void zzj(zzcjk zzcjkVar) {
        zzcjkVar.zzae(new ObfuscatedString(new long[]{-7820242822613969405L, -7020761089270156982L, -5078550720594214058L}).toString(), zzbnf.zzh);
        zzcjkVar.zzN().zzG(true);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdF)).booleanValue()) {
            zzcjkVar.zzae(new ObfuscatedString(new long[]{5538316661749022694L, 770747527477909914L, -6825207994614798072L, -1821992706068799280L}).toString(), zzbnf.zzs);
        }
        zzcjkVar.zzae(new ObfuscatedString(new long[]{-8163897685308559910L, 4327304997843693165L, -8644175802572426816L, 9019141491316905664L}).toString(), zzbnf.zzt);
    }

    public final ListenableFuture zza(final JSONObject jSONObject) {
        return zzgen.zzn(zzgen.zzn(zzgen.zzh(null), new zzgdu() { // from class: com.google.android.gms.internal.ads.zzdqm
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                return zzdqv.this.zze(obj);
            }
        }, this.zzb), new zzgdu() { // from class: com.google.android.gms.internal.ads.zzdql
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                return zzdqv.this.zzc(jSONObject, (zzcjk) obj);
            }
        }, this.zzb);
    }

    public final ListenableFuture zzb(final String str, final String str2, final zzfgm zzfgmVar, final zzfgp zzfgpVar, final com.google.android.gms.ads.internal.client.zzq zzqVar) {
        return zzgen.zzn(zzgen.zzh(null), new zzgdu() { // from class: com.google.android.gms.internal.ads.zzdqk
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                return zzdqv.this.zzd(zzqVar, zzfgmVar, zzfgpVar, str, str2, obj);
            }
        }, this.zzb);
    }

    public final /* synthetic */ ListenableFuture zzc(JSONObject jSONObject, final zzcjk zzcjkVar) {
        final zzcet zza = zzcet.zza(zzcjkVar);
        if (this.zza.zzb != null) {
            zzcjkVar.zzah(zzcla.zzd());
        } else {
            zzcjkVar.zzah(zzcla.zze());
        }
        zzcjkVar.zzN().zzB(new zzckw() { // from class: com.google.android.gms.internal.ads.zzdqn
            @Override // com.google.android.gms.internal.ads.zzckw
            public final void zza(boolean z, int i, String str, String str2) {
                zzdqv.this.zzf(zzcjkVar, zza, z, i, str, str2);
            }
        });
        zzcjkVar.zzl(new ObfuscatedString(new long[]{-142515124595423003L, -7083659964638785847L, 8710608228442464868L, -7800286042103107666L, -4244488439312829305L, 4568535686974853702L}).toString(), jSONObject);
        return zza;
    }

    public final /* synthetic */ ListenableFuture zzd(com.google.android.gms.ads.internal.client.zzq zzqVar, zzfgm zzfgmVar, zzfgp zzfgpVar, String str, String str2, Object obj) {
        final zzcjk zza = this.zzc.zza(zzqVar, zzfgmVar, zzfgpVar);
        final zzcet zza2 = zzcet.zza(zza);
        if (this.zza.zzb != null) {
            zzh(zza);
            zza.zzah(zzcla.zzd());
        } else {
            zzdsc zzb = this.zzd.zzb();
            zza.zzN().zzN(zzb, zzb, zzb, zzb, zzb, false, null, new com.google.android.gms.ads.internal.zzb(this.zze, null, null), null, null, this.zzi, this.zzh, this.zzf, this.zzg, null, zzb, null, null, null);
            zzj(zza);
        }
        zza.zzN().zzB(new zzckw() { // from class: com.google.android.gms.internal.ads.zzdqo
            @Override // com.google.android.gms.internal.ads.zzckw
            public final void zza(boolean z, int i, String str3, String str4) {
                zzdqv.this.zzg(zza, zza2, z, i, str3, str4);
            }
        });
        zza.zzac(str, str2, null);
        return zza2;
    }

    public final /* synthetic */ ListenableFuture zze(Object obj) {
        zzcjk zza = this.zzc.zza(com.google.android.gms.ads.internal.client.zzq.zzc(), null, null);
        final zzcet zza2 = zzcet.zza(zza);
        zzh(zza);
        zza.zzN().zzH(new zzckx() { // from class: com.google.android.gms.internal.ads.zzdqp
            @Override // com.google.android.gms.internal.ads.zzckx
            public final void zza() {
                zzcet.this.zzb();
            }
        });
        zza.loadUrl((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdE));
        return zza2;
    }

    public final /* synthetic */ void zzf(zzcjk zzcjkVar, zzcet zzcetVar, boolean z, int i, String str, String str2) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdP)).booleanValue()) {
            if (z) {
                zzi(zzcjkVar, zzcetVar);
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-2253714277737705245L, 138299008369118774L, 1872380048448955795L, -354133106898332958L, -7868144115120634583L, 2431086031241188705L, 2578787503830802772L, -4069224930961247860L}).toString());
            sb.append(i);
            sb.append(new ObfuscatedString(new long[]{9185373964467560445L, 5453175804547219114L, -4842641767535043010L}).toString());
            sb.append(str);
            zzcetVar.zzd(new zzeml(1, AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{3027755274006482278L, 4766270821981288813L, 53495358412594847L}), sb, str2)));
            return;
        }
        zzi(zzcjkVar, zzcetVar);
    }

    public final /* synthetic */ void zzg(zzcjk zzcjkVar, zzcet zzcetVar, boolean z, int i, String str, String str2) {
        if (z) {
            if (this.zza.zza != null && zzcjkVar.zzq() != null) {
                zzcjkVar.zzq().zzs(this.zza.zza);
            }
            zzcetVar.zzb();
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{2435888640489231908L, 6522013978259688044L, -5038892861568903391L, -1056726847207822678L, -8855039168640476760L, -5685747337723853891L, -1453869611536940177L}).toString());
        sb.append(i);
        sb.append(new ObfuscatedString(new long[]{-8347606674355680990L, 255528040073794237L, 6905557053465343683L}).toString());
        sb.append(str);
        zzcetVar.zzd(new zzeml(1, AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{1635819595889547564L, -8262200509547047088L, 1843552753885451683L}), sb, str2)));
    }
}
