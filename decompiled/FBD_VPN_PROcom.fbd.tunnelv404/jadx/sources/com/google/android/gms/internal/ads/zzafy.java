package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

@Deprecated
/* loaded from: classes2.dex */
public class zzafy implements zzbx {
    public static final Parcelable.Creator<zzafy> CREATOR = new zzafx();
    public final String zza;
    public final String zzb;

    public zzafy(Parcel parcel) {
        String readString = parcel.readString();
        int i = zzfy.zza;
        this.zza = readString;
        this.zzb = parcel.readString();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzafy zzafyVar = (zzafy) obj;
            if (this.zza.equals(zzafyVar.zza) && this.zzb.equals(zzafyVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.zza.hashCode() + 527;
        return this.zzb.hashCode() + (hashCode * 31);
    }

    public final String toString() {
        return new ObfuscatedString(new long[]{9022138771682087950L, -307019376983302825L}).toString() + this.zza + new ObfuscatedString(new long[]{-6294179639585866041L, 7419483278490410563L}).toString() + this.zzb;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeString(this.zzb);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.zzbx
    public final void zza(zzbt zzbtVar) {
        char c;
        String str = this.zza;
        switch (str.hashCode()) {
            case 62359119:
                if (str.equals(new ObfuscatedString(new long[]{7835207139354228339L, 7849563913522661569L}).toString())) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 79833656:
                if (str.equals(new ObfuscatedString(new long[]{5726671170003742056L, -6787665195089256230L}).toString())) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 428414940:
                if (str.equals(new ObfuscatedString(new long[]{5773602333296125041L, -8222895186363721053L, -1142990567443697499L}).toString())) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1746739798:
                if (str.equals(new ObfuscatedString(new long[]{2738059092062241887L, 3386908396720984827L, -4218133826866344753L}).toString())) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1939198791:
                if (str.equals(new ObfuscatedString(new long[]{-5851685124502586104L, -8396386342177830259L}).toString())) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c != 0) {
            if (c != 1) {
                if (c != 2) {
                    if (c != 3) {
                        if (c != 4) {
                            return;
                        }
                        zzbtVar.zzh(this.zzb);
                        return;
                    }
                    zzbtVar.zzc(this.zzb);
                    return;
                }
                zzbtVar.zzd(this.zzb);
                return;
            }
            zzbtVar.zze(this.zzb);
            return;
        }
        zzbtVar.zzq(this.zzb);
    }

    public zzafy(String str, String str2) {
        this.zza = zzfwk.zzb(str);
        this.zzb = str2;
    }
}
