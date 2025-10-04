package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import defpackage.AbstractC0892xc141c517;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\bf\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002J\u000e\u0010\u0003\u001a\u00020\u0004H¦B¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00028\u0000H\u0097@¢\u0006\u0004\b\u0007\u0010\u0005J\u000e\u0010\u0007\u001a\u00028\u0000H¦\u0002¢\u0006\u0002\u0010\b¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/channels/ChannelIterator;", ExifInterface.LONGITUDE_EAST, "", "hasNext", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "next0", "next", "()Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface ChannelIterator<E> {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:12:0x0049  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x004e  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0033  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.3.0, binary compatibility with versions <= 1.2.x")
        @JvmName(name = "next")
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static Object next(ChannelIterator channelIterator, Continuation continuation) {
            C0310x1378447b c0310x1378447b;
            Object obj;
            int i;
            ChannelIterator channelIterator2;
            if (continuation instanceof C0310x1378447b) {
                C0310x1378447b c0310x1378447b2 = (C0310x1378447b) continuation;
                int i2 = c0310x1378447b2.f1857x1378447b;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    c0310x1378447b2.f1857x1378447b = i2 - Integer.MIN_VALUE;
                    c0310x1378447b = c0310x1378447b2;
                    obj = c0310x1378447b.f1856x3271d0aa;
                    Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                    i = c0310x1378447b.f1857x1378447b;
                    if (i == 0) {
                        if (i == 1) {
                            ChannelIterator channelIterator3 = c0310x1378447b.f1855xfbe0c504;
                            ResultKt.throwOnFailure(obj);
                            channelIterator2 = channelIterator3;
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        ResultKt.throwOnFailure(obj);
                        c0310x1378447b.f1855xfbe0c504 = channelIterator;
                        c0310x1378447b.f1857x1378447b = 1;
                        obj = channelIterator.hasNext(c0310x1378447b);
                        channelIterator2 = channelIterator;
                        if (obj == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    if (!((Boolean) obj).booleanValue()) {
                        return channelIterator2.next();
                    }
                    throw new ClosedReceiveChannelException(ChannelsKt.DEFAULT_CLOSE_MESSAGE);
                }
            }
            c0310x1378447b = new ContinuationImpl(continuation);
            obj = c0310x1378447b.f1856x3271d0aa;
            Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
            i = c0310x1378447b.f1857x1378447b;
            if (i == 0) {
            }
            if (!((Boolean) obj).booleanValue()) {
            }
        }
    }

    @Nullable
    Object hasNext(@NotNull Continuation<? super Boolean> continuation);

    E next();

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.3.0, binary compatibility with versions <= 1.2.x")
    @JvmName(name = "next")
    /* synthetic */ Object next(Continuation continuation);
}
