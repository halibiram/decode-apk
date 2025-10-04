package com.google.android.gms.common.api.internal;

import androidx.annotation.Nullable;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.panda912.muddy.ObfuscatedString;
import j$.util.DesugarCollections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes2.dex */
public final class zaad {
    private final Map<BasePendingResult<?>, Boolean> zaa = DesugarCollections.synchronizedMap(new WeakHashMap());
    private final Map<TaskCompletionSource<?>, Boolean> zab = DesugarCollections.synchronizedMap(new WeakHashMap());

    private final void zah(boolean z, Status status) {
        HashMap hashMap;
        HashMap hashMap2;
        synchronized (this.zaa) {
            hashMap = new HashMap(this.zaa);
        }
        synchronized (this.zab) {
            hashMap2 = new HashMap(this.zab);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            if (z || ((Boolean) entry.getValue()).booleanValue()) {
                ((BasePendingResult) entry.getKey()).forceFailureUnlessReady(status);
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            if (z || ((Boolean) entry2.getValue()).booleanValue()) {
                ((TaskCompletionSource) entry2.getKey()).trySetException(new ApiException(status));
            }
        }
    }

    public final void zac(BasePendingResult<? extends Result> basePendingResult, boolean z) {
        this.zaa.put(basePendingResult, Boolean.valueOf(z));
        basePendingResult.addStatusListener(new zaab(this, basePendingResult));
    }

    public final <TResult> void zad(TaskCompletionSource<TResult> taskCompletionSource, boolean z) {
        this.zab.put(taskCompletionSource, Boolean.valueOf(z));
        taskCompletionSource.getTask().addOnCompleteListener(new zaac(this, taskCompletionSource));
    }

    public final void zae(int i, @Nullable String str) {
        StringBuilder sb = new StringBuilder(new ObfuscatedString(new long[]{2542147702413268101L, -4434827248895937607L, -5787841737880662475L, 1172029951994315439L, 4898649191856957223L, -7870952944559786168L, -6630950830533975323L}).toString());
        if (i == 1) {
            sb.append(new ObfuscatedString(new long[]{-3355128563220598705L, -4353786523421672073L, 5358382671127947910L, -297771243061214230L, 4382093531865247952L}).toString());
        } else if (i == 3) {
            sb.append(new ObfuscatedString(new long[]{7958843744674803827L, -2533565611845027014L, -6343972237268744471L, -6900382506548879806L, -6229618488222404814L}).toString());
        }
        if (str != null) {
            sb.append(new ObfuscatedString(new long[]{4498893140449518076L, -5809075604555133076L, 1277550469523948634L, -3550949372905671233L, 1506864139715886674L}).toString());
            sb.append(str);
        }
        zah(true, new Status(20, sb.toString()));
    }

    public final void zaf() {
        zah(false, GoogleApiManager.zaa);
    }

    public final boolean zag() {
        if (this.zaa.isEmpty() && this.zab.isEmpty()) {
            return false;
        }
        return true;
    }
}
