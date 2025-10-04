package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zai {
    public final int zac;

    public zai(int i) {
        this.zac = i;
    }

    public static /* bridge */ /* synthetic */ Status zah(RemoteException remoteException) {
        return new Status(19, remoteException.getClass().getSimpleName() + new ObfuscatedString(new long[]{-6288709040114291869L, -5081269377298929407L}).toString() + remoteException.getLocalizedMessage());
    }

    public abstract void zad(@NonNull Status status);

    public abstract void zae(@NonNull Exception exc);

    public abstract void zaf(zabq<?> zabqVar);

    public abstract void zag(@NonNull zaad zaadVar, boolean z);
}
