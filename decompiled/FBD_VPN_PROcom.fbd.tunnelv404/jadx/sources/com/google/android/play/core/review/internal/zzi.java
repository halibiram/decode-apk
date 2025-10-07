package com.google.android.play.core.review.internal;

import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.IllegalFormatException;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class zzi {
    private final String zza;

    public zzi(String str) {
        this.zza = (new ObfuscatedString(new long[]{-8843553434503965777L, -4746365276068114150L}).toString() + Process.myUid() + new ObfuscatedString(new long[]{-3002080628125237328L, 68834049521131403L, 1754556283060884760L}).toString() + Process.myPid() + new ObfuscatedString(new long[]{-2926874547613664578L, 5068542940298747970L}).toString()).concat(str);
    }

    private static String zze(String str, String str2, @Nullable Object... objArr) {
        if (objArr.length > 0) {
            try {
                str2 = String.format(Locale.US, str2, objArr);
            } catch (IllegalFormatException unused) {
                String valueOf = String.valueOf(str2);
                String obfuscatedString = new ObfuscatedString(new long[]{-7835511134997035575L, 4289721650904816198L, 6191239108532013512L, -2057496969659782135L}).toString();
                new ObfuscatedString(new long[]{-1115431630451749921L, -8137542895549396758L}).toString();
                obfuscatedString.concat(valueOf);
                String join = TextUtils.join(new ObfuscatedString(new long[]{-274913275184826371L, -3293200727947935505L}).toString(), objArr);
                StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(str2);
                m3341xc20437a5.append(new ObfuscatedString(new long[]{7768735824356566435L, 8327162628229792736L}).toString());
                m3341xc20437a5.append(join);
                str2 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-7977659342766986576L, 8519732154247364191L}), m3341xc20437a5);
            }
        }
        return AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{5055972397913099991L, -3414840658068712640L}), AbstractC0749x8313616e.m3341xc20437a5(str), str2);
    }

    public final int zza(String str, @Nullable Object... objArr) {
        if (Log.isLoggable(new ObfuscatedString(new long[]{-2049952792311199105L, 4938632539776783574L}).toString(), 6)) {
            return Log.e(new ObfuscatedString(new long[]{-8956421429380227168L, -136022372025151008L}).toString(), zze(this.zza, new ObfuscatedString(new long[]{-8695947478090213679L, 564387042037004313L, 1873380495263549466L, 8286952179862172689L, 7851543356824782992L, -1606953297858612065L, 6640806977624216213L, -5189647014954817788L, -8419439327548287580L, -3053796658462816522L}).toString(), objArr));
        }
        return 0;
    }

    public final int zzb(Throwable th, String str, @Nullable Object... objArr) {
        if (Log.isLoggable(new ObfuscatedString(new long[]{-6918988242540382375L, -3511472713442281243L}).toString(), 6)) {
            return Log.e(new ObfuscatedString(new long[]{-9036160823418175756L, 6062029226432684519L}).toString(), zze(this.zza, str, objArr), th);
        }
        return 0;
    }

    public final int zzc(String str, @Nullable Object... objArr) {
        if (Log.isLoggable(new ObfuscatedString(new long[]{4990113924159214295L, 8887291765327514166L}).toString(), 4)) {
            return Log.i(new ObfuscatedString(new long[]{8779781055832894729L, -7647938712351918663L}).toString(), zze(this.zza, str, objArr));
        }
        return 0;
    }

    public final int zzd(String str, @Nullable Object... objArr) {
        if (Log.isLoggable(new ObfuscatedString(new long[]{5631107113417640228L, 3999302258888858195L}).toString(), 5)) {
            return Log.w(new ObfuscatedString(new long[]{-7548990888206562585L, -9018870666394508588L}).toString(), zze(this.zza, str, objArr));
        }
        return 0;
    }
}
