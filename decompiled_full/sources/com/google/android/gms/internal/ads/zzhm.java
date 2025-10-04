package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.core.view.PointerIconCompat;
import app.tunnel.logger.utils.TrafficData;
import com.panda912.muddy.ObfuscatedString;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

/* loaded from: classes2.dex */
public final class zzhm extends zzgq {

    @Nullable
    private RandomAccessFile zza;

    @Nullable
    private Uri zzb;
    private long zzc;
    private boolean zzd;

    public zzhm() {
        super(false);
    }

    @Override // com.google.android.gms.internal.ads.zzu
    public final int zza(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        long j = this.zzc;
        if (j == 0) {
            return -1;
        }
        try {
            RandomAccessFile randomAccessFile = this.zza;
            int i3 = zzfy.zza;
            int read = randomAccessFile.read(bArr, i, (int) Math.min(j, i2));
            if (read > 0) {
                this.zzc -= read;
                zzg(read);
            }
            return read;
        } catch (IOException e) {
            throw new zzhl(e, TrafficData.INTERVAL_TIME);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final long zzb(zzhb zzhbVar) {
        boolean zzb;
        Uri uri = zzhbVar.zza;
        this.zzb = uri;
        zzi(zzhbVar);
        int i = 2006;
        try {
            String path = uri.getPath();
            if (path != null) {
                RandomAccessFile randomAccessFile = new RandomAccessFile(path, new ObfuscatedString(new long[]{3327497446465850123L, 353077377159167469L}).toString());
                this.zza = randomAccessFile;
                try {
                    randomAccessFile.seek(zzhbVar.zzf);
                    long j = zzhbVar.zzg;
                    if (j == -1) {
                        j = this.zza.length() - zzhbVar.zzf;
                    }
                    this.zzc = j;
                    if (j >= 0) {
                        this.zzd = true;
                        zzj(zzhbVar);
                        return this.zzc;
                    }
                    throw new zzhl(null, null, 2008);
                } catch (IOException e) {
                    throw new zzhl(e, TrafficData.INTERVAL_TIME);
                }
            }
            throw null;
        } catch (FileNotFoundException e2) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                int i2 = zzfy.zza;
                zzb = zzhk.zzb(e2.getCause());
                if (true != zzb) {
                    i = 2005;
                }
                throw new zzhl(e2, i);
            }
            throw new zzhl(String.format(new ObfuscatedString(new long[]{-8211112232796894677L, 345064865174971009L, -3648916012003174410L, -2025852774401516128L, 3457069001320914511L, 622466781283523803L, 5963302609601809054L, -7816506824287174152L, -8708128485791293181L, -4773840191291041508L, -3950177243145638208L, -8879594735428292756L, 890717401782284227L, -907349700229211628L, 4900622313938563683L, -147143841402656695L, 5438752382819860321L, -4866299218896337050L, -8189706365166698641L, -4373397202450382518L, -2626908943035593694L, -1953849227580640858L, -1295364934967826504L, -2623664259391651629L, 5168319587481997587L}).toString(), uri.getPath(), uri.getQuery(), uri.getFragment()), e2, PointerIconCompat.TYPE_WAIT);
        } catch (SecurityException e3) {
            throw new zzhl(e3, 2006);
        } catch (RuntimeException e4) {
            throw new zzhl(e4, TrafficData.INTERVAL_TIME);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    @Nullable
    public final Uri zzc() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final void zzd() {
        this.zzb = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.zza;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.zza = null;
                if (this.zzd) {
                    this.zzd = false;
                    zzh();
                }
            } catch (IOException e) {
                throw new zzhl(e, TrafficData.INTERVAL_TIME);
            }
        } catch (Throwable th) {
            this.zza = null;
            if (this.zzd) {
                this.zzd = false;
                zzh();
            }
            throw th;
        }
    }
}
