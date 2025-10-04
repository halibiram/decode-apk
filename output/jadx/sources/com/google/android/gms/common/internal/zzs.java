package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.lifecycle.CoroutineLiveDataKt;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzs extends GmsClientSupervisor {

    @GuardedBy("connectionStatus")
    private final HashMap zzb = new HashMap();
    private final Context zzc;
    private volatile Handler zzd;
    private final zzr zze;
    private final ConnectionTracker zzf;
    private final long zzg;
    private final long zzh;

    @Nullable
    private volatile Executor zzi;

    public zzs(Context context, Looper looper, @Nullable Executor executor) {
        zzr zzrVar = new zzr(this, null);
        this.zze = zzrVar;
        this.zzc = context.getApplicationContext();
        this.zzd = new com.google.android.gms.internal.common.zzi(looper, zzrVar);
        this.zzf = ConnectionTracker.getInstance();
        this.zzg = CoroutineLiveDataKt.DEFAULT_TIMEOUT;
        this.zzh = 300000L;
        this.zzi = executor;
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    public final void zza(zzo zzoVar, ServiceConnection serviceConnection, String str) {
        Preconditions.checkNotNull(serviceConnection, new ObfuscatedString(new long[]{-4254116383106177211L, -6288233957200511032L, -8503391860613371009L, -8848987153811006747L, 8724570371280516127L, 8603741531080899679L}).toString());
        synchronized (this.zzb) {
            try {
                zzp zzpVar = (zzp) this.zzb.get(zzoVar);
                if (zzpVar != null) {
                    if (zzpVar.zzh(serviceConnection)) {
                        zzpVar.zzf(serviceConnection, str);
                        if (zzpVar.zzi()) {
                            this.zzd.sendMessageDelayed(this.zzd.obtainMessage(0, zzoVar), this.zzg);
                        }
                    } else {
                        throw new IllegalStateException(new ObfuscatedString(new long[]{6147335538992596097L, -5116344466384522478L, 167998650163365038L, 2784618948322663355L, 1192129585409866306L, -7989588673154075423L, -5346122826661001506L, -8378420412382639720L, -281700839283465008L, 7294393866891659021L, -1933486267819046093L}).toString() + zzoVar.toString());
                    }
                } else {
                    throw new IllegalStateException(new ObfuscatedString(new long[]{-9092922616089139903L, 8555814390732243371L, -361077672244738766L, -6281859990065629010L, 2495517159474398756L, -1419916588830759946L, -3355028886575861082L, -3222067841181736317L}).toString() + zzoVar.toString());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    public final boolean zzc(zzo zzoVar, ServiceConnection serviceConnection, String str, @Nullable Executor executor) {
        boolean zzj;
        Preconditions.checkNotNull(serviceConnection, new ObfuscatedString(new long[]{-5922909438566731071L, -7573452804411565897L, 2159684070698155926L, 8041336407155652413L, -3365241754707338280L, 6540150546631485374L}).toString());
        synchronized (this.zzb) {
            try {
                zzp zzpVar = (zzp) this.zzb.get(zzoVar);
                if (executor == null) {
                    executor = this.zzi;
                }
                if (zzpVar == null) {
                    zzpVar = new zzp(this, zzoVar);
                    zzpVar.zzd(serviceConnection, serviceConnection, str);
                    zzpVar.zze(str, executor);
                    this.zzb.put(zzoVar, zzpVar);
                } else {
                    this.zzd.removeMessages(0, zzoVar);
                    if (!zzpVar.zzh(serviceConnection)) {
                        zzpVar.zzd(serviceConnection, serviceConnection, str);
                        int zza = zzpVar.zza();
                        if (zza != 1) {
                            if (zza == 2) {
                                zzpVar.zze(str, executor);
                            }
                        } else {
                            serviceConnection.onServiceConnected(zzpVar.zzb(), zzpVar.zzc());
                        }
                    } else {
                        throw new IllegalStateException(new ObfuscatedString(new long[]{-8949991402671690235L, 9003389548154205560L, 2279517663660264391L, 9053373636341562566L, 7869532249429128740L, -8618568941760820151L, -9122182280395590060L, 498195765967976970L, -6027257903080612717L, -6645626125573726510L, 4894791257815752718L, -233042423380059630L}).toString() + zzoVar.toString());
                    }
                }
                zzj = zzpVar.zzj();
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzj;
    }

    public final void zzi(@Nullable Executor executor) {
        synchronized (this.zzb) {
            this.zzi = executor;
        }
    }

    public final void zzj(Looper looper) {
        synchronized (this.zzb) {
            this.zzd = new com.google.android.gms.internal.common.zzi(looper, this.zze);
        }
    }
}
