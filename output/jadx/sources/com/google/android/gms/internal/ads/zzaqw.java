package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import j$.util.DesugarCollections;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes2.dex */
public final class zzaqw implements zzapk {
    private final zzaqv zzc;
    private final Map zza = new LinkedHashMap(16, 0.75f, true);
    private long zzb = 0;
    private final int zzd = 5242880;

    public zzaqw(zzaqv zzaqvVar, int i) {
        this.zzc = zzaqvVar;
    }

    public static int zze(InputStream inputStream) {
        return (zzn(inputStream) << 24) | zzn(inputStream) | (zzn(inputStream) << 8) | (zzn(inputStream) << 16);
    }

    public static long zzf(InputStream inputStream) {
        return (zzn(inputStream) & 255) | ((zzn(inputStream) & 255) << 8) | ((zzn(inputStream) & 255) << 16) | ((zzn(inputStream) & 255) << 24) | ((zzn(inputStream) & 255) << 32) | ((zzn(inputStream) & 255) << 40) | ((zzn(inputStream) & 255) << 48) | ((zzn(inputStream) & 255) << 56);
    }

    public static String zzh(zzaqu zzaquVar) {
        return new String(zzm(zzaquVar, zzf(zzaquVar)), new ObfuscatedString(new long[]{2521994565732354632L, 3941742997412515751L}).toString());
    }

