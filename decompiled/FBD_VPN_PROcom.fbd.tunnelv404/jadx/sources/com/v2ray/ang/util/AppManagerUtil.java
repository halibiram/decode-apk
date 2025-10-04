package com.v2ray.ang.util;

import android.content.Context;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.dto.AppInfo;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J&\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u00072\u0006\u0010\b\u001a\u00020\tH\u0086@¢\u0006\u0002\u0010\nJ\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\b\u001a\u00020\t¨\u0006\r"}, d2 = {"Lcom/v2ray/ang/util/AppManagerUtil;", "", "<init>", "()V", "loadNetworkAppList", "Ljava/util/ArrayList;", "Lcom/v2ray/ang/dto/AppInfo;", "Lkotlin/collections/ArrayList;", "context", "Landroid/content/Context;", "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getLastUpdateTime", "", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class AppManagerUtil {

    @NotNull
    public static final AppManagerUtil INSTANCE = new AppManagerUtil();

    private AppManagerUtil() {
    }

    public final long getLastUpdateTime(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{1294890518289773830L, -2333250179273120695L}).toString());
        return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).lastUpdateTime;
    }

    @Nullable
    public final Object loadNetworkAppList(@NotNull Context context, @NotNull Continuation<? super ArrayList<AppInfo>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new AppManagerUtil$loadNetworkAppList$2(context, null), continuation);
    }
}
