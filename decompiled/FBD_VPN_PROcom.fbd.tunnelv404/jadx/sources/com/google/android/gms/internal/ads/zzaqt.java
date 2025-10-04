package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

@VisibleForTesting
/* loaded from: classes2.dex */
final class zzaqt {
    long zza;
    final String zzb;
    final String zzc;
    final long zzd;
    final long zze;
    final long zzf;
    final long zzg;
    final List zzh;

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzaqt(String str, zzapj zzapjVar) {
        this(str, r2, r3, r5, r7, r9, r0);
        String str2 = zzapjVar.zzb;
        long j = zzapjVar.zzc;
        long j2 = zzapjVar.zzd;
        long j3 = zzapjVar.zze;
        long j4 = zzapjVar.zzf;
        List list = zzapjVar.zzh;
        if (list == 0) {
            Map map = zzapjVar.zzg;
            list = new ArrayList(map.size());
            for (Map.Entry entry : map.entrySet()) {
                list.add(new zzaps((String) entry.getKey(), (String) entry.getValue()));
            }
        }
    }

    public static zzaqt zza(zzaqu zzaquVar) {
        List arrayList;
        if (zzaqw.zze(zzaquVar) == 538247942) {
            String zzh = zzaqw.zzh(zzaquVar);
            String zzh2 = zzaqw.zzh(zzaquVar);
            long zzf = zzaqw.zzf(zzaquVar);
            long zzf2 = zzaqw.zzf(zzaquVar);
            long zzf3 = zzaqw.zzf(zzaquVar);
            long zzf4 = zzaqw.zzf(zzaquVar);
            int zze = zzaqw.zze(zzaquVar);
            if (zze >= 0) {
                if (zze == 0) {
                    arrayList = Collections.emptyList();
                } else {
                    arrayList = new ArrayList();
                }
                List list = arrayList;
                for (int i = 0; i < zze; i++) {
                    list.add(new zzaps(zzaqw.zzh(zzaquVar).intern(), zzaqw.zzh(zzaquVar).intern()));
                }
                return new zzaqt(zzh, zzh2, zzf, zzf2, zzf3, zzf4, list);
            }
            throw new IOException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{5440279563911177543L, -1152375029777327859L, 8353773313145387405L, -3285213621880973989L}), new StringBuilder(), zze));
        }
        throw new IOException();
    }

    private zzaqt(String str, String str2, long j, long j2, long j3, long j4, List list) {
        this.zzb = str;
        this.zzc = true == new ObfuscatedString(new long[]{4255196175798234760L}).toString().equals(str2) ? null : str2;
        this.zzd = j;
        this.zze = j2;
        this.zzf = j3;
        this.zzg = j4;
        this.zzh = list;
    }
}
