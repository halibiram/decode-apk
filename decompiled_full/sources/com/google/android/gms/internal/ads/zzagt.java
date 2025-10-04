package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzagt extends zzagr {
    public static final Parcelable.Creator<zzagt> CREATOR = new zzags();
    public final String zza;
    public final String zzb;
    public final String zzc;

    public zzagt(Parcel parcel) {
        super(new ObfuscatedString(new long[]{3173352683789682634L, 3999688540969717842L}).toString());
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
        if (obj != null && zzagt.class == obj.getClass()) {
            zzagt zzagtVar = (zzagt) obj;
            if (zzfy.zzF(this.zzb, zzagtVar.zzb) && zzfy.zzF(this.zza, zzagtVar.zza) && zzfy.zzF(this.zzc, zzagtVar.zzc)) {
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
        return this.zzf + new ObfuscatedString(new long[]{1480898253150996529L, -4939077848131297263L, 324754518606888290L}).toString() + this.zza + new ObfuscatedString(new long[]{-4340679563734593015L, -6656851409385125472L, -4853901517386093998L}).toString() + this.zzb;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zzf);
        parcel.writeString(this.zza);
        parcel.writeString(this.zzc);
    }

    public zzagt(String str, String str2, String str3) {
        super(new ObfuscatedString(new long[]{-1917638926846055L, 7255884555140176725L}).toString());
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
    }
}
