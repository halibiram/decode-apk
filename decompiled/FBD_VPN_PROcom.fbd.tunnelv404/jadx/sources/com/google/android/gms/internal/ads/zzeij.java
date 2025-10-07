package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.view.InputEvent;
import androidx.annotation.Nullable;
import androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;

/* loaded from: classes2.dex */
public final class zzeij {

    @Nullable
    private MeasurementManagerFutures zza;
    private final Context zzb;

    public zzeij(Context context) {
        this.zzb = context;
    }

    public final ListenableFuture zza() {
        MeasurementManagerFutures from = MeasurementManagerFutures.from(this.zzb);
        this.zza = from;
        if (from == null) {
            return zzgen.zzg(new IllegalStateException(new ObfuscatedString(new long[]{6743329620695385783L, 8537765105511488700L, -8204255693918156714L, -595954757272266609L, -5383950552854537797L, -3656217398768605557L}).toString()));
        }
        return from.getMeasurementApiStatusAsync();
    }

    public final ListenableFuture zzb(Uri uri, InputEvent inputEvent) {
        MeasurementManagerFutures measurementManagerFutures = this.zza;
        Objects.requireNonNull(measurementManagerFutures);
        return measurementManagerFutures.registerSourceAsync(uri, inputEvent);
    }
}
