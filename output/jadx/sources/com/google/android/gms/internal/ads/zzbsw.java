package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC1320xaf50c7e8;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzbsw extends zzayg implements zzbsy {
    public zzbsw(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{8960381862101916022L, 2089847844621716426L, 7752208724760021996L, 1991408803439979600L, 5333473596855514196L, 6634397781474332847L, 2857877729123664252L, -8465989854598395682L, 7404486576843693436L, 5046928339323521094L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzA(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzbtb zzbtbVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzd(zza, zzlVar);
        zza.writeString(str);
        zzayi.zzf(zza, zzbtbVar);
        zzbm(28, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzB(com.google.android.gms.ads.internal.client.zzl zzlVar, String str, String str2) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzC(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzbtb zzbtbVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzd(zza, zzlVar);
        zza.writeString(str);
        zzayi.zzf(zza, zzbtbVar);
        zzbm(32, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzD(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(21, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzE() {
        zzbm(8, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzF() {
        zzbm(9, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzG(boolean z) {
        Parcel zza = zza();
        int i = zzayi.zza;
        zza.writeInt(z ? 1 : 0);
        zzbm(25, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzH(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(39, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzI() {
        zzbm(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzJ(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(37, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzK(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(30, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzL() {
        zzbm(12, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final boolean zzM() {
        Parcel zzbl = zzbl(22, zza());
        boolean zzg = zzayi.zzg(zzbl);
        zzbl.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final boolean zzN() {
        Parcel zzbl = zzbl(13, zza());
        boolean zzg = zzayi.zzg(zzbl);
        zzbl.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final zzbtg zzO() {
        zzbtg zzbtgVar;
        Parcel zzbl = zzbl(15, zza());
        IBinder readStrongBinder = zzbl.readStrongBinder();
        if (readStrongBinder == null) {
            zzbtgVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{8294330168213159676L, -8765682714097207710L, -5902436008975666542L, -7376837690567124418L, 6628780297847649475L, -8317814923358047331L, 2007930018430116906L, -6565144810820580679L, -8253299901773802830L, -6283472483495639794L, -1791852306454817773L}).toString());
            if (queryLocalInterface instanceof zzbtg) {
                zzbtgVar = (zzbtg) queryLocalInterface;
            } else {
                zzbtgVar = new zzbtg(readStrongBinder);
            }
        }
        zzbl.recycle();
        return zzbtgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final zzbth zzP() {
        zzbth zzbthVar;
        Parcel zzbl = zzbl(16, zza());
        IBinder readStrongBinder = zzbl.readStrongBinder();
        if (readStrongBinder == null) {
            zzbthVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{8237529468336738094L, -941963447428133721L, 6196168000224642078L, 8016147501827448387L, 3466841041786654998L, 3605072517132067440L, 8424713099135446118L, 2155725670328550250L, 7578387897591608225L, 2939541073916458333L, -4690857369014676664L}).toString());
            if (queryLocalInterface instanceof zzbth) {
                zzbthVar = (zzbth) queryLocalInterface;
            } else {
                zzbthVar = new zzbth(readStrongBinder);
            }
        }
        zzbl.recycle();
        return zzbthVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final Bundle zze() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final Bundle zzf() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final Bundle zzg() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final com.google.android.gms.ads.internal.client.zzdq zzh() {
        Parcel zzbl = zzbl(26, zza());
        com.google.android.gms.ads.internal.client.zzdq zzb = com.google.android.gms.ads.internal.client.zzdp.zzb(zzbl.readStrongBinder());
        zzbl.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final zzbkg zzi() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final zzbte zzj() {
        zzbte zzbtcVar;
        Parcel zzbl = zzbl(36, zza());
        IBinder readStrongBinder = zzbl.readStrongBinder();
        if (readStrongBinder == null) {
            zzbtcVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{-8781187517803311892L, 5046579184443520854L, 4944634021033603918L, -371485872518093261L, -6132692500000072120L, 6691935298129070191L, 296906934729426340L, -4837760060720520986L, 4130226339292092258L, 2878920922479242532L, 6390243974251650569L}).toString());
            if (queryLocalInterface instanceof zzbte) {
                zzbtcVar = (zzbte) queryLocalInterface;
            } else {
                zzbtcVar = new zzbtc(readStrongBinder);
            }
        }
        zzbl.recycle();
        return zzbtcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final zzbtk zzk() {
        zzbtk zzbtiVar;
        Parcel zzbl = zzbl(27, zza());
        IBinder readStrongBinder = zzbl.readStrongBinder();
        if (readStrongBinder == null) {
            zzbtiVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{-6271400636891240281L, -6984429031406067877L, 4925190710138098483L, -634064824286527865L, -2808658668078975410L, 5067695563484300365L, -1272969058072579345L, 9116418086307222045L, 8612469698616486542L, 9093781214560302718L, -7237503488602370571L}).toString());
            if (queryLocalInterface instanceof zzbtk) {
                zzbtiVar = (zzbtk) queryLocalInterface;
            } else {
                zzbtiVar = new zzbti(readStrongBinder);
            }
        }
        zzbl.recycle();
        return zzbtiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final zzbvg zzl() {
        Parcel zzbl = zzbl(33, zza());
        zzbvg zzbvgVar = (zzbvg) zzayi.zza(zzbl, zzbvg.CREATOR);
        zzbl.recycle();
        return zzbvgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final zzbvg zzm() {
        Parcel zzbl = zzbl(34, zza());
        zzbvg zzbvgVar = (zzbvg) zzayi.zza(zzbl, zzbvg.CREATOR);
        zzbl.recycle();
        return zzbvgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final IObjectWrapper zzn() {
        return AbstractC1320xaf50c7e8.m4357x75d576dc(zzbl(2, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzo() {
        zzbm(5, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzp(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzcaf zzcafVar, String str2) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzd(zza, zzlVar);
        zza.writeString(null);
        zzayi.zzf(zza, zzcafVar);
        zza.writeString(str2);
        zzbm(10, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzq(IObjectWrapper iObjectWrapper, zzbph zzbphVar, List list) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzf(zza, zzbphVar);
        zza.writeTypedList(list);
        zzbm(31, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzr(IObjectWrapper iObjectWrapper, zzcaf zzcafVar, List list) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzf(zza, zzcafVar);
        zza.writeStringList(list);
        zzbm(23, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzs(com.google.android.gms.ads.internal.client.zzl zzlVar, String str) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzlVar);
        zza.writeString(str);
        zzbm(11, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzt(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzbtb zzbtbVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzd(zza, zzlVar);
        zza.writeString(str);
        zzayi.zzf(zza, zzbtbVar);
        zzbm(38, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzu(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzq zzqVar, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzbtb zzbtbVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzv(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzq zzqVar, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, String str2, zzbtb zzbtbVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzd(zza, zzqVar);
        zzayi.zzd(zza, zzlVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzayi.zzf(zza, zzbtbVar);
        zzbm(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzw(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzq zzqVar, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, String str2, zzbtb zzbtbVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzd(zza, zzqVar);
        zzayi.zzd(zza, zzlVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzayi.zzf(zza, zzbtbVar);
        zzbm(35, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzx(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzbtb zzbtbVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzy(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, String str2, zzbtb zzbtbVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzd(zza, zzlVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzayi.zzf(zza, zzbtbVar);
        zzbm(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzz(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, String str2, zzbtb zzbtbVar, zzbjb zzbjbVar, List list) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzd(zza, zzlVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzayi.zzf(zza, zzbtbVar);
        zzayi.zzd(zza, zzbjbVar);
        zza.writeStringList(list);
        zzbm(14, zza);
    }
}
