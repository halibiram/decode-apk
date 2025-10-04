package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzafe extends zzafg {
    private long zzb;
    private long[] zzc;
    private long[] zzd;

    public zzafe() {
        super(new zzact());
        this.zzb = -9223372036854775807L;
        this.zzc = new long[0];
        this.zzd = new long[0];
    }

    private static Double zzg(zzfp zzfpVar) {
        return Double.valueOf(Double.longBitsToDouble(zzfpVar.zzt()));
    }

    @Nullable
    private static Object zzh(zzfp zzfpVar, int i) {
        if (i != 0) {
            boolean z = false;
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 8) {
                            if (i != 10) {
                                if (i != 11) {
                                    return null;
                                }
                                Date date = new Date((long) zzg(zzfpVar).doubleValue());
                                zzfpVar.zzL(2);
                                return date;
                            }
                            int zzp = zzfpVar.zzp();
                            ArrayList arrayList = new ArrayList(zzp);
                            for (int i2 = 0; i2 < zzp; i2++) {
                                Object zzh = zzh(zzfpVar, zzfpVar.zzm());
                                if (zzh != null) {
                                    arrayList.add(zzh);
                                }
                            }
                            return arrayList;
                        }
                        return zzj(zzfpVar);
                    }
                    HashMap hashMap = new HashMap();
                    while (true) {
                        String zzi = zzi(zzfpVar);
                        int zzm = zzfpVar.zzm();
                        if (zzm == 9) {
                            return hashMap;
                        }
                        Object zzh2 = zzh(zzfpVar, zzm);
                        if (zzh2 != null) {
                            hashMap.put(zzi, zzh2);
                        }
                    }
                } else {
                    return zzi(zzfpVar);
                }
            } else {
                if (zzfpVar.zzm() == 1) {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        } else {
            return zzg(zzfpVar);
        }
    }

    private static String zzi(zzfp zzfpVar) {
        int zzq = zzfpVar.zzq();
        int zzd = zzfpVar.zzd();
        zzfpVar.zzL(zzq);
        return new String(zzfpVar.zzM(), zzd, zzq);
    }

    private static HashMap zzj(zzfp zzfpVar) {
        int zzp = zzfpVar.zzp();
        HashMap hashMap = new HashMap(zzp);
        for (int i = 0; i < zzp; i++) {
            String zzi = zzi(zzfpVar);
            Object zzh = zzh(zzfpVar, zzfpVar.zzm());
            if (zzh != null) {
                hashMap.put(zzi, zzh);
            }
        }
        return hashMap;
    }

    @Override // com.google.android.gms.internal.ads.zzafg
    public final boolean zza(zzfp zzfpVar) {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzafg
    public final boolean zzb(zzfp zzfpVar, long j) {
        if (zzfpVar.zzm() == 2) {
            if (new ObfuscatedString(new long[]{7827472998550537741L, -973441788126068227L, 5889817531689878160L}).toString().equals(zzi(zzfpVar)) && zzfpVar.zzb() != 0 && zzfpVar.zzm() == 8) {
                HashMap zzj = zzj(zzfpVar);
                Object obj = zzj.get(new ObfuscatedString(new long[]{9150864311993075526L, -4263624778197775402L}).toString());
                if (obj instanceof Double) {
                    double doubleValue = ((Double) obj).doubleValue();
                    if (doubleValue > 0.0d) {
                        this.zzb = (long) (doubleValue * 1000000.0d);
                    }
                }
                Object obj2 = zzj.get(new ObfuscatedString(new long[]{7006174505665225925L, -384545841073935972L, -5307426196675177076L}).toString());
                if (obj2 instanceof Map) {
                    Map map = (Map) obj2;
                    Object obj3 = map.get(new ObfuscatedString(new long[]{503961410962005689L, -7783235776271740901L, -4610559747419033792L}).toString());
                    Object obj4 = map.get(new ObfuscatedString(new long[]{3660891408930499640L, 4873863247274199237L}).toString());
                    if ((obj3 instanceof List) && (obj4 instanceof List)) {
                        List list = (List) obj3;
                        List list2 = (List) obj4;
                        int size = list2.size();
                        this.zzc = new long[size];
                        this.zzd = new long[size];
                        for (int i = 0; i < size; i++) {
                            Object obj5 = list.get(i);
                            Object obj6 = list2.get(i);
                            if ((obj6 instanceof Double) && (obj5 instanceof Double)) {
                                this.zzc[i] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
                                this.zzd[i] = ((Double) obj5).longValue();
                            } else {
                                this.zzc = new long[0];
                                this.zzd = new long[0];
                                break;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final long zzc() {
        return this.zzb;
    }

    public final long[] zzd() {
        return this.zzd;
    }

    public final long[] zze() {
        return this.zzc;
    }
}
