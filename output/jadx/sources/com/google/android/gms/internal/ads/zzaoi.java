package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import j$.util.DesugarCollections;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzaoi {
    public final int zza;

    @Nullable
    public final String zzb;
    public final List zzc;
    public final byte[] zzd;

    public zzaoi(int i, @Nullable String str, @Nullable List list, byte[] bArr) {
        List unmodifiableList;
        this.zza = i;
        this.zzb = str;
        if (list == null) {
            unmodifiableList = Collections.emptyList();
        } else {
            unmodifiableList = DesugarCollections.unmodifiableList(list);
        }
        this.zzc = unmodifiableList;
        this.zzd = bArr;
    }
}
