package defpackage;

import de.blinkt.openvpn.core.TkLogStatus;
import java.util.TimerTask;

/* renamed from: 땫딤뎠딟돰뒹뒙뒹됴뒾딸뒬땱뒾돶뒷돵땩뎬땃땄딄뒉돨되돷뎰뎠땭따뎠뎹딌도땱뒛땻땜땥뒘딨뒾둑땝둥되딄듽돛뒹뒻됩딹뒉둬뒬돤땯뒛뒙뎡땮땦드딃듽둑두된땥뒨땀딎뎸뎰돳땧땋되따땱듼뎰땨됐딎땁돠뒀뒬딄돝딅땰딤땹땀딜딅땝듨딨딠딠돶뒀뒙땀돼뒼따땁뒤돳뒀땟땥드뎸딽땫됩둡따듰땧땐땅딽딟, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1241x4beba551 extends TimerTask {
    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        long j = TkLogStatus.f1034x1aebc6d9 + 1000;
        TkLogStatus.f1034x1aebc6d9 = j;
        TkLogStatus.updateConnectionTime(j);
    }
}