    public static void zzj(OutputStream outputStream, int i) {
        outputStream.write(i & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 24) & 255);
    }

    public static void zzk(OutputStream outputStream, long j) {
        outputStream.write((byte) j);
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    public static void zzl(OutputStream outputStream, String str) {
        byte[] bytes = str.getBytes(new ObfuscatedString(new long[]{5968356376233677968L, -8943410708351902245L}).toString());
        int length = bytes.length;
        zzk(outputStream, length);
        outputStream.write(bytes, 0, length);
    }

    @VisibleForTesting
    public static byte[] zzm(zzaqu zzaquVar, long j) {
        long zza = zzaquVar.zza();
        if (j >= 0 && j <= zza) {
            int i = (int) j;
            if (i == j) {
                byte[] bArr = new byte[i];
                new DataInputStream(zzaquVar).readFully(bArr);
                return bArr;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-3755233012346233097L, -1622407942216668992L, -8016703735849297172L, -1754699512514644840L}).toString());
        sb.append(j);
        throw new IOException(AbstractC0362x4440ab85.m2930x9e171bf9(new ObfuscatedString(new long[]{7189149718610607772L, 6869999009421142696L, -8110347264233976947L}), sb, zza));
    }

    private static int zzn(InputStream inputStream) {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    private final void zzo(String str, zzaqt zzaqtVar) {
        if (!this.zza.containsKey(str)) {
            this.zzb += zzaqtVar.zza;
        } else {
            this.zzb = (zzaqtVar.zza - ((zzaqt) this.zza.get(str)).zza) + this.zzb;
        }
        this.zza.put(str, zzaqtVar);
    }

    private final void zzp(String str) {
        zzaqt zzaqtVar = (zzaqt) this.zza.remove(str);
        if (zzaqtVar != null) {
            this.zzb -= zzaqtVar.zza;
        }
    }

    private static final String zzq(String str) {
        int length = str.length() / 2;
        return String.valueOf(String.valueOf(str.substring(0, length).hashCode())).concat(String.valueOf(String.valueOf(str.substring(length).hashCode())));
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final synchronized zzapj zza(String str) {
        zzaqt zzaqtVar = (zzaqt) this.zza.get(str);
        if (zzaqtVar == null) {
            return null;
        }
        File zzg = zzg(str);
        try {
            zzaqu zzaquVar = new zzaqu(new BufferedInputStream(new FileInputStream(zzg)), zzg.length());
            try {
                zzaqt zza = zzaqt.zza(zzaquVar);
                if (!TextUtils.equals(str, zza.zzb)) {
                    zzaqm.zza(new ObfuscatedString(new long[]{8799365699895620892L, 4816279662949583609L, -885168718492041560L, 1647984875512440386L}).toString(), zzg.getAbsolutePath(), str, zza.zzb);
                    zzp(str);
                    return null;
                }
                byte[] zzm = zzm(zzaquVar, zzaquVar.zza());
                zzapj zzapjVar = new zzapj();
                zzapjVar.zza = zzm;
                zzapjVar.zzb = zzaqtVar.zzc;
                zzapjVar.zzc = zzaqtVar.zzd;
                zzapjVar.zzd = zzaqtVar.zze;
                zzapjVar.zze = zzaqtVar.zzf;
                zzapjVar.zzf = zzaqtVar.zzg;
                List<zzaps> list = zzaqtVar.zzh;
                TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
                for (zzaps zzapsVar : list) {
                    treeMap.put(zzapsVar.zza(), zzapsVar.zzb());
                }
                zzapjVar.zzg = treeMap;
                zzapjVar.zzh = DesugarCollections.unmodifiableList(zzaqtVar.zzh);
                return zzapjVar;
            } finally {
                zzaquVar.close();
            }
        } catch (IOException e) {
            zzaqm.zza(new ObfuscatedString(new long[]{-47909066369836818L, 7049781051019870695L}).toString(), zzg.getAbsolutePath(), e.toString());
            zzi(str);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final synchronized void zzb() {
        synchronized (this) {
            File zza = this.zzc.zza();
            if (!zza.exists()) {
                if (!zza.mkdirs()) {
                    zzaqm.zzb(new ObfuscatedString(new long[]{-361643626147339690L, 6856334127507024565L, 6287925025638463600L, 179323241401229108L, -7731727152783060070L}).toString(), zza.getAbsolutePath());
                }
            } else {
                File[] listFiles = zza.listFiles();
                if (listFiles != null) {
                    for (File file : listFiles) {
                        try {
                            long length = file.length();
                            zzaqu zzaquVar = new zzaqu(new BufferedInputStream(new FileInputStream(file)), length);
                            try {
                                zzaqt zza2 = zzaqt.zza(zzaquVar);
                                zza2.zza = length;
                                zzo(zza2.zzb, zza2);
                                zzaquVar.close();
                            } catch (Throwable th) {
                                zzaquVar.close();
                                throw th;
                                break;
                            }
                        } catch (IOException unused) {
                            file.delete();
                        }
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final synchronized void zzc(String str, boolean z) {
        zzapj zza = zza(str);
        if (zza != null) {
            zza.zzf = 0L;
            zza.zze = 0L;
            zzd(str, zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final synchronized void zzd(String str, zzapj zzapjVar) {
        int i;
        try {
            long j = this.zzb;
            int length = zzapjVar.zza.length;
            long j2 = j + length;
            int i2 = this.zzd;
            if (j2 <= i2 || length <= i2 * 0.9f) {
                File zzg = zzg(str);
                try {
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(zzg));
                    zzaqt zzaqtVar = new zzaqt(str, zzapjVar);
                    try {
                        zzj(bufferedOutputStream, 538247942);
                        zzl(bufferedOutputStream, zzaqtVar.zzb);
                        String str2 = zzaqtVar.zzc;
                        if (str2 == null) {
                            str2 = new ObfuscatedString(new long[]{6840651808666379058L}).toString();
                        }
                        zzl(bufferedOutputStream, str2);
                        zzk(bufferedOutputStream, zzaqtVar.zzd);
                        zzk(bufferedOutputStream, zzaqtVar.zze);
                        zzk(bufferedOutputStream, zzaqtVar.zzf);
                        zzk(bufferedOutputStream, zzaqtVar.zzg);
                        List<zzaps> list = zzaqtVar.zzh;
                        if (list != null) {
                            zzj(bufferedOutputStream, list.size());
                            for (zzaps zzapsVar : list) {
                                zzl(bufferedOutputStream, zzapsVar.zza());
                                zzl(bufferedOutputStream, zzapsVar.zzb());
                            }
                        } else {
                            zzj(bufferedOutputStream, 0);
                        }
                        bufferedOutputStream.flush();
                        bufferedOutputStream.write(zzapjVar.zza);
                        bufferedOutputStream.close();
                        zzaqtVar.zza = zzg.length();
                        zzo(str, zzaqtVar);
                        if (this.zzb >= this.zzd) {
                            if (zzaqm.zzb) {
                                zzaqm.zzd(new ObfuscatedString(new long[]{6297679061538234976L, -2347668380309214846L, 390297063019196356L, -4966855445256784742L, 1235065867449632697L}).toString(), new Object[0]);
                            }
                            long j3 = this.zzb;
                            long elapsedRealtime = SystemClock.elapsedRealtime();
                            Iterator it = this.zza.entrySet().iterator();
                            int i3 = 0;
                            while (it.hasNext()) {
                                zzaqt zzaqtVar2 = (zzaqt) ((Map.Entry) it.next()).getValue();
                                if (zzg(zzaqtVar2.zzb).delete()) {
                                    this.zzb -= zzaqtVar2.zza;
                                    i = 1;
                                } else {
                                    String obfuscatedString = new ObfuscatedString(new long[]{-8659110276753728190L, -2983982849270872359L, 1503812353994824867L, -7206983293240673688L, 2807784057943606813L, 7494676057060080727L, -7905812079067645712L, 1387340821224881763L}).toString();
                                    String str3 = zzaqtVar2.zzb;
                                    String zzq = zzq(str3);
                                    i = 1;
                                    zzaqm.zza(obfuscatedString, str3, zzq);
                                }
                                it.remove();
                                i3 += i;
                                if (((float) this.zzb) < this.zzd * 0.9f) {
                                    break;
                                }
                            }
                            if (zzaqm.zzb) {
                                zzaqm.zzd(new ObfuscatedString(new long[]{6779084573548037279L, 777389114428278699L, 3974843192908957968L, -5003818346363198383L, -6766614890479808848L}).toString(), Integer.valueOf(i3), Long.valueOf(this.zzb - j3), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
                            }
                        }
                    } catch (IOException e) {
                        zzaqm.zza(new ObfuscatedString(new long[]{4778793993354987744L, -5791231670366619086L}).toString(), e.toString());
                        bufferedOutputStream.close();
                        zzaqm.zza(new ObfuscatedString(new long[]{-3831908971332904044L, -3005243006525286754L, 6695953176311069198L, 4257639746856962383L, 7233069612090675925L}).toString(), zzg.getAbsolutePath());
                        throw new IOException();
                    }
                } catch (IOException unused) {
                    if (!zzg.delete()) {
                        zzaqm.zza(new ObfuscatedString(new long[]{-5846518122469450932L, -7041779398832030349L, 5289227374606917483L, -7012555195849777445L, -8506021264772811662L}).toString(), zzg.getAbsolutePath());
                    }
                    if (!this.zzc.zza().exists()) {
                        zzaqm.zza(new ObfuscatedString(new long[]{1246770867141299484L, -990708830967002081L, 8652988592914897947L, -3650954321547423690L, -1618828210138961308L, 4286847563969963895L, -4526251276313766937L}).toString(), new Object[0]);
                        this.zza.clear();
                        this.zzb = 0L;
                        zzb();
                    }
                }
            }
        } finally {
        }
    }

    public final File zzg(String str) {
        return new File(this.zzc.zza(), zzq(str));
    }

    public final synchronized void zzi(String str) {
        boolean delete = zzg(str).delete();
        zzp(str);
        if (!delete) {
            zzaqm.zza(new ObfuscatedString(new long[]{3892447719945492517L, 7608306598368897980L, -5657401665299382497L, -6972105380447838193L, -4985034395600007975L, -8004278327836327965L, -2008605120424839746L, 2340952118048360057L}).toString(), str, zzq(str));
        }
    }

    public zzaqw(File file, int i) {
        this.zzc = new zzaqs(this, file);
    }
}
