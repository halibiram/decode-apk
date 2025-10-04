package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzr implements Handler.Callback {
    final /* synthetic */ zzs zza;

    public /* synthetic */ zzr(zzs zzsVar, zzq zzqVar) {
        this.zza = zzsVar;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        HashMap hashMap;
        HashMap hashMap2;
        HashMap hashMap3;
        HashMap hashMap4;
        HashMap hashMap5;
        int i = message.what;
        if (i != 0) {
            if (i != 1) {
                return false;
            }
            hashMap4 = this.zza.zzb;
            synchronized (hashMap4) {
                try {
                    zzo zzoVar = (zzo) message.obj;
                    hashMap5 = this.zza.zzb;
                    zzp zzpVar = (zzp) hashMap5.get(zzoVar);
                    if (zzpVar != null && zzpVar.zza() == 3) {
                        new ObfuscatedString(new long[]{7037759458696751508L, -4148313323867892036L, -6097777772697895062L, -407780761959826584L}).toString();
                        String.valueOf(zzoVar);
                        new ObfuscatedString(new long[]{934216109973102543L, 7072835529919432281L, 4361412408823942524L, 5503897643466748884L, 5635892136477537078L, -8747899995336157474L, -1675481640339970475L}).toString();
                        new Exception();
                        ComponentName zzb = zzpVar.zzb();
                        if (zzb == null) {
                            zzb = zzoVar.zza();
                        }
                        if (zzb == null) {
                            String zzc = zzoVar.zzc();
                            Preconditions.checkNotNull(zzc);
                            zzb = new ComponentName(zzc, new ObfuscatedString(new long[]{-8790831218767231111L, -7714798193513043566L}).toString());
                        }
                        zzpVar.onServiceDisconnected(zzb);
                    }
                } finally {
                }
            }
            return true;
        }
        hashMap = this.zza.zzb;
        synchronized (hashMap) {
            try {
                zzo zzoVar2 = (zzo) message.obj;
                hashMap2 = this.zza.zzb;
                zzp zzpVar2 = (zzp) hashMap2.get(zzoVar2);
                if (zzpVar2 != null && zzpVar2.zzi()) {
                    if (zzpVar2.zzj()) {
                        zzpVar2.zzg(new ObfuscatedString(new long[]{-6529273152698134160L, 2995075571053458010L, 6021852939304629294L, 4873401389012018107L}).toString());
                    }
                    hashMap3 = this.zza.zzb;
                    hashMap3.remove(zzoVar2);
                }
            } finally {
            }
        }
        return true;
    }
}
