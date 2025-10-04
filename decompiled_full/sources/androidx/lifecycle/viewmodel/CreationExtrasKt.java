package androidx.lifecycle.viewmodel;

import androidx.lifecycle.viewmodel.CreationExtras;
import defpackage.AbstractC0962xa4a1ff52;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0004H\u0086\u0002\u001a\u0015\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0086\u0002\u001a\u0015\u0010\b\u001a\u00020\t*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0002H\u0086\u0002¨\u0006\n"}, d2 = {"contains", "", "Landroidx/lifecycle/viewmodel/CreationExtras;", "key", "Landroidx/lifecycle/viewmodel/CreationExtras$Key;", "plus", "Landroidx/lifecycle/viewmodel/MutableCreationExtras;", "creationExtras", "plusAssign", "", "lifecycle-viewmodel_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CreationExtrasKt {
    public static final boolean contains(@NotNull CreationExtras creationExtras, @NotNull CreationExtras.Key<?> key) {
        Intrinsics.checkNotNullParameter(creationExtras, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        return creationExtras.getExtras$lifecycle_viewmodel_release().containsKey(key);
    }

    @NotNull
    public static final MutableCreationExtras plus(@NotNull CreationExtras creationExtras, @NotNull CreationExtras creationExtras2) {
        Intrinsics.checkNotNullParameter(creationExtras, "<this>");
        Intrinsics.checkNotNullParameter(creationExtras2, "creationExtras");
        return new MutableCreationExtras((Map<CreationExtras.Key<?>, ? extends Object>) AbstractC0962xa4a1ff52.plus(creationExtras.getExtras$lifecycle_viewmodel_release(), creationExtras2.getExtras$lifecycle_viewmodel_release()));
    }

    public static final void plusAssign(@NotNull MutableCreationExtras mutableCreationExtras, @NotNull CreationExtras creationExtras) {
        Intrinsics.checkNotNullParameter(mutableCreationExtras, "<this>");
        Intrinsics.checkNotNullParameter(creationExtras, "creationExtras");
        mutableCreationExtras.getExtras$lifecycle_viewmodel_release().putAll(creationExtras.getExtras$lifecycle_viewmodel_release());
    }
}
