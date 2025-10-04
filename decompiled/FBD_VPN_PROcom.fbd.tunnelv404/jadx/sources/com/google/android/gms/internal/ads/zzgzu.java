package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgzp;
import com.google.android.gms.internal.ads.zzgzu;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class zzgzu<MessageType extends zzgzu<MessageType, BuilderType>, BuilderType extends zzgzp<MessageType, BuilderType>> extends zzgxt<MessageType, BuilderType> {
    private static final Map zzb = new ConcurrentHashMap();
    private int zzd = -1;
    protected zzhcq zzc = zzhcq.zzc();

    private final int zza(zzhby zzhbyVar) {
        return zzhbn.zza().zzb(getClass()).zza(this);
    }

    public static zzgzu zzaC(Class cls) {
        Map map = zzb;
        zzgzu zzgzuVar = (zzgzu) map.get(cls);
        if (zzgzuVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzgzuVar = (zzgzu) map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException(new ObfuscatedString(new long[]{-8669388972642965715L, 4450907388350711451L, 6063044388078507196L, -1076249157928525541L, 5291204568331474493L, -7911554280604775590L}).toString(), e);
            }
        }
        if (zzgzuVar == null) {
            zzgzuVar = (zzgzu) ((zzgzu) zzhcz.zzg(cls)).zzb(6, null, null);
            if (zzgzuVar != null) {
                map.put(cls, zzgzuVar);
            } else {
                throw new IllegalStateException();
            }
        }
        return zzgzuVar;
    }

    public static zzgzu zzaE(zzgzu zzgzuVar, zzgyl zzgylVar) {
        zzgzf zzgzfVar = zzgzf.zza;
        zzgyt zzl = zzgylVar.zzl();
        zzgzu zzaD = zzgzuVar.zzaD();
        try {
            zzhby zzb2 = zzhbn.zza().zzb(zzaD.getClass());
            zzb2.zzh(zzaD, zzgyu.zzq(zzl), zzgzfVar);
            zzb2.zzf(zzaD);
            try {
                zzl.zzz(0);
                zzc(zzaD);
                zzc(zzaD);
                return zzaD;
            } catch (zzhag e) {
                e.zzh(zzaD);
                throw e;
            }
        } catch (zzhag e2) {
            e = e2;
            if (e.zzl()) {
                e = new zzhag(e);
            }
            e.zzh(zzaD);
            throw e;
        } catch (zzhco e3) {
            zzhag zza = e3.zza();
            zza.zzh(zzaD);
            throw zza;
        } catch (IOException e4) {
            if (e4.getCause() instanceof zzhag) {
                throw ((zzhag) e4.getCause());
            }
            zzhag zzhagVar = new zzhag(e4);
            zzhagVar.zzh(zzaD);
            throw zzhagVar;
        } catch (RuntimeException e5) {
            if (e5.getCause() instanceof zzhag) {
                throw ((zzhag) e5.getCause());
            }
            throw e5;
        }
    }

    public static zzgzu zzaF(zzgzu zzgzuVar, byte[] bArr) {
        zzgzu zzd = zzd(zzgzuVar, bArr, 0, bArr.length, zzgzf.zza);
        zzc(zzd);
        return zzd;
    }

    public static zzgzu zzaG(zzgzu zzgzuVar, zzgyl zzgylVar, zzgzf zzgzfVar) {
        zzgyt zzl = zzgylVar.zzl();
        zzgzu zzaD = zzgzuVar.zzaD();
        try {
            zzhby zzb2 = zzhbn.zza().zzb(zzaD.getClass());
            zzb2.zzh(zzaD, zzgyu.zzq(zzl), zzgzfVar);
            zzb2.zzf(zzaD);
            try {
                zzl.zzz(0);
                zzc(zzaD);
                return zzaD;
            } catch (zzhag e) {
                e.zzh(zzaD);
                throw e;
            }
        } catch (zzhag e2) {
            e = e2;
            if (e.zzl()) {
                e = new zzhag(e);
            }
            e.zzh(zzaD);
            throw e;
        } catch (zzhco e3) {
            zzhag zza = e3.zza();
            zza.zzh(zzaD);
            throw zza;
        } catch (IOException e4) {
            if (e4.getCause() instanceof zzhag) {
                throw ((zzhag) e4.getCause());
            }
            zzhag zzhagVar = new zzhag(e4);
            zzhagVar.zzh(zzaD);
            throw zzhagVar;
        } catch (RuntimeException e5) {
            if (e5.getCause() instanceof zzhag) {
                throw ((zzhag) e5.getCause());
            }
            throw e5;
        }
    }

    public static zzgzu zzaH(zzgzu zzgzuVar, InputStream inputStream, zzgzf zzgzfVar) {
        zzgyt zzH = zzgyt.zzH(inputStream, 4096);
        zzgzu zzaD = zzgzuVar.zzaD();
        try {
            zzhby zzb2 = zzhbn.zza().zzb(zzaD.getClass());
            zzb2.zzh(zzaD, zzgyu.zzq(zzH), zzgzfVar);
            zzb2.zzf(zzaD);
            zzc(zzaD);
            return zzaD;
        } catch (zzhag e) {
            e = e;
            if (e.zzl()) {
                e = new zzhag(e);
            }
            e.zzh(zzaD);
            throw e;
        } catch (zzhco e2) {
            zzhag zza = e2.zza();
            zza.zzh(zzaD);
            throw zza;
        } catch (IOException e3) {
            if (e3.getCause() instanceof zzhag) {
                throw ((zzhag) e3.getCause());
            }
            zzhag zzhagVar = new zzhag(e3);
            zzhagVar.zzh(zzaD);
            throw zzhagVar;
        } catch (RuntimeException e4) {
            if (e4.getCause() instanceof zzhag) {
                throw ((zzhag) e4.getCause());
            }
            throw e4;
        }
    }

    public static zzgzu zzaI(zzgzu zzgzuVar, byte[] bArr, zzgzf zzgzfVar) {
        zzgzu zzd = zzd(zzgzuVar, bArr, 0, bArr.length, zzgzfVar);
        zzc(zzd);
        return zzd;
    }

    public static zzgzz zzaJ() {
        return zzgzv.zzf();
    }

    public static zzgzz zzaK(zzgzz zzgzzVar) {
        int i;
        int size = zzgzzVar.size();
        if (size == 0) {
            i = 10;
        } else {
            i = size + size;
        }
        return zzgzzVar.zzd(i);
    }

    public static zzhac zzaL() {
        return zzhat.zzf();
    }

    public static zzhac zzaM(zzhac zzhacVar) {
        int i;
        int size = zzhacVar.size();
        if (size == 0) {
            i = 10;
        } else {
            i = size + size;
        }
        return zzhacVar.zzd(i);
    }

    public static zzhad zzaN() {
        return zzhbo.zze();
    }

    public static zzhad zzaO(zzhad zzhadVar) {
        int i;
        int size = zzhadVar.size();
        if (size == 0) {
            i = 10;
        } else {
            i = size + size;
        }
        return zzhadVar.zzd(i);
    }

    public static Object zzaQ(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(new ObfuscatedString(new long[]{6259132105701002546L, -2577076174428023702L, -1226641197698442031L, 6673527675925545L, -6145704267676807855L, 165293013294094316L, 2828602138491342034L, -7114877458373142908L, -1499700772516604761L, 6158701569573840278L}).toString(), e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (!(cause instanceof RuntimeException)) {
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                throw new RuntimeException(new ObfuscatedString(new long[]{1672076710986103099L, -1422195381309056668L, 8170364159499723114L, 9169807441589109498L, -1474280930859372935L, -3808361275246963233L, 9116409629246954133L, 1870267287225609623L, 5767468122127727573L}).toString(), cause);
            }
            throw ((RuntimeException) cause);
        }
    }

    public static Object zzaR(zzhbe zzhbeVar, String str, Object[] objArr) {
        return new zzhbp(zzhbeVar, str, objArr);
    }

    public static void zzaU(Class cls, zzgzu zzgzuVar) {
        zzgzuVar.zzaT();
        zzb.put(cls, zzgzuVar);
    }

    private static zzgzu zzc(zzgzu zzgzuVar) {
        if (zzgzuVar != null && !zzgzuVar.zzaX()) {
            zzhag zza = new zzhco(zzgzuVar).zza();
            zza.zzh(zzgzuVar);
            throw zza;
        }
        return zzgzuVar;
    }

    private static zzgzu zzd(zzgzu zzgzuVar, byte[] bArr, int i, int i2, zzgzf zzgzfVar) {
        zzgzu zzaD = zzgzuVar.zzaD();
        try {
            zzhby zzb2 = zzhbn.zza().zzb(zzaD.getClass());
            zzb2.zzi(zzaD, bArr, 0, i2, new zzgxx(zzgzfVar));
            zzb2.zzf(zzaD);
            return zzaD;
        } catch (zzhag e) {
            e = e;
            if (e.zzl()) {
                e = new zzhag(e);
            }
            e.zzh(zzaD);
            throw e;
        } catch (zzhco e2) {
            zzhag zza = e2.zza();
            zza.zzh(zzaD);
            throw zza;
        } catch (IOException e3) {
            if (e3.getCause() instanceof zzhag) {
                throw ((zzhag) e3.getCause());
            }
            zzhag zzhagVar = new zzhag(e3);
            zzhagVar.zzh(zzaD);
            throw zzhagVar;
        } catch (IndexOutOfBoundsException unused) {
            zzhag zzj = zzhag.zzj();
            zzj.zzh(zzaD);
            throw zzj;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zzhbn.zza().zzb(getClass()).zzj(this, (zzgzu) obj);
    }

    public final int hashCode() {
        if (!zzaY()) {
            int i = this.zza;
            if (i == 0) {
                int zzay = zzay();
                this.zza = zzay;
                return zzay;
            }
            return i;
        }
        return zzay();
    }

    public final String toString() {
        return zzhbg.zza(this, super.toString());
    }

    public final zzgzp zzaA() {
        return (zzgzp) zzb(5, null, null);
    }

    public final zzgzp zzaB() {
        zzgzp zzgzpVar = (zzgzp) zzb(5, null, null);
        zzgzpVar.zzaj(this);
        return zzgzpVar;
    }

    public final zzgzu zzaD() {
        return (zzgzu) zzb(4, null, null);
    }

    @Override // com.google.android.gms.internal.ads.zzhbe
    public final /* synthetic */ zzhbd zzaP() {
        return (zzgzp) zzb(5, null, null);
    }

    public final void zzaS() {
        zzhbn.zza().zzb(getClass()).zzf(this);
        zzaT();
    }

    public final void zzaT() {
        this.zzd &= Integer.MAX_VALUE;
    }

    public final void zzaV(int i) {
        this.zzd = (this.zzd & Integer.MIN_VALUE) | Integer.MAX_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzhbe
    public final void zzaW(zzgza zzgzaVar) {
        zzhbn.zza().zzb(getClass()).zzm(this, zzgzb.zza(zzgzaVar));
    }

    public final boolean zzaX() {
        zzgzu<MessageType, BuilderType> zzgzuVar;
        byte byteValue = ((Byte) zzb(1, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean zzk = zzhbn.zza().zzb(getClass()).zzk(this);
        if (true != zzk) {
            zzgzuVar = null;
        } else {
            zzgzuVar = this;
        }
        zzb(2, zzgzuVar, null);
        return zzk;
    }

    public final boolean zzaY() {
        return (this.zzd & Integer.MIN_VALUE) != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgxt
    public final int zzat(zzhby zzhbyVar) {
        if (zzaY()) {
            int zza = zzhbyVar.zza(this);
            if (zza >= 0) {
                return zza;
            }
            throw new IllegalStateException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-2122914437981795360L, 25666776529407589L, -8216498254907235598L, 3198229958352599734L, 7657601020122258795L, -3143017568645492115L, -382544062633123527L}), new StringBuilder(), zza));
        }
        int i = this.zzd & Integer.MAX_VALUE;
        if (i == Integer.MAX_VALUE) {
            int zza2 = zzhbyVar.zza(this);
            if (zza2 >= 0) {
                this.zzd = (this.zzd & Integer.MIN_VALUE) | zza2;
                return zza2;
            }
            throw new IllegalStateException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{262070263367288515L, -5012596975658087394L, -8812136740172044478L, -1802100014549864137L, 6827390901332457998L, 261977084942758556L, 8398483818284384574L}), new StringBuilder(), zza2));
        }
        return i;
    }

    public final int zzay() {
        return zzhbn.zza().zzb(getClass()).zzb(this);
    }

    @Override // com.google.android.gms.internal.ads.zzhbe
    public final int zzaz() {
        int i;
        if (zzaY()) {
            i = zza(null);
            if (i < 0) {
                throw new IllegalStateException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-9011387209254860222L, -6915626934255108802L, -8124084151456700637L, 1526231461087526937L, 8373122342101400472L, -1176451645723320479L, -2240719146330598923L}), new StringBuilder(), i));
            }
        } else {
            i = this.zzd & Integer.MAX_VALUE;
            if (i == Integer.MAX_VALUE) {
                i = zza(null);
                if (i >= 0) {
                    this.zzd = (this.zzd & Integer.MIN_VALUE) | i;
                } else {
                    throw new IllegalStateException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{5359102435374015721L, -4803826879054940605L, 7412466580144513727L, -9205508116380906358L, -8347236047268478961L, 8066044835553339908L, 553596779414261806L}), new StringBuilder(), i));
                }
            }
        }
        return i;
    }

    public abstract Object zzb(int i, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.ads.zzhbf
    public final /* synthetic */ zzhbe zzbk() {
        return (zzgzu) zzb(6, null, null);
    }
}
