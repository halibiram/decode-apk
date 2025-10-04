package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzawh implements Runnable {
    final /* synthetic */ int zza;
    final /* synthetic */ zzawj zzb;

    public zzawh(zzawj zzawjVar, int i, boolean z) {
        this.zzb = zzawjVar;
        this.zza = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzatd zzatdVar;
        int i = this.zza;
        zzawj zzawjVar = this.zzb;
        if (i > 0) {
            try {
                Thread.sleep(i * 1000);
            } catch (InterruptedException unused) {
            }
        }
        try {
            PackageInfo packageInfo = zzawjVar.zza.getPackageManager().getPackageInfo(zzawjVar.zza.getPackageName(), 0);
            Context context = zzawjVar.zza;
            zzatdVar = zzfqz.zza(context, context.getPackageName(), Integer.toString(packageInfo.versionCode));
        } catch (Throwable unused2) {
            zzatdVar = null;
        }
        this.zzb.zzm = zzatdVar;
        if (this.zza < 4) {
            if (zzatdVar == null || !zzatdVar.zzaj() || zzatdVar.zzh().equals(new ObfuscatedString(new long[]{-8895532274324027169L, -6889592949230066132L, 2451089573652112395L, -2432941092664233819L, -5110837145765533101L, -5601184309425490106L, 6962428166413212260L, 8569022457408075767L, -7111060426218877142L}).toString()) || !zzatdVar.zzak() || !zzatdVar.zzf().zze() || zzatdVar.zzf().zza() == -2) {
                this.zzb.zzo(this.zza + 1, true);
            }
        }
    }
}
