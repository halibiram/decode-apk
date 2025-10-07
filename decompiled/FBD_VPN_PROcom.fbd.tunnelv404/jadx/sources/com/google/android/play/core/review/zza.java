package com.google.android.play.core.review;

import android.app.PendingIntent;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zza extends ReviewInfo {
    private final PendingIntent zza;
    private final boolean zzb;

    public zza(PendingIntent pendingIntent, boolean z) {
        if (pendingIntent != null) {
            this.zza = pendingIntent;
            this.zzb = z;
            return;
        }
        throw new NullPointerException(new ObfuscatedString(new long[]{4006743263213488297L, 1892671079957022175L, -4361352028002558379L, 5843273717009758690L}).toString());
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ReviewInfo) {
            ReviewInfo reviewInfo = (ReviewInfo) obj;
            if (this.zza.equals(reviewInfo.zza()) && this.zzb == reviewInfo.zzb()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int hashCode = this.zza.hashCode() ^ 1000003;
        if (true != this.zzb) {
            i = 1237;
        } else {
            i = 1231;
        }
        return (hashCode * 1000003) ^ i;
    }

    public final String toString() {
        String obj = this.zza.toString();
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-3212638533042198448L, 4032480388755552955L, 6697070428544176933L, 3298243956146081230L, 6073062171667566447L}).toString());
        sb.append(obj);
        sb.append(new ObfuscatedString(new long[]{4101038490635329287L, -2935725355936330376L, 4276318261419670906L}).toString());
        sb.append(this.zzb);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{5556333035139364677L, 7854052521880036118L}), sb);
    }

    @Override // com.google.android.play.core.review.ReviewInfo
    public final PendingIntent zza() {
        return this.zza;
    }

    @Override // com.google.android.play.core.review.ReviewInfo
    public final boolean zzb() {
        return this.zzb;
    }
}
