package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.nio.ByteBuffer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzrn extends zzdu {
    private int zzd;
    private int zze;
    private boolean zzf;
    private int zzg;
    private byte[] zzh = zzfy.zzf;
    private int zzi;
    private long zzj;

    @Override // com.google.android.gms.internal.ads.zzdu, com.google.android.gms.internal.ads.zzdt
    public final ByteBuffer zzb() {
        int i;
        if (super.zzh() && (i = this.zzi) > 0) {
            zzj(i).put(this.zzh, 0, this.zzi).flip();
            this.zzi = 0;
        }
        return super.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzdt
    public final void zze(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        if (i != 0) {
            int min = Math.min(i, this.zzg);
            this.zzj += min / this.zzb.zze;
            this.zzg -= min;
            byteBuffer.position(position + min);
            if (this.zzg <= 0) {
                int i2 = i - min;
                int length = (this.zzi + i2) - this.zzh.length;
                ByteBuffer zzj = zzj(length);
                int max = Math.max(0, Math.min(length, this.zzi));
                zzj.put(this.zzh, 0, max);
                int max2 = Math.max(0, Math.min(length - max, i2));
                byteBuffer.limit(byteBuffer.position() + max2);
                zzj.put(byteBuffer);
                byteBuffer.limit(limit);
                int i3 = i2 - max2;
                int i4 = this.zzi - max;
                this.zzi = i4;
                byte[] bArr = this.zzh;
                System.arraycopy(bArr, max, bArr, 0, i4);
                byteBuffer.get(this.zzh, this.zzi, i3);
                this.zzi += i3;
                zzj.flip();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdu, com.google.android.gms.internal.ads.zzdt
    public final boolean zzh() {
        return super.zzh() && this.zzi == 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdu
    public final zzdr zzi(zzdr zzdrVar) {
        if (zzdrVar.zzd == 2) {
            this.zzf = true;
            if (this.zzd == 0 && this.zze == 0) {
                return zzdr.zza;
            }
            return zzdrVar;
        }
        throw new zzds(new ObfuscatedString(new long[]{-3649162210413011120L, -7035668497986658928L, 8432216370787841491L, 382690829448851156L}).toString(), zzdrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdu
    public final void zzk() {
        if (this.zzf) {
            this.zzf = false;
            int i = this.zze;
            int i2 = this.zzb.zze;
            this.zzh = new byte[i * i2];
            this.zzg = this.zzd * i2;
        }
        this.zzi = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdu
    public final void zzl() {
        if (this.zzf) {
            if (this.zzi > 0) {
                this.zzj += r0 / this.zzb.zze;
            }
            this.zzi = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdu
    public final void zzm() {
        this.zzh = zzfy.zzf;
    }

    public final long zzo() {
        return this.zzj;
    }

    public final void zzp() {
        this.zzj = 0L;
    }

    public final void zzq(int i, int i2) {
        this.zzd = i;
        this.zze = i2;
    }
}
