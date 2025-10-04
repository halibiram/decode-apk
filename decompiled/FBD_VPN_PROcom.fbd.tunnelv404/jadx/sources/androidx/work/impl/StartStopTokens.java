package androidx.work.impl;

import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\bf\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eJ\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\n2\u0006\u0010\u000b\u001a\u00020\fH&J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000fÀ\u0006\u0001"}, d2 = {"Landroidx/work/impl/StartStopTokens;", "", "contains", "", "id", "Landroidx/work/impl/model/WorkGenerationalId;", "remove", "Landroidx/work/impl/StartStopToken;", "spec", "Landroidx/work/impl/model/WorkSpec;", "", "workSpecId", "", "tokenFor", "Companion", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface StartStopTokens {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Landroidx/work/impl/StartStopTokens$Companion;", "", "()V", "create", "Landroidx/work/impl/StartStopTokens;", "synchronized", "", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public static /* synthetic */ StartStopTokens create$default(Companion companion, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = true;
            }
            return companion.create(z);
        }

        @JvmStatic
        @JvmOverloads
        @NotNull
        public final StartStopTokens create() {
            return create$default(this, false, 1, null);
        }

        @JvmStatic
        @JvmOverloads
        @NotNull
        public final StartStopTokens create(boolean r2) {
            StartStopTokensImpl startStopTokensImpl = new StartStopTokensImpl();
            return r2 ? new SynchronizedStartStopTokensImpl(startStopTokensImpl) : startStopTokensImpl;
        }
    }

    boolean contains(@NotNull WorkGenerationalId id);

    @Nullable
    StartStopToken remove(@NotNull WorkGenerationalId id);

    @Nullable
    StartStopToken remove(@NotNull WorkSpec spec);

    @NotNull
    List<StartStopToken> remove(@NotNull String workSpecId);

    @NotNull
    StartStopToken tokenFor(@NotNull WorkGenerationalId id);

    @NotNull
    StartStopToken tokenFor(@NotNull WorkSpec spec);
}
