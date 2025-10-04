package coil3.decode;

import coil3.content.FileSystemsKt;
import coil3.content.UtilsKt;
import coil3.decode.ImageSource;
import defpackage.AbstractC0720xaa9ccb5a;
import java.io.Closeable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u000b\b\u0000\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\nJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0011\u0010\u000f\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u000f\u0010\u000eJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0005\u001a\u00020\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Lcoil3/decode/SourceImageSource;", "Lcoil3/decode/ImageSource;", "Lokio/BufferedSource;", "source", "Lokio/FileSystem;", "fileSystem", "Lcoil3/decode/ImageSource$Metadata;", "metadata", "<init>", "(Lokio/BufferedSource;Lokio/FileSystem;Lcoil3/decode/ImageSource$Metadata;)V", "()Lokio/BufferedSource;", "sourceOrNull", "Lokio/Path;", UtilsKt.SCHEME_FILE, "()Lokio/Path;", "fileOrNull", "", "close", "()V", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Lokio/FileSystem;", "getFileSystem", "()Lokio/FileSystem;", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "Lcoil3/decode/ImageSource$Metadata;", "getMetadata", "()Lcoil3/decode/ImageSource$Metadata;", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nImageSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageSource.kt\ncoil3/decode/SourceImageSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 FileSystem.kt\nokio/FileSystem\n+ 4 Okio.kt\nokio/Okio__OkioKt\n*L\n1#1,188:1\n1#2:189\n78#3:190\n177#3:191\n81#3:192\n82#3:197\n52#4,4:193\n60#4,10:198\n56#4,18:208\n*S KotlinDebug\n*F\n+ 1 ImageSource.kt\ncoil3/decode/SourceImageSource\n*L\n166#1:190\n166#1:191\n166#1:192\n166#1:197\n166#1:193,4\n166#1:198,10\n166#1:208,18\n*E\n"})
/* loaded from: classes.dex */
public final class SourceImageSource implements ImageSource {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
    public final FileSystem fileSystem;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters and from kotlin metadata */
    public final ImageSource.Metadata metadata;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final Object f532x1378447b = new Object();

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public boolean f533x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public BufferedSource f534x9738a56c;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public Path f535x9e171bf9;

    public SourceImageSource(@NotNull BufferedSource bufferedSource, @NotNull FileSystem fileSystem, @Nullable ImageSource.Metadata metadata) {
        this.fileSystem = fileSystem;
        this.metadata = metadata;
        this.f534x9738a56c = bufferedSource;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        synchronized (this.f532x1378447b) {
            try {
                this.f533x75d576dc = true;
                BufferedSource bufferedSource = this.f534x9738a56c;
                if (bufferedSource != null) {
                    UtilsKt.closeQuietly((Closeable) bufferedSource);
                }
                Path path = this.f535x9e171bf9;
                if (path != null) {
                    getFileSystem().delete(path);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // coil3.decode.ImageSource
    @NotNull
    public Path file() {
        Throwable th;
        synchronized (this.f532x1378447b) {
            try {
                if (!this.f533x75d576dc) {
                    Path path = this.f535x9e171bf9;
                    if (path != null) {
                        return path;
                    }
                    Path createTempFile = FileSystemsKt.createTempFile(getFileSystem());
                    BufferedSink buffer = Okio.buffer(getFileSystem().sink(createTempFile, false));
                    try {
                        BufferedSource bufferedSource = this.f534x9738a56c;
                        Intrinsics.checkNotNull(bufferedSource);
                        buffer.writeAll(bufferedSource);
                        try {
                            buffer.close();
                            th = null;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (Throwable th3) {
                        if (buffer != null) {
                            try {
                                buffer.close();
                            } catch (Throwable th4) {
                                AbstractC0720xaa9ccb5a.addSuppressed(th3, th4);
                            }
                        }
                        th = th3;
                    }
                    if (th == null) {
                        this.f534x9738a56c = null;
                        this.f535x9e171bf9 = createTempFile;
                        return createTempFile;
                    }
                    throw th;
                }
                throw new IllegalStateException("closed");
            } catch (Throwable th5) {
                throw th5;
            }
        }
    }

    @Override // coil3.decode.ImageSource
    @Nullable
    public Path fileOrNull() {
        Path path;
        synchronized (this.f532x1378447b) {
            if (!this.f533x75d576dc) {
                path = this.f535x9e171bf9;
            } else {
                throw new IllegalStateException("closed");
            }
        }
        return path;
    }

    @Override // coil3.decode.ImageSource
    @NotNull
    public FileSystem getFileSystem() {
        return this.fileSystem;
    }

    @Override // coil3.decode.ImageSource
    @Nullable
    public ImageSource.Metadata getMetadata() {
        return this.metadata;
    }

    @Override // coil3.decode.ImageSource
    @NotNull
    public BufferedSource source() {
        synchronized (this.f532x1378447b) {
            if (!this.f533x75d576dc) {
                BufferedSource bufferedSource = this.f534x9738a56c;
                if (bufferedSource != null) {
                    return bufferedSource;
                }
                FileSystem fileSystem = getFileSystem();
                Path path = this.f535x9e171bf9;
                Intrinsics.checkNotNull(path);
                BufferedSource buffer = Okio.buffer(fileSystem.source(path));
                this.f534x9738a56c = buffer;
                return buffer;
            }
            throw new IllegalStateException("closed");
        }
    }

    @Override // coil3.decode.ImageSource
    @NotNull
    public BufferedSource sourceOrNull() {
        return source();
    }
}
