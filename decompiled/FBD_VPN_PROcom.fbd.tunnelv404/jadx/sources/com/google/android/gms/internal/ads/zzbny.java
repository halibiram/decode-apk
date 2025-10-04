package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzbny implements zzbng {
    private final Context zza;

    public zzbny(Context context) {
        this.zza = context;
    }

    @Override // com.google.android.gms.internal.ads.zzbng
    public final void zza(Object obj, Map map) {
        if (map.containsKey(new ObfuscatedString(new long[]{-2747038989842396764L, 1790052660842735242L}).toString()) && !TextUtils.isEmpty((CharSequence) map.get(new ObfuscatedString(new long[]{6962773287408832142L, -5679193713654053357L}).toString()))) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{807048919802707544L, 1317737134058852815L, 6481694445061020670L, -7144967417571502805L, 5454618428261536558L}).toString().concat(String.valueOf((String) map.get(new ObfuscatedString(new long[]{3306349092411265626L, -9149376697837935928L}).toString()))));
            Intent intent = new Intent();
            intent.setAction(new ObfuscatedString(new long[]{3383622918722811786L, -4625487228504237478L, 1618971659648056544L, 415679398087383434L, 8044957081504246391L}).toString());
            intent.setType(new ObfuscatedString(new long[]{2642329004553710918L, -9087460104793246546L, -3275422718600053847L}).toString());
            intent.putExtra(new ObfuscatedString(new long[]{8850772703658544055L, 2656627809297715994L, 8205406746599502436L, 5319016057272835428L, -1860241771382828641L}).toString(), (String) map.get(new ObfuscatedString(new long[]{7495356705563187303L, 6915086948447609916L}).toString()));
            if (map.containsKey(new ObfuscatedString(new long[]{-3583646795853717819L, -2248959133739251458L}).toString())) {
                intent.putExtra(new ObfuscatedString(new long[]{-8214266427870034212L, -6032925649160259352L, -5547590180809824326L, 303363344100981267L, 4567795816597916605L}).toString(), (String) map.get(new ObfuscatedString(new long[]{-3302258064755887281L, -1038165291279476924L}).toString()));
            }
            try {
                com.google.android.gms.ads.internal.zzt.zzp();
                com.google.android.gms.ads.internal.util.zzt.zzS(this.zza, intent);
            } catch (RuntimeException e) {
                zzcec.zzk(new ObfuscatedString(new long[]{3113119962811533279L, -2683583525469325328L, 6548999977894468560L, 5938359777474502115L, -2815980614513878265L}).toString(), e);
                com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{6520969792448655098L, -8276382221917707424L, -5185418416276524436L, -5467789242556050176L, -3612697908395103446L}).toString());
            }
        }
    }
}
