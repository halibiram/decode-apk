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
public final class zzfgd extends zzcam {
    private final zzffz zza;
    private final zzffp zzb;
    private final String zzc;
    private final zzfgz zzd;
    private final Context zze;
    private final zzcei zzf;
    private final zzavi zzg;
    private final zzdwf zzh;

    @Nullable
    private zzdso zzi;
    private boolean zzj = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzaD)).booleanValue();

    public zzfgd(@Nullable String str, zzffz zzffzVar, Context context, zzffp zzffpVar, zzfgz zzfgzVar, zzcei zzceiVar, zzavi zzaviVar, zzdwf zzdwfVar) {
        this.zzc = str;
        this.zza = zzffzVar;
        this.zzb = zzffpVar;
        this.zzd = zzfgzVar;
        this.zze = context;
        this.zzf = zzceiVar;
        this.zzg = zzaviVar;
        this.zzh = zzdwfVar;
    }

    private final synchronized void zzu(com.google.android.gms.ads.internal.client.zzl zzlVar, zzcau zzcauVar, int i) {
        try {
            boolean z = false;
            if (((Boolean) zzbhy.zzl.zze()).booleanValue()) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkG)).booleanValue()) {
                    z = true;
                }
            }
            if (this.zzf.zzc < ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkH)).intValue() || !z) {
                Preconditions.checkMainThread(new ObfuscatedString(new long[]{9098935767268066054L, 8667112005009772593L, -228614494155354050L, -5014912833706934129L, -1062238676191748364L, 2873473934457045677L, 5649330632992541609L}).toString());
            }
            this.zzb.zzk(zzcauVar);
            com.google.android.gms.ads.internal.zzt.zzp();
            if (com.google.android.gms.ads.internal.util.zzt.zzG(this.zze) && zzlVar.zzs == null) {
                zzcec.zzg(new ObfuscatedString(new long[]{6664033650492769645L, 7775014427664151314L, 5755123865694957084L, 8279267773905829020L, 7156104912103335723L, -237871573404961773L, 9066915754790739756L}).toString());
                this.zzb.zzbK(zzfij.zzd(4, null, null));
                return;
            }
            if (this.zzi != null) {
                return;
            }
            zzffr zzffrVar = new zzffr(null);
            this.zza.zzj(i);
            this.zza.zzb(zzlVar, this.zzc, zzffrVar, new zzfgc(this));
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final Bundle zzb() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{5580633011945327045L, 7239211624499254272L, 6635671131941079312L, -2755062736595714938L, 1348847815235311927L, 4615080037373895295L, 4843015424888800117L}).toString());
        zzdso zzdsoVar = this.zzi;
        if (zzdsoVar != null) {
            return zzdsoVar.zza();
        }
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    @Nullable
    public final com.google.android.gms.ads.internal.client.zzdn zzc() {
        zzdso zzdsoVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgN)).booleanValue() && (zzdsoVar = this.zzi) != null) {
            return zzdsoVar.zzl();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    @Nullable
    public final zzcak zzd() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-5151735181866136373L, -1391733273310805385L, -1203305336241721469L, 8570778244217270820L, 6302078240417346715L, 3886123851342210737L, 356795037506781850L}).toString());
        zzdso zzdsoVar = this.zzi;
        if (zzdsoVar != null) {
            return zzdsoVar.zzc();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    @Nullable
    public final synchronized String zze() {
        zzdso zzdsoVar = this.zzi;
        if (zzdsoVar != null && zzdsoVar.zzl() != null) {
            return zzdsoVar.zzl().zzg();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final synchronized void zzf(com.google.android.gms.ads.internal.client.zzl zzlVar, zzcau zzcauVar) {
        zzu(zzlVar, zzcauVar, 2);
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final synchronized void zzg(com.google.android.gms.ads.internal.client.zzl zzlVar, zzcau zzcauVar) {
        zzu(zzlVar, zzcauVar, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final synchronized void zzh(boolean z) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{8316754660817358927L, 5858173225437253991L, 2756161180679488529L, 971715667106274017L, 3960676952448865189L, 4602003691226665146L, 3147778629068756994L, -8667385769958931649L}).toString());
        this.zzj = z;
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final void zzi(com.google.android.gms.ads.internal.client.zzdd zzddVar) {
        if (zzddVar == null) {
            this.zzb.zzg(null);
        } else {
            this.zzb.zzg(new zzfgb(this, zzddVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final void zzj(com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-5106434531267592458L, -8011577305561460882L, 4702156499151996265L, 2687363738228798256L, 3572536099530990295L, 3915459345930588807L, -3221680601644798442L, -8233925750905401286L, 1934350537201869143L}).toString());
        try {
            if (!zzdgVar.zzf()) {
                this.zzh.zze();
            }
        } catch (RemoteException e) {
            zzcec.zzf(new ObfuscatedString(new long[]{5154067512802244789L, 2290859741829078945L, 8147812246315292586L, 1741221183868658121L, 8953946597446965992L, -5925419603077492271L, -5407079413860219784L, 2731072261831504405L, 4259599427133888707L}).toString(), e);
        }
        this.zzb.zzi(zzdgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final void zzk(zzcaq zzcaqVar) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-266404687336895433L, 7522151059530496641L, 4959951020817946572L, -1978679554677753665L, -3196225030927964058L, 2746050732245753578L, -7374937436750640295L}).toString());
        this.zzb.zzj(zzcaqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final synchronized void zzl(zzcbb zzcbbVar) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{4924637159457161665L, 11396355149389236L, 2828234792207378047L, -6212173173431000136L, -7834026429526688402L, -6580058430602148583L, -6561696879498257348L}).toString());
        zzfgz zzfgzVar = this.zzd;
        zzfgzVar.zza = zzcbbVar.zza;
        zzfgzVar.zzb = zzcbbVar.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final synchronized void zzm(IObjectWrapper iObjectWrapper) {
        zzn(iObjectWrapper, this.zzj);
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final synchronized void zzn(IObjectWrapper iObjectWrapper, boolean z) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-381200701933948689L, 4606746864330640591L, -8681947151014043688L, 6970964493899391230L, -6724639181184359746L, 1072492315840401678L, -5833232622899540944L}).toString());
        if (this.zzi == null) {
            zzcec.zzj(new ObfuscatedString(new long[]{3773788009680868000L, 4958656934494799796L, -1965426107564646835L, 7492294789381553024L, -3172414192134502844L, 5684216847820989254L}).toString());
            this.zzb.zzp(zzfij.zzd(9, null, null));
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcz)).booleanValue()) {
            this.zzg.zzc().zzn(new Throwable().getStackTrace());
        }
        this.zzi.zzh(z, (Activity) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final boolean zzo() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{911449433643719675L, 4133392677201360326L, -7687021189212124257L, 6596667911928510173L, 2165281567127034301L, -1881969278210283970L, 747677503075680372L}).toString());
        zzdso zzdsoVar = this.zzi;
        if (zzdsoVar != null && !zzdsoVar.zzf()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final void zzp(zzcav zzcavVar) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-3930869845243855270L, 3656708459662429325L, 3839638295311695191L, 3643768535835389763L, -7195727782735097552L, -5017336948912036707L, -8464290247939856819L}).toString());
        this.zzb.zzo(zzcavVar);
    }
}
