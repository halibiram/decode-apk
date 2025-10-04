package okhttp3.internal.http2;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.http2.flowcontrol.WindowCounter;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001:\u0001\u000bJ\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\fÀ\u0006\u0001"}, d2 = {"Lokhttp3/internal/http2/FlowControlListener;", "", "receivingConnectionWindowChanged", "", "windowCounter", "Lokhttp3/internal/http2/flowcontrol/WindowCounter;", "receivingStreamWindowChanged", "streamId", "", "bufferSize", "", "None", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface FlowControlListener {

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001J'\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lokhttp3/internal/http2/FlowControlListener$None;", "Lokhttp3/internal/http2/FlowControlListener;", "", "streamId", "Lokhttp3/internal/http2/flowcontrol/WindowCounter;", "windowCounter", "", "bufferSize", "", "receivingStreamWindowChanged", "(ILokhttp3/internal/http2/flowcontrol/WindowCounter;J)V", "receivingConnectionWindowChanged", "(Lokhttp3/internal/http2/flowcontrol/WindowCounter;)V", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class None implements FlowControlListener {

        @NotNull
        public static final None INSTANCE = new Object();

        @Override // okhttp3.internal.http2.FlowControlListener
        public void receivingConnectionWindowChanged(@NotNull WindowCounter windowCounter) {
            Intrinsics.checkNotNullParameter(windowCounter, "windowCounter");
        }

        @Override // okhttp3.internal.http2.FlowControlListener
        public void receivingStreamWindowChanged(int streamId, @NotNull WindowCounter windowCounter, long bufferSize) {
            Intrinsics.checkNotNullParameter(windowCounter, "windowCounter");
        }
    }

    void receivingConnectionWindowChanged(@NotNull WindowCounter windowCounter);

    void receivingStreamWindowChanged(int streamId, @NotNull WindowCounter windowCounter, long bufferSize);
}
