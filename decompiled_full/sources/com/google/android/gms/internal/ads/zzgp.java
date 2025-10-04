package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import androidx.annotation.Nullable;
import app.tunnel.logger.utils.TrafficData;
import com.panda912.muddy.ObfuscatedString;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public final class zzgp extends zzgq {
    private final AssetManager zza;

    @Nullable
    private Uri zzb;

    @Nullable
    private InputStream zzc;
    private long zzd;
    private boolean zze;

    public zzgp(Context context) {
        super(false);
        this.zza = context.getAssets();
    }

    @Override // com.google.android.gms.internal.ads.zzu
    public final int zza(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        long j = this.zzd;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new zzgo(e, TrafficData.INTERVAL_TIME);
            }
        }
        InputStream inputStream = this.zzc;
        int i3 = zzfy.zza;
        int read = inputStream.read(bArr, i, i2);
        if (read == -1) {
            return -1;
        }
        long j2 = this.zzd;
        if (j2 != -1) {
            this.zzd = j2 - read;
        }
        zzg(read);
        return read;
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final long zzb(zzhb zzhbVar) {
        int i;
        try {
            Uri uri = zzhbVar.zza;
            this.zzb = uri;
            String path = uri.getPath();
            if (path != null) {
                if (path.startsWith(new ObfuscatedString(new long[]{-3443657932854766254L, -2586604901654508728L, 4657961070194127014L}).toString())) {
                    path = path.substring(15);
                } else if (path.startsWith(new ObfuscatedString(new long[]{723890730265501828L, -4204342825831272859L}).toString())) {
                    path = path.substring(1);
                }
                zzi(zzhbVar);
                InputStream open = this.zza.open(path, 1);
                this.zzc = open;
                if (open.skip(zzhbVar.zzf) >= zzhbVar.zzf) {
                    long j = zzhbVar.zzg;
                    if (j != -1) {
                        this.zzd = j;
                    } else {
                        long available = this.zzc.available();
                        this.zzd = available;
                        if (available == 2147483647L) {
                            this.zzd = -1L;
                        }
                    }
                    this.zze = true;
                    zzj(zzhbVar);
                    return this.zzd;
                }
                throw new zzgo(null, 2008);
            }
            throw null;
        } catch (zzgo e) {
            throw e;
        } catch (IOException e2) {
            if (true != (e2 instanceof FileNotFoundException)) {
                i = TrafficData.INTERVAL_TIME;
            } else {
                i = 2005;
            }
            throw new zzgo(e2, i);
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
                InputStream inputStream = this.zzc;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.zzc = null;
                if (this.zze) {
                    this.zze = false;
                    zzh();
                }
            } catch (IOException e) {
                throw new zzgo(e, TrafficData.INTERVAL_TIME);
            }
        } catch (Throwable th) {
            this.zzc = null;
            if (this.zze) {
                this.zze = false;
                zzh();
            }
            throw th;
        }
    }
}
