package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import j$.util.DesugarTimeZone;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzaqx {
    public static long zza(String str) {
        try {
            return zzd(new ObfuscatedString(new long[]{-1239412987348241640L, 9013193361098181607L, -2351728193526287306L, -3591726201425030854L, -3014026397297004390L}).toString()).parse(str).getTime();
        } catch (ParseException e) {
            boolean equals = new ObfuscatedString(new long[]{-3160099161489405122L, -4648239081980247590L}).toString().equals(str);
            String obfuscatedString = new ObfuscatedString(new long[]{-3554409811095470567L, -8933727526267596822L, 4217800408951733825L, 4929569312529812714L, -2745056315413842389L, -3807939239900114243L, 4780276190178740121L}).toString();
            if (!equals && !new ObfuscatedString(new long[]{-1215801779844318841L, 2512310981709569356L}).toString().equals(str)) {
                zzaqm.zzc(e, obfuscatedString, str);
                return 0L;
            }
            zzaqm.zzd(obfuscatedString, str);
            return 0L;
        }
    }

    @Nullable
    public static zzapj zzb(zzapw zzapwVar) {
        long j;
        boolean z;
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        long j8;
        int i;
        long currentTimeMillis = System.currentTimeMillis();
        Map map = zzapwVar.zzc;
        if (map != null) {
            String str = (String) map.get(new ObfuscatedString(new long[]{4875365441108831974L, -8989757439652869857L}).toString());
            if (str != null) {
                j = zza(str);
            } else {
                j = 0;
            }
            String str2 = (String) map.get(new ObfuscatedString(new long[]{-462153683332869541L, -8710587773690780560L, -3634127818942913068L}).toString());
            int i2 = 0;
            if (str2 != null) {
                String[] split = str2.split(new ObfuscatedString(new long[]{-4331068976203421113L, -5634496172030452639L}).toString(), 0);
                int i3 = 0;
                j2 = 0;
                j3 = 0;
                while (i2 < split.length) {
                    String trim = split[i2].trim();
                    if (!trim.equals(new ObfuscatedString(new long[]{4041215633031742153L, 4288504060352213365L}).toString()) && !trim.equals(new ObfuscatedString(new long[]{414453684845071756L, 3599680863876977858L}).toString())) {
                        if (trim.startsWith(new ObfuscatedString(new long[]{-6821262780848335036L, 5541357558815597868L}).toString())) {
                            try {
                                j3 = Long.parseLong(trim.substring(8));
                            } catch (Exception unused) {
                            }
                        } else if (trim.startsWith(new ObfuscatedString(new long[]{2418630789340767613L, 4503697068138408221L, -2781932684957992437L, -3308048811773221198L}).toString())) {
                            j2 = Long.parseLong(trim.substring(23));
                        } else if (trim.equals(new ObfuscatedString(new long[]{-7625184622943172693L, 1458725175262586419L, 85742341981503243L}).toString()) || trim.equals(new ObfuscatedString(new long[]{4133726626881446540L, 4187640612454840061L, 1712949884019301273L}).toString())) {
                            i = 1;
                            i3 = 1;
                            i2 += i;
                        }
                        i = 1;
                        i2 += i;
                    } else {
                        return null;
                    }
                }
                z = true;
                i2 = i3;
            } else {
                z = false;
                j2 = 0;
                j3 = 0;
            }
            String str3 = (String) map.get(new ObfuscatedString(new long[]{4364815211426414385L, 4260948555137690766L}).toString());
            if (str3 != null) {
                j4 = zza(str3);
            } else {
                j4 = 0;
            }
            String str4 = (String) map.get(new ObfuscatedString(new long[]{4903631568850042483L, 2742274154831806685L, 6770227183293882762L}).toString());
            if (str4 != null) {
                j5 = zza(str4);
            } else {
                j5 = 0;
            }
            String str5 = (String) map.get(new ObfuscatedString(new long[]{6466545515417626651L, 38136267047639409L}).toString());
            if (z) {
                long j9 = (j3 * 1000) + currentTimeMillis;
                if (i2 != 0) {
                    j8 = j9;
                } else {
                    Long.signum(j2);
                    j8 = (j2 * 1000) + j9;
                }
                j6 = j8;
                j7 = j9;
            } else {
                j6 = 0;
                if (j > 0 && j4 >= j) {
                    j7 = (j4 - j) + currentTimeMillis;
                    j6 = j7;
                } else {
                    j7 = 0;
                }
            }
            zzapj zzapjVar = new zzapj();
            zzapjVar.zza = zzapwVar.zzb;
            zzapjVar.zzb = str5;
            zzapjVar.zzf = j7;
            zzapjVar.zze = j6;
            zzapjVar.zzc = j;
            zzapjVar.zzd = j5;
            zzapjVar.zzg = map;
            zzapjVar.zzh = zzapwVar.zzd;
            return zzapjVar;
        }
        return null;
    }

    public static String zzc(long j) {
        return zzd(new ObfuscatedString(new long[]{-1000441872146915350L, 5647805715369161713L, 2808998483531220187L, -6410152669693498679L, -6422162789154011002L}).toString()).format(new Date(j));
    }

    private static SimpleDateFormat zzd(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, Locale.US);
        simpleDateFormat.setTimeZone(DesugarTimeZone.getTimeZone(new ObfuscatedString(new long[]{-837167420999640362L, 7973866154083155808L}).toString()));
        return simpleDateFormat;
    }
}
