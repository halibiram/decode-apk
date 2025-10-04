package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.ExecutorService;

/* loaded from: classes2.dex */
public final class zzbbv {

    @VisibleForTesting
    zzayl zza;

    @VisibleForTesting
    boolean zzb;
    private final ExecutorService zzc;

    public zzbbv() {
        this.zzc = zzcdr.zzb;
    }

    public zzbbv(final Context context) {
        ExecutorService executorService = zzcdr.zzb;
        this.zzc = executorService;
        executorService.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbbq
            @Override // java.lang.Runnable
            public final void run() {
                boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeO)).booleanValue();
                zzbbv zzbbvVar = zzbbv.this;
                Context context2 = context;
                if (booleanValue) {
                    try {
                        zzbbvVar.zza = (zzayl) zzceg.zzb(context2, new ObfuscatedString(new long[]{6564829180247394854L, -8562045050389753086L, -3839026135523198378L, -8783036905562899205L, -7141399124093508755L, 8984143200071274399L, 8244376251230299426L, 5866209692203536608L, 4673471276915226933L}).toString(), new zzcee() { // from class: com.google.android.gms.internal.ads.zzbbr
                            /* JADX WARN: Multi-variable type inference failed */
                            @Override // com.google.android.gms.internal.ads.zzcee
                            public final Object zza(Object obj) {
                                return zzayk.zzb(obj);
                            }
                        });
                        zzbbvVar.zza.zze(ObjectWrapper.wrap(context2), new ObfuscatedString(new long[]{5807572307462199390L, -7705785711976003855L}).toString());
                        zzbbvVar.zzb = true;
                    } catch (RemoteException | zzcef | NullPointerException unused) {
                        zzcec.zze(new ObfuscatedString(new long[]{3154783948843415411L, -3094210734361841783L, -3446629952270017457L, -5022396077032990609L, -6191663657715270262L}).toString());
                    }
                }
            }
        });
    }
}
