package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzjy;
import com.google.android.gms.internal.measurement.zzkc;
import com.panda912.muddy.ObfuscatedString;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class zzkc<MessageType extends zzkc<MessageType, BuilderType>, BuilderType extends zzjy<MessageType, BuilderType>> extends zzil<MessageType, BuilderType> {
    private static final Map zza = new ConcurrentHashMap();
    protected zzmm zzc = zzmm.zzc();
    protected int zzd = -1;

    public static zzkc zzbC(Class cls) {
        Map map = zza;
        zzkc zzkcVar = (zzkc) map.get(cls);
        if (zzkcVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzkcVar = (zzkc) map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException(new ObfuscatedString(new long[]{7638608807170814086L, -3318555389424696746L, -4739476146138813829L, 8858371100801966445L, 605633147489950861L, 2260701896953770769L}).toString(), e);
            }
        }
        if (zzkcVar == null) {
            zzkcVar = (zzkc) ((zzkc) zzmv.zze(cls)).zzl(6, null, null);
            if (zzkcVar != null) {
                map.put(cls, zzkcVar);
            } else {
                throw new IllegalStateException();
            }
        }
        return zzkcVar;
    }

    public static zzkh zzbD() {
        return zzkd.zzf();
    }

    public static zzki zzbE() {
        return zzky.zzf();
    }

    public static zzki zzbF(zzki zzkiVar) {
        int i;
        int size = zzkiVar.size();
        if (size == 0) {
            i = 10;
        } else {
            i = size + size;
        }
        return zzkiVar.zzd(i);
    }

    public static zzkj zzbG() {
        return zzls.zze();
    }

    public static zzkj zzbH(zzkj zzkjVar) {
        int i;
        int size = zzkjVar.size();
        if (size == 0) {
            i = 10;
        } else {
            i = size + size;
        }
        return zzkjVar.zzd(i);
    }

    public static Object zzbK(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(new ObfuscatedString(new long[]{563538747378016484L, -5013792149442032343L, 3755036861479722640L, 1936096062985933310L, -1246252876523723718L, 2487306812907604236L, -8546012831851900847L, -7318953019449885229L, -7796020146807794203L, 724933225521902002L}).toString(), e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (!(cause instanceof RuntimeException)) {
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                throw new RuntimeException(new ObfuscatedString(new long[]{-1999169306825928999L, -5910826054284319014L, -8368333290876656391L, -3230206340391008961L, -7138700122257508806L, 3538099491487388729L, 4164350434738320710L, 9062758213453229713L, 9137107238579764409L}).toString(), cause);
            }
            throw ((RuntimeException) cause);
        }
    }

    public static Object zzbL(zzlj zzljVar, String str, Object[] objArr) {
        return new zzlt(zzljVar, str, objArr);
    }

    public static void zzbM(Class cls, zzkc zzkcVar) {
        zza.put(cls, zzkcVar);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zzlr.zza().zzb(getClass()).zzj(this, (zzkc) obj);
    }

    public final int hashCode() {
        int i = this.zzb;
        if (i != 0) {
            return i;
        }
        int zzb = zzlr.zza().zzb(getClass()).zzb(this);
        this.zzb = zzb;
        return zzb;
    }

    public final String toString() {
        return zzll.zza(this, super.toString());
    }

    public final zzjy zzbA() {
        return (zzjy) zzl(5, null, null);
    }

    public final zzjy zzbB() {
        zzjy zzjyVar = (zzjy) zzl(5, null, null);
        zzjyVar.zzaC(this);
        return zzjyVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzlj
    public final /* synthetic */ zzli zzbI() {
        return (zzjy) zzl(5, null, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzlj
    public final /* synthetic */ zzli zzbJ() {
        zzjy zzjyVar = (zzjy) zzl(5, null, null);
        zzjyVar.zzaC(this);
        return zzjyVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzlj
    public final void zzbN(zzjj zzjjVar) {
        zzlr.zza().zzb(getClass()).zzi(this, zzjk.zza(zzjjVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzlk
    public final /* synthetic */ zzlj zzbR() {
        return (zzkc) zzl(6, null, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzil
    public final int zzbu() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.measurement.zzil
    public final void zzbx(int i) {
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.measurement.zzlj
    public final int zzbz() {
        int i = this.zzd;
        if (i == -1) {
            int zza2 = zzlr.zza().zzb(getClass()).zza(this);
            this.zzd = zza2;
            return zza2;
        }
        return i;
    }

    public abstract Object zzl(int i, Object obj, Object obj2);
}
