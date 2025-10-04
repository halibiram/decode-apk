package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbsz extends zzayg implements zzbtb {
    public zzbsz(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-656063950749611783L, -7151372899473931201L, 2784651470897396810L, 5586093560591429988L, 7858683306378598164L, -2844820424927117969L, 2950327579235619224L, 293909760839358255L, -5850955363056139709L, 2684340750408807358L, 4329312406092781390L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void zze() {
        zzbm(1, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void zzf() {
        zzbm(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void zzg(int i) {
        Parcel zza = zza();
        zza.writeInt(i);
        zzbm(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void zzh(com.google.android.gms.ads.internal.client.zze zzeVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzeVar);
        zzbm(23, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void zzi(int i, String str) {
        Parcel zza = zza();
        zza.writeInt(i);
        zza.writeString(str);
        zzbm(22, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void zzj(int i) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void zzk(com.google.android.gms.ads.internal.client.zze zzeVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzeVar);
        zzbm(24, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void zzl(String str) {
        Parcel zza = zza();
        zza.writeString(str);
        zzbm(21, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void zzm() {
        zzbm(8, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void zzn() {
        zzbm(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void zzo() {
        zzbm(6, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void zzp() {
        zzbm(5, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void zzq(String str, String str2) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzbm(9, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void zzr(zzbkg zzbkgVar, String str) {
        Parcel zza = zza();
        zzayi.zzf(zza, zzbkgVar);
        zza.writeString(str);
        zzbm(10, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void zzs(zzcag zzcagVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void zzt(zzcak zzcakVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, zzcakVar);
        zzbm(16, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void zzu() {
        zzbm(18, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void zzv() {
        zzbm(11, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void zzw() {
        zzbm(15, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void zzx() {
        zzbm(20, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void zzy() {
        zzbm(13, zza());
    }
}
