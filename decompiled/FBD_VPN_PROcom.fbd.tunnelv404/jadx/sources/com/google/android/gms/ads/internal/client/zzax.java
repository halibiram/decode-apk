package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzbhv;
import com.google.android.gms.internal.ads.zzbij;
import com.google.android.gms.internal.ads.zzcdv;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class zzax {

    @Nullable
    private static final zzce zza;

    static {
        zzce zzccVar;
        zzce zzceVar = null;
        try {
            Object newInstance = zzaw.class.getClassLoader().loadClass(new ObfuscatedString(new long[]{-8951615332006821281L, -8611873698872194473L, 8402765013029121245L, -307329339698663110L, 4374929944119225296L, -4072629430915551502L, -8626598949332094800L}).toString()).getDeclaredConstructor(null).newInstance(null);
            if (!(newInstance instanceof IBinder)) {
                zzcec.zzj(new ObfuscatedString(new long[]{3133172478497311662L, -3033665771321349991L, 1306654553466691614L, -2035115439048055088L, 6878117546672232197L, 7090114052749963213L, -4201417496344009061L}).toString());
            } else {
                IBinder iBinder = (IBinder) newInstance;
                if (iBinder != null) {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-1271240211855817255L, -2184040107606405827L, -6194429807744736341L, 1671946212195772356L, -6177484522403471284L, 3056877642945398536L, -2353612598816451902L, -9203896150828494663L}).toString());
                    if (queryLocalInterface instanceof zzce) {
                        zzccVar = (zzce) queryLocalInterface;
                    } else {
                        zzccVar = new zzcc(iBinder);
                    }
                    zzceVar = zzccVar;
                }
            }
        } catch (Exception unused) {
            zzcec.zzj(new ObfuscatedString(new long[]{-4122353467172747078L, 2695935808467504082L, -3730755982378457535L, 379734710731661938L, -4631940473343201319L, 2621357716495476192L}).toString());
        }
        zza = zzceVar;
    }

    @Nullable
    private final Object zze() {
        zzce zzceVar = zza;
        if (zzceVar != null) {
            try {
                return zzb(zzceVar);
            } catch (RemoteException e) {
                zzcec.zzk(new ObfuscatedString(new long[]{3032984647127533478L, 2804837615245960779L, 4544065168564730752L, -6926859737751702819L, -3586501434018336995L, -833814460056411825L, 3329149170068365478L, 3748880529561587080L}).toString(), e);
                return null;
            }
        }
        zzcec.zzj(new ObfuscatedString(new long[]{-4218231100346963482L, 2620624436054083587L, -5529626963308003557L, -8865403920488859019L, -6383059460912571582L, 487404723569349594L}).toString());
        return null;
    }

    @Nullable
    private final Object zzf() {
        try {
            return zzc();
        } catch (RemoteException e) {
            zzcec.zzk(new ObfuscatedString(new long[]{2724984178039276664L, -7708229677303298469L, 1257570579492752850L, 7249687365070971916L, -1014614415570881702L}).toString(), e);
            return null;
        }
    }

    @NonNull
    public abstract Object zza();

    @Nullable
    public abstract Object zzb(zzce zzceVar);

    @Nullable
    public abstract Object zzc();

    /* JADX WARN: Removed duplicated region for block: B:13:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzd(Context context, boolean z) {
        boolean z2;
        boolean z3;
        Object zze;
        if (!z) {
            zzay.zzb();
            if (!zzcdv.zzs(context, 12451000)) {
                zzcec.zze(new ObfuscatedString(new long[]{2768195652606488436L, 8861260471142800852L, 445004295456256412L, -2391154369794313743L, -7437578678619456992L, -5097090535079246171L}).toString());
                z = true;
            }
        }
        boolean z4 = false;
        if (DynamiteModule.getLocalVersion(context, new ObfuscatedString(new long[]{-9093660169360990636L, -3606024661855643696L, -6816767117858686165L, 3453960070771800964L, -5541492714516014688L, -3988210082374350035L}).toString()) > DynamiteModule.getRemoteVersion(context, new ObfuscatedString(new long[]{4351310719239655783L, 7718127681229822957L, 7470483985539879226L, -8719268854026162601L, -1541378677344954900L, -897123820481335602L}).toString())) {
            z2 = false;
        } else {
            z2 = true;
        }
        boolean z5 = !z2;
        zzbgc.zza(context);
        if (!((Boolean) zzbhv.zza.zze()).booleanValue()) {
            if (((Boolean) zzbhv.zzb.zze()).booleanValue()) {
                z3 = true;
                z4 = true;
                if (!z4) {
                    zze = zze();
                    if (zze == null && !z3) {
                        zze = zzf();
                    }
                } else {
                    Object zzf = zzf();
                    if (zzf == null) {
                        if (zzay.zze().nextInt(((Long) zzbij.zza.zze()).intValue()) == 0) {
                            Bundle bundle = new Bundle();
                            bundle.putString(new ObfuscatedString(new long[]{859467257478431744L, 8687981756883851085L}).toString(), new ObfuscatedString(new long[]{-1792926531337055632L, 6311141923488655451L, 5458902141582035476L}).toString());
                            bundle.putInt(new ObfuscatedString(new long[]{-1553119032100154706L, -3157852122258466633L, 4305226430697925939L}).toString(), 1);
                            zzay.zzb().zzn(context, zzay.zzc().zza, new ObfuscatedString(new long[]{-5991094252012643617L, -1890313555135752680L, -1862479279226990621L}).toString(), bundle, true);
                        }
                    }
                    zze = zzf == null ? zze() : zzf;
                }
                if (zze != null) {
                    return zza();
                }
                return zze;
            }
            z4 = z | z5;
        }
        z3 = false;
        if (!z4) {
        }
        if (zze != null) {
        }
    }
}
