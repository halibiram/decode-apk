package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import java.util.Collections;

/* loaded from: classes2.dex */
public final class zzepk extends com.google.android.gms.ads.internal.client.zzbt implements zzddn {
    private final Context zza;
    private final zzfcy zzb;
    private final String zzc;
    private final zzeqe zzd;
    private com.google.android.gms.ads.internal.client.zzq zze;
    private final zzfhf zzf;
    private final zzcei zzg;
    private final zzdwf zzh;

    @Nullable
    private zzcuf zzi;

    public zzepk(Context context, com.google.android.gms.ads.internal.client.zzq zzqVar, String str, zzfcy zzfcyVar, zzeqe zzeqeVar, zzcei zzceiVar, zzdwf zzdwfVar) {
        this.zza = context;
        this.zzb = zzfcyVar;
        this.zze = zzqVar;
        this.zzc = str;
        this.zzd = zzeqeVar;
        this.zzf = zzfcyVar.zzi();
        this.zzg = zzceiVar;
        this.zzh = zzdwfVar;
        zzfcyVar.zzp(this);
    }

    private final synchronized void zze(com.google.android.gms.ads.internal.client.zzq zzqVar) {
        this.zzf.zzr(zzqVar);
        this.zzf.zzw(this.zze.zzn);
    }

    private final synchronized boolean zzf(com.google.android.gms.ads.internal.client.zzl zzlVar) {
        try {
            if (zzh()) {
                Preconditions.checkMainThread(new ObfuscatedString(new long[]{5173747779634849814L, -3447144341397998707L, -5226088069411462789L, 1090732491117233577L, 4949957602028352599L, 4781542786035144103L, 3812532838156266387L}).toString());
            }
            com.google.android.gms.ads.internal.zzt.zzp();
            if (com.google.android.gms.ads.internal.util.zzt.zzG(this.zza) && zzlVar.zzs == null) {
                zzcec.zzg(new ObfuscatedString(new long[]{4944434895398693875L, -4552504969729816199L, 6963204412593849776L, -8417469819261613183L, -3156437432586763160L, 6492676732197958228L, 442994247446737540L}).toString());
                zzeqe zzeqeVar = this.zzd;
                if (zzeqeVar != null) {
                    zzeqeVar.zzbK(zzfij.zzd(4, null, null));
                }
                return false;
            }
            zzfie.zza(this.zza, zzlVar.zzf);
            return this.zzb.zzb(zzlVar, this.zzc, null, new zzepj(this));
        } catch (Throwable th) {
            throw th;
        }
    }

