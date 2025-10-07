package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.api.internal.LifecycleFragment;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zag implements DialogInterface.OnClickListener {
    public static zag zab(Activity activity, @Nullable Intent intent, int i) {
        return new zad(intent, activity, i);
    }

    public static zag zac(@NonNull Fragment fragment, @Nullable Intent intent, int i) {
        return new zae(intent, fragment, i);
    }

    public static zag zad(@NonNull LifecycleFragment lifecycleFragment, @Nullable Intent intent, int i) {
        return new zaf(intent, lifecycleFragment, 2);
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        try {
            zaa();
        } catch (ActivityNotFoundException unused) {
            new ObfuscatedString(new long[]{6341875344774068706L, 1480262488406056500L, 5420293469311306403L, 5010479906415989874L, 5477266101768319024L, -6695243167404877414L}).toString();
            new ObfuscatedString(new long[]{5835647920002502440L, -8310499418283728621L, 8382979893521603308L, -7255312092252975635L, -4059106384479522711L, 7760396455996772462L, 3813320718487572543L, 3822541336062418128L, -7832408194235618749L, -2847850876638041536L, -7968340248598727987L, 2719752827987476814L, 3426088958165541289L, -1301313229367373403L, 1943839545921993498L, 727788301256914556L, 8955014564703138364L, -1751684497019798980L, -2729555885653606584L, 7831888106179766848L, -3653888175526684493L}).toString();
            Build.FINGERPRINT.contains(new ObfuscatedString(new long[]{-5399642861567126098L, 6357885837691691333L}).toString());
            new ObfuscatedString(new long[]{-3308037074224312203L, 6230091838163205036L, -1982759735830728816L}).toString();
        } finally {
            dialogInterface.dismiss();
        }
    }

    public abstract void zaa();
}
