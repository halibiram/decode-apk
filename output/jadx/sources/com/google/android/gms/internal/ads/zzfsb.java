package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.panda912.muddy.ObfuscatedString;

@SafeParcelable.Class(creator = "GassResponseParcelCreator")
/* loaded from: classes2.dex */
public final class zzfsb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfsb> CREATOR = new zzfsc();

    @SafeParcelable.VersionField(id = 1)
    public final int zza;

    @SafeParcelable.Field(getter = "getAfmaSignalsAsBytes", id = 2, type = "byte[]")
    private zzatd zzb = null;
    private byte[] zzc;

    @SafeParcelable.Constructor
    public zzfsb(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) byte[] bArr) {
        this.zza = i;
        this.zzc = bArr;
        zzb();
    }

    private final void zzb() {
        zzatd zzatdVar = this.zzb;
        if (zzatdVar != null || this.zzc == null) {
            if (zzatdVar != null && this.zzc == null) {
                return;
            }
            if (zzatdVar != null && this.zzc != null) {
                throw new IllegalStateException(new ObfuscatedString(new long[]{6042586169645863095L, -5514323568608508160L, 2392249345515335651L, -1151372856858037284L, 5384399364549499966L, -7371038182580081961L}).toString());
            }
            if (zzatdVar == null && this.zzc == null) {
                throw new IllegalStateException(new ObfuscatedString(new long[]{1355009313923046937L, 6054884731977763472L, 4630603406331365196L, -8141459175169399286L, 3112790285133968954L, -5736220044549268446L}).toString());
            }
            throw new IllegalStateException(new ObfuscatedString(new long[]{7085194294839145753L, -3769532423965921569L, 9023561697126803280L}).toString());
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, i2);
        byte[] bArr = this.zzc;
        if (bArr == null) {
            bArr = this.zzb.zzax();
        }
        SafeParcelWriter.writeByteArray(parcel, 2, bArr, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final zzatd zza() {
        if (this.zzb == null) {
            try {
                this.zzb = zzatd.zze(this.zzc, zzgzf.zza());
                this.zzc = null;
            } catch (zzhag | NullPointerException e) {
                throw new IllegalStateException(e);
            }
        }
        zzb();
        return this.zzb;
    }
}
