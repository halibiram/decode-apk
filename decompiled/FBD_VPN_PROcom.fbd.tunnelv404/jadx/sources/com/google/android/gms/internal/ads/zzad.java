package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import defpackage.AbstractC0362x4440ab85;
import java.util.Arrays;
import java.util.UUID;

/* loaded from: classes2.dex */
public final class zzad implements Parcelable {
    public static final Parcelable.Creator<zzad> CREATOR = new zzac();
    public final UUID zza;

    @Nullable
    public final String zzb;
    public final String zzc;

    @Nullable
    public final byte[] zzd;
    private int zze;

    public zzad(Parcel parcel) {
        this.zza = new UUID(parcel.readLong(), parcel.readLong());
        this.zzb = parcel.readString();
        String readString = parcel.readString();
        int i = zzfy.zza;
        this.zzc = readString;
        this.zzd = parcel.createByteArray();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof zzad)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        zzad zzadVar = (zzad) obj;
        if (!zzfy.zzF(this.zzb, zzadVar.zzb) || !zzfy.zzF(this.zzc, zzadVar.zzc) || !zzfy.zzF(this.zza, zzadVar.zza) || !Arrays.equals(this.zzd, zzadVar.zzd)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode;
        int i = this.zze;
        if (i == 0) {
            int hashCode2 = this.zza.hashCode() * 31;
            String str = this.zzb;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int m2927x1378447b = AbstractC0362x4440ab85.m2927x1378447b((hashCode2 + hashCode) * 31, 31, this.zzc) + Arrays.hashCode(this.zzd);
            this.zze = m2927x1378447b;
            return m2927x1378447b;
        }
        return i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.zza.getMostSignificantBits());
        parcel.writeLong(this.zza.getLeastSignificantBits());
        parcel.writeString(this.zzb);
        parcel.writeString(this.zzc);
        parcel.writeByteArray(this.zzd);
    }

    public zzad(UUID uuid, @Nullable String str, String str2, @Nullable byte[] bArr) {
        uuid.getClass();
        this.zza = uuid;
        this.zzb = null;
        this.zzc = zzcb.zze(str2);
        this.zzd = bArr;
    }
}
