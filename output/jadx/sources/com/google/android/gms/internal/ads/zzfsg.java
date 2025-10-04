package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.util.Hex;
import com.panda912.muddy.ObfuscatedString;
import java.io.File;
import java.util.HashSet;

/* loaded from: classes2.dex */
public final class zzfsg {

    @VisibleForTesting
    final File zza;
    private final File zzb;
    private final SharedPreferences zzc;
    private final int zzd;

    public zzfsg(@NonNull Context context, int i) {
        this.zzc = context.getSharedPreferences(new ObfuscatedString(new long[]{-1310410544465403255L, 5836527091065496981L}).toString(), 0);
        File dir = context.getDir(new ObfuscatedString(new long[]{-7600809367403770085L, -514818267706500440L}).toString(), 0);
        zzfsh.zza(dir, false);
        this.zzb = dir;
        File dir2 = context.getDir(new ObfuscatedString(new long[]{4937358822649797916L, -8061403746027316784L, -1479222213614099199L}).toString(), 0);
        zzfsh.zza(dir2, true);
        this.zza = dir2;
        this.zzd = i;
    }

    private final File zzd() {
        File file = new File(this.zzb, Integer.toString(this.zzd - 1));
        if (!file.exists()) {
            file.mkdir();
        }
        return file;
    }

