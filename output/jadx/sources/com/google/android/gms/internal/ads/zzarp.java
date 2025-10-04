package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.nio.ByteBuffer;
import java.util.Date;

/* loaded from: classes2.dex */
public final class zzarp extends zzhgm {
    private Date zza;
    private Date zzh;
    private long zzi;
    private long zzj;
    private double zzk;
    private float zzl;
    private zzhgw zzm;
    private long zzn;

    public zzarp() {
        super(new ObfuscatedString(new long[]{5001687573309592844L, -2683719299048240696L}).toString());
        this.zzk = 1.0d;
        this.zzl = 1.0f;
        this.zzm = zzhgw.zza;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-1560517117837700563L, -512366062720243373L, 6983973861733845806L, -2665046137698704513L, 1015903506952135881L}).toString());
        sb.append(this.zza);
        sb.append(new ObfuscatedString(new long[]{-5280727823464076711L, 5630727989266118013L, -4568947288251867257L, -8992416544087663982L}).toString());
        sb.append(this.zzh);
        sb.append(new ObfuscatedString(new long[]{-6654637828731556932L, -1971453614600134881L, 5328793501988667259L}).toString());
        sb.append(this.zzi);
        sb.append(new ObfuscatedString(new long[]{8852338596966558056L, -500069726602730766L, 6087576133099549317L}).toString());
        sb.append(this.zzj);
        sb.append(new ObfuscatedString(new long[]{-92676700729137049L, 5903654099582955776L}).toString());
        sb.append(this.zzk);
        sb.append(new ObfuscatedString(new long[]{-3198225905850522685L, -7432072278444576709L}).toString());
        sb.append(this.zzl);
        sb.append(new ObfuscatedString(new long[]{-5586367965878692850L, -8970892584412415304L}).toString());
        sb.append(this.zzm);
        sb.append(new ObfuscatedString(new long[]{2874280533586591433L, -7521444979664450840L, 2212836679447175553L}).toString());
        sb.append(this.zzn);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-802223637011382037L, 4406607821676469976L}), sb);
    }

    public final long zzd() {
        return this.zzj;
    }

    public final long zze() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk
    public final void zzf(ByteBuffer byteBuffer) {
        zzi(byteBuffer);
        if (zzh() == 1) {
            this.zza = zzhgr.zza(zzarl.zzf(byteBuffer));
            this.zzh = zzhgr.zza(zzarl.zzf(byteBuffer));
            this.zzi = zzarl.zze(byteBuffer);
            this.zzj = zzarl.zzf(byteBuffer);
        } else {
            this.zza = zzhgr.zza(zzarl.zze(byteBuffer));
            this.zzh = zzhgr.zza(zzarl.zze(byteBuffer));
            this.zzi = zzarl.zze(byteBuffer);
            this.zzj = zzarl.zze(byteBuffer);
        }
        this.zzk = zzarl.zzb(byteBuffer);
        byteBuffer.get(new byte[2]);
        this.zzl = ((short) ((r1[1] & 255) | ((short) (65280 & (r1[0] << 8))))) / 256.0f;
        zzarl.zzd(byteBuffer);
        zzarl.zze(byteBuffer);
        zzarl.zze(byteBuffer);
        this.zzm = new zzhgw(zzarl.zzb(byteBuffer), zzarl.zzb(byteBuffer), zzarl.zzb(byteBuffer), zzarl.zzb(byteBuffer), zzarl.zza(byteBuffer), zzarl.zza(byteBuffer), zzarl.zza(byteBuffer), zzarl.zzb(byteBuffer), zzarl.zzb(byteBuffer));
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        this.zzn = zzarl.zze(byteBuffer);
    }
}
