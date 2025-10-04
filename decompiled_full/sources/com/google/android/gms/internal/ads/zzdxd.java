package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.panda912.muddy.ObfuscatedString;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

/* loaded from: classes2.dex */
public final class zzdxd implements AppEventListener, zzdds, com.google.android.gms.ads.internal.client.zza, zzdax, zzdbr, zzdbs, zzdcl, zzdba, zzfln {
    private final List zza;
    private final zzdwr zzb;
    private long zzc;

    public zzdxd(zzdwr zzdwrVar, zzclg zzclgVar) {
        this.zzb = zzdwrVar;
        this.zza = Collections.singletonList(zzclgVar);
    }

    private final void zzg(Class cls, String str, Object... objArr) {
        String simpleName = cls.getSimpleName();
        this.zzb.zza(this.zza, new ObfuscatedString(new long[]{-5385510006986333169L, -6787382121421388851L}).toString().concat(simpleName), str, objArr);
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        zzg(com.google.android.gms.ads.internal.client.zza.class, new ObfuscatedString(new long[]{6739745809735944528L, -967612779106818706L, -1802876049017070574L}).toString(), new Object[0]);
    }

    @Override // com.google.android.gms.ads.admanager.AppEventListener
    public final void onAppEvent(String str, String str2) {
        zzg(AppEventListener.class, new ObfuscatedString(new long[]{-4644257080452240068L, -8137432736237820044L, 7698786767814258252L}).toString(), str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzdax
    public final void zza() {
        zzg(zzdax.class, new ObfuscatedString(new long[]{3022023539302739316L, 662775080190724609L, -7241773230885410513L}).toString(), new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzdax
    public final void zzb() {
        zzg(zzdax.class, new ObfuscatedString(new long[]{-7402084630841550216L, 1908288458978703003L, 5657718354509609734L, 6719337786475606323L}).toString(), new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzdax
    @ParametersAreNonnullByDefault
    public final void zzbB(zzbzu zzbzuVar, String str, String str2) {
        zzg(zzdax.class, new ObfuscatedString(new long[]{-1036802445061897247L, -8747239938504384242L, 1695574000630493795L}).toString(), zzbzuVar, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzdba
    public final void zzbK(com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzg(zzdba.class, new ObfuscatedString(new long[]{1543925762077110634L, -6337651135931186319L, 7987501977977845457L}).toString(), Integer.valueOf(zzeVar.zza), zzeVar.zzb, zzeVar.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzfln
    public final void zzbL(zzflg zzflgVar, String str) {
        zzg(zzflf.class, new ObfuscatedString(new long[]{-5181052227322724321L, 8076312822660123391L, -2859755451258056096L}).toString(), str);
    }

    @Override // com.google.android.gms.internal.ads.zzfln
    public final void zzbM(zzflg zzflgVar, String str, Throwable th) {
        zzg(zzflf.class, new ObfuscatedString(new long[]{5720547382936645245L, 8142944942281776141L, 3293221059669850772L}).toString(), str, th.getClass().getSimpleName());
    }

    @Override // com.google.android.gms.internal.ads.zzfln
    public final void zzbN(zzflg zzflgVar, String str) {
        zzg(zzflf.class, new ObfuscatedString(new long[]{-8863469479861477083L, 7523354637739455636L, 8675026970207480561L}).toString(), str);
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final void zzbs(Context context) {
        zzg(zzdbs.class, new ObfuscatedString(new long[]{2007342292229925818L, 7850594927174089992L, -2022976298409157282L}).toString(), context);
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final void zzbu(Context context) {
        zzg(zzdbs.class, new ObfuscatedString(new long[]{-9049676370891700131L, -1105951776145633219L}).toString(), context);
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final void zzbv(Context context) {
        zzg(zzdbs.class, new ObfuscatedString(new long[]{-2387421908272657123L, 4518433678196258249L}).toString(), context);
    }

    @Override // com.google.android.gms.internal.ads.zzdds
    public final void zzbw(zzbze zzbzeVar) {
        this.zzc = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
        zzg(zzdds.class, new ObfuscatedString(new long[]{-7946870014340097761L, 2772516893518146924L, -5535819132487598754L}).toString(), new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzdds
    public final void zzbx(zzfgy zzfgyVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdax
    public final void zzc() {
        zzg(zzdax.class, new ObfuscatedString(new long[]{1851353155063724265L, -2275677360485430454L, -3505909377261906788L}).toString(), new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzfln
    public final void zzd(zzflg zzflgVar, String str) {
        zzg(zzflf.class, new ObfuscatedString(new long[]{-7819525109735438645L, 6862173686017432730L, 4530355556317479331L}).toString(), str);
    }

    @Override // com.google.android.gms.internal.ads.zzdax
    public final void zze() {
        zzg(zzdax.class, new ObfuscatedString(new long[]{-3627707970622163236L, 4322335572382727093L, -764269554807320829L, 3896888062070335156L}).toString(), new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzdax
    public final void zzf() {
        zzg(zzdax.class, new ObfuscatedString(new long[]{2263933938597754911L, -3826748724960361856L, -7537783962667451619L, 2175966295816879245L}).toString(), new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzdbr
    public final void zzq() {
        zzg(zzdbr.class, new ObfuscatedString(new long[]{6058696500322092709L, 2839501941063665135L, 6378670928441830771L}).toString(), new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzdcl
    public final void zzr() {
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-1830105785244832251L, -622879645768166871L, -8133195539084896457L, 5238252984983919489L}).toString() + (com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - this.zzc));
        zzg(zzdcl.class, new ObfuscatedString(new long[]{-4315493881674245552L, 7180391732940148255L, 3767312709313306303L}).toString(), new Object[0]);
    }
}
