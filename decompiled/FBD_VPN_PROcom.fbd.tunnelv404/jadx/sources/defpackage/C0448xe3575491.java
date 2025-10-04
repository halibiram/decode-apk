package defpackage;

import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.Sink;
import okio.Timeout;

/* renamed from: 돤디듔딤딁딝뒋돠땋딹뒹땦된딞둑딅땦땤땍듻땟땡땦딐땠땧뎬땩딀둑땝딄땮뒵뒈듸뎻득뒵돵듬뒨딨됩딐뒝득돨뒈땪듟돼딐돴뒾땰뒨됫딞디뒹딽딝둣딐뒨딄돠딞돴딝땩뒼돤딀땧딄됩딟돸뎰땦땸딜뒤될땳둘딻딁딜되딌뒼됐뎻땨땀됴딝뒵땬뎰뒤됐뒨뎸딌득뒛돤돠뎹둔땥돷됐돴돳돳땱뎹뒝됐따듌딌둠돨돴, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0448xe3575491 implements Sink {
    @Override // okio.Sink
    /* renamed from: timeout */
    public final Timeout getF3566xfbe0c504() {
        return Timeout.NONE;
    }

    @Override // okio.Sink
    public final void write(Buffer source, long j) {
        Intrinsics.checkNotNullParameter(source, "source");
        source.skip(j);
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // okio.Sink, java.io.Flushable
    public final void flush() {
    }
}
