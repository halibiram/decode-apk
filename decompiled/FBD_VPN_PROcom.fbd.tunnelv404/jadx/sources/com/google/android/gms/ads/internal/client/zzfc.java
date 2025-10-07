package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzcak;
import com.google.android.gms.internal.ads.zzcam;
import com.google.android.gms.internal.ads.zzcaq;
import com.google.android.gms.internal.ads.zzcau;
import com.google.android.gms.internal.ads.zzcav;
import com.google.android.gms.internal.ads.zzcbb;
import com.google.android.gms.internal.ads.zzcdv;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzfc extends zzcam {
    private static void zzr(final zzcau zzcauVar) {
        zzcec.zzg(new ObfuscatedString(new long[]{7980859419078291391L, 833299018596541081L, 6170239242130850051L, 1578558633920086179L, 3865378797102258356L, 7558082168548392105L, 3999078587461041151L, 7153982556380471718L, -446374893529817230L, 7342800315976470826L, -1338579423881720499L, -191202619764996426L, 5997472424925515649L, 4731940437504065173L, 2234947676302133030L, -961260201030867673L, 6772650665176675925L, 2298809219368308869L, 7978500857721895213L, -5389079286312808362L, -3826494683344268257L, -7586611586206546028L, -6674263892428936182L, 749416626514427219L, 4172225641398673233L}).toString());
        zzcdv.zza.post(new Runnable() { // from class: com.google.android.gms.ads.internal.client.zzfb
            @Override // java.lang.Runnable
            public final void run() {
                zzcau zzcauVar2 = zzcau.this;
                if (zzcauVar2 != null) {
                    try {
                        zzcauVar2.zze(1);
                    } catch (RemoteException e) {
                        zzcec.zzl(new ObfuscatedString(new long[]{-2637354287551226569L, -8417275589472831943L, 8703697878367308334L, 1709175249654224279L, -1112900479306860968L, -4256185894996867903L}).toString(), e);
                    }
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final Bundle zzb() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final zzdn zzc() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    @Nullable
    public final zzcak zzd() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final String zze() {
        return new ObfuscatedString(new long[]{-4658249265454737515L}).toString();
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final void zzf(zzl zzlVar, zzcau zzcauVar) {
        zzr(zzcauVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final void zzg(zzl zzlVar, zzcau zzcauVar) {
        zzr(zzcauVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final void zzh(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final void zzi(zzdd zzddVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final void zzj(zzdg zzdgVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final void zzk(zzcaq zzcaqVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final void zzl(zzcbb zzcbbVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final void zzm(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final void zzn(IObjectWrapper iObjectWrapper, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final boolean zzo() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final void zzp(zzcav zzcavVar) {
    }
}
