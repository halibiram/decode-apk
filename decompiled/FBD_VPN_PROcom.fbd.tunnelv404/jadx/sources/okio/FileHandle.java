package okio;

import defpackage.AbstractC0749x8313616e;
import defpackage.C0730x93d67202;
import defpackage.C0731x6de78594;
import java.io.Closeable;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0002<=B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J-\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ%\u0010\u000e\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u0007¢\u0006\u0004\b\u000e\u0010\u0012J\r\u0010\u0013\u001a\u00020\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\u0007¢\u0006\u0004\b\u0016\u0010\u0017J-\u0010\u0018\u001a\u00020\u00152\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b¢\u0006\u0004\b\u0018\u0010\u0019J%\u0010\u0018\u001a\u00020\u00152\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u0007¢\u0006\u0004\b\u0018\u0010\u001bJ\r\u0010\u001c\u001a\u00020\u0015¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u001a\u001a\u00020\u001e2\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u001a\u0010\u001fJ\u0015\u0010 \u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u001e¢\u0006\u0004\b \u0010!J\u001d\u0010\"\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u0007¢\u0006\u0004\b\"\u0010#J\u0017\u0010\u0011\u001a\u00020$2\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0011\u0010%J\r\u0010&\u001a\u00020$¢\u0006\u0004\b&\u0010'J\u0015\u0010 \u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020$¢\u0006\u0004\b \u0010(J\u001d\u0010\"\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020$2\u0006\u0010 \u001a\u00020\u0007¢\u0006\u0004\b\"\u0010)J\r\u0010*\u001a\u00020\u0015¢\u0006\u0004\b*\u0010\u001dJ/\u0010+\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH$¢\u0006\u0004\b+\u0010\u000fJ/\u0010,\u001a\u00020\u00152\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH$¢\u0006\u0004\b,\u0010\u0019J\u000f\u0010-\u001a\u00020\u0015H$¢\u0006\u0004\b-\u0010\u001dJ\u0017\u0010.\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\u0007H$¢\u0006\u0004\b.\u0010\u0017J\u000f\u0010/\u001a\u00020\u0007H$¢\u0006\u0004\b/\u0010\u0014J\u000f\u00100\u001a\u00020\u0015H$¢\u0006\u0004\b0\u0010\u001dR\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u00104R\u001b\u0010;\u001a\u000605j\u0002`68\u0006¢\u0006\f\n\u0004\b7\u00108\u001a\u0004\b9\u0010:¨\u0006>"}, d2 = {"Lokio/FileHandle;", "Ljava/io/Closeable;", "Lokio/Closeable;", "", "readWrite", "<init>", "(Z)V", "", "fileOffset", "", "array", "", "arrayOffset", "byteCount", "read", "(J[BII)I", "Lokio/Buffer;", "sink", "(JLokio/Buffer;J)J", "size", "()J", "", "resize", "(J)V", "write", "(J[BII)V", "source", "(JLokio/Buffer;J)V", "flush", "()V", "Lokio/Source;", "(J)Lokio/Source;", "position", "(Lokio/Source;)J", "reposition", "(Lokio/Source;J)V", "Lokio/Sink;", "(J)Lokio/Sink;", "appendingSink", "()Lokio/Sink;", "(Lokio/Sink;)J", "(Lokio/Sink;J)V", "close", "protectedRead", "protectedWrite", "protectedFlush", "protectedResize", "protectedSize", "protectedClose", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Z", "getReadWrite", "()Z", "Ljava/util/concurrent/locks/ReentrantLock;", "Lokio/Lock;", "뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨", "Ljava/util/concurrent/locks/ReentrantLock;", "getLock", "()Ljava/util/concurrent/locks/ReentrantLock;", "lock", "뒨뒵둡될뒉둑땅돛뒘돛땥둠뎹딌땤뒹뒀듔딄땭땥듬딄뒀둠땱땜뒘돰뎨도뒝둣땋돶둬둔딽뒨딁도둠둬따돤땨땜딄뎹땝뒵둑둣됴딁듼딨뒙돠듔뎻든돼땁뒹딞둬땩땬땨딻듟딐뒐둑뎹딃땡딨뒙듌돨듸딻뒘듬딅땤듔듻땡땱땋딃뒾땸땬땹딎듐뎽돵돴두딜땧됴둥둑돷뒵땫뒀딅듸돠딨돝둬뒹뒤땁뎹둘뒛돝땍드뎽딟", "뒨듟땫되뒼둥땤둡뒬뒻두땤딻돴땜뒵딃돵됨도땧땍땔돳들돼될돝따뒹뎻따땯땍딃뒼땠될둡뒀땬듼디됴듽뒘뎸땠듽땱뒹돴뒙들뒋돼땨됫땨뒉돶뒘뒙뒈든뎡든들됫둡듻뎹듬둔듌들뒈드딻땍뒼될둬둑됨딅딞돴딌돼돷땤땁땄땱뎠뒬듬뒷땭땔뎹땨딄돛드돵땤뎻뒼둡딄땣둥땱듨땠돨딌땳딸딤뒻딅듟됩땨둑될딠", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFileHandle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileHandle.kt\nokio/FileHandle\n+ 2 -JvmPlatform.kt\nokio/_JvmPlatformKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 RealBufferedSource.kt\nokio/RealBufferedSource\n+ 5 RealBufferedSink.kt\nokio/RealBufferedSink\n+ 6 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,444:1\n33#2:445\n33#2:447\n33#2:448\n33#2:449\n33#2:450\n33#2:451\n33#2:452\n33#2:453\n33#2:457\n33#2:459\n1#3:446\n63#4:454\n63#4:455\n63#4:456\n51#5:458\n85#6:460\n85#6:461\n*S KotlinDebug\n*F\n+ 1 FileHandle.kt\nokio/FileHandle\n*L\n69#1:445\n81#1:447\n92#1:448\n105#1:449\n119#1:450\n129#1:451\n139#1:452\n151#1:453\n221#1:457\n287#1:459\n169#1:454\n195#1:455\n202#1:456\n248#1:458\n345#1:460\n374#1:461\n*E\n"})
/* loaded from: classes3.dex */
public abstract class FileHandle implements Closeable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
    public final boolean readWrite;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public boolean f3591x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public int f3592x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters and from kotlin metadata */
    public final ReentrantLock lock = _JvmPlatformKt.newLock();

    public FileHandle(boolean z) {
        this.readWrite = z;
    }

    public static /* synthetic */ Sink sink$default(FileHandle fileHandle, long j, int i, Object obj) {
        if (obj == null) {
            if ((i & 1) != 0) {
                j = 0;
            }
            return fileHandle.sink(j);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sink");
    }

    public static /* synthetic */ Source source$default(FileHandle fileHandle, long j, int i, Object obj) {
        if (obj == null) {
            if ((i & 1) != 0) {
                j = 0;
            }
            return fileHandle.source(j);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: source");
    }

    @NotNull
    public final Sink appendingSink() {
        return sink(size());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (this.f3591x3271d0aa) {
                return;
            }
            this.f3591x3271d0aa = true;
            if (this.f3592x1378447b != 0) {
                return;
            }
            reentrantLock.unlock();
            protectedClose();
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void flush() {
        if (this.readWrite) {
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lock();
            try {
                if (!this.f3591x3271d0aa) {
                    reentrantLock.unlock();
                    protectedFlush();
                    return;
                }
                throw new IllegalStateException("closed");
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        throw new IllegalStateException("file handle is read-only");
    }

    @NotNull
    public final ReentrantLock getLock() {
        return this.lock;
    }

    public final boolean getReadWrite() {
        return this.readWrite;
    }

    public final long position(@NotNull Source source) {
        long j;
        Intrinsics.checkNotNullParameter(source, "source");
        if (source instanceof RealBufferedSource) {
            RealBufferedSource realBufferedSource = (RealBufferedSource) source;
            j = realBufferedSource.bufferField.size();
            source = realBufferedSource.source;
        } else {
            j = 0;
        }
        if (source instanceof C0731x6de78594) {
            C0731x6de78594 c0731x6de78594 = (C0731x6de78594) source;
            if (c0731x6de78594.f4634xfbe0c504 == this) {
                if (!c0731x6de78594.f4636x1378447b) {
                    return c0731x6de78594.f4635x3271d0aa - j;
                }
                throw new IllegalStateException("closed");
            }
        }
        throw new IllegalArgumentException("source was not created by this FileHandle");
    }

    public abstract void protectedClose();

    public abstract void protectedFlush();

    public abstract int protectedRead(long fileOffset, @NotNull byte[] array, int arrayOffset, int byteCount);

    public abstract void protectedResize(long size);

    public abstract long protectedSize();

    public abstract void protectedWrite(long fileOffset, @NotNull byte[] array, int arrayOffset, int byteCount);

    public final int read(long fileOffset, @NotNull byte[] array, int arrayOffset, int byteCount) {
        Intrinsics.checkNotNullParameter(array, "array");
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (!this.f3591x3271d0aa) {
                reentrantLock.unlock();
                return protectedRead(fileOffset, array, arrayOffset, byteCount);
            }
            throw new IllegalStateException("closed");
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final void reposition(@NotNull Source source, long position) {
        Intrinsics.checkNotNullParameter(source, "source");
        if (source instanceof RealBufferedSource) {
            RealBufferedSource realBufferedSource = (RealBufferedSource) source;
            Source source2 = realBufferedSource.source;
            if (source2 instanceof C0731x6de78594) {
                C0731x6de78594 c0731x6de78594 = (C0731x6de78594) source2;
                if (c0731x6de78594.f4634xfbe0c504 == this) {
                    if (!c0731x6de78594.f4636x1378447b) {
                        long size = realBufferedSource.bufferField.size();
                        long j = position - (c0731x6de78594.f4635x3271d0aa - size);
                        if (0 <= j && j < size) {
                            realBufferedSource.skip(j);
                            return;
                        } else {
                            realBufferedSource.bufferField.clear();
                            c0731x6de78594.f4635x3271d0aa = position;
                            return;
                        }
                    }
                    throw new IllegalStateException("closed");
                }
            }
            throw new IllegalArgumentException("source was not created by this FileHandle");
        }
        if (source instanceof C0731x6de78594) {
            C0731x6de78594 c0731x6de785942 = (C0731x6de78594) source;
            if (c0731x6de785942.f4634xfbe0c504 == this) {
                if (!c0731x6de785942.f4636x1378447b) {
                    c0731x6de785942.f4635x3271d0aa = position;
                    return;
                }
                throw new IllegalStateException("closed");
            }
        }
        throw new IllegalArgumentException("source was not created by this FileHandle");
    }

    public final void resize(long size) {
        if (this.readWrite) {
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lock();
            try {
                if (!this.f3591x3271d0aa) {
                    reentrantLock.unlock();
                    protectedResize(size);
                    return;
                }
                throw new IllegalStateException("closed");
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        throw new IllegalStateException("file handle is read-only");
    }

    @NotNull
    public final Sink sink(long fileOffset) {
        if (this.readWrite) {
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lock();
            try {
                if (!this.f3591x3271d0aa) {
                    this.f3592x1378447b++;
                    reentrantLock.unlock();
                    return new C0730x93d67202(this, fileOffset);
                }
                throw new IllegalStateException("closed");
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        throw new IllegalStateException("file handle is read-only");
    }

    public final long size() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (!this.f3591x3271d0aa) {
                reentrantLock.unlock();
                return protectedSize();
            }
            throw new IllegalStateException("closed");
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @NotNull
    public final Source source(long fileOffset) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (!this.f3591x3271d0aa) {
                this.f3592x1378447b++;
                reentrantLock.unlock();
                return new C0731x6de78594(this, fileOffset);
            }
            throw new IllegalStateException("closed");
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final void write(long fileOffset, @NotNull byte[] array, int arrayOffset, int byteCount) {
        Intrinsics.checkNotNullParameter(array, "array");
        if (this.readWrite) {
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lock();
            try {
                if (!this.f3591x3271d0aa) {
                    reentrantLock.unlock();
                    protectedWrite(fileOffset, array, arrayOffset, byteCount);
                    return;
                }
                throw new IllegalStateException("closed");
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        throw new IllegalStateException("file handle is read-only");
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final long m2651xfbe0c504(long j, Buffer buffer, long j2) {
        if (j2 >= 0) {
            long j3 = j2 + j;
            long j4 = j;
            while (true) {
                if (j4 >= j3) {
                    break;
                }
                Segment writableSegment$okio = buffer.writableSegment$okio(1);
                int protectedRead = protectedRead(j4, writableSegment$okio.data, writableSegment$okio.limit, (int) Math.min(j3 - j4, 8192 - r7));
                if (protectedRead == -1) {
                    if (writableSegment$okio.pos == writableSegment$okio.limit) {
                        buffer.head = writableSegment$okio.pop();
                        SegmentPool.recycle(writableSegment$okio);
                    }
                    if (j == j4) {
                        return -1L;
                    }
                } else {
                    writableSegment$okio.limit += protectedRead;
                    long j5 = protectedRead;
                    j4 += j5;
                    buffer.setSize$okio(buffer.size() + j5);
                }
            }
            return j4 - j;
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3337xab142723("byteCount < 0: ", j2).toString());
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final void m2652x3271d0aa(long j, Buffer buffer, long j2) {
        SegmentedByteString.checkOffsetAndCount(buffer.size(), 0L, j2);
        long j3 = j2 + j;
        while (j < j3) {
            Segment segment = buffer.head;
            Intrinsics.checkNotNull(segment);
            int min = (int) Math.min(j3 - j, segment.limit - segment.pos);
            protectedWrite(j, segment.data, segment.pos, min);
            segment.pos += min;
            long j4 = min;
            j += j4;
            buffer.setSize$okio(buffer.size() - j4);
            if (segment.pos == segment.limit) {
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            }
        }
    }

    public final long read(long fileOffset, @NotNull Buffer sink, long byteCount) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (!this.f3591x3271d0aa) {
                reentrantLock.unlock();
                return m2651xfbe0c504(fileOffset, sink, byteCount);
            }
            throw new IllegalStateException("closed");
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final void write(long fileOffset, @NotNull Buffer source, long byteCount) {
        Intrinsics.checkNotNullParameter(source, "source");
        if (this.readWrite) {
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lock();
            try {
                if (!this.f3591x3271d0aa) {
                    reentrantLock.unlock();
                    m2652x3271d0aa(fileOffset, source, byteCount);
                    return;
                }
                throw new IllegalStateException("closed");
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        throw new IllegalStateException("file handle is read-only");
    }

    public final long position(@NotNull Sink sink) {
        long j;
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (sink instanceof RealBufferedSink) {
            RealBufferedSink realBufferedSink = (RealBufferedSink) sink;
            j = realBufferedSink.bufferField.size();
            sink = realBufferedSink.sink;
        } else {
            j = 0;
        }
        if (sink instanceof C0730x93d67202) {
            C0730x93d67202 c0730x93d67202 = (C0730x93d67202) sink;
            if (c0730x93d67202.f4631xfbe0c504 == this) {
                if (!c0730x93d67202.f4633x1378447b) {
                    return c0730x93d67202.f4632x3271d0aa + j;
                }
                throw new IllegalStateException("closed");
            }
        }
        throw new IllegalArgumentException("sink was not created by this FileHandle");
    }

    public final void reposition(@NotNull Sink sink, long position) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (sink instanceof RealBufferedSink) {
            RealBufferedSink realBufferedSink = (RealBufferedSink) sink;
            Sink sink2 = realBufferedSink.sink;
            if (sink2 instanceof C0730x93d67202) {
                C0730x93d67202 c0730x93d67202 = (C0730x93d67202) sink2;
                if (c0730x93d67202.f4631xfbe0c504 == this) {
                    if (!c0730x93d67202.f4633x1378447b) {
                        realBufferedSink.emit();
                        c0730x93d67202.f4632x3271d0aa = position;
                        return;
                    }
                    throw new IllegalStateException("closed");
                }
            }
            throw new IllegalArgumentException("sink was not created by this FileHandle");
        }
        if (sink instanceof C0730x93d67202) {
            C0730x93d67202 c0730x93d672022 = (C0730x93d67202) sink;
            if (c0730x93d672022.f4631xfbe0c504 == this) {
                if (!c0730x93d672022.f4633x1378447b) {
                    c0730x93d672022.f4632x3271d0aa = position;
                    return;
                }
                throw new IllegalStateException("closed");
            }
        }
        throw new IllegalArgumentException("sink was not created by this FileHandle");
    }
}
