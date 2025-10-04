package defpackage;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import okhttp3.Address;
import okhttp3.CertificatePinner;
import okhttp3.Handshake;
import okhttp3.internal.tls.CertificateChainCleaner;

/* renamed from: 돸돝디뎹도딻땣뒐땜땫딟됨땰뒉돛딅딅땵듬땸돴뒝뒈뒉되됫딄딀딁딜디땵돛땻뒹딽뒘들땃땰땯뒙뎠뒷둔둠뒼듐돴뎡돶딎땄됨돸딨땍땍뒉땠듐땋돳땟돴땋될딻딨돝딁돠되득듻뎸듐돶뒤땠듼땝되딌땜땟든됩땱되디됨득둬되땦듨돵디득딞됨땅딄땁딄뒨따드땰땯득뒬뒙땝딌돤뒾땟듰딅땐땱땟뒼뒼뒙돛딞땣, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0522x5cef0f65 extends Lambda implements Function0 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4031xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ CertificatePinner f4032x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Object f4033x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final /* synthetic */ Object f4034x75d576dc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0522x5cef0f65(CertificatePinner certificatePinner, Object obj, Object obj2, int i) {
        super(0);
        this.f4031xfbe0c504 = i;
        this.f4032x3271d0aa = certificatePinner;
        this.f4033x1378447b = obj;
        this.f4034x75d576dc = obj2;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        List<Certificate> clean;
        switch (this.f4031xfbe0c504) {
            case 0:
                CertificateChainCleaner certificateChainCleaner = this.f4032x3271d0aa.getCertificateChainCleaner();
                List<Certificate> list = (List) this.f4033x1378447b;
                if (certificateChainCleaner != null && (clean = certificateChainCleaner.clean(list, (String) this.f4034x75d576dc)) != null) {
                    list = clean;
                }
                List<Certificate> list2 = list;
                ArrayList arrayList = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(list2, 10));
                for (Certificate certificate : list2) {
                    Intrinsics.checkNotNull(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
                    arrayList.add((X509Certificate) certificate);
                }
                return arrayList;
            default:
                CertificateChainCleaner certificateChainCleaner2 = this.f4032x3271d0aa.getCertificateChainCleaner();
                Intrinsics.checkNotNull(certificateChainCleaner2);
                return certificateChainCleaner2.clean(((Handshake) this.f4033x1378447b).peerCertificates(), ((Address) this.f4034x75d576dc).url().host());
        }
    }
}
