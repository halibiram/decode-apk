package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import androidx.annotation.BinderThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;

@VisibleForTesting
/* loaded from: classes2.dex */
public final class zzd extends zzac {

    @Nullable
    private BaseGmsClient zza;
    private final int zzb;

    public zzd(@NonNull BaseGmsClient baseGmsClient, int i) {
        this.zza = baseGmsClient;
        this.zzb = i;
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    @BinderThread
    public final void onPostInitComplete(int i, @NonNull IBinder iBinder, @Nullable Bundle bundle) {
        Preconditions.checkNotNull(this.zza, new ObfuscatedString(new long[]{3954737423314158742L, -1675754181619022438L, 7578868617747579354L, -7287009355575324950L, -1758246864087029148L, 5331545438914304089L, 6946597163266665233L, -6699815124017138518L, 6752557884779302704L, 5221436582714924314L}).toString());
        this.zza.onPostInitHandler(i, iBinder, bundle, this.zzb);
        this.zza = null;
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    @BinderThread
    public final void zzb(int i, @Nullable Bundle bundle) {
        Log.wtf(new ObfuscatedString(new long[]{-2745008340414611412L, 6096571126340829041L, -8438840233792106377L}).toString(), new ObfuscatedString(new long[]{-5729420549492038823L, 4881814591275899576L, 3705507461286904808L, 4134472831516754252L, 8648484809526363240L, -4219416171282859276L, 3363225973107623701L, -7833408571682032189L, -7286936883428507255L, 638567492068684564L}).toString(), new Exception());
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    @BinderThread
    public final void zzc(int i, @NonNull IBinder iBinder, @NonNull zzk zzkVar) {
        BaseGmsClient baseGmsClient = this.zza;
        Preconditions.checkNotNull(baseGmsClient, new ObfuscatedString(new long[]{8061457535548916369L, -1875140759076352388L, -8946186142773660342L, 489514937425965965L, -4983823263295447892L, 3094174236518724284L, -3252689691125338847L, -1267087389370791731L, 4233771844394831412L, 4812022136432431979L, -4266667713080206474L, 1895515989075356285L}).toString());
        Preconditions.checkNotNull(zzkVar);
        BaseGmsClient.zzj(baseGmsClient, zzkVar);
        onPostInitComplete(i, iBinder, zzkVar.zza);
    }
}
