package coil3;

import coil3.ComponentRegistry;
import coil3.RealImageLoader;
import coil3.fetch.ByteBufferFetcher;
import coil3.fetch.JarFileFetcher;
import coil3.map.FileMapper;
import java.io.File;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000¨\u0006\u0004"}, d2 = {"addJvmComponents", "Lcoil3/ComponentRegistry$Builder;", "options", "Lcoil3/RealImageLoader$Options;", "coil-core_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRealImageLoader.jvmCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealImageLoader.jvmCommon.kt\ncoil3/RealImageLoader_jvmCommonKt\n+ 2 ComponentRegistry.kt\ncoil3/ComponentRegistry$Builder\n*L\n1#1,17:1\n149#2:18\n165#2:19\n165#2:20\n*S KotlinDebug\n*F\n+ 1 RealImageLoader.jvmCommon.kt\ncoil3/RealImageLoader_jvmCommonKt\n*L\n12#1:18\n14#1:19\n15#1:20\n*E\n"})
/* loaded from: classes.dex */
public final class RealImageLoader_jvmCommonKt {
    @NotNull
    public static final ComponentRegistry.Builder addJvmComponents(@NotNull ComponentRegistry.Builder builder, @NotNull RealImageLoader.Options options) {
        return builder.add(new FileMapper(), Reflection.getOrCreateKotlinClass(File.class)).add(new JarFileFetcher.Factory(), Reflection.getOrCreateKotlinClass(Uri.class)).add(new ByteBufferFetcher.Factory(), Reflection.getOrCreateKotlinClass(ByteBuffer.class));
    }
}
