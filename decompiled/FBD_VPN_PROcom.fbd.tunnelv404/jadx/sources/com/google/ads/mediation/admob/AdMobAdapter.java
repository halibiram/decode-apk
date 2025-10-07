package com.google.ads.mediation.admob;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.google.ads.mediation.AbstractAdViewAdapter;
import com.panda912.muddy.ObfuscatedString;

@Keep
/* loaded from: classes.dex */
public final class AdMobAdapter extends AbstractAdViewAdapter {
    static final String AD_JSON_PARAMETER = new ObfuscatedString(new long[]{-3519542186655423702L, -7612685794226195969L}).toString();
    static final String AD_PARAMETER = new ObfuscatedString(new long[]{5963451782294576477L, -8973752302714517595L}).toString();
    static final String HOUSE_ADS_PARAMETER = new ObfuscatedString(new long[]{244826729560477273L, 3146246518688305873L}).toString();

    @NonNull
    public static final String NEW_BUNDLE = new ObfuscatedString(new long[]{8207646565804683021L, 4624185169578440287L, -3927868107491523310L}).toString();

    @Override // com.google.ads.mediation.AbstractAdViewAdapter
    @NonNull
    public Bundle buildExtrasBundle(@NonNull Bundle bundle, @NonNull Bundle bundle2) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (bundle.getBoolean(new ObfuscatedString(new long[]{2434463034319570749L, 6254302219145891340L, -7417470734454304L}).toString())) {
            bundle = new Bundle(bundle);
        }
        bundle.putInt(new ObfuscatedString(new long[]{6319975544462010523L, -7041849702901801027L}).toString(), 1);
        bundle.putString(new ObfuscatedString(new long[]{-432670784055815338L, -3534822378921557336L}).toString(), bundle2.getString(new ObfuscatedString(new long[]{2239288810562943791L, 4513518304479563695L}).toString()));
        if (!TextUtils.isEmpty(bundle2.getString(new ObfuscatedString(new long[]{3133589878409732983L, -2197587323790378691L}).toString()))) {
            bundle.putString(new ObfuscatedString(new long[]{4480024304605949073L, -1609169523270421048L}).toString(), bundle2.getString(new ObfuscatedString(new long[]{-1963667852599500706L, -5621950674196028380L}).toString()));
        }
        bundle.putBoolean(new ObfuscatedString(new long[]{7473111116101230757L, 4325974350192532737L, 8891536751924945486L}).toString(), true);
        return bundle;
    }
}