    private final String zze() {
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{1665638475281931305L, -1747297192250488424L}).toString());
        sb.append(this.zzd - 1);
        return sb.toString();
    }

    private final String zzf() {
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{4686708474773785269L, 1307563962330972929L}).toString());
        sb.append(this.zzd - 1);
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x01c8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zza(@NonNull zzayc zzaycVar, @Nullable zzfsm zzfsmVar) {
        boolean z;
        zzayf zzb;
        zzayf zzb2;
        String zzk = zzaycVar.zzd().zzk();
        byte[] zzA = zzaycVar.zzf().zzA();
        byte[] zzA2 = zzaycVar.zze().zzA();
        if (!TextUtils.isEmpty(zzk) && zzA2 != null && zzA2.length != 0) {
            zzfsh.zzd(this.zza);
            this.zza.mkdirs();
            zzfsh.zzc(zzk, this.zza).mkdirs();
            File zzb3 = zzfsh.zzb(zzk, new ObfuscatedString(new long[]{-6209560673226786184L, -1657991979422250342L}).toString(), this.zza);
            if (zzA == null || zzA.length <= 0 || zzfsh.zze(zzb3, zzA)) {
                if (zzfsh.zze(zzfsh.zzb(zzk, new ObfuscatedString(new long[]{8915632129583505598L, 3810349659988028663L}).toString(), this.zza), zzA2)) {
                    File zzb4 = zzfsh.zzb(zzaycVar.zzd().zzk(), new ObfuscatedString(new long[]{2962434349879200233L, 3572367065962455822L}).toString(), this.zza);
                    if (zzb4.exists() && zzfsmVar != null && !zzfsmVar.zza(zzb4)) {
                        return false;
                    }
                    String zzk2 = zzaycVar.zzd().zzk();
                    if (!TextUtils.isEmpty(zzk2)) {
                        File zzb5 = zzfsh.zzb(zzk2, new ObfuscatedString(new long[]{5884987464558773274L, 757657347426619318L}).toString(), this.zza);
                        File zzb6 = zzfsh.zzb(zzk2, new ObfuscatedString(new long[]{4334628395239394014L, -2432492409670416501L}).toString(), this.zza);
                        File zzb7 = zzfsh.zzb(zzk2, new ObfuscatedString(new long[]{957374338158022429L, 3734546739164556348L}).toString(), zzd());
                        File zzb8 = zzfsh.zzb(zzk2, new ObfuscatedString(new long[]{3677916262666566349L, -7979042424551250169L}).toString(), zzd());
                        if ((!zzb5.exists() || zzb5.renameTo(zzb7)) && zzb6.exists() && zzb6.renameTo(zzb8)) {
                            zzaye zze = zzayf.zze();
                            zze.zze(zzaycVar.zzd().zzk());
                            zze.zza(zzaycVar.zzd().zzj());
                            zze.zzb(zzaycVar.zzd().zza());
                            zze.zzd(zzaycVar.zzd().zzd());
                            zze.zzc(zzaycVar.zzd().zzc());
                            zzayf zzayfVar = (zzayf) zze.zzal();
                            zzayf zzb9 = zzb(1);
                            SharedPreferences.Editor edit = this.zzc.edit();
                            if (zzb9 != null && !zzayfVar.zzk().equals(zzb9.zzk())) {
                                edit.putString(zze(), Hex.bytesToStringLowercase(zzb9.zzax()));
                            }
                            edit.putString(zzf(), Hex.bytesToStringLowercase(zzayfVar.zzax()));
                            if (edit.commit()) {
                                z = true;
                                HashSet hashSet = new HashSet();
                                zzb = zzb(1);
                                if (zzb != null) {
                                    hashSet.add(zzb.zzk());
                                }
                                zzb2 = zzb(2);
                                if (zzb2 != null) {
                                    hashSet.add(zzb2.zzk());
                                }
                                for (File file : zzd().listFiles()) {
                                    String name = file.getName();
                                    if (!hashSet.contains(name)) {
                                        zzfsh.zzd(zzfsh.zzc(name, zzd()));
                                    }
                                }
                                return z;
                            }
                        }
                    }
                    z = false;
                    HashSet hashSet2 = new HashSet();
                    zzb = zzb(1);
                    if (zzb != null) {
                    }
                    zzb2 = zzb(2);
                    if (zzb2 != null) {
                    }
                    while (r6 < r2) {
                    }
                    return z;
                }
            }
        }
        return false;
    }

    @Nullable
    @VisibleForTesting
    public final zzayf zzb(int i) {
        String string;
        if (i == 1) {
            string = this.zzc.getString(zzf(), null);
        } else {
            string = this.zzc.getString(zze(), null);
        }
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            byte[] stringToBytes = Hex.stringToBytes(string);
            zzgyl zzgylVar = zzgyl.zzb;
            zzayf zzh = zzayf.zzh(zzgyl.zzv(stringToBytes, 0, stringToBytes.length));
            String zzk = zzh.zzk();
            File zzb = zzfsh.zzb(zzk, new ObfuscatedString(new long[]{-7105349716605383535L, -7589273538798554291L}).toString(), zzd());
            if (!zzb.exists()) {
                zzb = zzfsh.zzb(zzk, new ObfuscatedString(new long[]{-6382757783429963733L, -4039939840807904659L}).toString(), zzd());
            }
            File zzb2 = zzfsh.zzb(zzk, new ObfuscatedString(new long[]{-4307700298557170005L, -6963371443212439793L}).toString(), zzd());
            if (zzb.exists()) {
                if (zzb2.exists()) {
                    return zzh;
                }
            }
        } catch (zzhag unused) {
        }
        return null;
    }

    @Nullable
    public final zzfsf zzc(int i) {
        zzayf zzb = zzb(1);
        if (zzb == null) {
            return null;
        }
        String zzk = zzb.zzk();
        File zzb2 = zzfsh.zzb(zzk, new ObfuscatedString(new long[]{5757062676379112490L, -861175103740199245L}).toString(), zzd());
        if (!zzb2.exists()) {
            zzb2 = zzfsh.zzb(zzk, new ObfuscatedString(new long[]{8837611174375355987L, 8892029580800028785L}).toString(), zzd());
        }
        return new zzfsf(zzb, zzb2, zzfsh.zzb(zzk, new ObfuscatedString(new long[]{7597219923719642582L, -4026026525197367144L}).toString(), zzd()), zzfsh.zzb(zzk, new ObfuscatedString(new long[]{-6761543738230160229L, 7395115012157825784L}).toString(), zzd()));
    }
}
