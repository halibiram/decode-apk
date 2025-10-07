package com.google.android.play.core.install;

import android.content.Intent;
import androidx.annotation.NonNull;
import com.google.android.play.core.appupdate.internal.zzm;
import com.google.android.play.core.install.model.InstallErrorCode;
import com.google.android.play.core.install.model.InstallStatus;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class InstallState {
    public static InstallState zza(@InstallStatus int i, long j, long j2, @InstallErrorCode int i2, @NonNull String str) {
        return new zza(i, j, j2, i2, str);
    }

    public static InstallState zzb(@NonNull Intent intent, @NonNull zzm zzmVar) {
        zzmVar.zza(new ObfuscatedString(new long[]{7791984708033836075L, 2746977943634853517L, -1685006086105980969L, -3073321129327402450L, 5517594380716869220L, 2821782856491715840L, -1633210600825917460L, 3774110062318215632L, 8167044807767825179L}).toString(), new Object[0]);
        zzmVar.zza(new ObfuscatedString(new long[]{-7545921776588119466L, 6837982410651746823L, -5361066326878658793L, 1354550925611670162L}).toString(), new ObfuscatedString(new long[]{-8100944757178989496L, 4400345754131508262L, -8283948851327962876L}).toString(), Integer.valueOf(intent.getIntExtra(new ObfuscatedString(new long[]{4301147420482877446L, 5876425349692061284L, -9158313436062866970L}).toString(), 0)));
        zzmVar.zza(new ObfuscatedString(new long[]{80132305408504353L, 4820386492983531448L, -333912554700236337L, -92920861170587295L}).toString(), new ObfuscatedString(new long[]{-5191842337236644575L, 6119236810836409869L, 5758792783715051618L}).toString(), Integer.valueOf(intent.getIntExtra(new ObfuscatedString(new long[]{2129894087622220069L, 7066897178313520699L, 1414011316492617818L}).toString(), 0)));
        String obfuscatedString = new ObfuscatedString(new long[]{1283443715837939328L, -5971557282945277114L, 284748631137531781L, 1052462320826375701L}).toString();
        return new zza(intent.getIntExtra(new ObfuscatedString(new long[]{-1584369487913701985L, 7629176774700164182L, 2491379314426783152L}).toString(), 0), intent.getLongExtra(new ObfuscatedString(new long[]{-5442693275165381761L, 5095898225298694166L, 8668916241613848771L}).toString(), 0L), intent.getLongExtra(obfuscatedString, 0L), intent.getIntExtra(new ObfuscatedString(new long[]{-4660335468305480474L, -6268970966091520001L, -6409287047113383321L}).toString(), 0), intent.getStringExtra(new ObfuscatedString(new long[]{-5229118100494581162L, -7455098737963567927L, 7722933493797049943L}).toString()));
    }

    public abstract long bytesDownloaded();

    @InstallErrorCode
    public abstract int installErrorCode();

    @InstallStatus
    public abstract int installStatus();

    public abstract String packageName();

    public abstract long totalBytesToDownload();
}
