package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzerh implements zzexq {
    private final zzgey zza;
    private final zzgey zzb;
    private final Context zzc;
    private final zzfhh zzd;

    @Nullable
    private final View zze;

    public zzerh(zzgey zzgeyVar, zzgey zzgeyVar2, Context context, zzfhh zzfhhVar, @Nullable ViewGroup viewGroup) {
        this.zza = zzgeyVar;
        this.zzb = zzgeyVar2;
        this.zzc = context;
        this.zzd = zzfhhVar;
        this.zze = viewGroup;
    }

    private final List zze() {
        int i;
        ArrayList arrayList = new ArrayList();
        View view = this.zze;
        while (view != null) {
            Object parent = view.getParent();
            if (parent == null) {
                break;
            }
            if (parent instanceof ViewGroup) {
                i = ((ViewGroup) parent).indexOfChild(view);
            } else {
                i = -1;
            }
            Bundle bundle = new Bundle();
            bundle.putString(new ObfuscatedString(new long[]{-2305727572843094808L, -8833685364739194334L}).toString(), parent.getClass().getName());
            bundle.putInt(new ObfuscatedString(new long[]{5396589889025480815L, 195218466318724947L, -6101858203434746761L}).toString(), i);
            arrayList.add(bundle);
            if (!(parent instanceof View)) {
                break;
            }
            view = (View) parent;
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final int zza() {
        return 3;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final ListenableFuture zzb() {
        zzbgc.zza(this.zzc);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkA)).booleanValue()) {
            return this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzerf
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return zzerh.this.zzc();
                }
            });
        }
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzerg
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzerh.this.zzd();
            }
        });
    }

    public final /* synthetic */ zzeri zzc() {
        return new zzeri(this.zzc, this.zzd.zze, zze());
    }

    public final /* synthetic */ zzeri zzd() {
        return new zzeri(this.zzc, this.zzd.zze, zze());
    }
}
