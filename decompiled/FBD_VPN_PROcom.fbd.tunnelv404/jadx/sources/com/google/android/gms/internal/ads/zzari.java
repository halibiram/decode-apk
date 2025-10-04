package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.EOFException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public abstract class zzari implements zzarj {
    private static final Logger zzb = Logger.getLogger(zzari.class.getName());
    final ThreadLocal zza = new zzarh(this);

    public abstract zzarm zza(String str, byte[] bArr, String str2);

    @Override // com.google.android.gms.internal.ads.zzarj
    public final zzarm zzb(zzhgp zzhgpVar, zzarn zzarnVar) {
        int zza;
        long j;
        String obfuscatedString;
        long zzb2 = zzhgpVar.zzb();
        ((ByteBuffer) this.zza.get()).rewind().limit(8);
        do {
            zza = zzhgpVar.zza((ByteBuffer) this.zza.get());
            if (zza == 8) {
                ((ByteBuffer) this.zza.get()).rewind();
                long zze = zzarl.zze((ByteBuffer) this.zza.get());
                byte[] bArr = null;
                if (zze < 8 && zze > 1) {
                    Logger logger = zzb;
                    Level level = Level.SEVERE;
                    StringBuilder sb = new StringBuilder(80);
                    sb.append(new ObfuscatedString(new long[]{330355512562623155L, -298163032106229562L, -8776777927710490261L, 5635553867709657882L, -7405886794631482725L, 8786954169262615186L, -6635435016461857266L}).toString());
                    sb.append(zze);
                    logger.logp(level, new ObfuscatedString(new long[]{7275816574858093468L, 4488217400801082244L, -1169826134088949108L, 4437220069984316300L, -6946959420715679682L, -6921269494167524314L}).toString(), new ObfuscatedString(new long[]{8031860168608965837L, -1791703865147278088L}).toString(), AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{6117227394569456132L, 6436089040286341744L, 3899067423112958051L}), sb));
                    return null;
                }
                byte[] bArr2 = new byte[4];
                ((ByteBuffer) this.zza.get()).get(bArr2);
                try {
                    String str = new String(bArr2, new ObfuscatedString(new long[]{1631801284795648016L, 4208726033974940734L, -1488437753323984792L}).toString());
                    if (zze == 1) {
                        ((ByteBuffer) this.zza.get()).limit(16);
                        zzhgpVar.zza((ByteBuffer) this.zza.get());
                        ((ByteBuffer) this.zza.get()).position(8);
                        j = zzarl.zzf((ByteBuffer) this.zza.get()) - 16;
                    } else if (zze == 0) {
                        j = zzhgpVar.zzc() - zzhgpVar.zzb();
                    } else {
                        j = zze - 8;
                    }
                    if (new ObfuscatedString(new long[]{-313040792801167507L, -6447595941118267529L}).toString().equals(str)) {
                        ((ByteBuffer) this.zza.get()).limit(((ByteBuffer) this.zza.get()).limit() + 16);
                        zzhgpVar.zza((ByteBuffer) this.zza.get());
                        bArr = new byte[16];
                        for (int position = ((ByteBuffer) this.zza.get()).position() - 16; position < ((ByteBuffer) this.zza.get()).position(); position++) {
                            bArr[position - (((ByteBuffer) this.zza.get()).position() - 16)] = ((ByteBuffer) this.zza.get()).get(position);
                        }
                        j -= 16;
                    }
                    long j2 = j;
                    if (zzarnVar instanceof zzarm) {
                        obfuscatedString = ((zzarm) zzarnVar).zza();
                    } else {
                        obfuscatedString = new ObfuscatedString(new long[]{-2588301272380061704L}).toString();
                    }
                    zzarm zza2 = zza(str, bArr, obfuscatedString);
                    zza2.zzc(zzarnVar);
                    ((ByteBuffer) this.zza.get()).rewind();
                    zza2.zzb(zzhgpVar, (ByteBuffer) this.zza.get(), j2, this);
                    return zza2;
                } catch (UnsupportedEncodingException e) {
                    throw new RuntimeException(e);
                }
            }
        } while (zza >= 0);
        zzhgpVar.zze(zzb2);
        throw new EOFException();
    }
}
