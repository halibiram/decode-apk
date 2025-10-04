package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.common.base.Ascii;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzgc implements zzbx {
    public static final Parcelable.Creator<zzgc> CREATOR = new zzga();
    public final String zza;
    public final byte[] zzb;
    public final int zzc;
    public final int zzd;

    public zzgc(String str, byte[] bArr, int i, int i2) {
        this.zza = str;
        this.zzb = bArr;
        this.zzc = i;
        this.zzd = i2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzgc.class == obj.getClass()) {
            zzgc zzgcVar = (zzgc) obj;
            if (this.zza.equals(zzgcVar.zza) && Arrays.equals(this.zzb, zzgcVar.zzb) && this.zzc == zzgcVar.zzc && this.zzd == zzgcVar.zzd) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.zza.hashCode() + 527;
        return ((((Arrays.hashCode(this.zzb) + (hashCode * 31)) * 31) + this.zzc) * 31) + this.zzd;
    }

    public final String toString() {
        String zzz;
        boolean z;
        boolean z2;
        int i = this.zzd;
        if (i != 1) {
            if (i != 23) {
                if (i != 67) {
                    byte[] bArr = this.zzb;
                    int length = bArr.length;
                    StringBuilder sb = new StringBuilder(length + length);
                    for (int i2 = 0; i2 < bArr.length; i2++) {
                        sb.append(Character.forDigit((bArr[i2] >> 4) & 15, 16));
                        sb.append(Character.forDigit(bArr[i2] & Ascii.SI, 16));
                    }
                    zzz = sb.toString();
                } else {
                    byte[] bArr2 = this.zzb;
                    int i3 = zzfy.zza;
                    if (bArr2.length == 4) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    zzek.zzd(z2);
                    int i4 = bArr2[0] << Ascii.CAN;
                    zzz = String.valueOf((bArr2[1] << Ascii.DLE) | i4 | (bArr2[2] << 8) | bArr2[3]);
                }
            } else {
                byte[] bArr3 = this.zzb;
                int i5 = zzfy.zza;
                if (bArr3.length == 4) {
                    z = true;
                } else {
                    z = false;
                }
                zzek.zzd(z);
                zzz = String.valueOf(Float.intBitsToFloat(((bArr3[1] & 255) << 16) | (bArr3[0] << Ascii.CAN) | ((bArr3[2] & 255) << 8) | (bArr3[3] & 255)));
            }
        } else {
            zzz = zzfy.zzz(this.zzb);
        }
        String str = this.zza;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(new ObfuscatedString(new long[]{-4028205611343125146L, -2315120478848697109L, 3283745908325492655L}).toString());
        sb2.append(str);
        return AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-1828622521538441958L, 8785535824191120333L}), sb2, zzz);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeByteArray(this.zzb);
        parcel.writeInt(this.zzc);
        parcel.writeInt(this.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzbx
    public final /* synthetic */ void zza(zzbt zzbtVar) {
    }

    public /* synthetic */ zzgc(Parcel parcel, zzgb zzgbVar) {
        String readString = parcel.readString();
        int i = zzfy.zza;
        this.zza = readString;
        this.zzb = parcel.createByteArray();
        this.zzc = parcel.readInt();
        this.zzd = parcel.readInt();
    }
}
