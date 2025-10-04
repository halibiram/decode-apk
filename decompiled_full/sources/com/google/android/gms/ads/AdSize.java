package com.google.android.gms.ads;

import android.content.Context;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzay;
import com.google.android.gms.ads.internal.client.zzq;
import com.google.android.gms.internal.ads.zzcdv;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
public final class AdSize {
    public static final int AUTO_HEIGHT = -2;
    public static final int FULL_WIDTH = -1;
    private final int zzb;
    private final int zzc;
    private final String zzd;
    private boolean zze;
    private boolean zzf;
    private int zzg;
    private boolean zzh;
    private int zzi;

    @NonNull
    public static final AdSize BANNER = new AdSize(320, 50, new ObfuscatedString(new long[]{-6760254320853570290L, 6798360868889066691L, 2492931563281463831L}).toString());

    @NonNull
    public static final AdSize FULL_BANNER = new AdSize(468, 60, new ObfuscatedString(new long[]{-4124722954074589441L, -1392075202366845763L, -147353797971976328L}).toString());

    @NonNull
    public static final AdSize LARGE_BANNER = new AdSize(320, 100, new ObfuscatedString(new long[]{-1818925501886367245L, -8715625472744103241L, -4738896155440863522L}).toString());

    @NonNull
    public static final AdSize LEADERBOARD = new AdSize(728, 90, new ObfuscatedString(new long[]{-3426455040709893606L, 5705410245778166356L, 4623239948548433491L}).toString());

    @NonNull
    public static final AdSize MEDIUM_RECTANGLE = new AdSize(300, 250, new ObfuscatedString(new long[]{-6815127516942184206L, -7865112563406339050L, -2532843028683805063L}).toString());

    @NonNull
    public static final AdSize WIDE_SKYSCRAPER = new AdSize(160, 600, new ObfuscatedString(new long[]{-9037214749720031620L, -8585090640308354886L, 619035096448210659L}).toString());

    @NonNull
    @Deprecated
    public static final AdSize SMART_BANNER = new AdSize(-1, -2, new ObfuscatedString(new long[]{2698231244457456008L, 2884378206243238547L, -240250079814886466L}).toString());

    @NonNull
    public static final AdSize FLUID = new AdSize(-3, -4, new ObfuscatedString(new long[]{-9142851831824157722L, 7877849048597651251L}).toString());

    @NonNull
    public static final AdSize INVALID = new AdSize(0, 0, new ObfuscatedString(new long[]{-8408584167769319763L, 2120324588016509646L}).toString());

    @NonNull
    public static final AdSize zza = new AdSize(50, 50, new ObfuscatedString(new long[]{8229573740196592150L, -6192556046069916637L}).toString());

