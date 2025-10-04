package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzeyl implements zzexq {
    private final Context zza;
    private final ScheduledExecutorService zzb;
    private final Executor zzc;
    private final int zzd;
    private final boolean zze;
    private final boolean zzf;
    private final zzcdc zzg;

    public zzeyl(zzcdc zzcdcVar, Context context, ScheduledExecutorService scheduledExecutorService, Executor executor, int i, boolean z, boolean z2) {
        this.zzg = zzcdcVar;
        this.zza = context;
        this.zzb = scheduledExecutorService;
        this.zzc = executor;
        this.zzd = i;
        this.zze = z;
        this.zzf = z2;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final int zza() {
        return 40;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final ListenableFuture zzb() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzaU)).booleanValue()) {
            return zzgen.zze((zzgee) zzgen.zzo(zzgen.zzm(zzgee.zzu(this.zzg.zza(this.zza, this.zzd)), new zzfws() { // from class: com.google.android.gms.internal.ads.zzeyj
                @Override // com.google.android.gms.internal.ads.zzfws
                public final Object apply(Object obj) {
                    return zzeyl.this.zzc((AdvertisingIdClient.Info) obj);
                }
            }, this.zzc), ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzaV)).longValue(), TimeUnit.MILLISECONDS, this.zzb), Throwable.class, new zzfws() { // from class: com.google.android.gms.internal.ads.zzeyk
                @Override // com.google.android.gms.internal.ads.zzfws
                public final Object apply(Object obj) {
                    return zzeyl.this.zzd((Throwable) obj);
                }
            }, this.zzc);
        }
        return zzgen.zzg(new Exception(new ObfuscatedString(new long[]{3370672340927205469L, -8597264757701250743L, -6867834734250243046L, -1593480281968800087L, 2009111471408970732L, 1812392505341249537L}).toString()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x005e, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0061, code lost:
    
        com.google.android.gms.ads.internal.zzt.zzo().zzw(r0, new com.panda912.muddy.ObfuscatedString(new long[]{7750793193590982327L, -3342458416504408622L, -2362882181941620958L, 3899555720503581014L, 8889689556343582989L}).toString());
        r0 = new com.google.android.gms.internal.ads.zzfub();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002f, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(com.google.android.gms.internal.ads.zzbgc.zzcS)).booleanValue() != false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0019, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(com.google.android.gms.internal.ads.zzbgc.zzcR)).booleanValue() == false) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0031, code lost:
    
        r1 = com.google.android.gms.internal.ads.zzfue.zzj(r7.zza);
        j$.util.Objects.requireNonNull(r8);
        r2 = r8.getId();
        j$.util.Objects.requireNonNull(r2);
        r0 = r1.zzi(r2, r7.zza.getPackageName(), ((java.lang.Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(com.google.android.gms.internal.ads.zzbgc.zzcY)).longValue(), r7.zzf);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final /* synthetic */ zzeym zzc(AdvertisingIdClient.Info info) {
        zzfub zzfubVar = new zzfub();
        if (!this.zze) {
        }
        if (this.zze) {
        }
        return new zzeym(info, null, zzfubVar);
    }

    public final /* synthetic */ zzeym zzd(Throwable th) {
        String string;
        com.google.android.gms.ads.internal.client.zzay.zzb();
        ContentResolver contentResolver = this.zza.getContentResolver();
        if (contentResolver == null) {
            string = null;
        } else {
            string = Settings.Secure.getString(contentResolver, new ObfuscatedString(new long[]{362067195430715235L, -5516456385432147308L, 244164449609811186L}).toString());
        }
        return new zzeym(null, string, new zzfub());
    }
}
