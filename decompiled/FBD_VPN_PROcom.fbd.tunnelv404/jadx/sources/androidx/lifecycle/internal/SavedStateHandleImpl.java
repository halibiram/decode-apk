package androidx.lifecycle.internal;

import android.os.Bundle;
import androidx.annotation.MainThread;
import androidx.core.os.BundleKt;
import androidx.exifinterface.media.ExifInterface;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateWriter;
import defpackage.AbstractC0962xa4a1ff52;
import defpackage.AbstractC1146x849d236e;
import defpackage.C0621x50702162;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\"\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0016\b\u0002\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\u0011\u001a\u00020\fH\u0007J\u0011\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0004H\u0087\u0002J)\u0010\u0017\u001a\b\u0012\u0004\u0012\u0002H\u00190\u0018\"\u0004\b\u0000\u0010\u00192\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u0002H\u0019H\u0007¢\u0006\u0002\u0010\u001bJ)\u0010\u001c\u001a\b\u0012\u0004\u0012\u0002H\u00190\u000e\"\u0004\b\u0000\u0010\u00192\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u0002H\u0019H\u0007¢\u0006\u0002\u0010\u001dJ\u000e\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00040\u001fH\u0007J\u001e\u0010 \u001a\u0004\u0018\u0001H\u0019\"\u0004\b\u0000\u0010\u00192\u0006\u0010\u0016\u001a\u00020\u0004H\u0087\u0002¢\u0006\u0002\u0010!J&\u0010\"\u001a\u00020#\"\u0004\b\u0000\u0010\u00192\u0006\u0010\u0016\u001a\u00020\u00042\b\u0010$\u001a\u0004\u0018\u0001H\u0019H\u0087\u0002¢\u0006\u0002\u0010%J\u001d\u0010&\u001a\u0004\u0018\u0001H\u0019\"\u0004\b\u0000\u0010\u00192\u0006\u0010\u0016\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010!J\u0018\u0010'\u001a\u00020#2\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\fH\u0007J\u0010\u0010)\u001a\u00020#2\u0006\u0010\u0016\u001a\u00020\u0004H\u0007R\u001f\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\f0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\r\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000e0\bX\u0082\u0004¢\u0006\u0002\n\u0000R%\u0010\u000f\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000e0\b¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\nR\u0011\u0010\u0011\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006*"}, d2 = {"Landroidx/lifecycle/internal/SavedStateHandleImpl;", "", "initialState", "", "", "<init>", "(Ljava/util/Map;)V", "regular", "", "getRegular", "()Ljava/util/Map;", "providers", "Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;", "flows", "Lkotlinx/coroutines/flow/MutableStateFlow;", "mutableFlows", "getMutableFlows", "savedStateProvider", "getSavedStateProvider", "()Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;", "contains", "", "key", "getStateFlow", "Lkotlinx/coroutines/flow/StateFlow;", ExifInterface.GPS_DIRECTION_TRUE, "initialValue", "(Ljava/lang/String;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;", "getMutableStateFlow", "(Ljava/lang/String;Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;", "keys", "", "get", "(Ljava/lang/String;)Ljava/lang/Object;", "set", "", "value", "(Ljava/lang/String;Ljava/lang/Object;)V", "remove", "setSavedStateProvider", "provider", "clearSavedStateProvider", "lifecycle-viewmodel-savedstate_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSavedStateHandleImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateHandleImpl.kt\nandroidx/lifecycle/internal/SavedStateHandleImpl\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 SavedState.android.kt\nandroidx/savedstate/SavedStateKt__SavedState_androidKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 7 SavedState.kt\nandroidx/savedstate/SavedStateKt__SavedStateKt\n+ 8 SavedState.android.kt\nandroidx/savedstate/SavedStateKt__SavedState_androidKt$savedState$1\n*L\n1#1,129:1\n381#2,7:130\n381#2,7:137\n27#3:144\n46#3:145\n32#3,4:146\n31#3,7:156\n126#4:150\n153#4,3:151\n37#5,2:154\n1#6:163\n106#7:164\n46#8:165\n*S KotlinDebug\n*F\n+ 1 SavedStateHandleImpl.kt\nandroidx/lifecycle/internal/SavedStateHandleImpl\n*L\n60#1:130,7\n76#1:137,7\n47#1:144\n47#1:145\n47#1:146,4\n47#1:156,7\n47#1:150\n47#1:151,3\n47#1:154,2\n47#1:163\n47#1:164\n47#1:165\n*E\n"})
/* loaded from: classes.dex */
public final class SavedStateHandleImpl {

    @NotNull
    private final Map<String, MutableStateFlow<Object>> flows;

    @NotNull
    private final Map<String, MutableStateFlow<Object>> mutableFlows;

    @NotNull
    private final Map<String, SavedStateRegistry.SavedStateProvider> providers;

    @NotNull
    private final Map<String, Object> regular;

    @NotNull
    private final SavedStateRegistry.SavedStateProvider savedStateProvider;

    public SavedStateHandleImpl() {
        this(null, 1, null);
    }

