package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzchl implements zzbng {
    @Override // com.google.android.gms.internal.ads.zzbng
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        float parseFloat;
        zzcgl zzcglVar = (zzcgl) obj;
        zzcki zzq = zzcglVar.zzq();
        if (zzq == null) {
            try {
                zzcki zzckiVar = new zzcki(zzcglVar, Float.parseFloat((String) map.get(new ObfuscatedString(new long[]{3573951089166966767L, -2047433738171894946L}).toString())), new ObfuscatedString(new long[]{817526031903495241L, -5724048131898118759L}).toString().equals(map.get(new ObfuscatedString(new long[]{7595242405436516360L, -667498259792124162L, 4307474985298292845L, 1328427884797353005L}).toString())), new ObfuscatedString(new long[]{4861005929407828003L, -689363810854852557L}).toString().equals(map.get(new ObfuscatedString(new long[]{6741439931870046623L, -2508653889723393104L, -3058978307727951316L, -933261152472748553L}).toString())));
                zzcglVar.zzC(zzckiVar);
                zzq = zzckiVar;
            } catch (NullPointerException e) {
                e = e;
                zzcec.zzh(new ObfuscatedString(new long[]{1960834248718621264L, -9052284672106165861L, 7002267178977824620L, -8388760957556809781L, -5209957272930530340L, -4183238202861341232L}).toString(), e);
                com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{1062951669111784130L, -7002815612647836855L, 7058794943236255152L, 529854704622484692L, 667012173009648772L}).toString());
                return;
            } catch (NumberFormatException e2) {
                e = e2;
                zzcec.zzh(new ObfuscatedString(new long[]{1960834248718621264L, -9052284672106165861L, 7002267178977824620L, -8388760957556809781L, -5209957272930530340L, -4183238202861341232L}).toString(), e);
                com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{1062951669111784130L, -7002815612647836855L, 7058794943236255152L, 529854704622484692L, 667012173009648772L}).toString());
                return;
            }
        }
        float parseFloat2 = Float.parseFloat((String) map.get(new ObfuscatedString(new long[]{5794992273510367438L, -8077092870162143162L}).toString()));
        boolean equals = new ObfuscatedString(new long[]{-2977568409077341231L, 357484215354944504L}).toString().equals(map.get(new ObfuscatedString(new long[]{3253409838873624398L, 5495051804654550838L}).toString()));
        float parseFloat3 = Float.parseFloat((String) map.get(new ObfuscatedString(new long[]{-7261606634624258381L, -5700892925341280604L, -9099599449046434155L}).toString()));
        int parseInt = Integer.parseInt((String) map.get(new ObfuscatedString(new long[]{2510716618815910750L, 6694814568039702254L, -5483619372575622094L}).toString()));
        int i = 0;
        if (parseInt >= 0 && parseInt <= 3) {
            i = parseInt;
        }
        String str = (String) map.get(new ObfuscatedString(new long[]{5187406833150021511L, -162992547720400408L, 3760634572818684660L}).toString());
        if (TextUtils.isEmpty(str)) {
            parseFloat = 0.0f;
        } else {
            parseFloat = Float.parseFloat(str);
        }
        if (zzcec.zzm(3)) {
            zzcec.zze(new ObfuscatedString(new long[]{383864062254339728L, -5070771704774593641L, -3288494870860957801L, 7392994894145552159L, -6412456785249860612L}).toString() + parseFloat3 + new ObfuscatedString(new long[]{-5633069078473158448L, 7925349355248994921L, 7847338331683856911L}).toString() + parseFloat2 + new ObfuscatedString(new long[]{8880281252448245645L, -7892304633435223012L, 334081164627880722L}).toString() + equals + new ObfuscatedString(new long[]{1288164100577095843L, 3722507717186396653L, -2326124469718125561L, 2147128248028520846L}).toString() + i + new ObfuscatedString(new long[]{1135836815793150394L, -5548653878160732857L, 232710589482938751L, 1452459030963985683L}).toString() + str);
        }
        zzq.zzc(parseFloat3, parseFloat2, i, equals, parseFloat);
    }
}
