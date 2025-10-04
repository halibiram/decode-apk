package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzahm implements zzbx {
    public static final Parcelable.Creator<zzahm> CREATOR = new zzahk();
    public final float zza;
    public final int zzb;

    public zzahm(float f, int i) {
        this.zza = f;
        this.zzb = i;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzahm.class == obj.getClass()) {
            zzahm zzahmVar = (zzahm) obj;
            if (this.zza == zzahmVar.zza && this.zzb == zzahmVar.zzb) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((Float.valueOf(this.zza).hashCode() + 527) * 31) + this.zzb;
    }

    public final String toString() {
        return new ObfuscatedString(new long[]{760810787136307308L, 5420551288257416065L, 2198641650043676376L, -4961425562621966941L}).toString() + this.zza + new ObfuscatedString(new long[]{-7196657703822134004L, -6282462990934372898L, 3206491122760720497L, 3547609159177382383L}).toString() + this.zzb;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeFloat(this.zza);
        parcel.writeInt(this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzbx
    public final /* synthetic */ void zza(zzbt zzbtVar) {
    }

    public /* synthetic */ zzahm(Parcel parcel, zzahl zzahlVar) {
        this.zza = parcel.readFloat();
        this.zzb = parcel.readInt();
    }
}
