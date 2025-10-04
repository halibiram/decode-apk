package com.google.android.play.core.appupdate.internal;

import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.IllegalFormatException;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class zzm {
    private final String zza;

    public zzm(String str) {
        this.zza = (new ObfuscatedString(new long[]{5694797418827698352L, 2177257275791740991L}).toString() + Process.myUid() + new ObfuscatedString(new long[]{3032191335933375395L, 6975551735292358273L, -463860315392312026L}).toString() + Process.myPid() + new ObfuscatedString(new long[]{2291170317162639031L, -3605710653428304858L}).toString()).concat(str);
    }

    private static String zzf(String str, String str2, @Nullable Object... objArr) {
        if (objArr.length > 0) {
            try {
                str2 = String.format(Locale.US, str2, objArr);
            } catch (IllegalFormatException unused) {
                new ObfuscatedString(new long[]{2444791986048573532L, -3848395694060118132L, 4902170606754451957L, -5887892532876987184L}).toString().concat(str2);
                new ObfuscatedString(new long[]{-7606758898696776410L, -5193105561449634231L}).toString();
                String join = TextUtils.join(new ObfuscatedString(new long[]{-8768617666188480862L, -2884047265358527033L}).toString(), objArr);
                StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(str2);
                m3341xc20437a5.append(new ObfuscatedString(new long[]{3986199352610069159L, -7659850009061280984L}).toString());
                m3341xc20437a5.append(join);
                str2 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-5698165662068674398L, 4259135631592273129L}), m3341xc20437a5);
            }
        }
        return AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-3343976460531362549L, -2809006485978532387L}), AbstractC0749x8313616e.m3341xc20437a5(str), str2);
    }

    public final int zza(String str, @Nullable Object... objArr) {
        if (Log.isLoggable(new ObfuscatedString(new long[]{1724749493218408061L, -8088156898450300322L}).toString(), 3)) {
            return Log.d(new ObfuscatedString(new long[]{2364013648970728475L, -2672092708475663632L}).toString(), zzf(this.zza, str, objArr));
        }
        return 0;
    }

    public final int zzb(String str, @Nullable Object... objArr) {
        if (Log.isLoggable(new ObfuscatedString(new long[]{5576794658904500714L, 141117401536794900L}).toString(), 6)) {
            return Log.e(new ObfuscatedString(new long[]{-1269711087702169503L, -40376352569562203L}).toString(), zzf(this.zza, str, objArr));
        }
        return 0;
    }

    public final int zzc(Throwable th, String str, @Nullable Object... objArr) {
        if (Log.isLoggable(new ObfuscatedString(new long[]{-8045163771510214437L, -2895446487216129702L}).toString(), 6)) {
            return Log.e(new ObfuscatedString(new long[]{-2925715721841977943L, 1355759967706694926L}).toString(), zzf(this.zza, str, objArr), th);
        }
        return 0;
    }

    public final int zzd(String str, @Nullable Object... objArr) {
        if (Log.isLoggable(new ObfuscatedString(new long[]{6642292904443243029L, -8470206694991734214L}).toString(), 4)) {
            return Log.i(new ObfuscatedString(new long[]{-7845386307443341728L, -6721228107064309652L}).toString(), zzf(this.zza, str, objArr));
        }
        return 0;
    }

    public final int zze(String str, @Nullable Object... objArr) {
        if (Log.isLoggable(new ObfuscatedString(new long[]{-1457940202836965132L, 5769751148571112191L}).toString(), 5)) {
            return Log.w(new ObfuscatedString(new long[]{-9132410383170382965L, 1566932629844377209L}).toString(), zzf(this.zza, new ObfuscatedString(new long[]{-5696011724564845142L, 548540552831837037L, 8334787141983836699L, -2690126234148298430L, 5548989704117960589L, 4697434348272917470L, 1508867107188699669L, 5174943555742141518L, -125333723088350515L, 7021021884672939530L, 6345177929326273024L}).toString(), objArr));
        }
        return 0;
    }
}
