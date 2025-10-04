package androidx.core.content;

import android.content.LocusId;
import android.os.Build;
import androidx.annotation.RequiresApi;
import androidx.core.util.Preconditions;
import defpackage.AbstractC0362x4440ab85;

/* loaded from: classes.dex */
public final class LocusIdCompat {
    private final String mId;
    private final LocusId mWrapped;

    @RequiresApi(29)
    /* loaded from: classes.dex */
    public static class Api29Impl {
        private Api29Impl() {
        }

        public static LocusId create(String str) {
            return new LocusId(str);
        }

        public static String getId(LocusId locusId) {
            return locusId.getId();
        }
    }

    public LocusIdCompat(String str) {
        this.mId = (String) Preconditions.checkStringNotEmpty(str, "id cannot be empty");
        if (Build.VERSION.SDK_INT >= 29) {
            this.mWrapped = Api29Impl.create(str);
        } else {
            this.mWrapped = null;
        }
    }

    private String getSanitizedId() {
        return this.mId.length() + "_chars";
    }

    @RequiresApi(29)
    public static LocusIdCompat toLocusIdCompat(LocusId locusId) {
        Preconditions.checkNotNull(locusId, "locusId cannot be null");
        return new LocusIdCompat((String) Preconditions.checkStringNotEmpty(Api29Impl.getId(locusId), "id cannot be empty"));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || LocusIdCompat.class != obj.getClass()) {
            return false;
        }
        LocusIdCompat locusIdCompat = (LocusIdCompat) obj;
        String str = this.mId;
        if (str == null) {
            if (locusIdCompat.mId == null) {
                return true;
            }
            return false;
        }
        return str.equals(locusIdCompat.mId);
    }

    public String getId() {
        return this.mId;
    }

    public int hashCode() {
        int hashCode;
        String str = this.mId;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return 31 + hashCode;
    }

    @RequiresApi(29)
    public LocusId toLocusId() {
        return this.mWrapped;
    }

    public String toString() {
        return AbstractC0362x4440ab85.m2936xd2bcb0cf(new StringBuilder("LocusIdCompat["), getSanitizedId(), "]");
    }
}
