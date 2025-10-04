package com.google.android.play.core.appupdate.internal;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import androidx.annotation.Nullable;
import com.google.android.play.core.listener.StateUpdatedListener;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes2.dex */
public abstract class zzl {
    protected final zzm zza;
    private final IntentFilter zzc;
    private final Context zzd;
    protected final Set zzb = new HashSet();

    @Nullable
    private zzk zze = null;
    private volatile boolean zzf = false;

    public zzl(zzm zzmVar, IntentFilter intentFilter, Context context) {
        this.zza = zzmVar;
        this.zzc = intentFilter;
        this.zzd = zzz.zza(context);
    }

    private final void zze() {
        zzk zzkVar;
        if (!this.zzb.isEmpty() && this.zze == null) {
            zzk zzkVar2 = new zzk(this, null);
            this.zze = zzkVar2;
            if (Build.VERSION.SDK_INT >= 33) {
                this.zzd.registerReceiver(zzkVar2, this.zzc, 2);
            } else {
                this.zzd.registerReceiver(zzkVar2, this.zzc);
            }
        }
        if (this.zzb.isEmpty() && (zzkVar = this.zze) != null) {
            this.zzd.unregisterReceiver(zzkVar);
            this.zze = null;
        }
    }

    public abstract void zza(Context context, Intent intent);

    public final synchronized void zzb(StateUpdatedListener stateUpdatedListener) {
        this.zza.zzd(new ObfuscatedString(new long[]{-2468670979232074440L, -4958907665904839089L, 4165922540280630485L}).toString(), new Object[0]);
        zzac.zza(stateUpdatedListener, new ObfuscatedString(new long[]{-1644194786247652825L, -8660336346704673460L, -3315244566458676842L, 1242633664626643318L, -2891203060727237268L, 1358496299335503836L, 374490260530557883L, -2639915155813985439L}).toString());
        this.zzb.add(stateUpdatedListener);
        zze();
    }

    public final synchronized void zzc(StateUpdatedListener stateUpdatedListener) {
        this.zza.zzd(new ObfuscatedString(new long[]{2178189936671562997L, 3101899862654880996L, 1353452906850879951L, -8591423987748799134L}).toString(), new Object[0]);
        zzac.zza(stateUpdatedListener, new ObfuscatedString(new long[]{6030201072607844466L, 2224577415155931112L, 1158764986960451171L, -319578373216099573L, -4945855815161800258L, 5344852706360709548L, 6198118897740339571L, -5545530843281228108L}).toString());
        this.zzb.remove(stateUpdatedListener);
        zze();
    }

    public final synchronized void zzd(Object obj) {
        Iterator it = new HashSet(this.zzb).iterator();
        while (it.hasNext()) {
            ((StateUpdatedListener) it.next()).onStateUpdate(obj);
        }
    }
}
