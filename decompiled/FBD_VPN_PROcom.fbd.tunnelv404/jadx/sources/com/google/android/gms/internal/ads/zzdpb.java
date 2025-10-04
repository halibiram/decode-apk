package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@ParametersAreNonnullByDefault
/* loaded from: classes2.dex */
public final class zzdpb implements zzdni {

    @Nullable
    private final zzbtk zza;
    private final zzdbp zzb;
    private final zzdav zzc;
    private final zzdis zzd;
    private final Context zze;
    private final zzfgm zzf;
    private final zzcei zzg;
    private final zzfhh zzh;
    private boolean zzi = false;
    private boolean zzj = false;
    private boolean zzk = true;

    @Nullable
    private final zzbtg zzl;

    @Nullable
    private final zzbth zzm;

    public zzdpb(@Nullable zzbtg zzbtgVar, @Nullable zzbth zzbthVar, @Nullable zzbtk zzbtkVar, zzdbp zzdbpVar, zzdav zzdavVar, zzdis zzdisVar, Context context, zzfgm zzfgmVar, zzcei zzceiVar, zzfhh zzfhhVar) {
        this.zzl = zzbtgVar;
        this.zzm = zzbthVar;
        this.zza = zzbtkVar;
        this.zzb = zzdbpVar;
        this.zzc = zzdavVar;
        this.zzd = zzdisVar;
        this.zze = context;
        this.zzf = zzfgmVar;
        this.zzg = zzceiVar;
        this.zzh = zzfhhVar;
    }

