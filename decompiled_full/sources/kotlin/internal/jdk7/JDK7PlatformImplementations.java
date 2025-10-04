package kotlin.internal.jdk7;

import defpackage.AbstractC0895x5725f626;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.internal.PlatformImplementations;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\b\u0010\u0018\u00002\u00020\u0001:\u0001\rB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\b\u0010\tJ\u001d\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\n2\u0006\u0010\u0006\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lkotlin/internal/jdk7/JDK7PlatformImplementations;", "Lkotlin/internal/PlatformImplementations;", "<init>", "()V", "", "cause", "exception", "", "addSuppressed", "(Ljava/lang/Throwable;Ljava/lang/Throwable;)V", "", "getSuppressed", "(Ljava/lang/Throwable;)Ljava/util/List;", "딁뎻들듬될딟돷둠딝됐땹딅땬듟땵돼땧뎨땄땰딤딀뒬딁돸땲뒙땃뒋됫뒬돼땳땧딐듔딁딄땩딤땱듽딁뒻딀돴딞돸딝딹딞땨뒵뎨뎹땟땰뒐땟뎹뒛돤땡땪딀돵뎡뎰뒨뎬뎬뎨땯딄돵듽되들둥돰땳뒙둔딝땬뎸듼둣뒋땁땐땯딟두땅뎡둡뎻땣돰뒨둥돼땃땀들딁뎽땱뎸돨듐돴됫딨딠딠뎡딎딀딠땡디땝딨땰딹딄뒋땲", "kotlin-stdlib-jdk7"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public class JDK7PlatformImplementations extends PlatformImplementations {
    @Override // kotlin.internal.PlatformImplementations
    public void addSuppressed(@NotNull Throwable cause, @NotNull Throwable exception) {
        Intrinsics.checkNotNullParameter(cause, "cause");
        Intrinsics.checkNotNullParameter(exception, "exception");
        Integer num = AbstractC0895x5725f626.f5019xfbe0c504;
        if (num != null && num.intValue() < 19) {
            super.addSuppressed(cause, exception);
        } else {
            cause.addSuppressed(exception);
        }
    }

    @Override // kotlin.internal.PlatformImplementations
    @NotNull
    public List<Throwable> getSuppressed(@NotNull Throwable exception) {
        Intrinsics.checkNotNullParameter(exception, "exception");
        Integer num = AbstractC0895x5725f626.f5019xfbe0c504;
        if (num != null && num.intValue() < 19) {
            return super.getSuppressed(exception);
        }
        Throwable[] suppressed = exception.getSuppressed();
        Intrinsics.checkNotNullExpressionValue(suppressed, "getSuppressed(...)");
        return ArraysKt___ArraysJvmKt.asList(suppressed);
    }
}
