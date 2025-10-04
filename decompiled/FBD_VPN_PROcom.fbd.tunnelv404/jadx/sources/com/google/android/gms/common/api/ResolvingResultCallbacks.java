package com.google.android.gms.common.api;

import android.app.Activity;
import android.content.IntentSender;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class ResolvingResultCallbacks<R extends Result> extends ResultCallbacks<R> {
    private final Activity zza;
    private final int zzb;

    public ResolvingResultCallbacks(@NonNull Activity activity, int i) {
        Preconditions.checkNotNull(activity, new ObfuscatedString(new long[]{-5811244702898721341L, 5447930640868564197L, -8828563799914640984L, -1225770261110603703L, 7804710700346177972L}).toString());
        this.zza = activity;
        this.zzb = i;
    }

    @Override // com.google.android.gms.common.api.ResultCallbacks
    @KeepForSdk
    public final void onFailure(@NonNull Status status) {
        if (status.hasResolution()) {
            try {
                status.startResolutionForResult(this.zza, this.zzb);
                return;
            } catch (IntentSender.SendIntentException unused) {
                new ObfuscatedString(new long[]{7729999379648813306L, -8552467166865007813L, 8266648531729223307L, -1107572367144313675L}).toString();
                new ObfuscatedString(new long[]{-5623183879757128876L, 4200304969830618454L, -3905385938605450853L, -1704506213584997988L, -2230377267257753938L}).toString();
                onUnresolvableFailure(new Status(8));
                return;
            }
        }
        onUnresolvableFailure(status);
    }

    @Override // com.google.android.gms.common.api.ResultCallbacks
    public abstract void onSuccess(@NonNull R r);

    public abstract void onUnresolvableFailure(@NonNull Status status);
}
