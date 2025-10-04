package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.panda912.muddy.ObfuscatedString;

@SuppressLint({"RestrictedApi"})
/* loaded from: classes2.dex */
final class zzfvl {
    private static final zzfvt zzb = new zzfvt(new ObfuscatedString(new long[]{8981989286160561429L, 7127834110496262637L, 4653487481615530288L, -78335454582261822L}).toString());
    private static final Intent zzc = new Intent(new ObfuscatedString(new long[]{7456877876696134978L, -8291356007386031062L, -7337238421987382690L, 3322084832014453756L, 9137842465101461259L, -5409806629208755052L, -2797211808193832397L, -5827949018443791035L, -6247812954188591148L}).toString()).setPackage(new ObfuscatedString(new long[]{2269063482811030445L, 7996998793864927653L, -3211985224720880783L, 4707492151214174007L}).toString());

    @Nullable
    @VisibleForTesting
    final zzfwe zza;
    private final String zzd;

    public zzfvl(Context context) {
        if (zzfwh.zza(context)) {
            this.zza = new zzfwe(context.getApplicationContext(), zzb, new ObfuscatedString(new long[]{7512517116632225982L, 1782510466888516881L, 4827155086092675697L, 5363047007090128396L}).toString(), zzc, zzfvg.zza, null);
        } else {
            this.zza = null;
        }
        this.zzd = context.getPackageName();
    }

    public final void zzc() {
        if (this.zza == null) {
            return;
        }
        zzb.zzc(new ObfuscatedString(new long[]{1979884408544446470L, 870574150107653604L, -103913383478811209L, 7408983939201464617L, -3608601093807710423L, 5046984605467559671L}).toString(), new Object[0]);
        this.zza.zzu();
    }

    public final void zzd(zzfvc zzfvcVar, zzfvq zzfvqVar) {
        if (this.zza == null) {
            zzb.zza(new ObfuscatedString(new long[]{2657495421487347387L, -4558092804406808762L, 8441766775361427248L}).toString(), new ObfuscatedString(new long[]{-4968682098135196657L, -4814673743349680345L, 2550439446940856216L, 5502884677070025153L}).toString());
        } else {
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            this.zza.zzs(new zzfvi(this, taskCompletionSource, zzfvcVar, zzfvqVar, taskCompletionSource), taskCompletionSource);
        }
    }

    public final void zze(zzfvn zzfvnVar, zzfvq zzfvqVar) {
        if (this.zza == null) {
            zzb.zza(new ObfuscatedString(new long[]{4007385894891818217L, 3349924683206535382L, 6324920252426941204L}).toString(), new ObfuscatedString(new long[]{-1092822728977377313L, 4167878482616373461L, 4734493056889549119L, 1846332535693321044L}).toString());
        } else {
            if (zzfvnVar.zzg() == null) {
                zzb.zza(new ObfuscatedString(new long[]{-5893171340800025237L, -5543634972417240113L, 8047908568410643253L, -6887950222806612115L, -6633139953470047922L, -601306002915371665L, -3991385407146005496L, -6205285394792771481L, 3923475426820385553L, -4358628636069896736L, -6273715513925185201L, 1272127077501831179L, -8094873150958541843L}).toString(), new Object[0]);
                zzfvo zzc2 = zzfvp.zzc();
                zzc2.zzb(8160);
                zzfvqVar.zza(zzc2.zzc());
                return;
            }
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            this.zza.zzs(new zzfvh(this, taskCompletionSource, zzfvnVar, zzfvqVar, taskCompletionSource), taskCompletionSource);
        }
    }

    public final void zzf(zzfvs zzfvsVar, zzfvq zzfvqVar, int i) {
        if (this.zza == null) {
            zzb.zza(new ObfuscatedString(new long[]{490318367422144864L, -6471358354542200973L, -4253579967577982331L}).toString(), new ObfuscatedString(new long[]{578737896424662538L, -8653653807324647440L, 1522444505052358255L, -3237682545386553641L}).toString());
        } else {
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            this.zza.zzs(new zzfvj(this, taskCompletionSource, zzfvsVar, i, zzfvqVar, taskCompletionSource), taskCompletionSource);
        }
    }
}
