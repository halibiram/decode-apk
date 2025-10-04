package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "NativeAdOptionsParcelCreator")
/* loaded from: classes2.dex */
public final class zzbjb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbjb> CREATOR = new zzbjc();

    @SafeParcelable.Field(id = 1)
    public final int zza;

    @SafeParcelable.Field(id = 2)
    public final boolean zzb;

    @SafeParcelable.Field(id = 3)
    public final int zzc;

    @SafeParcelable.Field(id = 4)
    public final boolean zzd;

    @SafeParcelable.Field(id = 5)
    public final int zze;

    @Nullable
    @SafeParcelable.Field(id = 6)
    public final com.google.android.gms.ads.internal.client.zzfk zzf;

    @SafeParcelable.Field(id = 7)
    public final boolean zzg;

    @SafeParcelable.Field(id = 8)
    public final int zzh;

    @SafeParcelable.Field(id = 9)
    public final int zzi;

    @SafeParcelable.Field(id = 10)
    public final boolean zzj;

    @SafeParcelable.Field(id = 11)
    public final int zzk;

    @SafeParcelable.Constructor
    public zzbjb(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) boolean z, @SafeParcelable.Param(id = 3) int i2, @SafeParcelable.Param(id = 4) boolean z2, @SafeParcelable.Param(id = 5) int i3, @SafeParcelable.Param(id = 6) com.google.android.gms.ads.internal.client.zzfk zzfkVar, @SafeParcelable.Param(id = 7) boolean z3, @SafeParcelable.Param(id = 8) int i4, @SafeParcelable.Param(id = 9) int i5, @SafeParcelable.Param(id = 10) boolean z4, @SafeParcelable.Param(id = 11) int i6) {
        this.zza = i;
        this.zzb = z;
        this.zzc = i2;
        this.zzd = z2;
        this.zze = i3;
        this.zzf = zzfkVar;
        this.zzg = z3;
        this.zzh = i4;
        this.zzj = z4;
        this.zzi = i5;
        this.zzk = i6;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0034, code lost:
    
        if (r1 == 1) goto L19;
     */
    @NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static NativeAdOptions zza(@Nullable zzbjb zzbjbVar) {
        NativeAdOptions.Builder builder = new NativeAdOptions.Builder();
        if (zzbjbVar == null) {
            return builder.build();
        }
        int i = zzbjbVar.zza;
        int i2 = 2;
        if (i != 2) {
            if (i != 3) {
                if (i == 4) {
                    builder.setRequestCustomMuteThisAd(zzbjbVar.zzg);
                    builder.setMediaAspectRatio(zzbjbVar.zzh);
                    builder.enableCustomClickGestureDirection(zzbjbVar.zzi, zzbjbVar.zzj);
                    int i3 = zzbjbVar.zzk;
                    if (i3 != 0) {
                        if (i3 == 2) {
                            i2 = 3;
                        }
                        builder.zzi(i2);
                    }
                    i2 = 1;
                    builder.zzi(i2);
                }
                builder.setReturnUrlsForImageAssets(zzbjbVar.zzb);
                builder.setRequestMultipleImages(zzbjbVar.zzd);
                return builder.build();
            }
            com.google.android.gms.ads.internal.client.zzfk zzfkVar = zzbjbVar.zzf;
            if (zzfkVar != null) {
                builder.setVideoOptions(new VideoOptions(zzfkVar));
            }
        }
        builder.setAdChoicesPlacement(zzbjbVar.zze);
        builder.setReturnUrlsForImageAssets(zzbjbVar.zzb);
        builder.setRequestMultipleImages(zzbjbVar.zzd);
        return builder.build();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, i2);
        SafeParcelWriter.writeBoolean(parcel, 2, this.zzb);
        SafeParcelWriter.writeInt(parcel, 3, this.zzc);
        SafeParcelWriter.writeBoolean(parcel, 4, this.zzd);
        SafeParcelWriter.writeInt(parcel, 5, this.zze);
        SafeParcelWriter.writeParcelable(parcel, 6, this.zzf, i, false);
        SafeParcelWriter.writeBoolean(parcel, 7, this.zzg);
        SafeParcelWriter.writeInt(parcel, 8, this.zzh);
        SafeParcelWriter.writeInt(parcel, 9, this.zzi);
        SafeParcelWriter.writeBoolean(parcel, 10, this.zzj);
        SafeParcelWriter.writeInt(parcel, 11, this.zzk);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @Deprecated
    public zzbjb(@NonNull com.google.android.gms.ads.formats.NativeAdOptions nativeAdOptions) {
        this(4, nativeAdOptions.shouldReturnUrlsForImageAssets(), nativeAdOptions.getImageOrientation(), nativeAdOptions.shouldRequestMultipleImages(), nativeAdOptions.getAdChoicesPlacement(), nativeAdOptions.getVideoOptions() != null ? new com.google.android.gms.ads.internal.client.zzfk(nativeAdOptions.getVideoOptions()) : null, nativeAdOptions.zza(), nativeAdOptions.getMediaAspectRatio(), 0, false, 0);
    }
}
