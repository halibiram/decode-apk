package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzagx extends zzagr {
    public static final Parcelable.Creator<zzagx> CREATOR = new zzagw();
    public final String zza;
    public final byte[] zzb;

    public zzagx(Parcel parcel) {
        super(new ObfuscatedString(new long[]{364832943358375646L, -6908030542730658352L}).toString());
        String readString = parcel.readString();
        int i = zzfy.zza;
        this.zza = readString;
        this.zzb = parcel.createByteArray();
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzagx.class == obj.getClass()) {
            zzagx zzagxVar = (zzagx) obj;
            if (zzfy.zzF(this.zza, zzagxVar.zza) && Arrays.equals(this.zzb, zzagxVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i;
        String str = this.zza;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        return Arrays.hashCode(this.zzb) + ((i + 527) * 31);
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final String toString() {
        return this.zzf + new ObfuscatedString(new long[]{8581767129269500912L, 8588153704555588255L}).toString() + this.zza;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeByteArray(this.zzb);
    }

    public zzagx(String str, byte[] bArr) {
        super(new ObfuscatedString(new long[]{-6187039029723225875L, -7943261503663664931L}).toString());
        this.zza = str;
        this.zzb = bArr;
    }
}
