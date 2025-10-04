package androidx.core.database;

import android.database.CursorWindow;
import android.os.Build;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public final class CursorWindowCompat {

    @RequiresApi(28)
    /* loaded from: classes.dex */
    public static class Api28Impl {
        private Api28Impl() {
        }

        public static CursorWindow createCursorWindow(String str, long j) {
            return new CursorWindow(str, j);
        }
    }

    private CursorWindowCompat() {
    }

    public static CursorWindow create(String str, long j) {
        if (Build.VERSION.SDK_INT >= 28) {
            return Api28Impl.createCursorWindow(str, j);
        }
        return new CursorWindow(str);
    }
}
