package androidx.lifecycle;

import android.os.Bundle;
import androidx.annotation.MainThread;
import androidx.annotation.RestrictTo;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.internal.SavedStateHandleImpl;
import androidx.lifecycle.internal.SavedStateHandleImpl_androidKt;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateRegistry;
import defpackage.AbstractC1146x849d236e;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\t\u0018\u0000 -2\u00020\u0001:\u0002,-B\u001f\b\u0016\u0012\u0014\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\t\b\u0016¢\u0006\u0004\b\u0005\u0010\u0007J\b\u0010\r\u001a\u00020\u000eH\u0007J\u0011\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0004H\u0087\u0002J\u001c\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u00140\u0013\"\u0004\b\u0000\u0010\u00142\u0006\u0010\u0011\u001a\u00020\u0004H\u0007J)\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u00140\u0013\"\u0004\b\u0000\u0010\u00142\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u0002H\u0014H\u0007¢\u0006\u0002\u0010\u0016J1\u0010\u0017\u001a\b\u0012\u0004\u0012\u0002H\u00140\u0013\"\u0004\b\u0000\u0010\u00142\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u0002H\u0014H\u0002¢\u0006\u0002\u0010\u0019J)\u0010\u001a\u001a\b\u0012\u0004\u0012\u0002H\u00140\u001b\"\u0004\b\u0000\u0010\u00142\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u0002H\u0014H\u0007¢\u0006\u0002\u0010\u001cJ)\u0010\u001d\u001a\b\u0012\u0004\u0012\u0002H\u00140\u001e\"\u0004\b\u0000\u0010\u00142\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u0002H\u0014H\u0007¢\u0006\u0002\u0010\u001fJ\u000e\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00040!H\u0007J\u001e\u0010\"\u001a\u0004\u0018\u0001H\u0014\"\u0004\b\u0000\u0010\u00142\u0006\u0010\u0011\u001a\u00020\u0004H\u0087\u0002¢\u0006\u0002\u0010#J&\u0010$\u001a\u00020%\"\u0004\b\u0000\u0010\u00142\u0006\u0010\u0011\u001a\u00020\u00042\b\u0010&\u001a\u0004\u0018\u0001H\u0014H\u0087\u0002¢\u0006\u0002\u0010'J\u001d\u0010(\u001a\u0004\u0018\u0001H\u0014\"\u0004\b\u0000\u0010\u00142\u0006\u0010\u0011\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010#J\u0018\u0010)\u001a\u00020%2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\u000eH\u0007J\u0010\u0010+\u001a\u00020%2\u0006\u0010\u0011\u001a\u00020\u0004H\u0007R\u001e\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"Landroidx/lifecycle/SavedStateHandle;", "", "initialState", "", "", "<init>", "(Ljava/util/Map;)V", "()V", "liveDatas", "", "Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData;", "impl", "Landroidx/lifecycle/internal/SavedStateHandleImpl;", "savedStateProvider", "Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;", "contains", "", "key", "getLiveData", "Landroidx/lifecycle/MutableLiveData;", ExifInterface.GPS_DIRECTION_TRUE, "initialValue", "(Ljava/lang/String;Ljava/lang/Object;)Landroidx/lifecycle/MutableLiveData;", "getLiveDataInternal", "hasInitialValue", "(Ljava/lang/String;ZLjava/lang/Object;)Landroidx/lifecycle/MutableLiveData;", "getStateFlow", "Lkotlinx/coroutines/flow/StateFlow;", "(Ljava/lang/String;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;", "getMutableStateFlow", "Lkotlinx/coroutines/flow/MutableStateFlow;", "(Ljava/lang/String;Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;", "keys", "", "get", "(Ljava/lang/String;)Ljava/lang/Object;", "set", "", "value", "(Ljava/lang/String;Ljava/lang/Object;)V", "remove", "setSavedStateProvider", "provider", "clearSavedStateProvider", "SavingStateLiveData", "Companion", "lifecycle-viewmodel-savedstate_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSavedStateHandle.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateHandle.android.kt\nandroidx/lifecycle/SavedStateHandle\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,229:1\n1#2:230\n381#3,7:231\n*S KotlinDebug\n*F\n+ 1 SavedStateHandle.android.kt\nandroidx/lifecycle/SavedStateHandle\n*L\n115#1:231,7\n*E\n"})
/* loaded from: classes.dex */
public final class SavedStateHandle {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private SavedStateHandleImpl impl;

    @NotNull
    private final Map<String, SavingStateLiveData<?>> liveDatas;

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J(\u0010\u0004\u001a\u00020\u00052\u000e\u0010\u0006\u001a\n\u0018\u00010\u0007j\u0004\u0018\u0001`\b2\u000e\u0010\t\u001a\n\u0018\u00010\u0007j\u0004\u0018\u0001`\bH\u0007J\u0012\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001H\u0007¨\u0006\r"}, d2 = {"Landroidx/lifecycle/SavedStateHandle$Companion;", "", "<init>", "()V", "createHandle", "Landroidx/lifecycle/SavedStateHandle;", "restoredState", "Landroid/os/Bundle;", "Landroidx/savedstate/SavedState;", "defaultState", "validateValue", "", "value", "lifecycle-viewmodel-savedstate_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nSavedStateHandle.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateHandle.android.kt\nandroidx/lifecycle/SavedStateHandle$Companion\n+ 2 SavedState.kt\nandroidx/savedstate/SavedStateKt__SavedStateKt\n*L\n1#1,229:1\n90#2:230\n*S KotlinDebug\n*F\n+ 1 SavedStateHandle.android.kt\nandroidx/lifecycle/SavedStateHandle$Companion\n*L\n217#1:230\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        @NotNull
        public final SavedStateHandle createHandle(@Nullable Bundle restoredState, @Nullable Bundle defaultState) {
            if (restoredState == null) {
                restoredState = defaultState;
            }
            if (restoredState == null) {
                return new SavedStateHandle();
            }
            ClassLoader classLoader = SavedStateHandle.class.getClassLoader();
            Intrinsics.checkNotNull(classLoader);
            restoredState.setClassLoader(classLoader);
            return new SavedStateHandle(SavedStateReader.m765toMapimpl(SavedStateReader.m684constructorimpl(restoredState)));
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final boolean validateValue(@Nullable Object value) {
            return SavedStateHandleImpl_androidKt.isAcceptableType(value);
        }

        private Companion() {
        }
    }

    public SavedStateHandle(@NotNull Map<String, ? extends Object> initialState) {
        Intrinsics.checkNotNullParameter(initialState, "initialState");
        this.liveDatas = new LinkedHashMap();
        this.impl = new SavedStateHandleImpl(initialState);
    }

    @JvmStatic
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public static final SavedStateHandle createHandle(@Nullable Bundle bundle, @Nullable Bundle bundle2) {
        return INSTANCE.createHandle(bundle, bundle2);
    }

    private final <T> MutableLiveData<T> getLiveDataInternal(String key, boolean hasInitialValue, T initialValue) {
        String createMutuallyExclusiveErrorMessage;
        SavingStateLiveData<?> savingStateLiveData;
        if (this.impl.getMutableFlows().containsKey(key)) {
            createMutuallyExclusiveErrorMessage = SavedStateHandle_androidKt.createMutuallyExclusiveErrorMessage(key);
            throw new IllegalArgumentException(createMutuallyExclusiveErrorMessage.toString());
        }
        Map<String, SavingStateLiveData<?>> map = this.liveDatas;
        SavingStateLiveData<?> savingStateLiveData2 = map.get(key);
        if (savingStateLiveData2 == null) {
            if (this.impl.getRegular().containsKey(key)) {
                savingStateLiveData = new SavingStateLiveData<>(this, key, this.impl.getRegular().get(key));
            } else if (hasInitialValue) {
                this.impl.getRegular().put(key, initialValue);
                savingStateLiveData = new SavingStateLiveData<>(this, key, initialValue);
            } else {
                savingStateLiveData = new SavingStateLiveData<>(this, key);
            }
            savingStateLiveData2 = savingStateLiveData;
            map.put(key, savingStateLiveData2);
        }
        return savingStateLiveData2;
    }

    @MainThread
    public final void clearSavedStateProvider(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.impl.clearSavedStateProvider(key);
    }

    @MainThread
    public final boolean contains(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.impl.contains(key);
    }

    @MainThread
    @Nullable
    public final <T> T get(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (T) this.impl.get(key);
    }

    @MainThread
    @NotNull
    public final <T> MutableLiveData<T> getLiveData(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        MutableLiveData<T> liveDataInternal = getLiveDataInternal(key, false, null);
        Intrinsics.checkNotNull(liveDataInternal, "null cannot be cast to non-null type androidx.lifecycle.MutableLiveData<T of androidx.lifecycle.SavedStateHandle.getLiveData>");
        return liveDataInternal;
    }

    @MainThread
    @NotNull
    public final <T> MutableStateFlow<T> getMutableStateFlow(@NotNull String key, T initialValue) {
        String createMutuallyExclusiveErrorMessage;
        Intrinsics.checkNotNullParameter(key, "key");
        if (this.liveDatas.containsKey(key)) {
            createMutuallyExclusiveErrorMessage = SavedStateHandle_androidKt.createMutuallyExclusiveErrorMessage(key);
            throw new IllegalArgumentException(createMutuallyExclusiveErrorMessage.toString());
        }
        return this.impl.getMutableStateFlow(key, initialValue);
    }

    @MainThread
    @NotNull
    public final <T> StateFlow<T> getStateFlow(@NotNull String key, T initialValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (this.impl.getMutableFlows().containsKey(key)) {
            return FlowKt.asStateFlow(this.impl.getMutableStateFlow(key, initialValue));
        }
        return this.impl.getStateFlow(key, initialValue);
    }

    @MainThread
    @NotNull
    public final Set<String> keys() {
        return AbstractC1146x849d236e.plus((Set) this.impl.keys(), (Iterable) this.liveDatas.keySet());
    }

    @MainThread
    @Nullable
    public final <T> T remove(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        T t = (T) this.impl.remove(key);
        SavingStateLiveData<?> remove = this.liveDatas.remove(key);
        if (remove != null) {
            remove.detach();
        }
        return t;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public final SavedStateRegistry.SavedStateProvider savedStateProvider() {
        return this.impl.getSavedStateProvider();
    }

    @MainThread
    public final <T> void set(@NotNull String key, @Nullable T value) {
        SavingStateLiveData<?> savingStateLiveData;
        Intrinsics.checkNotNullParameter(key, "key");
        if (INSTANCE.validateValue(value)) {
            SavingStateLiveData<?> savingStateLiveData2 = this.liveDatas.get(key);
            if (savingStateLiveData2 instanceof MutableLiveData) {
                savingStateLiveData = savingStateLiveData2;
            } else {
                savingStateLiveData = null;
            }
            if (savingStateLiveData != null) {
                savingStateLiveData.setValue(value);
            }
            this.impl.set(key, value);
            return;
        }
        StringBuilder sb = new StringBuilder("Can't put value with type ");
        Intrinsics.checkNotNull(value);
        sb.append(value.getClass());
        sb.append(" into saved state");
        throw new IllegalArgumentException(sb.toString().toString());
    }

    @MainThread
    public final void setSavedStateProvider(@NotNull String key, @NotNull SavedStateRegistry.SavedStateProvider provider) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.impl.setSavedStateProvider(key, provider);
    }

    @MainThread
    @NotNull
    public final <T> MutableLiveData<T> getLiveData(@NotNull String key, T initialValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        return getLiveDataInternal(key, true, initialValue);
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B#\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00028\u0000¢\u0006\u0004\b\b\u0010\tB\u001b\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\nJ\u0015\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\rJ\u0006\u0010\u000e\u001a\u00020\fR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/MutableLiveData;", "handle", "Landroidx/lifecycle/SavedStateHandle;", "key", "", "value", "<init>", "(Landroidx/lifecycle/SavedStateHandle;Ljava/lang/String;Ljava/lang/Object;)V", "(Landroidx/lifecycle/SavedStateHandle;Ljava/lang/String;)V", "setValue", "", "(Ljava/lang/Object;)V", "detach", "lifecycle-viewmodel-savedstate_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class SavingStateLiveData<T> extends MutableLiveData<T> {

        @Nullable
        private SavedStateHandle handle;

        @NotNull
        private String key;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SavingStateLiveData(@Nullable SavedStateHandle savedStateHandle, @NotNull String key, T t) {
            super(t);
            Intrinsics.checkNotNullParameter(key, "key");
            this.key = key;
            this.handle = savedStateHandle;
        }

        public final void detach() {
            this.handle = null;
        }

        @Override // androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData
        public void setValue(T value) {
            SavedStateHandleImpl savedStateHandleImpl;
            SavedStateHandle savedStateHandle = this.handle;
            if (savedStateHandle != null && (savedStateHandleImpl = savedStateHandle.impl) != null) {
                savedStateHandleImpl.set(this.key, value);
            }
            super.setValue(value);
        }

        public SavingStateLiveData(@Nullable SavedStateHandle savedStateHandle, @NotNull String key) {
            Intrinsics.checkNotNullParameter(key, "key");
            this.key = key;
            this.handle = savedStateHandle;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SavedStateHandle() {
        this.liveDatas = new LinkedHashMap();
        this.impl = new SavedStateHandleImpl(null, 1, 0 == true ? 1 : 0);
    }
}
