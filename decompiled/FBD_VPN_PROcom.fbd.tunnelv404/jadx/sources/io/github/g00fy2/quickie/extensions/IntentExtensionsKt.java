package io.github.g00fy2.quickie.extensions;

import android.content.Intent;
import android.os.Build;
import android.os.Parcelable;
import androidx.core.content.IntentCompat;
import androidx.exifinterface.media.ExifInterface;
import io.github.g00fy2.quickie.QRScannerActivity;
import io.github.g00fy2.quickie.content.QRContent;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u0002H\u0000\u001a\u0012\u0010\u0003\u001a\u00060\u0004j\u0002`\u0005*\u0004\u0018\u00010\u0002H\u0000\u001a(\u0010\u0006\u001a\u0004\u0018\u0001H\u0007\"\n\b\u0000\u0010\u0007\u0018\u0001*\u00020\b*\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0086\b¢\u0006\u0002\u0010\u000b\u001a5\u0010\f\u001a\u0016\u0012\u0004\u0012\u0002H\u0007\u0018\u00010\rj\n\u0012\u0004\u0012\u0002H\u0007\u0018\u0001`\u000e\"\n\b\u0000\u0010\u0007\u0018\u0001*\u00020\b*\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0086\b¨\u0006\u000f"}, d2 = {"toQuickieContentType", "Lio/github/g00fy2/quickie/content/QRContent;", "Landroid/content/Intent;", "getRootException", "Ljava/lang/Exception;", "Lkotlin/Exception;", "parcelable", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/os/Parcelable;", "key", "", "(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;", "parcelableArrayList", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "quickie-foss_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nIntentExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntentExtensions.kt\nio/github/g00fy2/quickie/extensions/IntentExtensionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,40:1\n1#2:41\n*E\n"})
/* loaded from: classes3.dex */
public final class IntentExtensionsKt {
    @NotNull
    public static final Exception getRootException(@Nullable Intent intent) {
        Exception exc;
        if (intent == null || (exc = (Exception) IntentCompat.getParcelableExtra(intent, QRScannerActivity.EXTRA_RESULT_EXCEPTION, Exception.class)) == null) {
            return new IllegalStateException("Could retrieve root exception");
        }
        return exc;
    }

    public static final /* synthetic */ <T extends Parcelable> T parcelable(Intent intent, String key) {
        Object m1764constructorimpl;
        Parcelable parcelableExtra;
        Object parcelableExtra2;
        Intrinsics.checkNotNullParameter(intent, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            Result.Companion companion = Result.INSTANCE;
            if (Build.VERSION.SDK_INT >= 33) {
                Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
                parcelableExtra2 = intent.getParcelableExtra(key, Parcelable.class);
                parcelableExtra = (Parcelable) parcelableExtra2;
            } else {
                parcelableExtra = intent.getParcelableExtra(key);
                Intrinsics.reifiedOperationMarker(2, ExifInterface.GPS_DIRECTION_TRUE);
            }
            m1764constructorimpl = Result.m1764constructorimpl(parcelableExtra);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m1764constructorimpl = Result.m1764constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m1769isFailureimpl(m1764constructorimpl)) {
            m1764constructorimpl = null;
        }
        return (T) m1764constructorimpl;
    }

    public static final /* synthetic */ <T extends Parcelable> ArrayList<T> parcelableArrayList(Intent intent, String key) {
        Object m1764constructorimpl;
        ArrayList<T> parcelableArrayListExtra;
        Intrinsics.checkNotNullParameter(intent, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            Result.Companion companion = Result.INSTANCE;
            if (Build.VERSION.SDK_INT >= 33) {
                Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
                parcelableArrayListExtra = intent.getParcelableArrayListExtra(key, Parcelable.class);
            } else {
                parcelableArrayListExtra = intent.getParcelableArrayListExtra(key);
            }
            m1764constructorimpl = Result.m1764constructorimpl(parcelableArrayListExtra);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m1764constructorimpl = Result.m1764constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m1769isFailureimpl(m1764constructorimpl)) {
            m1764constructorimpl = null;
        }
        return (ArrayList) m1764constructorimpl;
    }

    @NotNull
    public static final QRContent toQuickieContentType(@Nullable Intent intent) {
        byte[] bArr;
        String str = null;
        if (intent != null) {
            bArr = intent.getByteArrayExtra(QRScannerActivity.EXTRA_RESULT_BYTES);
        } else {
            bArr = null;
        }
        if (intent != null) {
            str = intent.getStringExtra(QRScannerActivity.EXTRA_RESULT_VALUE);
        }
        return new QRContent.Plain(bArr, str);
    }
}
