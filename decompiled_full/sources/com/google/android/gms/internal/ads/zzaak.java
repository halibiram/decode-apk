package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.view.Surface;
import androidx.annotation.RequiresApi;

@RequiresApi(17)
/* loaded from: classes2.dex */
public final class zzaak extends Surface {
    private static int zzb;
    private static boolean zzc;
    public final boolean zza;
    private final zzaai zzd;
    private boolean zze;

    public /* synthetic */ zzaak(zzaai zzaaiVar, SurfaceTexture surfaceTexture, boolean z, zzaaj zzaajVar) {
        super(surfaceTexture);
        this.zzd = zzaaiVar;
        this.zza = z;
    }

    public static zzaak zza(Context context, boolean z) {
        int i = 0;
        boolean z2 = true;
        if (z && !zzb(context)) {
            z2 = false;
        }
        zzek.zzf(z2);
        zzaai zzaaiVar = new zzaai();
        if (z) {
            i = zzb;
        }
        return zzaaiVar.zza(i);
    }

    public static synchronized boolean zzb(Context context) {
        int i;
        int i2;
        synchronized (zzaak.class) {
            try {
                if (!zzc) {
                    if (zzeu.zzc(context)) {
                        if (zzeu.zzd()) {
                            i2 = 1;
                        } else {
                            i2 = 2;
                        }
                    } else {
                        i2 = 0;
                    }
                    zzb = i2;
                    zzc = true;
                }
                i = zzb;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (i == 0) {
            return false;
        }
        return true;
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.zzd) {
            try {
                if (!this.zze) {
                    this.zzd.zzb();
                    this.zze = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
