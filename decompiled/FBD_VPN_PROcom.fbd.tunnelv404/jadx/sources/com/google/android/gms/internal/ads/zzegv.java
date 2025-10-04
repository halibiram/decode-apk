package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzegv extends zzegz {
    private final String zza;
    private final String zzb;

    @Nullable
    private final Drawable zzc;

    public zzegv(String str, String str2, @Nullable Drawable drawable) {
        if (str != null) {
            this.zza = str;
            if (str2 != null) {
                this.zzb = str2;
                this.zzc = drawable;
                return;
            }
            throw new NullPointerException(new ObfuscatedString(new long[]{2422018265311285424L, -5599035423749278736L, 383735979250843275L}).toString());
        }
        throw new NullPointerException(new ObfuscatedString(new long[]{3844530348003115220L, 164230493704494302L, -390689798739457592L, 6715470154907384601L}).toString());
    }

    public final boolean equals(Object obj) {
        Drawable drawable;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzegz) {
            zzegz zzegzVar = (zzegz) obj;
            if (this.zza.equals(zzegzVar.zzb()) && this.zzb.equals(zzegzVar.zzc()) && ((drawable = this.zzc) != null ? drawable.equals(zzegzVar.zza()) : zzegzVar.zza() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = ((this.zza.hashCode() ^ 1000003) * 1000003) ^ this.zzb.hashCode();
        Drawable drawable = this.zzc;
        if (drawable == null) {
            hashCode = 0;
        } else {
            hashCode = drawable.hashCode();
        }
        return (hashCode2 * 1000003) ^ hashCode;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzc);
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-3100232954968390752L, -5713334739491158806L, 4312031636068171672L, 999372261260107584L, -241271832857364688L}).toString());
        sb.append(this.zza);
        sb.append(new ObfuscatedString(new long[]{-4240248509738810071L, 797750433595635506L, 6794449795349454306L}).toString());
        sb.append(this.zzb);
        sb.append(new ObfuscatedString(new long[]{-1987856396648210722L, -4906568792282460775L}).toString());
        sb.append(valueOf);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-8872195005643097667L, 4722953808317506327L}), sb);
    }

    @Override // com.google.android.gms.internal.ads.zzegz
    @Nullable
    public final Drawable zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzegz
    public final String zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzegz
    public final String zzc() {
        return this.zzb;
    }
}
