package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.Objects;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;
import sun.misc.Unsafe;

/* loaded from: classes2.dex */
public abstract class zzgdb<V> extends zzgfq implements ListenableFuture<V> {
    private static final Object zzaZ;
    private static final zza zzbc;
    static final boolean zzd;
    static final zzgex zze;

    @CheckForNull
    private volatile zzd listeners;

    @CheckForNull
    private volatile Object value;

    @CheckForNull
    private volatile zzk waiters;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public abstract class zza {
        public /* synthetic */ zza(zzgda zzgdaVar) {
        }

        public abstract zzd zza(zzgdb zzgdbVar, zzd zzdVar);

        public abstract zzk zzb(zzgdb zzgdbVar, zzk zzkVar);

        public abstract void zzc(zzk zzkVar, @CheckForNull zzk zzkVar2);

        public abstract void zzd(zzk zzkVar, Thread thread);

        public abstract boolean zze(zzgdb zzgdbVar, @CheckForNull zzd zzdVar, zzd zzdVar2);

        public abstract boolean zzf(zzgdb zzgdbVar, @CheckForNull Object obj, Object obj2);

        public abstract boolean zzg(zzgdb zzgdbVar, @CheckForNull zzk zzkVar, @CheckForNull zzk zzkVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public final class zzb {

        @CheckForNull
        static final zzb zza;

        @CheckForNull
        static final zzb zzb;
        final boolean zzc;

        @CheckForNull
        final Throwable zzd;

        static {
            if (zzgdb.zzd) {
                zzb = null;
                zza = null;
            } else {
                zzb = new zzb(false, null);
                zza = new zzb(true, null);
            }
        }

        public zzb(boolean z, @CheckForNull Throwable th) {
            this.zzc = z;
            this.zzd = th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public final class zzc {
        static final zzc zza = new zzc(new Throwable(new ObfuscatedString(new long[]{-5554987305189243051L, -6222085495338189992L, 3872945878558541152L, 1957815451824624974L, 5212406882622043723L, -7873593000456198694L, -4756331576371437774L, -6796636845561941706L}).toString()) { // from class: com.google.android.gms.internal.ads.zzgdb.zzc.1
            {
                super(new ObfuscatedString(new long[]{2490933326116777136L, 7195897356853508440L, 5753750122610661978L, 6204878243538723973L, -2188743680237434238L, -5607234879260289534L, 2945726590241907978L, -2016626023248518541L}).toString());
            }

            @Override // java.lang.Throwable
            public final synchronized Throwable fillInStackTrace() {
                return this;
            }
        });
        final Throwable zzb;

        public zzc(Throwable th) {
            th.getClass();
            this.zzb = th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public final class zzd {
        static final zzd zza = new zzd();

        @CheckForNull
        zzd next;

        @CheckForNull
        final Runnable zzb;

        @CheckForNull
        final Executor zzc;

        public zzd() {
            this.zzb = null;
            this.zzc = null;
        }

        public zzd(Runnable runnable, Executor executor) {
            this.zzb = runnable;
            this.zzc = executor;
        }
    }

    /* loaded from: classes2.dex */
    final class zze extends zza {
        final AtomicReferenceFieldUpdater<zzk, Thread> zza;
        final AtomicReferenceFieldUpdater<zzk, zzk> zzb;
        final AtomicReferenceFieldUpdater<zzgdb, zzk> zzc;
        final AtomicReferenceFieldUpdater<zzgdb, zzd> zzd;
        final AtomicReferenceFieldUpdater<zzgdb, Object> zze;

        public zze(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
            super(null);
            this.zza = atomicReferenceFieldUpdater;
            this.zzb = atomicReferenceFieldUpdater2;
            this.zzc = atomicReferenceFieldUpdater3;
            this.zzd = atomicReferenceFieldUpdater4;
            this.zze = atomicReferenceFieldUpdater5;
        }

        @Override // com.google.android.gms.internal.ads.zzgdb.zza
        public final zzd zza(zzgdb zzgdbVar, zzd zzdVar) {
            return this.zzd.getAndSet(zzgdbVar, zzdVar);
        }

        @Override // com.google.android.gms.internal.ads.zzgdb.zza
        public final zzk zzb(zzgdb zzgdbVar, zzk zzkVar) {
            return this.zzc.getAndSet(zzgdbVar, zzkVar);
        }

        @Override // com.google.android.gms.internal.ads.zzgdb.zza
        public final void zzc(zzk zzkVar, @CheckForNull zzk zzkVar2) {
            this.zzb.lazySet(zzkVar, zzkVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzgdb.zza
        public final void zzd(zzk zzkVar, Thread thread) {
            this.zza.lazySet(zzkVar, thread);
        }

        @Override // com.google.android.gms.internal.ads.zzgdb.zza
        public final boolean zze(zzgdb zzgdbVar, @CheckForNull zzd zzdVar, zzd zzdVar2) {
            return zzgdc.zza(this.zzd, zzgdbVar, zzdVar, zzdVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzgdb.zza
        public final boolean zzf(zzgdb zzgdbVar, @CheckForNull Object obj, Object obj2) {
            return zzgdc.zza(this.zze, zzgdbVar, obj, obj2);
        }

        @Override // com.google.android.gms.internal.ads.zzgdb.zza
        public final boolean zzg(zzgdb zzgdbVar, @CheckForNull zzk zzkVar, @CheckForNull zzk zzkVar2) {
            return zzgdc.zza(this.zzc, zzgdbVar, zzkVar, zzkVar2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public final class zzf<V> implements Runnable {
        final zzgdb<V> zza;
        final ListenableFuture<? extends V> zzb;

        public zzf(zzgdb zzgdbVar, ListenableFuture listenableFuture) {
            this.zza = zzgdbVar;
            this.zzb = listenableFuture;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (((zzgdb) this.zza).value == this) {
                ListenableFuture<? extends V> listenableFuture = this.zzb;
                if (zzgdb.zzbc.zzf(this.zza, this, zzgdb.zze(listenableFuture))) {
                    zzgdb.zzx(this.zza, false);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    final class zzg extends zza {
        public /* synthetic */ zzg(zzgdd zzgddVar) {
            super(null);
        }

        @Override // com.google.android.gms.internal.ads.zzgdb.zza
        public final zzd zza(zzgdb zzgdbVar, zzd zzdVar) {
            zzd zzdVar2;
            synchronized (zzgdbVar) {
                try {
                    zzdVar2 = zzgdbVar.listeners;
                    if (zzdVar2 != zzdVar) {
                        zzgdbVar.listeners = zzdVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return zzdVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzgdb.zza
        public final zzk zzb(zzgdb zzgdbVar, zzk zzkVar) {
            zzk zzkVar2;
            synchronized (zzgdbVar) {
                try {
                    zzkVar2 = zzgdbVar.waiters;
                    if (zzkVar2 != zzkVar) {
                        zzgdbVar.waiters = zzkVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return zzkVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzgdb.zza
        public final void zzc(zzk zzkVar, @CheckForNull zzk zzkVar2) {
            zzkVar.next = zzkVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzgdb.zza
        public final void zzd(zzk zzkVar, Thread thread) {
            zzkVar.thread = thread;
        }

        @Override // com.google.android.gms.internal.ads.zzgdb.zza
        public final boolean zze(zzgdb zzgdbVar, @CheckForNull zzd zzdVar, zzd zzdVar2) {
            synchronized (zzgdbVar) {
                try {
                    if (zzgdbVar.listeners == zzdVar) {
                        zzgdbVar.listeners = zzdVar2;
                        return true;
                    }
                    return false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.google.android.gms.internal.ads.zzgdb.zza
        public final boolean zzf(zzgdb zzgdbVar, @CheckForNull Object obj, Object obj2) {
            synchronized (zzgdbVar) {
                try {
                    if (zzgdbVar.value == obj) {
                        zzgdbVar.value = obj2;
                        return true;
                    }
                    return false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.google.android.gms.internal.ads.zzgdb.zza
        public final boolean zzg(zzgdb zzgdbVar, @CheckForNull zzk zzkVar, @CheckForNull zzk zzkVar2) {
            synchronized (zzgdbVar) {
                try {
                    if (zzgdbVar.waiters == zzkVar) {
                        zzgdbVar.waiters = zzkVar2;
                        return true;
                    }
                    return false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        private zzg() {
            super(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface zzh<V> extends ListenableFuture<V> {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public abstract class zzi<V> extends zzgdb<V> implements zzh<V> {
    }

    /* loaded from: classes2.dex */
    final class zzj extends zza {
        static final Unsafe zza;
        static final long zzb;
        static final long zzc;
        static final long zzd;
        static final long zze;
        static final long zzf;

        static {
            Unsafe unsafe;
            try {
                try {
                    unsafe = Unsafe.getUnsafe();
                } catch (SecurityException unused) {
                    unsafe = (Unsafe) AccessController.doPrivileged(new PrivilegedExceptionAction<Unsafe>() { // from class: com.google.android.gms.internal.ads.zzgdb.zzj.1
                        @Override // java.security.PrivilegedExceptionAction
                        public final /* bridge */ /* synthetic */ Unsafe run() {
                            for (Field field : Unsafe.class.getDeclaredFields()) {
                                field.setAccessible(true);
                                Object obj = field.get(null);
                                if (Unsafe.class.isInstance(obj)) {
                                    return (Unsafe) Unsafe.class.cast(obj);
                                }
                            }
                            throw new NoSuchFieldError(new ObfuscatedString(new long[]{-8895921357218355560L, -6438693026822010116L, 1147248589295965958L}).toString());
                        }
                    });
                }
                try {
                    zzc = unsafe.objectFieldOffset(zzgdb.class.getDeclaredField(new ObfuscatedString(new long[]{-4553540256836308996L, 5102285762856157172L}).toString()));
                    zzb = unsafe.objectFieldOffset(zzgdb.class.getDeclaredField(new ObfuscatedString(new long[]{-7577374028190741581L, 8620908262238270248L, -7353927565248039997L}).toString()));
                    zzd = unsafe.objectFieldOffset(zzgdb.class.getDeclaredField(new ObfuscatedString(new long[]{6774920870648906436L, -5043372989305220417L}).toString()));
                    zze = unsafe.objectFieldOffset(zzk.class.getDeclaredField(new ObfuscatedString(new long[]{6929008649980199169L, 1950236593608300421L}).toString()));
                    zzf = unsafe.objectFieldOffset(zzk.class.getDeclaredField(new ObfuscatedString(new long[]{-2740123607940943189L, 3555173668138298982L}).toString()));
                    zza = unsafe;
                } catch (NoSuchFieldException e) {
                    throw new RuntimeException(e);
                }
            } catch (PrivilegedActionException e2) {
                throw new RuntimeException(new ObfuscatedString(new long[]{-513397887058108215L, -9195188677495570153L, -189305632015590281L, -3325982636391168471L, -9065706999838965583L}).toString(), e2.getCause());
            }
        }

        public /* synthetic */ zzj(zzgdf zzgdfVar) {
            super(null);
        }

        @Override // com.google.android.gms.internal.ads.zzgdb.zza
        public final zzd zza(zzgdb zzgdbVar, zzd zzdVar) {
            zzd zzdVar2;
            do {
                zzdVar2 = zzgdbVar.listeners;
                if (zzdVar == zzdVar2) {
                    break;
                }
            } while (!zze(zzgdbVar, zzdVar2, zzdVar));
            return zzdVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzgdb.zza
        public final zzk zzb(zzgdb zzgdbVar, zzk zzkVar) {
            zzk zzkVar2;
            do {
                zzkVar2 = zzgdbVar.waiters;
                if (zzkVar == zzkVar2) {
                    break;
                }
            } while (!zzg(zzgdbVar, zzkVar2, zzkVar));
            return zzkVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzgdb.zza
        public final void zzc(zzk zzkVar, @CheckForNull zzk zzkVar2) {
            zza.putObject(zzkVar, zzf, zzkVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzgdb.zza
        public final void zzd(zzk zzkVar, Thread thread) {
            zza.putObject(zzkVar, zze, thread);
        }

        @Override // com.google.android.gms.internal.ads.zzgdb.zza
        public final boolean zze(zzgdb zzgdbVar, @CheckForNull zzd zzdVar, zzd zzdVar2) {
            return zzgde.zza(zza, zzgdbVar, zzb, zzdVar, zzdVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzgdb.zza
        public final boolean zzf(zzgdb zzgdbVar, @CheckForNull Object obj, Object obj2) {
            return zzgde.zza(zza, zzgdbVar, zzd, obj, obj2);
        }

        @Override // com.google.android.gms.internal.ads.zzgdb.zza
        public final boolean zzg(zzgdb zzgdbVar, @CheckForNull zzk zzkVar, @CheckForNull zzk zzkVar2) {
            return zzgde.zza(zza, zzgdbVar, zzc, zzkVar, zzkVar2);
        }

        private zzj() {
            super(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public final class zzk {
        static final zzk zza = new zzk(false);

        @CheckForNull
        volatile zzk next;

        @CheckForNull
        volatile Thread thread;

        public zzk(boolean z) {
        }

        public zzk() {
            zzgdb.zzbc.zzd(this, Thread.currentThread());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        boolean z;
        Throwable th;
        Throwable th2;
        zza zzgVar;
        try {
            z = Boolean.parseBoolean(System.getProperty(new ObfuscatedString(new long[]{-2028101064470363366L, 8982230778859762306L, 67163934829261316L, 4424431476834506231L, -845607040472048258L, -2107376962910516351L, 3202430038026386563L}).toString(), new ObfuscatedString(new long[]{5370683397172604393L, 5708541957749284669L}).toString()));
        } catch (SecurityException unused) {
            z = false;
        }
        zzd = z;
        zze = new zzgex(zzgdb.class);
        Object[] objArr = 0;
        try {
            zzgVar = new zzj(null);
            th2 = null;
            th = null;
        } catch (Error | Exception e) {
            try {
                th = null;
                th2 = e;
                zzgVar = new zze(AtomicReferenceFieldUpdater.newUpdater(zzk.class, Thread.class, new ObfuscatedString(new long[]{8831968416676999351L, 6062429879121205544L}).toString()), AtomicReferenceFieldUpdater.newUpdater(zzk.class, zzk.class, new ObfuscatedString(new long[]{9142071859005952779L, -6892953299597096777L}).toString()), AtomicReferenceFieldUpdater.newUpdater(zzgdb.class, zzk.class, new ObfuscatedString(new long[]{-3337214546853803731L, -5924708074622791006L}).toString()), AtomicReferenceFieldUpdater.newUpdater(zzgdb.class, zzd.class, new ObfuscatedString(new long[]{6473251824371098398L, 7811509260771628383L, 4885752096152052720L}).toString()), AtomicReferenceFieldUpdater.newUpdater(zzgdb.class, Object.class, new ObfuscatedString(new long[]{-4408481238172158594L, 1414482158593079147L}).toString()));
            } catch (Error | Exception e2) {
                th = e2;
                th2 = e;
                zzgVar = new zzg(objArr == true ? 1 : 0);
            }
        }
        zzbc = zzgVar;
        if (th != null) {
            zzgex zzgexVar = zze;
            Logger zza2 = zzgexVar.zza();
            Level level = Level.SEVERE;
            zza2.logp(level, new ObfuscatedString(new long[]{-7118523408831122057L, 5303697468431509261L, -5013327077457663994L, -8704711378143603646L, 2461046715018069829L, -4886305629369609929L, 5342738303837273090L}).toString(), new ObfuscatedString(new long[]{1097002031056680951L, -2259716297597437808L}).toString(), new ObfuscatedString(new long[]{-6670805553837685507L, 4346667949809853702L, -4251230494056841093L, -6032089332772002L, 4302173428318670295L}).toString(), th2);
            zzgexVar.zza().logp(level, new ObfuscatedString(new long[]{-8742102555795473678L, -6980445610790789457L, -6077864916206465749L, 1094886583084372528L, 1819605287049649405L, 4141005197589597359L, -5893699422733878940L}).toString(), new ObfuscatedString(new long[]{-2515017220982098244L, 4016006595873212490L}).toString(), new ObfuscatedString(new long[]{-8534472512845257909L, 7337373273859253991L, 6789281543497558854L, 1979177995093240479L, -4097329001824107856L}).toString(), th);
        }
        zzaZ = new Object();
    }

    private static final Object zzA(Object obj) {
        if (!(obj instanceof zzb)) {
            if (!(obj instanceof zzc)) {
                if (obj == zzaZ) {
                    return null;
                }
                return obj;
            }
            throw new ExecutionException(((zzc) obj).zzb);
        }
        Throwable th = ((zzb) obj).zzd;
        CancellationException cancellationException = new CancellationException(new ObfuscatedString(new long[]{-1238496954356808119L, -6630085136732961740L, -7808701237560592440L, -3069327912443017981L}).toString());
        cancellationException.initCause(th);
        throw cancellationException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static Object zze(ListenableFuture listenableFuture) {
        Throwable zzl;
        if (listenableFuture instanceof zzh) {
            Object obj = ((zzgdb) listenableFuture).value;
            if (obj instanceof zzb) {
                zzb zzbVar = (zzb) obj;
                if (zzbVar.zzc) {
                    Throwable th = zzbVar.zzd;
                    obj = th != null ? new zzb(false, th) : zzb.zzb;
                }
            }
            Objects.requireNonNull(obj);
            return obj;
        }
        if ((listenableFuture instanceof zzgfq) && (zzl = ((zzgfq) listenableFuture).zzl()) != null) {
            return new zzc(zzl);
        }
        boolean isCancelled = listenableFuture.isCancelled();
        if ((!zzd) & isCancelled) {
            zzb zzbVar2 = zzb.zzb;
            Objects.requireNonNull(zzbVar2);
            return zzbVar2;
        }
        try {
            Object zzf2 = zzf(listenableFuture);
            if (isCancelled) {
                return new zzb(false, new IllegalArgumentException(new ObfuscatedString(new long[]{2450819110811312844L, 2056209256411481134L, 7307800149665586594L, -9165459178248437717L, -3426059993080289388L, 3004587616644447076L, 7422176790400180365L, -8278921335061231770L, 2925013574598699884L, 2009064966296446664L, 671558148751077039L, 796105647018847977L}).toString() + String.valueOf(listenableFuture)));
            }
            if (zzf2 == null) {
                return zzaZ;
            }
            return zzf2;
        } catch (Error e) {
            e = e;
            return new zzc(e);
        } catch (CancellationException e2) {
            if (!isCancelled) {
                return new zzc(new IllegalArgumentException(new ObfuscatedString(new long[]{1237250939117963689L, -5376675366471071559L, 3441122912764615077L, 4672668463295404666L, -4207420889751371868L, 4792584217937309687L, 6448145544327804236L, 603346418078513761L, 8463159441603721623L, -38305377616112683L, 4654554590649813036L}).toString().concat(String.valueOf(listenableFuture)), e2));
            }
            return new zzb(false, e2);
        } catch (ExecutionException e3) {
            if (isCancelled) {
                return new zzb(false, new IllegalArgumentException(new ObfuscatedString(new long[]{4112120172276585495L, -871938911557555909L, 2528189234231754170L, -5192788619076409868L, -2935167178407401327L, -1470591511585724098L, 4507975718817742660L, 9196415554335516168L, 1729048512684389838L, -2331166027247062542L, -1259804353623228587L, -3521452946529290079L}).toString().concat(String.valueOf(listenableFuture)), e3));
            }
            return new zzc(e3.getCause());
        } catch (Exception e4) {
            e = e4;
            return new zzc(e);
        }
    }

    private static Object zzf(Future future) {
        Object obj;
        boolean z = false;
        while (true) {
            try {
                obj = future.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    private final void zzu(StringBuilder sb) {
        try {
            Object zzf2 = zzf(this);
            sb.append(new ObfuscatedString(new long[]{-3228970325336416898L, -31221855650354595L, -8486890996972706252L, -6323575466778812648L}).toString());
            if (zzf2 == null) {
                sb.append(new ObfuscatedString(new long[]{3390959083574058990L, -2429928857646867538L}).toString());
            } else if (zzf2 == this) {
                sb.append(new ObfuscatedString(new long[]{7106636430385663054L, -2768993448352682016L, -2175108483221103861L}).toString());
            } else {
                sb.append(zzf2.getClass().getName());
                sb.append(new ObfuscatedString(new long[]{-1585267070848178222L, 6469025454278106632L}).toString());
                sb.append(Integer.toHexString(System.identityHashCode(zzf2)));
            }
            sb.append(new ObfuscatedString(new long[]{3867577989373328427L, -8740713770196348069L}).toString());
        } catch (CancellationException unused) {
            sb.append(new ObfuscatedString(new long[]{461632925952852817L, -1506183457907413658L, -8578195175958136436L}).toString());
        } catch (ExecutionException e) {
            sb.append(new ObfuscatedString(new long[]{-4553986887514503312L, 7916442712968285678L, -8836348657995784502L}).toString());
            sb.append(e.getCause());
            sb.append(new ObfuscatedString(new long[]{-5066226154065463576L, 8392180172079124785L}).toString());
        } catch (Exception e2) {
            sb.append(new ObfuscatedString(new long[]{657405183429525481L, -130356728699794210L, -773695780610557848L}).toString());
            sb.append(e2.getClass());
            sb.append(new ObfuscatedString(new long[]{8066503939970746152L, 289497663163531434L, -239126004711061621L, 8569550536094400771L}).toString());
        }
    }

    private final void zzv(StringBuilder sb) {
        String concat;
        String obfuscatedString = new ObfuscatedString(new long[]{-7627436528490788994L, -7701501646652639895L}).toString();
        int length = sb.length();
        sb.append(obfuscatedString);
        Object obj = this.value;
        if (obj instanceof zzf) {
            sb.append(new ObfuscatedString(new long[]{-3939822278127038206L, -4110263239583252700L, 2378456007944682929L}).toString());
            zzw(sb, ((zzf) obj).zzb);
            sb.append(new ObfuscatedString(new long[]{-7464512131941433037L, -5817182652971073581L}).toString());
        } else {
            try {
                concat = zzfxt.zza(zza());
            } catch (Exception | StackOverflowError e) {
                concat = new ObfuscatedString(new long[]{-5795051355399696772L, -8098223186125944291L, -5370038846204211463L, -800318234018517780L, 1558655318977851301L, -9173571122707533242L}).toString().concat(String.valueOf(e.getClass()));
            }
            if (concat != null) {
                sb.append(new ObfuscatedString(new long[]{873929140956533400L, 6022385094200702410L}).toString());
                sb.append(concat);
                sb.append(new ObfuscatedString(new long[]{3405161610544023160L, 4781552249505371065L}).toString());
            }
        }
        if (isDone()) {
            sb.delete(length, sb.length());
            zzu(sb);
        }
    }

    private final void zzw(StringBuilder sb, @CheckForNull Object obj) {
        try {
            if (obj == this) {
                sb.append(new ObfuscatedString(new long[]{4894552694224504267L, 1184017996031789447L, -6400156202085753186L}).toString());
            } else {
                sb.append(obj);
            }
        } catch (Exception e) {
            e = e;
            sb.append(new ObfuscatedString(new long[]{2044691497453247190L, 6088432550916364001L, 3335838511669227734L, 6901649977340427002L, -6966155375598359236L, 4899375713026428974L}).toString());
            sb.append(e.getClass());
        } catch (StackOverflowError e2) {
            e = e2;
            sb.append(new ObfuscatedString(new long[]{2044691497453247190L, 6088432550916364001L, 3335838511669227734L, 6901649977340427002L, -6966155375598359236L, 4899375713026428974L}).toString());
            sb.append(e.getClass());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzx(zzgdb zzgdbVar, boolean z) {
        zzd zzdVar = null;
        while (true) {
            for (zzk zzb2 = zzbc.zzb(zzgdbVar, zzk.zza); zzb2 != null; zzb2 = zzb2.next) {
                Thread thread = zzb2.thread;
                if (thread != null) {
                    zzb2.thread = null;
                    LockSupport.unpark(thread);
                }
            }
            if (z) {
                zzgdbVar.zzq();
            }
            zzgdbVar.zzb();
            zzd zzdVar2 = zzdVar;
            zzd zza2 = zzbc.zza(zzgdbVar, zzd.zza);
            zzd zzdVar3 = zzdVar2;
            while (zza2 != null) {
                zzd zzdVar4 = zza2.next;
                zza2.next = zzdVar3;
                zzdVar3 = zza2;
                zza2 = zzdVar4;
            }
            while (zzdVar3 != null) {
                zzdVar = zzdVar3.next;
                Runnable runnable = zzdVar3.zzb;
                Objects.requireNonNull(runnable);
                Runnable runnable2 = runnable;
                if (runnable2 instanceof zzf) {
                    zzf zzfVar = (zzf) runnable2;
                    zzgdbVar = zzfVar.zza;
                    if (zzgdbVar.value == zzfVar) {
                        if (zzbc.zzf(zzgdbVar, zzfVar, zze(zzfVar.zzb))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    Executor executor = zzdVar3.zzc;
                    Objects.requireNonNull(executor);
                    zzy(runnable2, executor);
                }
                zzdVar3 = zzdVar;
            }
            return;
            z = false;
        }
    }

    private static void zzy(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e) {
            Logger zza2 = zze.zza();
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-7646291840278633808L, -7195267393689048192L, -7238737244664832188L, 2739451138299587303L, 8882706851809776879L, -1007680265556855844L, 2517524775579714665L}).toString());
            sb.append(valueOf);
            zza2.logp(level, new ObfuscatedString(new long[]{512649437465622310L, -5665731492452255658L, -1260680916688576094L, -7027032301522565187L, -8475036610425013080L, 9119539219798738892L, -4759353366118545681L}).toString(), new ObfuscatedString(new long[]{-5299465394507048906L, -3150591137737984474L, 1773593838135673887L}).toString(), AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{4482718694263278507L, -3383379871897283834L, -4203985393719172755L}), sb, valueOf2), (Throwable) e);
        }
    }

    private final void zzz(zzk zzkVar) {
        zzkVar.thread = null;
        while (true) {
            zzk zzkVar2 = this.waiters;
            if (zzkVar2 != zzk.zza) {
                zzk zzkVar3 = null;
                while (zzkVar2 != null) {
                    zzk zzkVar4 = zzkVar2.next;
                    if (zzkVar2.thread != null) {
                        zzkVar3 = zzkVar2;
                    } else if (zzkVar3 != null) {
                        zzkVar3.next = zzkVar4;
                        if (zzkVar3.thread == null) {
                            break;
                        }
                    } else if (!zzbc.zzg(this, zzkVar2, zzkVar4)) {
                        break;
                    }
                    zzkVar2 = zzkVar4;
                }
                return;
            }
            return;
        }
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public void addListener(Runnable runnable, Executor executor) {
        zzd zzdVar;
        zzfxe.zzc(runnable, new ObfuscatedString(new long[]{3717266658236469181L, -825696331663143721L, -7282988148219249974L, 510326792571273891L}).toString());
        zzfxe.zzc(executor, new ObfuscatedString(new long[]{2545490152738099440L, -6452736227045470812L, 2308421503705301269L, 7708809232949290109L}).toString());
        if (!isDone() && (zzdVar = this.listeners) != zzd.zza) {
            zzd zzdVar2 = new zzd(runnable, executor);
            do {
                zzdVar2.next = zzdVar;
                if (zzbc.zze(this, zzdVar, zzdVar2)) {
                    return;
                } else {
                    zzdVar = this.listeners;
                }
            } while (zzdVar != zzd.zza);
        }
        zzy(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        boolean z2;
        zzb zzbVar;
        boolean z3;
        Object obj = this.value;
        boolean z4 = obj instanceof zzf;
        if (obj == null) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!(z4 | z2)) {
            return false;
        }
        if (zzd) {
            zzbVar = new zzb(z, new CancellationException(new ObfuscatedString(new long[]{8833429548185182439L, 5895071636038420424L, -7458715834884170053L, -2318429846474476090L, -4849131798961844112L}).toString()));
        } else {
            if (z) {
                zzbVar = zzb.zza;
            } else {
                zzbVar = zzb.zzb;
            }
            Objects.requireNonNull(zzbVar);
        }
        boolean z5 = false;
        zzgdb<V> zzgdbVar = this;
        while (true) {
            if (zzbc.zzf(zzgdbVar, obj, zzbVar)) {
                zzx(zzgdbVar, z);
                if (!(obj instanceof zzf)) {
                    break;
                }
                ListenableFuture<? extends V> listenableFuture = ((zzf) obj).zzb;
                if (listenableFuture instanceof zzh) {
                    zzgdbVar = (zzgdb) listenableFuture;
                    obj = zzgdbVar.value;
                    if (obj == null) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (!z3 && !(obj instanceof zzf)) {
                        break;
                    }
                    z5 = true;
                } else {
                    listenableFuture.cancel(z);
                    break;
                }
            } else {
                obj = zzgdbVar.value;
                if (!(obj instanceof zzf)) {
                    return z5;
                }
            }
        }
        return true;
    }

    @Override // java.util.concurrent.Future
    public Object get() {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.value;
            if ((obj2 != null) & (!(obj2 instanceof zzf))) {
                return zzA(obj2);
            }
            zzk zzkVar = this.waiters;
            if (zzkVar != zzk.zza) {
                zzk zzkVar2 = new zzk();
                do {
                    zza zzaVar = zzbc;
                    zzaVar.zzc(zzkVar2, zzkVar);
                    if (zzaVar.zzg(this, zzkVar, zzkVar2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.value;
                            } else {
                                zzz(zzkVar2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof zzf))));
                        return zzA(obj);
                    }
                    zzkVar = this.waiters;
                } while (zzkVar != zzk.zza);
            }
            Object obj3 = this.value;
            Objects.requireNonNull(obj3);
            return zzA(obj3);
        }
        throw new InterruptedException();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.value instanceof zzb;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return (this.value != null) & (!(r0 instanceof zzf));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith(new ObfuscatedString(new long[]{2953371019020692995L, 7768253000374654500L, 2163822765516001159L, -3017560300890389495L, 7927678847142361436L, 7494013231670865098L}).toString())) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(new ObfuscatedString(new long[]{-2897483003285214759L, 1747195105090047187L}).toString());
        if (isCancelled()) {
            sb.append(new ObfuscatedString(new long[]{-4439794155328578779L, 5362086870049001516L, 6237818256681908750L}).toString());
        } else if (isDone()) {
            zzu(sb);
        } else {
            zzv(sb);
        }
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-5394356076753076752L, 7002418001933526217L}), sb);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckForNull
    public String zza() {
        if (this instanceof ScheduledFuture) {
            long delay = ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS);
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-440529886903220393L, 1920489895853491441L, -899203929969067320L, -1336841805601559328L}).toString());
            sb.append(delay);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1650221672361281691L, 1743960884942610818L}), sb);
        }
        return null;
    }

    public void zzb() {
    }

    public boolean zzc(Object obj) {
        if (obj == null) {
            obj = zzaZ;
        }
        if (!zzbc.zzf(this, null, obj)) {
            return false;
        }
        zzx(this, false);
        return true;
    }

    public boolean zzd(Throwable th) {
        th.getClass();
        if (!zzbc.zzf(this, null, new zzc(th))) {
            return false;
        }
        zzx(this, false);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzgfq
    @CheckForNull
    public final Throwable zzl() {
        if (this instanceof zzh) {
            Object obj = this.value;
            if (obj instanceof zzc) {
                return ((zzc) obj).zzb;
            }
            return null;
        }
        return null;
    }

    public void zzq() {
    }

    public final void zzr(@CheckForNull Future future) {
        boolean z;
        if (future != null) {
            z = true;
        } else {
            z = false;
        }
        if (z & isCancelled()) {
            future.cancel(zzt());
        }
    }

    public final boolean zzs(ListenableFuture listenableFuture) {
        zzc zzcVar;
        listenableFuture.getClass();
        Object obj = this.value;
        if (obj == null) {
            if (listenableFuture.isDone()) {
                if (!zzbc.zzf(this, null, zze(listenableFuture))) {
                    return false;
                }
                zzx(this, false);
                return true;
            }
            zzf zzfVar = new zzf(this, listenableFuture);
            if (zzbc.zzf(this, null, zzfVar)) {
                try {
                    listenableFuture.addListener(zzfVar, zzgeb.zza);
                } catch (Throwable th) {
                    try {
                        zzcVar = new zzc(th);
                    } catch (Error | Exception unused) {
                        zzcVar = zzc.zza;
                    }
                    zzbc.zzf(this, zzfVar, zzcVar);
                }
                return true;
            }
            obj = this.value;
        }
        if (obj instanceof zzb) {
            listenableFuture.cancel(((zzb) obj).zzc);
        }
        return false;
    }

    public final boolean zzt() {
        Object obj = this.value;
        if ((obj instanceof zzb) && ((zzb) obj).zzc) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00c7  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00ba -> B:33:0x007d). Please report as a decompilation issue!!! */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object get(long j, TimeUnit timeUnit) {
        long j2;
        long nanos = timeUnit.toNanos(j);
        if (!Thread.interrupted()) {
            Object obj = this.value;
            boolean z = true;
            if ((obj != null) & (!(obj instanceof zzf))) {
                return zzA(obj);
            }
            long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
            if (nanos >= 1000) {
                zzk zzkVar = this.waiters;
                if (zzkVar != zzk.zza) {
                    zzk zzkVar2 = new zzk();
                    do {
                        zza zzaVar = zzbc;
                        zzaVar.zzc(zzkVar2, zzkVar);
                        if (zzaVar.zzg(this, zzkVar, zzkVar2)) {
                            do {
                                LockSupport.parkNanos(this, Math.min(nanos, 2147483647999999999L));
                                if (!Thread.interrupted()) {
                                    Object obj2 = this.value;
                                    if ((obj2 != null) & (!(obj2 instanceof zzf))) {
                                        return zzA(obj2);
                                    }
                                    nanos = nanoTime - System.nanoTime();
                                } else {
                                    zzz(zzkVar2);
                                    throw new InterruptedException();
                                }
                            } while (nanos >= 1000);
                            zzz(zzkVar2);
                            j2 = 0;
                            if (nanos > j2) {
                                Object obj3 = this.value;
                                if ((obj3 != null) & (!(obj3 instanceof zzf))) {
                                    return zzA(obj3);
                                }
                                if (!Thread.interrupted()) {
                                    nanos = nanoTime - System.nanoTime();
                                    j2 = 0;
                                    if (nanos > j2) {
                                    }
                                } else {
                                    throw new InterruptedException();
                                }
                            } else {
                                String zzgdbVar = toString();
                                String obj4 = timeUnit.toString();
                                Locale locale = Locale.ROOT;
                                String lowerCase = obj4.toLowerCase(locale);
                                String lowerCase2 = timeUnit.toString().toLowerCase(locale);
                                StringBuilder sb = new StringBuilder();
                                sb.append(new ObfuscatedString(new long[]{-4044765165486045450L, -8194748855712818204L}).toString());
                                sb.append(j);
                                String m3336x1aebc6d9 = AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{335042513603223726L, 6039409568867060293L}), sb, lowerCase2);
                                if (nanos + 1000 < 0) {
                                    String concat = m3336x1aebc6d9.concat(new ObfuscatedString(new long[]{3753965588059936595L, -1854721796355386775L}).toString());
                                    long j3 = -nanos;
                                    long convert = timeUnit.convert(j3, TimeUnit.NANOSECONDS);
                                    long nanos2 = j3 - timeUnit.toNanos(convert);
                                    if (convert != 0 && nanos2 <= 1000) {
                                        z = false;
                                    }
                                    if (convert > 0) {
                                        StringBuilder sb2 = new StringBuilder();
                                        sb2.append(concat);
                                        sb2.append(convert);
                                        String m3336x1aebc6d92 = AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{5157754678432557016L, 2434254409527387511L}), sb2, lowerCase);
                                        if (z) {
                                            m3336x1aebc6d92 = m3336x1aebc6d92.concat(new ObfuscatedString(new long[]{4143446266441440122L, 8844968387979183305L}).toString());
                                        }
                                        concat = m3336x1aebc6d92.concat(new ObfuscatedString(new long[]{750674448580837751L, 3917290256411551338L}).toString());
                                    }
                                    if (z) {
                                        StringBuilder sb3 = new StringBuilder();
                                        sb3.append(concat);
                                        sb3.append(nanos2);
                                        concat = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-3256876532665124452L, 3398585643227313258L, -6338752665741888674L}), sb3);
                                    }
                                    m3336x1aebc6d9 = concat.concat(new ObfuscatedString(new long[]{8061184455807798568L, -2032408986298013806L}).toString());
                                }
                                if (isDone()) {
                                    throw new TimeoutException(m3336x1aebc6d9.concat(new ObfuscatedString(new long[]{-288267516377664109L, -6592864277859002548L, 8109379842883068830L, 511110152253080806L, -657244102389526952L, -6698728737357618069L}).toString()));
                                }
                                throw new TimeoutException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-7086429173780828567L, -6326321970130659608L}), AbstractC0749x8313616e.m3341xc20437a5(m3336x1aebc6d9), zzgdbVar));
                            }
                        } else {
                            zzkVar = this.waiters;
                        }
                    } while (zzkVar != zzk.zza);
                }
                Object obj5 = this.value;
                Objects.requireNonNull(obj5);
                return zzA(obj5);
            }
            j2 = 0;
            if (nanos > j2) {
            }
        } else {
            throw new InterruptedException();
        }
    }
}
