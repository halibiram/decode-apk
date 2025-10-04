package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import androidx.annotation.WorkerThread;
import com.google.android.ump.ConsentForm;
import com.google.android.ump.ConsentInformation;
import com.google.android.ump.FormError;
import com.google.android.ump.UserMessagingPlatform;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class zzbn {
    private final zzdr zza;
    private final Executor zzb;
    private final AtomicReference zzc = new AtomicReference();
    private final AtomicReference zzd = new AtomicReference();

    public zzbn(zzdr zzdrVar, Executor executor) {
        this.zza = zzdrVar;
        this.zzb = executor;
    }

    public final /* synthetic */ void zza(zzbb zzbbVar) {
        final AtomicReference atomicReference = this.zzd;
        Objects.requireNonNull(atomicReference);
        zzbbVar.zzb(new UserMessagingPlatform.OnConsentFormLoadSuccessListener() { // from class: com.google.android.gms.internal.consent_sdk.zzbe
            @Override // com.google.android.ump.UserMessagingPlatform.OnConsentFormLoadSuccessListener
            public final void onConsentFormLoadSuccess(ConsentForm consentForm) {
                atomicReference.set(consentForm);
            }
        }, new UserMessagingPlatform.OnConsentFormLoadFailureListener() { // from class: com.google.android.gms.internal.consent_sdk.zzbf
            @Override // com.google.android.ump.UserMessagingPlatform.OnConsentFormLoadFailureListener
            public final void onConsentFormLoadFailure(FormError formError) {
                String valueOf = String.valueOf(formError.getMessage());
                new ObfuscatedString(new long[]{3062903677055019585L, 6347931810492187828L, 6850518952402806813L, 7520007570679226693L}).toString();
                new ObfuscatedString(new long[]{-6442046425478154513L, -78745322643067886L, -6342348395362424755L, -5057526629576147965L, 6952265942440749744L, -1560619867273921774L}).toString().concat(valueOf);
            }
        });
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.gms.internal.consent_sdk.zzav] */
    public final void zzb(UserMessagingPlatform.OnConsentFormLoadSuccessListener onConsentFormLoadSuccessListener, UserMessagingPlatform.OnConsentFormLoadFailureListener onConsentFormLoadFailureListener) {
        zzcr.zza();
        zzbp zzbpVar = (zzbp) this.zzc.get();
        if (zzbpVar == null) {
            onConsentFormLoadFailureListener.onConsentFormLoadFailure(new zzg(3, new ObfuscatedString(new long[]{3010735400438142749L, 2754922047738944020L, 644150884791060321L, 7714344207137767587L, -4094808189903878079L}).toString()).zza());
            return;
        }
        ?? zza = this.zza.zza();
        zza.zza(zzbpVar);
        zza.zzb().zza().zzb(onConsentFormLoadSuccessListener, onConsentFormLoadFailureListener);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.gms.internal.consent_sdk.zzav] */
    @WorkerThread
    public final void zzc() {
        zzbp zzbpVar = (zzbp) this.zzc.get();
        if (zzbpVar == null) {
            new ObfuscatedString(new long[]{2308051398935527887L, 1795534665479056442L, 1468401815655431703L, 7639971019522671148L}).toString();
            new ObfuscatedString(new long[]{-7444176051058909169L, -8171264125552591429L, -6289009489315395969L, -4752172987302345399L, -4574468474236724991L, -7818054413284754179L, -2293653961497807027L, -530182232860496859L, 8082037851394879836L, 7460291624641036435L}).toString();
            return;
        }
        ?? zza = this.zza.zza();
        zza.zza(zzbpVar);
        final zzbb zza2 = zza.zzb().zza();
        zza2.zza = true;
        zzcr.zza.post(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzbd
            @Override // java.lang.Runnable
            public final void run() {
                zzbn.this.zza(zza2);
            }
        });
    }

    public final void zzd(zzbp zzbpVar) {
        this.zzc.set(zzbpVar);
    }

    public final void zze(Activity activity, final ConsentForm.OnConsentFormDismissedListener onConsentFormDismissedListener) {
        zzcr.zza();
        zzj zzb = zza.zza(activity).zzb();
        if (zzb == null) {
            zzcr.zza.post(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzbg
                @Override // java.lang.Runnable
                public final void run() {
                    ConsentForm.OnConsentFormDismissedListener.this.onConsentFormDismissed(new zzg(1, new ObfuscatedString(new long[]{7914793316330043102L, 6802741338327186501L, -2808443419650007262L, -247511268783718375L}).toString()).zza());
                }
            });
            return;
        }
        if (!zzb.isConsentFormAvailable() && zzb.getPrivacyOptionsRequirementStatus() != ConsentInformation.PrivacyOptionsRequirementStatus.NOT_REQUIRED) {
            zzcr.zza.post(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzbh
                @Override // java.lang.Runnable
                public final void run() {
                    ConsentForm.OnConsentFormDismissedListener.this.onConsentFormDismissed(new zzg(3, new ObfuscatedString(new long[]{8477978150099438677L, -9156304403341221154L, -1351214561683264951L, 5905680883864670354L, -8321134243424035291L}).toString()).zza());
                }
            });
            zzb.zza(activity);
        } else {
            if (zzb.getPrivacyOptionsRequirementStatus() == ConsentInformation.PrivacyOptionsRequirementStatus.NOT_REQUIRED) {
                zzcr.zza.post(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzbi
                    @Override // java.lang.Runnable
                    public final void run() {
                        ConsentForm.OnConsentFormDismissedListener.this.onConsentFormDismissed(new zzg(3, new ObfuscatedString(new long[]{473444120554351273L, 1105873453050798436L, -8390033877767688102L, -7318493531250308377L, -4029556297558458181L, 7381631700543765732L}).toString()).zza());
                    }
                });
                return;
            }
            ConsentForm consentForm = (ConsentForm) this.zzd.get();
            if (consentForm == null) {
                zzcr.zza.post(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzbj
                    @Override // java.lang.Runnable
                    public final void run() {
                        ConsentForm.OnConsentFormDismissedListener.this.onConsentFormDismissed(new zzg(3, new ObfuscatedString(new long[]{-7579960019722706959L, 8076076510951018012L, 2515609537616255607L, -5456512280967782911L, 5262325160829262951L, -7776923485700234086L, 5749901736043481271L, 8266299773856577112L, 7796614987609102414L}).toString()).zza());
                    }
                });
            } else {
                consentForm.show(activity, onConsentFormDismissedListener);
                this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzbk
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzbn.this.zzc();
                    }
                });
            }
        }
    }

    public final boolean zzf() {
        if (this.zzc.get() != null) {
            return true;
        }
        return false;
    }
}
