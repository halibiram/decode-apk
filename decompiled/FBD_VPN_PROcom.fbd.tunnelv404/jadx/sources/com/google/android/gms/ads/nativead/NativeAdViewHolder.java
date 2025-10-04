package com.google.android.gms.ads.nativead;

import android.os.RemoteException;
import android.view.View;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.internal.client.zzay;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbjw;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* loaded from: classes2.dex */
public final class NativeAdViewHolder {

    @NonNull
    public static final WeakHashMap zza = new WeakHashMap();

    @NotOnlyInitialized
    private zzbjw zzb;
    private WeakReference zzc;

    public NativeAdViewHolder(@NonNull View view, @NonNull Map<String, View> map, @NonNull Map<String, View> map2) {
        Preconditions.checkNotNull(view, new ObfuscatedString(new long[]{-628448370870455771L, -4290995442019692745L, -2423629440770508123L, -9079646826937256046L, 8538394820372716572L}).toString());
        if (view instanceof NativeAdView) {
            zzcec.zzg(new ObfuscatedString(new long[]{3455343632522172033L, -3819668455490876685L, 4459776943657535097L, 2704325921928401254L, -5474448676410599843L, -8068493000619241798L, 5484211870194989132L, 2560497357191743884L, -2405820275037193888L, 1438649468777241029L, -5308435179605422743L, 8867066654239607883L, 3931205085520972347L, 4294328521615317824L}).toString());
            return;
        }
        WeakHashMap weakHashMap = zza;
        if (weakHashMap.get(view) != null) {
            zzcec.zzg(new ObfuscatedString(new long[]{-6475403783509047442L, 6927463172925016837L, -5538383786003007211L, -8049496405180838681L, -2927813769548461127L, -1639246296072190981L, 9183375676283977965L, 2806571010506660441L, -4166172637715678049L, -235950368265505015L, -1158988140532901573L}).toString());
            return;
        }
        weakHashMap.put(view, this);
        this.zzc = new WeakReference(view);
        this.zzb = zzay.zza().zzi(view, zza(map), zza(map2));
    }

    private static final HashMap zza(Map map) {
        if (map == null) {
            return new HashMap();
        }
        return new HashMap(map);
    }

    public final void setClickConfirmingView(@NonNull View view) {
        try {
            this.zzb.zzb(ObjectWrapper.wrap(view));
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-5133683919641645973L, 4680896908012130388L, -9031043399016160953L, -3808738956198379287L, -5806033281160328215L, 5780553737602591893L, 1656561945808605052L, -4040682440088257133L}).toString(), e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [com.google.android.gms.dynamic.IObjectWrapper, java.lang.Object] */
    public void setNativeAd(@NonNull NativeAd nativeAd) {
        View view;
        ?? zza2 = nativeAd.zza();
        WeakReference weakReference = this.zzc;
        if (weakReference != null) {
            view = (View) weakReference.get();
        } else {
            view = null;
        }
        if (view == null) {
            zzcec.zzj(new ObfuscatedString(new long[]{5460108972696083861L, -8026941024215125561L, 6329034925755276173L, -2753227701922967548L, 2862795416203845939L, 7703226423220590075L, 8230420677961137863L, -2384061439845680715L, 9190478817338642973L, -3982021719892101377L}).toString());
            return;
        }
        WeakHashMap weakHashMap = zza;
        if (!weakHashMap.containsKey(view)) {
            weakHashMap.put(view, this);
        }
        zzbjw zzbjwVar = this.zzb;
        if (zzbjwVar != 0) {
            try {
                zzbjwVar.zzc(zza2);
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{1843702834791945612L, -2854870652620865070L, 5226385333426657180L, -3487204907236000919L, 3861377893149530899L, -2654747867863616723L}).toString(), e);
            }
        }
    }

    public void unregisterNativeAd() {
        View view;
        zzbjw zzbjwVar = this.zzb;
        if (zzbjwVar != null) {
            try {
                zzbjwVar.zzd();
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{2046087248168371560L, -5029290949379762201L, -4303872124462107999L, 4919720391783056225L, -4437018304689607681L, -9151494949981955470L, -4833906736419459625L}).toString(), e);
            }
        }
        WeakReference weakReference = this.zzc;
        if (weakReference != null) {
            view = (View) weakReference.get();
        } else {
            view = null;
        }
        if (view != null) {
            zza.remove(view);
        }
    }
}
