package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzfhl {
    private final zzavi zza;

    @VisibleForTesting
    public zzfhl(zzavi zzaviVar) {
        this.zza = zzaviVar;
    }

    private static final Uri zzb(Uri uri, String str) {
        if (uri != null) {
            try {
                try {
                    String host = uri.getHost();
                    String path = uri.getPath();
                    if (host != null && host.equals(new ObfuscatedString(new long[]{5583284841411360974L, -4136575595080379399L, 5857144500202704163L, 1592633988724668697L}).toString()) && path != null) {
                        if (path.contains(new ObfuscatedString(new long[]{-6220979938663816316L, -6802510314866367506L}).toString())) {
                            if (!uri.toString().contains(new ObfuscatedString(new long[]{-5108834065565978697L, -2735668092404135578L}).toString())) {
                                String obfuscatedString = new ObfuscatedString(new long[]{-1467683134922524998L, 6390135848427855941L}).toString();
                                String uri2 = uri.toString();
                                int indexOf = uri2.indexOf(new ObfuscatedString(new long[]{-2550424013938163925L, -164615260546892732L}).toString());
                                if (indexOf != -1) {
                                    int i = indexOf + 1;
                                    StringBuilder sb = new StringBuilder(uri2.substring(0, i));
                                    sb.append(obfuscatedString);
                                    sb.append(new ObfuscatedString(new long[]{2779023456890127478L, -2630736092192595384L}).toString());
                                    sb.append(str);
                                    sb.append(new ObfuscatedString(new long[]{6803173565137111120L, 7924940487183127361L}).toString());
                                    sb.append((CharSequence) uri2, i, uri2.length());
                                    return Uri.parse(sb.toString());
                                }
                                String encodedPath = uri.getEncodedPath();
                                if (encodedPath != null) {
                                    int indexOf2 = uri2.indexOf(encodedPath);
                                    StringBuilder sb2 = new StringBuilder(uri2.substring(0, encodedPath.length() + indexOf2));
                                    sb2.append(new ObfuscatedString(new long[]{1971385009694088008L, -1552645227863463741L}).toString());
                                    sb2.append(obfuscatedString);
                                    sb2.append(new ObfuscatedString(new long[]{-4795240846468753241L, 5200442280583416800L}).toString());
                                    sb2.append(str);
                                    sb2.append(new ObfuscatedString(new long[]{5917301012889995375L, -6660916359873127514L}).toString());
                                    sb2.append((CharSequence) uri2, indexOf2 + encodedPath.length(), uri2.length());
                                    return Uri.parse(sb2.toString());
                                }
                                throw new UnsupportedOperationException();
                            }
                            throw new zzavj(new ObfuscatedString(new long[]{-7849406299705257633L, -4577713106960001918L, -3602727783118485888L, -5589470198807717474L, -356926203854561632L}).toString());
                        }
                    }
                } catch (UnsupportedOperationException unused) {
                    throw new zzavj(new ObfuscatedString(new long[]{2137375794695337541L, 8185893810094012603L, -7418002190628814250L, 3981608145402105145L, -2094540704784396041L, 4212987591025366197L}).toString());
                }
            } catch (NullPointerException unused2) {
            }
        }
        if (uri.getQueryParameter(new ObfuscatedString(new long[]{123708655520978947L, 7536439651475212183L}).toString()) == null) {
            String obfuscatedString2 = new ObfuscatedString(new long[]{-3416485438028430388L, 378738555595974582L}).toString();
            String uri3 = uri.toString();
            int indexOf3 = uri3.indexOf(new ObfuscatedString(new long[]{5699222522835158796L, -3829991719963949587L}).toString());
            if (indexOf3 == -1) {
                indexOf3 = uri3.indexOf(new ObfuscatedString(new long[]{2210226917888265573L, 7708760359794657895L}).toString());
            }
            if (indexOf3 != -1) {
                int i2 = indexOf3 + 1;
                StringBuilder sb3 = new StringBuilder(uri3.substring(0, i2));
                sb3.append(obfuscatedString2);
                sb3.append(new ObfuscatedString(new long[]{4868288038340139018L, -6389211699328549957L}).toString());
                sb3.append(str);
                sb3.append(new ObfuscatedString(new long[]{5258023502753363299L, 2902039538054399802L}).toString());
                sb3.append((CharSequence) uri3, i2, uri3.length());
                return Uri.parse(sb3.toString());
            }
            return uri.buildUpon().appendQueryParameter(obfuscatedString2, str).build();
        }
        throw new zzavj(new ObfuscatedString(new long[]{-5634378616492033320L, 2854543606884281849L, -2125628021511312073L, -201042968907020893L, 2175862386245503978L, -7699875548602775692L}).toString());
    }

    public final Uri zza(Uri uri, Context context, View view, @Nullable Activity activity) {
        try {
            return zzb(uri, this.zza.zzc().zzf(context, uri.getQueryParameter(new ObfuscatedString(new long[]{8181173966438459789L, -8906199930063939006L}).toString()), view, activity));
        } catch (UnsupportedOperationException unused) {
            throw new zzavj(new ObfuscatedString(new long[]{1677917819933092261L, 5409552880256110758L, -2038092469780575003L, -2127441849601365440L, 2617315625284611702L, 7899567212704068222L}).toString());
        }
    }
}
