package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import javax.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes2.dex */
public final class zzexv implements zzexp {
    public final boolean zza;
    public final boolean zzb;
    public final String zzc;
    public final boolean zzd;
    public final boolean zze;
    public final boolean zzf;
    public final String zzg;
    public final ArrayList zzh;

    @Nullable
    public final String zzi;

    @Nullable
    public final String zzj;
    public final String zzk;
    public final boolean zzl;
    public final String zzm;
    public final long zzn;
    public final boolean zzo;

    @Nullable
    public final String zzp;
    public final int zzq;

    public zzexv(boolean z, boolean z2, String str, boolean z3, boolean z4, boolean z5, String str2, ArrayList arrayList, @Nullable String str3, @Nullable String str4, String str5, boolean z6, String str6, long j, boolean z7, @Nullable String str7, int i) {
        this.zza = z;
        this.zzb = z2;
        this.zzc = str;
        this.zzd = z3;
        this.zze = z4;
        this.zzf = z5;
        this.zzg = str2;
        this.zzh = arrayList;
        this.zzi = str3;
        this.zzj = str4;
        this.zzk = str5;
        this.zzl = z6;
        this.zzm = str6;
        this.zzn = j;
        this.zzo = z7;
        this.zzp = str7;
        this.zzq = i;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        bundle.putBoolean(new ObfuscatedString(new long[]{8666328750770410937L, -74939869419512022L}).toString(), this.zza);
        bundle.putBoolean(new ObfuscatedString(new long[]{2191012233249112004L, -456090861857877817L}).toString(), this.zzb);
        bundle.putString(new ObfuscatedString(new long[]{-2698813496339036957L, -8222745300490936858L}).toString(), this.zzc);
        bundle.putBoolean(new ObfuscatedString(new long[]{-9051955342077154835L, -8524246642622690932L, 6846233680740185506L}).toString(), this.zzd);
        bundle.putBoolean(new ObfuscatedString(new long[]{-5678370031375522898L, 6208677926183649356L, 948682334725375815L}).toString(), this.zze);
        bundle.putInt(new ObfuscatedString(new long[]{-1087984060514237543L, 1110323717238539820L, 4196488111366842193L}).toString(), this.zzq);
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzky)).booleanValue()) {
            bundle.putBoolean(new ObfuscatedString(new long[]{8713796497936466907L, 904706742032866140L, -600532065734843763L}).toString(), this.zzf);
        }
        bundle.putString(new ObfuscatedString(new long[]{-8207102822250478980L, 5435057139923033354L}).toString(), this.zzg);
        if (!this.zzh.isEmpty()) {
            bundle.putStringArrayList(new ObfuscatedString(new long[]{-572669456943909008L, -3697762153807918700L}).toString(), this.zzh);
        }
        bundle.putString(new ObfuscatedString(new long[]{4901479646809400142L, 7767098604285529119L}).toString(), this.zzi);
        bundle.putString(new ObfuscatedString(new long[]{5863921327722614841L, -5452479150369000758L}).toString(), this.zzm);
        Bundle zza = zzfhv.zza(bundle, new ObfuscatedString(new long[]{6990713091815635533L, -6305515507474332831L}).toString());
        bundle.putBundle(new ObfuscatedString(new long[]{-393482862878197967L, 1661963773832851898L}).toString(), zza);
        zza.putString(new ObfuscatedString(new long[]{-8136515073830624498L, 1493581038315351821L}).toString(), this.zzk);
        zza.putLong(new ObfuscatedString(new long[]{4761101522410777203L, -8713065124235065875L, 464149968491130390L, 5072418517429365489L, 5037925778941722829L}).toString(), this.zzn);
        Bundle zza2 = zzfhv.zza(zza, new ObfuscatedString(new long[]{-7767688544926724981L, -8478026545789265163L}).toString());
        zza.putBundle(new ObfuscatedString(new long[]{-1142137728920997634L, -7221658083900634460L}).toString(), zza2);
        zza2.putBoolean(new ObfuscatedString(new long[]{6782819490459503889L, -4242523877934577653L, 3738980534049572371L, -9065456711903424034L, 2171037445584369763L}).toString(), this.zzl);
        if (!TextUtils.isEmpty(this.zzj)) {
            Bundle zza3 = zzfhv.zza(zza, new ObfuscatedString(new long[]{6410478575070176590L, 6526481030582010894L, 7640198084852682044L}).toString());
            zza.putBundle(new ObfuscatedString(new long[]{5176724356484780621L, -6486080817172301224L, 6460957997476270549L}).toString(), zza3);
            zza3.putString(new ObfuscatedString(new long[]{1326110878703284619L, -4714438076562487299L, 7833178308733228637L}).toString(), this.zzj);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkM)).booleanValue()) {
            bundle.putBoolean(new ObfuscatedString(new long[]{-8198622021108202978L, 4969495812716943188L}).toString(), this.zzo);
        }
        if (!TextUtils.isEmpty(this.zzp)) {
            bundle.putString(new ObfuscatedString(new long[]{8690286060450973833L, 7051278621950486727L}).toString(), this.zzp);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkJ)).booleanValue()) {
            zzfhv.zzg(bundle, new ObfuscatedString(new long[]{2610671499352104758L, -803287045278826370L}).toString(), true, ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkG)).booleanValue());
            zzfhv.zzg(bundle, new ObfuscatedString(new long[]{-1463042030398808952L, 2777941117367734532L}).toString(), true, ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkF)).booleanValue());
        }
    }
}
