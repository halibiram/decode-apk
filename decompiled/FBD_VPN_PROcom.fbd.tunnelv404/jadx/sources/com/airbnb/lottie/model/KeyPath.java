package com.airbnb.lottie.model;

import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public class KeyPath {
    public static final KeyPath COMPOSITION = new KeyPath(new ObfuscatedString(new long[]{2155923908740636397L, 6639439220207144748L, 40250961558657396L}).toString());
    private final List<String> keys;

    @Nullable
    private KeyPathElement resolvedElement;

    public KeyPath(String... strArr) {
        this.keys = Arrays.asList(strArr);
    }

    private boolean endsWithGlobstar() {
        return ((String) AbstractC0362x4440ab85.m2928x75d576dc(1, this.keys)).equals(new ObfuscatedString(new long[]{-4907212315265859200L, -6914672833644099126L}).toString());
    }

    private boolean isContainer(String str) {
        return new ObfuscatedString(new long[]{-1760101138449992800L, 4804957417874815953L, 4195035020008308444L}).toString().equals(str);
    }

    @CheckResult
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public KeyPath addKey(String str) {
        KeyPath keyPath = new KeyPath(this);
        keyPath.keys.add(str);
        return keyPath;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        KeyPath keyPath = (KeyPath) obj;
        if (!this.keys.equals(keyPath.keys)) {
            return false;
        }
        KeyPathElement keyPathElement = this.resolvedElement;
        KeyPathElement keyPathElement2 = keyPath.resolvedElement;
        if (keyPathElement != null) {
            return keyPathElement.equals(keyPathElement2);
        }
        if (keyPathElement2 == null) {
            return true;
        }
        return false;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean fullyResolvesTo(String str, int i) {
        boolean z;
        boolean z2;
        if (i >= this.keys.size()) {
            return false;
        }
        if (i == this.keys.size() - 1) {
            z = true;
        } else {
            z = false;
        }
        String str2 = this.keys.get(i);
        if (!str2.equals(new ObfuscatedString(new long[]{-5401523364680278964L, -3498032428576650921L}).toString())) {
            if (!str2.equals(str) && !str2.equals(new ObfuscatedString(new long[]{4561235147981402754L, 913772372039699741L}).toString())) {
                z2 = false;
            } else {
                z2 = true;
            }
            if ((z || (i == this.keys.size() - 2 && endsWithGlobstar())) && z2) {
                return true;
            }
            return false;
        }
        if (!z && this.keys.get(i + 1).equals(str)) {
            if (i == this.keys.size() - 2) {
                return true;
            }
            if (i == this.keys.size() - 3 && endsWithGlobstar()) {
                return true;
            }
            return false;
        }
        if (z) {
            return true;
        }
        int i2 = i + 1;
        if (i2 < this.keys.size() - 1) {
            return false;
        }
        return this.keys.get(i2).equals(str);
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public KeyPathElement getResolvedElement() {
        return this.resolvedElement;
    }

    public int hashCode() {
        int i;
        int hashCode = this.keys.hashCode() * 31;
        KeyPathElement keyPathElement = this.resolvedElement;
        if (keyPathElement != null) {
            i = keyPathElement.hashCode();
        } else {
            i = 0;
        }
        return hashCode + i;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public int incrementDepthBy(String str, int i) {
        if (isContainer(str)) {
            return 0;
        }
        if (!this.keys.get(i).equals(new ObfuscatedString(new long[]{2658922695316000L, 2940348912450846129L}).toString())) {
            return 1;
        }
        if (i != this.keys.size() - 1 && this.keys.get(i + 1).equals(str)) {
            return 2;
        }
        return 0;
    }

    public String keysToString() {
        return this.keys.toString();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean matches(String str, int i) {
        if (isContainer(str)) {
            return true;
        }
        if (i >= this.keys.size()) {
            return false;
        }
        if (this.keys.get(i).equals(str) || this.keys.get(i).equals(new ObfuscatedString(new long[]{5929973002058842396L, -7408934984369245511L}).toString()) || this.keys.get(i).equals(new ObfuscatedString(new long[]{-9154519104285675834L, 904533896998924924L}).toString())) {
            return true;
        }
        return false;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean propagateToChildren(String str, int i) {
        if (new ObfuscatedString(new long[]{-5431798163550208451L, 4515652704385646796L, -8554528552985083130L}).toString().equals(str) || i < this.keys.size() - 1 || this.keys.get(i).equals(new ObfuscatedString(new long[]{-8834335665332666254L, 9126550066147616505L}).toString())) {
            return true;
        }
        return false;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public KeyPath resolve(KeyPathElement keyPathElement) {
        KeyPath keyPath = new KeyPath(this);
        keyPath.resolvedElement = keyPathElement;
        return keyPath;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-2603359059723009947L, -4598230477422936657L, -1456924570742179623L}).toString());
        sb.append(this.keys);
        sb.append(new ObfuscatedString(new long[]{8729152924292566438L, 8353832159371865719L, 6772252181880714249L}).toString());
        if (this.resolvedElement != null) {
            z = true;
        } else {
            z = false;
        }
        sb.append(z);
        sb.append('}');
        return sb.toString();
    }

    private KeyPath(KeyPath keyPath) {
        this.keys = new ArrayList(keyPath.keys);
        this.resolvedElement = keyPath.resolvedElement;
    }
}
