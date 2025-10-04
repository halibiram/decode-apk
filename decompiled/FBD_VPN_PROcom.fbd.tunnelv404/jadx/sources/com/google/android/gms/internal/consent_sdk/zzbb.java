package com.google.android.gms.internal.consent_sdk;

import android.R;
import android.app.Activity;
import android.app.Application;
import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.view.Window;
import androidx.annotation.UiThread;
import androidx.work.WorkRequest;
import com.google.android.ump.ConsentForm;
import com.google.android.ump.UserMessagingPlatform;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

@UiThread
/* loaded from: classes2.dex */
public final class zzbb implements ConsentForm {
    private final Application zzb;
    private final zzab zzc;
    private final zzbw zzd;
    private final zzap zze;
    private final zzbp zzf;
    private final zzdr zzg;
    private Dialog zzh;
    private zzbu zzi;
    private final AtomicBoolean zzj = new AtomicBoolean();
    private final AtomicReference zzk = new AtomicReference();
    private final AtomicReference zzl = new AtomicReference();
    private final AtomicReference zzm = new AtomicReference();
    boolean zza = false;

    public zzbb(Application application, zzab zzabVar, zzbw zzbwVar, zzap zzapVar, zzbp zzbpVar, zzdr zzdrVar) {
        this.zzb = application;
        this.zzc = zzabVar;
        this.zzd = zzbwVar;
        this.zze = zzapVar;
        this.zzf = zzbpVar;
        this.zzg = zzdrVar;
    }

    private final void zzg() {
        Dialog dialog = this.zzh;
        if (dialog != null) {
            dialog.dismiss();
            this.zzh = null;
        }
        this.zzd.zza(null);
        zzay zzayVar = (zzay) this.zzm.getAndSet(null);
        if (zzayVar != null) {
            zzayVar.zza.zzb.unregisterActivityLifecycleCallbacks(zzayVar);
        }
    }

    @Override // com.google.android.ump.ConsentForm
    public final void show(Activity activity, ConsentForm.OnConsentFormDismissedListener onConsentFormDismissedListener) {
        String obfuscatedString;
        zzcr.zza();
        if (!this.zzj.compareAndSet(false, true)) {
            if (true != this.zza) {
                obfuscatedString = new ObfuscatedString(new long[]{507056667516316750L, 1314804725980584217L, -4099532353319279506L, 4223424136618171265L, 201646739720566009L, 6950452068357328315L, -680173294064557885L}).toString();
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{3860585575279356873L, -4367325834700897764L, -1675708491905766511L, 4432542948073445158L, -3463453738867269072L, -3327365400387452205L, 2092404872814583967L, -1718905206202729568L, -3524368830241452171L}).toString();
            }
            onConsentFormDismissedListener.onConsentFormDismissed(new zzg(3, obfuscatedString).zza());
            return;
        }
        this.zzi.zzc();
        zzay zzayVar = new zzay(this, activity);
        this.zzb.registerActivityLifecycleCallbacks(zzayVar);
        this.zzm.set(zzayVar);
        this.zzd.zza(activity);
        Dialog dialog = new Dialog(activity, R.style.Theme.Translucent.NoTitleBar);
        dialog.setContentView(this.zzi);
        dialog.setCancelable(false);
        Window window = dialog.getWindow();
        if (window == null) {
            onConsentFormDismissedListener.onConsentFormDismissed(new zzg(3, new ObfuscatedString(new long[]{3036620101313770853L, -8758609936489858107L, 7282588016181816372L, 2965993638286297189L, 2225751773311939029L, 6482461164637005869L}).toString()).zza());
            return;
        }
        window.setLayout(-1, -1);
        window.setBackgroundDrawable(new ColorDrawable(0));
        window.setFlags(16777216, 16777216);
        this.zzl.set(onConsentFormDismissedListener);
        dialog.show();
        this.zzh = dialog;
        this.zzi.zzd(new ObfuscatedString(new long[]{4409974436976443473L, -3575348878346494358L, 4270790997592741770L, 8346618791468059824L}).toString(), new ObfuscatedString(new long[]{-6818241829715109755L}).toString());
    }

    public final zzbu zza() {
        return this.zzi;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzb(UserMessagingPlatform.OnConsentFormLoadSuccessListener onConsentFormLoadSuccessListener, UserMessagingPlatform.OnConsentFormLoadFailureListener onConsentFormLoadFailureListener) {
        zzbu zza = ((zzbv) this.zzg).zza();
        this.zzi = zza;
        zza.setBackgroundColor(0);
        zza.getSettings().setJavaScriptEnabled(true);
        zza.setWebViewClient(new zzbt(zza, null));
        this.zzk.set(new zzba(onConsentFormLoadSuccessListener, onConsentFormLoadFailureListener, 0 == true ? 1 : 0));
        zzbu zzbuVar = this.zzi;
        zzbp zzbpVar = this.zzf;
        zzbuVar.loadDataWithBaseURL(zzbpVar.zza(), zzbpVar.zzb(), new ObfuscatedString(new long[]{4211180314498023659L, -7428461608682873925L, 329578751080454328L}).toString(), new ObfuscatedString(new long[]{-249425589962296792L, 1237078794618340907L}).toString(), null);
        zzcr.zza.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzax
            @Override // java.lang.Runnable
            public final void run() {
                zzbb.this.zzf(new zzg(4, new ObfuscatedString(new long[]{-4412650464313544979L, 5130226096038443237L, 2244424251874329560L, 8175328181137299218L}).toString()));
            }
        }, WorkRequest.MIN_BACKOFF_MILLIS);
    }

    public final void zzc(int i) {
        zzg();
        ConsentForm.OnConsentFormDismissedListener onConsentFormDismissedListener = (ConsentForm.OnConsentFormDismissedListener) this.zzl.getAndSet(null);
        if (onConsentFormDismissedListener == null) {
            return;
        }
        this.zze.zzg(3);
        onConsentFormDismissedListener.onConsentFormDismissed(null);
    }

    public final void zzd(zzg zzgVar) {
        zzg();
        ConsentForm.OnConsentFormDismissedListener onConsentFormDismissedListener = (ConsentForm.OnConsentFormDismissedListener) this.zzl.getAndSet(null);
        if (onConsentFormDismissedListener == null) {
            return;
        }
        onConsentFormDismissedListener.onConsentFormDismissed(zzgVar.zza());
    }

    public final void zze() {
        zzba zzbaVar = (zzba) this.zzk.getAndSet(null);
        if (zzbaVar == null) {
            return;
        }
        zzbaVar.onConsentFormLoadSuccess(this);
    }

    public final void zzf(zzg zzgVar) {
        zzba zzbaVar = (zzba) this.zzk.getAndSet(null);
        if (zzbaVar == null) {
            return;
        }
        zzbaVar.onConsentFormLoadFailure(zzgVar.zza());
    }
}