    public static final Bundle savedStateProvider$lambda$0(SavedStateHandleImpl savedStateHandleImpl) {
        Pair[] pairArr;
        for (Map.Entry entry : AbstractC0962xa4a1ff52.toMap(savedStateHandleImpl.mutableFlows).entrySet()) {
            savedStateHandleImpl.set((String) entry.getKey(), ((MutableStateFlow) entry.getValue()).getValue());
        }
        for (Map.Entry entry2 : AbstractC0962xa4a1ff52.toMap(savedStateHandleImpl.providers).entrySet()) {
            savedStateHandleImpl.set((String) entry2.getKey(), ((SavedStateRegistry.SavedStateProvider) entry2.getValue()).saveState());
        }
        Map<String, Object> map = savedStateHandleImpl.regular;
        if (map.isEmpty()) {
            pairArr = new Pair[0];
        } else {
            ArrayList arrayList = new ArrayList(map.size());
            for (Map.Entry<String, Object> entry3 : map.entrySet()) {
                arrayList.add(TuplesKt.to(entry3.getKey(), entry3.getValue()));
            }
            pairArr = (Pair[]) arrayList.toArray(new Pair[0]);
        }
        Bundle bundleOf = BundleKt.bundleOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
        SavedStateWriter.m771constructorimpl(bundleOf);
        return bundleOf;
    }

    @MainThread
    public final void clearSavedStateProvider(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.providers.remove(key);
    }

    @MainThread
    public final boolean contains(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.regular.containsKey(key);
    }

    @MainThread
    @Nullable
    public final <T> T get(@NotNull String key) {
        T t;
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            MutableStateFlow<Object> mutableStateFlow = this.mutableFlows.get(key);
            if (mutableStateFlow == null || (t = (T) mutableStateFlow.getValue()) == null) {
                return (T) this.regular.get(key);
            }
            return t;
        } catch (ClassCastException unused) {
            remove(key);
            return null;
        }
    }

    @NotNull
    public final Map<String, MutableStateFlow<Object>> getMutableFlows() {
        return this.mutableFlows;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @MainThread
    @NotNull
    public final <T> MutableStateFlow<T> getMutableStateFlow(@NotNull String key, T initialValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Map<String, MutableStateFlow<Object>> map = this.mutableFlows;
        Object obj = map.get(key);
        if (obj == null) {
            if (!this.regular.containsKey(key)) {
                this.regular.put(key, initialValue);
            }
            obj = StateFlowKt.MutableStateFlow(this.regular.get(key));
            map.put(key, obj);
        }
        MutableStateFlow<T> mutableStateFlow = (MutableStateFlow) obj;
        Intrinsics.checkNotNull(mutableStateFlow, "null cannot be cast to non-null type kotlinx.coroutines.flow.MutableStateFlow<T of androidx.lifecycle.internal.SavedStateHandleImpl.getMutableStateFlow>");
        return mutableStateFlow;
    }

    @NotNull
    public final Map<String, Object> getRegular() {
        return this.regular;
    }

    @NotNull
    public final SavedStateRegistry.SavedStateProvider getSavedStateProvider() {
        return this.savedStateProvider;
    }

    @MainThread
    @NotNull
    public final <T> StateFlow<T> getStateFlow(@NotNull String key, T initialValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Map<String, MutableStateFlow<Object>> map = this.flows;
        MutableStateFlow<Object> mutableStateFlow = map.get(key);
        if (mutableStateFlow == null) {
            if (!this.regular.containsKey(key)) {
                this.regular.put(key, initialValue);
            }
            mutableStateFlow = StateFlowKt.MutableStateFlow(this.regular.get(key));
            map.put(key, mutableStateFlow);
        }
        StateFlow<T> asStateFlow = FlowKt.asStateFlow(mutableStateFlow);
        Intrinsics.checkNotNull(asStateFlow, "null cannot be cast to non-null type kotlinx.coroutines.flow.StateFlow<T of androidx.lifecycle.internal.SavedStateHandleImpl.getStateFlow>");
        return asStateFlow;
    }

    @MainThread
    @NotNull
    public final Set<String> keys() {
        return AbstractC1146x849d236e.plus((Set) this.regular.keySet(), (Iterable) this.providers.keySet());
    }

    @MainThread
    @Nullable
    public final <T> T remove(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        T t = (T) this.regular.remove(key);
        this.flows.remove(key);
        this.mutableFlows.remove(key);
        return t;
    }

    @NotNull
    public final SavedStateRegistry.SavedStateProvider savedStateProvider() {
        return this.savedStateProvider;
    }

    @MainThread
    public final <T> void set(@NotNull String key, @Nullable T value) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.regular.put(key, value);
        MutableStateFlow<Object> mutableStateFlow = this.flows.get(key);
        if (mutableStateFlow != null) {
            mutableStateFlow.setValue(value);
        }
        MutableStateFlow<Object> mutableStateFlow2 = this.mutableFlows.get(key);
        if (mutableStateFlow2 != null) {
            mutableStateFlow2.setValue(value);
        }
    }

    @MainThread
    public final void setSavedStateProvider(@NotNull String key, @NotNull SavedStateRegistry.SavedStateProvider provider) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.providers.put(key, provider);
    }

    public SavedStateHandleImpl(@NotNull Map<String, ? extends Object> initialState) {
        Intrinsics.checkNotNullParameter(initialState, "initialState");
        this.regular = AbstractC0962xa4a1ff52.toMutableMap(initialState);
        this.providers = new LinkedHashMap();
        this.flows = new LinkedHashMap();
        this.mutableFlows = new LinkedHashMap();
        this.savedStateProvider = new C0621x50702162(this, 3);
    }

    public /* synthetic */ SavedStateHandleImpl(Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? AbstractC0962xa4a1ff52.emptyMap() : map);
    }
}
