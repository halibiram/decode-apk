package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.os.Build;
import android.util.Range;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzcn {
    private static List zzb;
    private static final Map zza = new HashMap();
    private static final Object zzc = new Object();

    public static List zza(String str) {
        ArrayList arrayList;
        int maxSupportedInstances;
        int i = 3;
        Object obj = zzc;
        synchronized (obj) {
            Map map = zza;
            if (map.containsKey(str)) {
                return (List) map.get(str);
            }
            try {
                synchronized (obj) {
                    try {
                        if (zzb == null) {
                            zzb = Arrays.asList(new MediaCodecList(0).getCodecInfos());
                        }
                        arrayList = new ArrayList();
                        for (MediaCodecInfo mediaCodecInfo : zzb) {
                            if (!mediaCodecInfo.isEncoder() && Arrays.asList(mediaCodecInfo.getSupportedTypes()).contains(str)) {
                                HashMap hashMap = new HashMap();
                                long[] jArr = new long[i];
                                // fill-array-data instruction
                                jArr[0] = 9052751107188037759L;
                                jArr[1] = 8362497229747430722L;
                                jArr[2] = 3055164546790884125L;
                                hashMap.put(new ObfuscatedString(jArr).toString(), mediaCodecInfo.getName());
                                MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfo.getCapabilitiesForType(str);
                                ArrayList arrayList2 = new ArrayList();
                                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : capabilitiesForType.profileLevels) {
                                    arrayList2.add(new Integer[]{Integer.valueOf(codecProfileLevel.profile), Integer.valueOf(codecProfileLevel.level)});
                                }
                                hashMap.put(new ObfuscatedString(new long[]{-5944990452266782375L, 3348452867246726633L, 4154236704132443667L}).toString(), arrayList2);
                                MediaCodecInfo.VideoCapabilities videoCapabilities = capabilitiesForType.getVideoCapabilities();
                                hashMap.put(new ObfuscatedString(new long[]{-8110209818108007083L, 5626950664835559014L, -5653283482102138418L}).toString(), zzb(videoCapabilities.getBitrateRange()));
                                hashMap.put(new ObfuscatedString(new long[]{-3872602808168199965L, -2765184517373043928L, 7482720457288163056L}).toString(), Integer.valueOf(videoCapabilities.getWidthAlignment()));
                                hashMap.put(new ObfuscatedString(new long[]{-5993389898062588482L, 1328835563502390455L, -5019104194103657426L}).toString(), Integer.valueOf(videoCapabilities.getHeightAlignment()));
                                hashMap.put(new ObfuscatedString(new long[]{226729321271686503L, -2595630052431424862L, -1105777360782704330L}).toString(), zzb(videoCapabilities.getSupportedFrameRates()));
                                hashMap.put(new ObfuscatedString(new long[]{3312521129266145709L, -291219738768214861L}).toString(), zzb(videoCapabilities.getSupportedWidths()));
                                hashMap.put(new ObfuscatedString(new long[]{8897551441414543478L, 3442683777926208835L}).toString(), zzb(videoCapabilities.getSupportedHeights()));
                                if (Build.VERSION.SDK_INT >= 23) {
                                    String obfuscatedString = new ObfuscatedString(new long[]{223514666544726114L, 8678172346639258056L, -3948607631970040805L}).toString();
                                    maxSupportedInstances = capabilitiesForType.getMaxSupportedInstances();
                                    hashMap.put(obfuscatedString, Integer.valueOf(maxSupportedInstances));
                                }
                                arrayList.add(hashMap);
                                i = 3;
                            }
                        }
                        zza.put(str, arrayList);
                    } finally {
                    }
                }
                return arrayList;
            } catch (LinkageError e) {
                e = e;
                HashMap hashMap2 = new HashMap();
                hashMap2.put(new ObfuscatedString(new long[]{3976487788451093523L, -3944807408776998640L}).toString(), e.getClass().getSimpleName());
                ArrayList arrayList3 = new ArrayList();
                arrayList3.add(hashMap2);
                zza.put(str, arrayList3);
                return arrayList3;
            } catch (RuntimeException e2) {
                e = e2;
                HashMap hashMap22 = new HashMap();
                hashMap22.put(new ObfuscatedString(new long[]{3976487788451093523L, -3944807408776998640L}).toString(), e.getClass().getSimpleName());
                ArrayList arrayList32 = new ArrayList();
                arrayList32.add(hashMap22);
                zza.put(str, arrayList32);
                return arrayList32;
            }
        }
    }

    @TargetApi(21)
    private static Integer[] zzb(Range range) {
        return new Integer[]{(Integer) range.getLower(), (Integer) range.getUpper()};
    }
}
