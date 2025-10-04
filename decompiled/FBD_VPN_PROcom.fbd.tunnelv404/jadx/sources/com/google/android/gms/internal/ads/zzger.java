package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzger implements ListenableFuture {
    static final ListenableFuture zza = new zzger(null);
    private static final zzgex zzb = new zzgex(zzger.class);
    private final Object zzc;

    public zzger(Object obj) {
        this.zzc = obj;
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void addListener(Runnable runnable, Executor executor) {
        zzfxe.zzc(runnable, new ObfuscatedString(new long[]{-7353864087049868921L, -5789700523224551448L, 4334789848827146436L, -858667124403879098L}).toString());
        zzfxe.zzc(executor, new ObfuscatedString(new long[]{9076012164324739175L, 6332576914981239997L, 6147724342941156173L, -92534099358761290L}).toString());
        try {
            executor.execute(runnable);
        } catch (Exception e) {
            Logger zza2 = zzb.zza();
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-8282853333317848086L, 6044414719741084997L, 4005033395932451440L, 5935203414715042080L, 624486589442133464L, 1892394380247696125L, 5891024956211194744L}).toString());
            sb.append(valueOf);
            zza2.logp(level, new ObfuscatedString(new long[]{-3260094710760502993L, 8663607779065218318L, 2215736985883058146L, 4141329367769917357L, 3627126971360641809L, -2512525067643162242L, 4369380372471695983L, 7500699078941883566L}).toString(), new ObfuscatedString(new long[]{276238515905035934L, 3386177441575229456L, -165430766464492158L}).toString(), AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-1841590873101561474L, 8901274407111489227L, -7689341796181374770L}), sb, valueOf2), (Throwable) e);
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.zzc;
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return true;
    }

    public final String toString() {
        Object obj = this.zzc;
        String obj2 = super.toString();
        String valueOf = String.valueOf(obj);
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(obj2);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{-1106185530016059085L, -3597778838810854439L, -5030206836811350878L, 387628384558255912L, 986875577295000208L}).toString());
        m3341xc20437a5.append(valueOf);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1070319999212884848L, 1130602864564643022L}), m3341xc20437a5);
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        timeUnit.getClass();
        return this.zzc;
    }
}
