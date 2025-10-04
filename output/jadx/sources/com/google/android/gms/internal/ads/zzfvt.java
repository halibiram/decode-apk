package com.google.android.gms.internal.ads;

import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.IllegalFormatException;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class zzfvt {
    private final String zza;

    public zzfvt(String str) {
        this.zza = (new ObfuscatedString(new long[]{-1818908440695970555L, 2414824617846743489L}).toString() + Process.myUid() + new ObfuscatedString(new long[]{8477010487555801200L, 4859168119005415316L, -7511342800933025631L}).toString() + Process.myPid() + new ObfuscatedString(new long[]{-8697027238176553834L, -2577510267222092890L}).toString()).concat(str);
    }

    private static String zze(String str, String str2, @Nullable Object... objArr) {
        if (objArr.length > 0) {
            try {
                str2 = String.format(Locale.US, str2, objArr);
            } catch (IllegalFormatException unused) {
                new ObfuscatedString(new long[]{6167919623143719830L, -4445944836046684242L, -537961157105578784L, 3730580884103751117L}).toString().concat(str2);
                new ObfuscatedString(new long[]{-8181501065437726869L, -6866580475947817521L}).toString();
                String join = TextUtils.join(new ObfuscatedString(new long[]{-6889425254242972389L, 1663611817999434767L}).toString(), objArr);
                StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(str2);
                m3341xc20437a5.append(new ObfuscatedString(new long[]{-1446809208317147991L, -8411148546875639832L}).toString());
                m3341xc20437a5.append(join);
                str2 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{7830554264190773965L, -3707589825028795758L}), m3341xc20437a5);
            }
        }
        return AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{4510570372252236450L, 7060350002706412283L}), AbstractC0749x8313616e.m3341xc20437a5(str), str2);
    }

    public final int zza(String str, @Nullable Object... objArr) {
        if (Log.isLoggable(new ObfuscatedString(new long[]{4778711640511025532L, 8032895434095739972L}).toString(), 6)) {
            return Log.e(new ObfuscatedString(new long[]{6255289214304199601L, -5022383927452010332L}).toString(), zze(this.zza, str, objArr));
        }
        return 0;
    }

    public final int zzb(Throwable th, String str, @Nullable Object... objArr) {
        if (Log.isLoggable(new ObfuscatedString(new long[]{-7927622342009378894L, -3780514372997082781L}).toString(), 6)) {
            return Log.e(new ObfuscatedString(new long[]{4720282637608035583L, 4675095555475211093L}).toString(), zze(this.zza, str, objArr), th);
        }
        return 0;
    }

    public final int zzc(String str, @Nullable Object... objArr) {
        if (Log.isLoggable(new ObfuscatedString(new long[]{2632982457867045327L, 1735899919199289896L}).toString(), 4)) {
            return Log.i(new ObfuscatedString(new long[]{9017258758306208060L, 5709073600424800330L}).toString(), zze(this.zza, str, objArr));
        }
        return 0;
    }

    public final int zzd(String str, @Nullable Object... objArr) {
        if (Log.isLoggable(new ObfuscatedString(new long[]{-8186315436857900032L, -3694024293380849679L}).toString(), 5)) {
            return Log.w(new ObfuscatedString(new long[]{6418271566887060834L, -536693562865746984L}).toString(), zze(this.zza, new ObfuscatedString(new long[]{-3745511893265875350L, 8955480894179132118L, 2500436342918733554L, 980707977946012137L, -8279764033112428760L, -6132671234754789733L, -7815351353505513521L, 8359457432904908876L, -4363256459750380910L, 6694617677384420867L, -8869834883284484756L}).toString(), objArr));
        }
        return 0;
    }
}
