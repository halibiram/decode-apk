package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

@SafeParcelable.Class(creator = "SafeBrowsingConfigParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes2.dex */
public final class zzcbp extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcbp> CREATOR = new zzcbq();

    @SafeParcelable.Field(id = 2)
    public final String zza;

    @SafeParcelable.Field(id = 3)
    public final String zzb;

    @SafeParcelable.Field(id = 4)
    public final boolean zzc;

    @SafeParcelable.Field(id = 5)
    public final boolean zzd;

    @SafeParcelable.Field(id = 6)
    public final List zze;

    @SafeParcelable.Field(id = 7)
    public final boolean zzf;

    @SafeParcelable.Field(id = 8)
    public final boolean zzg;

    @SafeParcelable.Field(id = 9)
    public final List zzh;

    @SafeParcelable.Constructor
    public zzcbp(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) boolean z, @SafeParcelable.Param(id = 5) boolean z2, @SafeParcelable.Param(id = 6) List list, @SafeParcelable.Param(id = 7) boolean z3, @SafeParcelable.Param(id = 8) boolean z4, @SafeParcelable.Param(id = 9) List list2) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = z;
        this.zzd = z2;
        this.zze = list;
        this.zzf = z3;
        this.zzg = z4;
        this.zzh = list2 == null ? new ArrayList() : list2;
    }

    @Nullable
    public static zzcbp zza(JSONObject jSONObject) {
        String obfuscatedString = new ObfuscatedString(new long[]{-9197932166126695624L, 6888613973730658151L, 4880352085524573443L, -7504341941714379917L, -8164826940798279054L}).toString();
        String obfuscatedString2 = new ObfuscatedString(new long[]{-3427951346278918099L, -3891620874132855021L, -3563456568886221429L, 8042502155983896644L}).toString();
        String obfuscatedString3 = new ObfuscatedString(new long[]{-2201683595977690724L, 5266676528339655693L, -548123071013136279L}).toString();
        return new zzcbp(jSONObject.optString(new ObfuscatedString(new long[]{-799942260621925245L, 5106260965627263611L, 7386386145600549563L}).toString(), new ObfuscatedString(new long[]{-5861963971983332502L}).toString()), jSONObject.optString(new ObfuscatedString(new long[]{5362288795392903896L, -1633128720467078974L, -5287654421487113284L}).toString(), new ObfuscatedString(new long[]{7602845327117988540L}).toString()), jSONObject.optBoolean(obfuscatedString2, false), jSONObject.optBoolean(obfuscatedString, false), com.google.android.gms.ads.internal.util.zzbw.zzc(jSONObject.optJSONArray(obfuscatedString3), null), jSONObject.optBoolean(new ObfuscatedString(new long[]{-2028011486534365882L, -5819732293023235025L, 4467133181124071433L, -101103063798902804L}).toString(), false), jSONObject.optBoolean(new ObfuscatedString(new long[]{-2170569904592398827L, 8188418500995728402L, -756460355088659050L, -7020083972136225729L, -964053568243489080L}).toString(), false), com.google.android.gms.ads.internal.util.zzbw.zzc(jSONObject.optJSONArray(new ObfuscatedString(new long[]{-9052416344393694660L, 86606787970969134L, -6001301064504183574L, -795277474378609583L}).toString()), null));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, str, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
        SafeParcelWriter.writeBoolean(parcel, 4, this.zzc);
        SafeParcelWriter.writeBoolean(parcel, 5, this.zzd);
        SafeParcelWriter.writeStringList(parcel, 6, this.zze, false);
        SafeParcelWriter.writeBoolean(parcel, 7, this.zzf);
        SafeParcelWriter.writeBoolean(parcel, 8, this.zzg);
        SafeParcelWriter.writeStringList(parcel, 9, this.zzh, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
