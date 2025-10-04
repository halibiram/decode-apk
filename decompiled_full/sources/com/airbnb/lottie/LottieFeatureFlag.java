package com.airbnb.lottie;

/* loaded from: classes.dex */
public enum LottieFeatureFlag {
    MergePathsApi19(19);

    public final int minRequiredSdkVersion;

    LottieFeatureFlag(int i) {
        this.minRequiredSdkVersion = i;
    }
}
