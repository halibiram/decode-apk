package coil3.request;

import android.view.View;
import coil3.core.R;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"requestManager", "Lcoil3/request/ViewTargetRequestManager;", "Landroid/view/View;", "getRequestManager", "(Landroid/view/View;)Lcoil3/request/ViewTargetRequestManager;", "coil-core_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nViewTargetRequestManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewTargetRequestManager.kt\ncoil3/request/ViewTargetRequestManagerKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,113:1\n1#2:114\n*E\n"})
/* loaded from: classes.dex */
public final class ViewTargetRequestManagerKt {
    @NotNull
    public static final ViewTargetRequestManager getRequestManager(@NotNull View view) {
        ViewTargetRequestManager viewTargetRequestManager;
        int i = R.id.coil3_request_manager;
        Object tag = view.getTag(i);
        ViewTargetRequestManager viewTargetRequestManager2 = null;
        if (tag instanceof ViewTargetRequestManager) {
            viewTargetRequestManager = (ViewTargetRequestManager) tag;
        } else {
            viewTargetRequestManager = null;
        }
        if (viewTargetRequestManager == null) {
            synchronized (view) {
                try {
                    Object tag2 = view.getTag(i);
                    if (tag2 instanceof ViewTargetRequestManager) {
                        viewTargetRequestManager2 = (ViewTargetRequestManager) tag2;
                    }
                    if (viewTargetRequestManager2 != null) {
                        viewTargetRequestManager = viewTargetRequestManager2;
                    } else {
                        viewTargetRequestManager = new ViewTargetRequestManager(view);
                        view.addOnAttachStateChangeListener(viewTargetRequestManager);
                        view.setTag(i, viewTargetRequestManager);
                    }
                } finally {
                }
            }
        }
        return viewTargetRequestManager;
    }
}
