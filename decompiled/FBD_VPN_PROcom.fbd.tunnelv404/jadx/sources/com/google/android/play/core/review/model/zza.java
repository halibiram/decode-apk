package com.google.android.play.core.review.model;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1320xaf50c7e8;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zza {
    private static final Map zza;
    private static final Map zzb;

    static {
        HashMap hashMap = new HashMap();
        zza = hashMap;
        HashMap hashMap2 = new HashMap();
        zzb = hashMap2;
        Integer m4358x9738a56c = AbstractC1320xaf50c7e8.m4358x9738a56c(new ObfuscatedString(new long[]{-7575312938084182767L, -6998064600889860228L, 8259400317574227129L, -3390727948312261658L, 8141624672946644130L, -6262931711449131811L, -2132979960269454094L, 4197392924611695826L, 5579868637888670757L, 4536720644615349652L}), hashMap, -1, -2);
        Integer m4358x9738a56c2 = AbstractC1320xaf50c7e8.m4358x9738a56c(new ObfuscatedString(new long[]{8079166407495361259L, 2081744277519197401L, -5575872835702408023L, 1153012764148076116L, -2969241316034542179L, 8187927134252884314L, -8856762723881634635L, 5790612474578797153L}), hashMap, m4358x9738a56c, -100);
        hashMap.put(m4358x9738a56c2, new ObfuscatedString(new long[]{-6928186552475951803L, 2306060782609852700L, 1770680527465810749L, -8730158482102585583L, -2402594978722778256L, 6927077239749663699L, 8321520726254591775L, 6908170470230392041L, -8929000749108889973L, 9142938091191928265L, -321150310998644016L}).toString());
        hashMap2.put(-1, new ObfuscatedString(new long[]{3869230719815438140L, -2488754014638264008L, 5666546188943150662L, -783162789528993082L}).toString());
        hashMap2.put(m4358x9738a56c, new ObfuscatedString(new long[]{6078039052618898547L, -3427289783147254805L, 8876311447617496109L}).toString());
        hashMap2.put(m4358x9738a56c2, new ObfuscatedString(new long[]{-5987552039349767876L, -998756573207081122L, -2609765214603123983L}).toString());
    }

    public static String zza(int i) {
        Map map = zza;
        Integer valueOf = Integer.valueOf(i);
        if (!map.containsKey(valueOf)) {
            return new ObfuscatedString(new long[]{5765197511988360782L}).toString();
        }
        String str = (String) map.get(valueOf);
        String str2 = (String) zzb.get(valueOf);
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(str);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{1247012225929484104L, 1255387890596147611L, 9164102063136986486L, -904388285706667018L, -3105048708102111277L, 8990207687326476403L, 294314355669666007L, 5962431291493489017L, -6436222806224984118L, -2225633038961756766L, -576216084989423123L, 4407161525235747175L, 8746243894363837896L, -1921113451955762952L, 4907591674426211706L}).toString());
        m3341xc20437a5.append(str2);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{3897510422373806864L, -5697291752251434640L}), m3341xc20437a5);
    }
}
