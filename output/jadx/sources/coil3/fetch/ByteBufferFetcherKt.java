package coil3.fetch;

import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.ranges.AbstractC0296x1378447b;
import okio.Buffer;
import okio.Source;
import okio.Timeout;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000¨\u0006\u0003"}, d2 = {"asSource", "Lokio/Source;", "Ljava/nio/ByteBuffer;", "coil-core_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ByteBufferFetcherKt {
    @NotNull
    public static final Source asSource(@NotNull final ByteBuffer byteBuffer) {
        return new Source(byteBuffer) { // from class: coil3.fetch.ByteBufferFetcherKt$asSource$1

            /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
            public final ByteBuffer f604xfbe0c504;

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final int f605x3271d0aa;

            {
                ByteBuffer slice = byteBuffer.slice();
                this.f604xfbe0c504 = slice;
                this.f605x3271d0aa = slice.capacity();
            }

            @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // okio.Source
            public long read(Buffer sink, long byteCount) {
                ByteBuffer byteBuffer2 = this.f604xfbe0c504;
                int position = byteBuffer2.position();
                int i = this.f605x3271d0aa;
                if (position == i) {
                    return -1L;
                }
                byteBuffer2.limit(AbstractC0296x1378447b.coerceAtMost((int) (byteBuffer2.position() + byteCount), i));
                return sink.write(byteBuffer2);
            }

            @Override // okio.Source
            public Timeout timeout() {
                return Timeout.NONE;
            }
        };
    }
}
