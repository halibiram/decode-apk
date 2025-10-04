package okhttp3.internal.http2;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* renamed from: okhttp3.internal.http2.뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0322xfbe0c504 extends Lambda implements Function0 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ Http2Connection f3386xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ long f3387x3271d0aa;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0322xfbe0c504(Http2Connection http2Connection, long j) {
        super(0);
        this.f3386xfbe0c504 = http2Connection;
        this.f3387x3271d0aa = j;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        long j;
        long j2;
        boolean z;
        Http2Connection http2Connection = this.f3386xfbe0c504;
        synchronized (http2Connection) {
            long j3 = http2Connection.f3301x1aebc6d9;
            j = http2Connection.f3300x8c6fc18a;
            if (j3 >= j) {
                j2 = http2Connection.f3300x8c6fc18a;
                http2Connection.f3300x8c6fc18a = j2 + 1;
                z = false;
            } else {
                z = true;
            }
        }
        if (z) {
            Http2Connection.access$failConnection(this.f3386xfbe0c504, null);
            return -1L;
        }
        this.f3386xfbe0c504.writePing(false, 1, 0);
        return Long.valueOf(this.f3387x3271d0aa);
    }
}
