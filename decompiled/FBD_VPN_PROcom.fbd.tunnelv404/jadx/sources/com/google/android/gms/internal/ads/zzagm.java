package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzagm extends zzagr {
    public static final Parcelable.Creator<zzagm> CREATOR = new zzagl();
    public final String zza;
    public final String zzb;
    public final String zzc;
    public final byte[] zzd;

    public zzagm(Parcel parcel) {
        super(new ObfuscatedString(new long[]{-8989018683920584928L, -2079426776999855816L}).toString());
        String readString = parcel.readString();
        int i = zzfy.zza;
        this.zza = readString;
        this.zzb = parcel.readString();
        this.zzc = parcel.readString();
        this.zzd = parcel.createByteArray();
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzagm.class == obj.getClass()) {
            zzagm zzagmVar = (zzagm) obj;
            if (zzfy.zzF(this.zza, zzagmVar.zza) && zzfy.zzF(this.zzb, zzagmVar.zzb) && zzfy.zzF(this.zzc, zzagmVar.zzc) && Arrays.equals(this.zzd, zzagmVar.zzd)) {
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
        return Arrays.hashCode(this.zzd) + (((((i4 * 31) + i2) * 31) + i3) * 31);
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final String toString() {
        return this.zzf + new ObfuscatedString(new long[]{6076719647233454633L, 5377595076383043985L, 1975885086908625087L}).toString() + this.zza + new ObfuscatedString(new long[]{8221598614031315654L, -5312167531436516951L, 2042892118343317609L}).toString() + this.zzb + new ObfuscatedString(new long[]{-585953761332968497L, 6521868544393043574L, 1474215720171390707L}).toString() + this.zzc;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeString(this.zzb);
        parcel.writeString(this.zzc);
        parcel.writeByteArray(this.zzd);
    }

    public zzagm(String str, String str2, String str3, byte[] bArr) {
        super(new ObfuscatedString(new long[]{-2296670435616331382L, 1716229074229467570L}).toString());
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = bArr;
    }
}
