package com.google.android.gms.common.util;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;

@KeepForSdk
/* loaded from: classes2.dex */
public class MapUtils {
    @KeepForSdk
    public static void writeStringMapToJson(@NonNull StringBuilder sb, @NonNull HashMap<String, String> hashMap) {
        sb.append(new ObfuscatedString(new long[]{-6092978893555066495L, 7572002026563509012L}).toString());
        boolean z = true;
        for (String str : hashMap.keySet()) {
            if (!z) {
                sb.append(new ObfuscatedString(new long[]{-7160979625936904629L, 8206116459043654760L}).toString());
            }
            String str2 = hashMap.get(str);
            sb.append(new ObfuscatedString(new long[]{4728687269280132548L, 255179485376482917L}).toString());
            sb.append(str);
            sb.append(new ObfuscatedString(new long[]{6139919496379488938L, 5592843194890265801L}).toString());
            if (str2 == null) {
                sb.append(new ObfuscatedString(new long[]{-6082002091411724083L, 477813155747078970L}).toString());
            } else {
                sb.append(new ObfuscatedString(new long[]{1427205581963006579L, -7233891156025818711L}).toString());
                sb.append(str2);
                sb.append(new ObfuscatedString(new long[]{941412799233587911L, -6243714860143807964L}).toString());
            }
            z = false;
        }
        sb.append(new ObfuscatedString(new long[]{2060208531288960132L, -9018379828060316110L}).toString());
    }
}
