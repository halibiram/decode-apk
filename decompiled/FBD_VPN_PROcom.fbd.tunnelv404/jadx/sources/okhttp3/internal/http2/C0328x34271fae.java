package okhttp3.internal.http2;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import okio.BufferedSource;

/* renamed from: okhttp3.internal.http2.뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0328x34271fae implements PushObserver {
    @Override // okhttp3.internal.http2.PushObserver
    public final boolean onData(int i, BufferedSource source, int i2, boolean z) {
        Intrinsics.checkNotNullParameter(source, "source");
        source.skip(i2);
        return true;
    }

    @Override // okhttp3.internal.http2.PushObserver
    public final boolean onHeaders(int i, List responseHeaders, boolean z) {
        Intrinsics.checkNotNullParameter(responseHeaders, "responseHeaders");
        return true;
    }

    @Override // okhttp3.internal.http2.PushObserver
    public final boolean onRequest(int i, List requestHeaders) {
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        return true;
    }

    @Override // okhttp3.internal.http2.PushObserver
    public final void onReset(int i, ErrorCode errorCode) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
    }
}
