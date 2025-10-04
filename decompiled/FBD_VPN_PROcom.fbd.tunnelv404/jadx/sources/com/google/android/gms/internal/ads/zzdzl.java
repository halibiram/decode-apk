package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.panda912.muddy.ObfuscatedString;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzdzl implements com.google.android.gms.ads.internal.overlay.zzp, zzckw {
    private final Context zza;
    private final zzcei zzb;
    private zzdzd zzc;
    private zzcjk zzd;
    private boolean zze;
    private boolean zzf;
    private long zzg;

    @Nullable
    private com.google.android.gms.ads.internal.client.zzda zzh;
    private boolean zzi;

    public zzdzl(Context context, zzcei zzceiVar) {
        this.zza = context;
        this.zzb = zzceiVar;
    }

    private final synchronized boolean zzl(com.google.android.gms.ads.internal.client.zzda zzdaVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziN)).booleanValue()) {
            zzcec.zzj(new ObfuscatedString(new long[]{-3333372196330950975L, -343982324183656252L, 6815702862290713359L, -8753283109773250794L, -1552646063100026340L, -2759836000353843291L}).toString());
            try {
                zzdaVar.zze(zzfij.zzd(16, null, null));
            } catch (RemoteException unused) {
            }
            return false;
        }
        if (this.zzc == null) {
            zzcec.zzj(new ObfuscatedString(new long[]{6514436826554937373L, 5060251518934122453L, 99139528162594650L, -934094043707968510L, 3795546393316418850L, -6804395933624815321L}).toString());
            try {
                com.google.android.gms.ads.internal.zzt.zzo().zzw(new NullPointerException(new ObfuscatedString(new long[]{5865740093852808458L, 6306703861646648590L, 2447923332989950383L, 3298323438732122130L}).toString()), new ObfuscatedString(new long[]{-8891299599708833218L, -7863273622030074290L, 1258718961372730700L, 1230001716296580811L}).toString());
                zzdaVar.zze(zzfij.zzd(16, null, null));
            } catch (RemoteException unused2) {
            }
            return false;
        }
        if (!this.zze && !this.zzf) {
            if (com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis() >= this.zzg + ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziQ)).intValue()) {
                return true;
            }
        }
        zzcec.zzj(new ObfuscatedString(new long[]{5161198549597159535L, 9134619686291840341L, -4894285960621164207L, -741848254650233057L, 7648496165741701433L, -5227963386932798088L, 8609583478112859564L, 6973542600850525129L, -2434228698257134859L}).toString());
        try {
            zzdaVar.zze(zzfij.zzd(19, null, null));
        } catch (RemoteException unused3) {
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzckw
    public final synchronized void zza(boolean z, int i, String str, String str2) {
        if (z) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{5717696886681563578L, -1267838539899064027L, -1914941974783477246L, -4797143498454361923L}).toString());
            this.zze = true;
            zzk(new ObfuscatedString(new long[]{-8349719020517912682L}).toString());
            return;
        }
        zzcec.zzj(new ObfuscatedString(new long[]{5837477788491370089L, 8848774628812593133L, -4292835228102719043L, 5617444930734055527L, 4303779307500378643L}).toString());
        try {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(new Exception(new ObfuscatedString(new long[]{-8693194654440312707L, 3143235085610232269L, 4421290142329319399L, -7091905383398280857L, -3057188731564802697L}).toString() + i + new ObfuscatedString(new long[]{1402412470951398851L, -3460512055567967202L, 4287574873702169699L}).toString() + str + new ObfuscatedString(new long[]{-474833835351734628L, -872882848518632191L, 8575010701594506916L}).toString() + str2), new ObfuscatedString(new long[]{910773872440660126L, 474689023099995275L, -2517774441264630417L, 563768351990938454L, 1561279439826264639L, -8988731003596367685L}).toString());
            com.google.android.gms.ads.internal.client.zzda zzdaVar = this.zzh;
            if (zzdaVar != null) {
                zzdaVar.zze(zzfij.zzd(17, null, null));
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{1087194494048900907L, 5164967083729796609L, -259672174939412026L, 1075809679125391752L, 3497940619644926209L, 3200875254436961324L}).toString());
        }
        this.zzi = true;
        this.zzd.destroy();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final synchronized void zzbA() {
        this.zzf = true;
        zzk(new ObfuscatedString(new long[]{-1273306081108759325L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzbC() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final synchronized void zzbD(int i) {
        this.zzd.destroy();
        if (!this.zzi) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{8683638332315497012L, 2095992665772392546L, -5605616651330763210L, -2619093890140597718L}).toString());
            com.google.android.gms.ads.internal.client.zzda zzdaVar = this.zzh;
            if (zzdaVar != null) {
                try {
                    zzdaVar.zze(null);
                } catch (RemoteException unused) {
                }
            }
        }
        this.zzf = false;
        this.zze = false;
        this.zzg = 0L;
        this.zzi = false;
        this.zzh = null;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzbP() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzbt() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzbz() {
    }

    @Nullable
    public final Activity zzg() {
        zzcjk zzcjkVar = this.zzd;
        if (zzcjkVar != null && !zzcjkVar.zzaB()) {
            return this.zzd.zzi();
        }
        return null;
    }

    public final void zzh(zzdzd zzdzdVar) {
        this.zzc = zzdzdVar;
    }

    public final /* synthetic */ void zzi(String str) {
        JSONObject zze = this.zzc.zze();
        if (!TextUtils.isEmpty(str)) {
            try {
                zze.put(new ObfuscatedString(new long[]{842790728631173613L, 961355980590952288L, -2973986828441863627L}).toString(), str);
            } catch (JSONException unused) {
            }
        }
        this.zzd.zzb(new ObfuscatedString(new long[]{2884631840214853775L, -3434503281193441497L, -5275748662955032782L, -8762433072603123760L}).toString(), zze.toString());
    }

    public final synchronized void zzj(com.google.android.gms.ads.internal.client.zzda zzdaVar, zzbnz zzbnzVar, zzbns zzbnsVar) {
        if (!zzl(zzdaVar)) {
            return;
        }
        try {
            com.google.android.gms.ads.internal.zzt.zzz();
            zzcjk zza = zzcjx.zza(this.zza, zzcla.zza(), new ObfuscatedString(new long[]{-7296935603470228197L}).toString(), false, false, null, null, this.zzb, null, null, null, zzbbp.zza(), null, null, null, null);
            this.zzd = zza;
            zzcky zzN = zza.zzN();
            if (zzN == null) {
                zzcec.zzj(new ObfuscatedString(new long[]{-4067592976043574605L, 4759947863732169448L, 1967706450111962978L, 3134340015648893091L, 727860556940914298L, -8477685944766872778L, -5502070495764873845L}).toString());
                try {
                    com.google.android.gms.ads.internal.zzt.zzo().zzw(new NullPointerException(new ObfuscatedString(new long[]{-591972201995659635L, -5791292514785687926L, 2164515379445254680L, -3886976379749871680L, 112021707559090309L, 645288732791066241L, 9195031774390398616L}).toString()), new ObfuscatedString(new long[]{-6828467394788847672L, -1843233737645352447L, 4320913674353565532L, -778563651335042476L, 4637290461432616171L}).toString());
                    zzdaVar.zze(zzfij.zzd(17, new ObfuscatedString(new long[]{3925155180551109039L, -2380791413526518089L, 2935119503001570555L, 8289787498504967793L, -3734498284605558721L, 811167502989358594L, -6777577997789963379L}).toString(), null));
                    return;
                } catch (RemoteException e) {
                    com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{2402167669059159869L, -8109131467088455289L, 3693962516351637133L, -3339351279487815748L, 6703680057878593925L}).toString());
                    return;
                }
            }
            this.zzh = zzdaVar;
            zzN.zzN(null, null, null, null, null, false, null, null, null, null, null, null, null, null, zzbnzVar, null, new zzbny(this.zza), zzbnsVar, null);
            zzN.zzB(this);
            this.zzd.loadUrl((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziO));
            com.google.android.gms.ads.internal.zzt.zzi();
            com.google.android.gms.ads.internal.overlay.zzn.zza(this.zza, new AdOverlayInfoParcel(this, this.zzd, 1, this.zzb), true);
            this.zzg = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis();
        } catch (zzcjw e2) {
            zzcec.zzk(new ObfuscatedString(new long[]{-5083502267075348319L, -8250549850295020282L, -6891810346294228753L, -8771946395616931873L, 2001655397283016082L, -1092493754166736571L, -8480756144913723780L}).toString(), e2);
            try {
                com.google.android.gms.ads.internal.zzt.zzo().zzw(e2, new ObfuscatedString(new long[]{-5524760468989286383L, 2356622478849022556L, -4274572268231389348L, 3645092739535106927L, -986868390030546014L}).toString());
                zzdaVar.zze(zzfij.zzd(17, new ObfuscatedString(new long[]{-4191732906998320940L, -202221492981070158L, -4125774451088122678L, 2935208379129498064L, 2090309969359540086L, -1891951881492966641L, 3306610904526532015L}).toString(), null));
            } catch (RemoteException e3) {
                com.google.android.gms.ads.internal.zzt.zzo().zzw(e3, new ObfuscatedString(new long[]{4586793260775900166L, 6083569856904041427L, -3637483802275098521L, 3560171213749655386L, 6054594105199541077L}).toString());
            }
        }
    }

    public final synchronized void zzk(final String str) {
        if (this.zze && this.zzf) {
            zzcep.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdzk
                @Override // java.lang.Runnable
                public final void run() {
                    zzdzl.this.zzi(str);
                }
            });
        }
    }
}
