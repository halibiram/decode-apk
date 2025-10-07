package defpackage;

import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.FileHandle;
import okio.Source;
import okio.Timeout;

/* renamed from: 뒨듟땫되뒼둥땤둡뒬뒻두땤딻돴땜뒵딃돵됨도땧땍땔돳들돼될돝따뒹뎻따땯땍딃뒼땠될둡뒀땬듼디됴듽뒘뎸땠듽땱뒹돴뒙들뒋돼땨됫땨뒉돶뒘뒙뒈든뎡든들됫둡듻뎹듬둔듌들뒈드딻땍뒼될둬둑됨딅딞돴딌돼돷땤땁땄땱뎠뒬듬뒷땭땔뎹땨딄돛드돵땤뎻뒼둡딄땣둥땱듨땠돨딌땳딸딤뒻딅듟됩땨둑될딠, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0731x6de78594 implements Source {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final FileHandle f4634xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public long f4635x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public boolean f4636x1378447b;

    public C0731x6de78594(FileHandle fileHandle, long j) {
        Intrinsics.checkNotNullParameter(fileHandle, "fileHandle");
        this.f4634xfbe0c504 = fileHandle;
        this.f4635x3271d0aa = j;
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        int i;
        int i2;
        boolean z;
        if (this.f4636x1378447b) {
            return;
        }
        this.f4636x1378447b = true;
        FileHandle fileHandle = this.f4634xfbe0c504;
        ReentrantLock lock = fileHandle.getLock();
        lock.lock();
        try {
            i = fileHandle.f3592x1378447b;
            fileHandle.f3592x1378447b = i - 1;
            i2 = fileHandle.f3592x1378447b;
            if (i2 == 0) {
                z = fileHandle.f3591x3271d0aa;
                if (z) {
                    lock.unlock();
                    fileHandle.protectedClose();
                }
            }
        } finally {
            lock.unlock();
        }
    }

    @Override // okio.Source
    public final long read(Buffer sink, long j) {
        long m2651xfbe0c504;
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (!this.f4636x1378447b) {
            m2651xfbe0c504 = this.f4634xfbe0c504.m2651xfbe0c504(this.f4635x3271d0aa, sink, j);
            if (m2651xfbe0c504 != -1) {
                this.f4635x3271d0aa += m2651xfbe0c504;
            }
            return m2651xfbe0c504;
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.Source
    /* renamed from: timeout */
    public final Timeout getF3568xfbe0c504() {
        return Timeout.NONE;
    }
}
