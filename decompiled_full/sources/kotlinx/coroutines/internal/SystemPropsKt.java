package kotlinx.coroutines.internal;

import defpackage.AbstractC1196x2c4a2948;
import defpackage.AbstractC1222x6531b685;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"땩뒹돛뎰땰돝땥땬됐땟뎠딹들뒉듰돤뒨듻되딄땱땫딞딟땝땹뒻땲듻땸듸땄땸둣땸딃딨둔땥뒝뒉듌땀돸뒹도땍땨딟뎻땵땡땰돝땳땲딽땸될땫땪땭딃땦딤듰득땭딀둥딝땨땣딄땵둔딐딟땸뎻땱땋뒨든땨땧둑뒨돳딄뎹될땟땧뒻딁돤딹뒬듟뒝땩땁땠땐돨땩듔땠땔뒀두뎰땝뎽듰둠땯딐듟뒻딐딻땡땐딠듽땡뒝땤"}, d2 = {}, k = 4, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SystemPropsKt {
    public static final int getAVAILABLE_PROCESSORS() {
        return AbstractC1222x6531b685.f5627xfbe0c504;
    }

    @Nullable
    public static final String systemProp(@NotNull String str) {
        int i = AbstractC1222x6531b685.f5627xfbe0c504;
        try {
            return System.getProperty(str);
        } catch (SecurityException unused) {
            return null;
        }
    }

    public static /* synthetic */ int systemProp$default(String str, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            i2 = 1;
        }
        if ((i4 & 8) != 0) {
            i3 = Integer.MAX_VALUE;
        }
        return systemProp(str, i, i2, i3);
    }

    public static /* synthetic */ long systemProp$default(String str, long j, long j2, long j3, int i, Object obj) {
        if ((i & 4) != 0) {
            j2 = 1;
        }
        long j4 = j2;
        if ((i & 8) != 0) {
            j3 = Long.MAX_VALUE;
        }
        return systemProp(str, j, j4, j3);
    }

    public static final boolean systemProp(@NotNull String str, boolean z) {
        String systemProp = systemProp(str);
        return systemProp != null ? Boolean.parseBoolean(systemProp) : z;
    }

    public static final int systemProp(@NotNull String str, int i, int i2, int i3) {
        return (int) systemProp(str, i, i2, i3);
    }

    public static final long systemProp(@NotNull String str, long j, long j2, long j3) {
        String systemProp = systemProp(str);
        if (systemProp == null) {
            return j;
        }
        Long longOrNull = AbstractC1196x2c4a2948.toLongOrNull(systemProp);
        if (longOrNull == null) {
            throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + systemProp + '\'').toString());
        }
        long longValue = longOrNull.longValue();
        if (j2 <= longValue && longValue <= j3) {
            return longValue;
        }
        throw new IllegalStateException(("System property '" + str + "' should be in range " + j2 + ".." + j3 + ", but is '" + longValue + '\'').toString());
    }

    @NotNull
    public static final String systemProp(@NotNull String str, @NotNull String str2) {
        String systemProp = systemProp(str);
        return systemProp == null ? str2 : systemProp;
    }
}
