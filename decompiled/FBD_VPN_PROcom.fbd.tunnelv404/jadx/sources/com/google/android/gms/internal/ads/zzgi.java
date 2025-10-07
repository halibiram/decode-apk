package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzgi implements zzbx {
    public static final Parcelable.Creator<zzgi> CREATOR = new zzgg();
    public final long zza;
    public final long zzb;
    public final long zzc;

    public zzgi(long j, long j2, long j3) {
        this.zza = j;
        this.zzb = j2;
        this.zzc = j3;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzgi)) {
            return false;
        }
        zzgi zzgiVar = (zzgi) obj;
        if (this.zza == zzgiVar.zza && this.zzb == zzgiVar.zzb && this.zzc == zzgiVar.zzc) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        long j = this.zzc;
        long j2 = this.zza;
        int i = ((int) (j2 ^ (j2 >>> 32))) + 527;
        long j3 = j ^ (j >>> 32);
        long j4 = this.zzb;
        return (((i * 31) + ((int) (j4 ^ (j4 >>> 32)))) * 31) + ((int) j3);
    }

    public final String toString() {
        return new ObfuscatedString(new long[]{4329345923768636241L, -8158862725817611630L, -2010592536485566004L, 7290877665235565708L, -2557384076398433212L}).toString() + this.zza + new ObfuscatedString(new long[]{-958060315514255144L, -5349389631567601805L, -9053037081726487681L, 8743981062209658028L}).toString() + this.zzb + new ObfuscatedString(new long[]{6733522924421265916L, -4531091730915284879L, 237009732488616527L}).toString() + this.zzc;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.zza);
        parcel.writeLong(this.zzb);
        parcel.writeLong(this.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzbx
    public final /* synthetic */ void zza(zzbt zzbtVar) {
    }

    public /* synthetic */ zzgi(Parcel parcel, zzgh zzghVar) {
        this.zza = parcel.readLong();
        this.zzb = parcel.readLong();
        this.zzc = parcel.readLong();
    }
}
