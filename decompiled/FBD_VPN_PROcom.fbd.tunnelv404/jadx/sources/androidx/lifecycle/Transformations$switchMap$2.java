package androidx.lifecycle;

import androidx.arch.core.util.Function;
import defpackage.C1245x38df3d93;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0015\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u000bR\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007¨\u0006\f"}, d2 = {"androidx/lifecycle/Transformations$switchMap$2", "Landroidx/lifecycle/Observer;", "liveData", "Landroidx/lifecycle/LiveData;", "getLiveData", "()Landroidx/lifecycle/LiveData;", "setLiveData", "(Landroidx/lifecycle/LiveData;)V", "onChanged", "", "value", "(Ljava/lang/Object;)V", "lifecycle-livedata_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes.dex */
public final class Transformations$switchMap$2 implements Observer {
    final /* synthetic */ MediatorLiveData $result;
    final /* synthetic */ Function $switchMapFunction;
    private LiveData liveData;

    public Transformations$switchMap$2(Function function, MediatorLiveData mediatorLiveData) {
        this.$switchMapFunction = function;
        this.$result = mediatorLiveData;
    }

    public static final Unit onChanged$lambda$0(MediatorLiveData mediatorLiveData, Object obj) {
        mediatorLiveData.setValue(obj);
        return Unit.INSTANCE;
    }

    public final LiveData getLiveData() {
        return this.liveData;
    }

    @Override // androidx.lifecycle.Observer
    public void onChanged(Object value) {
        LiveData liveData = (LiveData) this.$switchMapFunction.apply(value);
        LiveData liveData2 = this.liveData;
        if (liveData2 == liveData) {
            return;
        }
        if (liveData2 != null) {
            MediatorLiveData mediatorLiveData = this.$result;
            Intrinsics.checkNotNull(liveData2);
            mediatorLiveData.removeSource(liveData2);
        }
        this.liveData = liveData;
        if (liveData != null) {
            MediatorLiveData mediatorLiveData2 = this.$result;
            Intrinsics.checkNotNull(liveData);
            mediatorLiveData2.addSource(liveData, new Transformations$sam$androidx_lifecycle_Observer$0(new C1245x38df3d93(this.$result, 1)));
        }
    }

    public final void setLiveData(LiveData liveData) {
        this.liveData = liveData;
    }
}
