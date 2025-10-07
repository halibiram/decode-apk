package com.google.android.play.core.appupdate;

import android.app.PendingIntent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.play.core.install.model.AppUpdateType;
import com.google.android.play.core.install.model.InstallStatus;
import com.google.android.play.core.install.model.UpdateAvailability;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public class AppUpdateInfo {

    @NonNull
    private final String zza;
    private final int zzb;

    @UpdateAvailability
    private final int zzc;

    @InstallStatus
    private final int zzd;

    @Nullable
    private final Integer zze;
    private final int zzf;
    private final long zzg;
    private final long zzh;
    private final long zzi;
    private final long zzj;

    @Nullable
    private final PendingIntent zzk;

    @Nullable
    private final PendingIntent zzl;

    @Nullable
    private final PendingIntent zzm;

    @Nullable
    private final PendingIntent zzn;
    private final Map zzo;
    private boolean zzp = false;

    private AppUpdateInfo(@NonNull String str, int i, @UpdateAvailability int i2, @InstallStatus int i3, @Nullable Integer num, int i4, long j, long j2, long j3, long j4, @Nullable PendingIntent pendingIntent, @Nullable PendingIntent pendingIntent2, @Nullable PendingIntent pendingIntent3, @Nullable PendingIntent pendingIntent4, Map map) {
        this.zza = str;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = i3;
        this.zze = num;
        this.zzf = i4;
        this.zzg = j;
        this.zzh = j2;
        this.zzi = j3;
        this.zzj = j4;
        this.zzk = pendingIntent;
        this.zzl = pendingIntent2;
        this.zzm = pendingIntent3;
        this.zzn = pendingIntent4;
        this.zzo = map;
    }

    public static AppUpdateInfo zzb(@NonNull String str, int i, @UpdateAvailability int i2, @InstallStatus int i3, @Nullable Integer num, int i4, long j, long j2, long j3, long j4, @Nullable PendingIntent pendingIntent, @Nullable PendingIntent pendingIntent2, @Nullable PendingIntent pendingIntent3, @Nullable PendingIntent pendingIntent4, Map map) {
        return new AppUpdateInfo(str, i, i2, i3, num, i4, j, j2, j3, j4, pendingIntent, pendingIntent2, pendingIntent3, pendingIntent4, map);
    }

    private static Set zze(@Nullable Set set) {
        if (set == null) {
            return new HashSet();
        }
        return set;
    }

    private final boolean zzf(AppUpdateOptions appUpdateOptions) {
        if (appUpdateOptions.allowAssetPackDeletion() && this.zzi <= this.zzj) {
            return true;
        }
        return false;
    }

    public int availableVersionCode() {
        return this.zzb;
    }

    public long bytesDownloaded() {
        return this.zzg;
    }

    @Nullable
    public Integer clientVersionStalenessDays() {
        return this.zze;
    }

    public Set<Integer> getFailedUpdatePreconditions(AppUpdateOptions appUpdateOptions) {
        if (appUpdateOptions.allowAssetPackDeletion()) {
            if (appUpdateOptions.appUpdateType() == 0) {
                return zze((Set) this.zzo.get(new ObfuscatedString(new long[]{-4440271869986616658L, -7923577618961122654L, -4367133061598534732L, 6208550925598825132L, 6437083666445233288L}).toString()));
            }
            return zze((Set) this.zzo.get(new ObfuscatedString(new long[]{8929631228959481856L, -5512363351602062212L, -148000263195266813L, -2134044324814693714L, -3858980771320335394L}).toString()));
        }
        if (appUpdateOptions.appUpdateType() == 0) {
            return zze((Set) this.zzo.get(new ObfuscatedString(new long[]{-501914191681870682L, -965044239973341506L, 6255146230039956103L, -8839615913898994100L}).toString()));
        }
        return zze((Set) this.zzo.get(new ObfuscatedString(new long[]{502979669256431948L, -7861563570323950306L, -5709298987499548570L}).toString()));
    }

    @InstallStatus
    public int installStatus() {
        return this.zzd;
    }

    public boolean isUpdateTypeAllowed(@AppUpdateType int i) {
        return zza(AppUpdateOptions.defaultOptions(i)) != null;
    }

    @NonNull
    public String packageName() {
        return this.zza;
    }

    public long totalBytesToDownload() {
        return this.zzh;
    }

    @UpdateAvailability
    public int updateAvailability() {
        return this.zzc;
    }

    public int updatePriority() {
        return this.zzf;
    }

    @Nullable
    public final PendingIntent zza(AppUpdateOptions appUpdateOptions) {
        if (appUpdateOptions.appUpdateType() == 0) {
            PendingIntent pendingIntent = this.zzl;
            if (pendingIntent != null) {
                return pendingIntent;
            }
            if (!zzf(appUpdateOptions)) {
                return null;
            }
            return this.zzn;
        }
        if (appUpdateOptions.appUpdateType() == 1) {
            PendingIntent pendingIntent2 = this.zzk;
            if (pendingIntent2 != null) {
                return pendingIntent2;
            }
            if (zzf(appUpdateOptions)) {
                return this.zzm;
            }
        }
        return null;
    }

    public final void zzc() {
        this.zzp = true;
    }

    public final boolean zzd() {
        return this.zzp;
    }

    public boolean isUpdateTypeAllowed(@NonNull AppUpdateOptions appUpdateOptions) {
        return zza(appUpdateOptions) != null;
    }
}
