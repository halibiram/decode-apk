package androidx.work.multiprocess;

import android.annotation.SuppressLint;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

@SuppressLint({"LambdaLast"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public interface RemoteDispatcher<T> {
    void execute(@NonNull T t, @NonNull IWorkManagerImplCallback iWorkManagerImplCallback);
}
