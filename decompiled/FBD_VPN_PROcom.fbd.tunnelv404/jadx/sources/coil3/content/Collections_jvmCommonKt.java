package coil3.content;

import androidx.exifinterface.media.ExifInterface;
import defpackage.AbstractC0962xa4a1ff52;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\u001a<\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0004\"\b\b\u0001\u0010\u0003*\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bH\u0000\u001a0\u0010\t\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\n\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\nH\u0000\u001a\u001e\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\r0\f\"\u0004\b\u0000\u0010\r*\b\u0012\u0004\u0012\u0002H\r0\fH\u0000¨\u0006\u000e"}, d2 = {"LruMutableMap", "", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "initialCapacity", "", "loadFactor", "", "toImmutableMap", "", "toImmutableList", "", ExifInterface.GPS_DIRECTION_TRUE, "coil-core_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\ncollections.jvmCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 collections.jvmCommon.kt\ncoil3/util/Collections_jvmCommonKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,21:1\n1#2:22\n*E\n"})
/* loaded from: classes.dex */
public final class Collections_jvmCommonKt {
    @NotNull
    public static final <K, V> Map<K, V> LruMutableMap(int i, float f) {
        return new LinkedHashMap(i, f, true);
    }

    public static /* synthetic */ Map LruMutableMap$default(int i, float f, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        if ((i2 & 2) != 0) {
            f = 0.75f;
        }
        return LruMutableMap(i, f);
    }

    @NotNull
    public static final <T> List<T> toImmutableList(@NotNull List<? extends T> list) {
        int size = list.size();
        if (size != 0) {
            if (size != 1) {
                return DesugarCollections.unmodifiableList(new ArrayList(list));
            }
            return Collections.singletonList(CollectionsKt___CollectionsKt.first((List) list));
        }
        return CollectionsKt__CollectionsKt.emptyList();
    }

    @NotNull
    public static final <K, V> Map<K, V> toImmutableMap(@NotNull Map<K, ? extends V> map) {
        int size = map.size();
        if (size != 0) {
            if (size != 1) {
                return DesugarCollections.unmodifiableMap(new LinkedHashMap(map));
            }
            Map.Entry entry = (Map.Entry) CollectionsKt___CollectionsKt.first(map.entrySet());
            return Collections.singletonMap(entry.getKey(), entry.getValue());
        }
        return AbstractC0962xa4a1ff52.emptyMap();
    }
}
