package com.google.android.gms.ads.internal.util;

import android.content.DialogInterface;
import android.net.Uri;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzaw implements DialogInterface.OnClickListener {
    final /* synthetic */ zzax zza;

    public zzaw(zzax zzaxVar) {
        this.zza = zzaxVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        com.google.android.gms.ads.internal.zzt.zzp();
        zzt.zzT(this.zza.zza, Uri.parse(new ObfuscatedString(new long[]{8176519053039298957L, 7791852046402390269L, 4914982684071827400L, 7319909388576735219L, 1205628050616005348L, 3439026163134940319L, -6447124530287350285L, 9096442632077340122L, -1509883144754985500L}).toString()));
    }
}
