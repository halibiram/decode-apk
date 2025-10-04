package okhttp3.internal.http2;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u0015\b\u0086\u0081\u0002\u0018\u0000 \b2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016¨\u0006\u0017"}, d2 = {"Lokhttp3/internal/http2/ErrorCode;", "", "", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "I", "getHttpCode", "()I", "httpCode", "Companion", "NO_ERROR", "PROTOCOL_ERROR", "INTERNAL_ERROR", "FLOW_CONTROL_ERROR", "SETTINGS_TIMEOUT", "STREAM_CLOSED", "FRAME_SIZE_ERROR", "REFUSED_STREAM", "CANCEL", "COMPRESSION_ERROR", "CONNECT_ERROR", "ENHANCE_YOUR_CALM", "INADEQUATE_SECURITY", "HTTP_1_1_REQUIRED", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ErrorCode {
    public static final ErrorCode CANCEL;
    public static final ErrorCode COMPRESSION_ERROR;
    public static final ErrorCode CONNECT_ERROR;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    public static final ErrorCode ENHANCE_YOUR_CALM;
    public static final ErrorCode FLOW_CONTROL_ERROR;
    public static final ErrorCode FRAME_SIZE_ERROR;
    public static final ErrorCode HTTP_1_1_REQUIRED;
    public static final ErrorCode INADEQUATE_SECURITY;
    public static final ErrorCode INTERNAL_ERROR;
    public static final ErrorCode NO_ERROR;
    public static final ErrorCode PROTOCOL_ERROR;
    public static final ErrorCode REFUSED_STREAM;
    public static final ErrorCode SETTINGS_TIMEOUT;
    public static final ErrorCode STREAM_CLOSED;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final /* synthetic */ ErrorCode[] f3269x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final /* synthetic */ EnumEntries f3270x1378447b;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
    public final int httpCode;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lokhttp3/internal/http2/ErrorCode$Companion;", "", "", "code", "Lokhttp3/internal/http2/ErrorCode;", "fromHttp2", "(I)Lokhttp3/internal/http2/ErrorCode;", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nErrorCode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ErrorCode.kt\nokhttp3/internal/http2/ErrorCode$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,53:1\n1#2:54\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        @Nullable
        public final ErrorCode fromHttp2(int code) {
            for (ErrorCode errorCode : ErrorCode.values()) {
                if (errorCode.getHttpCode() == code) {
                    return errorCode;
                }
            }
            return null;
        }
    }

    static {
        ErrorCode errorCode = new ErrorCode("NO_ERROR", 0, 0);
        NO_ERROR = errorCode;
        ErrorCode errorCode2 = new ErrorCode("PROTOCOL_ERROR", 1, 1);
        PROTOCOL_ERROR = errorCode2;
        ErrorCode errorCode3 = new ErrorCode("INTERNAL_ERROR", 2, 2);
        INTERNAL_ERROR = errorCode3;
        ErrorCode errorCode4 = new ErrorCode("FLOW_CONTROL_ERROR", 3, 3);
        FLOW_CONTROL_ERROR = errorCode4;
        ErrorCode errorCode5 = new ErrorCode("SETTINGS_TIMEOUT", 4, 4);
        SETTINGS_TIMEOUT = errorCode5;
        ErrorCode errorCode6 = new ErrorCode("STREAM_CLOSED", 5, 5);
        STREAM_CLOSED = errorCode6;
        ErrorCode errorCode7 = new ErrorCode("FRAME_SIZE_ERROR", 6, 6);
        FRAME_SIZE_ERROR = errorCode7;
        ErrorCode errorCode8 = new ErrorCode("REFUSED_STREAM", 7, 7);
        REFUSED_STREAM = errorCode8;
        ErrorCode errorCode9 = new ErrorCode("CANCEL", 8, 8);
        CANCEL = errorCode9;
        ErrorCode errorCode10 = new ErrorCode("COMPRESSION_ERROR", 9, 9);
        COMPRESSION_ERROR = errorCode10;
        ErrorCode errorCode11 = new ErrorCode("CONNECT_ERROR", 10, 10);
        CONNECT_ERROR = errorCode11;
        ErrorCode errorCode12 = new ErrorCode("ENHANCE_YOUR_CALM", 11, 11);
        ENHANCE_YOUR_CALM = errorCode12;
        ErrorCode errorCode13 = new ErrorCode("INADEQUATE_SECURITY", 12, 12);
        INADEQUATE_SECURITY = errorCode13;
        ErrorCode errorCode14 = new ErrorCode("HTTP_1_1_REQUIRED", 13, 13);
        HTTP_1_1_REQUIRED = errorCode14;
        ErrorCode[] errorCodeArr = {errorCode, errorCode2, errorCode3, errorCode4, errorCode5, errorCode6, errorCode7, errorCode8, errorCode9, errorCode10, errorCode11, errorCode12, errorCode13, errorCode14};
        f3269x3271d0aa = errorCodeArr;
        f3270x1378447b = EnumEntriesKt.enumEntries(errorCodeArr);
        INSTANCE = new Companion(null);
    }

    public ErrorCode(String str, int i, int i2) {
        this.httpCode = i2;
    }

    @NotNull
    public static EnumEntries<ErrorCode> getEntries() {
        return f3270x1378447b;
    }

    public static ErrorCode valueOf(String str) {
        return (ErrorCode) Enum.valueOf(ErrorCode.class, str);
    }

    public static ErrorCode[] values() {
        return (ErrorCode[]) f3269x3271d0aa.clone();
    }

    public final int getHttpCode() {
        return this.httpCode;
    }
}
