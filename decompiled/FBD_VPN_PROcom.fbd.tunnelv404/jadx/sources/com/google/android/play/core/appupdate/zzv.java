package com.google.android.play.core.appupdate;

import com.google.android.play.core.appupdate.AppUpdateOptions;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzv extends AppUpdateOptions.Builder {
    private int zza;
    private boolean zzb;
    private byte zzc;

    @Override // com.google.android.play.core.appupdate.AppUpdateOptions.Builder
    public final AppUpdateOptions build() {
        if (this.zzc != 3) {
            StringBuilder sb = new StringBuilder();
            if ((this.zzc & 1) == 0) {
                sb.append(new ObfuscatedString(new long[]{-8793463497506456472L, -2928023561598216776L, 252985961304042117L}).toString());
            }
            if ((this.zzc & 2) == 0) {
                sb.append(new ObfuscatedString(new long[]{5428482947279025935L, -5894077515686079814L, 6078350372150843066L, -1681501777651010212L}).toString());
            }
            throw new IllegalStateException(new ObfuscatedString(new long[]{6619002397849293466L, -278030398244247071L, 2457283817841364778L, -4624134039470096934L, -4241059401992282797L}).toString().concat(sb.toString()));
        }
        return new zzx(this.zza, this.zzb, null);
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateOptions.Builder
    public final AppUpdateOptions.Builder setAllowAssetPackDeletion(boolean z) {
        this.zzb = z;
        this.zzc = (byte) (this.zzc | 2);
        return this;
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateOptions.Builder
    public final AppUpdateOptions.Builder setAppUpdateType(int i) {
        this.zza = i;
        this.zzc = (byte) (this.zzc | 1);
        return this;
    }
}
