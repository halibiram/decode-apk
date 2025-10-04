package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzdqu {
    private final Executor zza;
    private final zzctl zzb;
    private final zzdio zzc;

    public zzdqu(Executor executor, zzctl zzctlVar, zzdio zzdioVar) {
        this.zza = executor;
        this.zzc = zzdioVar;
        this.zzb = zzctlVar;
    }

    public final void zza(final zzcjk zzcjkVar) {
        if (zzcjkVar == null) {
            return;
        }
        this.zzc.zza(zzcjkVar.zzF());
        this.zzc.zzo(new zzayq() { // from class: com.google.android.gms.internal.ads.zzdqq
            @Override // com.google.android.gms.internal.ads.zzayq
            public final void zzby(zzayp zzaypVar) {
                zzcky zzN = zzcjk.this.zzN();
                Rect rect = zzaypVar.zzd;
                zzN.zzq(rect.left, rect.top, false);
            }
        }, this.zza);
        this.zzc.zzo(new zzayq() { // from class: com.google.android.gms.internal.ads.zzdqr
            @Override // com.google.android.gms.internal.ads.zzayq
            public final void zzby(zzayp zzaypVar) {
                String obfuscatedString;
                HashMap hashMap = new HashMap();
                if (true != zzaypVar.zzj) {
                    obfuscatedString = new ObfuscatedString(new long[]{-1978200094201341816L, -7561376812404422837L}).toString();
                } else {
                    obfuscatedString = new ObfuscatedString(new long[]{-1978462830336559952L, 1683928181970814904L}).toString();
                }
                hashMap.put(new ObfuscatedString(new long[]{3634466540824451491L, 2816208755595104913L, 3404510904107527729L}).toString(), obfuscatedString);
                zzcjk.this.zzd(new ObfuscatedString(new long[]{8170746486836094852L, 170252692754035952L, 3187696904810437846L, -2649038834270824554L}).toString(), hashMap);
            }
        }, this.zza);
        this.zzc.zzo(this.zzb, this.zza);
        this.zzb.zzf(zzcjkVar);
        zzcjkVar.zzae(new ObfuscatedString(new long[]{-2209652647970347980L, 8976555022624563372L, 177041132254918880L, -8079568499285469355L}).toString(), new zzbng() { // from class: com.google.android.gms.internal.ads.zzdqs
            @Override // com.google.android.gms.internal.ads.zzbng
            public final void zza(Object obj, Map map) {
                zzdqu.this.zzb((zzcjk) obj, map);
            }
        });
        zzcjkVar.zzae(new ObfuscatedString(new long[]{-2308987424477646973L, 6322173896464317968L, 7654562345913037642L, 4110375260005533497L}).toString(), new zzbng() { // from class: com.google.android.gms.internal.ads.zzdqt
            @Override // com.google.android.gms.internal.ads.zzbng
            public final void zza(Object obj, Map map) {
                zzdqu.this.zzc((zzcjk) obj, map);
            }
        });
    }

    public final /* synthetic */ void zzb(zzcjk zzcjkVar, Map map) {
        this.zzb.zzb();
    }

    public final /* synthetic */ void zzc(zzcjk zzcjkVar, Map map) {
        this.zzb.zza();
    }
}
