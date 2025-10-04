package okhttp3.internal.http2;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.AbstractC0362x4440ab85;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.http2.Hpack;
import okio.Buffer;
import okio.BufferedSink;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 E2\u00020\u0001:\u0001EB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ+\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012¢\u0006\u0004\b\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\b¢\u0006\u0004\b\u0017\u0010\nJ\u001d\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\r\u0010\u001c\u001a\u00020\u000f¢\u0006\u0004\b\u001c\u0010\u001dJ/\u0010\"\u001a\u00020\b2\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010 \u001a\u0004\u0018\u00010\u001f2\u0006\u0010!\u001a\u00020\u000f¢\u0006\u0004\b\"\u0010#J/\u0010&\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020\u000f2\b\u0010%\u001a\u0004\u0018\u00010\u001f2\u0006\u0010!\u001a\u00020\u000f¢\u0006\u0004\b&\u0010'J\u0015\u0010(\u001a\u00020\b2\u0006\u0010(\u001a\u00020\u000b¢\u0006\u0004\b(\u0010\u000eJ%\u0010,\u001a\u00020\b2\u0006\u0010)\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\u000f2\u0006\u0010+\u001a\u00020\u000f¢\u0006\u0004\b,\u0010-J%\u00101\u001a\u00020\b2\u0006\u0010.\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u00100\u001a\u00020/¢\u0006\u0004\b1\u00102J\u001d\u00105\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u00104\u001a\u000203¢\u0006\u0004\b5\u00106J-\u00109\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u00107\u001a\u00020\u000f2\u0006\u00108\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020\u000f¢\u0006\u0004\b9\u0010:J\u000f\u0010;\u001a\u00020\bH\u0016¢\u0006\u0004\b;\u0010\nJ+\u0010=\u001a\u00020\b2\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\f\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012¢\u0006\u0004\b=\u0010>R\u0017\u0010D\u001a\u00020?8\u0006¢\u0006\f\n\u0004\b@\u0010A\u001a\u0004\bB\u0010C¨\u0006F"}, d2 = {"Lokhttp3/internal/http2/Http2Writer;", "Ljava/io/Closeable;", "Lokio/BufferedSink;", "sink", "", "client", "<init>", "(Lokio/BufferedSink;Z)V", "", "connectionPreface", "()V", "Lokhttp3/internal/http2/Settings;", "peerSettings", "applyAndAckSettings", "(Lokhttp3/internal/http2/Settings;)V", "", "streamId", "promisedStreamId", "", "Lokhttp3/internal/http2/Header;", "requestHeaders", "pushPromise", "(IILjava/util/List;)V", "flush", "Lokhttp3/internal/http2/ErrorCode;", "errorCode", "rstStream", "(ILokhttp3/internal/http2/ErrorCode;)V", "maxDataLength", "()I", "outFinished", "Lokio/Buffer;", "source", "byteCount", "data", "(ZILokio/Buffer;I)V", "flags", "buffer", "dataFrame", "(IILokio/Buffer;I)V", "settings", "ack", "payload1", "payload2", "ping", "(ZII)V", "lastGoodStreamId", "", "debugData", "goAway", "(ILokhttp3/internal/http2/ErrorCode;[B)V", "", "windowSizeIncrement", "windowUpdate", "(IJ)V", "length", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "frameHeader", "(IIII)V", "close", "headerBlock", "headers", "(ZILjava/util/List;)V", "Lokhttp3/internal/http2/Hpack$Writer;", "뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤", "Lokhttp3/internal/http2/Hpack$Writer;", "getHpackWriter", "()Lokhttp3/internal/http2/Hpack$Writer;", "hpackWriter", "Companion", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHttp2Writer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Writer.kt\nokhttp3/internal/http2/Http2Writer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,328:1\n1#2:329\n*E\n"})
/* loaded from: classes3.dex */
public final class Http2Writer implements Closeable {

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    public static final Logger f3370x34271fae = Logger.getLogger(Http2.class.getName());

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final BufferedSink f3371xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final boolean f3372x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final Buffer f3373x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public int f3374x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public boolean f3375x9738a56c;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters and from kotlin metadata */
    public final Hpack.Writer hpackWriter;

    public Http2Writer(@NotNull BufferedSink sink, boolean z) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        this.f3371xfbe0c504 = sink;
        this.f3372x3271d0aa = z;
        Buffer buffer = new Buffer();
        this.f3373x1378447b = buffer;
        this.f3374x75d576dc = 16384;
        this.hpackWriter = new Hpack.Writer(0, false, buffer, 3, null);
    }

    public final synchronized void applyAndAckSettings(@NotNull Settings peerSettings) {
        try {
            Intrinsics.checkNotNullParameter(peerSettings, "peerSettings");
            if (!this.f3375x9738a56c) {
                this.f3374x75d576dc = peerSettings.getMaxFrameSize(this.f3374x75d576dc);
                if (peerSettings.getHeaderTableSize() != -1) {
                    this.hpackWriter.resizeHeaderTable(peerSettings.getHeaderTableSize());
                }
                frameHeader(0, 0, 4, 1);
                this.f3371xfbe0c504.flush();
            } else {
                throw new IOException("closed");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        this.f3375x9738a56c = true;
        this.f3371xfbe0c504.close();
    }

    public final synchronized void connectionPreface() {
        try {
            if (!this.f3375x9738a56c) {
                if (!this.f3372x3271d0aa) {
                    return;
                }
                Logger logger = f3370x34271fae;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(_UtilJvmKt.format(">> CONNECTION " + Http2.CONNECTION_PREFACE.hex(), new Object[0]));
                }
                this.f3371xfbe0c504.write(Http2.CONNECTION_PREFACE);
                this.f3371xfbe0c504.flush();
                return;
            }
            throw new IOException("closed");
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void data(boolean outFinished, int streamId, @Nullable Buffer source, int byteCount) {
        if (!this.f3375x9738a56c) {
            dataFrame(streamId, outFinished ? 1 : 0, source, byteCount);
        } else {
            throw new IOException("closed");
        }
    }

    public final void dataFrame(int streamId, int flags, @Nullable Buffer buffer, int byteCount) {
        frameHeader(streamId, byteCount, 0, flags);
        if (byteCount > 0) {
            Intrinsics.checkNotNull(buffer);
            this.f3371xfbe0c504.write(buffer, byteCount);
        }
    }

    public final synchronized void flush() {
        if (!this.f3375x9738a56c) {
            this.f3371xfbe0c504.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public final void frameHeader(int streamId, int length, int type, int flags) {
        if (type != 8) {
            Level level = Level.FINE;
            Logger logger = f3370x34271fae;
            if (logger.isLoggable(level)) {
                logger.fine(Http2.INSTANCE.frameLog(false, streamId, length, type, flags));
            }
        }
        if (length <= this.f3374x75d576dc) {
            if ((Integer.MIN_VALUE & streamId) == 0) {
                BufferedSink bufferedSink = this.f3371xfbe0c504;
                _UtilCommonKt.writeMedium(bufferedSink, length);
                bufferedSink.writeByte(type & 255);
                bufferedSink.writeByte(flags & 255);
                bufferedSink.writeInt(streamId & Integer.MAX_VALUE);
                return;
            }
            throw new IllegalArgumentException(AbstractC0362x4440ab85.m2929x9738a56c(streamId, "reserved bit set: ").toString());
        }
        throw new IllegalArgumentException(("FRAME_SIZE_ERROR length > " + this.f3374x75d576dc + ": " + length).toString());
    }

    @NotNull
    public final Hpack.Writer getHpackWriter() {
        return this.hpackWriter;
    }

    public final synchronized void goAway(int lastGoodStreamId, @NotNull ErrorCode errorCode, @NotNull byte[] debugData) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        Intrinsics.checkNotNullParameter(debugData, "debugData");
        if (!this.f3375x9738a56c) {
            if (errorCode.getHttpCode() != -1) {
                frameHeader(0, debugData.length + 8, 7, 0);
                this.f3371xfbe0c504.writeInt(lastGoodStreamId);
                this.f3371xfbe0c504.writeInt(errorCode.getHttpCode());
                if (debugData.length != 0) {
                    this.f3371xfbe0c504.write(debugData);
                }
                this.f3371xfbe0c504.flush();
            } else {
                throw new IllegalArgumentException("errorCode.httpCode == -1");
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void headers(boolean outFinished, int streamId, @NotNull List<Header> headerBlock) {
        int i;
        Intrinsics.checkNotNullParameter(headerBlock, "headerBlock");
        if (!this.f3375x9738a56c) {
            this.hpackWriter.writeHeaders(headerBlock);
            long size = this.f3373x1378447b.size();
            long min = Math.min(this.f3374x75d576dc, size);
            if (size == min) {
                i = 4;
            } else {
                i = 0;
            }
            if (outFinished) {
                i |= 1;
            }
            frameHeader(streamId, (int) min, 1, i);
            this.f3371xfbe0c504.write(this.f3373x1378447b, min);
            if (size > min) {
                m2618xfbe0c504(streamId, size - min);
            }
        } else {
            throw new IOException("closed");
        }
    }

    /* renamed from: maxDataLength, reason: from getter */
    public final int getF3374x75d576dc() {
        return this.f3374x75d576dc;
    }

    public final synchronized void ping(boolean ack, int payload1, int payload2) {
        if (!this.f3375x9738a56c) {
            frameHeader(0, 8, 6, ack ? 1 : 0);
            this.f3371xfbe0c504.writeInt(payload1);
            this.f3371xfbe0c504.writeInt(payload2);
            this.f3371xfbe0c504.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void pushPromise(int streamId, int promisedStreamId, @NotNull List<Header> requestHeaders) {
        int i;
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        if (!this.f3375x9738a56c) {
            this.hpackWriter.writeHeaders(requestHeaders);
            long size = this.f3373x1378447b.size();
            int min = (int) Math.min(this.f3374x75d576dc - 4, size);
            int i2 = min + 4;
            long j = min;
            if (size == j) {
                i = 4;
            } else {
                i = 0;
            }
            frameHeader(streamId, i2, 5, i);
            this.f3371xfbe0c504.writeInt(promisedStreamId & Integer.MAX_VALUE);
            this.f3371xfbe0c504.write(this.f3373x1378447b, j);
            if (size > j) {
                m2618xfbe0c504(streamId, size - j);
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void rstStream(int streamId, @NotNull ErrorCode errorCode) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        if (!this.f3375x9738a56c) {
            if (errorCode.getHttpCode() != -1) {
                frameHeader(streamId, 4, 3, 0);
                this.f3371xfbe0c504.writeInt(errorCode.getHttpCode());
                this.f3371xfbe0c504.flush();
            } else {
                throw new IllegalArgumentException("Failed requirement.");
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void settings(@NotNull Settings settings) {
        int i;
        try {
            Intrinsics.checkNotNullParameter(settings, "settings");
            if (!this.f3375x9738a56c) {
                frameHeader(0, settings.size() * 6, 4, 0);
                for (int i2 = 0; i2 < 10; i2++) {
                    if (settings.isSet(i2)) {
                        if (i2 != 4) {
                            if (i2 != 7) {
                                i = i2;
                            } else {
                                i = 4;
                            }
                        } else {
                            i = 3;
                        }
                        this.f3371xfbe0c504.writeShort(i);
                        this.f3371xfbe0c504.writeInt(settings.get(i2));
                    }
                }
                this.f3371xfbe0c504.flush();
            } else {
                throw new IOException("closed");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void windowUpdate(int streamId, long windowSizeIncrement) {
        try {
            if (!this.f3375x9738a56c) {
                if (windowSizeIncrement != 0 && windowSizeIncrement <= 2147483647L) {
                    Logger logger = f3370x34271fae;
                    if (logger.isLoggable(Level.FINE)) {
                        logger.fine(Http2.INSTANCE.frameLogWindowUpdate(false, streamId, 4, windowSizeIncrement));
                    }
                    frameHeader(streamId, 4, 8, 0);
                    this.f3371xfbe0c504.writeInt((int) windowSizeIncrement);
                    this.f3371xfbe0c504.flush();
                } else {
                    throw new IllegalArgumentException(("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: " + windowSizeIncrement).toString());
                }
            } else {
                throw new IOException("closed");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final void m2618xfbe0c504(int i, long j) {
        int i2;
        while (j > 0) {
            long min = Math.min(this.f3374x75d576dc, j);
            j -= min;
            int i3 = (int) min;
            if (j == 0) {
                i2 = 4;
            } else {
                i2 = 0;
            }
            frameHeader(i, i3, 9, i2);
            this.f3371xfbe0c504.write(this.f3373x1378447b, min);
        }
    }
}
