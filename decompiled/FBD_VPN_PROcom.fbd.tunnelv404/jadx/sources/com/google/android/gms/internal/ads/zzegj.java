package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import com.panda912.muddy.ObfuscatedString;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzegj implements zzgej {
    final /* synthetic */ boolean zza;
    final /* synthetic */ zzegk zzb;

    public zzegj(zzegk zzegkVar, boolean z) {
        this.zza = z;
        this.zzb = zzegkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final void zza(Throwable th) {
        zzcec.zzg(new ObfuscatedString(new long[]{3084918352397585079L, 4170529756447844031L, 7383387674249664810L, 4592845618132164527L, -8737554673055308799L}).toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0069  */
    @Override // com.google.android.gms.internal.ads.zzgej
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        List<String> emptyList;
        List asList;
        char c;
        zzbcn zzbcnVar;
        Bundle bundle = (Bundle) obj;
        if (this.zzb.zzf()) {
            return;
        }
        Object obj2 = bundle.get(new ObfuscatedString(new long[]{1826904340392360786L, -3073031642572020527L}).toString());
        if (obj2 instanceof List) {
            asList = (List) obj2;
        } else if (obj2 instanceof String[]) {
            asList = Arrays.asList((String[]) obj2);
        } else {
            emptyList = Collections.emptyList();
            final ArrayList arrayList = new ArrayList();
            for (String str : emptyList) {
                switch (str.hashCode()) {
                    case -1396342996:
                        if (str.equals(new ObfuscatedString(new long[]{-4790541813562728812L, 468277553102850123L}).toString())) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1052618729:
                        if (str.equals(new ObfuscatedString(new long[]{-3855353891341834722L, 3616597027080292623L}).toString())) {
                            c = 2;
                            break;
                        }
                        break;
                    case -239580146:
                        if (str.equals(new ObfuscatedString(new long[]{1820928650399879441L, 512636969297937677L}).toString())) {
                            c = 3;
                            break;
                        }
                        break;
                    case 604727084:
                        if (str.equals(new ObfuscatedString(new long[]{-4725237979697718825L, -9115478213308682946L, -2886455571937884931L}).toString())) {
                            c = 1;
                            break;
                        }
                        break;
                }
                c = 65535;
                if (c != 0) {
                    if (c != 1) {
                        if (c != 2) {
                            if (c != 3) {
                                zzbcnVar = zzbcn.zza;
                            } else {
                                zzbcnVar = zzbcn.zzj;
                            }
                        } else {
                            zzbcnVar = zzbcn.zzf;
                        }
                    } else {
                        zzbcnVar = zzbcn.zzc;
                    }
                } else {
                    zzbcnVar = zzbcn.zzb;
                }
                arrayList.add(zzbcnVar);
            }
            final zzbec zzb = zzegk.zzb(this.zzb, bundle);
            final zzbdt zza = zzegk.zza(this.zzb, bundle);
            zzegk zzegkVar = this.zzb;
            final boolean z = this.zza;
            zzegkVar.zza.zza(new zzfkp() { // from class: com.google.android.gms.internal.ads.zzegi
                @Override // com.google.android.gms.internal.ads.zzfkp
                public final Object zza(Object obj3) {
                    zzegc zzegcVar;
                    zzegj zzegjVar = zzegj.this;
                    SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj3;
                    if (!zzegjVar.zzb.zzf()) {
                        zzbec zzbecVar = zzb;
                        zzbdt zzbdtVar = zza;
                        ArrayList arrayList2 = arrayList;
                        boolean z2 = z;
                        byte[] zze = zzegk.zze(zzegjVar.zzb, z2, arrayList2, zzbdtVar, zzbecVar);
                        zzegn.zzg(sQLiteDatabase, z2, true);
                        zzegcVar = zzegjVar.zzb.zzf;
                        zzegn.zzd(sQLiteDatabase, zzegcVar.zzd(), zze);
                        return null;
                    }
                    return null;
                }
            });
        }
        ArrayList arrayList2 = new ArrayList(asList.size());
        for (Object obj3 : asList) {
            if (obj3 instanceof String) {
                arrayList2.add((String) obj3);
            }
        }
        emptyList = DesugarCollections.unmodifiableList(arrayList2);
        final ArrayList arrayList3 = new ArrayList();
        while (r2.hasNext()) {
        }
        final zzbec zzb2 = zzegk.zzb(this.zzb, bundle);
        final zzbdt zza2 = zzegk.zza(this.zzb, bundle);
        zzegk zzegkVar2 = this.zzb;
        final boolean z2 = this.zza;
        zzegkVar2.zza.zza(new zzfkp() { // from class: com.google.android.gms.internal.ads.zzegi
            @Override // com.google.android.gms.internal.ads.zzfkp
            public final Object zza(Object obj32) {
                zzegc zzegcVar;
                zzegj zzegjVar = zzegj.this;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj32;
                if (!zzegjVar.zzb.zzf()) {
                    zzbec zzbecVar = zzb2;
                    zzbdt zzbdtVar = zza2;
                    ArrayList arrayList22 = arrayList3;
                    boolean z22 = z2;
                    byte[] zze = zzegk.zze(zzegjVar.zzb, z22, arrayList22, zzbdtVar, zzbecVar);
                    zzegn.zzg(sQLiteDatabase, z22, true);
                    zzegcVar = zzegjVar.zzb.zzf;
                    zzegn.zzd(sQLiteDatabase, zzegcVar.zzd(), zze);
                    return null;
                }
                return null;
            }
        });
    }
}
