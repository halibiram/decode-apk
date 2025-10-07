package androidx.savedstate;

import defpackage.AbstractC0362x4440ab85;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0001¨\u0006\u0004"}, d2 = {"keyOrValueNotFoundError", "", "key", "", "savedstate_release"}, k = 5, mv = {2, 0, 0}, xi = 48, xs = "androidx/savedstate/SavedStateReaderKt")
/* loaded from: classes.dex */
public final /* synthetic */ class SavedStateReaderKt__SavedStateReaderKt {
    @PublishedApi
    @NotNull
    public static final Void keyOrValueNotFoundError(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        throw new IllegalArgumentException(AbstractC0362x4440ab85.m2932x95f25580("No valid saved state was found for the key '", key, "'. It may be missing, null, or not of the expected type. This can occur if the value was saved with a different type or if the saved state was modified unexpectedly."));
    }
}