    private final void zzb(View view) {
        try {
            zzbtk zzbtkVar = this.zza;
            if (zzbtkVar != null && !zzbtkVar.zzA()) {
                this.zza.zzw(ObjectWrapper.wrap(view));
                this.zzc.onAdClicked();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkm)).booleanValue()) {
                    this.zzd.zzs();
                    return;
                }
                return;
            }
            zzbtg zzbtgVar = this.zzl;
            if (zzbtgVar != null && !zzbtgVar.zzx()) {
                this.zzl.zzs(ObjectWrapper.wrap(view));
                this.zzc.onAdClicked();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkm)).booleanValue()) {
                    this.zzd.zzs();
                    return;
                }
                return;
            }
            zzbth zzbthVar = this.zzm;
            if (zzbthVar != null && !zzbthVar.zzv()) {
                this.zzm.zzq(ObjectWrapper.wrap(view));
                this.zzc.onAdClicked();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkm)).booleanValue()) {
                    this.zzd.zzs();
                }
            }
        } catch (RemoteException e) {
            zzcec.zzk(new ObfuscatedString(new long[]{1389101959815663594L, -7592178070589085874L, -8675015117592625161L, 120711599732773749L, -2671096562794660795L}).toString(), e);
        }
    }

    private static final HashMap zzc(Map map) {
        HashMap hashMap = new HashMap();
        if (map != null) {
            synchronized (map) {
                try {
                    for (Map.Entry entry : map.entrySet()) {
                        View view = (View) ((WeakReference) entry.getValue()).get();
                        if (view != null) {
                            hashMap.put((String) entry.getKey(), view);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return hashMap;
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final boolean zzA() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final boolean zzB() {
        return this.zzf.zzM;
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final boolean zzC(Bundle bundle) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final int zza() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    @Nullable
    public final JSONObject zze(View view, Map map, Map map2, @Nullable ImageView.ScaleType scaleType) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    @Nullable
    public final JSONObject zzf(View view, Map map, Map map2, @Nullable ImageView.ScaleType scaleType) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzg() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzh() {
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzi() {
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzj(@Nullable com.google.android.gms.ads.internal.client.zzcw zzcwVar) {
        zzcec.zzj(new ObfuscatedString(new long[]{-5406238767763191426L, -2215321312208136L, 766342199618055952L, 5727605091612878249L, 646547737940468575L, -1147542204718898339L, 7618359168062460584L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzk(View view, @Nullable View view2, @Nullable Map map, @Nullable Map map2, boolean z, @Nullable ImageView.ScaleType scaleType) {
        if (this.zzj && this.zzf.zzM) {
            return;
        }
        zzb(view);
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzl(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzm(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzo(View view, View view2, Map map, Map map2, boolean z, @Nullable ImageView.ScaleType scaleType, int i) {
        if (!this.zzj) {
            zzcec.zzj(new ObfuscatedString(new long[]{-8319319210632255874L, 2836908269981810262L, 5561431788272091158L, -4474069079697410079L, 1193930029887389591L, -6657365616156802234L, -6794097449413835142L, -9218155331824547977L, 8687613382049710230L, 6995359170097708428L, 106999135502281345L}).toString());
        } else if (!this.zzf.zzM) {
            zzcec.zzj(new ObfuscatedString(new long[]{1466786708852359609L, -1106031647422054861L, -2931745895579473233L, 4271191811680359693L, 87016782322090603L, 1510140171536170969L, -8605137397198106172L, -1146261916492817347L, -4051644133749410097L, 495180400657979651L}).toString());
        } else {
            zzb(view2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzp() {
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzq(@Nullable View view, @Nullable Map map, @Nullable Map map2, @Nullable ImageView.ScaleType scaleType) {
        try {
            if (!this.zzi) {
                this.zzi = com.google.android.gms.ads.internal.zzt.zzs().zzn(this.zze, this.zzg.zza, this.zzf.zzD.toString(), this.zzh.zzf);
            }
            if (this.zzk) {
                zzbtk zzbtkVar = this.zza;
                if (zzbtkVar != null && !zzbtkVar.zzB()) {
                    this.zza.zzx();
                    this.zzb.zza();
                    return;
                }
                zzbtg zzbtgVar = this.zzl;
                if (zzbtgVar != null && !zzbtgVar.zzy()) {
                    this.zzl.zzt();
                    this.zzb.zza();
                    return;
                }
                zzbth zzbthVar = this.zzm;
                if (zzbthVar != null && !zzbthVar.zzw()) {
                    this.zzm.zzr();
                    this.zzb.zza();
                }
            }
        } catch (RemoteException e) {
            zzcec.zzk(new ObfuscatedString(new long[]{6184084227954380423L, -4362772309216114771L, -5480350338526580121L, 777325384131556527L, 8463117472232447971L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzr() {
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzs(View view, MotionEvent motionEvent, @Nullable View view2) {
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzt(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzu(View view) {
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzv() {
        this.zzj = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzw(com.google.android.gms.ads.internal.client.zzcs zzcsVar) {
        zzcec.zzj(new ObfuscatedString(new long[]{6659567771528612648L, 7085456267628834610L, 8197996838590397885L, -2658413022364827675L, -6692270944741454319L, -7828367096032901665L, -7066174659689603832L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzx(zzblg zzblgVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzy(View view, @Nullable Map map, @Nullable Map map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        Map map3;
        Map map4;
        Object obj;
        IObjectWrapper zzn;
        try {
            IObjectWrapper wrap = ObjectWrapper.wrap(view);
            JSONObject jSONObject = this.zzf.zzak;
            boolean z = true;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbx)).booleanValue() && jSONObject.length() != 0) {
                if (map == null) {
                    map3 = new HashMap();
                } else {
                    map3 = map;
                }
                if (map2 == null) {
                    map4 = new HashMap();
                } else {
                    map4 = map2;
                }
                HashMap hashMap = new HashMap();
                hashMap.putAll(map3);
                hashMap.putAll(map4);
                Iterator<String> keys = jSONObject.keys();
                loop0: while (keys.hasNext()) {
                    String next = keys.next();
                    JSONArray optJSONArray = jSONObject.optJSONArray(next);
                    if (optJSONArray != null) {
                        WeakReference weakReference = (WeakReference) hashMap.get(next);
                        if (weakReference != null && (obj = weakReference.get()) != null) {
                            Class<?> cls = obj.getClass();
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzby)).booleanValue() && next.equals(new ObfuscatedString(new long[]{4202544286029216998L, 8301793035346754667L}).toString())) {
                                zzbtk zzbtkVar = this.zza;
                                Object obj2 = null;
                                if (zzbtkVar != null) {
                                    try {
                                        zzn = zzbtkVar.zzn();
                                    } catch (RemoteException | IllegalArgumentException unused) {
                                    }
                                } else {
                                    zzbtg zzbtgVar = this.zzl;
                                    if (zzbtgVar != null) {
                                        zzn = zzbtgVar.zzk();
                                    } else {
                                        zzbth zzbthVar = this.zzm;
                                        if (zzbthVar != null) {
                                            zzn = zzbthVar.zzj();
                                        } else {
                                            zzn = null;
                                        }
                                    }
                                }
                                if (zzn != null) {
                                    obj2 = ObjectWrapper.unwrap(zzn);
                                }
                                if (obj2 != null) {
                                    cls = obj2.getClass();
                                }
                            }
                            try {
                                ArrayList arrayList = new ArrayList();
                                com.google.android.gms.ads.internal.util.zzbw.zzc(optJSONArray, arrayList);
                                com.google.android.gms.ads.internal.zzt.zzp();
                                ClassLoader classLoader = this.zze.getClassLoader();
                                Iterator it = arrayList.iterator();
                                while (it.hasNext()) {
                                    if (Class.forName((String) it.next(), false, classLoader).isAssignableFrom(cls)) {
                                        break;
                                    }
                                }
                            } catch (JSONException unused2) {
                                continue;
                            }
                        }
                        z = false;
                        break;
                    }
                }
            }
            this.zzk = z;
            HashMap zzc = zzc(map);
            HashMap zzc2 = zzc(map2);
            zzbtk zzbtkVar2 = this.zza;
            if (zzbtkVar2 != null) {
                zzbtkVar2.zzy(wrap, ObjectWrapper.wrap(zzc), ObjectWrapper.wrap(zzc2));
                return;
            }
            zzbtg zzbtgVar2 = this.zzl;
            if (zzbtgVar2 != null) {
                zzbtgVar2.zzv(wrap, ObjectWrapper.wrap(zzc), ObjectWrapper.wrap(zzc2));
                this.zzl.zzu(wrap);
                return;
            }
            zzbth zzbthVar2 = this.zzm;
            if (zzbthVar2 != null) {
                zzbthVar2.zzt(wrap, ObjectWrapper.wrap(zzc), ObjectWrapper.wrap(zzc2));
                this.zzm.zzs(wrap);
            }
        } catch (RemoteException e) {
            zzcec.zzk(new ObfuscatedString(new long[]{1323001988457657954L, -8941744734914638678L, -4153669642084052931L, -1688023466839211558L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzz(View view, @Nullable Map map) {
        try {
            IObjectWrapper wrap = ObjectWrapper.wrap(view);
            zzbtk zzbtkVar = this.zza;
            if (zzbtkVar != null) {
                zzbtkVar.zzz(wrap);
                return;
            }
            zzbtg zzbtgVar = this.zzl;
            if (zzbtgVar != null) {
                zzbtgVar.zzw(wrap);
                return;
            }
            zzbth zzbthVar = this.zzm;
            if (zzbthVar != null) {
                zzbthVar.zzu(wrap);
            }
        } catch (RemoteException e) {
            zzcec.zzk(new ObfuscatedString(new long[]{8233273209677132008L, 4321629568218844567L, -3435405793342051081L, 7897855724539914535L, 2002279534364451975L}).toString(), e);
        }
    }
}
