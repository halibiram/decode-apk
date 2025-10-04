package com.airbnb.lottie.network;

import androidx.annotation.RestrictTo;
import com.panda912.muddy.ObfuscatedString;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public enum FileExtension {
    JSON(new ObfuscatedString(new long[]{-8519919052954606790L, 4140734220860848665L}).toString()),
    ZIP(new ObfuscatedString(new long[]{-5105564498749371687L, -2617984800801153373L}).toString()),
    GZIP(new ObfuscatedString(new long[]{1788927419690499945L, -3098268213081517515L}).toString());

    public final String extension;

    FileExtension(String str) {
        this.extension = str;
    }

    public String tempExtension() {
        return new ObfuscatedString(new long[]{8928592219191501083L, 3919212906180959542L}).toString() + this.extension;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.extension;
    }
}
