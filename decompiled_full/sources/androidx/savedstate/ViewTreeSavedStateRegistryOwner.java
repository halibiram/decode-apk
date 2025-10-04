package androidx.savedstate;

import android.view.View;
import androidx.core.viewtree.ViewTree;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0002\b\u0005\u001a\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0004*\u00020\u0002H\u0007¢\u0006\u0002\b\u0007¨\u0006\b"}, d2 = {"setViewTreeSavedStateRegistryOwner", "", "Landroid/view/View;", "owner", "Landroidx/savedstate/SavedStateRegistryOwner;", "set", "findViewTreeSavedStateRegistryOwner", "get", "savedstate_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
@JvmName(name = "ViewTreeSavedStateRegistryOwner")
/* loaded from: classes.dex */
public final class ViewTreeSavedStateRegistryOwner {
    @JvmName(name = "get")
    @Nullable
    public static final SavedStateRegistryOwner get(@NotNull View view) {
        SavedStateRegistryOwner savedStateRegistryOwner;
        Intrinsics.checkNotNullParameter(view, "<this>");
        while (view != null) {
            Object tag = view.getTag(R.id.view_tree_saved_state_registry_owner);
            if (tag instanceof SavedStateRegistryOwner) {
                savedStateRegistryOwner = (SavedStateRegistryOwner) tag;
            } else {
                savedStateRegistryOwner = null;
            }
            if (savedStateRegistryOwner != null) {
                return savedStateRegistryOwner;
            }
            Object parentOrViewTreeDisjointParent = ViewTree.getParentOrViewTreeDisjointParent(view);
            if (parentOrViewTreeDisjointParent instanceof View) {
                view = (View) parentOrViewTreeDisjointParent;
            } else {
                view = null;
            }
        }
        return null;
    }

    @JvmName(name = "set")
    public static final void set(@NotNull View view, @Nullable SavedStateRegistryOwner savedStateRegistryOwner) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setTag(R.id.view_tree_saved_state_registry_owner, savedStateRegistryOwner);
    }
}
