package com.google.android.gms.internal.ads;

import android.media.AudioDeviceInfo;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public interface zzqb {
    int zza(zzam zzamVar);

    long zzb(boolean z);

    zzcg zzc();

    zzpg zzd(zzam zzamVar);

    void zze(zzam zzamVar, int i, @Nullable int[] iArr);

    void zzf();

    void zzg();

    void zzh();

    void zzi();

    void zzj();

    void zzk();

    void zzl(zzk zzkVar);

    void zzm(int i);

    void zzn(zzl zzlVar);

    void zzo(zzel zzelVar);

    void zzp(zzpy zzpyVar);

    @RequiresApi(29)
    void zzq(int i, int i2);

    void zzr(zzcg zzcgVar);

    void zzs(@Nullable zzpb zzpbVar);

    @RequiresApi(23)
    void zzt(@Nullable AudioDeviceInfo audioDeviceInfo);

    void zzu(boolean z);

    void zzv(float f);

    boolean zzw(ByteBuffer byteBuffer, long j, int i);

    boolean zzx();

    boolean zzy();

    boolean zzz(zzam zzamVar);
}
