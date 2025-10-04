package defpackage;

import java.io.OutputStream;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.Segment;
import okio.SegmentPool;
import okio.SegmentedByteString;
import okio.Sink;
import okio.Timeout;

/* renamed from: 딨따된땬둠딞딨돳땮딹뒝됩듬듸땀딻딸듐뒼돛둘돶돤딤땮뎸땯됩땡듼돰돛땩뎸땥뒐드돠딸든딽뒈돠듬뒙딟뒷뒷두뒤든됐딽득뒉딸뒷땲땥땵땭듌뎹딐돶딤딜딐딻땀딃딅듌돴땔딀디돰땤뎻뒝둥뎬땥땝돶땬땬뒵뒛땄뒐뒵돼땋딽뒻딁뒈둠뒝둑됐돴딌듸뒀땅둣됩딅땻땸땃뎸땭땋돶땋땝뒈뎸듽듌땪땁듟될뒝뎰, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1016x6f7814b4 implements Sink {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final OutputStream f5217xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Timeout f5218x3271d0aa;

    public C1016x6f7814b4(OutputStream out, Timeout timeout) {
        Intrinsics.checkNotNullParameter(out, "out");
        Intrinsics.checkNotNullParameter(timeout, "timeout");
        this.f5217xfbe0c504 = out;
        this.f5218x3271d0aa = timeout;
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f5217xfbe0c504.close();
    }

    @Override // okio.Sink, java.io.Flushable
    public final void flush() {
        this.f5217xfbe0c504.flush();
    }

    @Override // okio.Sink
    /* renamed from: timeout */
    public final Timeout getF3647xfbe0c504() {
        return this.f5218x3271d0aa;
    }

    public final String toString() {
        return "sink(" + this.f5217xfbe0c504 + ')';
    }

    @Override // okio.Sink
    public final void write(Buffer source, long j) {
        Intrinsics.checkNotNullParameter(source, "source");
        SegmentedByteString.checkOffsetAndCount(source.size(), 0L, j);
        while (j > 0) {
            this.f5218x3271d0aa.throwIfReached();
            Segment segment = source.head;
            Intrinsics.checkNotNull(segment);
            int min = (int) Math.min(j, segment.limit - segment.pos);
            this.f5217xfbe0c504.write(segment.data, segment.pos, min);
            segment.pos += min;
            long j2 = min;
            j -= j2;
            source.setSize$okio(source.size() - j2);
            if (segment.pos == segment.limit) {
                source.head = segment.pop();
                SegmentPool.recycle(segment);
            }
        }
    }
}
