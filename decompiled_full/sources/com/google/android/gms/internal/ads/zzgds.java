package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgdb;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import javax.annotation.CheckForNull;

/* loaded from: classes2.dex */
abstract class zzgds extends zzgdb.zzi {
    private static final zzgdo zzba;
    private static final zzgex zzbb = new zzgex(zzgds.class);
    private volatile int remaining;

    @CheckForNull
    private volatile Set<Throwable> seenExceptions = null;

    static {
        zzgdo zzgdrVar;
        Throwable th;
        zzgdq zzgdqVar = null;
        try {
            zzgdrVar = new zzgdp(AtomicReferenceFieldUpdater.newUpdater(zzgds.class, Set.class, new ObfuscatedString(new long[]{-2672612772955129278L, -8896203706645187710L, 2685133040812742594L}).toString()), AtomicIntegerFieldUpdater.newUpdater(zzgds.class, new ObfuscatedString(new long[]{-6345438428775237543L, 3625560448863926402L, 8016750761360808446L}).toString()));
            th = null;
        } catch (Throwable th2) {
            zzgdrVar = new zzgdr(zzgdqVar);
            th = th2;
        }
        zzba = zzgdrVar;
        if (th != null) {
            zzbb.zza().logp(Level.SEVERE, new ObfuscatedString(new long[]{6594761295395025245L, -4850947418668388923L, -4693017901509698452L, -8188801619354627032L, 37322950859233836L, 3512988950152854401L, 1165179096197339164L, 469738217693771241L}).toString(), new ObfuscatedString(new long[]{-988962711172297181L, 841499405139385752L}).toString(), new ObfuscatedString(new long[]{6227914767274929258L, -1425608001289173123L, -4853140199680288253L, -4423966151944010157L, 433634983648939124L}).toString(), th);
        }
    }

    public zzgds(int i) {
        this.remaining = i;
    }

    public final int zzA() {
        return zzba.zza(this);
    }

    public final Set zzC() {
        Set<Throwable> set = this.seenExceptions;
        if (set == null) {
            Set newSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
            zze(newSetFromMap);
            zzba.zzb(this, null, newSetFromMap);
            Set<Throwable> set2 = this.seenExceptions;
            Objects.requireNonNull(set2);
            return set2;
        }
        return set;
    }

    public final void zzF() {
        this.seenExceptions = null;
    }

    public abstract void zze(Set set);
}
