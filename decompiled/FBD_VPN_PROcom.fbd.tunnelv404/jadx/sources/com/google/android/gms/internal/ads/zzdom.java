package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.view.View;
import com.panda912.muddy.ObfuscatedString;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzdom {
    private final zzdtk zza;
    private final zzdrz zzb;
    private final zzctl zzc;
    private final zzdni zzd;

    public zzdom(zzdtk zzdtkVar, zzdrz zzdrzVar, zzctl zzctlVar, zzdni zzdniVar) {
        this.zza = zzdtkVar;
        this.zzb = zzdrzVar;
        this.zzc = zzctlVar;
        this.zzd = zzdniVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final View zza() {
        zzcjk zza = this.zza.zza(com.google.android.gms.ads.internal.client.zzq.zzc(), null, null);
        ((View) zza).setVisibility(8);
        zza.zzae(new ObfuscatedString(new long[]{7281988073205014559L, 3873512506388562184L, 6753130123454468869L, -7206955829986880084L}).toString(), new zzbng() { // from class: com.google.android.gms.internal.ads.zzdoh
            @Override // com.google.android.gms.internal.ads.zzbng
            public final void zza(Object obj, Map map) {
                zzdom.this.zzb((zzcjk) obj, map);
            }
        });
        zza.zzae(new ObfuscatedString(new long[]{3385110126589952777L, -8350773022935700408L}).toString(), new zzbng() { // from class: com.google.android.gms.internal.ads.zzdoi
            @Override // com.google.android.gms.internal.ads.zzbng
            public final void zza(Object obj, Map map) {
                zzdom.this.zzc((zzcjk) obj, map);
            }
        });
        this.zzb.zzj(new WeakReference(zza), new ObfuscatedString(new long[]{7943904963878850849L, -3052616614610524983L, 5609878941820389256L}).toString(), new zzbng() { // from class: com.google.android.gms.internal.ads.zzdoj
            @Override // com.google.android.gms.internal.ads.zzbng
            public final void zza(Object obj, final Map map) {
                zzcjk zzcjkVar = (zzcjk) obj;
                zzcky zzN = zzcjkVar.zzN();
                final zzdom zzdomVar = zzdom.this;
                zzN.zzB(new zzckw() { // from class: com.google.android.gms.internal.ads.zzdog
                    @Override // com.google.android.gms.internal.ads.zzckw
                    public final void zza(boolean z, int i, String str, String str2) {
                        zzdom.this.zzd(map, z, i, str, str2);
                    }
                });
                String str = (String) map.get(new ObfuscatedString(new long[]{-9043712484089762684L, 598780065716194272L, 4536347824066158934L}).toString());
                String str2 = (String) map.get(new ObfuscatedString(new long[]{-3188833485199662574L, -3275253148413515907L}).toString());
                if (TextUtils.isEmpty(str2)) {
                    zzcjkVar.loadData(str, new ObfuscatedString(new long[]{5352021207189051008L, -7396408109357395813L, 385693774337873416L}).toString(), new ObfuscatedString(new long[]{9065474824863189242L, 6814066929489209205L}).toString());
                } else {
                    zzcjkVar.loadDataWithBaseURL(str2, str, new ObfuscatedString(new long[]{-3359955623926382536L, -2436663835329818554L, -6530126060322461618L}).toString(), new ObfuscatedString(new long[]{7484274206639795650L, 3139014605542185473L}).toString(), null);
                }
            }
        });
        this.zzb.zzj(new WeakReference(zza), new ObfuscatedString(new long[]{-5203951338193791035L, 568224590919626514L, 7574246973455392529L}).toString(), new zzbng() { // from class: com.google.android.gms.internal.ads.zzdok
            @Override // com.google.android.gms.internal.ads.zzbng
            public final void zza(Object obj, Map map) {
                zzdom.this.zze((zzcjk) obj, map);
            }
        });
        this.zzb.zzj(new WeakReference(zza), new ObfuscatedString(new long[]{7767609669834117167L, -8857245003633985608L, 2596910982891814103L}).toString(), new zzbng() { // from class: com.google.android.gms.internal.ads.zzdol
            @Override // com.google.android.gms.internal.ads.zzbng
            public final void zza(Object obj, Map map) {
                zzdom.this.zzf((zzcjk) obj, map);
            }
        });
        return (View) zza;
    }

    public final /* synthetic */ void zzb(zzcjk zzcjkVar, Map map) {
        this.zzb.zzg(new ObfuscatedString(new long[]{-5436300172989696104L, 4628693399273689570L, 400779883256918429L, 5362415939127936015L}).toString(), map);
    }

    public final /* synthetic */ void zzc(zzcjk zzcjkVar, Map map) {
        this.zzd.zzg();
    }

    public final /* synthetic */ void zzd(Map map, boolean z, int i, String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put(new ObfuscatedString(new long[]{5452611005680339060L, -4102912640830439135L, -3830963014073549816L}).toString(), new ObfuscatedString(new long[]{-231557185878037389L, 4691949194879347551L, -6309777137075869333L}).toString());
        hashMap.put(new ObfuscatedString(new long[]{5201739193010712100L, -6719667787860348476L}).toString(), (String) map.get(new ObfuscatedString(new long[]{-8893222173608272682L, 3090882829749552619L}).toString()));
        this.zzb.zzg(new ObfuscatedString(new long[]{2961354855922155015L, 5479934891701849999L, -6988512697174548979L, -6473158647001396630L}).toString(), hashMap);
    }

    public final /* synthetic */ void zze(zzcjk zzcjkVar, Map map) {
        zzcec.zzi(new ObfuscatedString(new long[]{-1615796811886360768L, 8498997605564532987L, -8354003682207086705L, 21689329488722666L, -3095323625485508460L}).toString());
        zzcjkVar.zzF().setVisibility(0);
        this.zzc.zze(true);
    }

    public final /* synthetic */ void zzf(zzcjk zzcjkVar, Map map) {
        zzcec.zzi(new ObfuscatedString(new long[]{-9049607818283567887L, -5675135630176154L, 5317377924328661083L, 1434919139096842103L, -7156373432395820807L}).toString());
        zzcjkVar.zzF().setVisibility(8);
        this.zzc.zze(false);
    }
}
