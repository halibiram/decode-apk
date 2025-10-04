package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public abstract class zzhgk implements zzarm {
    private static final zzhgv zza = zzhgv.zzb(zzhgk.class);
    protected final String zzb;
    long zze;
    zzhgp zzg;
    private zzarn zzh;
    private ByteBuffer zzi;
    long zzf = -1;
    private ByteBuffer zzj = null;
    boolean zzd = true;
    boolean zzc = true;

    public zzhgk(String str) {
        this.zzb = str;
    }

    private final synchronized void zzd() {
        String str;
        try {
            if (!this.zzd) {
                try {
                    zzhgv zzhgvVar = zza;
                    String obfuscatedString = new ObfuscatedString(new long[]{8322840347125065726L, -6173461641036155444L, 2351733757211399642L}).toString();
                    String str2 = this.zzb;
                    if (str2.length() != 0) {
                        str = obfuscatedString.concat(str2);
                    } else {
                        str = new String(obfuscatedString);
                    }
                    zzhgvVar.zza(str);
                    this.zzi = this.zzg.zzd(this.zze, this.zzf);
                    this.zzd = true;
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarm
    public final String zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzarm
    public final void zzb(zzhgp zzhgpVar, ByteBuffer byteBuffer, long j, zzarj zzarjVar) {
        this.zze = zzhgpVar.zzb();
        byteBuffer.remaining();
        this.zzf = j;
        this.zzg = zzhgpVar;
        zzhgpVar.zze(zzhgpVar.zzb() + j);
        this.zzd = false;
        this.zzc = false;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzarm
    public final void zzc(zzarn zzarnVar) {
        this.zzh = zzarnVar;
    }

    public abstract void zzf(ByteBuffer byteBuffer);

    public final synchronized void zzg() {
        String str;
        try {
            zzd();
            zzhgv zzhgvVar = zza;
            String obfuscatedString = new ObfuscatedString(new long[]{-4437192656148396051L, 2143350753683388765L, -4481340682123902258L, 3053031257935896597L}).toString();
            String str2 = this.zzb;
            if (str2.length() != 0) {
                str = obfuscatedString.concat(str2);
            } else {
                str = new String(obfuscatedString);
            }
            zzhgvVar.zza(str);
            ByteBuffer byteBuffer = this.zzi;
            if (byteBuffer != null) {
                this.zzc = true;
                byteBuffer.rewind();
                zzf(byteBuffer);
                if (byteBuffer.remaining() > 0) {
                    this.zzj = byteBuffer.slice();
                }
                this.zzi = null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
