package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.webkit.JavascriptInterface;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzckm {
    private final zzckn zza;
    private final zzckl zzb;

    public zzckm(zzckn zzcknVar, zzckl zzcklVar) {
        this.zzb = zzcklVar;
        this.zza = zzcknVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.google.android.gms.internal.ads.zzckn, com.google.android.gms.internal.ads.zzckt] */
    @JavascriptInterface
    public String getClickSignals(String str) {
        if (TextUtils.isEmpty(str)) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-2942603598755267858L, -8806603318620577734L, 4222963281191111272L, -1270512184082686770L, 400212474860867650L, 7226219802410329826L}).toString());
            return new ObfuscatedString(new long[]{-241368588007194932L}).toString();
        }
        ?? r3 = this.zza;
        zzavi zzI = r3.zzI();
        if (zzI == null) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-1131520833599841345L, 8493019170267382171L, -8787350612898091788L, -2936902602592288828L, -2680139066095292570L}).toString());
            return new ObfuscatedString(new long[]{-5750040293092848964L}).toString();
        }
        zzave zzc = zzI.zzc();
        if (r3.getContext() == null) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{4691596571404301892L, -4937613894598554993L, -2808193300912647966L, 5109081407803059730L, -3880482432715960814L}).toString());
            return new ObfuscatedString(new long[]{8339167326508195601L}).toString();
        }
        zzckn zzcknVar = this.zza;
        return zzc.zzf(zzcknVar.getContext(), str, (View) zzcknVar, zzcknVar.zzi());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.google.android.gms.internal.ads.zzckn, com.google.android.gms.internal.ads.zzckt] */
    @JavascriptInterface
    public String getViewSignals() {
        ?? r3 = this.zza;
        zzavi zzI = r3.zzI();
        if (zzI == null) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{943263680563955832L, -52335494036981872L, -5022118836594922953L, -2407768318201362510L, -3627139323277740791L}).toString());
            return new ObfuscatedString(new long[]{2494688232955988789L}).toString();
        }
        zzave zzc = zzI.zzc();
        if (r3.getContext() == null) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-4839365203527477016L, -2778778521176439836L, 890422553025571734L, 5127367934169258617L, 4375320330739771680L}).toString());
            return new ObfuscatedString(new long[]{1760977880099869206L}).toString();
        }
        zzckn zzcknVar = this.zza;
        return zzc.zzh(zzcknVar.getContext(), (View) zzcknVar, zzcknVar.zzi());
    }

    @JavascriptInterface
    public void notify(final String str) {
        if (TextUtils.isEmpty(str)) {
            zzcec.zzj(new ObfuscatedString(new long[]{4580802218467639224L, 4751078060151651715L, 8373041211919864872L, 5051093515339111721L, -4744843781851620042L}).toString());
        } else {
            com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzckk
                @Override // java.lang.Runnable
                public final void run() {
                    zzckm.this.zza(str);
                }
            });
        }
    }

    public final /* synthetic */ void zza(String str) {
        Uri parse = Uri.parse(str);
        zzcjs zzaL = ((zzckf) this.zzb.zza).zzaL();
        if (zzaL == null) {
            zzcec.zzg(new ObfuscatedString(new long[]{1002692691983041693L, 403550144719351875L, 8438122995445540786L, 4994287234274479256L, 2425382144548259796L, -3976169810537227831L, 4843473920792988213L, 148633416042818022L}).toString());
        } else {
            zzaL.zzj(parse);
        }
    }
}
