package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import defpackage.AbstractC0892xc141c517;
import defpackage.C0437xf057c2bb;
import defpackage.C0438x8f8f2bcd;
import defpackage.C0439x3132ec9f;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a:\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u001e\u0010\u0003\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00050\u0004\"\b\u0012\u0004\u0012\u0002H\u00020\u0005H\u0086@¢\u0006\u0002\u0010\u0006\u001a*\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00050\u0007H\u0086@¢\u0006\u0002\u0010\b\u001a\"\u0010\t\u001a\u00020\n2\u0012\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\f0\u0004\"\u00020\fH\u0086@¢\u0006\u0002\u0010\r\u001a\u0018\u0010\t\u001a\u00020\n*\b\u0012\u0004\u0012\u00020\f0\u0007H\u0086@¢\u0006\u0002\u0010\b¨\u0006\u000e"}, d2 = {"awaitAll", "", ExifInterface.GPS_DIRECTION_TRUE, "deferreds", "", "Lkotlinx/coroutines/Deferred;", "([Lkotlinx/coroutines/Deferred;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "joinAll", "", "jobs", "Lkotlinx/coroutines/Job;", "([Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAwait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitKt\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,121:1\n37#2:122\n36#2,3:123\n13402#3,2:126\n1863#4,2:128\n*S KotlinDebug\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitKt\n*L\n36#1:122\n36#1:123,3\n47#1:126,2\n58#1:128,2\n*E\n"})
/* loaded from: classes3.dex */
public final class AwaitKt {
    @Nullable
    public static final <T> Object awaitAll(@NotNull Deferred<? extends T>[] deferredArr, @NotNull Continuation<? super List<? extends T>> continuation) {
        return deferredArr.length == 0 ? CollectionsKt__CollectionsKt.emptyList() : new C0437xf057c2bb(deferredArr).m3084xfbe0c504(continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object joinAll(@NotNull Collection<? extends Job> collection, @NotNull Continuation<? super Unit> continuation) {
        C0439x3132ec9f c0439x3132ec9f;
        int i;
        Iterator it;
        if (continuation instanceof C0439x3132ec9f) {
            C0439x3132ec9f c0439x3132ec9f2 = (C0439x3132ec9f) continuation;
            int i2 = c0439x3132ec9f2.f3891x1378447b;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0439x3132ec9f2.f3891x1378447b = i2 - Integer.MIN_VALUE;
                c0439x3132ec9f = c0439x3132ec9f2;
                Object obj = c0439x3132ec9f.f3890x3271d0aa;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0439x3132ec9f.f3891x1378447b;
                if (i != 0) {
                    ResultKt.throwOnFailure(obj);
                    it = collection.iterator();
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    it = c0439x3132ec9f.f3889xfbe0c504;
                    ResultKt.throwOnFailure(obj);
                }
                while (it.hasNext()) {
                    Job job = (Job) it.next();
                    c0439x3132ec9f.f3889xfbe0c504 = it;
                    c0439x3132ec9f.f3891x1378447b = 1;
                    if (job.join(c0439x3132ec9f) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                return Unit.INSTANCE;
            }
        }
        c0439x3132ec9f = new ContinuationImpl(continuation);
        Object obj2 = c0439x3132ec9f.f3890x3271d0aa;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0439x3132ec9f.f3891x1378447b;
        if (i != 0) {
        }
        while (it.hasNext()) {
        }
        return Unit.INSTANCE;
    }

    @Nullable
    public static final <T> Object awaitAll(@NotNull Collection<? extends Deferred<? extends T>> collection, @NotNull Continuation<? super List<? extends T>> continuation) {
        return collection.isEmpty() ? CollectionsKt__CollectionsKt.emptyList() : new C0437xf057c2bb((Deferred[]) collection.toArray(new Deferred[0])).m3084xfbe0c504(continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0052 -> B:10:0x0055). Please report as a decompilation issue!!! */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object joinAll(@NotNull Job[] jobArr, @NotNull Continuation<? super Unit> continuation) {
        C0438x8f8f2bcd c0438x8f8f2bcd;
        int i;
        int i2;
        Object[] objArr;
        int length;
        if (continuation instanceof C0438x8f8f2bcd) {
            C0438x8f8f2bcd c0438x8f8f2bcd2 = (C0438x8f8f2bcd) continuation;
            int i3 = c0438x8f8f2bcd2.f3888x9738a56c;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                c0438x8f8f2bcd2.f3888x9738a56c = i3 - Integer.MIN_VALUE;
                c0438x8f8f2bcd = c0438x8f8f2bcd2;
                Object obj = c0438x8f8f2bcd.f3887x75d576dc;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0438x8f8f2bcd.f3888x9738a56c;
                if (i != 0) {
                    ResultKt.throwOnFailure(obj);
                    i2 = 0;
                    objArr = jobArr;
                    length = jobArr.length;
                    if (i2 < length) {
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    length = c0438x8f8f2bcd.f3886x1378447b;
                    i2 = c0438x8f8f2bcd.f3885x3271d0aa;
                    Job[] jobArr2 = (Job[]) c0438x8f8f2bcd.f3884xfbe0c504;
                    ResultKt.throwOnFailure(obj);
                    Job[] jobArr3 = jobArr2;
                    i2++;
                    objArr = jobArr3;
                    if (i2 < length) {
                        NonCancellable nonCancellable = objArr[i2];
                        c0438x8f8f2bcd.f3884xfbe0c504 = objArr;
                        c0438x8f8f2bcd.f3885x3271d0aa = i2;
                        c0438x8f8f2bcd.f3886x1378447b = length;
                        c0438x8f8f2bcd.f3888x9738a56c = 1;
                        jobArr3 = objArr;
                        if (nonCancellable.join(c0438x8f8f2bcd) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        i2++;
                        objArr = jobArr3;
                        if (i2 < length) {
                            return Unit.INSTANCE;
                        }
                    }
                }
            }
        }
        c0438x8f8f2bcd = new ContinuationImpl(continuation);
        Object obj2 = c0438x8f8f2bcd.f3887x75d576dc;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0438x8f8f2bcd.f3888x9738a56c;
        if (i != 0) {
        }
    }
}
