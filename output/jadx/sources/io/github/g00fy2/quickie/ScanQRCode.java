package io.github.g00fy2.quickie;

import android.content.Context;
import android.content.Intent;
import androidx.activity.result.contract.ActivityResultContract;
import defpackage.AbstractC0362x4440ab85;
import io.github.g00fy2.quickie.QRResult;
import io.github.g00fy2.quickie.extensions.IntentExtensionsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0007H\u0016¨\u0006\u000f"}, d2 = {"Lio/github/g00fy2/quickie/ScanQRCode;", "Landroidx/activity/result/contract/ActivityResultContract;", "", "Lio/github/g00fy2/quickie/QRResult;", "<init>", "()V", "createIntent", "Landroid/content/Intent;", "context", "Landroid/content/Context;", "input", "parseResult", "resultCode", "", "intent", "quickie-foss_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ScanQRCode extends ActivityResultContract {
    @Override // androidx.activity.result.contract.ActivityResultContract
    @NotNull
    public Intent createIntent(@NotNull Context context, @Nullable Void input) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new Intent(context, (Class<?>) QRScannerActivity.class);
    }

    @Override // androidx.activity.result.contract.ActivityResultContract
    @NotNull
    public QRResult parseResult(int resultCode, @Nullable Intent intent) {
        QRResult qRSuccess;
        if (resultCode == -1) {
            qRSuccess = new QRResult.QRSuccess(IntentExtensionsKt.toQuickieContentType(intent));
        } else {
            if (resultCode == 0) {
                return QRResult.QRUserCanceled.INSTANCE;
            }
            if (resultCode == 2) {
                return QRResult.QRMissingPermission.INSTANCE;
            }
            if (resultCode != 3) {
                return new QRResult.QRError(new IllegalStateException(AbstractC0362x4440ab85.m2929x9738a56c(resultCode, "Unknown activity result code ")));
            }
            qRSuccess = new QRResult.QRError(IntentExtensionsKt.getRootException(intent));
        }
        return qRSuccess;
    }
}
