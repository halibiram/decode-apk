package com.google.android.play.core.appupdate.internal;

import com.panda912.muddy.ObfuscatedString;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzi {
    private static final Set zza = new HashSet(Arrays.asList(new ObfuscatedString(new long[]{8992784509023064886L, 4833286849462304650L, 4640386568600190433L}).toString(), new ObfuscatedString(new long[]{5092783300441417186L, 1609651702880447637L}).toString()));
    private static final Set zzb = new HashSet(Arrays.asList(new ObfuscatedString(new long[]{-3822762171806830838L, -4043986875756001105L}).toString(), new ObfuscatedString(new long[]{-3893193343843349867L, 4435929796892978762L}).toString()));
    private static final Map zzc = new HashMap();
    private static final zzm zzd = new zzm(new ObfuscatedString(new long[]{-5117643968988695428L, -5124010241113727130L, -4315984123784995497L}).toString());

    public static synchronized Map zza(String str) {
        Map map;
        synchronized (zzi.class) {
            try {
                Map map2 = zzc;
                String obfuscatedString = new ObfuscatedString(new long[]{-7568014658801326564L, -560170632058747557L, 5024628717736153769L}).toString();
                if (!map2.containsKey(obfuscatedString)) {
                    HashMap hashMap = new HashMap();
                    hashMap.put(new ObfuscatedString(new long[]{-9022589110715800854L, 4841556747772517947L}).toString(), 11004);
                    map2.put(obfuscatedString, hashMap);
                }
                map = (Map) map2.get(obfuscatedString);
            } catch (Throwable th) {
                throw th;
            }
        }
        return map;
    }
}
