package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.R;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzy {
    private final AdSize[] zza;
    private final String zzb;

    public zzy(Context context, AttributeSet attributeSet) {
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, R.styleable.AdsAttrs);
        String string = obtainAttributes.getString(R.styleable.AdsAttrs_adSize);
        String string2 = obtainAttributes.getString(R.styleable.AdsAttrs_adSizes);
        boolean isEmpty = TextUtils.isEmpty(string);
        boolean isEmpty2 = TextUtils.isEmpty(string2);
        if (!isEmpty && isEmpty2) {
            this.zza = zzc(string);
        } else if (isEmpty && !isEmpty2) {
            this.zza = zzc(string2);
        } else {
            if (!isEmpty) {
                obtainAttributes.recycle();
                throw new IllegalArgumentException(new ObfuscatedString(new long[]{4003155705942954227L, -736768793753164195L, 8909694079027519674L, 5760181816096346556L, -2885334236578111979L, -1932743810197902650L, -7821922524099192915L, 6368764696696869731L, 6390948782595290962L, -7450541653951395351L, -4908674543631739933L, -6767212868445324550L, 3280501988562939484L, 8766219714939894996L}).toString());
            }
            obtainAttributes.recycle();
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{2922805298086029560L, 6792326281581193990L, -2190061016417434153L, -530292884560809693L, 2386563338985264652L, 873418106890336756L, 7173952139887796530L}).toString());
        }
        String string3 = obtainAttributes.getString(R.styleable.AdsAttrs_adUnitId);
        this.zzb = string3;
        obtainAttributes.recycle();
        if (!TextUtils.isEmpty(string3)) {
        } else {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-1277396644987040104L, -3350957260797950223L, 2645290984847666739L, 2852447050650656758L, 2069157059951587691L, 142897918042568317L, -8681571120600958371L}).toString());
        }
    }

    private static AdSize[] zzc(String str) {
        int parseInt;
        int parseInt2;
        String[] split = str.split(new ObfuscatedString(new long[]{-1799110040472546062L, 4714844424366127658L}).toString());
        int length = split.length;
        AdSize[] adSizeArr = new AdSize[length];
        for (int i = 0; i < split.length; i++) {
            String trim = split[i].trim();
            if (trim.matches(new ObfuscatedString(new long[]{-4539925878762870158L, 6265208468842545422L, 2894684221639517757L, -6700520310764334122L, -898163001802791645L, -398235314410211227L, 34962768723108009L}).toString())) {
                String[] split2 = trim.split(new ObfuscatedString(new long[]{203194704662986368L, -1365443019420345163L}).toString());
                split2[0] = split2[0].trim();
                split2[1] = split2[1].trim();
                try {
                    if (new ObfuscatedString(new long[]{-1703635927074018404L, 4442358423541483717L, -2590858402667141066L}).toString().equals(split2[0])) {
                        parseInt = -1;
                    } else {
                        parseInt = Integer.parseInt(split2[0]);
                    }
                    if (new ObfuscatedString(new long[]{-4967057439842433248L, -469581562316072921L, 3522263992630105013L}).toString().equals(split2[1])) {
                        parseInt2 = -2;
                    } else {
                        parseInt2 = Integer.parseInt(split2[1]);
                    }
                    adSizeArr[i] = new AdSize(parseInt, parseInt2);
                } catch (NumberFormatException unused) {
                    throw new IllegalArgumentException(new ObfuscatedString(new long[]{-6676068744471742881L, 2032080305576742217L, -8824662458970390692L, -3866303208274624289L, -2476240437015034657L, 6236088788557018972L}).toString().concat(trim));
                }
            } else if (new ObfuscatedString(new long[]{8263911042831079261L, -8052583496125577766L}).toString().equals(trim)) {
                adSizeArr[i] = AdSize.BANNER;
            } else if (new ObfuscatedString(new long[]{6362684863217397125L, 3654762559607727052L, 4387878292959252081L}).toString().equals(trim)) {
                adSizeArr[i] = AdSize.LARGE_BANNER;
            } else if (new ObfuscatedString(new long[]{8678550643145809790L, -8372829937750369191L, -8082537922095209051L}).toString().equals(trim)) {
                adSizeArr[i] = AdSize.FULL_BANNER;
            } else if (new ObfuscatedString(new long[]{-3256710696830409405L, 3494830305446403976L, -8970170643879901555L}).toString().equals(trim)) {
                adSizeArr[i] = AdSize.LEADERBOARD;
            } else if (new ObfuscatedString(new long[]{6510524305651786717L, 8683463508437125381L, -3254716932171420195L}).toString().equals(trim)) {
                adSizeArr[i] = AdSize.MEDIUM_RECTANGLE;
            } else if (new ObfuscatedString(new long[]{311849162522482734L, 4002545484144003274L, 4369604110793456684L}).toString().equals(trim)) {
                adSizeArr[i] = AdSize.SMART_BANNER;
            } else if (new ObfuscatedString(new long[]{2120658102048540967L, -3334416699636290651L, 197824843521343307L}).toString().equals(trim)) {
                adSizeArr[i] = AdSize.WIDE_SKYSCRAPER;
            } else if (new ObfuscatedString(new long[]{654590408739105861L, -1177997139049284156L}).toString().equals(trim)) {
                adSizeArr[i] = AdSize.FLUID;
            } else if (new ObfuscatedString(new long[]{1835480125616246084L, -2322832730765849539L}).toString().equals(trim)) {
                adSizeArr[i] = AdSize.zza;
            } else {
                throw new IllegalArgumentException(new ObfuscatedString(new long[]{8584132145820694719L, 690497831441324901L, 8082194293806012582L, 3192111435072856106L, -3515971499670983631L, -5309782303237035205L}).toString().concat(trim));
            }
        }
        if (length != 0) {
            return adSizeArr;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-8456317220044731976L, 8484317833709495778L, -2549216830226467697L, -1234612737275640355L, 7014081236128242394L, -3664833819129672451L}).toString().concat(str));
    }

    public final String zza() {
        return this.zzb;
    }

    public final AdSize[] zzb(boolean z) {
        if (!z && this.zza.length != 1) {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-8743921899070914270L, 6488977571816751383L, 1590596981376190397L, 8324459338890553723L, 3588924473137086730L, -8527961323190608834L, -5109954739196371484L, 8973442244176961718L, -6782196313157485186L}).toString());
        }
        return this.zza;
    }
}
