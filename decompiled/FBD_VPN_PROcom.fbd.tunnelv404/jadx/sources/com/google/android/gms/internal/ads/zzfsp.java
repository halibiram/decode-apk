package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import com.panda912.muddy.ObfuscatedString;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.security.GeneralSecurityException;
import java.util.HashMap;

/* loaded from: classes2.dex */
public final class zzfsp {
    private static final HashMap zza = new HashMap();
    private final Context zzb;
    private final zzfsq zzc;
    private final zzfqr zzd;
    private final zzfqm zze;

    @Nullable
    private zzfse zzf;
    private final Object zzg = new Object();

    public zzfsp(@NonNull Context context, @NonNull zzfsq zzfsqVar, @NonNull zzfqr zzfqrVar, @NonNull zzfqm zzfqmVar) {
        this.zzb = context;
        this.zzc = zzfsqVar;
        this.zzd = zzfqrVar;
        this.zze = zzfqmVar;
    }

    private final synchronized Class zzd(@NonNull zzfsf zzfsfVar) {
        try {
            String zzk = zzfsfVar.zza().zzk();
            HashMap hashMap = zza;
            Class cls = (Class) hashMap.get(zzk);
            if (cls != null) {
                return cls;
            }
            try {
                if (this.zze.zza(zzfsfVar.zzc())) {
                    try {
                        File zzb = zzfsfVar.zzb();
                        if (!zzb.exists()) {
                            zzb.mkdirs();
                        }
                        Class<?> loadClass = new DexClassLoader(zzfsfVar.zzc().getAbsolutePath(), zzb.getAbsolutePath(), null, this.zzb.getClassLoader()).loadClass(new ObfuscatedString(new long[]{5748980711283445059L, -1569427411974992659L, 4355728036291654285L, 4689184490834825168L, 7522529138333407250L, 4028268392955301937L, -4709104060122817703L}).toString());
                        hashMap.put(zzk, loadClass);
                        return loadClass;
                    } catch (ClassNotFoundException e) {
                        e = e;
                        throw new zzfso(2008, e);
                    } catch (IllegalArgumentException e2) {
                        e = e2;
                        throw new zzfso(2008, e);
                    } catch (SecurityException e3) {
                        e = e3;
                        throw new zzfso(2008, e);
                    }
                }
                throw new zzfso(2026, new ObfuscatedString(new long[]{309202431576454590L, -8891026698027842782L, -2178209762522262644L, 1447032843655378907L, 6564673006548413795L, -4309487932929698546L}).toString());
            } catch (GeneralSecurityException e4) {
                throw new zzfso(2026, e4);
            }
        } finally {
        }
    }

    @Nullable
    public final zzfqu zza() {
        zzfse zzfseVar;
        synchronized (this.zzg) {
            zzfseVar = this.zzf;
        }
        return zzfseVar;
    }

    @Nullable
    public final zzfsf zzb() {
        synchronized (this.zzg) {
            try {
                zzfse zzfseVar = this.zzf;
                if (zzfseVar != null) {
                    return zzfseVar.zzf();
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzc(@NonNull zzfsf zzfsfVar) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            try {
                zzfse zzfseVar = new zzfse(zzd(zzfsfVar).getDeclaredConstructor(Context.class, String.class, byte[].class, Object.class, Bundle.class, Integer.TYPE).newInstance(this.zzb, new ObfuscatedString(new long[]{-5302342718519431946L, -6529761755418786895L}).toString(), zzfsfVar.zze(), null, new Bundle(), 2), zzfsfVar, this.zzc, this.zzd);
                if (zzfseVar.zzh()) {
                    int zze = zzfseVar.zze();
                    if (zze == 0) {
                        synchronized (this.zzg) {
                            zzfse zzfseVar2 = this.zzf;
                            if (zzfseVar2 != null) {
                                try {
                                    zzfseVar2.zzg();
                                } catch (zzfso e) {
                                    this.zzd.zzc(e.zza(), -1L, e);
                                }
                            }
                            this.zzf = zzfseVar;
                        }
                        this.zzd.zzd(PathInterpolatorCompat.MAX_NUM_POINTS, System.currentTimeMillis() - currentTimeMillis);
                        return true;
                    }
                    throw new zzfso(4001, new ObfuscatedString(new long[]{-3114970065389630530L, -7325167243097296604L}).toString() + zze);
                }
                throw new zzfso(4000, new ObfuscatedString(new long[]{8084663347985570067L, -6585685087494946613L, 6728371396931870156L}).toString());
            } catch (Exception e2) {
                throw new zzfso(2004, e2);
            }
        } catch (zzfso e3) {
            this.zzd.zzc(e3.zza(), System.currentTimeMillis() - currentTimeMillis, e3);
            return false;
        } catch (Exception e4) {
            this.zzd.zzc(4010, System.currentTimeMillis() - currentTimeMillis, e4);
            return false;
        }
    }
}
