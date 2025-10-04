package defpackage;

import java.util.Map;
import java.util.NoSuchElementException;
import kotlin.PublishedApi;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* renamed from: 디뒋딨땹땪돛듐뒬딀땵뒹됐돰돶땧딁딤둬둬됫딞돵딠땀딨돰땁땵돤딀뒬뎬돛든뒉되뒨땠딻땲됩돠뎠듸땱듐땫땡딟땁뎰땲돨둥듼돛뒹든든뎬땟도뒐딎둥돸딟딃땟땠듔땸딤땁뒷땃돵뎰둠들딜따뎬땣돤땍땔딤딻듐뒼두딅딐딤땫땡딃딻듨땔드디뒙듐땻땨둠땠땄돝든돼뎡딄됨듨딞땹둑딹뎨돳땄딸둣땐뒛듼돼, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC0960x6fbeaf6a {
    @PublishedApi
    @JvmName(name = "getOrImplicitDefaultNullable")
    public static final <K, V> V getOrImplicitDefaultNullable(@NotNull Map<K, ? extends V> map, K k) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        if (map instanceof InterfaceC0958x7e2d96ff) {
            return (V) ((InterfaceC0958x7e2d96ff) map).mo3521xfbe0c504(k);
        }
        V v = map.get(k);
        if (v == null && !map.containsKey(k)) {
            throw new NoSuchElementException("Key " + k + " is missing in the map.");
        }
        return v;
    }

    @NotNull
    public static final <K, V> Map<K, V> withDefault(@NotNull Map<K, ? extends V> map, @NotNull Function1<? super K, ? extends V> defaultValue) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        if (map instanceof InterfaceC0958x7e2d96ff) {
            return withDefault(((InterfaceC0958x7e2d96ff) map).mo3522x3271d0aa(), defaultValue);
        }
        return new C0959xaf5a4e91(map, defaultValue);
    }

    @JvmName(name = "withDefaultMutable")
    @NotNull
    public static final <K, V> Map<K, V> withDefaultMutable(@NotNull Map<K, V> map, @NotNull Function1<? super K, ? extends V> defaultValue) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        if (map instanceof C0989x8ffe90c3) {
            return withDefaultMutable(((C0989x8ffe90c3) map).f5164xfbe0c504, defaultValue);
        }
        return new C0989x8ffe90c3(map, defaultValue);
    }
}
