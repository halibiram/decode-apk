package defpackage;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import kotlin.jvm.internal.Intrinsics;
import okio.AsyncTimeout;
import okio.Okio;

/* renamed from: 땟땪땋돶뎽들뎸됨되뒷뎻뎸땦땳듌딟뒉둥뒐뒉땠땤딅딸딅뒈딁뒐뎹뒝듌뒤땋딄듬듻둣도듰땥뎹딝뒼뒤둬땝될두딨땰돸딅뒐딎땲되돼딃땤땳돨땐땥딨땪뒘듬뒨듻둔돴됩뎹땰돼땜딄돠듐뒛둘딽둘뒋드땧땄뒬됨들뒨딀듐딄땭듼됐돨돠둡따들듔뒾뒉딎딻땦딽될딞딠됫땁듸땮뒬딄듨땭딟땫땦든딝듨듨땤땩돳, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1159xdea9bec extends AsyncTimeout {

    /* renamed from: 뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀, reason: contains not printable characters */
    public final Socket f5524x1aebc6d9;

    public C1159xdea9bec(Socket socket) {
        Intrinsics.checkNotNullParameter(socket, "socket");
        this.f5524x1aebc6d9 = socket;
    }

    @Override // okio.AsyncTimeout
    public final IOException newTimeoutException(IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }

    @Override // okio.AsyncTimeout
    public final void timedOut() {
        Socket socket = this.f5524x1aebc6d9;
        try {
            socket.close();
        } catch (AssertionError e) {
            if (Okio.isAndroidGetsocknameError(e)) {
                AbstractC1007x6c2349d5.f5199xfbe0c504.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e);
                return;
            }
            throw e;
        } catch (Exception e2) {
            AbstractC1007x6c2349d5.f5199xfbe0c504.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e2);
        }
    }
}
