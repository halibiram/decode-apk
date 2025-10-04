package com.v2ray.ang.handler;

import android.content.Context;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.dto.CheckUpdateResult;
import com.v2ray.ang.dto.GitHubRelease;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007H\u0086@¢\u0006\u0002\u0010\bJ \u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0086@¢\u0006\u0002\u0010\u000fJ\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u000eH\u0002J\u0018\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u000eH\u0002¨\u0006\u0018"}, d2 = {"Lcom/v2ray/ang/handler/UpdateCheckerManager;", "", "<init>", "()V", "checkForUpdate", "Lcom/v2ray/ang/dto/CheckUpdateResult;", "includePreRelease", "", "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "downloadApk", "Ljava/io/File;", "context", "Landroid/content/Context;", "downloadUrl", "", "(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "compareVersions", "", "version1", "version2", "getDownloadUrl", "release", "Lcom/v2ray/ang/dto/GitHubRelease;", "abi", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nUpdateCheckerManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateCheckerManager.kt\ncom/v2ray/ang/handler/UpdateCheckerManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,108:1\n1#2:109\n*E\n"})
/* loaded from: classes3.dex */
public final class UpdateCheckerManager {

    @NotNull
    public static final UpdateCheckerManager INSTANCE = new UpdateCheckerManager();

    private UpdateCheckerManager() {
    }

    public static /* synthetic */ Object checkForUpdate$default(UpdateCheckerManager updateCheckerManager, boolean z, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return updateCheckerManager.checkForUpdate(z, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int compareVersions(String version1, String version2) {
        int i;
        int i2;
        List split$default = StringsKt__StringsKt.split$default((CharSequence) version1, new String[]{new ObfuscatedString(new long[]{-350836734248240561L, 260279922620816740L}).toString()}, false, 0, 6, (Object) null);
        List split$default2 = StringsKt__StringsKt.split$default((CharSequence) version2, new String[]{new ObfuscatedString(new long[]{4813641161908326961L, -9055343065255338459L}).toString()}, false, 0, 6, (Object) null);
        int max = Math.max(split$default.size(), split$default2.size());
        for (int i3 = 0; i3 < max; i3++) {
            if (i3 < split$default.size()) {
                i = Integer.parseInt((String) split$default.get(i3));
            } else {
                i = 0;
            }
            if (i3 < split$default2.size()) {
                i2 = Integer.parseInt((String) split$default2.get(i3));
            } else {
                i2 = 0;
            }
            if (i != i2) {
                return i - i2;
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getDownloadUrl(GitHubRelease release, String abi) {
        Object obj;
        String browserDownloadUrl;
        Iterator<T> it = release.getAssets().iterator();
        while (true) {
            obj = null;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (StringsKt__StringsKt.contains$default((CharSequence) ((GitHubRelease.Asset) next).getName(), (CharSequence) abi, false, 2, (Object) null)) {
                obj = next;
                break;
            }
        }
        GitHubRelease.Asset asset = (GitHubRelease.Asset) obj;
        if (asset == null || (browserDownloadUrl = asset.getBrowserDownloadUrl()) == null) {
            GitHubRelease.Asset asset2 = (GitHubRelease.Asset) CollectionsKt___CollectionsKt.firstOrNull((List) release.getAssets());
            if (asset2 != null) {
                return asset2.getBrowserDownloadUrl();
            }
            throw new IllegalStateException(new ObfuscatedString(new long[]{-9220979384026231923L, -2334800174084730539L, 292037832067951884L, 5625481960025858429L}).toString());
        }
        return browserDownloadUrl;
    }

    @Nullable
    public final Object checkForUpdate(boolean z, @NotNull Continuation<? super CheckUpdateResult> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new UpdateCheckerManager$checkForUpdate$2(z, null), continuation);
    }

    @Nullable
    public final Object downloadApk(@NotNull Context context, @NotNull String str, @NotNull Continuation<? super File> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new UpdateCheckerManager$downloadApk$2(str, context, null), continuation);
    }
}
