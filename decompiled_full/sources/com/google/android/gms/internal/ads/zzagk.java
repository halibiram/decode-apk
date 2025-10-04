package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzagk extends zzagr {
    public static final Parcelable.Creator<zzagk> CREATOR = new zzagj();
    public final String zza;
    public final String zzb;
    public final String zzc;

    public zzagk(Parcel parcel) {
        super(new ObfuscatedString(new long[]{-1699815921603315100L, -7044054954937124713L}).toString());
        String readString = parcel.readString();
        int i = zzfy.zza;
        this.zza = readString;
        this.zzb = parcel.readString();
        this.zzc = parcel.readString();
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzagk.class == obj.getClass()) {
            zzagk zzagkVar = (zzagk) obj;
            if (zzfy.zzF(this.zzb, zzagkVar.zzb) && zzfy.zzF(this.zza, zzagkVar.zza) && zzfy.zzF(this.zzc, zzagkVar.zzc)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int i2;
        String str = this.zza;
        int i3 = 0;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        String str2 = this.zzb;
        if (str2 != null) {
            i2 = str2.hashCode();
        } else {
            i2 = 0;
        }
        int i4 = i + 527;
        String str3 = this.zzc;
        if (str3 != null) {
            i3 = str3.hashCode();
        }
        return (((i4 * 31) + i2) * 31) + i3;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final String toString() {
        return this.zzf + new ObfuscatedString(new long[]{547765134121893129L, 1278381199914350670L, 8148091681567811094L}).toString() + this.zza + new ObfuscatedString(new long[]{-1390390457594543064L, 2625961863680939773L, 7212368857124632775L}).toString() + this.zzb;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zzf);
        parcel.writeString(this.zza);
        parcel.writeString(this.zzc);
    }

    public zzagk(String str, String str2, String str3) {
        super(new ObfuscatedString(new long[]{-6781564138762303601L, -2142205663261746844L}).toString());
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
    }
}
