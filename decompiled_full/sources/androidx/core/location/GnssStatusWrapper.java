package androidx.core.location;

import android.location.GnssStatus;
import android.os.Build;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import defpackage.AbstractC0617xd23d8a2a;

/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi(24)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class GnssStatusWrapper extends GnssStatusCompat {
    private final GnssStatus mWrapped;

    @RequiresApi(26)
    /* loaded from: classes.dex */
    public static class Api26Impl {
        private Api26Impl() {
        }

        public static float getCarrierFrequencyHz(GnssStatus gnssStatus, int i) {
            return gnssStatus.getCarrierFrequencyHz(i);
        }

        public static boolean hasCarrierFrequencyHz(GnssStatus gnssStatus, int i) {
            return gnssStatus.hasCarrierFrequencyHz(i);
        }
    }

    @RequiresApi(30)
    /* loaded from: classes.dex */
    public static class Api30Impl {
        private Api30Impl() {
        }

        public static float getBasebandCn0DbHz(GnssStatus gnssStatus, int i) {
            return gnssStatus.getBasebandCn0DbHz(i);
        }

        public static boolean hasBasebandCn0DbHz(GnssStatus gnssStatus, int i) {
            return gnssStatus.hasBasebandCn0DbHz(i);
        }
    }

    public GnssStatusWrapper(Object obj) {
        this.mWrapped = AbstractC0617xd23d8a2a.m3197x75d576dc(Preconditions.checkNotNull(AbstractC0617xd23d8a2a.m3197x75d576dc(obj)));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GnssStatusWrapper)) {
            return false;
        }
        return AbstractC0617xd23d8a2a.m3216x2a28ae4e(this.mWrapped, ((GnssStatusWrapper) obj).mWrapped);
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getAzimuthDegrees(int i) {
        return AbstractC0617xd23d8a2a.m3219xf0a984b7(this.mWrapped, i);
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getBasebandCn0DbHz(int i) {
        if (Build.VERSION.SDK_INT >= 30) {
            return Api30Impl.getBasebandCn0DbHz(this.mWrapped, i);
        }
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getCarrierFrequencyHz(int i) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.getCarrierFrequencyHz(this.mWrapped, i);
        }
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getCn0DbHz(int i) {
        return AbstractC0617xd23d8a2a.m3194xfbe0c504(this.mWrapped, i);
    }

    @Override // androidx.core.location.GnssStatusCompat
    public int getConstellationType(int i) {
        return AbstractC0617xd23d8a2a.m3221x5ac5058d(this.mWrapped, i);
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getElevationDegrees(int i) {
        return AbstractC0617xd23d8a2a.m3223xe698d(this.mWrapped, i);
    }

    @Override // androidx.core.location.GnssStatusCompat
    public int getSatelliteCount() {
        return AbstractC0617xd23d8a2a.m3220x6246a3ee(this.mWrapped);
    }

    @Override // androidx.core.location.GnssStatusCompat
    public int getSvid(int i) {
        return AbstractC0617xd23d8a2a.m3196x1378447b(this.mWrapped, i);
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasAlmanacData(int i) {
        return AbstractC0617xd23d8a2a.m3222x742e2fda(this.mWrapped, i);
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasBasebandCn0DbHz(int i) {
        if (Build.VERSION.SDK_INT >= 30) {
            return Api30Impl.hasBasebandCn0DbHz(this.mWrapped, i);
        }
        return false;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasCarrierFrequencyHz(int i) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.hasCarrierFrequencyHz(this.mWrapped, i);
        }
        return false;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasEphemerisData(int i) {
        return AbstractC0617xd23d8a2a.m3215xfad01aba(this.mWrapped, i);
    }

    public int hashCode() {
        return AbstractC0617xd23d8a2a.m3195x3271d0aa(this.mWrapped);
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean usedInFix(int i) {
        boolean usedInFix;
        usedInFix = this.mWrapped.usedInFix(i);
        return usedInFix;
    }
}
