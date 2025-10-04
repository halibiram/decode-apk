package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

@SafeParcelable.Class(creator = "VersionInfoParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes2.dex */
public final class zzcei extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcei> CREATOR = new zzcej();

    @SafeParcelable.Field(id = 2)
    public String zza;

    @SafeParcelable.Field(id = 3)
    public int zzb;

    @SafeParcelable.Field(id = 4)
    public int zzc;

    @SafeParcelable.Field(id = 5)
    public boolean zzd;

    @SafeParcelable.Field(id = 6)
    public boolean zze;

    public zzcei(int i, int i2, boolean z, boolean z2) {
        this(240304000, i2, true, false, z2);
    }

    public static zzcei zza() {
        return new zzcei(12451000, 12451000, true, false, false);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zza, false);
        SafeParcelWriter.writeInt(parcel, 3, this.zzb);
        SafeParcelWriter.writeInt(parcel, 4, this.zzc);
        SafeParcelWriter.writeBoolean(parcel, 5, this.zzd);
        SafeParcelWriter.writeBoolean(parcel, 6, this.zze);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzcei(int i, int i2, boolean z, boolean z2, boolean z3) {
        this(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{737506527263317847L, -8960449529821538702L}), r1, r0), i, i2, z, z3);
        String obfuscatedString;
        if (z) {
            obfuscatedString = new ObfuscatedString(new long[]{8979366127201098782L, 5504142600259941496L}).toString();
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{2051905661762731655L, 5948070393028714694L}).toString();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-4035538692437063649L, -4736013210612172329L, -5575931383527516764L}).toString());
        sb.append(i);
        sb.append(new ObfuscatedString(new long[]{1745956582704160976L, 2839868452627799618L}).toString());
        sb.append(i2);
    }

    @SafeParcelable.Constructor
    public zzcei(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) int i, @SafeParcelable.Param(id = 4) int i2, @SafeParcelable.Param(id = 5) boolean z, @SafeParcelable.Param(id = 6) boolean z2) {
        this.zza = str;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = z;
        this.zze = z2;
    }
}
