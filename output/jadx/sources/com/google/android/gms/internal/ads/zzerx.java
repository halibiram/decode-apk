package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class zzerx implements zzexp {
    public final com.google.android.gms.ads.internal.client.zzq zza;

    @Nullable
    public final String zzb;
    public final boolean zzc;
    public final String zzd;
    public final float zze;
    public final int zzf;
    public final int zzg;

    @Nullable
    public final String zzh;
    public final boolean zzi;

    public zzerx(com.google.android.gms.ads.internal.client.zzq zzqVar, @Nullable String str, boolean z, String str2, float f, int i, int i2, @Nullable String str3, boolean z2) {
        Preconditions.checkNotNull(zzqVar, new ObfuscatedString(new long[]{4224630300382320733L, 5939041447256090216L, -364673202802569951L, -4701355039646681646L, 3285917793132045844L}).toString());
        this.zza = zzqVar;
        this.zzb = str;
        this.zzc = z;
        this.zzd = str2;
        this.zze = f;
        this.zzf = i;
        this.zzg = i2;
        this.zzh = str3;
        this.zzi = z2;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        boolean z;
        boolean z2;
        Bundle bundle = (Bundle) obj;
        if (this.zza.zze == -1) {
            z = true;
        } else {
            z = false;
        }
        zzfhv.zzf(bundle, new ObfuscatedString(new long[]{5738617053570960273L, 3458164485803372617L}).toString(), new ObfuscatedString(new long[]{-6372404892999911505L, 6145596382200289816L}).toString(), z);
        if (this.zza.zzb == -2) {
            z2 = true;
        } else {
            z2 = false;
        }
        zzfhv.zzf(bundle, new ObfuscatedString(new long[]{-1521091781501448957L, 1296721152007156288L}).toString(), new ObfuscatedString(new long[]{-1629927763539888996L, -2301252123167354102L}).toString(), z2);
        zzfhv.zzg(bundle, new ObfuscatedString(new long[]{5404142698011272352L, 3416465644647460305L}).toString(), true, this.zza.zzj);
        zzfhv.zzf(bundle, new ObfuscatedString(new long[]{4278963116578085365L, 7728190540745081646L}).toString(), new ObfuscatedString(new long[]{2823945618762042147L, 4988228370021384644L}).toString(), this.zza.zzm);
        zzfhv.zzf(bundle, new ObfuscatedString(new long[]{379432777203688763L, 3613114181130812849L}).toString(), new ObfuscatedString(new long[]{4264440316824102669L, 3565438886018555944L}).toString(), this.zza.zzn);
        zzfhv.zzf(bundle, new ObfuscatedString(new long[]{7800141708995630249L, -1368089781473630382L}).toString(), new ObfuscatedString(new long[]{2000015433437005903L, 4626324113844663448L}).toString(), this.zza.zzo);
        zzfhv.zzg(bundle, new ObfuscatedString(new long[]{1262525424428249877L, -1985558409759910501L, -3141681202547456978L, 5049282219042444696L}).toString(), true, this.zzi);
        zzfhv.zzg(bundle, new ObfuscatedString(new long[]{92625265028464295L, 2537136169286105542L, 3619392947840262483L, 6322426231007203346L}).toString(), true, this.zza.zzo);
        zzfhv.zzc(bundle, new ObfuscatedString(new long[]{-5856599511908452836L, 2647569926835740103L}).toString(), this.zzb);
        zzfhv.zzf(bundle, new ObfuscatedString(new long[]{3690139976437730808L, 7512345240774341790L}).toString(), new ObfuscatedString(new long[]{-1762330232010404408L, -4258422716457412720L}).toString(), this.zzc);
        zzfhv.zzf(bundle, new ObfuscatedString(new long[]{-6089349047350342605L, 6786718220126835672L}).toString(), this.zzd, !TextUtils.isEmpty(this.zzd));
        bundle.putFloat(new ObfuscatedString(new long[]{3139483870371319081L, 5248983574518105469L}).toString(), this.zze);
        bundle.putInt(new ObfuscatedString(new long[]{355764330607599294L, -2605161741060190164L}).toString(), this.zzf);
        bundle.putInt(new ObfuscatedString(new long[]{-7609135466153162154L, 2725673964193008724L}).toString(), this.zzg);
        zzfhv.zzf(bundle, new ObfuscatedString(new long[]{-7712417076953288920L, 5949192851186076983L}).toString(), this.zzh, !TextUtils.isEmpty(this.zzh));
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        com.google.android.gms.ads.internal.client.zzq[] zzqVarArr = this.zza.zzg;
        if (zzqVarArr == null) {
            Bundle bundle2 = new Bundle();
            bundle2.putInt(new ObfuscatedString(new long[]{-4199887040982665139L, 7615572029358919176L}).toString(), this.zza.zzb);
            bundle2.putInt(new ObfuscatedString(new long[]{-8317547452075356779L, -1166695110982472675L}).toString(), this.zza.zze);
            bundle2.putBoolean(new ObfuscatedString(new long[]{-5603722022133931399L, -5730911897488868315L, 4575639310558520543L}).toString(), this.zza.zzi);
            arrayList.add(bundle2);
        } else {
            for (com.google.android.gms.ads.internal.client.zzq zzqVar : zzqVarArr) {
                Bundle bundle3 = new Bundle();
                bundle3.putBoolean(new ObfuscatedString(new long[]{-4167526654412553775L, -7143239131476398300L, 6625193923781143069L}).toString(), zzqVar.zzi);
                bundle3.putInt(new ObfuscatedString(new long[]{1479828863216200776L, -5643073907107565863L}).toString(), zzqVar.zzb);
                bundle3.putInt(new ObfuscatedString(new long[]{-2897705504798729943L, -2720349368417658171L}).toString(), zzqVar.zze);
                arrayList.add(bundle3);
            }
        }
        bundle.putParcelableArrayList(new ObfuscatedString(new long[]{-7968622853590614548L, -2201663680874117699L, 4728494596107093889L}).toString(), arrayList);
    }
}
