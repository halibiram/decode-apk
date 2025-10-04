package defpackage;

import java.io.IOException;
import java.io.InputStream;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.Okio;
import okio.Segment;
import okio.SegmentPool;
import okio.Source;
import okio.Timeout;

/* renamed from: 딀듨돷땋땁땱뒝득듐도뒬딽땠뒙땮돰돰둑땄딀듔딻둠땨둡땧딝된딜뒋드뒋땸뒻땅돠딀됩뒀땰뒙딻딸뒤딽뎹땻뎬돝됴뒻땡뒐땰땔뎽땡듬둘땄둥듔딀듔땄땀딄땸돳땤땮되뒼뒘됫땭딐땩디땮딤땃땱뎠됩됐땳딽돶됴뎬땡땯땱둥딹뒨땩듸돤듼뒼듸돤뒻딸뒻둥됨뎠뒤둬돵됩뒛둑뒹딝땬땭듸딁딻도땻땭땩뒹드땀, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0887x5654f8f8 implements Source {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final InputStream f5010xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Timeout f5011x3271d0aa;

    public C0887x5654f8f8(InputStream input, Timeout timeout) {
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(timeout, "timeout");
        this.f5010xfbe0c504 = input;
        this.f5011x3271d0aa = timeout;
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f5010xfbe0c504.close();
    }

    @Override // okio.Source
    public final long read(Buffer sink, long j) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (j == 0) {
            return 0L;
        }
        if (j >= 0) {
            try {
                this.f5011x3271d0aa.throwIfReached();
                Segment writableSegment$okio = sink.writableSegment$okio(1);
                int read = this.f5010xfbe0c504.read(writableSegment$okio.data, writableSegment$okio.limit, (int) Math.min(j, 8192 - writableSegment$okio.limit));
                if (read == -1) {
                    if (writableSegment$okio.pos == writableSegment$okio.limit) {
                        sink.head = writableSegment$okio.pop();
                        SegmentPool.recycle(writableSegment$okio);
                        return -1L;
                    }
                    return -1L;
                }
                writableSegment$okio.limit += read;
                long j2 = read;
                sink.setSize$okio(sink.size() + j2);
                return j2;
            } catch (AssertionError e) {
                if (Okio.isAndroidGetsocknameError(e)) {
                    throw new IOException(e);
                }
                throw e;
            }
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3337xab142723("byteCount < 0: ", j).toString());
    }

    @Override // okio.Source
    /* renamed from: timeout */
    public final Timeout getF3090xfbe0c504() {
        return this.f5011x3271d0aa;
    }

    public final String toString() {
        return "source(" + this.f5010xfbe0c504 + ')';
    }
}
