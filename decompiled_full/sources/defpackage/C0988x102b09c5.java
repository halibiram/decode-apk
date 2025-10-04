package defpackage;

import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MultipartReader;
import okio.Buffer;
import okio.BufferedSource;
import okio.Source;
import okio.Timeout;

/* renamed from: 딟뒻듻땪딐딞딀돠듻돨둔딸둬뒐땟뎠뒾땯딞땲돝뎹돝돸딄딄뒤디뒹딝둣땨돶딄듽듔땜딌땬듰뒤땍뒈땐됫땡땧뎰둥땐둘뎬됴둑둘뒀돵딁됴뒤된뎠땵땦뒹뒀뒼딅드딄된뒼땔딨돠딸땨딹돼딟듼뎬뎻듐땟듼땨딞땝땡땃뒤딸듟땦뎹땤딹둑뎬땋드됫땯땋땟땄딻뒝들딄뎡딽듟딨땁됴땤땵득둬땳땐땠뒀돶들들딨뒨, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0988x102b09c5 implements Source {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Timeout f5162xfbe0c504 = new Timeout();

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ MultipartReader f5163x3271d0aa;

    public C0988x102b09c5(MultipartReader multipartReader) {
        this.f5163x3271d0aa = multipartReader;
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        C0988x102b09c5 c0988x102b09c5;
        MultipartReader multipartReader = this.f5163x3271d0aa;
        c0988x102b09c5 = multipartReader.f2853x95f25580;
        if (Intrinsics.areEqual(c0988x102b09c5, this)) {
            multipartReader.f2853x95f25580 = null;
        }
    }

    @Override // okio.Source
    public final long read(Buffer sink, long j) {
        C0988x102b09c5 c0988x102b09c5;
        BufferedSource bufferedSource;
        long m2518xfbe0c504;
        BufferedSource bufferedSource2;
        long read;
        long m2518xfbe0c5042;
        BufferedSource bufferedSource3;
        long read2;
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (j >= 0) {
            MultipartReader multipartReader = this.f5163x3271d0aa;
            c0988x102b09c5 = multipartReader.f2853x95f25580;
            if (Intrinsics.areEqual(c0988x102b09c5, this)) {
                bufferedSource = multipartReader.f2846xfbe0c504;
                Timeout f3649xfbe0c504 = bufferedSource.getF3649xfbe0c504();
                Timeout timeout = this.f5162xfbe0c504;
                long f3668x1378447b = f3649xfbe0c504.getF3668x1378447b();
                long minTimeout = Timeout.INSTANCE.minTimeout(timeout.getF3668x1378447b(), f3649xfbe0c504.getF3668x1378447b());
                TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                f3649xfbe0c504.timeout(minTimeout, timeUnit);
                if (f3649xfbe0c504.getF3666xfbe0c504()) {
                    long deadlineNanoTime = f3649xfbe0c504.deadlineNanoTime();
                    if (timeout.getF3666xfbe0c504()) {
                        f3649xfbe0c504.deadlineNanoTime(Math.min(f3649xfbe0c504.deadlineNanoTime(), timeout.deadlineNanoTime()));
                    }
                    try {
                        m2518xfbe0c5042 = multipartReader.m2518xfbe0c504(j);
                        if (m2518xfbe0c5042 != 0) {
                            bufferedSource3 = multipartReader.f2846xfbe0c504;
                            read2 = bufferedSource3.read(sink, m2518xfbe0c5042);
                        } else {
                            read2 = -1;
                        }
                        f3649xfbe0c504.timeout(f3668x1378447b, timeUnit);
                        if (timeout.getF3666xfbe0c504()) {
                            f3649xfbe0c504.deadlineNanoTime(deadlineNanoTime);
                        }
                        return read2;
                    } catch (Throwable th) {
                        f3649xfbe0c504.timeout(f3668x1378447b, TimeUnit.NANOSECONDS);
                        if (timeout.getF3666xfbe0c504()) {
                            f3649xfbe0c504.deadlineNanoTime(deadlineNanoTime);
                        }
                        throw th;
                    }
                }
                if (timeout.getF3666xfbe0c504()) {
                    f3649xfbe0c504.deadlineNanoTime(timeout.deadlineNanoTime());
                }
                try {
                    m2518xfbe0c504 = multipartReader.m2518xfbe0c504(j);
                    if (m2518xfbe0c504 != 0) {
                        bufferedSource2 = multipartReader.f2846xfbe0c504;
                        read = bufferedSource2.read(sink, m2518xfbe0c504);
                    } else {
                        read = -1;
                    }
                    f3649xfbe0c504.timeout(f3668x1378447b, timeUnit);
                    if (timeout.getF3666xfbe0c504()) {
                        f3649xfbe0c504.clearDeadline();
                    }
                    return read;
                } catch (Throwable th2) {
                    f3649xfbe0c504.timeout(f3668x1378447b, TimeUnit.NANOSECONDS);
                    if (timeout.getF3666xfbe0c504()) {
                        f3649xfbe0c504.clearDeadline();
                    }
                    throw th2;
                }
            }
            throw new IllegalStateException("closed");
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3337xab142723("byteCount < 0: ", j).toString());
    }

    @Override // okio.Source
    /* renamed from: timeout */
    public final Timeout getF3649xfbe0c504() {
        return this.f5162xfbe0c504;
    }
}
