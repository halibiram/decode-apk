package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzcpv extends com.google.android.gms.ads.internal.client.zzcn {
    private final Context zza;
    private final zzcei zzb;
    private final zzdua zzc;
    private final zzeip zzd;
    private final zzepa zze;
    private final zzdyi zzf;
    private final zzcch zzg;
    private final zzduf zzh;
    private final zzdzd zzi;
    private final zzbiu zzj;
    private final zzfnc zzk;
    private final zzfid zzl;
    private final zzbgd zzm;
    private boolean zzn = false;

    public zzcpv(Context context, zzcei zzceiVar, zzdua zzduaVar, zzeip zzeipVar, zzepa zzepaVar, zzdyi zzdyiVar, zzcch zzcchVar, zzduf zzdufVar, zzdzd zzdzdVar, zzbiu zzbiuVar, zzfnc zzfncVar, zzfid zzfidVar, zzbgd zzbgdVar) {
        this.zza = context;
        this.zzb = zzceiVar;
        this.zzc = zzduaVar;
        this.zzd = zzeipVar;
        this.zze = zzepaVar;
        this.zzf = zzdyiVar;
        this.zzg = zzcchVar;
        this.zzh = zzdufVar;
        this.zzi = zzdzdVar;
        this.zzj = zzbiuVar;
        this.zzk = zzfncVar;
        this.zzl = zzfidVar;
        this.zzm = zzbgdVar;
    }

    @VisibleForTesting
    public final void zzb() {
        if (com.google.android.gms.ads.internal.zzt.zzo().zzi().zzP()) {
            if (!com.google.android.gms.ads.internal.zzt.zzs().zzj(this.zza, com.google.android.gms.ads.internal.zzt.zzo().zzi().zzl(), this.zzb.zza)) {
                com.google.android.gms.ads.internal.zzt.zzo().zzi().zzB(false);
                com.google.android.gms.ads.internal.zzt.zzo().zzi().zzA(new ObfuscatedString(new long[]{7753228710044233553L}).toString());
            }
        }
    }

    @VisibleForTesting
    public final void zzc(Runnable runnable) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{6984518925746722011L, 6282314818360737055L, 4502144475593409494L, -5857745002963267620L, -7223666955035304925L, 1689984666961665435L, -2516117361319566284L}).toString());
        Map zze = com.google.android.gms.ads.internal.zzt.zzo().zzi().zzh().zze();
        if (!zze.isEmpty()) {
            if (runnable != null) {
                try {
                    runnable.run();
                } catch (Throwable th) {
                    zzcec.zzk(new ObfuscatedString(new long[]{5922457882254384757L, 9014419037435539607L, 6883300434894073698L, 1860523214724703733L, 4840763390253810744L, -8956054759626749268L}).toString(), th);
                    return;
                }
            }
            if (this.zzc.zzd()) {
                HashMap hashMap = new HashMap();
                Iterator it = zze.values().iterator();
                while (it.hasNext()) {
                    for (zzbso zzbsoVar : ((zzbsp) it.next()).zza) {
                        String str = zzbsoVar.zzk;
                        for (String str2 : zzbsoVar.zzc) {
                            if (!hashMap.containsKey(str2)) {
                                hashMap.put(str2, new ArrayList());
                            }
                            if (str != null) {
                                ((List) hashMap.get(str2)).add(str);
                            }
                        }
                    }
                }
                JSONObject jSONObject = new JSONObject();
                for (Map.Entry entry : hashMap.entrySet()) {
                    String str3 = (String) entry.getKey();
                    try {
                        zzeiq zza = this.zzd.zza(str3, jSONObject);
                        if (zza != null) {
                            zzfif zzfifVar = (zzfif) zza.zzb;
                            if (!zzfifVar.zzC() && zzfifVar.zzB()) {
                                zzfifVar.zzj(this.zza, (zzekk) zza.zzc, (List) entry.getValue());
                                zzcec.zze(new ObfuscatedString(new long[]{7976690559377202551L, -3040280605396773323L, -6758662630531667116L, 444533424423194690L, -859277458454638995L, 7607708378311652690L, -969023481087243534L}).toString() + str3);
                            }
                        }
                    } catch (zzfho e) {
                        zzcec.zzk(new ObfuscatedString(new long[]{5511453798985124858L, 2965981715819351466L, 8005772915025762000L, 2168552584437140225L, 3197043503865431684L, -5347652183742002886L, -815051839461375545L, -2776137510183245936L}).toString() + str3 + new ObfuscatedString(new long[]{-1947761976880066623L, 7460372970961203029L}).toString(), e);
                    }
                }
            }
        }
    }

    public final /* synthetic */ void zzd() {
        zzfim.zzb(this.zza, true);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final synchronized float zze() {
        return com.google.android.gms.ads.internal.zzt.zzr().zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final String zzf() {
        return this.zzb.zza;
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final List zzg() {
        return this.zzf.zzg();
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzh(String str) {
        this.zze.zzg(str);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzi() {
        this.zzf.zzl();
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzj(boolean z) {
        try {
            zzfuf.zzi(this.zza).zzn(z);
        } catch (IOException e) {
            throw new RemoteException(e.getMessage());
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final synchronized void zzk() {
        if (this.zzn) {
            zzcec.zzj(new ObfuscatedString(new long[]{3067803202631474574L, 2582421694645282135L, -8031755347000826463L, -665321968841023434L, -2266440098017103758L, -6191515874785752008L}).toString());
            return;
        }
        zzbgc.zza(this.zza);
        this.zzm.zza();
        com.google.android.gms.ads.internal.zzt.zzo().zzu(this.zza, this.zzb);
        com.google.android.gms.ads.internal.zzt.zzc().zzi(this.zza);
        this.zzn = true;
        this.zzf.zzr();
        this.zze.zze();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdT)).booleanValue()) {
            this.zzh.zzc();
        }
        this.zzi.zzg();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjc)).booleanValue()) {
            zzcep.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcpq
                @Override // java.lang.Runnable
                public final void run() {
                    zzcpv.this.zzb();
                }
            });
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkt)).booleanValue()) {
            zzcep.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcps
                @Override // java.lang.Runnable
                public final void run() {
                    zzcpv.this.zzw();
                }
            });
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcG)).booleanValue()) {
            zzcep.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcpr
                @Override // java.lang.Runnable
                public final void run() {
                    zzcpv.this.zzd();
                }
            });
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzl(@Nullable String str, IObjectWrapper iObjectWrapper) {
        String str2;
        Runnable runnable;
        zzbgc.zza(this.zza);
        boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdX)).booleanValue();
        boolean z = true;
        String obfuscatedString = new ObfuscatedString(new long[]{-7936099951977062050L}).toString();
        if (booleanValue) {
            try {
                com.google.android.gms.ads.internal.zzt.zzp();
                obfuscatedString = com.google.android.gms.ads.internal.util.zzt.zzp(this.zza);
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-4067590844342134080L, 9192069702818335277L, 715133343356295699L, -2950316112064608555L, -765217027613430493L, 7739689407259268036L}).toString());
            }
        }
        if (true == TextUtils.isEmpty(obfuscatedString)) {
            str2 = str;
        } else {
            str2 = obfuscatedString;
        }
        if (!TextUtils.isEmpty(str2)) {
            boolean booleanValue2 = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdR)).booleanValue();
            zzbfu zzbfuVar = zzbgc.zzaQ;
            boolean booleanValue3 = booleanValue2 | ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar)).booleanValue();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar)).booleanValue()) {
                final Runnable runnable2 = (Runnable) ObjectWrapper.unwrap(iObjectWrapper);
                runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzcpt
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzgey zzgeyVar = zzcep.zze;
                        final zzcpv zzcpvVar = zzcpv.this;
                        final Runnable runnable3 = runnable2;
                        zzgeyVar.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcpu
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzcpv.this.zzc(runnable3);
                            }
                        });
                    }
                };
            } else {
                runnable = null;
                z = booleanValue3;
            }
            Runnable runnable3 = runnable;
            if (z) {
                com.google.android.gms.ads.internal.zzt.zza().zza(this.zza, this.zzb, str2, runnable3, this.zzk);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzm(com.google.android.gms.ads.internal.client.zzda zzdaVar) {
        this.zzi.zzh(zzdaVar, zzdzc.zzb);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzn(IObjectWrapper iObjectWrapper, String str) {
        if (iObjectWrapper == null) {
            zzcec.zzg(new ObfuscatedString(new long[]{7561996377740740636L, 3891292229123087092L, 6780337948184792628L, -6251357108325240370L, 5617457406429968721L, -3197189068227150309L, -6301138902061321701L, 3280034771408808332L}).toString());
            return;
        }
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        if (context == null) {
            zzcec.zzg(new ObfuscatedString(new long[]{333772534528697249L, -4128099096298723852L, -4763858097626261972L, 7274645807064182695L, 6212547763527406950L, 2050322655443365004L, 4150935667300272733L}).toString());
            return;
        }
        com.google.android.gms.ads.internal.util.zzau zzauVar = new com.google.android.gms.ads.internal.util.zzau(context);
        zzauVar.zzn(str);
        zzauVar.zzo(this.zzb.zza);
        zzauVar.zzr();
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzo(zzbsv zzbsvVar) {
        this.zzl.zzf(zzbsvVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final synchronized void zzp(boolean z) {
        com.google.android.gms.ads.internal.zzt.zzr().zzc(z);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final synchronized void zzq(float f) {
        com.google.android.gms.ads.internal.zzt.zzr().zzd(f);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final synchronized void zzr(String str) {
        zzbgc.zza(this.zza);
        if (!TextUtils.isEmpty(str)) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdR)).booleanValue()) {
                com.google.android.gms.ads.internal.zzt.zza().zza(this.zza, this.zzb, str, null, this.zzk);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzs(zzbpk zzbpkVar) {
        this.zzf.zzs(zzbpkVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzt(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjn)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzo().zzy(str);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzu(com.google.android.gms.ads.internal.client.zzff zzffVar) {
        this.zzg.zzn(this.zza, zzffVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final synchronized boolean zzv() {
        return com.google.android.gms.ads.internal.zzt.zzr().zze();
    }

    public final /* synthetic */ void zzw() {
        this.zzj.zza(new zzbyb());
    }
}
