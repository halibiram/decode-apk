package com.google.android.play.core.review;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.android.play.core.review.internal.zzt;
import com.google.android.play.core.review.internal.zzw;
import com.panda912.muddy.ObfuscatedString;

@SuppressLint({"RestrictedApi"})
/* loaded from: classes2.dex */
public final class zzi {
    private static final com.google.android.play.core.review.internal.zzi zzb = new com.google.android.play.core.review.internal.zzi(new ObfuscatedString(new long[]{-8626580767101824448L, -6849078405295295868L, 4682751273676292931L}).toString());

    @Nullable
    @VisibleForTesting
    zzt zza;
    private final String zzc;

    /* JADX WARN: Type inference failed for: r7v0, types: [com.google.android.play.core.review.zze] */
    public zzi(Context context) {
        this.zzc = context.getPackageName();
        if (zzw.zza(context)) {
            Intent intent = new Intent(new ObfuscatedString(new long[]{4907290072808787744L, 8367662381146437880L, -740603581123150332L, 5295100689308729952L, -5778361049576608972L, -2155407361041464590L, 2359831229269684252L, 2104969707231784252L}).toString()).setPackage(new ObfuscatedString(new long[]{-848704531977609620L, -5037412692879617866L, -7943146072616612278L, -161655251671283736L}).toString());
            this.zza = new zzt(context, zzb, new ObfuscatedString(new long[]{-3672159885486603994L, -2487768555841607784L, 9107268228419078321L, -3615973163497719919L, 1833567895109461042L, -1374921023603990108L, -9113921745289279734L, -628204282807948791L, 2083889870158138929L}).toString(), intent, new Object() { // from class: com.google.android.play.core.review.zze
            }, null);
        }
    }

    public final Task zza() {
        String str = this.zzc;
        com.google.android.play.core.review.internal.zzi zziVar = zzb;
        zziVar.zzc(new ObfuscatedString(new long[]{-2922760842356803490L, -2262886831976554162L, 5934817338749440323L, 444232673112670745L}).toString(), str);
        if (this.zza == null) {
            zziVar.zza(new ObfuscatedString(new long[]{-2451667794380910006L, 300061358669717848L, -5661192650804560182L, 2471981484672777636L, -6636736764703877434L, 1434596302099674913L, 1829238243997455452L, -964590730318364943L, -6834467940147852487L, -371469668119033780L}).toString(), new Object[0]);
            return Tasks.forException(new ReviewException(-1));
        }
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.zza.zzs(new zzf(this, taskCompletionSource, taskCompletionSource), taskCompletionSource);
        return taskCompletionSource.getTask();
    }
}
