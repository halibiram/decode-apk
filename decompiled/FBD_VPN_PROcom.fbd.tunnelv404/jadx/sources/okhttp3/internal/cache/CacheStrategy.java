package okhttp3.internal.cache;

import defpackage.AbstractC1197x89633db9;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.CacheControl;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal.http.DatesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u0000 \u00102\u00020\u0001:\u0002\u0010\u0011B\u001d\b\u0000\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lokhttp3/internal/cache/CacheStrategy;", "", "Lokhttp3/Request;", "networkRequest", "Lokhttp3/Response;", "cacheResponse", "<init>", "(Lokhttp3/Request;Lokhttp3/Response;)V", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Lokhttp3/Request;", "getNetworkRequest", "()Lokhttp3/Request;", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "Lokhttp3/Response;", "getCacheResponse", "()Lokhttp3/Response;", "Companion", "Factory", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CacheStrategy {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
    public final Request networkRequest;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters and from kotlin metadata */
    public final Response cacheResponse;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u001d\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lokhttp3/internal/cache/CacheStrategy$Companion;", "", "Lokhttp3/Response;", "response", "Lokhttp3/Request;", "request", "", "isCacheable", "(Lokhttp3/Response;Lokhttp3/Request;)Z", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final boolean isCacheable(@NotNull Response response, @NotNull Request request) {
            Intrinsics.checkNotNullParameter(response, "response");
            Intrinsics.checkNotNullParameter(request, "request");
            int code = response.code();
            if (code != 200 && code != 410 && code != 414 && code != 501 && code != 203 && code != 204) {
                if (code != 307) {
                    if (code != 308 && code != 404 && code != 405) {
                        switch (code) {
                            case 300:
                            case 301:
                                break;
                            case 302:
                                break;
                            default:
                                return false;
                        }
                    }
                }
                if (Response.header$default(response, "Expires", null, 2, null) == null && response.cacheControl().maxAgeSeconds() == -1 && !response.cacheControl().getIsPublic() && !response.cacheControl().getIsPrivate()) {
                    return false;
                }
            }
            if (response.cacheControl().noStore() || request.cacheControl().noStore()) {
                return false;
            }
            return true;
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ\r\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fR\u001a\u0010\u0005\u001a\u00020\u00048\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lokhttp3/internal/cache/CacheStrategy$Factory;", "", "", "nowMillis", "Lokhttp3/Request;", "request", "Lokhttp3/Response;", "cacheResponse", "<init>", "(JLokhttp3/Request;Lokhttp3/Response;)V", "Lokhttp3/internal/cache/CacheStrategy;", "compute", "()Lokhttp3/internal/cache/CacheStrategy;", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "Lokhttp3/Request;", "getRequest$okhttp", "()Lokhttp3/Request;", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Factory {

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
        public final long f3015xfbe0c504;

        /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters and from kotlin metadata */
        public final Request request;

        /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
        public final Response f3017x1378447b;

        /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
        public final Date f3018x75d576dc;

        /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
        public final String f3019x9738a56c;

        /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
        public final Date f3020x9e171bf9;

        /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
        public final String f3021x34271fae;

        /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두, reason: contains not printable characters */
        public final Date f3022x95f25580;

        /* renamed from: 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷, reason: contains not printable characters */
        public final long f3023x3db60231;

        /* renamed from: 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎, reason: contains not printable characters */
        public final long f3024x9d12c1f4;

        /* renamed from: 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠, reason: contains not printable characters */
        public final String f3025x1db10c9d;

        /* renamed from: 뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻, reason: contains not printable characters */
        public final int f3026xd2bcb0cf;

        public Factory(long j, @NotNull Request request, @Nullable Response response) {
            Intrinsics.checkNotNullParameter(request, "request");
            this.f3015xfbe0c504 = j;
            this.request = request;
            this.f3017x1378447b = response;
            this.f3026xd2bcb0cf = -1;
            if (response != null) {
                this.f3023x3db60231 = response.sentRequestAtMillis();
                this.f3024x9d12c1f4 = response.receivedResponseAtMillis();
                Headers headers = response.headers();
                int size = headers.size();
                for (int i = 0; i < size; i++) {
                    String name = headers.name(i);
                    String value = headers.value(i);
                    if (AbstractC1197x89633db9.equals(name, "Date", true)) {
                        this.f3018x75d576dc = DatesKt.toHttpDateOrNull(value);
                        this.f3019x9738a56c = value;
                    } else if (AbstractC1197x89633db9.equals(name, "Expires", true)) {
                        this.f3022x95f25580 = DatesKt.toHttpDateOrNull(value);
                    } else if (AbstractC1197x89633db9.equals(name, "Last-Modified", true)) {
                        this.f3020x9e171bf9 = DatesKt.toHttpDateOrNull(value);
                        this.f3021x34271fae = value;
                    } else if (AbstractC1197x89633db9.equals(name, "ETag", true)) {
                        this.f3025x1db10c9d = value;
                    } else if (AbstractC1197x89633db9.equals(name, "Age", true)) {
                        this.f3026xd2bcb0cf = _UtilCommonKt.toNonNegativeInt(value, -1);
                    }
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:38:0x0100  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0115  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x012b  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x014a  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x018d  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x018f  */
        /* JADX WARN: Removed duplicated region for block: B:72:0x0122  */
        /* JADX WARN: Type inference failed for: r2v0 */
        /* JADX WARN: Type inference failed for: r2v10 */
        /* JADX WARN: Type inference failed for: r2v14, types: [okhttp3.Request, okhttp3.Response] */
        /* JADX WARN: Type inference failed for: r2v15 */
        /* JADX WARN: Type inference failed for: r2v16 */
        /* JADX WARN: Type inference failed for: r2v17 */
        /* JADX WARN: Type inference failed for: r2v4 */
        /* JADX WARN: Type inference failed for: r2v9 */
        @NotNull
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final CacheStrategy compute() {
            CacheStrategy cacheStrategy;
            long j;
            long j2;
            long j3;
            long j4;
            Date date;
            long j5;
            Date date2;
            long j6;
            String str;
            String str2;
            Request request = this.request;
            ?? r2 = 0;
            r2 = 0;
            r2 = 0;
            r2 = 0;
            Response response = this.f3017x1378447b;
            if (response == null) {
                cacheStrategy = new CacheStrategy(request, null);
            } else if (request.isHttps() && response.handshake() == null) {
                cacheStrategy = new CacheStrategy(request, null);
            } else if (!CacheStrategy.INSTANCE.isCacheable(response, request)) {
                cacheStrategy = new CacheStrategy(request, null);
            } else {
                CacheControl cacheControl = request.cacheControl();
                if (!cacheControl.noCache() && request.header("If-Modified-Since") == null && request.header("If-None-Match") == null) {
                    CacheControl cacheControl2 = response.cacheControl();
                    long j7 = this.f3024x9d12c1f4;
                    Date date3 = this.f3018x75d576dc;
                    if (date3 != null) {
                        j = Math.max(0L, j7 - date3.getTime());
                    } else {
                        j = 0;
                    }
                    int i = this.f3026xd2bcb0cf;
                    if (i != -1) {
                        j = Math.max(j, TimeUnit.SECONDS.toMillis(i));
                    }
                    long j8 = this.f3023x3db60231;
                    long max = j + Math.max(0L, j7 - j8) + Math.max(0L, this.f3015xfbe0c504 - j7);
                    Intrinsics.checkNotNull(response);
                    int maxAgeSeconds = response.cacheControl().maxAgeSeconds();
                    Date date4 = this.f3020x9e171bf9;
                    Date date5 = this.f3022x95f25580;
                    if (maxAgeSeconds != -1) {
                        j3 = TimeUnit.SECONDS.toMillis(r1.maxAgeSeconds());
                    } else if (date5 != null) {
                        if (date3 != null) {
                            j7 = date3.getTime();
                        }
                        j3 = date5.getTime() - j7;
                        if (j3 <= 0) {
                            j3 = 0;
                        }
                    } else {
                        if (date4 != null && response.request().url().query() == null) {
                            if (date3 != null) {
                                j4 = date3.getTime();
                            } else {
                                j4 = j8;
                            }
                            Intrinsics.checkNotNull(date4);
                            long time = j4 - date4.getTime();
                            j2 = 0;
                            if (time > 0) {
                                j3 = time / 10;
                                if (cacheControl.maxAgeSeconds() != -1) {
                                    j3 = Math.min(j3, TimeUnit.SECONDS.toMillis(cacheControl.maxAgeSeconds()));
                                }
                                if (cacheControl.minFreshSeconds() != -1) {
                                    date = date3;
                                    j5 = TimeUnit.SECONDS.toMillis(cacheControl.minFreshSeconds());
                                } else {
                                    date = date3;
                                    j5 = 0;
                                }
                                if (cacheControl2.mustRevalidate() && cacheControl.maxStaleSeconds() != -1) {
                                    date2 = date4;
                                    j6 = TimeUnit.SECONDS.toMillis(cacheControl.maxStaleSeconds());
                                } else {
                                    date2 = date4;
                                    j6 = 0;
                                }
                                if (!cacheControl2.noCache()) {
                                    long j9 = j5 + max;
                                    if (j9 < j3 + j6) {
                                        Response.Builder newBuilder = response.newBuilder();
                                        if (j9 >= j3) {
                                            newBuilder.addHeader("Warning", "110 HttpURLConnection \"Response is stale\"");
                                        }
                                        if (max > 86400000) {
                                            Intrinsics.checkNotNull(response);
                                            if (response.cacheControl().maxAgeSeconds() == -1 && date5 == null) {
                                                newBuilder.addHeader("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                                            }
                                        }
                                        r2 = 0;
                                        cacheStrategy = new CacheStrategy(null, newBuilder.build());
                                        request = request;
                                    }
                                }
                                str = this.f3025x1db10c9d;
                                if (str != null) {
                                    str2 = "If-None-Match";
                                } else {
                                    if (date2 != null) {
                                        str = this.f3021x34271fae;
                                    } else if (date != null) {
                                        str = this.f3019x9738a56c;
                                    } else {
                                        request = request;
                                        r2 = 0;
                                        cacheStrategy = new CacheStrategy(request, null);
                                    }
                                    str2 = "If-Modified-Since";
                                }
                                Headers.Builder newBuilder2 = request.headers().newBuilder();
                                Intrinsics.checkNotNull(str);
                                newBuilder2.addLenient$okhttp(str2, str);
                                cacheStrategy = new CacheStrategy(request.newBuilder().headers(newBuilder2.build()).build(), response);
                                request = request;
                                r2 = 0;
                            }
                        } else {
                            j2 = 0;
                        }
                        j3 = j2;
                        if (cacheControl.maxAgeSeconds() != -1) {
                        }
                        if (cacheControl.minFreshSeconds() != -1) {
                        }
                        if (cacheControl2.mustRevalidate()) {
                        }
                        date2 = date4;
                        j6 = 0;
                        if (!cacheControl2.noCache()) {
                        }
                        str = this.f3025x1db10c9d;
                        if (str != null) {
                        }
                        Headers.Builder newBuilder22 = request.headers().newBuilder();
                        Intrinsics.checkNotNull(str);
                        newBuilder22.addLenient$okhttp(str2, str);
                        cacheStrategy = new CacheStrategy(request.newBuilder().headers(newBuilder22.build()).build(), response);
                        request = request;
                        r2 = 0;
                    }
                    if (cacheControl.maxAgeSeconds() != -1) {
                    }
                    if (cacheControl.minFreshSeconds() != -1) {
                    }
                    if (cacheControl2.mustRevalidate()) {
                    }
                    date2 = date4;
                    j6 = 0;
                    if (!cacheControl2.noCache()) {
                    }
                    str = this.f3025x1db10c9d;
                    if (str != null) {
                    }
                    Headers.Builder newBuilder222 = request.headers().newBuilder();
                    Intrinsics.checkNotNull(str);
                    newBuilder222.addLenient$okhttp(str2, str);
                    cacheStrategy = new CacheStrategy(request.newBuilder().headers(newBuilder222.build()).build(), response);
                    request = request;
                    r2 = 0;
                } else {
                    cacheStrategy = new CacheStrategy(request, null);
                }
            }
            if (cacheStrategy.getNetworkRequest() != null && request.cacheControl().onlyIfCached()) {
                return new CacheStrategy(r2, r2);
            }
            return cacheStrategy;
        }

        @NotNull
        /* renamed from: getRequest$okhttp, reason: from getter */
        public final Request getRequest() {
            return this.request;
        }
    }

    public CacheStrategy(@Nullable Request request, @Nullable Response response) {
        this.networkRequest = request;
        this.cacheResponse = response;
    }

    @Nullable
    public final Response getCacheResponse() {
        return this.cacheResponse;
    }

    @Nullable
    public final Request getNetworkRequest() {
        return this.networkRequest;
    }
}
