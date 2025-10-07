package app.tunnel.vpncommons.connectivity;

import android.content.Context;
import com.fbd.tunnel.R;
import de.blinkt.openvpn.core.TkLogStatus;

/* loaded from: classes.dex */
public class DeviceStateReceiver extends ConnectivityReceiverBase {

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public ConnectionState f413x1378447b;

    public DeviceStateReceiver(Context context) {
        super(context);
        this.f413x1378447b = ConnectionState.getInstance(getManager());
    }

    @Override // app.tunnel.vpncommons.connectivity.ConnectivityReceiverBase
    public void onAvailable(Object obj) {
        m918xfbe0c504();
    }

    @Override // app.tunnel.vpncommons.connectivity.ConnectivityReceiverBase
    public void onLost(Object obj) {
        m918xfbe0c504();
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final void m918xfbe0c504() {
        ConnectionState connectionState = ConnectionState.getInstance(getManager());
        if (this.f413x1378447b.hasChanged(connectionState)) {
            if (this.f413x1378447b.isConnected() && connectionState.isDisconnected()) {
                if (TkLogStatus.isTunnelActive()) {
                    TkLogStatus.updateStateString(TkLogStatus.VPN_PAUSE, this.context.getString(R.string.state_pause));
                    TkLogStatus.logInfo(this.context.getString(R.string.state_pause));
                }
            } else if (this.f413x1378447b.isDisconnected() && connectionState.isConnected() && TkLogStatus.isTunnelActive()) {
                TkLogStatus.updateStateString(TkLogStatus.VPN_RESUME, this.context.getString(R.string.state_resume));
                TkLogStatus.logInfo(this.context.getString(R.string.state_resume));
            }
        }
        this.f413x1378447b = connectionState;
    }
}
