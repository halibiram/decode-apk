package com.google.android.play.core.install;

import com.google.android.play.core.install.model.InstallErrorCode;
import com.google.android.play.core.install.model.InstallStatus;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
final class zza extends InstallState {
    private final int zza;
    private final long zzb;
    private final long zzc;
    private final int zzd;
    private final String zze;

    public zza(int i, long j, long j2, int i2, String str) {
        this.zza = i;
        this.zzb = j;
        this.zzc = j2;
        this.zzd = i2;
        if (str != null) {
            this.zze = str;
            return;
        }
        throw new NullPointerException(new ObfuscatedString(new long[]{7861580935113968270L, -1414316267654149700L, -7621329650520662356L}).toString());
    }

    @Override // com.google.android.play.core.install.InstallState
    public final long bytesDownloaded() {
        return this.zzb;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof InstallState) {
            InstallState installState = (InstallState) obj;
            if (this.zza == installState.installStatus() && this.zzb == installState.bytesDownloaded() && this.zzc == installState.totalBytesToDownload() && this.zzd == installState.installErrorCode() && this.zze.equals(installState.packageName())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zza ^ 1000003;
        long j = this.zzb;
        long j2 = this.zzc;
        return (((((((i * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003) ^ this.zzd) * 1000003) ^ this.zze.hashCode();
    }

    @Override // com.google.android.play.core.install.InstallState
    @InstallErrorCode
    public final int installErrorCode() {
        return this.zzd;
    }

    @Override // com.google.android.play.core.install.InstallState
    @InstallStatus
    public final int installStatus() {
        return this.zza;
    }

    @Override // com.google.android.play.core.install.InstallState
    public final String packageName() {
        return this.zze;
    }

    public final String toString() {
        int i = this.zza;
        long j = this.zzb;
        long j2 = this.zzc;
        int i2 = this.zzd;
        String str = this.zze;
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{6527029506409321596L, -8756676315684564203L, -7663836852653785795L, 7812883485992428236L, 6993553787166450365L}).toString());
        sb.append(i);
        sb.append(new ObfuscatedString(new long[]{1300192485084295415L, 1405760334339454909L, 3554247647090132854L, -6151818655298674374L}).toString());
        sb.append(j);
        sb.append(new ObfuscatedString(new long[]{9039114668606997983L, -7026028095711477960L, 8519171887414698864L, 6809190074717463823L}).toString());
        sb.append(j2);
        sb.append(new ObfuscatedString(new long[]{-5678570099709807707L, 9211978536394402529L, -5438370938208627737L, 9097618514655711963L}).toString());
        sb.append(i2);
        sb.append(new ObfuscatedString(new long[]{4765382699825081587L, 371746868890238883L, -2003519017712755834L}).toString());
        sb.append(str);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{2941210422855694281L, -9088624120697478674L}), sb);
    }

    @Override // com.google.android.play.core.install.InstallState
    public final long totalBytesToDownload() {
        return this.zzc;
    }
}
