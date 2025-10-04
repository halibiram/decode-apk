package com.google.android.gms.ads.mediation.customevent;

import android.view.View;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;

@VisibleForTesting
/* loaded from: classes2.dex */
final class zza implements CustomEventBannerListener {
    private final CustomEventAdapter zza;
    private final MediationBannerListener zzb;

    public zza(CustomEventAdapter customEventAdapter, MediationBannerListener mediationBannerListener) {
        this.zza = customEventAdapter;
        this.zzb = mediationBannerListener;
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdClicked() {
        zzcec.zze(new ObfuscatedString(new long[]{-6305431309334391132L, 5081280207999391562L, 85257017983875020L, 2323639521382914755L, 7513310928810221074L, -439939984124330248L}).toString());
        this.zzb.onAdClicked(this.zza);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdClosed() {
        zzcec.zze(new ObfuscatedString(new long[]{3922206227579856266L, 908842385411532841L, -4343508984502506999L, 4643957157153390586L, 442636953594103378L, -9130720026111565029L}).toString());
        this.zzb.onAdClosed(this.zza);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdFailedToLoad(int i) {
        zzcec.zze(new ObfuscatedString(new long[]{-5525104716602279364L, 8966237233051260054L, 4668994107747336651L, 3389503176825122102L, 517531365160610670L, -2204545767238891511L, 8551657196691151623L}).toString());
        this.zzb.onAdFailedToLoad(this.zza, i);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdLeftApplication() {
        zzcec.zze(new ObfuscatedString(new long[]{4849720225416486016L, 1336541989922774027L, 6661622973554293843L, 7250741512755037047L, 8220671504908222663L, 2779434410798745757L, -2501393811950795672L}).toString());
        this.zzb.onAdLeftApplication(this.zza);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventBannerListener
    public final void onAdLoaded(View view) {
        zzcec.zze(new ObfuscatedString(new long[]{-2422851619489182950L, 7974390412954037684L, -6151027702880129585L, 6561054743649421752L, -5862613009360816969L, -8969145338748973491L}).toString());
        this.zza.zze = view;
        this.zzb.onAdLoaded(this.zza);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdOpened() {
        zzcec.zze(new ObfuscatedString(new long[]{3899433535816026619L, -8290709009103288721L, -5189953045332972510L, -765903152911531298L, 3169559320730196572L, -8521178028064667346L}).toString());
        this.zzb.onAdOpened(this.zza);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdFailedToLoad(AdError adError) {
        zzcec.zze(new ObfuscatedString(new long[]{-7398161435121045800L, -1117742600940501992L, 8170984390479041559L, 4032455728702393042L, -4372060193243356182L, 3958634005443150452L, -6329633574663447696L}).toString());
        this.zzb.onAdFailedToLoad(this.zza, adError);
    }
}
