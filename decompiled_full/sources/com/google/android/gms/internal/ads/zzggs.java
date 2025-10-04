package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import j$.util.DesugarCollections;
import j$.util.concurrent.ConcurrentHashMap;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentMap;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzggs {
    private final Class zza;
    private zzggt zzd;
    private ConcurrentMap zzb = new ConcurrentHashMap();
    private final List zzc = new ArrayList();
    private zzgrw zze = zzgrw.zza;

    public /* synthetic */ zzggs(Class cls, zzggr zzggrVar) {
        this.zza = cls;
    }

    private final zzggs zze(@Nullable Object obj, @Nullable Object obj2, zzgvf zzgvfVar, boolean z) {
        byte[] array;
        if (this.zzb != null) {
            if (obj == null && obj2 == null) {
                throw new GeneralSecurityException(new ObfuscatedString(new long[]{-3079570778274616059L, 4736907345337370951L, 2446138730858632685L, 4201712335504484486L, 63616510291257670L, -1522924535283004457L, 8321411364698821229L, -8488589742680056527L, -1635490304981420271L}).toString());
            }
            if (zzgvfVar.zzk() == 3) {
                Integer valueOf = Integer.valueOf(zzgvfVar.zza());
                if (zzgvfVar.zzf() == zzgvz.zzd) {
                    valueOf = null;
                }
                zzggc zzb = zzgoe.zzd().zzb(zzgox.zza(zzgvfVar.zzc().zzg(), zzgvfVar.zzc().zzf(), zzgvfVar.zzc().zzc(), zzgvfVar.zzf(), valueOf), zzghc.zza());
                int ordinal = zzgvfVar.zzf().ordinal();
                if (ordinal != 1) {
                    if (ordinal != 2) {
                        if (ordinal != 3) {
                            if (ordinal != 4) {
                                throw new GeneralSecurityException(new ObfuscatedString(new long[]{1405712417493375936L, -3817066794562457135L, -6737673833651782209L, -3885622657843357341L, -8905808245599421934L}).toString());
                            }
                        } else {
                            array = zzgfx.zza;
                        }
                    }
                    array = ByteBuffer.allocate(5).put((byte) 0).putInt(zzgvfVar.zza()).array();
                } else {
                    array = ByteBuffer.allocate(5).put((byte) 1).putInt(zzgvfVar.zza()).array();
                }
                zzggt zzggtVar = new zzggt(obj, obj2, array, zzgvfVar.zzk(), zzgvfVar.zzf(), zzgvfVar.zza(), zzgvfVar.zzc().zzg(), zzb);
                ConcurrentMap concurrentMap = this.zzb;
                List list = this.zzc;
                ArrayList arrayList = new ArrayList();
                arrayList.add(zzggtVar);
                zzggv zzggvVar = new zzggv(zzggtVar.zzg(), null);
                List list2 = (List) concurrentMap.put(zzggvVar, DesugarCollections.unmodifiableList(arrayList));
                if (list2 != null) {
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.addAll(list2);
                    arrayList2.add(zzggtVar);
                    concurrentMap.put(zzggvVar, DesugarCollections.unmodifiableList(arrayList2));
                }
                list.add(zzggtVar);
                if (z) {
                    if (this.zzd == null) {
                        this.zzd = zzggtVar;
                    } else {
                        throw new IllegalStateException(new ObfuscatedString(new long[]{5606551918300930824L, -7808300971450899159L, 3736757506407332026L, 6382189203233194842L, -903731038314550988L, -8168642228537275723L}).toString());
                    }
                }
                return this;
            }
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{1727597002530892113L, -3382758649266721098L, -7687856874405868107L, 5106944115723270203L, 6887339561285228946L}).toString());
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{5905635221262774245L, 7980722163992076291L, 5892214228850794306L, 8855188519221815536L, -1131877765509352686L, 3069397504617901185L, -2408747423227392954L}).toString());
    }

    public final zzggs zza(@Nullable Object obj, @Nullable Object obj2, zzgvf zzgvfVar) {
        zze(obj, obj2, zzgvfVar, false);
        return this;
    }

    public final zzggs zzb(@Nullable Object obj, @Nullable Object obj2, zzgvf zzgvfVar) {
        zze(obj, obj2, zzgvfVar, true);
        return this;
    }

    public final zzggs zzc(zzgrw zzgrwVar) {
        if (this.zzb != null) {
            this.zze = zzgrwVar;
            return this;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-8666544285125417959L, -3612664938090142740L, 2084142470059684875L, 6094725023232697241L, -4578899074823461927L, -869771549480106786L, -7247933686862787977L}).toString());
    }

    public final zzggx zzd() {
        ConcurrentMap concurrentMap = this.zzb;
        if (concurrentMap != null) {
            zzggx zzggxVar = new zzggx(concurrentMap, this.zzc, this.zzd, this.zze, this.zza, null);
            this.zzb = null;
            return zzggxVar;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-7145435220106926611L, 5200191292460329641L, 2618749485804143990L, -8227627607170362341L, -8154843382390928243L}).toString());
    }
}
