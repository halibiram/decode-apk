package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzbvl implements DialogInterface.OnClickListener {
    final /* synthetic */ zzbvn zza;

    public zzbvl(zzbvn zzbvnVar) {
        this.zza = zzbvnVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Context context;
        zzbvn zzbvnVar = this.zza;
        Intent zzb = zzbvnVar.zzb();
        com.google.android.gms.ads.internal.zzt.zzp();
        context = zzbvnVar.zzb;
        com.google.android.gms.ads.internal.util.zzt.zzS(context, zzb);
    }
}
