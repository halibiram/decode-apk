package io.github.g00fy2.quickie.extensions;

import android.graphics.Bitmap;
import defpackage.C0447x6141a5c7;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\u001a:\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u00062\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\u0006¨\u0006\n"}, d2 = {"readQrCode", "", "Landroid/graphics/Bitmap;", "barcodeFormats", "", "onSuccess", "Lkotlin/Function1;", "", "onFailure", "", "quickie-foss_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class BitmapQrReaderKt {
    public static final void readQrCode(@NotNull Bitmap bitmap, @NotNull int[] barcodeFormats, @NotNull Function1<? super String, Unit> onSuccess, @NotNull Function1<? super Throwable, Unit> onFailure) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        Intrinsics.checkNotNullParameter(barcodeFormats, "barcodeFormats");
        Intrinsics.checkNotNullParameter(onSuccess, "onSuccess");
        Intrinsics.checkNotNullParameter(onFailure, "onFailure");
        BuildersKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getDefault()), null, null, new C0447x6141a5c7(barcodeFormats, bitmap, onSuccess, onFailure, null), 3, null);
    }
}
