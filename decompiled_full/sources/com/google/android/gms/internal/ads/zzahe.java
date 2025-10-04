package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzahe implements zzbx {
    public static final Parcelable.Creator<zzahe> CREATOR = new zzahc();
    public final long zza;
    public final long zzb;
    public final long zzc;
    public final long zzd;
    public final long zze;

    public zzahe(long j, long j2, long j3, long j4, long j5) {
        this.zza = j;
        this.zzb = j2;
        this.zzc = j3;
        this.zzd = j4;
        this.zze = j5;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzahe.class == obj.getClass()) {
            zzahe zzaheVar = (zzahe) obj;
            if (this.zza == zzaheVar.zza && this.zzb == zzaheVar.zzb && this.zzc == zzaheVar.zzc && this.zzd == zzaheVar.zzd && this.zze == zzaheVar.zze) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.zze;
        long j2 = this.zza;
        int i = ((int) (j2 ^ (j2 >>> 32))) + 527;
        long j3 = j ^ (j >>> 32);
        long j4 = this.zzd;
        long j5 = j4 ^ (j4 >>> 32);
        long j6 = this.zzc;
        long j7 = j6 ^ (j6 >>> 32);
        long j8 = this.zzb;
        return (((((((i * 31) + ((int) (j8 ^ (j8 >>> 32)))) * 31) + ((int) j7)) * 31) + ((int) j5)) * 31) + ((int) j3);
    }

    public final String toString() {
        return new ObfuscatedString(new long[]{-4886625792546229856L, -7084717460683162328L, 8290060379239932149L, -9099593679113030537L, 2812025571658062081L, -6049975470199203846L, -9186423122637211459L}).toString() + this.zza + new ObfuscatedString(new long[]{5891528198475805448L, 3499863638761464044L, -2495369178395099537L}).toString() + this.zzb + new ObfuscatedString(new long[]{-2682602905507687407L, 1056588620328927029L, -254800841464839282L, -8868170698709071217L, 2337126547075286048L}).toString() + this.zzc + new ObfuscatedString(new long[]{1374254590744082538L, -2701540837149061043L, -3817008931904043860L, -1038896596316234731L}).toString() + this.zzd + new ObfuscatedString(new long[]{-2016733591642810117L, 7060091717932416541L, -7352801153643807842L}).toString() + this.zze;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.zza);
        parcel.writeLong(this.zzb);
        parcel.writeLong(this.zzc);
        parcel.writeLong(this.zzd);
        parcel.writeLong(this.zze);
    }

    @Override // com.google.android.gms.internal.ads.zzbx
    public final /* synthetic */ void zza(zzbt zzbtVar) {
    }

    public /* synthetic */ zzahe(Parcel parcel, zzahd zzahdVar) {
        this.zza = parcel.readLong();
        this.zzb = parcel.readLong();
        this.zzc = parcel.readLong();
        this.zzd = parcel.readLong();
        this.zze = parcel.readLong();
    }
}
