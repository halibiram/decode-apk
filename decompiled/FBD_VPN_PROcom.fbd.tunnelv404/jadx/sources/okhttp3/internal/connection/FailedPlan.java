package okhttp3.internal.connection;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.connection.RoutePlanner;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0001\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\bJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\fJ\u000f\u0010\u000e\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000e\u0010\fR\u0017\u0010\u0012\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\bR\u001a\u0010\u0014\u001a\u00020\u00138\u0016X\u0096D¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0014\u0010\u0016¨\u0006\u0017"}, d2 = {"Lokhttp3/internal/connection/FailedPlan;", "Lokhttp3/internal/connection/RoutePlanner$Plan;", "", "e", "<init>", "(Ljava/lang/Throwable;)V", "Lokhttp3/internal/connection/RoutePlanner$ConnectResult;", "connectTcp", "()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;", "connectTlsEtc", "", "handleSuccess", "()Ljava/lang/Void;", "cancel", "retry", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Lokhttp3/internal/connection/RoutePlanner$ConnectResult;", "getResult", "result", "", "isReady", "Z", "()Z", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class FailedPlan implements RoutePlanner.Plan {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
    public final RoutePlanner.ConnectResult result;

    public FailedPlan(@NotNull Throwable e) {
        Intrinsics.checkNotNullParameter(e, "e");
        this.result = new RoutePlanner.ConnectResult(this, null, e, 2, null);
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    @NotNull
    /* renamed from: connectTcp, reason: from getter */
    public RoutePlanner.ConnectResult getResult() {
        return this.result;
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    @NotNull
    /* renamed from: connectTlsEtc */
    public RoutePlanner.ConnectResult mo2600connectTlsEtc() {
        return this.result;
    }

    @NotNull
    public final RoutePlanner.ConnectResult getResult() {
        return this.result;
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* renamed from: handleSuccess, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ RealConnection mo2592handleSuccess() {
        return (RealConnection) handleSuccess();
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    public boolean isReady() {
        return false;
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* renamed from: retry, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ RoutePlanner.Plan mo2593retry() {
        return (RoutePlanner.Plan) retry();
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan, okhttp3.internal.http.ExchangeCodec.Carrier
    @NotNull
    /* renamed from: cancel, reason: merged with bridge method [inline-methods] */
    public Void mo2591cancel() {
        throw new IllegalStateException("unexpected cancel");
    }

    @NotNull
    public Void handleSuccess() {
        throw new IllegalStateException("unexpected call");
    }

    @NotNull
    public Void retry() {
        throw new IllegalStateException("unexpected retry");
    }
}
