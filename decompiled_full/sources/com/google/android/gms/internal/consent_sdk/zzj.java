package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import androidx.annotation.Nullable;
import com.google.android.ump.ConsentInformation;
import com.google.android.ump.ConsentRequestParameters;
import com.google.android.ump.FormError;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzj implements ConsentInformation {
    private final zzap zza;
    private final zzu zzb;
    private final zzbn zzc;
    private final Object zzd = new Object();
    private final Object zze = new Object();
    private boolean zzf = false;
    private boolean zzg = false;
    private ConsentRequestParameters zzh = new ConsentRequestParameters.Builder().build();

    public zzj(zzap zzapVar, zzu zzuVar, zzbn zzbnVar) {
        this.zza = zzapVar;
        this.zzb = zzuVar;
        this.zzc = zzbnVar;
    }

    @Override // com.google.android.ump.ConsentInformation
    public final boolean canRequestAds() {
        int zza;
        if (!zzc()) {
            zza = 0;
        } else {
            zza = this.zza.zza();
        }
        if (zza != 1 && zza != 3) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.ump.ConsentInformation
    public final int getConsentStatus() {
        if (!zzc()) {
            return 0;
        }
        return this.zza.zza();
    }

    @Override // com.google.android.ump.ConsentInformation
    public final ConsentInformation.PrivacyOptionsRequirementStatus getPrivacyOptionsRequirementStatus() {
        if (!zzc()) {
            return ConsentInformation.PrivacyOptionsRequirementStatus.UNKNOWN;
        }
        return this.zza.zzb();
    }

    @Override // com.google.android.ump.ConsentInformation
    public final boolean isConsentFormAvailable() {
        return this.zzc.zzf();
    }

    @Override // com.google.android.ump.ConsentInformation
    public final void requestConsentInfoUpdate(@Nullable Activity activity, ConsentRequestParameters consentRequestParameters, ConsentInformation.OnConsentInfoUpdateSuccessListener onConsentInfoUpdateSuccessListener, ConsentInformation.OnConsentInfoUpdateFailureListener onConsentInfoUpdateFailureListener) {
        synchronized (this.zzd) {
            this.zzf = true;
        }
        this.zzh = consentRequestParameters;
        this.zzb.zzc(activity, consentRequestParameters, onConsentInfoUpdateSuccessListener, onConsentInfoUpdateFailureListener);
    }

    @Override // com.google.android.ump.ConsentInformation
    public final void reset() {
        this.zzc.zzd(null);
        this.zza.zze();
        synchronized (this.zzd) {
            this.zzf = false;
        }
    }

    public final void zza(@Nullable Activity activity) {
        if (zzc() && !zzd()) {
            zzb(true);
            this.zzb.zzc(activity, this.zzh, new ConsentInformation.OnConsentInfoUpdateSuccessListener() { // from class: com.google.android.gms.internal.consent_sdk.zzh
                @Override // com.google.android.ump.ConsentInformation.OnConsentInfoUpdateSuccessListener
                public final void onConsentInfoUpdateSuccess() {
                    zzj.this.zzb(false);
                }
            }, new ConsentInformation.OnConsentInfoUpdateFailureListener() { // from class: com.google.android.gms.internal.consent_sdk.zzi
                @Override // com.google.android.ump.ConsentInformation.OnConsentInfoUpdateFailureListener
                public final void onConsentInfoUpdateFailure(FormError formError) {
                    zzj.this.zzb(false);
                }
            });
            return;
        }
        zzc();
        zzd();
        new ObfuscatedString(new long[]{5945002200856898369L, -4903088235339820648L, -8377509893740760721L, 365364798714503999L, -1981708431418566589L, 8896962665622515150L, 5734390074955589344L, -513063979536092717L, 3285139339048611985L}).toString();
        new ObfuscatedString(new long[]{5558503699458392294L, 443409834829091498L, 7617677567744846199L, -7522129038567685255L, -4995206302162665881L}).toString();
        new ObfuscatedString(new long[]{-2102800456863680850L, 2928604688684388853L, -3925018258900795493L, 528134290613649691L}).toString();
    }

    public final void zzb(boolean z) {
        synchronized (this.zze) {
            this.zzg = z;
        }
    }

    public final boolean zzc() {
        boolean z;
        synchronized (this.zzd) {
            z = this.zzf;
        }
        return z;
    }

    public final boolean zzd() {
        boolean z;
        synchronized (this.zze) {
            z = this.zzg;
        }
        return z;
    }
}
