package okio;

import java.io.RandomAccessFile;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\bH\u0014¢\u0006\u0004\b\r\u0010\u000eJ/\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0012H\u0014¢\u0006\u0004\b\u0015\u0010\u0016J/\u0010\u0017\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0012H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\nH\u0014¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\nH\u0014¢\u0006\u0004\b\u001b\u0010\u001a¨\u0006\u001c"}, d2 = {"Lokio/JvmFileHandle;", "Lokio/FileHandle;", "", "readWrite", "Ljava/io/RandomAccessFile;", "randomAccessFile", "<init>", "(ZLjava/io/RandomAccessFile;)V", "", "size", "", "protectedResize", "(J)V", "protectedSize", "()J", "fileOffset", "", "array", "", "arrayOffset", "byteCount", "protectedRead", "(J[BII)I", "protectedWrite", "(J[BII)V", "protectedFlush", "()V", "protectedClose", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class JvmFileHandle extends FileHandle {

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final RandomAccessFile f3625x9738a56c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JvmFileHandle(boolean z, @NotNull RandomAccessFile randomAccessFile) {
        super(z);
        Intrinsics.checkNotNullParameter(randomAccessFile, "randomAccessFile");
        this.f3625x9738a56c = randomAccessFile;
    }

    @Override // okio.FileHandle
    public synchronized void protectedClose() {
        this.f3625x9738a56c.close();
    }

    @Override // okio.FileHandle
    public synchronized void protectedFlush() {
        this.f3625x9738a56c.getFD().sync();
    }

    @Override // okio.FileHandle
    public synchronized int protectedRead(long fileOffset, @NotNull byte[] array, int arrayOffset, int byteCount) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.f3625x9738a56c.seek(fileOffset);
        int i = 0;
        while (true) {
            if (i >= byteCount) {
                break;
            }
            int read = this.f3625x9738a56c.read(array, arrayOffset, byteCount - i);
            if (read == -1) {
                if (i == 0) {
                    return -1;
                }
            } else {
                i += read;
            }
        }
        return i;
    }

    @Override // okio.FileHandle
    public synchronized void protectedResize(long size) {
        try {
            long size2 = size();
            long j = size - size2;
            if (j > 0) {
                int i = (int) j;
                protectedWrite(size2, new byte[i], 0, i);
            } else {
                this.f3625x9738a56c.setLength(size);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // okio.FileHandle
    public synchronized long protectedSize() {
        return this.f3625x9738a56c.length();
    }

    @Override // okio.FileHandle
    public synchronized void protectedWrite(long fileOffset, @NotNull byte[] array, int arrayOffset, int byteCount) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.f3625x9738a56c.seek(fileOffset);
        this.f3625x9738a56c.write(array, arrayOffset, byteCount);
    }
}
