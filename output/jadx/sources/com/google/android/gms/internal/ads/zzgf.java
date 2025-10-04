package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzgf implements zzbx {
    public static final Parcelable.Creator<zzgf> CREATOR = new zzgd();
    public final float zza;
    public final float zzb;

    public zzgf(@FloatRange(from = -90.0d, to = 90.0d) float f, @FloatRange(from = -180.0d, to = 180.0d) float f2) {
        boolean z = false;
        if (f >= -90.0f && f <= 90.0f && f2 >= -180.0f && f2 <= 180.0f) {
            z = true;
        }
        zzek.zze(z, new ObfuscatedString(new long[]{5098545208273037458L, 1302493926153703829L, 5313243698648609868L, -7995346712719896528L, 4544450991983867343L}).toString());
        this.zza = f;
        this.zzb = f2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzgf.class == obj.getClass()) {
            zzgf zzgfVar = (zzgf) obj;
            if (this.zza == zzgfVar.zza && this.zzb == zzgfVar.zzb) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((Float.valueOf(this.zza).hashCode() + 527) * 31) + Float.valueOf(this.zzb).hashCode();
    }

    public final String toString() {
        return new ObfuscatedString(new long[]{-4427134191548137746L, 5433081585530033366L, -199432028280609271L}).toString() + this.zza + new ObfuscatedString(new long[]{7604642164660338553L, 7782409648391669624L, 7254127048586753975L}).toString() + this.zzb;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeFloat(this.zza);
        parcel.writeFloat(this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzbx
    public final /* synthetic */ void zza(zzbt zzbtVar) {
    }

    public /* synthetic */ zzgf(Parcel parcel, zzge zzgeVar) {
        this.zza = parcel.readFloat();
        this.zzb = parcel.readFloat();
    }
}
