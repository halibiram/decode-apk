package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class zzbac {
    private final zzazr zza;
    private final int zzb;
    private String zzc;
    private final int zzd;

    public zzbac(int i, int i2, int i3) {
        this.zzb = i;
        i2 = (i2 > 64 || i2 < 0) ? 64 : i2;
        if (i3 <= 0) {
            this.zzd = 1;
        } else {
            this.zzd = i3;
        }
        this.zza = new zzbaa(i2);
    }

    public final String zza(ArrayList arrayList, ArrayList arrayList2) {
        String str;
        int i = 2;
        Collections.sort(arrayList2, new zzbab(this));
        HashSet hashSet = new HashSet();
        int i2 = 0;
        loop0: while (i2 < arrayList2.size()) {
            long[] jArr = new long[i];
            // fill-array-data instruction
            jArr[0] = -5995906727506259176L;
            jArr[1] = 1506213612812663245L;
            String[] split = Normalizer.normalize((CharSequence) arrayList.get(((zzazq) arrayList2.get(i2)).zze()), Normalizer.Form.NFKC).toLowerCase(Locale.US).split(new ObfuscatedString(jArr).toString());
            if (split.length != 0) {
                int i3 = 0;
                while (i3 < split.length) {
                    String str2 = split[i3];
                    long[] jArr2 = new long[i];
                    // fill-array-data instruction
                    jArr2[0] = 621759499795666072L;
                    jArr2[1] = 6678784027536133214L;
                    if (str2.contains(new ObfuscatedString(jArr2).toString())) {
                        StringBuilder sb = new StringBuilder(str2);
                        int i4 = 1;
                        boolean z = false;
                        while (true) {
                            int i5 = i4 + 2;
                            if (i5 > sb.length()) {
                                break;
                            }
                            if (sb.charAt(i4) == '\'') {
                                if (sb.charAt(i4 - 1) != ' ') {
                                    int i6 = i4 + 1;
                                    if ((sb.charAt(i6) == 's' || sb.charAt(i6) == 'S') && (i5 == sb.length() || sb.charAt(i5) == ' ')) {
                                        sb.insert(i4, ' ');
                                        i4 = i5;
                                        z = true;
                                    }
                                }
                                sb.setCharAt(i4, ' ');
                                z = true;
                            }
                            i4++;
                        }
                        if (z) {
                            str = sb.toString();
                        } else {
                            str = null;
                        }
                        if (str != null) {
                            this.zzc = str;
                            str2 = str;
                        }
                    }
                    String[] zzb = zzazv.zzb(str2, true);
                    if (zzb.length >= this.zzd) {
                        for (int i7 = 0; i7 < zzb.length; i7++) {
                            String obfuscatedString = new ObfuscatedString(new long[]{-295006646166509533L}).toString();
                            for (int i8 = 0; i8 < this.zzd; i8++) {
                                int i9 = i7 + i8;
                                if (i9 >= zzb.length) {
                                    break;
                                }
                                if (i8 > 0) {
                                    obfuscatedString = obfuscatedString.concat(new ObfuscatedString(new long[]{1945484723725515628L, -8252126904860292603L}).toString());
                                }
                                obfuscatedString = obfuscatedString.concat(String.valueOf(zzb[i9]));
                            }
                            hashSet.add(obfuscatedString);
                            if (hashSet.size() >= this.zzb) {
                                break loop0;
                            }
                        }
                        if (hashSet.size() >= this.zzb) {
                            break loop0;
                        }
                    }
                    i3++;
                    i = 2;
                }
            }
            i2++;
            i = 2;
        }
        zzazt zzaztVar = new zzazt();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            try {
                zzaztVar.zzb.write(this.zza.zzb((String) it.next()));
            } catch (IOException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{4755191114609253341L, 4124738776747592537L, -6172428510811916976L, -1579816916140477868L, 7344256658830243407L, -7446133774850933702L}).toString(), e);
            }
        }
        return zzaztVar.toString();
    }
}
