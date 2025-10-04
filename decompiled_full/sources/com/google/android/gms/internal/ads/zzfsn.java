package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.Hex;
import com.panda912.muddy.ObfuscatedString;
import java.io.File;
import java.util.HashSet;

/* loaded from: classes2.dex */
public final class zzfsn {
    private static final Object zza = new Object();
    private final Context zzb;
    private final SharedPreferences zzc;
    private final String zzd;
    private final zzfru zze;
    private boolean zzf;

    public zzfsn(@NonNull Context context, @NonNull int i, @NonNull zzfru zzfruVar, boolean z) {
        this.zzf = false;
        this.zzb = context;
        this.zzd = Integer.toString(i - 1);
        this.zzc = context.getSharedPreferences(new ObfuscatedString(new long[]{7532276254105985991L, 3007106878290020684L}).toString(), 0);
        this.zze = zzfruVar;
        this.zzf = z;
    }

    private final File zze(@NonNull String str) {
        return new File(new File(this.zzb.getDir(new ObfuscatedString(new long[]{4378445321694378651L, 962540215557688155L}).toString(), 0), this.zzd), str);
    }

    private static String zzf(@NonNull zzayc zzaycVar) {
        zzaye zze = zzayf.zze();
        zze.zze(zzaycVar.zzd().zzk());
        zze.zza(zzaycVar.zzd().zzj());
        zze.zzb(zzaycVar.zzd().zza());
        zze.zzd(zzaycVar.zzd().zzd());
        zze.zzc(zzaycVar.zzd().zzc());
        return Hex.bytesToStringLowercase(((zzayf) zze.zzal()).zzax());
    }

    private final String zzg() {
        return new ObfuscatedString(new long[]{2714100553452724649L, -1612338072803878633L}).toString().concat(String.valueOf(this.zzd));
    }

    private final String zzh() {
        return new ObfuscatedString(new long[]{2107399006859298717L, 7391275982936670529L}).toString().concat(String.valueOf(this.zzd));
    }

    private final void zzi(int i, long j) {
        this.zze.zza(i, j);
    }

    private final void zzj(int i, long j, String str) {
        this.zze.zzb(i, j, str);
    }

    @Nullable
    private final zzayf zzk(int i) {
        String string;
        zzgzf zzb;
        if (i == 1) {
            string = this.zzc.getString(zzh(), null);
        } else {
            string = this.zzc.getString(zzg(), null);
        }
        if (string == null) {
            return null;
        }
        long currentTimeMillis = System.currentTimeMillis();
        try {
            byte[] stringToBytes = Hex.stringToBytes(string);
            zzgyl zzgylVar = zzgyl.zzb;
            zzgyl zzv = zzgyl.zzv(stringToBytes, 0, stringToBytes.length);
            if (this.zzf) {
                zzb = zzgzf.zza();
            } else {
                zzb = zzgzf.zzb();
            }
            return zzayf.zzi(zzv, zzb);
        } catch (zzhag unused) {
            return null;
        } catch (NullPointerException unused2) {
            zzi(2029, currentTimeMillis);
            return null;
        } catch (RuntimeException unused3) {
            zzi(2032, currentTimeMillis);
            return null;
        }
    }