    private final boolean zzh() {
        boolean z;
        if (((Boolean) zzbhy.zzf.zze()).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkG)).booleanValue()) {
                z = true;
                if (this.zzg.zzc >= ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkH)).intValue() || !z) {
                    return true;
                }
                return false;
            }
        }
        z = false;
        if (this.zzg.zzc >= ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkH)).intValue()) {
        }
        return true;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void zzA() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-6577089001608715621L, 7244831080384237922L, 2935734204796290309L, 8093475715961511755L, -232053475658948032L, 4134602658901156852L, 7032102659769782274L, 1564668052579654929L, 2735827182854119486L}).toString());
        zzcuf zzcufVar = this.zzi;
        if (zzcufVar != null) {
            zzcufVar.zzg();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0050 A[Catch: all -> 0x0038, TRY_LEAVE, TryCatch #0 {all -> 0x0038, blocks: (B:3:0x0001, B:5:0x000f, B:7:0x0021, B:10:0x004c, B:12:0x0050, B:19:0x003a), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005a A[DONT_GENERATE] */
    @Override // com.google.android.gms.ads.internal.client.zzbu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void zzB() {
        zzcuf zzcufVar;
        try {
            if (((Boolean) zzbhy.zzh.zze()).booleanValue()) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkC)).booleanValue()) {
                    if (this.zzg.zzc < ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkI)).intValue()) {
                    }
                    zzcufVar = this.zzi;
                    if (zzcufVar == null) {
                        zzcufVar.zzm().zzc(null);
                        return;
                    }
                    return;
                }
            }
            Preconditions.checkMainThread(new ObfuscatedString(new long[]{-4446800139335174757L, -767287953826753577L, 1244941719167008875L, -5842630945092548114L, -369727414017225831L, 8710012362458155878L, 2550195729047463411L}).toString());
            zzcufVar = this.zzi;
            if (zzcufVar == null) {
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzC(com.google.android.gms.ads.internal.client.zzbe zzbeVar) {
        if (zzh()) {
            Preconditions.checkMainThread(new ObfuscatedString(new long[]{-8258223953941000124L, 477772108646615371L, 8776566493018858530L, -5527780500874066882L, -8303125632350175869L, -3634008321816896067L, -2859963498141467881L, 293978868151876658L}).toString());
        }
        this.zzb.zzo(zzbeVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzD(com.google.android.gms.ads.internal.client.zzbh zzbhVar) {
        if (zzh()) {
            Preconditions.checkMainThread(new ObfuscatedString(new long[]{7300012879007860602L, 9049118430369984963L, 4327009173796379045L, -6680178870095064020L, 8736205031666436313L, -8958896077766448741L, -5101185498150414894L, -5466414756762232217L}).toString());
        }
        this.zzd.zzj(zzbhVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzE(com.google.android.gms.ads.internal.client.zzby zzbyVar) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{917190648154220103L, -3854756721094042442L, 5658293883996401075L, 524690824521530823L, 5884459150201297822L, -8945718245628680872L, 9220423477490431694L, 1044894457068745195L, -4773498278888515954L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void zzF(com.google.android.gms.ads.internal.client.zzq zzqVar) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{5058225452442906287L, 7576472549718571684L, 3191850784028538622L, -6997476493604800126L, -288728568843604716L, 3418787873923820992L, -7761369009146458876L}).toString());
        this.zzf.zzr(zzqVar);
        this.zze = zzqVar;
        zzcuf zzcufVar = this.zzi;
        if (zzcufVar != null) {
            zzcufVar.zzh(this.zzb.zzd(), zzqVar);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzG(com.google.android.gms.ads.internal.client.zzcb zzcbVar) {
        if (zzh()) {
            Preconditions.checkMainThread(new ObfuscatedString(new long[]{-1010327228691449648L, -1311181212608007494L, 3659987721069753059L, -2278448473574337830L, -2562038713618037373L, 5228166392243403802L, -4036339567052313101L, 1948056121231079051L, -1408673652905856216L}).toString());
        }
        this.zzd.zzm(zzcbVar);
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
    public final synchronized void zzN(boolean z) {
        try {
            if (zzh()) {
                Preconditions.checkMainThread(new ObfuscatedString(new long[]{6890313856019031881L, 6312793829188467058L, 7104489390299442648L, 3762630347841411010L, 4207128455304432355L, -4120264442566836253L, 6412143611418802070L, 1845731610877461123L, 4770349979709084783L}).toString());
            }
            this.zzf.zzy(z);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void zzO(zzbha zzbhaVar) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{5596795784342675121L, -2312976918077132075L, 4637863833339998748L, -5825450310260769643L, 1778211790620749381L, -5993696910351718460L, 1509083641421056303L, -9109921937518311367L, 7873080741952520009L, -6608680525979160657L, 2641723669202833465L}).toString());
        this.zzb.zzq(zzbhaVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzP(com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
        if (zzh()) {
            Preconditions.checkMainThread(new ObfuscatedString(new long[]{-3422819432052931776L, -814131594927583708L, 7637718389175912399L, -871230389117654219L, 3114640988277198014L, -353521888395460301L, 4678824172116886104L, 4110849931888731614L, -5191112089348720769L}).toString());
        }
        try {
            if (!zzdgVar.zzf()) {
                this.zzh.zze();
            }
        } catch (RemoteException e) {
            zzcec.zzf(new ObfuscatedString(new long[]{-9201905983740358692L, -3427691801561611384L, -3830259903629840491L, 7806663675031718754L, -2130082536042205413L, -77454812486974863L, 5765711711030350173L, 791687292109636299L, 4960749051200591111L}).toString(), e);
        }
        this.zzd.zzl(zzdgVar);
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
    public final synchronized void zzU(com.google.android.gms.ads.internal.client.zzfk zzfkVar) {
        try {
            if (zzh()) {
                Preconditions.checkMainThread(new ObfuscatedString(new long[]{-3847513679534049609L, -5947610090145783074L, 3070592239103225830L, 462435878141847321L, -891157185864991161L, -7194334631970376097L, 7731172080303114768L, 8020304169841178411L}).toString());
            }
            this.zzf.zzF(zzfkVar);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzW(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzX() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized boolean zzY() {
        return this.zzb.zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final boolean zzZ() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzddn
    public final synchronized void zza() {
        try {
            if (this.zzb.zzr()) {
                com.google.android.gms.ads.internal.client.zzq zzg = this.zzf.zzg();
                zzcuf zzcufVar = this.zzi;
                if (zzcufVar != null && zzcufVar.zzf() != null && this.zzf.zzO()) {
                    zzg = zzfhn.zza(this.zza, Collections.singletonList(this.zzi.zzf()));
                }
                zze(zzg);
                try {
                    zzf(this.zzf.zze());
                    return;
                } catch (RemoteException unused) {
                    zzcec.zzj(new ObfuscatedString(new long[]{-2031233885763983780L, 3907105570857557537L, 3200717791761935663L, -985485260723656323L, -6904917525906841466L}).toString());
                    return;
                }
            }
            this.zzb.zzn();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized boolean zzaa(com.google.android.gms.ads.internal.client.zzl zzlVar) {
        zze(this.zze);
        return zzf(zzlVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void zzab(com.google.android.gms.ads.internal.client.zzcf zzcfVar) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-3418110723055529576L, 7551348249097686277L, 7956147365982335906L, 1422211743340109206L, -4904017714514370310L, 5581576354444789432L, 5884654176674728476L, -8622652769651788293L, 6055015300020430729L}).toString());
        this.zzf.zzQ(zzcfVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final Bundle zzd() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-6306909569533508412L, -1854437317742258798L, 6312896423013294208L, 8036660239718289017L, 846079849260134900L, -4726957843241324671L, -3462746334857820924L, 153695634687936649L}).toString());
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized com.google.android.gms.ads.internal.client.zzq zzg() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-6637204482161927487L, 6642573700381247337L, -3943158732116741534L, 7126879469528650469L, -7721405827679553556L, 8479702997210274503L, 2912472480038928729L}).toString());
        zzcuf zzcufVar = this.zzi;
        if (zzcufVar != null) {
            return zzfhn.zza(this.zza, Collections.singletonList(zzcufVar.zze()));
        }
        return this.zzf.zzg();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final com.google.android.gms.ads.internal.client.zzbh zzi() {
        return this.zzd.zzg();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final com.google.android.gms.ads.internal.client.zzcb zzj() {
        return this.zzd.zzi();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    @Nullable
    public final synchronized com.google.android.gms.ads.internal.client.zzdn zzk() {
        zzcuf zzcufVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgN)).booleanValue() && (zzcufVar = this.zzi) != null) {
            return zzcufVar.zzl();
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    @Nullable
    public final synchronized com.google.android.gms.ads.internal.client.zzdq zzl() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{2767665370324678131L, 1833205802570482377L, 3438561744288181723L, 1628312768545472563L, -2392347206336090349L, 5520231969543012448L, 7342917445296548105L, 8247656340333497501L}).toString());
        zzcuf zzcufVar = this.zzi;
        if (zzcufVar != null) {
            return zzcufVar.zzd();
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final IObjectWrapper zzn() {
        if (zzh()) {
            Preconditions.checkMainThread(new ObfuscatedString(new long[]{2064878737095660722L, -4026785178708084635L, -6130931739256015920L, 1265531528079679116L, 4961570004049370085L, -3181968687824252611L, 1341822840105525250L}).toString());
        }
        return ObjectWrapper.wrap(this.zzb.zzd());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized String zzr() {
        return this.zzc;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    @Nullable
    public final synchronized String zzs() {
        zzcuf zzcufVar = this.zzi;
        if (zzcufVar != null && zzcufVar.zzl() != null) {
            return zzcufVar.zzl().zzg();
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    @Nullable
    public final synchronized String zzt() {
        zzcuf zzcufVar = this.zzi;
        if (zzcufVar != null && zzcufVar.zzl() != null) {
            return zzcufVar.zzl().zzg();
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0050 A[Catch: all -> 0x0038, TRY_LEAVE, TryCatch #0 {all -> 0x0038, blocks: (B:3:0x0001, B:5:0x000f, B:7:0x0021, B:10:0x004c, B:12:0x0050, B:19:0x003a), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0055 A[DONT_GENERATE] */
    @Override // com.google.android.gms.ads.internal.client.zzbu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void zzx() {
        zzcuf zzcufVar;
        try {
            if (((Boolean) zzbhy.zze.zze()).booleanValue()) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkD)).booleanValue()) {
                    if (this.zzg.zzc < ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkI)).intValue()) {
                    }
                    zzcufVar = this.zzi;
                    if (zzcufVar == null) {
                        zzcufVar.zzb();
                        return;
                    }
                    return;
                }
            }
            Preconditions.checkMainThread(new ObfuscatedString(new long[]{1906332404458967329L, 488491309064120580L, -930352202895257883L, 7816748156567739036L, 7784686865248071359L, 6194904504565360036L, -4918614214857101964L}).toString());
            zzcufVar = this.zzi;
            if (zzcufVar == null) {
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzy(com.google.android.gms.ads.internal.client.zzl zzlVar, com.google.android.gms.ads.internal.client.zzbk zzbkVar) {
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0050 A[Catch: all -> 0x0038, TRY_LEAVE, TryCatch #0 {all -> 0x0038, blocks: (B:3:0x0001, B:5:0x000f, B:7:0x0021, B:10:0x004c, B:12:0x0050, B:19:0x003a), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005a A[DONT_GENERATE] */
    @Override // com.google.android.gms.ads.internal.client.zzbu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void zzz() {
        zzcuf zzcufVar;
        try {
            if (((Boolean) zzbhy.zzg.zze()).booleanValue()) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkE)).booleanValue()) {
                    if (this.zzg.zzc < ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkI)).intValue()) {
                    }
                    zzcufVar = this.zzi;
                    if (zzcufVar == null) {
                        zzcufVar.zzm().zzb(null);
                        return;
                    }
                    return;
                }
            }
            Preconditions.checkMainThread(new ObfuscatedString(new long[]{-3780742508602511430L, -7062160895750316394L, -6552582326397819468L, -1495082941652612267L, 7328739651105986203L, -7826315746899746900L, 1418127420067762922L}).toString());
            zzcufVar = this.zzi;
            if (zzcufVar == null) {
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
