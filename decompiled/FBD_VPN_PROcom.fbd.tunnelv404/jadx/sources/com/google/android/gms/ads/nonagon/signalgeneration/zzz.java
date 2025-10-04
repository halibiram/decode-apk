package com.google.android.gms.ads.nonagon.signalgeneration;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzcec;
import com.google.android.gms.internal.ads.zzdwa;
import com.google.android.gms.internal.ads.zzdwk;
import com.google.android.gms.internal.ads.zzgej;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzz implements zzgej {
    final /* synthetic */ zzaa zza;

    public zzz(zzaa zzaaVar) {
        this.zza = zzaaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final void zza(Throwable th) {
        zzdwk zzdwkVar;
        zzdwa zzdwaVar;
        AtomicInteger atomicInteger;
        AtomicBoolean atomicBoolean;
        AtomicInteger atomicInteger2;
        com.google.android.gms.ads.internal.zzt.zzo().zzw(th, new ObfuscatedString(new long[]{-8769269904879012634L, 3269793863663183141L, -3860136809230664694L, -4768352532162985284L, 1173693490314117132L, 2497032266861495980L, 4365786115242140275L, -163375881225580337L}).toString());
        zzaa zzaaVar = this.zza;
        zzdwkVar = zzaaVar.zzs;
        zzdwaVar = zzaaVar.zzk;
        Pair pair = new Pair(new ObfuscatedString(new long[]{-4139877638810261828L, -3395106940832615114L, -7307786151630111696L}).toString(), th.getMessage());
        atomicInteger = this.zza.zzK;
        zzf.zzc(zzdwkVar, zzdwaVar, new ObfuscatedString(new long[]{2851478615278639257L, -8026127252623603568L}).toString(), pair, new Pair(new ObfuscatedString(new long[]{2446449156273430116L, 1672725038697690571L}).toString(), Integer.toString(atomicInteger.get())));
        zzcec.zzh(new ObfuscatedString(new long[]{2214751901899944731L, -7367236896689615200L, -6538000828382042967L, 4309099993355490855L, 2870765371023513254L, 5438068705778359695L, -1663395728138600409L, -4289584760901354180L}).toString(), th);
        if (((Boolean) zzba.zzc().zza(zzbgc.zzjw)).booleanValue()) {
            atomicBoolean = this.zza.zzJ;
            if (!atomicBoolean.get()) {
                atomicInteger2 = this.zza.zzK;
                if (atomicInteger2.getAndIncrement() < ((Integer) zzba.zzc().zza(zzbgc.zzjx)).intValue()) {
                    this.zza.zzW();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final /* bridge */ /* synthetic */ void zzb(@Nullable Object obj) {
        zzdwk zzdwkVar;
        zzdwa zzdwaVar;
        AtomicInteger atomicInteger;
        AtomicBoolean atomicBoolean;
        zzcec.zze(new ObfuscatedString(new long[]{3854175116678246317L, 3504909782708584171L, 2642942549594280542L, 2443137883012978744L, -4284499365807678566L, -5683280972407397702L, -231576752161617350L}).toString());
        if (((Boolean) zzba.zzc().zza(zzbgc.zzjw)).booleanValue()) {
            zzaa zzaaVar = this.zza;
            zzdwkVar = zzaaVar.zzs;
            zzdwaVar = zzaaVar.zzk;
            atomicInteger = zzaaVar.zzK;
            zzf.zzc(zzdwkVar, zzdwaVar, new ObfuscatedString(new long[]{7703382352846671102L, -3522882019097364150L}).toString(), new Pair(new ObfuscatedString(new long[]{3218381791466006934L, 5475557587659404919L}).toString(), Integer.toString(atomicInteger.get())));
            atomicBoolean = this.zza.zzJ;
            atomicBoolean.set(true);
        }
    }
}
