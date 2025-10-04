package com.google.android.gms.common.api;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
public class ApiException extends Exception {

    @NonNull
    @Deprecated
    protected final Status mStatus;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ApiException(@NonNull Status status) {
        super(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{7686861519427557535L, -406201069805191660L}), AbstractC0749x8313616e.m3340x952a0a9e(r0), r1));
        String obfuscatedString;
        int statusCode = status.getStatusCode();
        if (status.getStatusMessage() != null) {
            obfuscatedString = status.getStatusMessage();
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{-8441484261752097269L}).toString();
        }
        this.mStatus = status;
    }

    @NonNull
    public Status getStatus() {
        return this.mStatus;
    }

    public int getStatusCode() {
        return this.mStatus.getStatusCode();
    }

    @Nullable
    @Deprecated
    public String getStatusMessage() {
        return this.mStatus.getStatusMessage();
    }
}
