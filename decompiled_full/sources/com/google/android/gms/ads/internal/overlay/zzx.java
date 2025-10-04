package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzcep;
import com.google.android.gms.internal.ads.zzcjk;
import com.google.android.gms.internal.ads.zzfvb;
import com.google.android.gms.internal.ads.zzfvc;
import com.google.android.gms.internal.ads.zzfvd;
import com.google.android.gms.internal.ads.zzfve;
import com.google.android.gms.internal.ads.zzfvn;
import com.google.android.gms.internal.ads.zzfvp;
import com.google.android.gms.internal.ads.zzfvq;
import com.google.android.gms.internal.ads.zzfvr;
import com.google.android.gms.internal.ads.zzfvs;
import com.google.android.gms.internal.ads.zzfwh;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzx {
    private zzfvq zzf;

    @Nullable
    private zzcjk zzc = null;
    private boolean zze = false;

    @Nullable
    private String zza = null;

    @Nullable
    private zzfvd zzd = null;

    @Nullable
    private String zzb = null;

    private final zzfvs zzl() {
        zzfvr zzc = zzfvs.zzc();
        if (((Boolean) zzba.zzc().zza(zzbgc.zzkR)).booleanValue() && !TextUtils.isEmpty(this.zzb)) {
            zzc.zza(this.zzb);
        } else {
            String str = this.zza;
            if (str != null) {
                zzc.zzb(str);
            } else {
                zzf(new ObfuscatedString(new long[]{1672144742145858692L, 5589447773807723524L, -7897950948057888842L, 905600168368302839L, -126414337401319966L, 7394867196300038452L}).toString(), new ObfuscatedString(new long[]{7732067199342681367L, -1896790036508992745L, 683297866423320633L}).toString());
            }
        }
        return zzc.zzc();
    }

    private final void zzm() {
        if (this.zzf == null) {
            this.zzf = new zzw(this);
        }
    }

    public final synchronized void zza(@Nullable zzcjk zzcjkVar, Context context) {
        this.zzc = zzcjkVar;
        if (!zzk(context)) {
            zzf(new ObfuscatedString(new long[]{4936787908286482164L, -3718514474557774326L, -5632002409933787705L}).toString(), new ObfuscatedString(new long[]{3258258704064606465L, 5656154803017503877L, -124016109860181328L, 8044276180222439308L}).toString());
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(new ObfuscatedString(new long[]{2551082436530231769L, -3810588876824380859L}).toString(), new ObfuscatedString(new long[]{-2067263227468754203L, -1457917103246164298L, -124453509737724001L}).toString());
        zze(new ObfuscatedString(new long[]{9203479243345727549L, -8284278437869688727L, -1795031581966983594L, 159882951108371996L}).toString(), hashMap);
    }

    public final void zzb() {
        zzfvd zzfvdVar;
        if (this.zze && (zzfvdVar = this.zzd) != null) {
            zzfvdVar.zza(zzl(), this.zzf);
            zzd(new ObfuscatedString(new long[]{-9013339371338715076L, -5236985033403586801L, 2936844295160996273L, 3876343845988962717L}).toString());
        } else {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{7677747763077169133L, -5190161777352556076L, 5928192555816002532L, -8193658279316921864L, -6783057681491897563L}).toString());
        }
    }

    public final void zzc() {
        zzfvd zzfvdVar;
        if (this.zze && (zzfvdVar = this.zzd) != null) {
            zzfvb zzc = zzfvc.zzc();
            if (((Boolean) zzba.zzc().zza(zzbgc.zzkR)).booleanValue() && !TextUtils.isEmpty(this.zzb)) {
                zzc.zza(this.zzb);
            } else {
                String str = this.zza;
                if (str != null) {
                    zzc.zzb(str);
                } else {
                    zzf(new ObfuscatedString(new long[]{776609998834552739L, 2918813108429675724L, -2048917721180118176L, -8663402716375845504L, 5271096337045687769L, 5317356550490604584L}).toString(), new ObfuscatedString(new long[]{-1775935106919625315L, -2845113902231145796L, 3432100813436618902L}).toString());
                }
            }
            zzfvdVar.zzb(zzc.zzc(), this.zzf);
            return;
        }
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-3093533137436301129L, -6502640291584888465L, -5091436322402332503L, -3801209052549493952L, -5495194514712611465L}).toString());
    }

    @VisibleForTesting
    public final void zzd(String str) {
        zze(str, new HashMap());
    }

    @VisibleForTesting
    public final void zze(final String str, final Map map) {
        zzcep.zze.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.overlay.zzv
            @Override // java.lang.Runnable
            public final void run() {
                zzx.this.zzh(str, map);
            }
        });
    }

    @VisibleForTesting
    public final void zzf(String str, String str2) {
        com.google.android.gms.ads.internal.util.zze.zza(str);
        if (this.zzc != null) {
            HashMap hashMap = new HashMap();
            hashMap.put(new ObfuscatedString(new long[]{-1023530617771199401L, 7466474862416253988L}).toString(), str);
            hashMap.put(new ObfuscatedString(new long[]{-4599813395723079383L, 736776376207261708L}).toString(), str2);
            zze(new ObfuscatedString(new long[]{7604874155571570487L, -3998496908060794217L}).toString(), hashMap);
        }
    }

    public final void zzg() {
        zzfvd zzfvdVar;
        if (this.zze && (zzfvdVar = this.zzd) != null) {
            zzfvdVar.zzc(zzl(), this.zzf);
            zzd(new ObfuscatedString(new long[]{-2622034017633561949L, 7203282301954605923L, -9090208456325008707L, -6231842717673301634L}).toString());
        } else {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-2687687269771379795L, 7234521816562166482L, -3996732741875915456L, -865685800647116360L, 8848385355022277973L}).toString());
        }
    }

    public final /* synthetic */ void zzh(String str, Map map) {
        zzcjk zzcjkVar = this.zzc;
        if (zzcjkVar != null) {
            zzcjkVar.zzd(str, map);
        }
    }

    @VisibleForTesting
    public final void zzi(zzfvp zzfvpVar) {
        if (!TextUtils.isEmpty(zzfvpVar.zzb())) {
            if (!((Boolean) zzba.zzc().zza(zzbgc.zzkR)).booleanValue()) {
                this.zza = zzfvpVar.zzb();
            }
        }
        switch (zzfvpVar.zza()) {
            case 8152:
                zzd(new ObfuscatedString(new long[]{-3207711283535477167L, 9180528279118250548L, -5390705830405725582L, -4963830431638153151L}).toString());
                return;
            case 8153:
                zzd(new ObfuscatedString(new long[]{3266648337483694376L, 1611811737701040208L, -2395536809821824722L, -5165400872069193387L}).toString());
                return;
            case 8154:
            case 8156:
            case 8158:
            case 8159:
            default:
                return;
            case 8155:
                zzd(new ObfuscatedString(new long[]{2895781474391098449L, 1785106242285162485L, -1095062987507878773L, 4240104656739921243L}).toString());
                return;
            case 8157:
                this.zza = null;
                this.zzb = null;
                this.zze = false;
                return;
            case 8160:
            case 8161:
            case 8162:
                HashMap hashMap = new HashMap();
                hashMap.put(new ObfuscatedString(new long[]{6277800295019198665L, 7442178961422784640L}).toString(), String.valueOf(zzfvpVar.zza()));
                zze(new ObfuscatedString(new long[]{8302552039650145762L, -1303456482798100634L, -2358245236084799660L, 3328474170789589085L}).toString(), hashMap);
                return;
        }
    }

    public final void zzj(@Nullable zzcjk zzcjkVar, @Nullable zzfvn zzfvnVar) {
        if (zzcjkVar == null) {
            zzf(new ObfuscatedString(new long[]{-2305866807763428718L, -5986645062985738251L, -863648931119589397L, 7498510647830641027L}).toString(), new ObfuscatedString(new long[]{-6883473540530799646L, -4474160953051565431L, -8949335371498224516L}).toString());
            return;
        }
        this.zzc = zzcjkVar;
        if (!this.zze && !zzk(zzcjkVar.getContext())) {
            zzf(new ObfuscatedString(new long[]{-6405135450894405770L, 7001199727619004230L, 2266706189278830658L, 6922116057856954789L}).toString(), new ObfuscatedString(new long[]{4541646266039979567L, -7459561675871925175L, -7889693251214258970L, 1817723787337975796L}).toString());
            return;
        }
        if (((Boolean) zzba.zzc().zza(zzbgc.zzkR)).booleanValue()) {
            this.zzb = zzfvnVar.zzg();
        }
        zzm();
        zzfvd zzfvdVar = this.zzd;
        if (zzfvdVar != null) {
            zzfvdVar.zzd(zzfvnVar, this.zzf);
        }
    }

    public final synchronized boolean zzk(Context context) {
        if (!zzfwh.zza(context)) {
            return false;
        }
        try {
            this.zzd = zzfve.zza(context);
        } catch (NullPointerException e) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{7758907864598441491L, 4150632690108253556L, 4516174994765727001L, 8109080093329649699L, -519140726579588519L, -7527129153858762810L}).toString());
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{4901703141023968725L, 3268169847020784634L, 8941213001210066677L, 8452741781845551688L, -6202845481369289868L, -6095927501729852292L, 377353296808536603L, -2177226855843735395L}).toString());
        }
        if (this.zzd == null) {
            this.zze = false;
            return false;
        }
        zzm();
        this.zze = true;
        return true;
    }
}
