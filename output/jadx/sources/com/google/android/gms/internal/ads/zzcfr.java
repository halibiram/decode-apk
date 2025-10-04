package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.TextureView;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public abstract class zzcfr extends TextureView implements zzcgo {
    protected final zzcgf zza;
    protected final zzcgp zzb;

    public zzcfr(Context context) {
        super(context);
        this.zza = new zzcgf();
        this.zzb = new zzcgp(context, this);
    }

    public void zzA(int i) {
    }

    public void zzB(int i) {
    }

    public void zzC(@Nullable String str, @Nullable String[] strArr, @Nullable Integer num) {
        zzs(str);
    }

    public abstract int zza();

    public abstract int zzb();

    public abstract int zzc();

    public abstract int zzd();

    public abstract int zze();

    public abstract long zzf();

    public abstract long zzg();

    public abstract long zzh();

    public abstract String zzj();

    public abstract void zzn();

    public abstract void zzo();

    public abstract void zzp();

    public abstract void zzq(int i);

    public abstract void zzr(zzcfq zzcfqVar);

    public abstract void zzs(@Nullable String str);

    public abstract void zzt();

    public abstract void zzu(float f, float f2);

    @Nullable
    public Integer zzw() {
        return null;
    }

    public void zzx(int i) {
    }

    public void zzy(int i) {
    }

    public void zzz(int i) {
    }
}
