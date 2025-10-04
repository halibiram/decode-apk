package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzagc extends zzagr {
    public static final Parcelable.Creator<zzagc> CREATOR = new zzagb();
    public final String zza;

    @Nullable
    public final String zzb;
    public final int zzc;
    public final byte[] zzd;

    public zzagc(Parcel parcel) {
        super(new ObfuscatedString(new long[]{9068001573393904095L, 5951983930424390676L}).toString());
        String readString = parcel.readString();
        int i = zzfy.zza;
        this.zza = readString;
        this.zzb = parcel.readString();
        this.zzc = parcel.readInt();
        this.zzd = parcel.createByteArray();
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzagc.class == obj.getClass()) {
            zzagc zzagcVar = (zzagc) obj;
            if (this.zzc == zzagcVar.zzc && zzfy.zzF(this.zza, zzagcVar.zza) && zzfy.zzF(this.zzb, zzagcVar.zzb) && Arrays.equals(this.zzd, zzagcVar.zzd)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i;
        String str = this.zza;
        int i2 = 0;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        int i3 = this.zzc;
        String str2 = this.zzb;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        int i4 = ((i3 + 527) * 31) + i;
        return Arrays.hashCode(this.zzd) + (((i4 * 31) + i2) * 31);
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final String toString() {
        return this.zzf + new ObfuscatedString(new long[]{-3059703844260729597L, 4915060752173706658L, -1746170242532873643L}).toString() + this.zza + new ObfuscatedString(new long[]{3295318492000324625L, -3711090695039896458L, 6960475958627054023L}).toString() + this.zzb;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeString(this.zzb);
        parcel.writeInt(this.zzc);
        parcel.writeByteArray(this.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzagr, com.google.android.gms.internal.ads.zzbx
    public final void zza(zzbt zzbtVar) {
        zzbtVar.zza(this.zzd, this.zzc);
    }

    public zzagc(String str, @Nullable String str2, int i, byte[] bArr) {
        super(new ObfuscatedString(new long[]{-5016694165319236721L, -5109132711193399722L}).toString());
        this.zza = str;
        this.zzb = str2;
        this.zzc = i;
        this.zzd = bArr;
    }
}
