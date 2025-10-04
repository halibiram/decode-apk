package com.google.android.gms.ads.mediation.customevent;

import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;

@VisibleForTesting
/* loaded from: classes2.dex */
final class zzc implements CustomEventNativeListener {
    private final CustomEventAdapter zza;
    private final MediationNativeListener zzb;

    public zzc(CustomEventAdapter customEventAdapter, MediationNativeListener mediationNativeListener) {
        this.zza = customEventAdapter;
        this.zzb = mediationNativeListener;
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdClicked() {
        zzcec.zze(new ObfuscatedString(new long[]{-3705747263444426503L, -1174609044680584871L, -428641257003079304L, 524795768813646053L, -5546063734370382959L, -1313696849158285015L}).toString());
        this.zzb.onAdClicked(this.zza);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdClosed() {
        zzcec.zze(new ObfuscatedString(new long[]{-2024809491538696321L, 3960173805652374993L, 4728154994135008164L, -6801040646092187709L, 5291309924126348486L, -4132217231008846086L}).toString());
        this.zzb.onAdClosed(this.zza);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdFailedToLoad(int i) {
        zzcec.zze(new ObfuscatedString(new long[]{-6163221670916239024L, -7760822674318369758L, -2332483095755945382L, -768855653636214376L, -4704890151747546018L, -588440729599612278L, -1718449599035528877L}).toString());
        this.zzb.onAdFailedToLoad(this.zza, i);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventNativeListener
    public final void onAdImpression() {
        zzcec.zze(new ObfuscatedString(new long[]{-7767234592966616520L, -8599574705894450576L, -4277673425917160733L, 7371795586641353460L, -8879462462849753627L, 3844443943488048670L, -6558037881404816409L}).toString());
        this.zzb.onAdImpression(this.zza);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdLeftApplication() {
        zzcec.zze(new ObfuscatedString(new long[]{110206571451479808L, 6317446777626949977L, -8127541482833253974L, 1448628031011732555L, -5519878539950518368L, 3146262390598378525L, -5718285294332742957L}).toString());
        this.zzb.onAdLeftApplication(this.zza);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventNativeListener
    public final void onAdLoaded(UnifiedNativeAdMapper unifiedNativeAdMapper) {
        zzcec.zze(new ObfuscatedString(new long[]{1926826176183894623L, -8242203270207829030L, 4025683995202784805L, 5298452632140241889L, 6419238383378966401L, -2841858505273520259L}).toString());
        this.zzb.onAdLoaded(this.zza, unifiedNativeAdMapper);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdOpened() {
        zzcec.zze(new ObfuscatedString(new long[]{1756957016651199855L, -5430949696510505699L, 944197829047397944L, 6390396673286628797L, -6084949986926973340L, 2644297304267815952L}).toString());
        this.zzb.onAdOpened(this.zza);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdFailedToLoad(AdError adError) {
        zzcec.zze(new ObfuscatedString(new long[]{334230432839239019L, -1994969457996892796L, -3083763013136095969L, 2377903984891313761L, 8159834867659943592L, -6225825420669003951L, -952120427474604115L}).toString());
        this.zzb.onAdFailedToLoad(this.zza, adError);
    }
}
