package androidx.work.impl;

import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import defpackage.AbstractC1171xd502b911;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\b\u001a\u00020\tH\u0016J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Landroidx/work/impl/SynchronizedStartStopTokensImpl;", "Landroidx/work/impl/StartStopTokens;", "delegate", "(Landroidx/work/impl/StartStopTokens;)V", "lock", "", "contains", "", "id", "Landroidx/work/impl/model/WorkGenerationalId;", "remove", "Landroidx/work/impl/StartStopToken;", "", "workSpecId", "", "tokenFor", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nStartStopToken.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StartStopToken.kt\nandroidx/work/impl/SynchronizedStartStopTokensImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,104:1\n1#2:105\n*E\n"})
/* loaded from: classes.dex */
public final class SynchronizedStartStopTokensImpl implements StartStopTokens {

    @NotNull
    private final StartStopTokens delegate;

    @NotNull
    private final Object lock;

    public SynchronizedStartStopTokensImpl(@NotNull StartStopTokens delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
        this.lock = new Object();
    }

    @Override // androidx.work.impl.StartStopTokens
    public boolean contains(@NotNull WorkGenerationalId id) {
        boolean contains;
        Intrinsics.checkNotNullParameter(id, "id");
        synchronized (this.lock) {
            contains = this.delegate.contains(id);
        }
        return contains;
    }

    @Override // androidx.work.impl.StartStopTokens
    public final /* synthetic */ StartStopToken remove(WorkSpec workSpec) {
        return AbstractC1171xd502b911.m3923xfbe0c504(this, workSpec);
    }

    @Override // androidx.work.impl.StartStopTokens
    public final /* synthetic */ StartStopToken tokenFor(WorkSpec workSpec) {
        return AbstractC1171xd502b911.m3924x3271d0aa(this, workSpec);
    }

    @Override // androidx.work.impl.StartStopTokens
    @Nullable
    public StartStopToken remove(@NotNull WorkGenerationalId id) {
        StartStopToken remove;
        Intrinsics.checkNotNullParameter(id, "id");
        synchronized (this.lock) {
            remove = this.delegate.remove(id);
        }
        return remove;
    }

    @Override // androidx.work.impl.StartStopTokens
    @NotNull
    public StartStopToken tokenFor(@NotNull WorkGenerationalId id) {
        StartStopToken startStopToken;
        Intrinsics.checkNotNullParameter(id, "id");
        synchronized (this.lock) {
            startStopToken = this.delegate.tokenFor(id);
        }
        return startStopToken;
    }

    @Override // androidx.work.impl.StartStopTokens
    @NotNull
    public List<StartStopToken> remove(@NotNull String workSpecId) {
        List<StartStopToken> remove;
        Intrinsics.checkNotNullParameter(workSpecId, "workSpecId");
        synchronized (this.lock) {
            remove = this.delegate.remove(workSpecId);
        }
        return remove;
    }
}
