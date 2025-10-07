package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.io.InputStream;
import java.util.concurrent.ExecutionException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzecq {
    private final zzgey zza;
    private final zzebw zzb;
    private final zzhgx zzc;
    private final zzfnc zzd;
    private final Context zze;
    private final zzcei zzf;

    public zzecq(zzgey zzgeyVar, zzebw zzebwVar, zzhgx zzhgxVar, zzfnc zzfncVar, Context context, zzcei zzceiVar) {
        this.zza = zzgeyVar;
        this.zzb = zzebwVar;
        this.zzc = zzhgxVar;
        this.zzd = zzfncVar;
        this.zze = context;
        this.zzf = zzceiVar;
    }

    private final ListenableFuture zzh(final zzbze zzbzeVar, zzecp zzecpVar, final zzecp zzecpVar2, final zzgdu zzgduVar) {
        ListenableFuture zzf;
        String str = zzbzeVar.zzd;
        com.google.android.gms.ads.internal.zzt.zzp();
        if (com.google.android.gms.ads.internal.util.zzt.zzB(str)) {
            zzf = zzgen.zzg(new zzecf(1));
        } else {
            zzf = zzgen.zzf(zzecpVar.zza(zzbzeVar), ExecutionException.class, new zzgdu() { // from class: com.google.android.gms.internal.ads.zzeco
                @Override // com.google.android.gms.internal.ads.zzgdu
                public final ListenableFuture zza(Object obj) {
                    Throwable th = (ExecutionException) obj;
                    if (th.getCause() != null) {
                        th = th.getCause();
                    }
                    return zzgen.zzg(th);
                }
            }, this.zza);
        }
        return zzgen.zzf(zzgen.zzn(zzgee.zzu(zzf), zzgduVar, this.zza), zzecf.class, new zzgdu() { // from class: com.google.android.gms.internal.ads.zzecn
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                return zzecq.this.zzc(zzecpVar2, zzbzeVar, zzgduVar, (zzecf) obj);
            }
        }, this.zza);
    }

    public final ListenableFuture zza(final zzbze zzbzeVar) {
        zzgdu zzgduVar = new zzgdu() { // from class: com.google.android.gms.internal.ads.zzeck
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                String str = new String(zzgci.zzb((InputStream) obj), zzfwq.zzc);
                zzbze zzbzeVar2 = zzbze.this;
                zzbzeVar2.zzj = str;
                return zzgen.zzh(zzbzeVar2);
            }
        };
        final zzebw zzebwVar = this.zzb;
        Objects.requireNonNull(zzebwVar);
        return zzh(zzbzeVar, new zzecp() { // from class: com.google.android.gms.internal.ads.zzecl
            @Override // com.google.android.gms.internal.ads.zzecp
            public final ListenableFuture zza(zzbze zzbzeVar2) {
                return zzebw.this.zzb(zzbzeVar2);
            }
        }, new zzecp() { // from class: com.google.android.gms.internal.ads.zzecm
            @Override // com.google.android.gms.internal.ads.zzecp
            public final ListenableFuture zza(zzbze zzbzeVar2) {
                return zzecq.this.zzd(zzbzeVar2);
            }
        }, zzgduVar);
    }

    public final ListenableFuture zzb(JSONObject jSONObject) {
        return zzgen.zzn(zzgee.zzu(zzgen.zzh(jSONObject)), com.google.android.gms.ads.internal.zzt.zzf().zza(this.zze, this.zzf, this.zzd).zza(new ObfuscatedString(new long[]{-3316678146881590257L, -1326296805948435523L, 2702003844894055007L, -7630139355787974374L}).toString(), zzbru.zza, new zzbrp() { // from class: com.google.android.gms.internal.ads.zzecg
            @Override // com.google.android.gms.internal.ads.zzbrp
            public final Object zza(JSONObject jSONObject2) {
                return new zzbzh(jSONObject2);
            }
        }), this.zza);
    }

    public final /* synthetic */ ListenableFuture zzc(zzecp zzecpVar, zzbze zzbzeVar, zzgdu zzgduVar, zzecf zzecfVar) {
        return zzgen.zzn(zzecpVar.zza(zzbzeVar), zzgduVar, this.zza);
    }

    public final /* synthetic */ ListenableFuture zzd(zzbze zzbzeVar) {
        return ((zzeem) this.zzc.zzb()).zzb(zzbzeVar, Binder.getCallingUid());
    }

    public final /* synthetic */ ListenableFuture zze(zzbze zzbzeVar) {
        return this.zzb.zzc(zzbzeVar.zzh);
    }

    public final /* synthetic */ ListenableFuture zzf(zzbze zzbzeVar) {
        return ((zzeem) this.zzc.zzb()).zzi(zzbzeVar.zzh);
    }

    public final ListenableFuture zzg(zzbze zzbzeVar) {
        return zzh(zzbzeVar, new zzecp() { // from class: com.google.android.gms.internal.ads.zzeci
            @Override // com.google.android.gms.internal.ads.zzecp
            public final ListenableFuture zza(zzbze zzbzeVar2) {
                return zzecq.this.zze(zzbzeVar2);
            }
        }, new zzecp() { // from class: com.google.android.gms.internal.ads.zzecj
            @Override // com.google.android.gms.internal.ads.zzecp
            public final ListenableFuture zza(zzbze zzbzeVar2) {
                return zzecq.this.zzf(zzbzeVar2);
            }
        }, new zzgdu() { // from class: com.google.android.gms.internal.ads.zzech
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                return zzgen.zzh(null);
            }
        });
    }
}
