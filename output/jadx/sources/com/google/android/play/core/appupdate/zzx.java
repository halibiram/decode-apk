package com.google.android.play.core.appupdate;

import com.google.android.play.core.install.model.AppUpdateType;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
final class zzx extends AppUpdateOptions {
    private final int zza;
    private final boolean zzb;

    public /* synthetic */ zzx(int i, boolean z, zzw zzwVar) {
        this.zza = i;
        this.zzb = z;
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateOptions
    public final boolean allowAssetPackDeletion() {
        return this.zzb;
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateOptions
    @AppUpdateType
    public final int appUpdateType() {
        return this.zza;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AppUpdateOptions) {
            AppUpdateOptions appUpdateOptions = (AppUpdateOptions) obj;
            if (this.zza == appUpdateOptions.appUpdateType() && this.zzb == appUpdateOptions.allowAssetPackDeletion()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.zza ^ 1000003) * 1000003) ^ (true != this.zzb ? 1237 : 1231);
    }

    public final String toString() {
        int i = this.zza;
        boolean z = this.zzb;
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{2389711251026640455L, -391657844119369622L, 2340829170869988953L, 5462564967087503708L, 1415468394927462804L}).toString());
        sb.append(i);
        sb.append(new ObfuscatedString(new long[]{-654803188492529579L, -8013801480170841203L, 6474555649326509488L, 3072253524089664794L, -37797955950403438L}).toString());
        sb.append(z);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{1983636552123130613L, -5710669692730545689L}), sb);
    }
}
