package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import com.panda912.muddy.ObfuscatedString;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzdou {
    private final zzdtk zza;
    private final zzdrz zzb;
    private ViewTreeObserver.OnScrollChangedListener zzc = null;

    public zzdou(zzdtk zzdtkVar, zzdrz zzdrzVar) {
        this.zza = zzdtkVar;
        this.zzb = zzdrzVar;
    }

    private static final int zzf(Context context, String str, int i) {
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException unused) {
        }
        com.google.android.gms.ads.internal.client.zzay.zzb();
        return zzcdv.zzx(context, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final View zza(@NonNull final View view, @NonNull final WindowManager windowManager) {
        zzcjk zza = this.zza.zza(com.google.android.gms.ads.internal.client.zzq.zzc(), null, null);
        View view2 = (View) zza;
        view2.setVisibility(4);
        view2.setContentDescription(new ObfuscatedString(new long[]{3717953599637778165L, -563176660583244598L, -3603753106652755116L}).toString());
        zza.zzae(new ObfuscatedString(new long[]{3562304622392092923L, 2455303752587176451L, -7611249667540295453L, -3031834838407690896L}).toString(), new zzbng() { // from class: com.google.android.gms.internal.ads.zzdoo
            @Override // com.google.android.gms.internal.ads.zzbng
            public final void zza(Object obj, Map map) {
                zzdou.this.zzb((zzcjk) obj, map);
            }
        });
        zza.zzae(new ObfuscatedString(new long[]{-2315108019520255943L, 6211917920764090273L, 1172996267725202850L, -3491467958758871219L}).toString(), new zzbng() { // from class: com.google.android.gms.internal.ads.zzdop
            @Override // com.google.android.gms.internal.ads.zzbng
            public final void zza(Object obj, Map map) {
                zzdou.this.zzc(windowManager, view, (zzcjk) obj, map);
            }
        });
        zza.zzae(new ObfuscatedString(new long[]{880803214661990923L, 2143335147410676020L}).toString(), new zzbnr(null, null, null, null, null, null));
        this.zzb.zzj(new WeakReference(zza), new ObfuscatedString(new long[]{-6086253395356068832L, -5680117347909735596L, -3107785981021934651L, -332172158692263618L, -3196309012250915807L}).toString(), new zzbng() { // from class: com.google.android.gms.internal.ads.zzdoq
            @Override // com.google.android.gms.internal.ads.zzbng
            public final void zza(Object obj, Map map) {
                zzdou.this.zze(view, windowManager, (zzcjk) obj, map);
            }
        });
        this.zzb.zzj(new WeakReference(zza), new ObfuscatedString(new long[]{-8050975188919868852L, -3574363915189676402L, -1613194353973729326L, 6021131740467131863L}).toString(), new zzbng() { // from class: com.google.android.gms.internal.ads.zzdor
            @Override // com.google.android.gms.internal.ads.zzbng
            public final void zza(Object obj, Map map) {
                zzcec.zze(new ObfuscatedString(new long[]{-2480262703091098065L, -8547672004858879538L, 8962622754739109822L, -8815436445708309114L, 3215901704900525887L, 7038259560893872408L}).toString());
                ((zzcjk) obj).zzF().setVisibility(0);
            }
        });
        return (View) zza;
    }

    public final /* synthetic */ void zzb(zzcjk zzcjkVar, Map map) {
        this.zzb.zzg(new ObfuscatedString(new long[]{-9038289361041479525L, 4545774308343517657L, 5074427805472150888L, 4740564883925676066L}).toString(), map);
    }

    public final /* synthetic */ void zzc(WindowManager windowManager, View view, zzcjk zzcjkVar, Map map) {
        zzcec.zze(new ObfuscatedString(new long[]{7334186600031168431L, 3651184995751766799L, -4076891875477468140L, -2359144686095700173L, 6288298741696090277L, 2774482963350124551L}).toString());
        zzcjkVar.zzF().setVisibility(8);
        if (zzcjkVar.zzF().getWindowToken() != null) {
            windowManager.removeView(zzcjkVar.zzF());
        }
        zzcjkVar.destroy();
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (this.zzc != null && viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnScrollChangedListener(this.zzc);
        }
    }

    public final /* synthetic */ void zzd(Map map, boolean z, int i, String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put(new ObfuscatedString(new long[]{-2989601639990639397L, -7598470866237276092L, 8071310349128712939L}).toString(), new ObfuscatedString(new long[]{6659121837397724447L, 6494842603735008699L, -5109278024539415628L, 6503367874611078363L}).toString());
        hashMap.put(new ObfuscatedString(new long[]{6378503748711506059L, -4348266424923012399L}).toString(), (String) map.get(new ObfuscatedString(new long[]{8691329043867907985L, -9108345920355256174L}).toString()));
        this.zzb.zzg(new ObfuscatedString(new long[]{8204273264798461585L, -7008422297050159047L, -270258242889296096L, -6323404200500663247L}).toString(), hashMap);
    }

    public final /* synthetic */ void zze(final View view, final WindowManager windowManager, final zzcjk zzcjkVar, final Map map) {
        int i;
        zzcjkVar.zzN().zzB(new zzckw() { // from class: com.google.android.gms.internal.ads.zzdot
            @Override // com.google.android.gms.internal.ads.zzckw
            public final void zza(boolean z, int i2, String str, String str2) {
                zzdou.this.zzd(map, z, i2, str, str2);
            }
        });
        if (map != null) {
            Context context = view.getContext();
            int zzf = zzf(context, (String) map.get(new ObfuscatedString(new long[]{4359353677290105598L, 3411063998115381970L, 2199608911614155777L}).toString()), ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzhV)).intValue());
            int zzf2 = zzf(context, (String) map.get(new ObfuscatedString(new long[]{-5636861843989642500L, 6386819242242585992L, 4789715468427891542L}).toString()), ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzhW)).intValue());
            int zzf3 = zzf(context, (String) map.get(new ObfuscatedString(new long[]{-7397919887979952L, 3144118639430327555L, -6054153938658740011L}).toString()), 0);
            int zzf4 = zzf(context, (String) map.get(new ObfuscatedString(new long[]{-5037594859696602889L, 7479126324097995677L, 2577650809555497944L}).toString()), 0);
            zzcjkVar.zzah(zzcla.zzb(zzf, zzf2));
            try {
                zzcjkVar.zzG().getSettings().setUseWideViewPort(((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzhX)).booleanValue());
                zzcjkVar.zzG().getSettings().setLoadWithOverviewMode(((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzhY)).booleanValue());
            } catch (NullPointerException unused) {
            }
            final WindowManager.LayoutParams zzb = com.google.android.gms.ads.internal.util.zzbz.zzb();
            zzb.x = zzf3;
            zzb.y = zzf4;
            windowManager.updateViewLayout(zzcjkVar.zzF(), zzb);
            final String str = (String) map.get(new ObfuscatedString(new long[]{-1310034073540125962L, -8069926368406095711L, 8557764384487341916L}).toString());
            Rect rect = new Rect();
            if (view.getGlobalVisibleRect(rect)) {
                if (!new ObfuscatedString(new long[]{-6286490696335653353L, 7071771728209656194L}).toString().equals(str) && !new ObfuscatedString(new long[]{5659402888773678480L, 4601540364542573834L}).toString().equals(str)) {
                    i = rect.top;
                } else {
                    i = rect.bottom;
                }
                final int i2 = i - zzf4;
                this.zzc = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.google.android.gms.internal.ads.zzdos
                    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                    public final void onScrollChanged() {
                        Rect rect2 = new Rect();
                        if (view.getGlobalVisibleRect(rect2)) {
                            zzcjk zzcjkVar2 = zzcjkVar;
                            if (zzcjkVar2.zzF().getWindowToken() != null) {
                                int i3 = i2;
                                WindowManager.LayoutParams layoutParams = zzb;
                                String str2 = str;
                                if (!new ObfuscatedString(new long[]{2112398703825295080L, 6233248925238947292L}).toString().equals(str2) && !new ObfuscatedString(new long[]{2970841280002922538L, -1499888908541843810L}).toString().equals(str2)) {
                                    layoutParams.y = rect2.top - i3;
                                } else {
                                    layoutParams.y = rect2.bottom - i3;
                                }
                                windowManager.updateViewLayout(zzcjkVar2.zzF(), layoutParams);
                            }
                        }
                    }
                };
                ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.addOnScrollChangedListener(this.zzc);
                }
            }
            String str2 = (String) map.get(new ObfuscatedString(new long[]{-8497368658433022060L, -3923780876671565742L, -424373508680100438L}).toString());
            if (!TextUtils.isEmpty(str2)) {
                zzcjkVar.loadUrl(str2);
            }
        }
    }
}
