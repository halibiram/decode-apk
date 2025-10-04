package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzahj implements zzbx {
    public static final Parcelable.Creator<zzahj> CREATOR = new zzahf();
    public final List zza;

    public zzahj(List list) {
        this.zza = list;
        boolean z = false;
        if (!list.isEmpty()) {
            long j = ((zzahi) list.get(0)).zzc;
            int i = 1;
            while (true) {
                if (i >= list.size()) {
                    break;
                }
                if (((zzahi) list.get(i)).zzb < j) {
                    z = true;
                    break;
                } else {
                    j = ((zzahi) list.get(i)).zzc;
                    i++;
                }
            }
        }
        zzek.zzd(!z);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzahj.class == obj.getClass()) {
            return this.zza.equals(((zzahj) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final String toString() {
        return new ObfuscatedString(new long[]{5136408351465642808L, -7910217591714716236L, -2780926135698752645L, 4451646401746548183L}).toString().concat(this.zza.toString());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeList(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbx
    public final /* synthetic */ void zza(zzbt zzbtVar) {
    }
}
