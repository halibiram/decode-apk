package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzblk extends UnifiedNativeAd {
    private final zzblj zza;
    private final zzbjn zzc;
    private final NativeAd.AdChoicesInfo zze;
    private final List zzb = new ArrayList();
    private final VideoController zzd = new VideoController();
    private final List zzf = new ArrayList();

    /* JADX WARN: Can't wrap try/catch for region: R(15:1|(3:2|3|(2:5|(5:8|(1:22)(2:12|(1:14)(1:21))|(3:16|17|18)(1:20)|19|6)))|24|25|(2:27|(5:30|(1:32)(1:39)|(3:34|35|36)(1:38)|37|28))|41|42|(7:44|45|46|47|(2:49|50)|52|53)|58|45|46|47|(0)|52|53) */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0104, code lost:
    
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0105, code lost:
    
        com.google.android.gms.internal.ads.zzcec.zzh(new com.panda912.muddy.ObfuscatedString(new long[]{-1767845039774305088L}).toString(), r8);
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f7 A[Catch: RemoteException -> 0x0104, TRY_LEAVE, TryCatch #2 {RemoteException -> 0x0104, blocks: (B:47:0x00ef, B:49:0x00f7), top: B:46:0x00ef }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzblk(zzblj zzbljVar) {
        zzbjn zzbjnVar;
        zzbjm zzk;
        com.google.android.gms.ads.internal.client.zzcw zzcwVar;
        zzbjm zzbjmVar;
        IBinder iBinder;
        this.zza = zzbljVar;
        zzbjg zzbjgVar = null;
        try {
            List zzu = zzbljVar.zzu();
            if (zzu != null) {
                for (Object obj : zzu) {
                    if (!(obj instanceof IBinder) || (iBinder = (IBinder) obj) == null) {
                        zzbjmVar = null;
                    } else {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{5389882845824171272L, -6622818013117110396L, -1186625626716110501L, -6090398855482969442L, 1225960791275418485L, -106020061002445075L, -2494956834796778843L, -8448862294877866092L, -5790199123529608057L, 8054609072785611345L}).toString());
                        if (queryLocalInterface instanceof zzbjm) {
                            zzbjmVar = (zzbjm) queryLocalInterface;
                        } else {
                            zzbjmVar = new zzbjk(iBinder);
                        }
                    }
                    if (zzbjmVar != null) {
                        this.zzb.add(new zzbjn(zzbjmVar));
                    }
                }
            }
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-3584817869417467220L}).toString(), e);
        }
        try {
            List zzv = this.zza.zzv();
            if (zzv != null) {
                for (Object obj2 : zzv) {
                    if (obj2 instanceof IBinder) {
                        zzcwVar = com.google.android.gms.ads.internal.client.zzcv.zzb((IBinder) obj2);
                    } else {
                        zzcwVar = null;
                    }
                    if (zzcwVar != null) {
                        this.zzf.add(new com.google.android.gms.ads.internal.client.zzcx(zzcwVar));
                    }
                }
            }
        } catch (RemoteException e2) {
            zzcec.zzh(new ObfuscatedString(new long[]{5542047021128441974L}).toString(), e2);
        }
        try {
            zzk = this.zza.zzk();
        } catch (RemoteException e3) {
            zzcec.zzh(new ObfuscatedString(new long[]{-2807438881505842761L}).toString(), e3);
        }
        if (zzk != null) {
            zzbjnVar = new zzbjn(zzk);
            this.zzc = zzbjnVar;
            if (this.zza.zzi() != null) {
                zzbjgVar = new zzbjg(this.zza.zzi());
            }
            this.zze = zzbjgVar;
        }
        zzbjnVar = null;
        this.zzc = zzbjnVar;
        if (this.zza.zzi() != null) {
        }
        this.zze = zzbjgVar;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void performClick(Bundle bundle) {
        try {
            this.zza.zzz(bundle);
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{6723521907481997816L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final boolean recordImpression(Bundle bundle) {
        try {
            return this.zza.zzI(bundle);
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{1349101803988340926L}).toString(), e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void reportTouchEvent(Bundle bundle) {
        try {
            this.zza.zzB(bundle);
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{729469937310338207L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final VideoController zza() {
        try {
            if (this.zza.zzh() != null) {
                this.zzd.zzb(this.zza.zzh());
            }
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{1629217495091863068L, 5881712440146538451L, -7791410263542707791L, 7228820126655181530L, 336882782912430326L, 4961055213916955492L, -2780929423225417083L, 1208697337131444957L}).toString(), e);
        }
        return this.zzd;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final NativeAd.Image zzb() {
        return this.zzc;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    @Nullable
    public final Double zzc() {
        try {
            double zze = this.zza.zze();
            if (zze == -1.0d) {
                return null;
            }
            return Double.valueOf(zze);
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{3001716898907889109L}).toString(), e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    @Nullable
    public final Object zzd() {
        try {
            IObjectWrapper zzl = this.zza.zzl();
            if (zzl != null) {
                return ObjectWrapper.unwrap(zzl);
            }
            return null;
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-8871986025109038358L}).toString(), e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    @Nullable
    public final String zze() {
        try {
            return this.zza.zzn();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{2355818019961418184L}).toString(), e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    @Nullable
    public final String zzf() {
        try {
            return this.zza.zzo();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-2995879777513141226L}).toString(), e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    @Nullable
    public final String zzg() {
        try {
            return this.zza.zzp();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-4480950810855729652L}).toString(), e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    @Nullable
    public final String zzh() {
        try {
            return this.zza.zzq();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-7047567946369209004L}).toString(), e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    @Nullable
    public final String zzi() {
        try {
            return this.zza.zzs();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{2725748460891275855L}).toString(), e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    @Nullable
    public final String zzj() {
        try {
            return this.zza.zzt();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{769554353472256575L}).toString(), e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final List zzk() {
        return this.zzb;
    }
}
