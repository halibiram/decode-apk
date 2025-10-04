package androidx.lifecycle;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateWriter;
import defpackage.AbstractC0919x86d1e2e2;
import defpackage.AbstractC0962xa4a1ff52;
import defpackage.C0350x95f25580;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\f\u0010\u0013\u001a\u00060\u000bj\u0002`\fH\u0016J\u0006\u0010\u0014\u001a\u00020\u0015J\u0016\u0010\u0016\u001a\n\u0018\u00010\u000bj\u0004\u0018\u0001`\f2\u0006\u0010\u0017\u001a\u00020\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0018\u00010\u000bj\u0004\u0018\u0001`\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0019"}, d2 = {"Landroidx/lifecycle/SavedStateHandlesProvider;", "Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;", "savedStateRegistry", "Landroidx/savedstate/SavedStateRegistry;", "viewModelStoreOwner", "Landroidx/lifecycle/ViewModelStoreOwner;", "<init>", "(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/ViewModelStoreOwner;)V", "restored", "", "restoredState", "Landroid/os/Bundle;", "Landroidx/savedstate/SavedState;", "viewModel", "Landroidx/lifecycle/SavedStateHandlesVM;", "getViewModel", "()Landroidx/lifecycle/SavedStateHandlesVM;", "viewModel$delegate", "Lkotlin/Lazy;", "saveState", "performRestore", "", "consumeRestoredStateForKey", "key", "", "lifecycle-viewmodel-savedstate_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSavedStateHandleSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateHandleSupport.kt\nandroidx/lifecycle/SavedStateHandlesProvider\n+ 2 SavedState.android.kt\nandroidx/savedstate/SavedStateKt__SavedState_androidKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 SavedState.kt\nandroidx/savedstate/SavedStateKt__SavedStateKt\n+ 7 SavedState.android.kt\nandroidx/savedstate/SavedStateKt__SavedState_androidKt$savedState$1\n*L\n1#1,240:1\n27#2:241\n46#2:242\n32#2,4:243\n31#2,7:253\n27#2:266\n46#2:267\n32#2,4:268\n31#2,7:278\n27#2:290\n46#2:291\n32#2,4:292\n31#2,7:302\n126#3:247\n153#3,3:248\n216#3:263\n217#3:265\n126#3:272\n153#3,3:273\n126#3:296\n153#3,3:297\n37#4,2:251\n37#4,2:276\n37#4,2:300\n1#5:260\n1#5:262\n1#5:285\n1#5:287\n1#5:309\n106#6:261\n90#6:264\n106#6:286\n90#6:288\n90#6:289\n106#6:310\n106#6:312\n90#6:313\n46#7:311\n*S KotlinDebug\n*F\n+ 1 SavedStateHandleSupport.kt\nandroidx/lifecycle/SavedStateHandlesProvider\n*L\n159#1:241\n159#1:242\n159#1:243,4\n159#1:253,7\n182#1:266\n182#1:267\n182#1:268,4\n182#1:278,7\n200#1:290\n200#1:291\n200#1:292,4\n200#1:302,7\n159#1:247\n159#1:248,3\n166#1:263\n166#1:265\n182#1:272\n182#1:273,3\n200#1:296\n200#1:297,3\n159#1:251,2\n182#1:276,2\n200#1:300,2\n159#1:260\n182#1:285\n200#1:309\n159#1:261\n168#1:264\n182#1:286\n198#1:288\n200#1:289\n200#1:310\n201#1:312\n202#1:313\n200#1:311\n*E\n"})
/* loaded from: classes.dex */
public final class SavedStateHandlesProvider implements SavedStateRegistry.SavedStateProvider {
    private boolean restored;

    @Nullable
    private Bundle restoredState;

    @NotNull
    private final SavedStateRegistry savedStateRegistry;

    /* renamed from: viewModel$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy viewModel;

    public SavedStateHandlesProvider(@NotNull SavedStateRegistry savedStateRegistry, @NotNull ViewModelStoreOwner viewModelStoreOwner) {
        Intrinsics.checkNotNullParameter(savedStateRegistry, "savedStateRegistry");
        Intrinsics.checkNotNullParameter(viewModelStoreOwner, "viewModelStoreOwner");
        this.savedStateRegistry = savedStateRegistry;
        this.viewModel = AbstractC0919x86d1e2e2.lazy(new C0350x95f25580(viewModelStoreOwner, 14));
    }

    private final SavedStateHandlesVM getViewModel() {
        return (SavedStateHandlesVM) this.viewModel.getValue();
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    public static /* synthetic */ SavedStateHandlesVM m635xfbe0c504(ViewModelStoreOwner viewModelStoreOwner) {
        return SavedStateHandleSupport.getSavedStateHandlesVM(viewModelStoreOwner);
    }

    @Nullable
    public final Bundle consumeRestoredStateForKey(@NotNull String key) {
        Pair[] pairArr;
        Intrinsics.checkNotNullParameter(key, "key");
        performRestore();
        Bundle bundle = this.restoredState;
        if (bundle == null || !SavedStateReader.m685containsimpl(SavedStateReader.m684constructorimpl(bundle), key)) {
            return null;
        }
        Bundle m746getSavedStateOrNullimpl = SavedStateReader.m746getSavedStateOrNullimpl(SavedStateReader.m684constructorimpl(bundle), key);
        if (m746getSavedStateOrNullimpl == null) {
            Map emptyMap = AbstractC0962xa4a1ff52.emptyMap();
            if (emptyMap.isEmpty()) {
                pairArr = new Pair[0];
            } else {
                ArrayList arrayList = new ArrayList(emptyMap.size());
                for (Map.Entry entry : emptyMap.entrySet()) {
                    arrayList.add(TuplesKt.to((String) entry.getKey(), entry.getValue()));
                }
                pairArr = (Pair[]) arrayList.toArray(new Pair[0]);
            }
            m746getSavedStateOrNullimpl = BundleKt.bundleOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
            SavedStateWriter.m771constructorimpl(m746getSavedStateOrNullimpl);
        }
        SavedStateWriter.m807removeimpl(SavedStateWriter.m771constructorimpl(bundle), key);
        if (SavedStateReader.m762isEmptyimpl(SavedStateReader.m684constructorimpl(bundle))) {
            this.restoredState = null;
        }
        return m746getSavedStateOrNullimpl;
    }

    public final void performRestore() {
        Pair[] pairArr;
        if (!this.restored) {
            Bundle consumeRestoredStateForKey = this.savedStateRegistry.consumeRestoredStateForKey(SavedStateHandleSupport.SAVED_STATE_KEY);
            Map emptyMap = AbstractC0962xa4a1ff52.emptyMap();
            if (emptyMap.isEmpty()) {
                pairArr = new Pair[0];
            } else {
                ArrayList arrayList = new ArrayList(emptyMap.size());
                for (Map.Entry entry : emptyMap.entrySet()) {
                    arrayList.add(TuplesKt.to((String) entry.getKey(), entry.getValue()));
                }
                pairArr = (Pair[]) arrayList.toArray(new Pair[0]);
            }
            Bundle bundleOf = BundleKt.bundleOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
            Bundle m771constructorimpl = SavedStateWriter.m771constructorimpl(bundleOf);
            Bundle bundle = this.restoredState;
            if (bundle != null) {
                SavedStateWriter.m775putAllimpl(m771constructorimpl, bundle);
            }
            if (consumeRestoredStateForKey != null) {
                SavedStateWriter.m775putAllimpl(m771constructorimpl, consumeRestoredStateForKey);
            }
            this.restoredState = bundleOf;
            this.restored = true;
            getViewModel();
        }
    }

    @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
    @NotNull
    public Bundle saveState() {
        Pair[] pairArr;
        Map emptyMap = AbstractC0962xa4a1ff52.emptyMap();
        if (emptyMap.isEmpty()) {
            pairArr = new Pair[0];
        } else {
            ArrayList arrayList = new ArrayList(emptyMap.size());
            for (Map.Entry entry : emptyMap.entrySet()) {
                arrayList.add(TuplesKt.to((String) entry.getKey(), entry.getValue()));
            }
            pairArr = (Pair[]) arrayList.toArray(new Pair[0]);
        }
        Bundle bundleOf = BundleKt.bundleOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
        Bundle m771constructorimpl = SavedStateWriter.m771constructorimpl(bundleOf);
        Bundle bundle = this.restoredState;
        if (bundle != null) {
            SavedStateWriter.m775putAllimpl(m771constructorimpl, bundle);
        }
        for (Map.Entry<String, SavedStateHandle> entry2 : getViewModel().getHandles().entrySet()) {
            String key = entry2.getKey();
            Bundle saveState = entry2.getValue().savedStateProvider().saveState();
            if (!SavedStateReader.m762isEmptyimpl(SavedStateReader.m684constructorimpl(saveState))) {
                SavedStateWriter.m798putSavedStateimpl(m771constructorimpl, key, saveState);
            }
        }
        this.restored = false;
        return bundleOf;
    }
}
