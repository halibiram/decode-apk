package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;

@ParametersAreNonnullByDefault
/* loaded from: classes2.dex */
public final class zzdnu extends zzbjv implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzdow {
    private final WeakReference zza;
    private final Map zzb = new HashMap();
    private final Map zzc = new HashMap();
    private final Map zzd = new HashMap();
    private zzdmv zze;
    private zzayr zzf;

    public zzdnu(View view, HashMap hashMap, HashMap hashMap2) {
        view.setOnTouchListener(this);
        view.setOnClickListener(this);
        com.google.android.gms.ads.internal.zzt.zzx();
        zzcfc.zza(view, this);
        com.google.android.gms.ads.internal.zzt.zzx();
        zzcfc.zzb(view, this);
        this.zza = new WeakReference(view);
        for (Map.Entry entry : hashMap.entrySet()) {
            String str = (String) entry.getKey();
            View view2 = (View) entry.getValue();
            if (view2 != null) {
                this.zzb.put(str, new WeakReference(view2));
                if (!new ObfuscatedString(new long[]{-1419692500560097499L, 8437517635027892281L}).toString().equals(str) && !new ObfuscatedString(new long[]{2774323289143067718L, 509723257733570378L}).toString().equals(str)) {
                    view2.setOnTouchListener(this);
                    view2.setClickable(true);
                    view2.setOnClickListener(this);
                }
            }
        }
        this.zzd.putAll(this.zzb);
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            View view3 = (View) entry2.getValue();
            if (view3 != null) {
                this.zzc.put((String) entry2.getKey(), new WeakReference(view3));
                view3.setOnTouchListener(this);
                view3.setClickable(false);
            }
        }
        this.zzd.putAll(this.zzc);
        this.zzf = new zzayr(view.getContext(), view);
    }

    @Override // android.view.View.OnClickListener
    public final synchronized void onClick(View view) {
        zzdmv zzdmvVar = this.zze;
        if (zzdmvVar != null) {
            zzdmvVar.zzC(view, zzf(), zzl(), zzm(), true);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final synchronized void onGlobalLayout() {
        zzdmv zzdmvVar = this.zze;
        if (zzdmvVar != null) {
            zzdmvVar.zzA(zzf(), zzl(), zzm(), zzdmv.zzW(zzf()));
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final synchronized void onScrollChanged() {
        zzdmv zzdmvVar = this.zze;
        if (zzdmvVar != null) {
            zzdmvVar.zzA(zzf(), zzl(), zzm(), zzdmv.zzW(zzf()));
        }
    }

    @Override // android.view.View.OnTouchListener
    public final synchronized boolean onTouch(View view, MotionEvent motionEvent) {
        zzdmv zzdmvVar = this.zze;
        if (zzdmvVar != null) {
            zzdmvVar.zzJ(view, motionEvent, zzf());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbjw
    public final synchronized void zzb(IObjectWrapper iObjectWrapper) {
        try {
            if (this.zze != null) {
                Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
                if (!(unwrap instanceof View)) {
                    zzcec.zzj(new ObfuscatedString(new long[]{5818128093910163553L, -5320634425315429070L, -953700290285577438L, 8404966881167776590L, -3454562114175529700L, 4436453530897979533L, -6866678747104623565L, 2113214432608621528L, 5879878620801771266L, -423511218877713516L, 7190953013624530024L, 5952660869065842206L, -2643318083607035052L}).toString());
                }
                this.zze.zzL((View) unwrap);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbjw
    public final synchronized void zzc(IObjectWrapper iObjectWrapper) {
        Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if (!(unwrap instanceof zzdmv)) {
            zzcec.zzj(new ObfuscatedString(new long[]{-1653055363011170382L, 8875623398381721847L, -8559259381532417829L, -1990798056524515610L, 3511894045206986553L, 3783339801805537166L, -6473350532115265713L, 1359500486796047611L, 1768454863938892986L, -5075248371950464910L, 9156720001691513043L}).toString());
            return;
        }
        zzdmv zzdmvVar = this.zze;
        if (zzdmvVar != null) {
            zzdmvVar.zzR(this);
        }
        zzdmv zzdmvVar2 = (zzdmv) unwrap;
        if (zzdmvVar2.zzS()) {
            this.zze = zzdmvVar2;
            zzdmvVar2.zzQ(this);
            this.zze.zzI(zzf());
            return;
        }
        zzcec.zzg(new ObfuscatedString(new long[]{-3639479512162275963L, 5976837831847909002L, -7524740855821795463L, 2256018353817546197L, 5107500494298994949L, -6255387838833688382L, 230065054517305767L, 7012988771028653264L, 8391282431836511782L, -8151861972990587225L, -5483264141775313773L, 7208417991498700172L, 1747706125574230156L, -8912365238260103609L, -3715668167797768349L, -6244672683823855941L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbjw
    public final synchronized void zzd() {
        zzdmv zzdmvVar = this.zze;
        if (zzdmvVar != null) {
            zzdmvVar.zzR(this);
            this.zze = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdow
    @Nullable
    public final View zzf() {
        return (View) this.zza.get();
    }

    @Override // com.google.android.gms.internal.ads.zzdow
    @Nullable
    public final synchronized View zzg(String str) {
        WeakReference weakReference = (WeakReference) this.zzd.get(str);
        if (weakReference == null) {
            return null;
        }
        return (View) weakReference.get();
    }

    @Override // com.google.android.gms.internal.ads.zzdow
    @Nullable
    public final FrameLayout zzh() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdow
    public final zzayr zzi() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzdow
    @Nullable
    public final synchronized IObjectWrapper zzj() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdow
    public final synchronized String zzk() {
        return new ObfuscatedString(new long[]{-7733966985032030385L, -183488256594394052L}).toString();
    }

    @Override // com.google.android.gms.internal.ads.zzdow
    public final synchronized Map zzl() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzdow
    public final synchronized Map zzm() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzdow
    @Nullable
    public final synchronized Map zzn() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzdow
    @Nullable
    public final synchronized JSONObject zzo() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdow
    @Nullable
    public final synchronized JSONObject zzp() {
        zzdmv zzdmvVar = this.zze;
        if (zzdmvVar != null) {
            return zzdmvVar.zzk(zzf(), zzl(), zzm());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdow
    public final synchronized void zzq(String str, View view, boolean z) {
        this.zzd.put(str, new WeakReference(view));
        if (!new ObfuscatedString(new long[]{7000019236517830166L, -8183644064869651479L}).toString().equals(str) && !new ObfuscatedString(new long[]{2966131374315694309L, 2037638899151310220L}).toString().equals(str)) {
            this.zzb.put(str, new WeakReference(view));
            view.setClickable(true);
            view.setOnClickListener(this);
            view.setOnTouchListener(this);
        }
    }
}
