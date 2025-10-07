package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzagg extends zzagr {
    public static final Parcelable.Creator<zzagg> CREATOR = new zzagf();
    public final String zza;
    public final int zzb;
    public final int zzc;
    public final long zzd;
    public final long zze;
    private final zzagr[] zzg;

    public zzagg(Parcel parcel) {
        super(new ObfuscatedString(new long[]{-6857196179709791788L, 4822156350567952555L}).toString());
        String readString = parcel.readString();
        int i = zzfy.zza;
        this.zza = readString;
        this.zzb = parcel.readInt();
        this.zzc = parcel.readInt();
        this.zzd = parcel.readLong();
        this.zze = parcel.readLong();
        int readInt = parcel.readInt();
        this.zzg = new zzagr[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            this.zzg[i2] = (zzagr) parcel.readParcelable(zzagr.class.getClassLoader());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzagr, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzagg.class == obj.getClass()) {
            zzagg zzaggVar = (zzagg) obj;
            if (this.zzb == zzaggVar.zzb && this.zzc == zzaggVar.zzc && this.zzd == zzaggVar.zzd && this.zze == zzaggVar.zze && zzfy.zzF(this.zza, zzaggVar.zza) && Arrays.equals(this.zzg, zzaggVar.zzg)) {
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
        int i2 = this.zzb;
        return ((((((((i2 + 527) * 31) + this.zzc) * 31) + ((int) this.zzd)) * 31) + ((int) this.zze)) * 31) + i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeInt(this.zzb);
        parcel.writeInt(this.zzc);
        parcel.writeLong(this.zzd);
        parcel.writeLong(this.zze);
        parcel.writeInt(this.zzg.length);
        for (zzagr zzagrVar : this.zzg) {
            parcel.writeParcelable(zzagrVar, 0);
        }
    }

    public zzagg(String str, int i, int i2, long j, long j2, zzagr[] zzagrVarArr) {
        super(new ObfuscatedString(new long[]{-5233866939998533414L, 8800736467604917899L}).toString());
        this.zza = str;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = j;
        this.zze = j2;
        this.zzg = zzagrVarArr;
    }
}
