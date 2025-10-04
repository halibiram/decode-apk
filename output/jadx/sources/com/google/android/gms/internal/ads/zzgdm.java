package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class zzgdm extends zzgds {
    private static final zzgex zza = new zzgex(zzgdm.class);

    @CheckForNull
    private zzfzv zzb;
    private final boolean zzc;
    private final boolean zzf;

    public zzgdm(zzfzv zzfzvVar, boolean z, boolean z2) {
        super(zzfzvVar.size());
        this.zzb = zzfzvVar;
        this.zzc = z;
        this.zzf = z2;
    }

    private final void zzG(int i, Future future) {
        try {
            zzf(i, zzgen.zzp(future));
        } catch (ExecutionException e) {
            zzI(e.getCause());
        } catch (Throwable th) {
            zzI(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzH, reason: merged with bridge method [inline-methods] */
    public final void zzx(@CheckForNull zzfzv zzfzvVar) {
        boolean z;
        int zzA = zzA();
        int i = 0;
        if (zzA >= 0) {
            z = true;
        } else {
            z = false;
        }
        zzfxe.zzj(z, new ObfuscatedString(new long[]{-6539385370495023908L, -4717380505479787921L, -2683371200069318013L, 108764663829957300L, -138452573684825613L}).toString());
        if (zzA == 0) {
            if (zzfzvVar != null) {
                zzgce it = zzfzvVar.iterator();
                while (it.hasNext()) {
                    Future future = (Future) it.next();
                    if (!future.isCancelled()) {
                        zzG(i, future);
                    }
                    i++;
                }
            }
            zzF();
            zzu();
            zzy(2);
        }
    }

    private final void zzI(Throwable th) {
        th.getClass();
        if (this.zzc && !zzd(th) && zzK(zzC(), th)) {
            zzJ(th);
        } else if (th instanceof Error) {
            zzJ(th);
        }
    }

    private static void zzJ(Throwable th) {
        String obfuscatedString;
        if (true != (th instanceof Error)) {
            obfuscatedString = new ObfuscatedString(new long[]{4137449622341875423L, -3635578248388931522L, 2407024423697334461L, 7406733904373316793L, -6499399981256998171L, 6799932842480263545L, 5705073916024893304L, 2476608209442447920L, 7205984234560266844L, 952410044498374935L}).toString();
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{-2870825049405144515L, -3561483207289340675L, -8877236987167877087L, -2803545164737309820L, -7392276403856556990L}).toString();
        }
        zza.zza().logp(Level.SEVERE, new ObfuscatedString(new long[]{652757024855972521L, -6584406318325494129L, -5967988294346922468L, 4582863572981067447L, -8638433107279726551L, 2112304535097716480L, -2231035481787903991L, -6764984526246358350L}).toString(), new ObfuscatedString(new long[]{2520055207395746878L, -4152557072985397308L}).toString(), obfuscatedString, th);
    }

    private static boolean zzK(Set set, Throwable th) {
        while (th != null) {
            if (!set.add(th)) {
                return false;
            }
            th = th.getCause();
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzgdb
    @CheckForNull
    public final String zza() {
        zzfzv zzfzvVar = this.zzb;
        if (zzfzvVar != null) {
            return new ObfuscatedString(new long[]{-7673711902597145107L, -4473886370062206793L}).toString().concat(zzfzvVar.toString());
        }
        return super.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzgdb
    public final void zzb() {
        zzfzv zzfzvVar = this.zzb;
        boolean z = true;
        zzy(1);
        boolean isCancelled = isCancelled();
        if (zzfzvVar == null) {
            z = false;
        }
        if (z & isCancelled) {
            boolean zzt = zzt();
            zzgce it = zzfzvVar.iterator();
            while (it.hasNext()) {
                ((Future) it.next()).cancel(zzt);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgds
    public final void zze(Set set) {
        set.getClass();
        if (!isCancelled()) {
            Throwable zzl = zzl();
            Objects.requireNonNull(zzl);
            zzK(set, zzl);
        }
    }

    public abstract void zzf(int i, Object obj);

    public abstract void zzu();

    public final void zzv() {
        final zzfzv zzfzvVar;
        Objects.requireNonNull(this.zzb);
        if (this.zzb.isEmpty()) {
            zzu();
            return;
        }
        if (this.zzc) {
            zzgce it = this.zzb.iterator();
            final int i = 0;
            while (it.hasNext()) {
                final ListenableFuture listenableFuture = (ListenableFuture) it.next();
                listenableFuture.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzgdk
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzgdm.this.zzw(listenableFuture, i);
                    }
                }, zzgeb.zza);
                i++;
            }
            return;
        }
        if (this.zzf) {
            zzfzvVar = this.zzb;
        } else {
            zzfzvVar = null;
        }
        Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzgdl
            @Override // java.lang.Runnable
            public final void run() {
                zzgdm.this.zzx(zzfzvVar);
            }
        };
        zzgce it2 = this.zzb.iterator();
        while (it2.hasNext()) {
            ((ListenableFuture) it2.next()).addListener(runnable, zzgeb.zza);
        }
    }

    public final /* synthetic */ void zzw(ListenableFuture listenableFuture, int i) {
        try {
            if (listenableFuture.isCancelled()) {
                this.zzb = null;
                cancel(false);
            } else {
                zzG(i, listenableFuture);
            }
            zzx(null);
        } catch (Throwable th) {
            zzx(null);
            throw th;
        }
    }

    public void zzy(int i) {
        this.zzb = null;
    }
}
