package androidx.camera.video.internal.compat.quirk;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.Quirk;
import androidx.camera.core.impl.QuirkSettings;
import androidx.camera.core.impl.QuirkSettingsHolder;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import defpackage.C0674xf27a772;
import java.util.List;

/* loaded from: classes.dex */
public class DeviceQuirks {
    private static final String TAG = "DeviceQuirks";

    @NonNull
    private static volatile Quirks sQuirks;

    static {
        QuirkSettingsHolder.instance().observe(CameraXExecutors.directExecutor(), new C0674xf27a772(1));
    }

    private DeviceQuirks() {
    }

    @Nullable
    public static <T extends Quirk> T get(@NonNull Class<T> cls) {
        return (T) sQuirks.get(cls);
    }

    @NonNull
    public static Quirks getAll() {
        return sQuirks;
    }

    public static /* synthetic */ void lambda$static$0(QuirkSettings quirkSettings) {
        sQuirks = new Quirks(DeviceQuirksLoader.loadQuirks(quirkSettings));
        Logger.d(TAG, "video DeviceQuirks = " + Quirks.toString(sQuirks));
    }

    @NonNull
    public static <T extends Quirk> List<T> getAll(@NonNull Class<T> cls) {
        return sQuirks.getAll(cls);
    }
}
