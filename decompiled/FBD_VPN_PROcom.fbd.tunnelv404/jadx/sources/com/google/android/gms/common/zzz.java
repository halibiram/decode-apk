package com.google.android.gms.common;

import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.common.zzag;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;

/* loaded from: classes2.dex */
final class zzz {

    @Nullable
    private String zza = null;
    private long zzb = -1;
    private zzag zzc = zzag.zzl();
    private zzag zzd = zzag.zzl();

    @CanIgnoreReturnValue
    public final zzz zza(long j) {
        this.zzb = j;
        return this;
    }

    @CanIgnoreReturnValue
    public final zzz zzb(List list) {
        Preconditions.checkNotNull(list);
        this.zzd = zzag.zzk(list);
        return this;
    }

    @CanIgnoreReturnValue
    public final zzz zzc(List list) {
        Preconditions.checkNotNull(list);
        this.zzc = zzag.zzk(list);
        return this;
    }

    @CanIgnoreReturnValue
    public final zzz zzd(String str) {
        this.zza = str;
        return this;
    }

    public final zzab zze() {
        if (this.zza != null) {
            if (this.zzb >= 0) {
                if (this.zzc.isEmpty() && this.zzd.isEmpty()) {
                    throw new IllegalStateException(new ObfuscatedString(new long[]{8288450980336695889L, 4511342199972036142L, 4528268728877906330L, -6217565899233778095L, 6171858890550919108L, 3914530236891190100L, 8005216252942112290L, -8803445011072334804L, 3290743592015876968L, -4414182866620253586L}).toString());
                }
                return new zzab(this.zza, this.zzb, this.zzc, this.zzd, null);
            }
            throw new IllegalStateException(new ObfuscatedString(new long[]{1728728251511507056L, 1973719668097633391L, -593310112340836646L, 1899890935221855605L, 6877207446120567434L, -404577587814655121L, -4066214729077563035L, 4576532952380550167L, -1626231235431578261L}).toString());
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-4828605439049548256L, 1448105403737427463L, -4844057905397255796L, -4427237177654643681L, -1339280889246554993L}).toString());
    }
}
