package com.google.android.gms.ads.mediation.customevent;

import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;

@VisibleForTesting
/* loaded from: classes2.dex */
final class zzb implements CustomEventInterstitialListener {
    final /* synthetic */ CustomEventAdapter zza;
    private final CustomEventAdapter zzb;
    private final MediationInterstitialListener zzc;

    public zzb(CustomEventAdapter customEventAdapter, CustomEventAdapter customEventAdapter2, MediationInterstitialListener mediationInterstitialListener) {
        this.zza = customEventAdapter;
        this.zzb = customEventAdapter2;
        this.zzc = mediationInterstitialListener;
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdClicked() {
        zzcec.zze(new ObfuscatedString(new long[]{4893144067079551923L, -520868747543814978L, 8338153123201039004L, 5250616519435681027L, -4106428700199623752L, 4723863697069111070L}).toString());
        this.zzc.onAdClicked(this.zzb);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdClosed() {
        zzcec.zze(new ObfuscatedString(new long[]{-709218572648952924L, 1165576706609322298L, 846359669351742773L, 2711910176177226314L, -2772219447041909292L, 5211463512458994493L}).toString());
        this.zzc.onAdClosed(this.zzb);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdFailedToLoad(int i) {
        zzcec.zze(new ObfuscatedString(new long[]{-2469700541312323107L, -8515877746156940753L, 8448305735859363016L, 5950419770563351382L, -2568220645693442398L, -4159336268119166788L, -2563165195716064273L}).toString());
        this.zzc.onAdFailedToLoad(this.zzb, i);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdLeftApplication() {
        zzcec.zze(new ObfuscatedString(new long[]{3928021800536000179L, 2669900312147982391L, 3288884754446259443L, 3921409540030339855L, -7004197890816273625L, 5177274613629779924L, 3591522879081575880L}).toString());
        this.zzc.onAdLeftApplication(this.zzb);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventInterstitialListener
    public final void onAdLoaded() {
        zzcec.zze(new ObfuscatedString(new long[]{-3101819395376557055L, 3627918588754782660L, 8685962283707094357L, 1079468243922792598L, -1447795352153199201L, 1413896093497246514L, -8812915501787999465L}).toString());
        this.zzc.onAdLoaded(this.zza);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdOpened() {
        zzcec.zze(new ObfuscatedString(new long[]{-5249868465468534834L, 4201297903830695272L, -4117995490671690298L, 8137990552891723052L, -8489986636197437259L, 7093887580105137849L}).toString());
        this.zzc.onAdOpened(this.zzb);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdFailedToLoad(AdError adError) {
        zzcec.zze(new ObfuscatedString(new long[]{3204666842005975444L, 2913207196809294924L, -570465528650519341L, 8830822167965322519L, 8499383065984313508L, -570373063444902973L, 7964345210432534428L}).toString());
        this.zzc.onAdFailedToLoad(this.zzb, adError);
    }
}
