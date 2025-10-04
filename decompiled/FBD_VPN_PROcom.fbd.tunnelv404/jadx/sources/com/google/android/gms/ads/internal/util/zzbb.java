package com.google.android.gms.ads.internal.util;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ads.zzfij;
import com.google.android.gms.internal.ads.zzfxt;
import com.panda912.muddy.ObfuscatedString;

@SafeParcelable.Class(creator = "ExceptionParcelCreator")
/* loaded from: classes2.dex */
public final class zzbb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbb> CREATOR = new zzbc();

    @SafeParcelable.Field(id = 1)
    public final String zza;

    @SafeParcelable.Field(id = 2)
    public final int zzb;

    @SafeParcelable.Constructor
    public zzbb(@Nullable @SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) int i) {
        this.zza = str == null ? new ObfuscatedString(new long[]{4265555147302932072L}).toString() : str;
        this.zzb = i;
    }

    public static zzbb zzb(Throwable th) {
        String message;
        com.google.android.gms.ads.internal.client.zze zza = zzfij.zza(th);
        if (zzfxt.zzd(th.getMessage())) {
            message = zza.zzb;
        } else {
            message = th.getMessage();
        }
        return new zzbb(message, zza.zza);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, str, false);
        SafeParcelWriter.writeInt(parcel, 2, this.zzb);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final zzba zza() {
        return new zzba(this.zza, this.zzb);
    }
}
