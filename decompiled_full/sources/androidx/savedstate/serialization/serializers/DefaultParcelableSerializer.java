package androidx.savedstate.serialization.serializers;

import android.os.Parcelable;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/savedstate/serialization/serializers/DefaultParcelableSerializer;", "Landroidx/savedstate/serialization/serializers/ParcelableSerializer;", "Landroid/os/Parcelable;", "<init>", "()V", "savedstate_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DefaultParcelableSerializer extends ParcelableSerializer<Parcelable> {

    @NotNull
    public static final DefaultParcelableSerializer INSTANCE = new DefaultParcelableSerializer();

    private DefaultParcelableSerializer() {
    }
}
