package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzlg {
    public final long zza;
    public final float zzb;
    public final long zzc;

    public /* synthetic */ zzlg(zzle zzleVar, zzlf zzlfVar) {
        this.zza = zzle.zzc(zzleVar);
        this.zzb = zzle.zza(zzleVar);
        this.zzc = zzle.zzb(zzleVar);
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzlg)) {
            return false;
        }
        zzlg zzlgVar = (zzlg) obj;
        if (this.zza == zzlgVar.zza && this.zzb == zzlgVar.zzb && this.zzc == zzlgVar.zzc) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.zza), Float.valueOf(this.zzb), Long.valueOf(this.zzc)});
    }

    public final zzle zza() {
        return new zzle(this, null);
    }
}
