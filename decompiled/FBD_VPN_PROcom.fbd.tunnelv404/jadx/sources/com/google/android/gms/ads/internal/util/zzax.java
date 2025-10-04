package com.google.android.gms.ads.internal.util;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzax implements Runnable {
    final /* synthetic */ Context zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ boolean zzc;
    final /* synthetic */ boolean zzd;

    public zzax(zzay zzayVar, Context context, String str, boolean z, boolean z2) {
        this.zza = context;
        this.zzb = str;
        this.zzc = z;
        this.zzd = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.ads.internal.zzt.zzp();
        AlertDialog.Builder zzJ = zzt.zzJ(this.zza);
        zzJ.setMessage(this.zzb);
        if (this.zzc) {
            zzJ.setTitle(new ObfuscatedString(new long[]{-5068771644492400778L, -2033526749484610102L}).toString());
        } else {
            zzJ.setTitle(new ObfuscatedString(new long[]{8462446513766234789L, -3775046949636575112L}).toString());
        }
        if (this.zzd) {
            zzJ.setNeutralButton(new ObfuscatedString(new long[]{-2756633593704988790L, 1426997289239799384L}).toString(), (DialogInterface.OnClickListener) null);
        } else {
            zzJ.setPositiveButton(new ObfuscatedString(new long[]{2722264916040036351L, -8619109072813408773L, -5715423965959827500L}).toString(), new zzaw(this));
            zzJ.setNegativeButton(new ObfuscatedString(new long[]{-971725309330779383L, 4417563376143729293L}).toString(), (DialogInterface.OnClickListener) null);
        }
        zzJ.create().show();
    }
}
