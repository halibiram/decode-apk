package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzaft implements zzbx {
    public static final Parcelable.Creator<zzaft> CREATOR;
    private static final zzam zzf;
    private static final zzam zzg;
    public final String zza;
    public final String zzb;
    public final long zzc;
    public final long zzd;
    public final byte[] zze;
    private int zzh;

    static {
        zzak zzakVar = new zzak();
        zzakVar.zzW(new ObfuscatedString(new long[]{467464103720970684L, -1502923452902352553L, -2156297083330729123L}).toString());
        zzf = zzakVar.zzac();
        zzak zzakVar2 = new zzak();
        zzakVar2.zzW(new ObfuscatedString(new long[]{-8185626779289965970L, 8821467093189078405L, 3404962546466974375L, 4017109509159346798L}).toString());
        zzg = zzakVar2.zzac();
        CREATOR = new zzafs();
    }

    public zzaft(String str, String str2, long j, long j2, byte[] bArr) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = j;
        this.zzd = j2;
        this.zze = bArr;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaft.class == obj.getClass()) {
            zzaft zzaftVar = (zzaft) obj;
            if (this.zzc == zzaftVar.zzc && this.zzd == zzaftVar.zzd && zzfy.zzF(this.zza, zzaftVar.zza) && zzfy.zzF(this.zzb, zzaftVar.zzb) && Arrays.equals(this.zze, zzaftVar.zze)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int i2 = this.zzh;
        if (i2 == 0) {
            String str = this.zza;
            int i3 = 0;
            if (str != null) {
                i = str.hashCode();
            } else {
                i = 0;
            }
            String str2 = this.zzb;
            if (str2 != null) {
                i3 = str2.hashCode();
            }
            long j = this.zzc;
            long j2 = this.zzd;
            int hashCode = ((((((((i + 527) * 31) + i3) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + Arrays.hashCode(this.zze);
            this.zzh = hashCode;
            return hashCode;
        }
        return i2;
    }

    public final String toString() {
        return new ObfuscatedString(new long[]{-9086701696228905620L, 1791635424888988252L, 6262216709422755781L}).toString() + this.zza + new ObfuscatedString(new long[]{2813889779502132764L, 1912781406801371131L}).toString() + this.zzd + new ObfuscatedString(new long[]{3486428014569988508L, -6664519021040896375L, -3718981372656809927L}).toString() + this.zzc + new ObfuscatedString(new long[]{-5129224990678225563L, -2984826826152914634L}).toString() + this.zzb;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeString(this.zzb);
        parcel.writeLong(this.zzc);
        parcel.writeLong(this.zzd);
        parcel.writeByteArray(this.zze);
    }

    @Override // com.google.android.gms.internal.ads.zzbx
    public final /* synthetic */ void zza(zzbt zzbtVar) {
    }

    public zzaft(Parcel parcel) {
        String readString = parcel.readString();
        int i = zzfy.zza;
        this.zza = readString;
        this.zzb = parcel.readString();
        this.zzc = parcel.readLong();
        this.zzd = parcel.readLong();
        this.zze = parcel.createByteArray();
    }
}
