package okhttp3.internal.connection;

import androidx.browser.trusted.sharing.ShareTarget;
import androidx.core.app.NotificationCompat;
import defpackage.AbstractC0362x4440ab85;
import java.io.IOException;
import java.net.Socket;
import java.net.UnknownServiceException;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Address;
import okhttp3.ConnectionListener;
import okhttp3.ConnectionSpec;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.RoutePlanner;
import okhttp3.internal.connection.RouteSelector;
import okhttp3.internal.http.HttpStatusCodesKt;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.platform.Platform;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J/\u0010\u001c\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0010\b\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016H\u0000¢\u0006\u0004\b\u001a\u0010\u001bJ)\u0010 \u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u00172\u0010\b\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016H\u0000¢\u0006\u0004\b\u001e\u0010\u001fJ\u0019\u0010#\u001a\u00020\u000e2\b\u0010\"\u001a\u0004\u0018\u00010!H\u0016¢\u0006\u0004\b#\u0010$J\u0017\u0010'\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b'\u0010(R\u001a\u0010\u0005\u001a\u00020\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R \u00102\u001a\b\u0012\u0004\u0012\u00020\u00110-8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101¨\u00063"}, d2 = {"Lokhttp3/internal/connection/RealRoutePlanner;", "Lokhttp3/internal/connection/RoutePlanner;", "Lokhttp3/OkHttpClient;", "client", "Lokhttp3/Address;", "address", "Lokhttp3/internal/connection/RealCall;", NotificationCompat.CATEGORY_CALL, "Lokhttp3/internal/http/RealInterceptorChain;", "chain", "Lokhttp3/ConnectionListener;", "connectionListener", "<init>", "(Lokhttp3/OkHttpClient;Lokhttp3/Address;Lokhttp3/internal/connection/RealCall;Lokhttp3/internal/http/RealInterceptorChain;Lokhttp3/ConnectionListener;)V", "", "isCanceled", "()Z", "Lokhttp3/internal/connection/RoutePlanner$Plan;", "plan", "()Lokhttp3/internal/connection/RoutePlanner$Plan;", "Lokhttp3/internal/connection/ConnectPlan;", "planToReplace", "", "Lokhttp3/Route;", "routes", "Lokhttp3/internal/connection/ReusePlan;", "planReusePooledConnection$okhttp", "(Lokhttp3/internal/connection/ConnectPlan;Ljava/util/List;)Lokhttp3/internal/connection/ReusePlan;", "planReusePooledConnection", "route", "planConnectToRoute$okhttp", "(Lokhttp3/Route;Ljava/util/List;)Lokhttp3/internal/connection/ConnectPlan;", "planConnectToRoute", "Lokhttp3/internal/connection/RealConnection;", "failedConnection", "hasNext", "(Lokhttp3/internal/connection/RealConnection;)Z", "Lokhttp3/HttpUrl;", "url", "sameHostAndPort", "(Lokhttp3/HttpUrl;)Z", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "Lokhttp3/Address;", "getAddress", "()Lokhttp3/Address;", "Lkotlin/collections/ArrayDeque;", "뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎", "Lkotlin/collections/ArrayDeque;", "getDeferredPlans", "()Lkotlin/collections/ArrayDeque;", "deferredPlans", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class RealRoutePlanner implements RoutePlanner {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final OkHttpClient f3212xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters and from kotlin metadata */
    public final Address address;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final RealCall f3214x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final RealInterceptorChain f3215x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final ConnectionListener f3216x9738a56c;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public final boolean f3217x9e171bf9;

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    public RouteSelector.Selection f3218x34271fae;

    /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두, reason: contains not printable characters */
    public RouteSelector f3219x95f25580;

    /* renamed from: 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷, reason: contains not printable characters */
    public Route f3220x3db60231;

    /* renamed from: 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎, reason: contains not printable characters and from kotlin metadata */
    public final ArrayDeque deferredPlans;

    public RealRoutePlanner(@NotNull OkHttpClient client, @NotNull Address address, @NotNull RealCall call, @NotNull RealInterceptorChain chain, @NotNull ConnectionListener connectionListener) {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(chain, "chain");
        Intrinsics.checkNotNullParameter(connectionListener, "connectionListener");
        this.f3212xfbe0c504 = client;
        this.address = address;
        this.f3214x1378447b = call;
        this.f3215x75d576dc = chain;
        this.f3216x9738a56c = connectionListener;
        this.f3217x9e171bf9 = !Intrinsics.areEqual(chain.getRequest().method(), ShareTarget.METHOD_GET);
        this.deferredPlans = new ArrayDeque();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ConnectPlan planConnectToRoute$okhttp$default(RealRoutePlanner realRoutePlanner, Route route, List list, int i, Object obj) {
        if ((i & 2) != 0) {
            list = null;
        }
        return realRoutePlanner.planConnectToRoute$okhttp(route, list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ReusePlan planReusePooledConnection$okhttp$default(RealRoutePlanner realRoutePlanner, ConnectPlan connectPlan, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            connectPlan = null;
        }
        if ((i & 2) != 0) {
            list = null;
        }
        return realRoutePlanner.planReusePooledConnection$okhttp(connectPlan, list);
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    @NotNull
    public Address getAddress() {
        return this.address;
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    @NotNull
    public ArrayDeque<RoutePlanner.Plan> getDeferredPlans() {
        return this.deferredPlans;
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    public boolean hasNext(@Nullable RealConnection failedConnection) {
        RouteSelector routeSelector;
        Route route;
        if (!getDeferredPlans().isEmpty() || this.f3220x3db60231 != null) {
            return true;
        }
        if (failedConnection != null) {
            synchronized (failedConnection) {
                route = null;
                if (failedConnection.getRouteFailureCount() == 0 && failedConnection.getNoNewExchanges() && _UtilJvmKt.canReuseConnectionFor(failedConnection.route().address().url(), getAddress().url())) {
                    route = failedConnection.route();
                }
            }
            if (route != null) {
                this.f3220x3db60231 = route;
                return true;
            }
        }
        RouteSelector.Selection selection = this.f3218x34271fae;
        if ((selection != null && selection.hasNext()) || (routeSelector = this.f3219x95f25580) == null) {
            return true;
        }
        return routeSelector.hasNext();
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    public boolean isCanceled() {
        return this.f3214x1378447b.getF3176x85f0360e();
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0096 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0097  */
    @Override // okhttp3.internal.connection.RoutePlanner
    @NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public RoutePlanner.Plan plan() {
        Socket releaseConnectionNoEvents$okhttp;
        boolean z;
        ReusePlan reusePlan;
        ConnectPlan planConnectToRoute$okhttp;
        RealConnection connection = this.f3214x1378447b.getConnection();
        if (connection != null) {
            boolean isHealthy = connection.isHealthy(this.f3217x9e171bf9);
            synchronized (connection) {
                try {
                    if (!isHealthy) {
                        z = !connection.getNoNewExchanges();
                        connection.setNoNewExchanges(true);
                        releaseConnectionNoEvents$okhttp = this.f3214x1378447b.releaseConnectionNoEvents$okhttp();
                    } else {
                        if (!connection.getNoNewExchanges() && sameHostAndPort(connection.route().address().url())) {
                            releaseConnectionNoEvents$okhttp = null;
                            z = false;
                        }
                        releaseConnectionNoEvents$okhttp = this.f3214x1378447b.releaseConnectionNoEvents$okhttp();
                        z = false;
                    }
                } finally {
                }
            }
            if (this.f3214x1378447b.getConnection() != null) {
                if (releaseConnectionNoEvents$okhttp == null) {
                    reusePlan = new ReusePlan(connection);
                    if (reusePlan == null) {
                        return reusePlan;
                    }
                    ReusePlan planReusePooledConnection$okhttp$default = planReusePooledConnection$okhttp$default(this, null, null, 3, null);
                    if (planReusePooledConnection$okhttp$default != null) {
                        return planReusePooledConnection$okhttp$default;
                    }
                    if (!getDeferredPlans().isEmpty()) {
                        return getDeferredPlans().removeFirst();
                    }
                    Route route = this.f3220x3db60231;
                    if (route != null) {
                        this.f3220x3db60231 = null;
                        planConnectToRoute$okhttp = planConnectToRoute$okhttp$default(this, route, null, 2, null);
                    } else {
                        RouteSelector.Selection selection = this.f3218x34271fae;
                        if (selection != null && selection.hasNext()) {
                            planConnectToRoute$okhttp = planConnectToRoute$okhttp$default(this, selection.next(), null, 2, null);
                        } else {
                            RouteSelector routeSelector = this.f3219x95f25580;
                            RealCall realCall = this.f3214x1378447b;
                            if (routeSelector == null) {
                                routeSelector = new RouteSelector(getAddress(), realCall.getClient().getRouteDatabase(), this.f3214x1378447b, this.f3212xfbe0c504.getFastFallback(), realCall.getEventListener());
                                this.f3219x95f25580 = routeSelector;
                            }
                            if (routeSelector.hasNext()) {
                                RouteSelector.Selection next = routeSelector.next();
                                this.f3218x34271fae = next;
                                if (!realCall.getF3176x85f0360e()) {
                                    planConnectToRoute$okhttp = planConnectToRoute$okhttp(next.next(), next.getRoutes());
                                } else {
                                    throw new IOException("Canceled");
                                }
                            } else {
                                throw new IOException("exhausted all routes");
                            }
                        }
                    }
                    ReusePlan planReusePooledConnection$okhttp = planReusePooledConnection$okhttp(planConnectToRoute$okhttp, planConnectToRoute$okhttp.getRoutes$okhttp());
                    if (planReusePooledConnection$okhttp != null) {
                        return planReusePooledConnection$okhttp;
                    }
                    return planConnectToRoute$okhttp;
                }
                throw new IllegalStateException("Check failed.");
            }
            if (releaseConnectionNoEvents$okhttp != null) {
                _UtilJvmKt.closeQuietly(releaseConnectionNoEvents$okhttp);
            }
            this.f3214x1378447b.getEventListener().connectionReleased(this.f3214x1378447b, connection);
            connection.getConnectionListener().connectionReleased(connection, this.f3214x1378447b);
            if (releaseConnectionNoEvents$okhttp != null) {
                connection.getConnectionListener().connectionClosed(connection);
            } else if (z) {
                connection.getConnectionListener().noNewExchanges(connection);
            }
        }
        reusePlan = null;
        if (reusePlan == null) {
        }
    }

    @NotNull
    public final ConnectPlan planConnectToRoute$okhttp(@NotNull Route route, @Nullable List<Route> routes) {
        Request request;
        Intrinsics.checkNotNullParameter(route, "route");
        if (route.address().sslSocketFactory() == null) {
            if (route.address().connectionSpecs().contains(ConnectionSpec.CLEARTEXT)) {
                String host = route.address().url().host();
                if (!Platform.INSTANCE.get().isCleartextTrafficPermitted(host)) {
                    throw new UnknownServiceException(AbstractC0362x4440ab85.m2932x95f25580("CLEARTEXT communication to ", host, " not permitted by network security policy"));
                }
            } else {
                throw new UnknownServiceException("CLEARTEXT communication not enabled for client");
            }
        } else if (route.address().protocols().contains(Protocol.H2_PRIOR_KNOWLEDGE)) {
            throw new UnknownServiceException("H2_PRIOR_KNOWLEDGE cannot be used with HTTPS");
        }
        if (route.requiresTunnel()) {
            Request build = new Request.Builder().url(route.address().url()).method("CONNECT", null).header("Host", _UtilJvmKt.toHostHeader(route.address().url(), true)).header("Proxy-Connection", "Keep-Alive").header("User-Agent", _UtilCommonKt.userAgent).build();
            Request authenticate = route.address().proxyAuthenticator().authenticate(route, new Response.Builder().request(build).protocol(Protocol.HTTP_1_1).code(HttpStatusCodesKt.HTTP_PROXY_AUTH).message("Preemptive Authenticate").sentRequestAtMillis(-1L).receivedResponseAtMillis(-1L).header("Proxy-Authenticate", "OkHttp-Preemptive").build());
            if (authenticate != null) {
                build = authenticate;
            }
            request = build;
        } else {
            request = null;
        }
        return new ConnectPlan(this.f3212xfbe0c504, this.f3214x1378447b, this.f3215x75d576dc, this, route, routes, 0, request, -1, false, this.f3216x9738a56c);
    }

    @Nullable
    public final ReusePlan planReusePooledConnection$okhttp(@Nullable ConnectPlan planToReplace, @Nullable List<Route> routes) {
        boolean z;
        RealConnectionPool delegate = this.f3212xfbe0c504.connectionPool().getDelegate();
        Address address = getAddress();
        if (planToReplace != null && planToReplace.isReady()) {
            z = true;
        } else {
            z = false;
        }
        RealConnection callAcquirePooledConnection = delegate.callAcquirePooledConnection(this.f3217x9e171bf9, address, this.f3214x1378447b, routes, z);
        if (callAcquirePooledConnection == null) {
            return null;
        }
        if (planToReplace != null) {
            this.f3220x3db60231 = planToReplace.getRoute();
            planToReplace.closeQuietly();
        }
        RealCall realCall = this.f3214x1378447b;
        realCall.getEventListener().connectionAcquired(realCall, callAcquirePooledConnection);
        callAcquirePooledConnection.getConnectionListener().connectionAcquired(callAcquirePooledConnection, realCall);
        return new ReusePlan(callAcquirePooledConnection);
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    public boolean sameHostAndPort(@NotNull HttpUrl url) {
        Intrinsics.checkNotNullParameter(url, "url");
        HttpUrl url2 = getAddress().url();
        if (url.port() == url2.port() && Intrinsics.areEqual(url.host(), url2.host())) {
            return true;
        }
        return false;
    }
}
