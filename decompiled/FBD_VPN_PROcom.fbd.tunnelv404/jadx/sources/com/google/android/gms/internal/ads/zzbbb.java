package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;

@SafeParcelable.Class(creator = "CacheOfferingCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes2.dex */
public final class zzbbb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbbb> CREATOR = new zzbbc();

    @Nullable
    @SafeParcelable.Field(id = 2)
    public final String zza;

    @SafeParcelable.Field(id = 3)
    public final long zzb;

    @SafeParcelable.Field(id = 4)
    public final String zzc;

    @SafeParcelable.Field(id = 5)
    public final String zzd;

    @SafeParcelable.Field(id = 6)
    public final String zze;

    @SafeParcelable.Field(id = 7)
    public final Bundle zzf;

    @SafeParcelable.Field(id = 8)
    public final boolean zzg;

    @SafeParcelable.Field(id = 9)
    public long zzh;

    @SafeParcelable.Field(id = 10)
    public String zzi;

    @SafeParcelable.Field(id = 11)
    public int zzj;

    @SafeParcelable.Constructor
    public zzbbb(@Nullable @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) long j, @SafeParcelable.Param(id = 4) String str2, @SafeParcelable.Param(id = 5) String str3, @SafeParcelable.Param(id = 6) String str4, @SafeParcelable.Param(id = 7) Bundle bundle, @SafeParcelable.Param(id = 8) boolean z, @SafeParcelable.Param(id = 9) long j2, @SafeParcelable.Param(id = 10) String str5, @SafeParcelable.Param(id = 11) int i) {
        this.zza = str;
        this.zzb = j;
        this.zzc = str2 == null ? new ObfuscatedString(new long[]{7474056331843494137L}).toString() : str2;
        this.zzd = str3 == null ? new ObfuscatedString(new long[]{-7991837772219914713L}).toString() : str3;
        this.zze = str4 == null ? new ObfuscatedString(new long[]{6023943466040137282L}).toString() : str4;
        this.zzf = bundle == null ? new Bundle() : bundle;
        this.zzg = z;
        this.zzh = j2;
        this.zzi = str5;
        this.zzj = i;
    }

    @Nullable
    public static zzbbb zza(Uri uri) {
        long parseLong;
        try {
            if (!new ObfuscatedString(new long[]{3828237712425573005L, 4139876104575115862L}).toString().equals(uri.getScheme())) {
                return null;
            }
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments.size() != 2) {
                zzcec.zzj(new ObfuscatedString(new long[]{-4334366657229019200L, 8634524619131832694L, 7948758925981564057L, 4739412269091365910L, 4945517534081442926L, 6239176184162384305L, -4760375515734377408L, 40698184514897764L}).toString() + pathSegments.size());
                return null;
            }
            String str = pathSegments.get(0);
            String str2 = pathSegments.get(1);
            String host = uri.getHost();
            String queryParameter = uri.getQueryParameter(new ObfuscatedString(new long[]{-1769044964897314603L, 2010403063442290830L}).toString());
            boolean equals = new ObfuscatedString(new long[]{-6414488662468200488L, -7537393333124046832L}).toString().equals(uri.getQueryParameter(new ObfuscatedString(new long[]{1448217322185114412L, -1920549853017709919L, -1494650976455439526L}).toString()));
            String queryParameter2 = uri.getQueryParameter(new ObfuscatedString(new long[]{6656201829045416203L, 4593399052268174664L, 5790524917130034476L}).toString());
            if (queryParameter2 == null) {
                parseLong = 0;
            } else {
                parseLong = Long.parseLong(queryParameter2);
            }
            long j = parseLong;
            Bundle bundle = new Bundle();
            for (String str3 : uri.getQueryParameterNames()) {
                if (str3.startsWith(new ObfuscatedString(new long[]{-839008947646250267L, -7129001415094730947L}).toString())) {
                    bundle.putString(str3.substring(4), uri.getQueryParameter(str3));
                }
            }
            return new zzbbb(queryParameter, j, host, str, str2, bundle, equals, 0L, new ObfuscatedString(new long[]{-7707540408449040620L}).toString(), 0);
        } catch (NullPointerException e) {
            e = e;
            zzcec.zzk(new ObfuscatedString(new long[]{7168166731335624697L, -6493762636767389149L, -3284705600169222632L, 4118760837656878896L, 7585676020305269198L, 2915816310709878180L}).toString(), e);
            return null;
        } catch (NumberFormatException e2) {
            e = e2;
            zzcec.zzk(new ObfuscatedString(new long[]{7168166731335624697L, -6493762636767389149L, -3284705600169222632L, 4118760837656878896L, 7585676020305269198L, 2915816310709878180L}).toString(), e);
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, str, false);
        SafeParcelWriter.writeLong(parcel, 3, this.zzb);
        SafeParcelWriter.writeString(parcel, 4, this.zzc, false);
        SafeParcelWriter.writeString(parcel, 5, this.zzd, false);
        SafeParcelWriter.writeString(parcel, 6, this.zze, false);
        SafeParcelWriter.writeBundle(parcel, 7, this.zzf, false);
        SafeParcelWriter.writeBoolean(parcel, 8, this.zzg);
        SafeParcelWriter.writeLong(parcel, 9, this.zzh);
        SafeParcelWriter.writeString(parcel, 10, this.zzi, false);
        SafeParcelWriter.writeInt(parcel, 11, this.zzj);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
