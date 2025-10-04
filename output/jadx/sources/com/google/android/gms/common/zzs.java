package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import javax.annotation.Nullable;

@SafeParcelable.Class(creator = "GoogleCertificatesQueryCreator")
/* loaded from: classes2.dex */
public final class zzs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzs> CREATOR = new zzt();

    @SafeParcelable.Field(getter = "getCallingPackage", id = 1)
    private final String zza;

    @Nullable
    @SafeParcelable.Field(getter = "getCallingCertificateBinder", id = 2, type = "android.os.IBinder")
    private final zzj zzb;

    @SafeParcelable.Field(getter = "getAllowTestKeys", id = 3)
    private final boolean zzc;

    @SafeParcelable.Field(defaultValue = "false", getter = "getIgnoreTestKeysOverride", id = 4)
    private final boolean zzd;

    public zzs(String str, @Nullable zzj zzjVar, boolean z, boolean z2) {
        this.zza = str;
        this.zzb = zzjVar;
        this.zzc = z;
        this.zzd = z2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, str, false);
        zzj zzjVar = this.zzb;
        if (zzjVar == null) {
            new ObfuscatedString(new long[]{9047126608971444948L, -5910698747465312451L, 8200936865236207671L, 3771724820855043591L}).toString();
            new ObfuscatedString(new long[]{2406726521732614100L, 2202697798192422460L, 3051058251053255532L, -3763800280139143423L, -3774218371299466944L}).toString();
            zzjVar = null;
        }
        SafeParcelWriter.writeIBinder(parcel, 2, zzjVar, false);
        SafeParcelWriter.writeBoolean(parcel, 3, this.zzc);
        SafeParcelWriter.writeBoolean(parcel, 4, this.zzd);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @SafeParcelable.Constructor
    public zzs(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) @Nullable IBinder iBinder, @SafeParcelable.Param(id = 3) boolean z, @SafeParcelable.Param(id = 4) boolean z2) {
        this.zza = str;
        zzk zzkVar = null;
        if (iBinder != null) {
            try {
                IObjectWrapper zzd = com.google.android.gms.common.internal.zzz.zzg(iBinder).zzd();
                byte[] bArr = zzd == null ? null : (byte[]) ObjectWrapper.unwrap(zzd);
                if (bArr != null) {
                    zzkVar = new zzk(bArr);
                } else {
                    new ObfuscatedString(new long[]{3868961380269197808L, -6656524928266315594L, 1902123144359683183L, -1407520358040639994L}).toString();
                    new ObfuscatedString(new long[]{904204136660936987L, -8804915206532241675L, 915344320583130732L, 2000527172433271478L, -6101322069562608435L}).toString();
                }
            } catch (RemoteException unused) {
                new ObfuscatedString(new long[]{693900514600739117L, 5189782270418494094L, -1943529709809800396L, -4546770252876644644L}).toString();
                new ObfuscatedString(new long[]{7910794824557595419L, -2411209439875015735L, 4567383698675153484L, 1679257756886376834L, -3812986485342381453L}).toString();
            }
        }
        this.zzb = zzkVar;
        this.zzc = z;
        this.zzd = z2;
    }
}
