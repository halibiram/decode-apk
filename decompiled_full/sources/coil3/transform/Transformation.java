package coil3.transform;

import android.graphics.Bitmap;
import coil3.size.Size;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J&\u0010\b\u001a\u00060\tj\u0002`\n2\n\u0010\u000b\u001a\u00060\tj\u0002`\n2\u0006\u0010\f\u001a\u00020\rH¦@¢\u0006\u0002\u0010\u000eJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0005H\u0016R\u0012\u0010\u0004\u001a\u00020\u0005X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0015"}, d2 = {"Lcoil3/transform/Transformation;", "", "<init>", "()V", "cacheKey", "", "getCacheKey", "()Ljava/lang/String;", "transform", "Landroid/graphics/Bitmap;", "Lcoil3/Bitmap;", "input", "size", "Lcoil3/size/Size;", "(Landroid/graphics/Bitmap;Lcoil3/size/Size;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "equals", "", "other", "hashCode", "", "toString", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class Transformation {
    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if ((other instanceof Transformation) && Intrinsics.areEqual(getCacheKey(), ((Transformation) other).getCacheKey())) {
            return true;
        }
        return false;
    }

    @NotNull
    public abstract String getCacheKey();

    public int hashCode() {
        return getCacheKey().hashCode();
    }

    @NotNull
    public String toString() {
        return Reflection.getOrCreateKotlinClass(getClass()).getSimpleName() + "(cacheKey=" + getCacheKey() + ')';
    }

    @Nullable
    public abstract Object transform(@NotNull Bitmap bitmap, @NotNull Size size, @NotNull Continuation<? super Bitmap> continuation);
}