    @NonNull
    public static final AdSize SEARCH = new AdSize(-3, 0, new ObfuscatedString(new long[]{-2023702118192318697L, -99158923255734164L, -8108149159873272284L}).toString());

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AdSize(int i, int i2) {
        this(i, i2, AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-3546419696056379164L, 336129484395762402L}), r1));
        String valueOf;
        if (i == -1) {
            valueOf = new ObfuscatedString(new long[]{-1559911250761510499L, 5829725981777761837L}).toString();
        } else {
            valueOf = String.valueOf(i);
        }
        String obfuscatedString = i2 == -2 ? new ObfuscatedString(new long[]{-593653006603446720L, -8839956041133768404L}).toString() : String.valueOf(i2);
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(valueOf);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{-8724312382671016809L, 4770971894632013740L}).toString());
        m3341xc20437a5.append(obfuscatedString);
    }

    @NonNull
    public static AdSize getCurrentOrientationAnchoredAdaptiveBannerAdSize(@NonNull Context context, int i) {
        AdSize zzc = zzcdv.zzc(context, i, 50, 0);
        zzc.zze = true;
        return zzc;
    }

    @NonNull
    public static AdSize getCurrentOrientationInlineAdaptiveBannerAdSize(@NonNull Context context, int i) {
        int zza2 = zzcdv.zza(context, 0);
        if (zza2 == -1) {
            return INVALID;
        }
        AdSize adSize = new AdSize(i, 0);
        adSize.zzg = zza2;
        adSize.zzf = true;
        return adSize;
    }

    @NonNull
    public static AdSize getCurrentOrientationInterscrollerAdSize(@NonNull Context context, int i) {
        return zzj(i, zzcdv.zza(context, 0));
    }

    @NonNull
    public static AdSize getInlineAdaptiveBannerAdSize(int i, int i2) {
        AdSize adSize = new AdSize(i, 0);
        adSize.zzg = i2;
        adSize.zzf = true;
        if (i2 < 32) {
            zzcec.zzj(new ObfuscatedString(new long[]{-1042630068585402494L, -7650130185367489004L, 7311705331332568109L, -2382257014287000769L, 6873082096699025773L, -5059544121281725043L, -5592173353863110393L, -4579492698043545813L, -5052923724418126878L}).toString() + i2 + new ObfuscatedString(new long[]{-4805099394083935748L, 3669527440762935420L, 1083984557538236285L, -4762811849865363004L, -5017240009808973206L, 2767449254016042715L, -8766942487721837803L, -3674598714414810065L, 8734916896041182414L}).toString());
        }
        return adSize;
    }

    @NonNull
    public static AdSize getLandscapeAnchoredAdaptiveBannerAdSize(@NonNull Context context, int i) {
        AdSize zzc = zzcdv.zzc(context, i, 50, 2);
        zzc.zze = true;
        return zzc;
    }

    @NonNull
    public static AdSize getLandscapeInlineAdaptiveBannerAdSize(@NonNull Context context, int i) {
        int zza2 = zzcdv.zza(context, 2);
        AdSize adSize = new AdSize(i, 0);
        if (zza2 == -1) {
            return INVALID;
        }
        adSize.zzg = zza2;
        adSize.zzf = true;
        return adSize;
    }

    @NonNull
    public static AdSize getLandscapeInterscrollerAdSize(@NonNull Context context, int i) {
        return zzj(i, zzcdv.zza(context, 2));
    }

    @NonNull
    public static AdSize getPortraitAnchoredAdaptiveBannerAdSize(@NonNull Context context, int i) {
        AdSize zzc = zzcdv.zzc(context, i, 50, 1);
        zzc.zze = true;
        return zzc;
    }

    @NonNull
    public static AdSize getPortraitInlineAdaptiveBannerAdSize(@NonNull Context context, int i) {
        int zza2 = zzcdv.zza(context, 1);
        AdSize adSize = new AdSize(i, 0);
        if (zza2 == -1) {
            return INVALID;
        }
        adSize.zzg = zza2;
        adSize.zzf = true;
        return adSize;
    }

    @NonNull
    public static AdSize getPortraitInterscrollerAdSize(@NonNull Context context, int i) {
        return zzj(i, zzcdv.zza(context, 1));
    }

    private static AdSize zzj(int i, int i2) {
        if (i2 == -1) {
            return INVALID;
        }
        AdSize adSize = new AdSize(i, 0);
        adSize.zzi = i2;
        adSize.zzh = true;
        return adSize;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AdSize)) {
            return false;
        }
        AdSize adSize = (AdSize) obj;
        if (this.zzb != adSize.zzb || this.zzc != adSize.zzc || !this.zzd.equals(adSize.zzd)) {
            return false;
        }
        return true;
    }

    public int getHeight() {
        return this.zzc;
    }

    public int getHeightInPixels(@NonNull Context context) {
        int i = this.zzc;
        if (i != -4 && i != -3) {
            if (i != -2) {
                zzay.zzb();
                return zzcdv.zzx(context, i);
            }
            return zzq.zza(context.getResources().getDisplayMetrics());
        }
        return -1;
    }

    public int getWidth() {
        return this.zzb;
    }

    public int getWidthInPixels(@NonNull Context context) {
        int i = this.zzb;
        if (i == -3) {
            return -1;
        }
        if (i != -1) {
            zzay.zzb();
            return zzcdv.zzx(context, i);
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Parcelable.Creator<zzq> creator = zzq.CREATOR;
        return displayMetrics.widthPixels;
    }

    public int hashCode() {
        return this.zzd.hashCode();
    }

    public boolean isAutoHeight() {
        return this.zzc == -2;
    }

    public boolean isFluid() {
        return this.zzb == -3 && this.zzc == -4;
    }

    public boolean isFullWidth() {
        return this.zzb == -1;
    }

    @NonNull
    public String toString() {
        return this.zzd;
    }

    public final int zza() {
        return this.zzi;
    }

    public final int zzb() {
        return this.zzg;
    }

    public final void zzc(int i) {
        this.zzg = i;
    }

    public final void zzd(int i) {
        this.zzi = i;
    }

    public final void zze(boolean z) {
        this.zzf = true;
    }

    public final void zzf(boolean z) {
        this.zzh = true;
    }

    public final boolean zzg() {
        return this.zze;
    }

    public final boolean zzh() {
        return this.zzf;
    }

    public final boolean zzi() {
        return this.zzh;
    }

    public AdSize(int i, int i2, String str) {
        if (i < 0 && i != -1 && i != -3) {
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{6278755835937765158L, -4286249555238663946L, 3694567667532914975L, -2507494988067747953L, -8693106942454753733L}), new StringBuilder(), i));
        }
        if (i2 < 0 && i2 != -2 && i2 != -4) {
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-1868555903535897959L, -5855823832966840458L, 6478978012062756059L, 357221706736884049L, 147438269578662202L}), new StringBuilder(), i2));
        }
        this.zzb = i;
        this.zzc = i2;
        this.zzd = str;
    }
}
