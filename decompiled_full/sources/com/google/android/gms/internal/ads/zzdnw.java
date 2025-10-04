package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.GestureDetector;
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
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzdnw extends zzbjp implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzdow {
    public static final zzgaa zza = zzgaa.zzo(new ObfuscatedString(new long[]{-3361793197554891341L, 3529498951230550849L}).toString(), new ObfuscatedString(new long[]{992334739397789772L, 3532436149809536190L}).toString(), new ObfuscatedString(new long[]{-7784233839656836897L, -4604372295150309393L}).toString());
    private final String zzb;
    private FrameLayout zzd;
    private FrameLayout zze;
    private final zzgey zzf;
    private View zzg;
    private zzdmv zzi;
    private zzayr zzj;
    private zzbjj zzl;
    private boolean zzm;
    private GestureDetector zzo;
    private Map zzc = new HashMap();
    private IObjectWrapper zzk = null;
    private boolean zzn = false;
    private final int zzh = 240304000;

    public zzdnw(FrameLayout frameLayout, FrameLayout frameLayout2, int i) {
        ObfuscatedString obfuscatedString;
        String obfuscatedString2;
        this.zzd = frameLayout;
        this.zze = frameLayout2;
        String canonicalName = frameLayout.getClass().getCanonicalName();
        if (new ObfuscatedString(new long[]{4048852713275858864L, 4226731941083893201L, -876659162820159599L, -4025086305221615901L, -2207207286637688293L, -3563286712813255797L, -6104345719443331804L, 269883735661472267L}).toString().equals(canonicalName)) {
            obfuscatedString2 = new ObfuscatedString(new long[]{-399896603786579402L, 4665129405908357501L}).toString();
        } else if (new ObfuscatedString(new long[]{-6992666736195155638L, -8385199080076078198L, -2046756813075050888L, 349498205374268881L, 463121389707890002L, 3783809155068965758L, -7422620795869807207L, -2069930090306746754L, 2972726782163955351L}).toString().equals(canonicalName)) {
            obfuscatedString2 = new ObfuscatedString(new long[]{8908737466144144343L, 9204663961351215088L}).toString();
        } else {
            if (new ObfuscatedString(new long[]{-9010077696699838774L, -2626917286660262027L, 6606245992041170338L, -2920714389239832444L, 4499611717475024636L, 3395176985286756248L, 312615755436701058L, 834759709623835501L}).toString().equals(canonicalName)) {
                obfuscatedString = new ObfuscatedString(new long[]{-8485092395183336966L, 8142764818673500355L});
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{6204488462287783190L, -5795918547440197632L});
            }
            obfuscatedString2 = obfuscatedString.toString();
        }
        this.zzb = obfuscatedString2;
        com.google.android.gms.ads.internal.zzt.zzx();
        zzcfc.zza(frameLayout, this);
        com.google.android.gms.ads.internal.zzt.zzx();
        zzcfc.zzb(frameLayout, this);
        this.zzf = zzcep.zze;
        this.zzj = new zzayr(this.zzd.getContext(), this.zzd);
        frameLayout.setOnTouchListener(this);
        frameLayout.setOnClickListener(this);
    }

    private final synchronized void zzt(String str) {
        DisplayMetrics displayMetrics;
        try {
            View frameLayout = new FrameLayout(this.zze.getContext());
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            Context context = this.zze.getContext();
            frameLayout.setClickable(false);
            frameLayout.setFocusable(false);
            if (!TextUtils.isEmpty(str)) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                Resources resources = context.getResources();
                if (resources != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
                    try {
                        byte[] decode = Base64.decode(str, 0);
                        BitmapDrawable bitmapDrawable = new BitmapDrawable(BitmapFactory.decodeByteArray(decode, 0, decode.length));
                        bitmapDrawable.setTargetDensity(displayMetrics.densityDpi);
                        Shader.TileMode tileMode = Shader.TileMode.REPEAT;
                        bitmapDrawable.setTileModeXY(tileMode, tileMode);
                        frameLayout.setBackground(bitmapDrawable);
                    } catch (IllegalArgumentException e) {
                        zzcec.zzk(new ObfuscatedString(new long[]{-839903331227541613L, 8416765813173393685L, 8954085341282772006L, 7084346776139826358L, -4070957098017532518L, 1800259307397920305L}).toString(), e);
                    }
                }
            }
            this.zze.addView(frameLayout);
        } catch (Throwable th) {
            throw th;
        }
    }

    private final synchronized void zzu() {
        this.zzf.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdnv
            @Override // java.lang.Runnable
            public final void run() {
                zzdnw.this.zzs();
            }
        });
    }

    private final synchronized void zzv() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkU)).booleanValue() && this.zzi.zza() != 0) {
            this.zzo = new GestureDetector(this.zzd.getContext(), new zzdoc(this.zzi, this));
        }
    }

    @Override // android.view.View.OnClickListener
    public final synchronized void onClick(View view) {
        zzdmv zzdmvVar = this.zzi;
        if (zzdmvVar != null && zzdmvVar.zzT()) {
            this.zzi.zzu();
            this.zzi.zzC(view, this.zzd, zzl(), zzm(), false);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final synchronized void onGlobalLayout() {
        zzdmv zzdmvVar = this.zzi;
        if (zzdmvVar != null) {
            FrameLayout frameLayout = this.zzd;
            zzdmvVar.zzA(frameLayout, zzl(), zzm(), zzdmv.zzW(frameLayout));
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final synchronized void onScrollChanged() {
        zzdmv zzdmvVar = this.zzi;
        if (zzdmvVar != null) {
            FrameLayout frameLayout = this.zzd;
            zzdmvVar.zzA(frameLayout, zzl(), zzm(), zzdmv.zzW(frameLayout));
        }
    }

    @Override // android.view.View.OnTouchListener
    public final synchronized boolean onTouch(View view, MotionEvent motionEvent) {
        zzdmv zzdmvVar = this.zzi;
        if (zzdmvVar != null) {
            zzdmvVar.zzJ(view, motionEvent, this.zzd);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkU)).booleanValue() && this.zzo != null && this.zzi.zza() != 0) {
                this.zzo.onTouchEvent(motionEvent);
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbjq
    public final synchronized IObjectWrapper zzb(String str) {
        return ObjectWrapper.wrap(zzg(str));
    }

    @Override // com.google.android.gms.internal.ads.zzbjq
    public final synchronized void zzbE(String str, IObjectWrapper iObjectWrapper) {
        zzq(str, (View) ObjectWrapper.unwrap(iObjectWrapper), true);
    }

    @Override // com.google.android.gms.internal.ads.zzbjq
    public final synchronized void zzbF(IObjectWrapper iObjectWrapper) {
        this.zzi.zzL((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzbjq
    public final synchronized void zzbG(zzbjj zzbjjVar) {
        if (!this.zzn) {
            this.zzm = true;
            this.zzl = zzbjjVar;
            zzdmv zzdmvVar = this.zzi;
            if (zzdmvVar != null) {
                zzdmvVar.zzc().zzb(zzbjjVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbjq
    public final synchronized void zzbH(IObjectWrapper iObjectWrapper) {
        if (this.zzn) {
            return;
        }
        this.zzk = iObjectWrapper;
    }

    @Override // com.google.android.gms.internal.ads.zzbjq
    public final synchronized void zzbI(IObjectWrapper iObjectWrapper) {
        if (this.zzn) {
            return;
        }
        Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if (!(unwrap instanceof zzdmv)) {
            zzcec.zzj(new ObfuscatedString(new long[]{7188203256418170325L, -7506329980893648687L, 2456601178009124673L, 1161526972515819347L, -3231761374213486960L, -4327184127018802478L, 2483292236138952263L, 364323874659542130L, 8834218646499452906L, -5548354575707874310L}).toString());
            return;
        }
        zzdmv zzdmvVar = this.zzi;
        if (zzdmvVar != null) {
            zzdmvVar.zzR(this);
        }
        zzu();
        zzdmv zzdmvVar2 = (zzdmv) unwrap;
        this.zzi = zzdmvVar2;
        zzdmvVar2.zzQ(this);
        this.zzi.zzI(this.zzd);
        this.zzi.zzt(this.zze);
        if (this.zzm) {
            this.zzi.zzc().zzb(this.zzl);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdO)).booleanValue() && !TextUtils.isEmpty(this.zzi.zzg())) {
            zzt(this.zzi.zzg());
        }
        zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzbjq
    public final synchronized void zzc() {
        try {
            if (this.zzn) {
                return;
            }
            zzdmv zzdmvVar = this.zzi;
            if (zzdmvVar != null) {
                zzdmvVar.zzR(this);
                this.zzi = null;
            }
            this.zzc.clear();
            this.zzd.removeAllViews();
            this.zze.removeAllViews();
            this.zzc = null;
            this.zzd = null;
            this.zze = null;
            this.zzg = null;
            this.zzj = null;
            this.zzn = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbjq
    public final void zzd(IObjectWrapper iObjectWrapper) {
        onTouch(this.zzd, (MotionEvent) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzbjq
    public final synchronized void zze(IObjectWrapper iObjectWrapper, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzdow
    public final /* synthetic */ View zzf() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzdow
    @Nullable
    public final synchronized View zzg(String str) {
        WeakReference weakReference;
        if (!this.zzn && (weakReference = (WeakReference) this.zzc.get(str)) != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdow
    public final FrameLayout zzh() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzdow
    public final zzayr zzi() {
        return this.zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzdow
    @Nullable
    public final IObjectWrapper zzj() {
        return this.zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzdow
    public final synchronized String zzk() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzdow
    public final synchronized Map zzl() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzdow
    public final synchronized Map zzm() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzdow
    @Nullable
    public final synchronized Map zzn() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdow
    @Nullable
    public final synchronized JSONObject zzo() {
        zzdmv zzdmvVar = this.zzi;
        if (zzdmvVar != null) {
            return zzdmvVar.zzi(this.zzd, zzl(), zzm());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdow
    @Nullable
    public final synchronized JSONObject zzp() {
        zzdmv zzdmvVar = this.zzi;
        if (zzdmvVar != null) {
            return zzdmvVar.zzk(this.zzd, zzl(), zzm());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdow
    public final synchronized void zzq(String str, View view, boolean z) {
        if (!this.zzn) {
            if (view == null) {
                this.zzc.remove(str);
                return;
            }
            this.zzc.put(str, new WeakReference(view));
            if (!new ObfuscatedString(new long[]{-5529561417595830303L, 3070190313701230085L}).toString().equals(str) && !new ObfuscatedString(new long[]{4120226451131360667L, -6431259510486955326L}).toString().equals(str)) {
                if (com.google.android.gms.ads.internal.util.zzbz.zzi(this.zzh)) {
                    view.setOnTouchListener(this);
                }
                view.setClickable(true);
                view.setOnClickListener(this);
            }
        }
    }

    public final FrameLayout zzr() {
        return this.zzd;
    }

    public final /* synthetic */ void zzs() {
        if (this.zzg == null) {
            View view = new View(this.zzd.getContext());
            this.zzg = view;
            view.setLayoutParams(new FrameLayout.LayoutParams(-1, 0));
        }
        if (this.zzd != this.zzg.getParent()) {
            this.zzd.addView(this.zzg);
        }
    }
}
