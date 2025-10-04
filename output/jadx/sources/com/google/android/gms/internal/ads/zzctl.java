package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzctl implements zzayq {
    private zzcjk zza;
    private final Executor zzb;
    private final zzcsx zzc;
    private final Clock zzd;
    private boolean zze = false;
    private boolean zzf = false;
    private final zzcta zzg = new zzcta();

    public zzctl(Executor executor, zzcsx zzcsxVar, Clock clock) {
        this.zzb = executor;
        this.zzc = zzcsxVar;
        this.zzd = clock;
    }

    private final void zzg() {
        try {
            final JSONObject zzb = this.zzc.zzb(this.zzg);
            if (this.zza != null) {
                this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzctk
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzctl.this.zzd(zzb);
                    }
                });
            }
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.util.zze.zzb(new ObfuscatedString(new long[]{4230208011465209287L, -3841514458435103492L, -6318311552063348544L, -4724886526702176915L, 4530798286527968014L, 6133742651175132689L}).toString(), e);
        }
    }

    public final void zza() {
        this.zze = false;
    }

    public final void zzb() {
        this.zze = true;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzayq
    public final void zzby(zzayp zzaypVar) {
        boolean z;
        if (this.zzf) {
            z = false;
        } else {
            z = zzaypVar.zzj;
        }
        zzcta zzctaVar = this.zzg;
        zzctaVar.zza = z;
        zzctaVar.zzd = this.zzd.elapsedRealtime();
        this.zzg.zzf = zzaypVar;
        if (this.zze) {
            zzg();
        }
    }

    public final /* synthetic */ void zzd(JSONObject jSONObject) {
        this.zza.zzl(new ObfuscatedString(new long[]{6532611390252244488L, 2693220282577419354L, 5134731364414638188L, 4643042264482023245L}).toString(), jSONObject);
    }

    public final void zze(boolean z) {
        this.zzf = z;
    }

    public final void zzf(zzcjk zzcjkVar) {
        this.zza = zzcjkVar;
    }
}
