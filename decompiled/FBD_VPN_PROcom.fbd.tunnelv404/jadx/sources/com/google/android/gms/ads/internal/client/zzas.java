package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzbjp;
import com.google.android.gms.internal.ads.zzbjs;
import com.google.android.gms.internal.ads.zzbjt;
import com.google.android.gms.internal.ads.zzbll;
import com.google.android.gms.internal.ads.zzbxw;
import com.google.android.gms.internal.ads.zzbxy;
import com.google.android.gms.internal.ads.zzcee;
import com.google.android.gms.internal.ads.zzcef;
import com.google.android.gms.internal.ads.zzceg;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzas extends zzax {
    final /* synthetic */ FrameLayout zza;
    final /* synthetic */ FrameLayout zzb;
    final /* synthetic */ Context zzc;
    final /* synthetic */ zzaw zzd;

    public zzas(zzaw zzawVar, FrameLayout frameLayout, FrameLayout frameLayout2, Context context) {
        this.zza = frameLayout;
        this.zzb = frameLayout2;
        this.zzc = context;
        this.zzd = zzawVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    public final /* bridge */ /* synthetic */ Object zza() {
        zzaw.zzt(this.zzc, new ObfuscatedString(new long[]{1053658713754306188L, 7054319601528779086L, -8482181506230753419L, -2415514572575476983L}).toString());
        return new zzez();
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    public final /* bridge */ /* synthetic */ Object zzb(zzce zzceVar) {
        return zzceVar.zzi(ObjectWrapper.wrap(this.zza), ObjectWrapper.wrap(this.zzb));
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    @Nullable
    public final /* bridge */ /* synthetic */ Object zzc() {
        zzbxy zzbxyVar;
        zzbll zzbllVar;
        zzbgc.zza(this.zzc);
        if (((Boolean) zzba.zzc().zza(zzbgc.zzki)).booleanValue()) {
            try {
                return zzbjp.zzbJ(((zzbjt) zzceg.zzb(this.zzc, new ObfuscatedString(new long[]{8095323040866010415L, 7656515516270012030L, -5280862834147830558L, 5577937011530497673L, -7796996707274693463L, 2482118700914455898L, 900108944662994208L, 5981962784314239442L, -2524823136011512550L, 5989291025005115728L}).toString(), new zzcee() { // from class: com.google.android.gms.ads.internal.client.zzar
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // com.google.android.gms.internal.ads.zzcee
                    public final Object zza(Object obj) {
                        return zzbjs.zzb(obj);
                    }
                })).zze(ObjectWrapper.wrap(this.zzc), ObjectWrapper.wrap(this.zza), ObjectWrapper.wrap(this.zzb), 240304000));
            } catch (RemoteException | zzcef | NullPointerException e) {
                this.zzd.zzh = zzbxw.zza(this.zzc);
                zzbxyVar = this.zzd.zzh;
                zzbxyVar.zzg(e, new ObfuscatedString(new long[]{-5645247771843472144L, -2687062285252795734L, -6514333653030370299L, -8195659007463447532L, -93228138235928994L, -2804154108620290635L, 8615208942028701600L}).toString());
                return null;
            }
        }
        zzaw zzawVar = this.zzd;
        Context context = this.zzc;
        FrameLayout frameLayout = this.zza;
        FrameLayout frameLayout2 = this.zzb;
        zzbllVar = zzawVar.zzd;
        return zzbllVar.zza(context, frameLayout, frameLayout2);
    }
}
