package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.panda912.muddy.ObfuscatedString;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;

@ParametersAreNonnullByDefault
@SafeParcelable.Class(creator = "AdValueParcelCreator")
/* loaded from: classes2.dex */
public final class zzs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzs> CREATOR = new zzt();

    @SafeParcelable.Field(id = 1)
    public final int zza;

    @SafeParcelable.Field(id = 2)
    public final int zzb;

    @SafeParcelable.Field(id = 3)
    public final String zzc;

    @SafeParcelable.Field(id = 4)
    public final long zzd;

    @SafeParcelable.Constructor
    public zzs(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) String str, @SafeParcelable.Param(id = 4) long j) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = str;
        this.zzd = j;
    }

    public static zzs zza(JSONObject jSONObject) {
        String obfuscatedString = new ObfuscatedString(new long[]{3657962750588998313L, -3504363149527217136L}).toString();
        String obfuscatedString2 = new ObfuscatedString(new long[]{-8115146714976012029L, -2399022955833479345L}).toString();
        return new zzs(jSONObject.getInt(new ObfuscatedString(new long[]{-1103324232430296570L, -4735389134924020279L}).toString()), jSONObject.getInt(new ObfuscatedString(new long[]{6763756382597703666L, 4701715606318037067L, -1098243581626991923L}).toString()), jSONObject.getString(obfuscatedString2), jSONObject.getLong(obfuscatedString));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, i2);
        SafeParcelWriter.writeInt(parcel, 2, this.zzb);
        SafeParcelWriter.writeString(parcel, 3, this.zzc, false);
        SafeParcelWriter.writeLong(parcel, 4, this.zzd);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
