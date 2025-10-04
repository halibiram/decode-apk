package com.google.android.gms.internal.ads;

import androidx.annotation.NonNull;
import com.google.android.gms.common.util.IOUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzfsf {
    private final zzayf zza;
    private final File zzb;
    private final File zzc;
    private final File zzd;
    private byte[] zze;

    public zzfsf(@NonNull zzayf zzayfVar, @NonNull File file, @NonNull File file2, @NonNull File file3) {
        this.zza = zzayfVar;
        this.zzb = file;
        this.zzc = file3;
        this.zzd = file2;
    }

    public final zzayf zza() {
        return this.zza;
    }

    public final File zzb() {
        return this.zzc;
    }

    public final File zzc() {
        return this.zzb;
    }

    public final boolean zzd(long j) {
        if (this.zza.zzc() - (System.currentTimeMillis() / 1000) < 3600) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x005a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final byte[] zze() {
        byte[] bArr;
        FileInputStream fileInputStream;
        byte[] bArr2;
        zzgyl zzv;
        FileInputStream fileInputStream2 = null;
        if (this.zze == null) {
            try {
                fileInputStream = new FileInputStream(this.zzd);
                try {
                    ArrayList arrayList = new ArrayList();
                    int i = 256;
                    while (true) {
                        byte[] bArr3 = new byte[i];
                        int i2 = 0;
                        while (i2 < i) {
                            int read = fileInputStream.read(bArr3, i2, i - i2);
                            if (read == -1) {
                                break;
                            }
                            i2 += read;
                        }
                        if (i2 == 0) {
                            zzv = null;
                        } else {
                            zzv = zzgyl.zzv(bArr3, 0, i2);
                        }
                        if (zzv == null) {
                            break;
                        }
                        arrayList.add(zzv);
                        i = Math.min(i + i, 8192);
                    }
                    bArr2 = zzgyl.zzu(arrayList).zzA();
                    IOUtils.closeQuietly(fileInputStream);
                } catch (IOException unused) {
                    IOUtils.closeQuietly(fileInputStream);
                    bArr2 = null;
                    this.zze = bArr2;
                    bArr = this.zze;
                    if (bArr != null) {
                    }
                } catch (Throwable th) {
                    th = th;
                    fileInputStream2 = fileInputStream;
                    IOUtils.closeQuietly(fileInputStream2);
                    throw th;
                }
            } catch (IOException unused2) {
                fileInputStream = null;
            } catch (Throwable th2) {
                th = th2;
            }
            this.zze = bArr2;
        }
        bArr = this.zze;
        if (bArr != null) {
            return null;
        }
        return Arrays.copyOf(bArr, bArr.length);
    }
}
