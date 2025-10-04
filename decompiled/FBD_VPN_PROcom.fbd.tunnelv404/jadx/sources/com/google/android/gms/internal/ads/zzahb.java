package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzahb extends zzagr {
    public static final Parcelable.Creator<zzahb> CREATOR = new zzaha();

    @Nullable
    public final String zza;
    public final String zzb;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzahb(Parcel parcel) {
        super(r0);
        String readString = parcel.readString();
        int i = zzfy.zza;
        this.zza = parcel.readString();
        this.zzb = parcel.readString();
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzahb.class == obj.getClass()) {
            zzahb zzahbVar = (zzahb) obj;
            if (this.zzf.equals(zzahbVar.zzf) && zzfy.zzF(this.zza, zzahbVar.zza) && zzfy.zzF(this.zzb, zzahbVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int hashCode = this.zzf.hashCode() + 527;
        String str = this.zza;
        int i2 = 0;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        int i3 = hashCode * 31;
        String str2 = this.zzb;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return ((i3 + i) * 31) + i2;
    }

    @Override // com.google.android.gms.internal.ads.zzagr
    public final String toString() {
        return this.zzf + new ObfuscatedString(new long[]{4688002605516450264L, -5851397146524892796L}).toString() + this.zzb;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zzf);
        parcel.writeString(this.zza);
        parcel.writeString(this.zzb);
    }

    public zzahb(String str, @Nullable String str2, String str3) {
        super(str);
        this.zza = str2;
        this.zzb = str3;
    }
}
