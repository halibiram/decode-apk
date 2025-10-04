package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzo {
    private static final Uri zza = new Uri.Builder().scheme(new ObfuscatedString(new long[]{1205238713118334323L, -7926494143684550431L}).toString()).authority(new ObfuscatedString(new long[]{7307281885706798752L, 6176096235683936621L, -3237336172340909078L, 2695038897786912559L, -4772722298705645946L}).toString()).build();

    @Nullable
    private final String zzb;

    @Nullable
    private final String zzc;

    @Nullable
    private final ComponentName zzd;
    private final int zze;
    private final boolean zzf;

    public zzo(ComponentName componentName, int i) {
        this.zzb = null;
        this.zzc = null;
        Preconditions.checkNotNull(componentName);
        this.zzd = componentName;
        this.zze = 4225;
        this.zzf = false;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzo)) {
            return false;
        }
        zzo zzoVar = (zzo) obj;
        if (Objects.equal(this.zzb, zzoVar.zzb) && Objects.equal(this.zzc, zzoVar.zzc) && Objects.equal(this.zzd, zzoVar.zzd) && this.zzf == zzoVar.zzf) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.zzb, this.zzc, this.zzd, 4225, Boolean.valueOf(this.zzf));
    }

    public final String toString() {
        String str = this.zzb;
        if (str == null) {
            Preconditions.checkNotNull(this.zzd);
            return this.zzd.flattenToString();
        }
        return str;
    }

    @Nullable
    public final ComponentName zza() {
        return this.zzd;
    }

    public final Intent zzb(Context context) {
        Bundle bundle;
        if (this.zzb != null) {
            Intent intent = null;
            if (this.zzf) {
                Bundle bundle2 = new Bundle();
                bundle2.putString(new ObfuscatedString(new long[]{-4850817401631804496L, -4472371893596692645L, 6517168572439037709L, 1262101410990128392L}).toString(), this.zzb);
                try {
                    bundle = context.getContentResolver().call(zza, new ObfuscatedString(new long[]{-1843715841347739606L, 4342402124062371117L, 3632143406029245165L, -7938457646599316675L}).toString(), (String) null, bundle2);
                } catch (IllegalArgumentException e) {
                    new ObfuscatedString(new long[]{-7265534706017142223L, 8646540531494896740L, 4718896905967075197L, 2251128714150838182L, 4668468065071491609L, -1119921881309985604L}).toString().concat(e.toString());
                    new ObfuscatedString(new long[]{7854697479573852001L, -8894643261344549153L, -3663449914889286686L, -5091104008864581002L}).toString();
                    bundle = null;
                }
                if (bundle != null) {
                    intent = (Intent) bundle.getParcelable(new ObfuscatedString(new long[]{-8307190408599313479L, 7721229378333953054L, 7703621262497202300L, -2416611570896142068L}).toString());
                }
                if (intent == null) {
                    String str = this.zzb;
                    String obfuscatedString = new ObfuscatedString(new long[]{5365584755221145474L, -5359656130458779403L, -7638388221308706006L, 738926877205495728L, 7639726728970016223L, 77656606103960411L, 149559033005518082L}).toString();
                    String valueOf = String.valueOf(str);
                    new ObfuscatedString(new long[]{8738409178206133646L, -1825698406137258839L, 8613755441388761536L, 7253824502877621680L}).toString();
                    obfuscatedString.concat(valueOf);
                }
            }
            if (intent == null) {
                return new Intent(this.zzb).setPackage(this.zzc);
            }
            return intent;
        }
        return new Intent().setComponent(this.zzd);
    }

    @Nullable
    public final String zzc() {
        return this.zzc;
    }

    public zzo(String str, int i, boolean z) {
        this(str, new ObfuscatedString(new long[]{4444980833670758913L, 6971829684736411199L, 4890483388364154124L, 2058760908384450344L}).toString(), 4225, false);
    }

    public zzo(String str, String str2, int i, boolean z) {
        Preconditions.checkNotEmpty(str);
        this.zzb = str;
        Preconditions.checkNotEmpty(str2);
        this.zzc = str2;
        this.zzd = null;
        this.zze = 4225;
        this.zzf = z;
    }
}
