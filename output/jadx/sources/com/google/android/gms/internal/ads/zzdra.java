package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import java.util.Collections;

/* loaded from: classes2.dex */
public final class zzdra extends zzbpr implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzbiy {
    private View zza;
    private com.google.android.gms.ads.internal.client.zzdq zzb;
    private zzdmv zzc;
    private boolean zzd = false;
    private boolean zze = false;

    public zzdra(zzdmv zzdmvVar, zzdna zzdnaVar) {
        this.zza = zzdnaVar.zzf();
        this.zzb = zzdnaVar.zzj();
        this.zzc = zzdmvVar;
        if (zzdnaVar.zzs() != null) {
            zzdnaVar.zzs().zzan(this);
        }
    }

    private final void zzg() {
        View view;
        zzdmv zzdmvVar = this.zzc;
        if (zzdmvVar != null && (view = this.zza) != null) {
            zzdmvVar.zzA(view, Collections.emptyMap(), Collections.emptyMap(), zzdmv.zzW(this.zza));
        }
    }

    private final void zzh() {
        View view = this.zza;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.zza);
            }
        }
    }

    private static final void zzi(zzbpv zzbpvVar, int i) {
        try {
            zzbpvVar.zze(i);
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-6079178202481433890L, -7318768337475437218L, 1328752192275774642L, 4856460309903701782L, 5128277652181459224L, -144980714010972204L}).toString(), e);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        zzg();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzbps
    @Nullable
    public final com.google.android.gms.ads.internal.client.zzdq zzb() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{7078847937665064193L, 6277405411375232627L, -5926678709309902874L, -2811435678709480163L, 7582978976249463027L, -5785996364545254662L, -3434287213061009290L}).toString());
        if (this.zzd) {
            zzcec.zzg(new ObfuscatedString(new long[]{5829796431258036471L, -5714334763388685350L, -366988404366393455L, 2945691943321685303L, -8833184711122881249L, 259634349166831300L, -28865594026225940L, 7318457268807993861L, -6801828758565605649L, 8983854054299075021L}).toString());
            return null;
        }
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbps
    @Nullable
    public final zzbjj zzc() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-1739234995770618614L, -4044441353812819019L, -8506548646132019331L, -3369618715574679362L, 8354407459783911999L, -8485855334493937174L, -7090088478534257243L}).toString());
        if (this.zzd) {
            zzcec.zzg(new ObfuscatedString(new long[]{6713262117098632395L, -1694549502296400531L, -4245799663364840143L, 3905029364336005796L, 7269644371540317511L, -7601965273418199372L, -3441454443393507199L, -8189662672946556679L, 4673893127952001376L, -7132699525546949398L}).toString());
            return null;
        }
        zzdmv zzdmvVar = this.zzc;
        if (zzdmvVar == null || zzdmvVar.zzc() == null) {
            return null;
        }
        return zzdmvVar.zzc().zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbps
    public final void zzd() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{4031099680138667361L, 6988015598658216712L, -1373608158511908706L, -198166604469639903L, 8913761748419489219L, -4359842816818152020L, 4160898281251106252L}).toString());
        zzh();
        zzdmv zzdmvVar = this.zzc;
        if (zzdmvVar != null) {
            zzdmvVar.zzb();
        }
        this.zzc = null;
        this.zza = null;
        this.zzb = null;
        this.zzd = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbps
    public final void zze(IObjectWrapper iObjectWrapper) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-6408641885647462569L, -5824864304475472468L, -80523812136894700L, 2136857317041742724L, 163460816858041607L, 8055824818795936172L, -3316291816856021412L}).toString());
        zzf(iObjectWrapper, new zzdqz(this));
    }

    @Override // com.google.android.gms.internal.ads.zzbps
    public final void zzf(IObjectWrapper iObjectWrapper, zzbpv zzbpvVar) {
        String obfuscatedString;
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{1897635068456937530L, -213312673775576053L, -7980227582466316845L, 5695459848062089581L, 6300503158143534791L, 6609506458043664244L, -4474313170355529085L}).toString());
        if (this.zzd) {
            zzcec.zzg(new ObfuscatedString(new long[]{2670266320040562114L, -3707496935601925459L, 8398309832665882471L, -585559821972328982L, -6950415340470515018L, 34965363455835295L, 1879484218428297904L}).toString());
            zzi(zzbpvVar, 2);
            return;
        }
        View view = this.zza;
        if (view != null && this.zzb != null) {
            if (this.zze) {
                zzcec.zzg(new ObfuscatedString(new long[]{1754316072936348737L, 671574507328250790L, 2183234553041798392L, -6116902863399751917L, 7274658318985640576L, -5268890401981841417L}).toString());
                zzi(zzbpvVar, 1);
                return;
            }
            this.zze = true;
            zzh();
            ((ViewGroup) ObjectWrapper.unwrap(iObjectWrapper)).addView(this.zza, new ViewGroup.LayoutParams(-1, -1));
            com.google.android.gms.ads.internal.zzt.zzx();
            zzcfc.zza(this.zza, this);
            com.google.android.gms.ads.internal.zzt.zzx();
            zzcfc.zzb(this.zza, this);
            zzg();
            try {
                zzbpvVar.zzf();
                return;
            } catch (RemoteException e) {
                zzcec.zzl(new ObfuscatedString(new long[]{-7546855942385778929L, -7550992808130692781L, 3717915415862139842L, 8424076627487802753L, 6723286648112170560L, -3602590103239827161L}).toString(), e);
                return;
            }
        }
        if (view == null) {
            obfuscatedString = new ObfuscatedString(new long[]{5476846401354923862L, -2836311597474925903L, 3333175905220750994L, -8559189509238089912L}).toString();
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{6831707875712858507L, 8735093077727088055L, 6251876316883791716L, 9019451651358538049L, 8513460015102590623L}).toString();
        }
        zzcec.zzg(new ObfuscatedString(new long[]{1627036910055994951L, -2536601662898552601L, -108835142187093116L, 7287089568175968398L, -4906790928812824021L}).toString().concat(obfuscatedString));
        zzi(zzbpvVar, 0);
    }
}
