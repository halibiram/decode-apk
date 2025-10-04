package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.util.Clock;
import com.panda912.muddy.ObfuscatedString;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzdoe implements View.OnClickListener {

    @Nullable
    @VisibleForTesting
    String zza;

    @Nullable
    @VisibleForTesting
    Long zzb;

    @Nullable
    @VisibleForTesting
    WeakReference zzc;
    private final zzdrz zzd;
    private final Clock zze;

    @Nullable
    private zzblg zzf;

    @Nullable
    private zzbng zzg;

    public zzdoe(zzdrz zzdrzVar, Clock clock) {
        this.zzd = zzdrzVar;
        this.zze = clock;
    }

    private final void zzd() {
        View view;
        this.zza = null;
        this.zzb = null;
        WeakReference weakReference = this.zzc;
        if (weakReference != null && (view = (View) weakReference.get()) != null) {
            view.setClickable(false);
            view.setOnClickListener(null);
            this.zzc = null;
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        WeakReference weakReference = this.zzc;
        if (weakReference != null && weakReference.get() == view) {
            if (this.zza != null && this.zzb != null) {
                HashMap hashMap = new HashMap();
                hashMap.put(new ObfuscatedString(new long[]{-7367857307364516985L, 8175036636861611956L}).toString(), this.zza);
                hashMap.put(new ObfuscatedString(new long[]{-3380807647306319891L, -260662768707637299L, -5345326232431747900L}).toString(), String.valueOf(this.zze.currentTimeMillis() - this.zzb.longValue()));
                hashMap.put(new ObfuscatedString(new long[]{6065371472793247960L, -4560820543324969766L, -1421440386527835215L}).toString(), new ObfuscatedString(new long[]{1740826678972806217L, 7480053123264857410L, 1042927684646706225L, 2579859808034428822L}).toString());
                this.zzd.zzg(new ObfuscatedString(new long[]{-5574095627832531597L, 7651245291284091790L, 133338113548815869L, -8865728530626632183L}).toString(), hashMap);
            }
            zzd();
        }
    }

    @Nullable
    public final zzblg zza() {
        return this.zzf;
    }

    public final void zzb() {
        if (this.zzf != null && this.zzb != null) {
            zzd();
            try {
                this.zzf.zze();
            } catch (RemoteException e) {
                zzcec.zzl(new ObfuscatedString(new long[]{2151871363664622307L, 8329946197466205849L, 2908013722726134947L, -1986028445131141476L, -197179142607000609L, -1359581044351193457L}).toString(), e);
            }
        }
    }

    public final void zzc(final zzblg zzblgVar) {
        this.zzf = zzblgVar;
        zzbng zzbngVar = this.zzg;
        if (zzbngVar != null) {
            this.zzd.zzk(new ObfuscatedString(new long[]{7734587019200123605L, -1780730748412955273L, 8285589866548906056L, 923136896882066495L}).toString(), zzbngVar);
        }
        zzbng zzbngVar2 = new zzbng() { // from class: com.google.android.gms.internal.ads.zzdod
            @Override // com.google.android.gms.internal.ads.zzbng
            public final void zza(Object obj, Map map) {
                zzdoe zzdoeVar = zzdoe.this;
                try {
                    zzdoeVar.zzb = Long.valueOf(Long.parseLong((String) map.get(new ObfuscatedString(new long[]{5712652285501752486L, 2847900114981299983L, 7878589047584405247L}).toString())));
                } catch (NumberFormatException unused) {
                    zzcec.zzg(new ObfuscatedString(new long[]{5347342672886468826L, 8429268943148703578L, -7054356210249659218L, 1395689171351845319L, -4519627006634064364L, 6358256571651393919L, 1722271575236544812L}).toString());
                }
                zzblg zzblgVar2 = zzblgVar;
                zzdoeVar.zza = (String) map.get(new ObfuscatedString(new long[]{5870155201923905224L, 9132937327466053557L}).toString());
                String str = (String) map.get(new ObfuscatedString(new long[]{-3788026018748252723L, 9106848998618002164L}).toString());
                if (zzblgVar2 == null) {
                    zzcec.zze(new ObfuscatedString(new long[]{-4262793542188603580L, 447763980746316435L, -8807491954703627385L, -6264445971443010058L, 3906504844124497227L, -8517471854733237983L, 8017725919824827729L, 134593861606505621L, 3387997565341132566L}).toString());
                    return;
                }
                try {
                    zzblgVar2.zzf(str);
                } catch (RemoteException e) {
                    zzcec.zzl(new ObfuscatedString(new long[]{5685394013974437059L, 6511575603390968436L, 4303895876056218192L, 6435075640876654040L, 8534580315611596799L, 7854265004934005249L}).toString(), e);
                }
            }
        };
        this.zzg = zzbngVar2;
        this.zzd.zzi(new ObfuscatedString(new long[]{1382289790794573655L, -489726057684916230L, 7364054024202184684L, 5917823394830888292L}).toString(), zzbngVar2);
    }
}
