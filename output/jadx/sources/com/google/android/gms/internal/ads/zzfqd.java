package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzfqd implements zzfpd {
    private static final zzfqd zza = new zzfqd();
    private static final Handler zzb = new Handler(Looper.getMainLooper());
    private static Handler zzc = null;
    private static final Runnable zzd = new zzfpz();
    private static final Runnable zze = new zzfqa();
    private int zzg;
    private long zzm;
    private final List zzf = new ArrayList();
    private boolean zzh = false;
    private final List zzi = new ArrayList();
    private final zzfpw zzk = new zzfpw();
    private final zzfpf zzj = new zzfpf();
    private final zzfpx zzl = new zzfpx(new zzfqg());

    public static zzfqd zzd() {
        return zza;
    }

    public static /* bridge */ /* synthetic */ void zzg(zzfqd zzfqdVar) {
        zzfqdVar.zzg = 0;
        zzfqdVar.zzi.clear();
        zzfqdVar.zzh = false;
        for (zzfoh zzfohVar : zzfov.zza().zzb()) {
        }
        zzfqdVar.zzm = System.nanoTime();
        zzfqdVar.zzk.zzi();
        long nanoTime = System.nanoTime();
        zzfpe zza2 = zzfqdVar.zzj.zza();
        if (zzfqdVar.zzk.zze().size() > 0) {
            Iterator it = zzfqdVar.zzk.zze().iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                JSONObject zza3 = zza2.zza(null);
                View zza4 = zzfqdVar.zzk.zza(str);
                zzfpe zzb2 = zzfqdVar.zzj.zzb();
                String zzc2 = zzfqdVar.zzk.zzc(str);
                if (zzc2 != null) {
                    JSONObject zza5 = zzb2.zza(zza4);
                    zzfpo.zzb(zza5, str);
                    try {
                        zza5.put(new ObfuscatedString(new long[]{8844189218721027345L, -4270896822887299021L, 6049730738937262567L}).toString(), zzc2);
                    } catch (JSONException e) {
                        zzfpp.zza(new ObfuscatedString(new long[]{-7379300189467497323L, 4186443541961007926L, -5629927833422742107L, -1079859270027897396L, 7561277219194458899L, 1736947631919669841L}).toString(), e);
                    }
                    zzfpo.zzc(zza3, zza5);
                }
                zzfpo.zzf(zza3);
                HashSet hashSet = new HashSet();
                hashSet.add(str);
                zzfqdVar.zzl.zzc(zza3, hashSet, nanoTime);
            }
        }
        if (zzfqdVar.zzk.zzf().size() > 0) {
            JSONObject zza6 = zza2.zza(null);
            zzfqdVar.zzk(null, zza2, zza6, 1, false);
            zzfpo.zzf(zza6);
            zzfqdVar.zzl.zzd(zza6, zzfqdVar.zzk.zzf(), nanoTime);
        } else {
            zzfqdVar.zzl.zzb();
        }
        zzfqdVar.zzk.zzg();
        long nanoTime2 = System.nanoTime() - zzfqdVar.zzm;
        if (zzfqdVar.zzf.size() > 0) {
            for (zzfqc zzfqcVar : zzfqdVar.zzf) {
                TimeUnit.NANOSECONDS.toMillis(nanoTime2);
                zzfqcVar.zzb();
                if (zzfqcVar instanceof zzfqb) {
                    ((zzfqb) zzfqcVar).zza();
                }
            }
        }
    }

    private final void zzk(View view, zzfpe zzfpeVar, JSONObject jSONObject, int i, boolean z) {
        boolean z2;
        if (i == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        zzfpeVar.zzb(view, jSONObject, this, z2, z);
    }

    private static final void zzl() {
        Handler handler = zzc;
        if (handler != null) {
            handler.removeCallbacks(zze);
            zzc = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfpd
    public final void zza(View view, zzfpe zzfpeVar, JSONObject jSONObject, boolean z) {
        int zzk;
        boolean z2;
        if (zzfpu.zza(view) == null && (zzk = this.zzk.zzk(view)) != 3) {
            JSONObject zza2 = zzfpeVar.zza(view);
            zzfpo.zzc(jSONObject, zza2);
            String zzd2 = this.zzk.zzd(view);
            if (zzd2 != null) {
                zzfpo.zzb(zza2, zzd2);
                try {
                    zza2.put(new ObfuscatedString(new long[]{-1587389510310352793L, 3608301703298103159L, -6388467717414436146L}).toString(), Boolean.valueOf(this.zzk.zzj(view)));
                } catch (JSONException e) {
                    zzfpp.zza(new ObfuscatedString(new long[]{-219153979224119018L, -8680640955074531075L, 5880401852475208135L, -6051834763774015826L, -9178291469780063767L, 5953160683418739464L}).toString(), e);
                }
                this.zzk.zzh();
            } else {
                zzfpv zzb2 = this.zzk.zzb(view);
                boolean z3 = false;
                if (zzb2 != null) {
                    zzfoy zza3 = zzb2.zza();
                    JSONArray jSONArray = new JSONArray();
                    ArrayList zzb3 = zzb2.zzb();
                    int size = zzb3.size();
                    for (int i = 0; i < size; i++) {
                        jSONArray.put((String) zzb3.get(i));
                    }
                    try {
                        zza2.put(new ObfuscatedString(new long[]{486110608860218270L, 1050618882142042793L, 8330904599942981269L, -8277669541658658345L}).toString(), jSONArray);
                        zza2.put(new ObfuscatedString(new long[]{-3250931381187651309L, 2796291299368810383L, 5489562680214776048L, 8374407597583214655L}).toString(), zza3.zzd());
                        zza2.put(new ObfuscatedString(new long[]{-8065793955954736525L, 6225796976409844887L, 3377174624655909954L, 3970813049750703493L, -554999114269613472L}).toString(), zza3.zza());
                        zza2.put(new ObfuscatedString(new long[]{6820937512169838474L, 1966005453864284755L, 5622840354033720457L, -5891611132058788664L, -7452946789124967158L}).toString(), zza3.zzc());
                    } catch (JSONException e2) {
                        zzfpp.zza(new ObfuscatedString(new long[]{-6339558627767744328L, -6256675196168513911L, -7362963276834016723L, -4193244140464594932L, 6425247078381744068L, -980563835768000366L}).toString(), e2);
                    }
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z || z2) {
                    z3 = true;
                }
                zzk(view, zzfpeVar, zza2, zzk, z3);
            }
            this.zzg++;
        }
    }

    public final void zzh() {
        zzl();
    }

    public final void zzi() {
        if (zzc == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            zzc = handler;
            handler.post(zzd);
            zzc.postDelayed(zze, 200L);
        }
    }

    public final void zzj() {
        zzl();
        this.zzf.clear();
        zzb.post(new zzfpy(this));
    }
}
