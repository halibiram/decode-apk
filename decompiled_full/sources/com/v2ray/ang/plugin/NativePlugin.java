package com.v2ray.ang.plugin;

import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import com.panda912.muddy.ObfuscatedString;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00078TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/v2ray/ang/plugin/NativePlugin;", "Lcom/v2ray/ang/plugin/ResolvedPlugin;", "resolveInfo", "Landroid/content/pm/ResolveInfo;", "<init>", "(Landroid/content/pm/ResolveInfo;)V", "componentInfo", "Landroid/content/pm/ProviderInfo;", "getComponentInfo", "()Landroid/content/pm/ProviderInfo;", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class NativePlugin extends ResolvedPlugin {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativePlugin(@NotNull ResolveInfo resolveInfo) {
        super(resolveInfo);
        Intrinsics.checkNotNullParameter(resolveInfo, new ObfuscatedString(new long[]{-900992662055009380L, 4293309827376695585L, -1960955040146460376L}).toString());
        if (resolveInfo.providerInfo != null) {
        } else {
            throw new IllegalStateException(new ObfuscatedString(new long[]{2953004642851556546L, -1742531303575565664L, -5079164787430744981L}).toString());
        }
    }

    @Override // com.v2ray.ang.plugin.ResolvedPlugin
    @NotNull
    public ProviderInfo getComponentInfo() {
        ProviderInfo providerInfo = getResolveInfo().providerInfo;
        Intrinsics.checkNotNull(providerInfo);
        return providerInfo;
    }
}
