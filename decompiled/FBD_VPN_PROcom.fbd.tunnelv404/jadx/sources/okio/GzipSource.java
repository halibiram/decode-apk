package okio;

import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
import kotlin.Metadata;
import kotlin.UShort;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\t\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lokio/GzipSource;", "Lokio/Source;", "source", "<init>", "(Lokio/Source;)V", "Lokio/Buffer;", "sink", "", "byteCount", "read", "(Lokio/Buffer;J)J", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "", "close", "()V", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGzipSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GzipSource.kt\nokio/GzipSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 RealBufferedSource.kt\nokio/RealBufferedSource\n+ 4 GzipSource.kt\nokio/-GzipSourceExtensions\n+ 5 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,222:1\n1#2:223\n63#3:224\n63#3:226\n63#3:228\n63#3:229\n63#3:230\n63#3:232\n63#3:234\n204#4:225\n204#4:227\n204#4:231\n204#4:233\n88#5:235\n*S KotlinDebug\n*F\n+ 1 GzipSource.kt\nokio/GzipSource\n*L\n103#1:224\n105#1:226\n117#1:228\n118#1:229\n120#1:230\n131#1:232\n142#1:234\n104#1:225\n115#1:227\n128#1:231\n139#1:233\n185#1:235\n*E\n"})
/* loaded from: classes3.dex */
public final class GzipSource implements Source {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public byte f3612xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final RealBufferedSource f3613x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final Inflater f3614x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final InflaterSource f3615x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final CRC32 f3616x9738a56c;

    public GzipSource(@NotNull Source source) {
        Intrinsics.checkNotNullParameter(source, "source");
        RealBufferedSource realBufferedSource = new RealBufferedSource(source);
        this.f3613x3271d0aa = realBufferedSource;
        Inflater inflater = new Inflater(true);
        this.f3614x1378447b = inflater;
        this.f3615x75d576dc = new InflaterSource((BufferedSource) realBufferedSource, inflater);
        this.f3616x9738a56c = new CRC32();
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static void m2660xfbe0c504(int i, int i2, String str) {
        if (i2 == i) {
            return;
        }
        StringBuilder m2943xc20437a5 = AbstractC0362x4440ab85.m2943xc20437a5(str, ": actual 0x");
        m2943xc20437a5.append(StringsKt__StringsKt.padStart(SegmentedByteString.toHexString(i2), 8, '0'));
        m2943xc20437a5.append(" != expected 0x");
        m2943xc20437a5.append(StringsKt__StringsKt.padStart(SegmentedByteString.toHexString(i), 8, '0'));
        throw new IOException(m2943xc20437a5.toString());
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f3615x75d576dc.close();
    }

    @Override // okio.Source
    public long read(@NotNull Buffer sink, long byteCount) {
        boolean z;
        byte b;
        long j;
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (byteCount >= 0) {
            if (byteCount == 0) {
                return 0L;
            }
            byte b2 = this.f3612xfbe0c504;
            CRC32 crc32 = this.f3616x9738a56c;
            RealBufferedSource realBufferedSource = this.f3613x3271d0aa;
            if (b2 == 0) {
                realBufferedSource.require(10L);
                byte b3 = realBufferedSource.bufferField.getByte(3L);
                if (((b3 >> 1) & 1) == 1) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    b = 0;
                    m2661x3271d0aa(0L, realBufferedSource.bufferField, 10L);
                } else {
                    b = 0;
                }
                m2660xfbe0c504(8075, realBufferedSource.readShort(), "ID1ID2");
                realBufferedSource.skip(8L);
                if (((b3 >> 2) & 1) == 1) {
                    realBufferedSource.require(2L);
                    if (z) {
                        m2661x3271d0aa(0L, realBufferedSource.bufferField, 2L);
                    }
                    long readShortLe = realBufferedSource.bufferField.readShortLe() & UShort.MAX_VALUE;
                    realBufferedSource.require(readShortLe);
                    if (z) {
                        m2661x3271d0aa(0L, realBufferedSource.bufferField, readShortLe);
                        j = readShortLe;
                    } else {
                        j = readShortLe;
                    }
                    realBufferedSource.skip(j);
                }
                if (((b3 >> 3) & 1) == 1) {
                    long indexOf = realBufferedSource.indexOf(b);
                    if (indexOf != -1) {
                        if (z) {
                            m2661x3271d0aa(0L, realBufferedSource.bufferField, indexOf + 1);
                        }
                        realBufferedSource.skip(indexOf + 1);
                    } else {
                        throw new EOFException();
                    }
                }
                if (((b3 >> 4) & 1) == 1) {
                    long indexOf2 = realBufferedSource.indexOf(b);
                    if (indexOf2 != -1) {
                        if (z) {
                            m2661x3271d0aa(0L, realBufferedSource.bufferField, indexOf2 + 1);
                        }
                        realBufferedSource.skip(indexOf2 + 1);
                    } else {
                        throw new EOFException();
                    }
                }
                if (z) {
                    m2660xfbe0c504(realBufferedSource.readShortLe(), (short) crc32.getValue(), "FHCRC");
                    crc32.reset();
                }
                this.f3612xfbe0c504 = (byte) 1;
            }
            if (this.f3612xfbe0c504 == 1) {
                long size = sink.size();
                long read = this.f3615x75d576dc.read(sink, byteCount);
                if (read != -1) {
                    m2661x3271d0aa(size, sink, read);
                    return read;
                }
                this.f3612xfbe0c504 = (byte) 2;
            }
            if (this.f3612xfbe0c504 == 2) {
                m2660xfbe0c504(realBufferedSource.readIntLe(), (int) crc32.getValue(), "CRC");
                m2660xfbe0c504(realBufferedSource.readIntLe(), (int) this.f3614x1378447b.getBytesWritten(), "ISIZE");
                this.f3612xfbe0c504 = (byte) 3;
                if (realBufferedSource.exhausted()) {
                    return -1L;
                }
                throw new IOException("gzip finished without exhausting source");
            }
            return -1L;
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3337xab142723("byteCount < 0: ", byteCount).toString());
    }

    @Override // okio.Source
    @NotNull
    /* renamed from: timeout */
    public Timeout getF3568xfbe0c504() {
        return this.f3613x3271d0aa.getF3568xfbe0c504();
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final void m2661x3271d0aa(long j, Buffer buffer, long j2) {
        Segment segment = buffer.head;
        Intrinsics.checkNotNull(segment);
        while (true) {
            int i = segment.limit;
            int i2 = segment.pos;
            if (j < i - i2) {
                break;
            }
            j -= i - i2;
            segment = segment.next;
            Intrinsics.checkNotNull(segment);
        }
        while (j2 > 0) {
            int min = (int) Math.min(segment.limit - r6, j2);
            this.f3616x9738a56c.update(segment.data, (int) (segment.pos + j), min);
            j2 -= min;
            segment = segment.next;
            Intrinsics.checkNotNull(segment);
            j = 0;
        }
    }
}