    public final boolean zza(@NonNull zzayc zzaycVar) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zza) {
            try {
                if (!zzfsh.zze(new File(zze(zzaycVar.zzd().zzk()), new ObfuscatedString(new long[]{7302898021048853261L, 9086590442528556341L}).toString()), zzaycVar.zze().zzA())) {
                    zzi(4020, currentTimeMillis);
                    return false;
                }
                String zzf = zzf(zzaycVar);
                SharedPreferences.Editor edit = this.zzc.edit();
                edit.putString(zzh(), zzf);
                boolean commit = edit.commit();
                if (commit) {
                    zzi(5015, currentTimeMillis);
                } else {
                    zzi(4021, currentTimeMillis);
                }
                return commit;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzb(@NonNull zzayc zzaycVar, @Nullable zzfsm zzfsmVar) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zza) {
            try {
                zzayf zzk = zzk(1);
                String zzk2 = zzaycVar.zzd().zzk();
                if (zzk != null && zzk.zzk().equals(zzk2)) {
                    zzi(4014, currentTimeMillis);
                    return false;
                }
                long currentTimeMillis2 = System.currentTimeMillis();
                File zze = zze(zzk2);
                if (zze.exists()) {
                    boolean isDirectory = zze.isDirectory();
                    String obfuscatedString = new ObfuscatedString(new long[]{-3588270429843602673L, 934400073168353556L}).toString();
                    String obfuscatedString2 = new ObfuscatedString(new long[]{-8879938232774878024L, 5700429565414751536L}).toString();
                    if (true != isDirectory) {
                        obfuscatedString = obfuscatedString2;
                    }
                    boolean isFile = zze.isFile();
                    String obfuscatedString3 = new ObfuscatedString(new long[]{-2752556825235078205L, -322394086917935514L}).toString();
                    String obfuscatedString4 = new ObfuscatedString(new long[]{8352990961498763057L, 6218854745201359627L}).toString();
                    if (true != isFile) {
                        obfuscatedString3 = obfuscatedString4;
                    }
                    zzj(4023, currentTimeMillis2, new ObfuscatedString(new long[]{-4649090330755382688L, 3230528558957377152L}).toString() + obfuscatedString + new ObfuscatedString(new long[]{-219995558144778626L, 2351972026568352194L}).toString() + obfuscatedString3);
                    zzi(4015, currentTimeMillis2);
                } else if (!zze.mkdirs()) {
                    boolean canWrite = zze.canWrite();
                    String obfuscatedString5 = new ObfuscatedString(new long[]{5859352103903855771L, -2975239197855006447L}).toString();
                    String obfuscatedString6 = new ObfuscatedString(new long[]{-2702606613586096961L, 4388680258771070504L}).toString();
                    if (true != canWrite) {
                        obfuscatedString5 = obfuscatedString6;
                    }
                    zzj(4024, currentTimeMillis2, new ObfuscatedString(new long[]{-7585885404602936614L, -6810506126745682442L}).toString().concat(obfuscatedString5));
                    zzi(4015, currentTimeMillis2);
                    return false;
                }
                File zze2 = zze(zzk2);
                File file = new File(zze2, new ObfuscatedString(new long[]{4186309187159265134L, 1131472428368724760L}).toString());
                File file2 = new File(zze2, new ObfuscatedString(new long[]{3618774166694894016L, -5559644483777174480L}).toString());
                if (!zzfsh.zze(file, zzaycVar.zzf().zzA())) {
                    zzi(4016, currentTimeMillis);
                    return false;
                }
                if (!zzfsh.zze(file2, zzaycVar.zze().zzA())) {
                    zzi(4017, currentTimeMillis);
                    return false;
                }
                if (zzfsmVar != null && !zzfsmVar.zza(file)) {
                    zzi(4018, currentTimeMillis);
                    zzfsh.zzd(zze2);
                    return false;
                }
                String zzf = zzf(zzaycVar);
                long currentTimeMillis3 = System.currentTimeMillis();
                String string = this.zzc.getString(zzh(), null);
                SharedPreferences.Editor edit = this.zzc.edit();
                edit.putString(zzh(), zzf);
                if (string != null) {
                    edit.putString(zzg(), string);
                }
                if (!edit.commit()) {
                    zzi(4019, currentTimeMillis3);
                    return false;
                }
                HashSet hashSet = new HashSet();
                zzayf zzk3 = zzk(1);
                if (zzk3 != null) {
                    hashSet.add(zzk3.zzk());
                }
                zzayf zzk4 = zzk(2);
                if (zzk4 != null) {
                    hashSet.add(zzk4.zzk());
                }
                for (File file3 : new File(this.zzb.getDir(new ObfuscatedString(new long[]{5117749493939135522L, 1553164257905047475L}).toString(), 0), this.zzd).listFiles()) {
                    if (!hashSet.contains(file3.getName())) {
                        zzfsh.zzd(file3);
                    }
                }
                zzi(5014, currentTimeMillis);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Nullable
    public final zzfsf zzc(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zza) {
            try {
                zzayf zzk = zzk(1);
                if (zzk == null) {
                    zzi(4022, currentTimeMillis);
                    return null;
                }
                File zze = zze(zzk.zzk());
                File file = new File(zze, new ObfuscatedString(new long[]{-7391045253647375590L, -1848362220212384172L}).toString());
                if (!file.exists()) {
                    file = new File(zze, new ObfuscatedString(new long[]{-8396522844961113265L, -4537125716057405196L}).toString());
                }
                File file2 = new File(zze, new ObfuscatedString(new long[]{4676720619814412743L, 4405955471270179910L}).toString());
                File file3 = new File(zze, new ObfuscatedString(new long[]{-1154454272372390946L, 377423502187293505L}).toString());
                zzi(5016, currentTimeMillis);
                return new zzfsf(zzk, file, file2, file3);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzd(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zza) {
            try {
                zzayf zzk = zzk(1);
                if (zzk == null) {
                    zzi(4025, currentTimeMillis);
                    return false;
                }
                File zze = zze(zzk.zzk());
                if (!new File(zze, new ObfuscatedString(new long[]{-5279151678965624560L, -6327367816721151789L}).toString()).exists()) {
                    zzi(4026, currentTimeMillis);
                    return false;
                }
                if (!new File(zze, new ObfuscatedString(new long[]{-2424142949396186246L, -8897016750770366528L}).toString()).exists()) {
                    zzi(4027, currentTimeMillis);
                    return false;
                }
                zzi(5019, currentTimeMillis);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
