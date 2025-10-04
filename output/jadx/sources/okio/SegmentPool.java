package okio;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\bÀ\u0002\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0007\u0010\bR\u0017\u0010\n\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0011\u0010\u000f\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\r¨\u0006\u0010"}, d2 = {"Lokio/SegmentPool;", "", "Lokio/Segment;", "take", "()Lokio/Segment;", "segment", "", "recycle", "(Lokio/Segment;)V", "", "MAX_SIZE", "I", "getMAX_SIZE", "()I", "getByteCount", "byteCount", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SegmentPool {

    @NotNull
    public static final SegmentPool INSTANCE = new Object();

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final Segment f3653xfbe0c504 = new Segment(new byte[0], 0, 0, false, false);

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final int f3654x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final AtomicReference[] f3655x1378447b;

    /* JADX WARN: Type inference failed for: r0v0, types: [okio.SegmentPool, java.lang.Object] */
    static {
        int highestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        f3654x3271d0aa = highestOneBit;
        AtomicReference[] atomicReferenceArr = new AtomicReference[highestOneBit];
        for (int i = 0; i < highestOneBit; i++) {
            atomicReferenceArr[i] = new AtomicReference();
        }
        f3655x1378447b = atomicReferenceArr;
    }

    @JvmStatic
    public static final void recycle(@NotNull Segment segment) {
        int i;
        Intrinsics.checkNotNullParameter(segment, "segment");
        if (segment.next == null && segment.prev == null) {
            if (segment.shared) {
                return;
            }
            INSTANCE.getClass();
            AtomicReference m2671xfbe0c504 = m2671xfbe0c504();
            Segment segment2 = f3653xfbe0c504;
            Segment segment3 = (Segment) m2671xfbe0c504.getAndSet(segment2);
            if (segment3 == segment2) {
                return;
            }
            if (segment3 != null) {
                i = segment3.limit;
            } else {
                i = 0;
            }
            if (i >= 65536) {
                m2671xfbe0c504.set(segment3);
                return;
            }
            segment.next = segment3;
            segment.pos = 0;
            segment.limit = i + 8192;
            m2671xfbe0c504.set(segment);
            return;
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    @JvmStatic
    @NotNull
    public static final Segment take() {
        INSTANCE.getClass();
        AtomicReference m2671xfbe0c504 = m2671xfbe0c504();
        Segment segment = f3653xfbe0c504;
        Segment segment2 = (Segment) m2671xfbe0c504.getAndSet(segment);
        if (segment2 == segment) {
            return new Segment();
        }
        if (segment2 == null) {
            m2671xfbe0c504.set(null);
            return new Segment();
        }
        m2671xfbe0c504.set(segment2.next);
        segment2.next = null;
        segment2.limit = 0;
        return segment2;
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static AtomicReference m2671xfbe0c504() {
        return f3655x1378447b[(int) (Thread.currentThread().getId() & (f3654x3271d0aa - 1))];
    }

    public final int getByteCount() {
        Segment segment = (Segment) m2671xfbe0c504().get();
        if (segment == null) {
            return 0;
        }
        return segment.limit;
    }

    public final int getMAX_SIZE() {
        return 65536;
    }
}
