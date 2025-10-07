package app.tunnel.logger.utils;

import app.tunnel.logger.utils.TrafficData;
import java.util.Iterator;
import java.util.TimerTask;

/* renamed from: app.tunnel.logger.utils.뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0194xfbe0c504 extends TimerTask {
    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        Iterator it = TrafficData.f398xfbe0c504.iterator();
        while (it.hasNext()) {
            ((TrafficData.TrafficDataListener) it.next()).updateByteCount(TrafficData.getBytesIn(), TrafficData.getBytesOut());
        }
    }
}
