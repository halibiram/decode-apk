package coil3.content;

import android.view.View;
import coil3.request.ImageResult;
import coil3.request.ViewTargetRequestManagerKt;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcoil3/util/CoilUtils;", "", "Landroid/view/View;", "view", "", "dispose", "(Landroid/view/View;)V", "Lcoil3/request/ImageResult;", "result", "(Landroid/view/View;)Lcoil3/request/ImageResult;", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CoilUtils {

    @NotNull
    public static final CoilUtils INSTANCE = new Object();

    @JvmStatic
    public static final void dispose(@NotNull View view) {
        ViewTargetRequestManagerKt.getRequestManager(view).dispose();
    }

    @JvmStatic
    @Nullable
    public static final ImageResult result(@NotNull View view) {
        return ViewTargetRequestManagerKt.getRequestManager(view).getResult();
    }
}
