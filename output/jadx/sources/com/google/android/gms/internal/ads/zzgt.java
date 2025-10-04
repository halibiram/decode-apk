package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.Nullable;
import app.tunnel.logger.utils.TrafficData;
import com.panda912.muddy.ObfuscatedString;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;

/* loaded from: classes2.dex */
public final class zzgt extends zzgq {
    private final ContentResolver zza;

    @Nullable
    private Uri zzb;

    @Nullable
    private AssetFileDescriptor zzc;

    @Nullable
    private FileInputStream zzd;
    private long zze;
    private boolean zzf;

    public zzgt(Context context) {
        super(false);
        this.zza = context.getContentResolver();
    }

    @Override // com.google.android.gms.internal.ads.zzu
    public final int zza(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        long j = this.zze;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new zzgs(e, TrafficData.INTERVAL_TIME);
            }
        }
        FileInputStream fileInputStream = this.zzd;
        int i3 = zzfy.zza;
        int read = fileInputStream.read(bArr, i, i2);
        if (read == -1) {
            return -1;
        }
        long j2 = this.zze;
        if (j2 != -1) {
            this.zze = j2 - read;
        }
        zzg(read);
        return read;
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final long zzb(zzhb zzhbVar) {
        int i;
        AssetFileDescriptor openAssetFileDescriptor;
        long j;
        try {
            try {
                Uri normalizeScheme = zzhbVar.zza.normalizeScheme();
                this.zzb = normalizeScheme;
                zzi(zzhbVar);
                if (new ObfuscatedString(new long[]{-240080466943317062L, 7684269892502015760L}).toString().equals(normalizeScheme.getScheme())) {
                    Bundle bundle = new Bundle();
                    bundle.putBoolean(new ObfuscatedString(new long[]{-3846939439734032372L, 168910975324759561L, -6279407090487453493L, -178388512865617624L, -8931791734393206929L, 3244182941745070139L, 3259742884354518500L, -8469595645899620208L}).toString(), true);
                    openAssetFileDescriptor = this.zza.openTypedAssetFileDescriptor(normalizeScheme, new ObfuscatedString(new long[]{2218474689763887170L, -3163471140044928069L}).toString(), bundle);
                } else {
                    openAssetFileDescriptor = this.zza.openAssetFileDescriptor(normalizeScheme, new ObfuscatedString(new long[]{-5795442741293506740L, 4071008286107519209L}).toString());
                }
                this.zzc = openAssetFileDescriptor;
                if (openAssetFileDescriptor != null) {
                    long length = openAssetFileDescriptor.getLength();
                    FileInputStream fileInputStream = new FileInputStream(openAssetFileDescriptor.getFileDescriptor());
                    this.zzd = fileInputStream;
                    if (length != -1 && zzhbVar.zzf > length) {
                        throw new zzgs(null, 2008);
                    }
                    long startOffset = openAssetFileDescriptor.getStartOffset();
                    long skip = fileInputStream.skip(zzhbVar.zzf + startOffset) - startOffset;
                    if (skip == zzhbVar.zzf) {
                        if (length == -1) {
                            FileChannel channel = fileInputStream.getChannel();
                            long size = channel.size();
                            if (size == 0) {
                                this.zze = -1L;
                                j = -1;
                            } else {
                                j = size - channel.position();
                                this.zze = j;
                                if (j < 0) {
                                    throw new zzgs(null, 2008);
                                }
                            }
                        } else {
                            j = length - skip;
                            this.zze = j;
                            if (j < 0) {
                                throw new zzgs(null, 2008);
                            }
                        }
                        long j2 = zzhbVar.zzg;
                        if (j2 != -1) {
                            if (j != -1) {
                                j2 = Math.min(j, j2);
                            }
                            this.zze = j2;
                        }
                        this.zzf = true;
                        zzj(zzhbVar);
                        long j3 = zzhbVar.zzg;
                        if (j3 != -1) {
                            return j3;
                        }
                        return this.zze;
                    }
                    throw new zzgs(null, 2008);
                }
                IOException iOException = new IOException(new ObfuscatedString(new long[]{8484858514135434410L, -1310228520637220621L, -6740094013601936649L, -8273251596077632920L, 1522776083694467294L, 7837748162478737889L}).toString() + String.valueOf(normalizeScheme));
                i = TrafficData.INTERVAL_TIME;
                try {
                    throw new zzgs(iOException, TrafficData.INTERVAL_TIME);
                } catch (IOException e) {
                    e = e;
                    if (true == (e instanceof FileNotFoundException)) {
                        i = 2005;
                    }
                    throw new zzgs(e, i);
                }
            } catch (zzgs e2) {
                throw e2;
            }
        } catch (IOException e3) {
            e = e3;
            i = TrafficData.INTERVAL_TIME;
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
                try {
                    FileInputStream fileInputStream = this.zzd;
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    this.zzd = null;
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.zzc;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                        this.zzc = null;
                        if (this.zzf) {
                            this.zzf = false;
                            zzh();
                        }
                    } catch (IOException e) {
                        throw new zzgs(e, TrafficData.INTERVAL_TIME);
                    }
                } catch (IOException e2) {
                    throw new zzgs(e2, TrafficData.INTERVAL_TIME);
                }
            } catch (Throwable th) {
                this.zzd = null;
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.zzc;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    this.zzc = null;
                    if (this.zzf) {
                        this.zzf = false;
                        zzh();
                    }
                    throw th;
                } catch (IOException e3) {
                    throw new zzgs(e3, TrafficData.INTERVAL_TIME);
                }
            }
        } catch (Throwable th2) {
            this.zzc = null;
            if (this.zzf) {
                this.zzf = false;
                zzh();
            }
            throw th2;
        }
    }
}
