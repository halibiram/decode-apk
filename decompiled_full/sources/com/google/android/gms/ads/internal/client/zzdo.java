package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayg;
import com.google.android.gms.internal.ads.zzayi;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzdo extends zzayg implements zzdq {
    public zzdo(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-3221443962960556510L, -5488860214842631818L, 6271070473312886776L, -1688171637692783572L, 4155246655056564476L, 5764507325394761403L, -5765010914564289064L, 3901902552550175755L, 9114910399890432320L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final float zze() {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final float zzf() {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final float zzg() {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final int zzh() {
        Parcel zzbl = zzbl(5, zza());
        int readInt = zzbl.readInt();
        zzbl.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final zzdt zzi() {
        zzdt zzdrVar;
        Parcel zzbl = zzbl(11, zza());
        IBinder readStrongBinder = zzbl.readStrongBinder();
        if (readStrongBinder == null) {
            zzdrVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{643282456150420L, -7795048832645070735L, -1610005206935377449L, 5821138852243897981L, 2993012361164046667L, -5350834580861108738L, 345973329742530729L, -9011228991971430069L, 7531317715443393130L, -8485653764703184402L}).toString());
            if (queryLocalInterface instanceof zzdt) {
                zzdrVar = (zzdt) queryLocalInterface;
            } else {
                zzdrVar = new zzdr(readStrongBinder);
            }
        }
        zzbl.recycle();
        return zzdrVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final void zzj(boolean z) {
        Parcel zza = zza();
        int i = zzayi.zza;
        zza.writeInt(z ? 1 : 0);
        zzbm(3, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final void zzk() {
        zzbm(2, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final void zzl() {
        zzbm(1, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final void zzm(zzdt zzdtVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, zzdtVar);
        zzbm(8, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final void zzn() {
        zzbm(13, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final boolean zzo() {
        Parcel zzbl = zzbl(12, zza());
        boolean zzg = zzayi.zzg(zzbl);
        zzbl.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final boolean zzp() {
        Parcel zzbl = zzbl(10, zza());
        boolean zzg = zzayi.zzg(zzbl);
        zzbl.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final boolean zzq() {
        Parcel zzbl = zzbl(4, zza());
        boolean zzg = zzayi.zzg(zzbl);
        zzbl.recycle();
        return zzg;
    }
}
