package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzbbj implements BaseGmsClient.BaseConnectionCallbacks {
    public static final /* synthetic */ int zzd = 0;
    final /* synthetic */ zzbbb zza;
    final /* synthetic */ zzceu zzb;
    final /* synthetic */ zzbbl zzc;

    public zzbbj(zzbbl zzbblVar, zzbbb zzbbbVar, zzceu zzceuVar) {
        this.zza = zzbbbVar;
        this.zzb = zzceuVar;
        this.zzc = zzbblVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(@Nullable Bundle bundle) {
        Object obj;
        boolean z;
        final zzbba zzbbaVar;
        obj = this.zzc.zzd;
        synchronized (obj) {
            try {
                zzbbl zzbblVar = this.zzc;
                z = zzbblVar.zzb;
                if (z) {
                    return;
                }
                zzbblVar.zzb = true;
                zzbbaVar = this.zzc.zza;
                if (zzbbaVar == null) {
                    return;
                }
                zzgey zzgeyVar = zzcep.zza;
                final zzbbb zzbbbVar = this.zza;
                final zzceu zzceuVar = this.zzb;
                final ListenableFuture zza = zzgeyVar.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbbg
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzbay zzf;
                        zzbbj zzbbjVar = zzbbj.this;
                        zzbba zzbbaVar2 = zzbbaVar;
                        zzceu zzceuVar2 = zzceuVar;
                        try {
                            zzbbd zzq = zzbbaVar2.zzq();
                            boolean zzp = zzbbaVar2.zzp();
                            zzbbb zzbbbVar2 = zzbbbVar;
                            if (zzp) {
                                zzf = zzq.zzg(zzbbbVar2);
                            } else {
                                zzf = zzq.zzf(zzbbbVar2);
                            }
                            if (!zzf.zze()) {
                                zzceuVar2.zzd(new RuntimeException(new ObfuscatedString(new long[]{-2211172045641157490L, 956604225116398104L, 773427087946465936L, 2090909076234777464L}).toString()));
                                zzbbl.zze(zzbbjVar.zzc);
                                return;
                            }
                            zzbbi zzbbiVar = new zzbbi(zzbbjVar, zzf.zzc(), 1);
                            int read = zzbbiVar.read();
                            if (read != -1) {
                                zzbbiVar.unread(read);
                                zzceuVar2.zzc(zzbbn.zzb(zzbbiVar, zzf.zzd(), zzf.zzg(), zzf.zza(), zzf.zzf()));
                                return;
                            }
                            throw new IOException(new ObfuscatedString(new long[]{8861014364273476959L, -8963609512609355668L, 8431781251964422082L, 6215840814643720513L, 6386027764169865677L}).toString());
                        } catch (RemoteException e) {
                            e = e;
                            zzcec.zzh(new ObfuscatedString(new long[]{8259254967842891087L, 294942294616536196L, -7318539177385577554L, 370052291019141179L, 8885904240934242050L, -1008756364272345248L, 4302839480160721247L}).toString(), e);
                            zzceuVar2.zzd(e);
                            zzbbl.zze(zzbbjVar.zzc);
                        } catch (IOException e2) {
                            e = e2;
                            zzcec.zzh(new ObfuscatedString(new long[]{8259254967842891087L, 294942294616536196L, -7318539177385577554L, 370052291019141179L, 8885904240934242050L, -1008756364272345248L, 4302839480160721247L}).toString(), e);
                            zzceuVar2.zzd(e);
                            zzbbl.zze(zzbbjVar.zzc);
                        }
                    }
                });
                final zzceu zzceuVar2 = this.zzb;
                zzceuVar2.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbbh
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (zzceu.this.isCancelled()) {
                            zza.cancel(true);
                        }
                    }
                }, zzcep.zzf);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }
}
