package defpackage;

import android.os.SystemClock;
import coil3.content.C0201xfbe0c504;
import coil3.content.HardwareBitmapService;
import coil3.content.Logger;
import coil3.size.Dimension;
import coil3.size.Size;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* renamed from: 딄딸땃뒉뒘땳돛땵딨딀돝땻땳땨뎰둬땡뎡됴딟뒛뎬딠뒤딠뒋뒹돸돷뒹뎽들뒈딟뒬뒨뎽득딸뒼땩됨땸딎뒷둥땰뎨뒛땐둘땱땪듌딽딁뒋뒈뒤뒝듐땮돼땲딄땅딤땧듌땋땨돠듟둑땳땡딃둘땬뒙땨딄딠땲딹돼땜듽돠딄뒬디딨둬딤땬득도뒘된뒐땧땁둣뒝땔돶땧돶딃땸뎡땯돸됐땩돠땫돤도뎰듌드드됐된딃뒤되땥, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0926x623fbac5 implements HardwareBitmapService {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Logger f5071xfbe0c504;

    static {
        final DefaultConstructorMarker defaultConstructorMarker = null;
        new Object(defaultConstructorMarker) { // from class: coil3.util.LimitedFileDescriptorHardwareBitmapService$Companion
        };
    }

    public C0926x623fbac5(Logger logger) {
        this.f5071xfbe0c504 = logger;
    }

    @Override // coil3.content.HardwareBitmapService
    public final boolean allowHardwareMainThread(Size size) {
        int i;
        Dimension width = size.getWidth();
        int i2 = Integer.MAX_VALUE;
        if (width instanceof Dimension.Pixels) {
            i = ((Dimension.Pixels) width).m960unboximpl();
        } else {
            i = Integer.MAX_VALUE;
        }
        if (i > 100) {
            Dimension height = size.getHeight();
            if (height instanceof Dimension.Pixels) {
                i2 = ((Dimension.Pixels) height).m960unboximpl();
            }
            if (i2 > 100) {
                return true;
            }
        }
        return false;
    }

    @Override // coil3.content.HardwareBitmapService
    public final boolean allowHardwareWorkerThread() {
        boolean z;
        C0201xfbe0c504 c0201xfbe0c504 = C0201xfbe0c504.f898xfbe0c504;
        Logger logger = this.f5071xfbe0c504;
        synchronized (c0201xfbe0c504) {
            try {
                int i = C0201xfbe0c504.f900x1378447b;
                C0201xfbe0c504.f900x1378447b = i + 1;
                if (i >= 30 || SystemClock.uptimeMillis() > C0201xfbe0c504.f901x75d576dc + 30000) {
                    boolean z2 = false;
                    C0201xfbe0c504.f900x1378447b = 0;
                    C0201xfbe0c504.f901x75d576dc = SystemClock.uptimeMillis();
                    String[] list = C0201xfbe0c504.f899x3271d0aa.list();
                    if (list == null) {
                        list = new String[0];
                    }
                    int length = list.length;
                    if (length < 800) {
                        z2 = true;
                    }
                    C0201xfbe0c504.f902x9738a56c = z2;
                    if (!z2 && logger != null) {
                        Logger.Level level = Logger.Level.Warn;
                        if (logger.getMinLevel().compareTo(level) <= 0) {
                            logger.log("FileDescriptorCounter", level, "Unable to allocate more hardware bitmaps. Number of used file descriptors: " + length, null);
                        }
                    }
                }
                z = C0201xfbe0c504.f902x9738a56c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }
}
