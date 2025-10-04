package defpackage;

import com.tknetwork.tunnel.service.TunnelVPN;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;

/* renamed from: 땭듔땟뒻땜뒝딻뒉딄딟뎸땝뒈뒝땤땣뒋딐딝딻뒛뒨딌뒀돨뒘딸두돠뎻땯돠땋돷딅딁땝딃뒛따뎽뎸듌땁됨뎹땤땧둣땝돼딟뒀둣도땰된뒷땵땳뒙돝뒬돛딄땃딠뒬될뒐땳디딟딐둥돳땫딐땅딜땱뒾듔땯뒻땥돵땭뒐땠딻땍뎠딨돛땍둠딅돛딞듼됐뒨둘땹듟듼땁딅득돸뒀돵뎡뎠뎻드땍딻도돝딄드땝땪땰두뒬돰돶, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C1251x5dad0ee2 implements HostnameVerifier {
    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        boolean lambda$connectSSL$2;
        lambda$connectSSL$2 = TunnelVPN.lambda$connectSSL$2(str, sSLSession);
        return lambda$connectSSL$2;
    }
}
