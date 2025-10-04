package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzeqm extends com.google.android.gms.ads.internal.client.zzbt {
    private final com.google.android.gms.ads.internal.client.zzq zza;
    private final Context zzb;
    private final zzfep zzc;
    private final String zzd;
    private final zzcei zze;
    private final zzeqe zzf;
    private final zzffp zzg;
    private final zzavi zzh;
    private final zzdwf zzi;

    @Nullable
    private zzdjn zzj;
    private boolean zzk = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzaD)).booleanValue();

    public zzeqm(Context context, com.google.android.gms.ads.internal.client.zzq zzqVar, String str, zzfep zzfepVar, zzeqe zzeqeVar, zzffp zzffpVar, zzcei zzceiVar, zzavi zzaviVar, zzdwf zzdwfVar) {
        this.zza = zzqVar;
        this.zzd = str;
        this.zzb = context;
        this.zzc = zzfepVar;
        this.zzf = zzeqeVar;
        this.zzg = zzffpVar;
        this.zze = zzceiVar;
        this.zzh = zzaviVar;
        this.zzi = zzdwfVar;
    }

    private final synchronized boolean zze() {
        zzdjn zzdjnVar = this.zzj;
        if (zzdjnVar != null) {
            if (!zzdjnVar.zza()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzA() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void zzB() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-8531525725502235892L, -8587880511275537202L, 2277006066841153188L, -6121837493853166813L, -2225220171388749864L, -7663474944020681536L, 3720143045519926518L}).toString());
        zzdjn zzdjnVar = this.zzj;
        if (zzdjnVar != null) {
            zzdjnVar.zzm().zzc(null);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzC(com.google.android.gms.ads.internal.client.zzbe zzbeVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzD(com.google.android.gms.ads.internal.client.zzbh zzbhVar) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-293311025174131189L, 8855482785255583919L, 1590201674527262255L, -4309256547470267775L, 200393615745771911L, -1506937803443408193L, -6175121036090020789L, 1160789568119692035L}).toString());
        this.zzf.zzj(zzbhVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzE(com.google.android.gms.ads.internal.client.zzby zzbyVar) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-6146194727597966670L, 4655940072496170865L, -2113376816530226568L, 8245272451009346316L, -7557000133000200989L, -1074436477369791673L, 2168840092015667993L, 3473919822703442010L, 2220533560736004471L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzF(com.google.android.gms.ads.internal.client.zzq zzqVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzG(com.google.android.gms.ads.internal.client.zzcb zzcbVar) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-4363577953009412745L, 1914615863690001921L, 6893193375196784362L, 8861603394548273588L, 3831745218432233257L, -253962028432468386L, -8109981689100040449L, 2001263933184456536L, -1089184872263774613L}).toString());
        this.zzf.zzm(zzcbVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzH(zzbam zzbamVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzI(com.google.android.gms.ads.internal.client.zzw zzwVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzJ(com.google.android.gms.ads.internal.client.zzci zzciVar) {
        this.zzf.zzn(zzciVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzK(com.google.android.gms.ads.internal.client.zzdu zzduVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void zzL(boolean z) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-4112114277736962292L, 7661218099446314855L, 1702296814191712994L, -6020727980466678260L, -8951419302968703979L, -325074266150013599L, -3835913198391033682L, 4916654868741967857L}).toString());
        this.zzk = z;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzM(zzbxc zzbxcVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzN(boolean z) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void zzO(zzbha zzbhaVar) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-6504824651851267094L, 7324088464610428694L, -7806217939353761777L, 1146788670294733081L, -6786031304018102884L, -3503945442135927464L, -8969900729658237814L, 6791702137815706329L, -6213554254498614060L, 472281586484320408L, -3329941753486934713L}).toString());
        this.zzc.zzi(zzbhaVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzP(com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{4299777732636059437L, 8618789918332152030L, 724430084066220986L, 7881236529867642173L, -9034392842705791222L, 3657056318417428190L, -6257874157313255257L, -5229874702854460994L, -3035637602535631908L}).toString());
        try {
            if (!zzdgVar.zzf()) {
                this.zzi.zze();
            }
        } catch (RemoteException e) {
            zzcec.zzf(new ObfuscatedString(new long[]{-7660392120684498693L, 4453380935321604996L, 8617309096183151430L, 5395002186757652087L, 595799962339676501L, -6734529726076277352L, -1467007214077312258L, 1813134196248080249L, 2608939067987350917L}).toString(), e);
        }
        this.zzf.zzl(zzdgVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzQ(zzbxf zzbxfVar, String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzR(String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzS(zzcaa zzcaaVar) {
        this.zzg.zzm(zzcaaVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzT(String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzU(com.google.android.gms.ads.internal.client.zzfk zzfkVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void zzW(IObjectWrapper iObjectWrapper) {
        if (this.zzj == null) {
            zzcec.zzj(new ObfuscatedString(new long[]{8026100270438641660L, 8629768992617120187L, 6008292100904542895L, 996190329174419073L, -1842508268513843196L, -4305331694611772183L, -8270215133069167285L}).toString());
            this.zzf.zzp(zzfij.zzd(9, null, null));
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcz)).booleanValue()) {
            this.zzh.zzc().zzn(new Throwable().getStackTrace());
        }
        this.zzj.zzc(this.zzk, (Activity) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void zzX() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-8895027989897741462L, 3223089888382179071L, -6074988361517469022L, -720944911296615134L, 6604611579526055064L, -4979886177714685698L, -8265042565959765129L, 6487048507756068495L}).toString());
        if (this.zzj == null) {
            zzcec.zzj(new ObfuscatedString(new long[]{-1307720042148793890L, 6913880352727097622L, 8698847959068080412L, 1133000044317427690L, 2705422180996116235L, 5074899415010622599L, 355241577088936615L}).toString());
            this.zzf.zzp(zzfij.zzd(9, null, null));
        } else {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcz)).booleanValue()) {
                this.zzh.zzc().zzn(new Throwable().getStackTrace());
            }
            this.zzj.zzc(this.zzk, null);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized boolean zzY() {
        return this.zzc.zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized boolean zzZ() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-673691941373065978L, -1773186070179981696L, -3294930963613706338L, -6151920351665237926L, -3191729650094075261L, -3704637219555239649L, 8181148913604039103L}).toString());
        return zze();
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0087 A[Catch: all -> 0x0027, TRY_LEAVE, TryCatch #0 {all -> 0x0027, blocks: (B:4:0x0002, B:6:0x0011, B:9:0x002a, B:12:0x0053, B:14:0x005f, B:16:0x0063, B:18:0x0078, B:22:0x0081, B:24:0x0087, B:27:0x0042), top: B:3:0x0002 }] */
    @Override // com.google.android.gms.ads.internal.client.zzbu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized boolean zzaa(com.google.android.gms.ads.internal.client.zzl zzlVar) {
        boolean z;
        try {
            if (((Boolean) zzbhy.zzi.zze()).booleanValue()) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkG)).booleanValue()) {
                    z = true;
                    if (this.zze.zzc >= ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkH)).intValue() || !z) {
                        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-6892022348634832347L, 165230448285493581L, 2635403872129372166L, -8951101353004379858L, -772851316131585251L, 2973438789738560532L, 2188492653867432780L}).toString());
                    }
                    com.google.android.gms.ads.internal.zzt.zzp();
                    if (!com.google.android.gms.ads.internal.util.zzt.zzG(this.zzb) && zzlVar.zzs == null) {
                        zzcec.zzg(new ObfuscatedString(new long[]{-839598335965218201L, 2684799616803885878L, 4695445438108853345L, -5428923927504900926L, -1681259006709770107L, -431304288683116519L, -4751918785431491395L}).toString());
                        zzeqe zzeqeVar = this.zzf;
                        if (zzeqeVar != null) {
                            zzeqeVar.zzbK(zzfij.zzd(4, null, null));
                        }
                    } else if (!zze()) {
                        zzfie.zza(this.zzb, zzlVar.zzf);
                        this.zzj = null;
                        return this.zzc.zzb(zzlVar, this.zzd, new zzfei(this.zza), new zzeql(this));
                    }
                    return false;
                }
            }
            z = false;
            if (this.zze.zzc >= ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkH)).intValue()) {
            }
            Preconditions.checkMainThread(new ObfuscatedString(new long[]{-6892022348634832347L, 165230448285493581L, 2635403872129372166L, -8951101353004379858L, -772851316131585251L, 2973438789738560532L, 2188492653867432780L}).toString());
            com.google.android.gms.ads.internal.zzt.zzp();
            if (!com.google.android.gms.ads.internal.util.zzt.zzG(this.zzb)) {
            }
            if (!zze()) {
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzab(com.google.android.gms.ads.internal.client.zzcf zzcfVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final Bundle zzd() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{4258049234980924709L, 5153938740741705155L, 1401732246932354195L, -6359073491392410749L, -2692706489227493993L, -2433338096763087262L, 1422039581358339260L, 1245693457615676068L}).toString());
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final com.google.android.gms.ads.internal.client.zzq zzg() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final com.google.android.gms.ads.internal.client.zzbh zzi() {
        return this.zzf.zzg();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final com.google.android.gms.ads.internal.client.zzcb zzj() {
        return this.zzf.zzi();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    @Nullable
    public final synchronized com.google.android.gms.ads.internal.client.zzdn zzk() {
        zzdjn zzdjnVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgN)).booleanValue() && (zzdjnVar = this.zzj) != null) {
            return zzdjnVar.zzl();
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final com.google.android.gms.ads.internal.client.zzdq zzl() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final IObjectWrapper zzn() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized String zzr() {
        return this.zzd;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    @Nullable
    public final synchronized String zzs() {
        zzdjn zzdjnVar = this.zzj;
        if (zzdjnVar != null && zzdjnVar.zzl() != null) {
            return zzdjnVar.zzl().zzg();
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    @Nullable
    public final synchronized String zzt() {
        zzdjn zzdjnVar = this.zzj;
        if (zzdjnVar != null && zzdjnVar.zzl() != null) {
            return zzdjnVar.zzl().zzg();
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void zzx() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-7741223691981364033L, 8299785167174198175L, -2227518211477442251L, -4051885231549084816L, 6288826944821877067L, 1402832886737070392L, -5135731473222686465L}).toString());
        zzdjn zzdjnVar = this.zzj;
        if (zzdjnVar != null) {
            zzdjnVar.zzm().zza(null);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzy(com.google.android.gms.ads.internal.client.zzl zzlVar, com.google.android.gms.ads.internal.client.zzbk zzbkVar) {
        this.zzf.zzk(zzbkVar);
        zzaa(zzlVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void zzz() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-6570751108685327432L, 1184440112802650426L, 17123617880530071L, -725961559334084501L, -3862218428902315792L, -818458737261620213L, 5930228186490871857L}).toString());
        zzdjn zzdjnVar = this.zzj;
        if (zzdjnVar != null) {
            zzdjnVar.zzm().zzb(null);
        }
    }
}
