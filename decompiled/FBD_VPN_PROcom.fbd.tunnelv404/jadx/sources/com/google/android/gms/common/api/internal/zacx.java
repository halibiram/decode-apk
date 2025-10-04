package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zacx implements Continuation<Boolean, Void> {
    @Override // com.google.android.gms.tasks.Continuation
    public final /* bridge */ /* synthetic */ Void then(@NonNull Task<Boolean> task) {
        if (task.getResult().booleanValue()) {
            return null;
        }
        throw new ApiException(new Status(13, new ObfuscatedString(new long[]{-1500337234657037712L, -1146259543247031686L, 2855135446700554306L, -8275203310984563606L, 1782251505205542589L}).toString()));
    }
}
