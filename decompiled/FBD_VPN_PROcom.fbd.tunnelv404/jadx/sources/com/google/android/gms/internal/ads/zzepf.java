package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import java.util.Collections;

/* loaded from: classes2.dex */
public final class zzepf extends com.google.android.gms.ads.internal.client.zzbt {
    private final Context zza;
    private final com.google.android.gms.ads.internal.client.zzbh zzb;
    private final zzfhh zzc;
    private final zzcuf zzd;
    private final ViewGroup zze;
    private final zzdwf zzf;

    public zzepf(Context context, @Nullable com.google.android.gms.ads.internal.client.zzbh zzbhVar, zzfhh zzfhhVar, zzcuf zzcufVar, zzdwf zzdwfVar) {
        this.zza = context;
        this.zzb = zzbhVar;
        this.zzc = zzfhhVar;
        this.zzd = zzcufVar;
        this.zzf = zzdwfVar;
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.removeAllViews();
        View zzc = zzcufVar.zzc();
        com.google.android.gms.ads.internal.zzt.zzp();
        frameLayout.addView(zzc, new ViewGroup.LayoutParams(-1, -1));
        frameLayout.setMinimumHeight(zzg().zzc);
        frameLayout.setMinimumWidth(zzg().zzf);
        this.zze = frameLayout;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzA() {
        this.zzd.zzg();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzB() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-8353295963379445105L, -1878273715242578496L, -2164178172579111703L, 3338054886016181702L, 8637375151622571358L, -1309485453627595560L, -8291221339012152613L}).toString());
        this.zzd.zzm().zzc(null);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzC(com.google.android.gms.ads.internal.client.zzbe zzbeVar) {
        zzcec.zzi(new ObfuscatedString(new long[]{5471146962102411216L, 5539688074690250682L, 1655939892112314491L, 7413619824419159135L, 5666238703537692266L, 2479143375963511754L, -5528483654938086783L, -9066613500080823953L, -1532873743707966491L, 8971133356335186631L, 7885435283331123205L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzD(com.google.android.gms.ads.internal.client.zzbh zzbhVar) {
        zzcec.zzi(new ObfuscatedString(new long[]{-3287722762966887456L, -4332965500447635986L, 2320543723351808987L, -4715528988213384154L, -1803865805953377819L, -2927972416438624289L, 1573130265777960506L, -1539968263713919597L, 6470395390622627332L, 3512323413848893008L, -4603569616245309357L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzE(com.google.android.gms.ads.internal.client.zzby zzbyVar) {
        zzcec.zzi(new ObfuscatedString(new long[]{-4272660785562158300L, 5032195156061555897L, 6113253780376100489L, 3991455627447255751L, -786321436348007381L, 2999898735034723099L, -18238633211284035L, 2501420257337193117L, -1482567026075233505L, -1001305920474619347L, -4077168646514738289L, 3192757050258331935L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzF(com.google.android.gms.ads.internal.client.zzq zzqVar) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-7532299945388973247L, 7503032879598287418L, -8780486260540061820L, 7959604858645233139L, -5289095685459975865L, 1666888804402565994L, -4914933131175795331L}).toString());
        zzcuf zzcufVar = this.zzd;
        if (zzcufVar != null) {
            zzcufVar.zzh(this.zze, zzqVar);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzG(com.google.android.gms.ads.internal.client.zzcb zzcbVar) {
        zzeqe zzeqeVar = this.zzc.zzc;
        if (zzeqeVar != null) {
            zzeqeVar.zzm(zzcbVar);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzH(zzbam zzbamVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzI(com.google.android.gms.ads.internal.client.zzw zzwVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzJ(com.google.android.gms.ads.internal.client.zzci zzciVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzK(com.google.android.gms.ads.internal.client.zzdu zzduVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzL(boolean z) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzM(zzbxc zzbxcVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzN(boolean z) {
        zzcec.zzi(new ObfuscatedString(new long[]{8892980946523710105L, -3810774579883257374L, -1990492209160880425L, 5466514991977887365L, 989661228629163855L, 999877947291858308L, -3213678734859263736L, -391321327261011184L, 1554603993381578665L, -446396861156506815L, -583487733029861113L, -1341933011496380241L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzO(zzbha zzbhaVar) {
        zzcec.zzi(new ObfuscatedString(new long[]{1731559891836632017L, 47545871246791956L, 4691688186032318732L, -4617028619630494047L, 6665551060950441670L, 667984991630257389L, -5429853359130158730L, -9161281883364264905L, 5970067270427737893L, -3878493694418092198L, 6595174093890226407L, 2388230719259853617L, 7139176536427064191L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzP(com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkY)).booleanValue()) {
            zzeqe zzeqeVar = this.zzc.zzc;
            if (zzeqeVar != null) {
                try {
                    if (!zzdgVar.zzf()) {
                        this.zzf.zze();
                    }
                } catch (RemoteException e) {
                    zzcec.zzf(new ObfuscatedString(new long[]{-3005027197300165290L, -2477597759619770860L, -5414737168293551058L, -240807550607894702L, 7883726535964737619L, -3294579702354197781L, -3161087218215315831L, 6118582215740108961L, -260418616548306083L}).toString(), e);
                }
                zzeqeVar.zzl(zzdgVar);
                return;
            }
            return;
        }
        zzcec.zzi(new ObfuscatedString(new long[]{-2340691909135835241L, 4573148788433252563L, -1227830378299120233L, 271714095953533424L, 44758691490002454L, 6810021694048372069L, -4124015697843149023L, -9119938754065954783L, 2248947092064655900L, -1022808952187837177L, 2747555641663426401L, 8504505608306990905L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzQ(zzbxf zzbxfVar, String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzR(String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzS(zzcaa zzcaaVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzT(String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzU(com.google.android.gms.ads.internal.client.zzfk zzfkVar) {
        zzcec.zzi(new ObfuscatedString(new long[]{-2534022724191617141L, -6469487028856070091L, 7271207866487541686L, -1443129426038955641L, 3337276197967246365L, -8405128914524257511L, -6413104429928476736L, -8915924129918273774L, 8194107964273843022L, -7853337952516438926L, 4137239569291330300L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzW(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzX() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final boolean zzY() {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final boolean zzZ() {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final boolean zzaa(com.google.android.gms.ads.internal.client.zzl zzlVar) {
        zzcec.zzi(new ObfuscatedString(new long[]{4422077451858071849L, 5212918425905885656L, -6347260329627301398L, -5160129632756774858L, 309851045893254974L, -8578061429274001647L, -923874628545066943L, -540338918788271646L, 6739897647197602008L, 3704582613687774635L}).toString());
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzab(com.google.android.gms.ads.internal.client.zzcf zzcfVar) {
        zzcec.zzi(new ObfuscatedString(new long[]{-7166644700707360783L, -1651344594846383528L, -6233869504530114116L, 6381672600292268732L, -4507957415820722102L, -1999072011356766457L, -4540359641581507111L, 2660699222107282066L, 528028616910735121L, 12097214479421157L, 3155456372359897709L, -8181291870941714642L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final Bundle zzd() {
        zzcec.zzi(new ObfuscatedString(new long[]{-1969380245439884348L, 8472038500960674248L, -3534636302541483435L, 5862258368147650121L, -751511525278463311L, -4389696176674719797L, -2533239687006544347L, -77624156549017302L, -6703617090451846706L, 7315416509676209458L, -7234822708200781303L}).toString());
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final com.google.android.gms.ads.internal.client.zzq zzg() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-5650440286179969489L, -2658489374865323573L, 6466074606326308664L, 7416956301347149931L, 4322751895739668875L, 5368924751168873956L, -97896463370432226L}).toString());
        return zzfhn.zza(this.zza, Collections.singletonList(this.zzd.zze()));
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final com.google.android.gms.ads.internal.client.zzbh zzi() {
        return this.zzb;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final com.google.android.gms.ads.internal.client.zzcb zzj() {
        return this.zzc.zzn;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final com.google.android.gms.ads.internal.client.zzdn zzk() {
        return this.zzd.zzl();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final com.google.android.gms.ads.internal.client.zzdq zzl() {
        return this.zzd.zzd();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final IObjectWrapper zzn() {
        return ObjectWrapper.wrap(this.zze);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final String zzr() {
        return this.zzc.zzf;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    @Nullable
    public final String zzs() {
        if (this.zzd.zzl() != null) {
            return this.zzd.zzl().zzg();
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    @Nullable
    public final String zzt() {
        if (this.zzd.zzl() != null) {
            return this.zzd.zzl().zzg();
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzx() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{8995594259069458738L, -2304738789412357719L, -8126684430379624576L, 4709762881845241436L, -7956253342709196632L, 6884358026368472749L, 7795523010262798194L}).toString());
        this.zzd.zzb();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzy(com.google.android.gms.ads.internal.client.zzl zzlVar, com.google.android.gms.ads.internal.client.zzbk zzbkVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzz() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{2356432978015127953L, -267051904627621266L, -8775059962893625348L, -3341820052836476386L, -3486977945370143081L, -6788337518730153280L, 5510984796700999337L}).toString());
        this.zzd.zzm().zzb(null);
    }
}
