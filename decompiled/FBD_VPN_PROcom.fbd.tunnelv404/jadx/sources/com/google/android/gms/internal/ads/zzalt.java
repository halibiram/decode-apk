package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzalt {
    @Nullable
    public static zzalu zza(@Nullable zzalu zzaluVar, @Nullable String[] strArr, Map map) {
        int length;
        int i = 0;
        if (zzaluVar == null) {
            if (strArr == null) {
                return null;
            }
            int length2 = strArr.length;
            if (length2 == 1) {
                return (zzalu) map.get(strArr[0]);
            }
            if (length2 > 1) {
                zzalu zzaluVar2 = new zzalu();
                while (i < length2) {
                    zzaluVar2.zzl((zzalu) map.get(strArr[i]));
                    i++;
                }
                return zzaluVar2;
            }
        } else {
            if (strArr != null && strArr.length == 1) {
                zzaluVar.zzl((zzalu) map.get(strArr[0]));
                return zzaluVar;
            }
            if (strArr != null && (length = strArr.length) > 1) {
                while (i < length) {
                    zzaluVar.zzl((zzalu) map.get(strArr[i]));
                    i++;
                }
            }
        }
        return zzaluVar;
    }
}
