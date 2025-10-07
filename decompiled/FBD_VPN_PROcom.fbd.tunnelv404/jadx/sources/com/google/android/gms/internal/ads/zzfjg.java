package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;

/* loaded from: classes2.dex */
public final class zzfjg implements zzfjf {
    private final Object[] zza;

    public zzfjg(com.google.android.gms.ads.internal.client.zzl zzlVar, String str, int i, String str2, com.google.android.gms.ads.internal.client.zzw zzwVar) {
        HashSet hashSet = new HashSet(Arrays.asList(str2.split(new ObfuscatedString(new long[]{-9188255818675241043L, 4175373713572078074L}).toString())));
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        arrayList.add(str);
        if (hashSet.contains(new ObfuscatedString(new long[]{-8171611243090584142L, 5911162159823429202L, 1966887547834914137L}).toString())) {
            arrayList.add(Integer.valueOf(i));
        }
        if (hashSet.contains(new ObfuscatedString(new long[]{-7306815712256433406L, -8396073272785989562L}).toString())) {
            arrayList.add(Long.valueOf(zzlVar.zzb));
        }
        if (hashSet.contains(new ObfuscatedString(new long[]{-8363411980774169585L, -2492459147959430332L}).toString())) {
            arrayList.add(zza(zzlVar.zzc));
        } else if (hashSet.contains(new ObfuscatedString(new long[]{5815201166336909781L, 9215300901465302946L}).toString())) {
            arrayList.add(zzlVar.zzc.getString(new ObfuscatedString(new long[]{2960999791001366068L, 5050687399308916943L}).toString()));
        }
        if (hashSet.contains(new ObfuscatedString(new long[]{-6055838299302946109L, -4534227784001168427L}).toString())) {
            arrayList.add(Integer.valueOf(zzlVar.zzd));
        }
        if (hashSet.contains(new ObfuscatedString(new long[]{-5637134424763971728L, 683427668393700299L}).toString())) {
            List list = zzlVar.zze;
            if (list != null) {
                arrayList.add(list.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains(new ObfuscatedString(new long[]{4650856019988792492L, -4018718195483340446L, 6045137856653157038L}).toString())) {
            arrayList.add(Boolean.valueOf(zzlVar.zzf));
        }
        if (hashSet.contains(new ObfuscatedString(new long[]{8147856969741374165L, -8952739688946875463L, -4473963756237178952L, -451728344282466902L, 4533054347455701233L}).toString())) {
            arrayList.add(Integer.valueOf(zzlVar.zzg));
        }
        if (hashSet.contains(new ObfuscatedString(new long[]{-8459657395105247480L, -6556635600192956493L, -1963954315476511230L, 8233117139292828115L}).toString())) {
            arrayList.add(Boolean.valueOf(zzlVar.zzh));
        }
        if (hashSet.contains(new ObfuscatedString(new long[]{-8187739893354670299L, -2081234001603322178L, -5115055165429640605L, 8345163330978026114L}).toString())) {
            arrayList.add(zzlVar.zzi);
        }
        if (hashSet.contains(new ObfuscatedString(new long[]{-6031960017122414398L, 7577099954439673039L}).toString())) {
            Location location = zzlVar.zzk;
            if (location != null) {
                arrayList.add(location.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains(new ObfuscatedString(new long[]{8366932735861672564L, 8825633117487507675L, -1580026986618019346L}).toString())) {
            arrayList.add(zzlVar.zzl);
        }
        if (hashSet.contains(new ObfuscatedString(new long[]{8153785984554025001L, -7428375272147266248L, -2391367300223144660L}).toString())) {
            arrayList.add(zza(zzlVar.zzm));
        }
        if (hashSet.contains(new ObfuscatedString(new long[]{2922687130031486156L, 805036128179716359L, -8808462871047749238L}).toString())) {
            arrayList.add(zza(zzlVar.zzn));
        }
        if (hashSet.contains(new ObfuscatedString(new long[]{8200254723107476573L, 5392439780510007841L, -5661024440633495885L, -8404682857575976874L}).toString())) {
            List list2 = zzlVar.zzo;
            if (list2 != null) {
                arrayList.add(list2.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains(new ObfuscatedString(new long[]{5401243241292997448L, 897743322817824154L, -1784431984621008842L}).toString())) {
            arrayList.add(zzlVar.zzp);
        }
        if (hashSet.contains(new ObfuscatedString(new long[]{7106368243445516635L, -4224782539775397978L, -1070123369685883290L}).toString())) {
            arrayList.add(zzlVar.zzq);
        }
        if (hashSet.contains(new ObfuscatedString(new long[]{-1070667600846839907L, 1590394443870059493L, 7771640899021588983L, 1873869319938614578L}).toString())) {
            arrayList.add(Boolean.valueOf(zzlVar.zzr));
        }
        if (hashSet.contains(new ObfuscatedString(new long[]{4545955786476295167L, 5472866961008876743L, 5499276878029130523L, 1455610836509791431L}).toString())) {
            arrayList.add(Integer.valueOf(zzlVar.zzt));
        }
        if (hashSet.contains(new ObfuscatedString(new long[]{8875278504442943357L, -7288762027458122563L, -750274384387643720L, 2016300563387330794L}).toString())) {
            arrayList.add(zzlVar.zzu);
        }
        if (hashSet.contains(new ObfuscatedString(new long[]{-4963436769772479199L, -4605146015290785241L, -6102335814167664562L}).toString())) {
            if (zzwVar != null) {
                arrayList.add(Integer.valueOf(zzwVar.zza));
            } else {
                arrayList.add(null);
            }
        }
        this.zza = arrayList.toArray();
    }

    @Nullable
    private static String zza(@Nullable Bundle bundle) {
        String obj;
        if (bundle == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = new TreeSet(bundle.keySet()).iterator();
        while (it.hasNext()) {
            Object obj2 = bundle.get((String) it.next());
            if (obj2 == null) {
                obj = new ObfuscatedString(new long[]{-2741383486897529447L, 1168224467149171509L}).toString();
            } else if (obj2 instanceof Bundle) {
                obj = zza((Bundle) obj2);
            } else {
                obj = obj2.toString();
            }
            sb.append(obj);
        }
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfjf
    public final boolean equals(Object obj) {
        if (!(obj instanceof zzfjg)) {
            return false;
        }
        return Arrays.equals(this.zza, ((zzfjg) obj).zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfjf
    public final int hashCode() {
        return Arrays.hashCode(this.zza);
    }

    public final String toString() {
        Object[] objArr = this.zza;
        int hashCode = Arrays.hashCode(objArr);
        String arrays = Arrays.toString(objArr);
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{894323815014941677L, -1164118425716074604L, 8849118979605480410L}).toString());
        sb.append(hashCode);
        sb.append(new ObfuscatedString(new long[]{-8198719842173036500L, 7916122544730169314L}).toString());
        sb.append(arrays);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1638032294237734401L, -7069251907047915197L}), sb);
    }
}
