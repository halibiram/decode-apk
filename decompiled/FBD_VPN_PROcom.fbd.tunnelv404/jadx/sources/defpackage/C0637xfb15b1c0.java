package defpackage;

import android.net.ConnectivityManager;
import android.net.Network;
import app.tunnel.vpncommons.connectivity.ConnectivityReceiverBase;

/* renamed from: 둥됐땪땰땯딜땍됴둥드둬딁뒘뒘돼땳득들뒻듽따들된됴돼딻딞땟땸딝됩딄뒤땯땲둑딸딜도딄뒈땃돛땹땣딌뎠돸딝딄뒷땠딻돠뒵딻뒬뒼딄따따땭땅될땔둘땱딠됨딅뒵듬돤듬땋딻둔뒀땰땫돛듟돠뎸될뎽듰뒾돳돝뒻땨땪딎땧따듼딻돶듨딟됴딅듽딸돳둔딸듬땯둥땩땱땝돛든뎬됐들땫둔딨뎨땻땧땪뒀땃땃둑, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0637xfb15b1c0 extends ConnectivityManager.NetworkCallback {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ ConnectivityReceiverBase f4418xfbe0c504;

    public C0637xfb15b1c0(ConnectivityReceiverBase connectivityReceiverBase) {
        this.f4418xfbe0c504 = connectivityReceiverBase;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
        this.f4418xfbe0c504.onAvailable(network);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLosing(Network network, int i) {
        this.f4418xfbe0c504.onLosing(network);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        this.f4418xfbe0c504.onLost(network);
    }
}
