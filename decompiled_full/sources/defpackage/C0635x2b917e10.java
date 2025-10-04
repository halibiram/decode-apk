package defpackage;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import okhttp3.Handshake;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.ws.RealWebSocket;
import okhttp3.internal.ws.WebSocketWriter;

/* renamed from: 둥뎸딨땱드뒬둡땁둥딽돶뒻돵뒙뎸딄땁땧땫득딝든땰돶듽딐딸돶뒬듬땮땣돝됐땬땟듐딀듨딄딎됴땻땄뒙뎨돼들딅땁뒻땧뒝듌딜뒾땨뎰딠뒤돶땜뎠딞뒛뒤땪듐딅딻땦뎰됨뒛돶뎰땠땸딎돶돝듨땔뎽딀땁딻뒝둔뎸듨드뒵땁뒙듸돳땄들땃듽돸둡돨뒼듽딎됫드된땡뒛돳땱둣듻땤땅뎡뎠둬뒷딐땦됩뎡땅땟뒬땲, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0635x2b917e10 extends Lambda implements Function0 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4415xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f4416x3271d0aa;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0635x2b917e10(Object obj, int i) {
        super(0);
        this.f4415xfbe0c504 = i;
        this.f4416x3271d0aa = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.f4415xfbe0c504) {
            case 0:
                List<Certificate> peerCertificates = ((Handshake) this.f4416x3271d0aa).peerCertificates();
                ArrayList arrayList = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(peerCertificates, 10));
                for (Certificate certificate : peerCertificates) {
                    Intrinsics.checkNotNull(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
                    arrayList.add((X509Certificate) certificate);
                }
                return arrayList;
            case 1:
                try {
                    return (List) ((Function0) this.f4416x3271d0aa).invoke();
                } catch (SSLPeerUnverifiedException unused) {
                    return CollectionsKt__CollectionsKt.emptyList();
                }
            case 2:
                ((Http2Connection) this.f4416x3271d0aa).writePing(false, 2, 0);
                return Unit.INSTANCE;
            case 3:
                _UtilCommonKt.closeQuietly((WebSocketWriter) this.f4416x3271d0aa);
                return Unit.INSTANCE;
            default:
                ((RealWebSocket) this.f4416x3271d0aa).cancel();
                return Unit.INSTANCE;
        }
    }
}
