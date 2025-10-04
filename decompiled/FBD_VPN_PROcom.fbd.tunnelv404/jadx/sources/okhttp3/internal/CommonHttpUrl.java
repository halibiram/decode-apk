package okhttp3.internal;

import com.v2ray.ang.AppConfig;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0587xb7546d05;
import defpackage.AbstractC1145xfc271605;
import defpackage.AbstractC1197x89633db9;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.AbstractC0296x1378447b;
import kotlin.ranges.IntProgression;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.StringsKt___StringsKt;
import kotlin.text.Typography;
import okhttp3.HttpUrl;
import okio.Buffer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\bP\n\u0002\u0010!\n\u0002\b#\n\u0002\u0010\u0019\n\u0002\b\u001a\n\u0002\u0010\"\n\u0002\b\u0005\bÀ\u0002\u0018\u00002\u00020\u0001J\u001b\u0010\u0005\u001a\u0004\u0018\u00010\u0003*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J!\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0007*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\f\u001a\u00020\u0003*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u001b\u0010\u000e\u001a\u0004\u0018\u00010\u0003*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\rJ'\u0010\u0015\u001a\u00020\u0012*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00072\n\u0010\u0011\u001a\u00060\u000fj\u0002`\u0010H\u0000¢\u0006\u0004\b\u0013\u0010\u0014J\u0013\u0010\u0018\u001a\u00020\u0003*\u00020\u0002H\u0000¢\u0006\u0004\b\u0016\u0010\u0017J\u001b\u0010\u001a\u001a\u0004\u0018\u00010\u0002*\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0003¢\u0006\u0004\b\u001a\u0010\u001bJ\u0011\u0010\u001d\u001a\u00020\u001c*\u00020\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u001b\u0010\u001d\u001a\u0004\u0018\u00010\u001c*\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0003¢\u0006\u0004\b\u001d\u0010\u001fJ\u001b\u0010\"\u001a\u00020!*\u00020\u00022\b\u0010 \u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\"\u0010#J\u0011\u0010$\u001a\u00020\n*\u00020\u0002¢\u0006\u0004\b$\u0010%J\u0011\u0010&\u001a\u00020\u0003*\u00020\u0002¢\u0006\u0004\b&\u0010\u0017J\u0019\u0010(\u001a\u00020\u001c*\u00020\u001c2\u0006\u0010'\u001a\u00020\u0003¢\u0006\u0004\b(\u0010)J\u0019\u0010+\u001a\u00020\u001c*\u00020\u001c2\u0006\u0010*\u001a\u00020\u0003¢\u0006\u0004\b+\u0010)J\u0019\u0010-\u001a\u00020\u001c*\u00020\u001c2\u0006\u0010,\u001a\u00020\u0003¢\u0006\u0004\b-\u0010)J\u0019\u0010/\u001a\u00020\u001c*\u00020\u001c2\u0006\u0010.\u001a\u00020\u0003¢\u0006\u0004\b/\u0010)J\u0019\u00101\u001a\u00020\u001c*\u00020\u001c2\u0006\u00100\u001a\u00020\u0003¢\u0006\u0004\b1\u0010)J\u0019\u00103\u001a\u00020\u001c*\u00020\u001c2\u0006\u00102\u001a\u00020\u0003¢\u0006\u0004\b3\u0010)J1\u00109\u001a\u00020\u0003*\u00020\u00032\b\b\u0002\u00104\u001a\u00020\n2\b\b\u0002\u00105\u001a\u00020\n2\b\b\u0002\u00106\u001a\u00020!H\u0000¢\u0006\u0004\b7\u00108J\u0019\u0010;\u001a\u00020\u001c*\u00020\u001c2\u0006\u0010:\u001a\u00020\n¢\u0006\u0004\b;\u0010<J\u0019\u0010>\u001a\u00020\u001c*\u00020\u001c2\u0006\u0010=\u001a\u00020\u0003¢\u0006\u0004\b>\u0010)J\u0019\u0010@\u001a\u00020\u001c*\u00020\u001c2\u0006\u0010?\u001a\u00020\u0003¢\u0006\u0004\b@\u0010)J\u0019\u0010B\u001a\u00020\u001c*\u00020\u001c2\u0006\u0010A\u001a\u00020\u0003¢\u0006\u0004\bB\u0010)J\u0019\u0010D\u001a\u00020\u001c*\u00020\u001c2\u0006\u0010C\u001a\u00020\u0003¢\u0006\u0004\bD\u0010)J!\u0010E\u001a\u00020\u001c*\u00020\u001c2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010=\u001a\u00020\u0003¢\u0006\u0004\bE\u0010FJ!\u0010G\u001a\u00020\u001c*\u00020\u001c2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010A\u001a\u00020\u0003¢\u0006\u0004\bG\u0010FJ\u0019\u0010H\u001a\u00020\u001c*\u00020\u001c2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\bH\u0010<J\u0019\u0010J\u001a\u00020\u001c*\u00020\u001c2\u0006\u0010I\u001a\u00020\u0003¢\u0006\u0004\bJ\u0010)J\u001b\u0010L\u001a\u00020\u001c*\u00020\u001c2\b\u0010K\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\bL\u0010)J\u001b\u0010N\u001a\u00020\u001c*\u00020\u001c2\b\u0010M\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\bN\u0010)J#\u0010P\u001a\u00020\u001c*\u00020\u001c2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010O\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\bP\u0010QJ#\u0010T\u001a\u00020\u001c*\u00020\u001c2\u0006\u0010R\u001a\u00020\u00032\b\u0010S\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\bT\u0010QJ#\u0010U\u001a\u00020\u001c*\u00020\u001c2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010O\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\bU\u0010QJ#\u0010V\u001a\u00020\u001c*\u00020\u001c2\u0006\u0010R\u001a\u00020\u00032\b\u0010S\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\bV\u0010QJ\u0019\u0010W\u001a\u00020\u001c*\u00020\u001c2\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\bW\u0010)J\u0019\u0010X\u001a\u00020\u001c*\u00020\u001c2\u0006\u0010R\u001a\u00020\u0003¢\u0006\u0004\bX\u0010)J\u0019\u0010Z\u001a\u00020\u0012*\u00020\u001c2\u0006\u0010Y\u001a\u00020\u0003¢\u0006\u0004\bZ\u0010[J\u001b\u0010]\u001a\u00020\u001c*\u00020\u001c2\b\u0010\\\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b]\u0010)J\u001b\u0010_\u001a\u00020\u001c*\u00020\u001c2\b\u0010^\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b_\u0010)J;\u0010e\u001a\u00020\u0012*\u00020\u001c2\u0006\u0010`\u001a\u00020\u00032\u0006\u00104\u001a\u00020\n2\u0006\u00105\u001a\u00020\n2\u0006\u0010a\u001a\u00020!2\u0006\u0010b\u001a\u00020!H\u0000¢\u0006\u0004\bc\u0010dJ\u001b\u0010h\u001a\u00020!*\u00020\u001c2\u0006\u0010`\u001a\u00020\u0003H\u0000¢\u0006\u0004\bf\u0010gJ\u001b\u0010j\u001a\u00020!*\u00020\u001c2\u0006\u0010`\u001a\u00020\u0003H\u0000¢\u0006\u0004\bi\u0010gJ\u0013\u0010m\u001a\u00020\u0012*\u00020\u001cH\u0000¢\u0006\u0004\bk\u0010lJ+\u0010q\u001a\u00020\u0012*\u00020\u001c2\u0006\u0010`\u001a\u00020\u00032\u0006\u0010n\u001a\u00020\n2\u0006\u00105\u001a\u00020\nH\u0000¢\u0006\u0004\bo\u0010pJ\u001b\u0010u\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030r*\u00020\u0003H\u0000¢\u0006\u0004\bs\u0010tJ\u0011\u0010v\u001a\u00020\u0002*\u00020\u001c¢\u0006\u0004\bv\u0010wJ\u0013\u0010z\u001a\u00020\n*\u00020\u001cH\u0000¢\u0006\u0004\bx\u0010yJ\u0013\u0010&\u001a\u00020\u0003*\u00020\u001cH\u0000¢\u0006\u0004\b{\u0010|J%\u0010~\u001a\u00020\u0012*\b\u0012\u0004\u0012\u00020\u00030\u00072\n\u0010\u0011\u001a\u00060\u000fj\u0002`\u0010H\u0000¢\u0006\u0004\b}\u0010\u0014J(\u0010\u0082\u0001\u001a\u00020\u001c*\u00020\u001c2\b\u0010\u007f\u001a\u0004\u0018\u00010\u00022\u0006\u0010`\u001a\u00020\u0003H\u0000¢\u0006\u0006\b\u0080\u0001\u0010\u0081\u0001J*\u0010\u0085\u0001\u001a\u00020\n2\u0006\u0010`\u001a\u00020\u00032\u0006\u00104\u001a\u00020\n2\u0006\u00105\u001a\u00020\nH\u0000¢\u0006\u0006\b\u0083\u0001\u0010\u0084\u0001J&\u0010\u0087\u0001\u001a\u00020\n*\u00020\u00032\u0006\u00104\u001a\u00020\n2\u0006\u00105\u001a\u00020\nH\u0000¢\u0006\u0006\b\u0086\u0001\u0010\u0084\u0001J*\u0010\u0089\u0001\u001a\u00020\n2\u0006\u0010`\u001a\u00020\u00032\u0006\u00104\u001a\u00020\n2\u0006\u00105\u001a\u00020\nH\u0000¢\u0006\u0006\b\u0088\u0001\u0010\u0084\u0001J*\u0010\u008b\u0001\u001a\u00020\n2\u0006\u0010`\u001a\u00020\u00032\u0006\u00104\u001a\u00020\n2\u0006\u00105\u001a\u00020\nH\u0000¢\u0006\u0006\b\u008a\u0001\u0010\u0084\u0001J&\u0010\u008e\u0001\u001a\u00020!*\u00020\u00032\u0006\u00104\u001a\u00020\n2\u0006\u00105\u001a\u00020\nH\u0000¢\u0006\u0006\b\u008c\u0001\u0010\u008d\u0001J\u0016\u0010\u0091\u0001\u001a\u00020\u0002*\u00020\u0003H\u0000¢\u0006\u0006\b\u008f\u0001\u0010\u0090\u0001J\u0018\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u0002*\u00020\u0003H\u0000¢\u0006\u0006\b\u0092\u0001\u0010\u0090\u0001J\u001a\u0010\u0094\u0001\u001a\u00020\n2\u0006\u0010'\u001a\u00020\u0003H\u0007¢\u0006\u0006\b\u0094\u0001\u0010\u0095\u0001R \u0010\u009b\u0001\u001a\u00030\u0096\u00018\u0000X\u0080\u0004¢\u0006\u0010\n\u0006\b\u0097\u0001\u0010\u0098\u0001\u001a\u0006\b\u0099\u0001\u0010\u009a\u0001R\u0017\u0010\u009c\u0001\u001a\u00020\u00038\u0000X\u0080T¢\u0006\b\n\u0006\b\u009c\u0001\u0010\u009d\u0001R\u0017\u0010\u009e\u0001\u001a\u00020\u00038\u0000X\u0080T¢\u0006\b\n\u0006\b\u009e\u0001\u0010\u009d\u0001R\u0017\u0010\u009f\u0001\u001a\u00020\u00038\u0000X\u0080T¢\u0006\b\n\u0006\b\u009f\u0001\u0010\u009d\u0001R\u0017\u0010 \u0001\u001a\u00020\u00038\u0000X\u0080T¢\u0006\b\n\u0006\b \u0001\u0010\u009d\u0001R\u0017\u0010¡\u0001\u001a\u00020\u00038\u0000X\u0080T¢\u0006\b\n\u0006\b¡\u0001\u0010\u009d\u0001R\u0018\u0010¤\u0001\u001a\u00020!*\u00020\u00028F¢\u0006\b\u001a\u0006\b¢\u0001\u0010£\u0001R\u0016\u0010-\u001a\u00020\u0003*\u00020\u00028F¢\u0006\u0007\u001a\u0005\b¥\u0001\u0010\u0017R\u0016\u00101\u001a\u00020\u0003*\u00020\u00028F¢\u0006\u0007\u001a\u0005\b¦\u0001\u0010\u0017R\u0017\u0010¨\u0001\u001a\u00020\n*\u00020\u00028F¢\u0006\u0007\u001a\u0005\b§\u0001\u0010%R\u0016\u0010J\u001a\u00020\u0003*\u00020\u00028F¢\u0006\u0007\u001a\u0005\b©\u0001\u0010\u0017R\u001e\u0010¬\u0001\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007*\u00020\u00028F¢\u0006\b\u001a\u0006\bª\u0001\u0010«\u0001R\u0018\u0010N\u001a\u0004\u0018\u00010\u0003*\u00020\u00028F¢\u0006\u0007\u001a\u0005\b\u00ad\u0001\u0010\u0017R\u0018\u0010L\u001a\u0004\u0018\u00010\u0003*\u00020\u00028F¢\u0006\u0007\u001a\u0005\b®\u0001\u0010\u0017R\u0017\u0010°\u0001\u001a\u00020\n*\u00020\u00028F¢\u0006\u0007\u001a\u0005\b¯\u0001\u0010%R\u001f\u0010´\u0001\u001a\t\u0012\u0004\u0012\u00020\u00030±\u0001*\u00020\u00028F¢\u0006\b\u001a\u0006\b²\u0001\u0010³\u0001R\u0018\u0010_\u001a\u0004\u0018\u00010\u0003*\u00020\u00028F¢\u0006\u0007\u001a\u0005\bµ\u0001\u0010\u0017¨\u0006¶\u0001"}, d2 = {"Lokhttp3/internal/CommonHttpUrl;", "", "Lokhttp3/HttpUrl;", "", "name", "commonQueryParameter", "(Lokhttp3/HttpUrl;Ljava/lang/String;)Ljava/lang/String;", "", "commonQueryParameterValues", "(Lokhttp3/HttpUrl;Ljava/lang/String;)Ljava/util/List;", "", "index", "commonQueryParameterName", "(Lokhttp3/HttpUrl;I)Ljava/lang/String;", "commonQueryParameterValue", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "out", "", "toQueryString$okhttp", "(Ljava/util/List;Ljava/lang/StringBuilder;)V", "toQueryString", "commonRedact$okhttp", "(Lokhttp3/HttpUrl;)Ljava/lang/String;", "commonRedact", "link", "commonResolve", "(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/HttpUrl;", "Lokhttp3/HttpUrl$Builder;", "commonNewBuilder", "(Lokhttp3/HttpUrl;)Lokhttp3/HttpUrl$Builder;", "(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;", "other", "", "commonEquals", "(Lokhttp3/HttpUrl;Ljava/lang/Object;)Z", "commonHashCode", "(Lokhttp3/HttpUrl;)I", "commonToString", "scheme", "commonScheme", "(Lokhttp3/HttpUrl$Builder;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;", "username", "commonUsername", "encodedUsername", "commonEncodedUsername", "password", "commonPassword", "encodedPassword", "commonEncodedPassword", "host", "commonHost", "pos", "limit", "plusIsSpace", "percentDecode$okhttp", "(Ljava/lang/String;IIZ)Ljava/lang/String;", "percentDecode", "port", "commonPort", "(Lokhttp3/HttpUrl$Builder;I)Lokhttp3/HttpUrl$Builder;", "pathSegment", "commonAddPathSegment", "pathSegments", "commonAddPathSegments", "encodedPathSegment", "commonAddEncodedPathSegment", "encodedPathSegments", "commonAddEncodedPathSegments", "commonSetPathSegment", "(Lokhttp3/HttpUrl$Builder;ILjava/lang/String;)Lokhttp3/HttpUrl$Builder;", "commonSetEncodedPathSegment", "commonRemovePathSegment", "encodedPath", "commonEncodedPath", "query", "commonQuery", "encodedQuery", "commonEncodedQuery", "value", "commonAddQueryParameter", "(Lokhttp3/HttpUrl$Builder;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;", "encodedName", "encodedValue", "commonAddEncodedQueryParameter", "commonSetQueryParameter", "commonSetEncodedQueryParameter", "commonRemoveAllQueryParameters", "commonRemoveAllEncodedQueryParameters", "canonicalName", "commonRemoveAllCanonicalQueryParameters", "(Lokhttp3/HttpUrl$Builder;Ljava/lang/String;)V", "fragment", "commonFragment", "encodedFragment", "commonEncodedFragment", "input", "addTrailingSlash", "alreadyEncoded", "push$okhttp", "(Lokhttp3/HttpUrl$Builder;Ljava/lang/String;IIZZ)V", "push", "isDot$okhttp", "(Lokhttp3/HttpUrl$Builder;Ljava/lang/String;)Z", "isDot", "isDotDot$okhttp", "isDotDot", "pop$okhttp", "(Lokhttp3/HttpUrl$Builder;)V", "pop", "startPos", "resolvePath$okhttp", "(Lokhttp3/HttpUrl$Builder;Ljava/lang/String;II)V", "resolvePath", "", "toQueryNamesAndValues$okhttp", "(Ljava/lang/String;)Ljava/util/List;", "toQueryNamesAndValues", "commonBuild", "(Lokhttp3/HttpUrl$Builder;)Lokhttp3/HttpUrl;", "effectivePort$okhttp", "(Lokhttp3/HttpUrl$Builder;)I", "effectivePort", "commonToString$okhttp", "(Lokhttp3/HttpUrl$Builder;)Ljava/lang/String;", "toPathString$okhttp", "toPathString", "base", "commonParse$okhttp", "(Lokhttp3/HttpUrl$Builder;Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;", "commonParse", "schemeDelimiterOffset$okhttp", "(Ljava/lang/String;II)I", "schemeDelimiterOffset", "slashCount$okhttp", "slashCount", "portColonOffset$okhttp", "portColonOffset", "parsePort$okhttp", "parsePort", "isPercentEncoded$okhttp", "(Ljava/lang/String;II)Z", "isPercentEncoded", "commonToHttpUrl$okhttp", "(Ljava/lang/String;)Lokhttp3/HttpUrl;", "commonToHttpUrl", "commonToHttpUrlOrNull$okhttp", "commonToHttpUrlOrNull", "commonDefaultPort", "(Ljava/lang/String;)I", "", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "[C", "getHEX_DIGITS$okhttp", "()[C", "HEX_DIGITS", "PATH_SEGMENT_ENCODE_SET_URI", "Ljava/lang/String;", "QUERY_COMPONENT_ENCODE_SET_URI", "FORM_ENCODE_SET", "FRAGMENT_ENCODE_SET_URI", "INVALID_HOST", "getCommonIsHttps", "(Lokhttp3/HttpUrl;)Z", "commonIsHttps", "getCommonEncodedUsername", "getCommonEncodedPassword", "getCommonPathSize", "commonPathSize", "getCommonEncodedPath", "getCommonEncodedPathSegments", "(Lokhttp3/HttpUrl;)Ljava/util/List;", "commonEncodedPathSegments", "getCommonEncodedQuery", "getCommonQuery", "getCommonQuerySize", "commonQuerySize", "", "getCommonQueryParameterNames", "(Lokhttp3/HttpUrl;)Ljava/util/Set;", "commonQueryParameterNames", "getCommonEncodedFragment", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\n-HttpUrlCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -HttpUrlCommon.kt\nokhttp3/internal/CommonHttpUrl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,905:1\n1#2:906\n1549#3:907\n1620#3,3:908\n1549#3:911\n1620#3,3:912\n*S KotlinDebug\n*F\n+ 1 -HttpUrlCommon.kt\nokhttp3/internal/CommonHttpUrl\n*L\n597#1:907\n597#1:908,3\n598#1:911\n598#1:912,3\n*E\n"})
/* loaded from: classes3.dex */
public final class CommonHttpUrl {

    @NotNull
    public static final String FORM_ENCODE_SET = " !\"#$&'()+,/:;<=>?@[\\]^`{|}~";

    @NotNull
    public static final String FRAGMENT_ENCODE_SET_URI = " \"#<>\\^`{|}";

    @NotNull
    public static final String INVALID_HOST = "Invalid URL host";

    @NotNull
    public static final String PATH_SEGMENT_ENCODE_SET_URI = "[]";

    @NotNull
    public static final String QUERY_COMPONENT_ENCODE_SET_URI = "\\^`{|}";

    @NotNull
    public static final CommonHttpUrl INSTANCE = new Object();

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
    public static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    @JvmStatic
    public static final int commonDefaultPort(@NotNull String scheme) {
        Intrinsics.checkNotNullParameter(scheme, "scheme");
        if (Intrinsics.areEqual(scheme, "http")) {
            return 80;
        }
        if (Intrinsics.areEqual(scheme, "https")) {
            return AppConfig.DEFAULT_PORT;
        }
        return -1;
    }

    public static /* synthetic */ String percentDecode$okhttp$default(CommonHttpUrl commonHttpUrl, String str, int i, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        return commonHttpUrl.percentDecode$okhttp(str, i, i2, z);
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static void m2574xfbe0c504(HttpUrl.Builder builder, String str, boolean z) {
        boolean z2;
        int i = 0;
        do {
            int delimiterOffset = _UtilCommonKt.delimiterOffset(str, "/\\", i, str.length());
            if (delimiterOffset < str.length()) {
                z2 = true;
            } else {
                z2 = false;
            }
            INSTANCE.push$okhttp(builder, str, i, delimiterOffset, z2, z);
            i = delimiterOffset + 1;
        } while (i <= str.length());
    }

    @NotNull
    public final HttpUrl.Builder commonAddEncodedPathSegment(@NotNull HttpUrl.Builder builder, @NotNull String encodedPathSegment) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(encodedPathSegment, "encodedPathSegment");
        INSTANCE.push$okhttp(builder, encodedPathSegment, 0, encodedPathSegment.length(), false, true);
        return builder;
    }

    @NotNull
    public final HttpUrl.Builder commonAddEncodedPathSegments(@NotNull HttpUrl.Builder builder, @NotNull String encodedPathSegments) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(encodedPathSegments, "encodedPathSegments");
        m2574xfbe0c504(builder, encodedPathSegments, true);
        return builder;
    }

    @NotNull
    public final HttpUrl.Builder commonAddEncodedQueryParameter(@NotNull HttpUrl.Builder builder, @NotNull String encodedName, @Nullable String str) {
        String str2;
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(encodedName, "encodedName");
        if (builder.getEncodedQueryNamesAndValues$okhttp() == null) {
            builder.setEncodedQueryNamesAndValues$okhttp(new ArrayList());
        }
        List<String> encodedQueryNamesAndValues$okhttp = builder.getEncodedQueryNamesAndValues$okhttp();
        Intrinsics.checkNotNull(encodedQueryNamesAndValues$okhttp);
        HttpUrlCommon httpUrlCommon = HttpUrlCommon.INSTANCE;
        encodedQueryNamesAndValues$okhttp.add(HttpUrlCommon.canonicalize$okhttp$default(httpUrlCommon, encodedName, 0, 0, " \"'<>#&=", true, false, true, false, 83, null));
        List<String> encodedQueryNamesAndValues$okhttp2 = builder.getEncodedQueryNamesAndValues$okhttp();
        Intrinsics.checkNotNull(encodedQueryNamesAndValues$okhttp2);
        if (str != null) {
            str2 = HttpUrlCommon.canonicalize$okhttp$default(httpUrlCommon, str, 0, 0, " \"'<>#&=", true, false, true, false, 83, null);
        } else {
            str2 = null;
        }
        encodedQueryNamesAndValues$okhttp2.add(str2);
        return builder;
    }

    @NotNull
    public final HttpUrl.Builder commonAddPathSegment(@NotNull HttpUrl.Builder builder, @NotNull String pathSegment) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(pathSegment, "pathSegment");
        INSTANCE.push$okhttp(builder, pathSegment, 0, pathSegment.length(), false, false);
        return builder;
    }

    @NotNull
    public final HttpUrl.Builder commonAddPathSegments(@NotNull HttpUrl.Builder builder, @NotNull String pathSegments) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(pathSegments, "pathSegments");
        m2574xfbe0c504(builder, pathSegments, false);
        return builder;
    }

    @NotNull
    public final HttpUrl.Builder commonAddQueryParameter(@NotNull HttpUrl.Builder builder, @NotNull String name, @Nullable String str) {
        String str2;
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        if (builder.getEncodedQueryNamesAndValues$okhttp() == null) {
            builder.setEncodedQueryNamesAndValues$okhttp(new ArrayList());
        }
        List<String> encodedQueryNamesAndValues$okhttp = builder.getEncodedQueryNamesAndValues$okhttp();
        Intrinsics.checkNotNull(encodedQueryNamesAndValues$okhttp);
        HttpUrlCommon httpUrlCommon = HttpUrlCommon.INSTANCE;
        encodedQueryNamesAndValues$okhttp.add(HttpUrlCommon.canonicalize$okhttp$default(httpUrlCommon, name, 0, 0, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false, false, true, false, 91, null));
        List<String> encodedQueryNamesAndValues$okhttp2 = builder.getEncodedQueryNamesAndValues$okhttp();
        Intrinsics.checkNotNull(encodedQueryNamesAndValues$okhttp2);
        if (str != null) {
            str2 = HttpUrlCommon.canonicalize$okhttp$default(httpUrlCommon, str, 0, 0, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false, false, true, false, 91, null);
        } else {
            str2 = null;
        }
        encodedQueryNamesAndValues$okhttp2.add(str2);
        return builder;
    }

    @NotNull
    public final HttpUrl commonBuild(@NotNull HttpUrl.Builder builder) {
        ArrayList arrayList;
        String str;
        Intrinsics.checkNotNullParameter(builder, "<this>");
        String scheme = builder.getScheme();
        if (scheme != null) {
            String percentDecode$okhttp$default = percentDecode$okhttp$default(this, builder.getEncodedUsername(), 0, 0, false, 7, null);
            String percentDecode$okhttp$default2 = percentDecode$okhttp$default(this, builder.getEncodedPassword(), 0, 0, false, 7, null);
            String host = builder.getHost();
            if (host != null) {
                int effectivePort$okhttp = effectivePort$okhttp(builder);
                List<String> encodedPathSegments$okhttp = builder.getEncodedPathSegments$okhttp();
                ArrayList arrayList2 = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(encodedPathSegments$okhttp, 10));
                Iterator<T> it = encodedPathSegments$okhttp.iterator();
                while (it.hasNext()) {
                    arrayList2.add(percentDecode$okhttp$default(INSTANCE, (String) it.next(), 0, 0, false, 7, null));
                }
                List<String> encodedQueryNamesAndValues$okhttp = builder.getEncodedQueryNamesAndValues$okhttp();
                String str2 = null;
                if (encodedQueryNamesAndValues$okhttp != null) {
                    List<String> list = encodedQueryNamesAndValues$okhttp;
                    ArrayList arrayList3 = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(list, 10));
                    for (String str3 : list) {
                        if (str3 != null) {
                            str = percentDecode$okhttp$default(INSTANCE, str3, 0, 0, true, 3, null);
                        } else {
                            str = null;
                        }
                        arrayList3.add(str);
                    }
                    arrayList = arrayList3;
                } else {
                    arrayList = null;
                }
                String encodedFragment = builder.getEncodedFragment();
                if (encodedFragment != null) {
                    str2 = percentDecode$okhttp$default(this, encodedFragment, 0, 0, false, 7, null);
                }
                return new HttpUrl(scheme, percentDecode$okhttp$default, percentDecode$okhttp$default2, host, effectivePort$okhttp, arrayList2, arrayList, str2, builder.toString());
            }
            throw new IllegalStateException("host == null");
        }
        throw new IllegalStateException("scheme == null");
    }

    @NotNull
    public final HttpUrl.Builder commonEncodedFragment(@NotNull HttpUrl.Builder builder, @Nullable String str) {
        String str2;
        Intrinsics.checkNotNullParameter(builder, "<this>");
        if (str != null) {
            str2 = HttpUrlCommon.canonicalize$okhttp$default(HttpUrlCommon.INSTANCE, str, 0, 0, "", true, false, false, true, 51, null);
        } else {
            str2 = null;
        }
        builder.setEncodedFragment$okhttp(str2);
        return builder;
    }

    @NotNull
    public final HttpUrl.Builder commonEncodedPassword(@NotNull HttpUrl.Builder builder, @NotNull String encodedPassword) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(encodedPassword, "encodedPassword");
        builder.setEncodedPassword$okhttp(HttpUrlCommon.canonicalize$okhttp$default(HttpUrlCommon.INSTANCE, encodedPassword, 0, 0, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, 115, null));
        return builder;
    }

    @NotNull
    public final HttpUrl.Builder commonEncodedPath(@NotNull HttpUrl.Builder builder, @NotNull String encodedPath) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(encodedPath, "encodedPath");
        if (AbstractC1197x89633db9.startsWith$default(encodedPath, "/", false, 2, null)) {
            INSTANCE.resolvePath$okhttp(builder, encodedPath, 0, encodedPath.length());
            return builder;
        }
        throw new IllegalArgumentException(AbstractC0362x4440ab85.m2952x5ac5058d("unexpected encodedPath: ", encodedPath).toString());
    }

    @NotNull
    public final HttpUrl.Builder commonEncodedQuery(@NotNull HttpUrl.Builder builder, @Nullable String str) {
        List<String> list;
        String canonicalize$okhttp$default;
        Intrinsics.checkNotNullParameter(builder, "<this>");
        if (str != null && (canonicalize$okhttp$default = HttpUrlCommon.canonicalize$okhttp$default(HttpUrlCommon.INSTANCE, str, 0, 0, " \"'<>#", true, false, true, false, 83, null)) != null) {
            list = INSTANCE.toQueryNamesAndValues$okhttp(canonicalize$okhttp$default);
        } else {
            list = null;
        }
        builder.setEncodedQueryNamesAndValues$okhttp(list);
        return builder;
    }

    @NotNull
    public final HttpUrl.Builder commonEncodedUsername(@NotNull HttpUrl.Builder builder, @NotNull String encodedUsername) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(encodedUsername, "encodedUsername");
        builder.setEncodedUsername$okhttp(HttpUrlCommon.canonicalize$okhttp$default(HttpUrlCommon.INSTANCE, encodedUsername, 0, 0, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, 115, null));
        return builder;
    }

    public final boolean commonEquals(@NotNull HttpUrl httpUrl, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(httpUrl, "<this>");
        if ((obj instanceof HttpUrl) && Intrinsics.areEqual(((HttpUrl) obj).getUrl(), httpUrl.getUrl())) {
            return true;
        }
        return false;
    }

    @NotNull
    public final HttpUrl.Builder commonFragment(@NotNull HttpUrl.Builder builder, @Nullable String str) {
        String str2;
        Intrinsics.checkNotNullParameter(builder, "<this>");
        if (str != null) {
            str2 = HttpUrlCommon.canonicalize$okhttp$default(HttpUrlCommon.INSTANCE, str, 0, 0, "", false, false, false, true, 59, null);
        } else {
            str2 = null;
        }
        builder.setEncodedFragment$okhttp(str2);
        return builder;
    }

    public final int commonHashCode(@NotNull HttpUrl httpUrl) {
        Intrinsics.checkNotNullParameter(httpUrl, "<this>");
        return httpUrl.getUrl().hashCode();
    }

    @NotNull
    public final HttpUrl.Builder commonHost(@NotNull HttpUrl.Builder builder, @NotNull String host) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(host, "host");
        String canonicalHost = _HostnamesCommonKt.toCanonicalHost(percentDecode$okhttp$default(INSTANCE, host, 0, 0, false, 7, null));
        if (canonicalHost != null) {
            builder.setHost$okhttp(canonicalHost);
            return builder;
        }
        throw new IllegalArgumentException(AbstractC0362x4440ab85.m2952x5ac5058d("unexpected host: ", host));
    }

    @NotNull
    public final HttpUrl.Builder commonNewBuilder(@NotNull HttpUrl httpUrl) {
        Intrinsics.checkNotNullParameter(httpUrl, "<this>");
        HttpUrl.Builder builder = new HttpUrl.Builder();
        builder.setScheme$okhttp(httpUrl.scheme());
        builder.setEncodedUsername$okhttp(httpUrl.encodedUsername());
        builder.setEncodedPassword$okhttp(httpUrl.encodedPassword());
        builder.setHost$okhttp(httpUrl.host());
        builder.setPort$okhttp(httpUrl.port() != commonDefaultPort(httpUrl.scheme()) ? httpUrl.port() : -1);
        builder.getEncodedPathSegments$okhttp().clear();
        builder.getEncodedPathSegments$okhttp().addAll(httpUrl.encodedPathSegments());
        builder.encodedQuery(httpUrl.encodedQuery());
        builder.setEncodedFragment$okhttp(httpUrl.encodedFragment());
        return builder;
    }

    @NotNull
    public final HttpUrl.Builder commonParse$okhttp(@NotNull HttpUrl.Builder builder, @Nullable HttpUrl httpUrl, @NotNull String input) {
        String str;
        int delimiterOffset;
        char c;
        int i;
        String str2;
        int i2;
        String str3;
        boolean z;
        String str4;
        int i3;
        char c2;
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(input, "input");
        boolean z2 = false;
        int indexOfFirstNonAsciiWhitespace$default = _UtilCommonKt.indexOfFirstNonAsciiWhitespace$default(input, 0, 0, 3, null);
        int indexOfLastNonAsciiWhitespace$default = _UtilCommonKt.indexOfLastNonAsciiWhitespace$default(input, indexOfFirstNonAsciiWhitespace$default, 0, 2, null);
        int schemeDelimiterOffset$okhttp = schemeDelimiterOffset$okhttp(input, indexOfFirstNonAsciiWhitespace$default, indexOfLastNonAsciiWhitespace$default);
        char c3 = 65535;
        if (schemeDelimiterOffset$okhttp != -1) {
            if (AbstractC1197x89633db9.startsWith(input, "https:", indexOfFirstNonAsciiWhitespace$default, true)) {
                builder.setScheme$okhttp("https");
                indexOfFirstNonAsciiWhitespace$default += 6;
            } else if (AbstractC1197x89633db9.startsWith(input, "http:", indexOfFirstNonAsciiWhitespace$default, true)) {
                builder.setScheme$okhttp("http");
                indexOfFirstNonAsciiWhitespace$default += 5;
            } else {
                StringBuilder sb = new StringBuilder("Expected URL scheme 'http' or 'https' but was '");
                String substring = input.substring(0, schemeDelimiterOffset$okhttp);
                Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                sb.append(substring);
                sb.append('\'');
                throw new IllegalArgumentException(sb.toString());
            }
        } else if (httpUrl != null) {
            builder.setScheme$okhttp(httpUrl.scheme());
        } else {
            if (input.length() > 6) {
                str = StringsKt___StringsKt.take(input, 6) + "...";
            } else {
                str = input;
            }
            throw new IllegalArgumentException(AbstractC0362x4440ab85.m2952x5ac5058d("Expected URL scheme 'http' or 'https' but no scheme was found for ", str));
        }
        int slashCount$okhttp = slashCount$okhttp(input, indexOfFirstNonAsciiWhitespace$default, indexOfLastNonAsciiWhitespace$default);
        char c4 = '?';
        char c5 = '#';
        if (slashCount$okhttp < 2 && httpUrl != null && Intrinsics.areEqual(httpUrl.scheme(), builder.getScheme())) {
            builder.setEncodedUsername$okhttp(httpUrl.encodedUsername());
            builder.setEncodedPassword$okhttp(httpUrl.encodedPassword());
            builder.setHost$okhttp(httpUrl.host());
            builder.setPort$okhttp(httpUrl.port());
            builder.getEncodedPathSegments$okhttp().clear();
            builder.getEncodedPathSegments$okhttp().addAll(httpUrl.encodedPathSegments());
            if (indexOfFirstNonAsciiWhitespace$default == indexOfLastNonAsciiWhitespace$default || input.charAt(indexOfFirstNonAsciiWhitespace$default) == '#') {
                builder.encodedQuery(httpUrl.encodedQuery());
            }
            i2 = indexOfLastNonAsciiWhitespace$default;
            str3 = input;
        } else {
            int i4 = indexOfFirstNonAsciiWhitespace$default + slashCount$okhttp;
            boolean z3 = false;
            while (true) {
                delimiterOffset = _UtilCommonKt.delimiterOffset(input, "@/\\?#", i4, indexOfLastNonAsciiWhitespace$default);
                if (delimiterOffset != indexOfLastNonAsciiWhitespace$default) {
                    c = input.charAt(delimiterOffset);
                } else {
                    c = 65535;
                }
                if (c == c3 || c == c5 || c == '/' || c == '\\' || c == c4) {
                    break;
                }
                if (c == '@') {
                    if (!z2) {
                        int delimiterOffset2 = _UtilCommonKt.delimiterOffset(input, ':', i4, delimiterOffset);
                        HttpUrlCommon httpUrlCommon = HttpUrlCommon.INSTANCE;
                        String canonicalize$okhttp$default = HttpUrlCommon.canonicalize$okhttp$default(httpUrlCommon, input, i4, delimiterOffset2, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, 112, null);
                        if (z3) {
                            canonicalize$okhttp$default = builder.getEncodedUsername() + "%40" + canonicalize$okhttp$default;
                        }
                        builder.setEncodedUsername$okhttp(canonicalize$okhttp$default);
                        if (delimiterOffset2 != delimiterOffset) {
                            builder.setEncodedPassword$okhttp(HttpUrlCommon.canonicalize$okhttp$default(httpUrlCommon, input, delimiterOffset2 + 1, delimiterOffset, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, 112, null));
                            z = true;
                        } else {
                            z = z2;
                        }
                        z2 = z;
                        z3 = true;
                    } else {
                        builder.setEncodedPassword$okhttp(builder.getEncodedPassword() + "%40" + HttpUrlCommon.canonicalize$okhttp$default(HttpUrlCommon.INSTANCE, input, i4, delimiterOffset, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, 112, null));
                    }
                    i4 = delimiterOffset + 1;
                    c5 = '#';
                    c4 = '?';
                    c3 = 65535;
                }
            }
            int portColonOffset$okhttp = portColonOffset$okhttp(input, i4, delimiterOffset);
            int i5 = portColonOffset$okhttp + 1;
            if (i5 < delimiterOffset) {
                i = delimiterOffset;
                i2 = indexOfLastNonAsciiWhitespace$default;
                str3 = input;
                builder.setHost$okhttp(_HostnamesCommonKt.toCanonicalHost(percentDecode$okhttp$default(this, input, i4, portColonOffset$okhttp, false, 4, null)));
                builder.setPort$okhttp(parsePort$okhttp(str3, i5, i));
                if (builder.getPort() != -1) {
                    str2 = "substring(...)";
                } else {
                    StringBuilder sb2 = new StringBuilder("Invalid URL port: \"");
                    String substring2 = str3.substring(i5, i);
                    Intrinsics.checkNotNullExpressionValue(substring2, "substring(...)");
                    sb2.append(substring2);
                    sb2.append(Typography.quote);
                    throw new IllegalArgumentException(sb2.toString().toString());
                }
            } else {
                i = delimiterOffset;
                str2 = "substring(...)";
                i2 = indexOfLastNonAsciiWhitespace$default;
                str3 = input;
                builder.setHost$okhttp(_HostnamesCommonKt.toCanonicalHost(percentDecode$okhttp$default(this, input, i4, portColonOffset$okhttp, false, 4, null)));
                HttpUrl.Companion companion = HttpUrl.INSTANCE;
                String scheme = builder.getScheme();
                Intrinsics.checkNotNull(scheme);
                builder.setPort$okhttp(companion.defaultPort(scheme));
            }
            if (builder.getHost() != null) {
                indexOfFirstNonAsciiWhitespace$default = i;
            } else {
                StringBuilder sb3 = new StringBuilder("Invalid URL host: \"");
                String substring3 = str3.substring(i4, portColonOffset$okhttp);
                Intrinsics.checkNotNullExpressionValue(substring3, str2);
                sb3.append(substring3);
                sb3.append(Typography.quote);
                throw new IllegalArgumentException(sb3.toString().toString());
            }
        }
        int delimiterOffset3 = _UtilCommonKt.delimiterOffset(str3, "?#", indexOfFirstNonAsciiWhitespace$default, i2);
        resolvePath$okhttp(builder, str3, indexOfFirstNonAsciiWhitespace$default, delimiterOffset3);
        if (delimiterOffset3 < i2 && str3.charAt(delimiterOffset3) == '?') {
            c2 = '#';
            int delimiterOffset4 = _UtilCommonKt.delimiterOffset(str3, '#', delimiterOffset3, i2);
            str4 = str3;
            i3 = i2;
            builder.setEncodedQueryNamesAndValues$okhttp(toQueryNamesAndValues$okhttp(HttpUrlCommon.canonicalize$okhttp$default(HttpUrlCommon.INSTANCE, input, delimiterOffset3 + 1, delimiterOffset4, " \"'<>#", true, false, true, false, 80, null)));
            delimiterOffset3 = delimiterOffset4;
        } else {
            str4 = str3;
            i3 = i2;
            c2 = '#';
        }
        if (delimiterOffset3 < i3 && str4.charAt(delimiterOffset3) == c2) {
            builder.setEncodedFragment$okhttp(HttpUrlCommon.canonicalize$okhttp$default(HttpUrlCommon.INSTANCE, input, delimiterOffset3 + 1, i3, "", true, false, false, true, 48, null));
        }
        return builder;
    }

    @NotNull
    public final HttpUrl.Builder commonPassword(@NotNull HttpUrl.Builder builder, @NotNull String password) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(password, "password");
        builder.setEncodedPassword$okhttp(HttpUrlCommon.canonicalize$okhttp$default(HttpUrlCommon.INSTANCE, password, 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, 123, null));
        return builder;
    }

    @NotNull
    public final HttpUrl.Builder commonPort(@NotNull HttpUrl.Builder builder, int i) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        if (1 <= i && i < 65536) {
            builder.setPort$okhttp(i);
            return builder;
        }
        throw new IllegalArgumentException(AbstractC0362x4440ab85.m2929x9738a56c(i, "unexpected port: ").toString());
    }

    @NotNull
    public final HttpUrl.Builder commonQuery(@NotNull HttpUrl.Builder builder, @Nullable String str) {
        List<String> list;
        String canonicalize$okhttp$default;
        Intrinsics.checkNotNullParameter(builder, "<this>");
        if (str != null && (canonicalize$okhttp$default = HttpUrlCommon.canonicalize$okhttp$default(HttpUrlCommon.INSTANCE, str, 0, 0, " \"'<>#", false, false, true, false, 91, null)) != null) {
            list = INSTANCE.toQueryNamesAndValues$okhttp(canonicalize$okhttp$default);
        } else {
            list = null;
        }
        builder.setEncodedQueryNamesAndValues$okhttp(list);
        return builder;
    }

    @Nullable
    public final String commonQueryParameter(@NotNull HttpUrl httpUrl, @NotNull String name) {
        Intrinsics.checkNotNullParameter(httpUrl, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        if (httpUrl.getQueryNamesAndValues$okhttp() == null) {
            return null;
        }
        IntProgression step = AbstractC0296x1378447b.step(AbstractC0296x1378447b.until(0, httpUrl.getQueryNamesAndValues$okhttp().size()), 2);
        int first = step.getFirst();
        int last = step.getLast();
        int step2 = step.getStep();
        if ((step2 > 0 && first <= last) || (step2 < 0 && last <= first)) {
            while (!Intrinsics.areEqual(name, httpUrl.getQueryNamesAndValues$okhttp().get(first))) {
                if (first != last) {
                    first += step2;
                }
            }
            return httpUrl.getQueryNamesAndValues$okhttp().get(first + 1);
        }
        return null;
    }

    @NotNull
    public final String commonQueryParameterName(@NotNull HttpUrl httpUrl, int i) {
        Intrinsics.checkNotNullParameter(httpUrl, "<this>");
        if (httpUrl.getQueryNamesAndValues$okhttp() != null) {
            String str = httpUrl.getQueryNamesAndValues$okhttp().get(i * 2);
            Intrinsics.checkNotNull(str);
            return str;
        }
        throw new IndexOutOfBoundsException();
    }

    @Nullable
    public final String commonQueryParameterValue(@NotNull HttpUrl httpUrl, int i) {
        Intrinsics.checkNotNullParameter(httpUrl, "<this>");
        if (httpUrl.getQueryNamesAndValues$okhttp() != null) {
            return httpUrl.getQueryNamesAndValues$okhttp().get((i * 2) + 1);
        }
        throw new IndexOutOfBoundsException();
    }

    @NotNull
    public final List<String> commonQueryParameterValues(@NotNull HttpUrl httpUrl, @NotNull String name) {
        Intrinsics.checkNotNullParameter(httpUrl, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        if (httpUrl.getQueryNamesAndValues$okhttp() == null) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        IntProgression step = AbstractC0296x1378447b.step(AbstractC0296x1378447b.until(0, httpUrl.getQueryNamesAndValues$okhttp().size()), 2);
        int first = step.getFirst();
        int last = step.getLast();
        int step2 = step.getStep();
        if ((step2 > 0 && first <= last) || (step2 < 0 && last <= first)) {
            while (true) {
                if (Intrinsics.areEqual(name, httpUrl.getQueryNamesAndValues$okhttp().get(first))) {
                    arrayList.add(httpUrl.getQueryNamesAndValues$okhttp().get(first + 1));
                }
                if (first == last) {
                    break;
                }
                first += step2;
            }
        }
        return _UtilCommonKt.readOnly(arrayList);
    }

    @NotNull
    public final String commonRedact$okhttp(@NotNull HttpUrl httpUrl) {
        Intrinsics.checkNotNullParameter(httpUrl, "<this>");
        HttpUrl.Builder newBuilder = httpUrl.newBuilder("/...");
        Intrinsics.checkNotNull(newBuilder);
        return newBuilder.username("").password("").build().toString();
    }

    public final void commonRemoveAllCanonicalQueryParameters(@NotNull HttpUrl.Builder builder, @NotNull String canonicalName) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(canonicalName, "canonicalName");
        List<String> encodedQueryNamesAndValues$okhttp = builder.getEncodedQueryNamesAndValues$okhttp();
        Intrinsics.checkNotNull(encodedQueryNamesAndValues$okhttp);
        int size = encodedQueryNamesAndValues$okhttp.size() - 2;
        int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(size, 0, -2);
        if (progressionLastElement > size) {
            return;
        }
        while (true) {
            List<String> encodedQueryNamesAndValues$okhttp2 = builder.getEncodedQueryNamesAndValues$okhttp();
            Intrinsics.checkNotNull(encodedQueryNamesAndValues$okhttp2);
            if (Intrinsics.areEqual(canonicalName, encodedQueryNamesAndValues$okhttp2.get(size))) {
                List<String> encodedQueryNamesAndValues$okhttp3 = builder.getEncodedQueryNamesAndValues$okhttp();
                Intrinsics.checkNotNull(encodedQueryNamesAndValues$okhttp3);
                encodedQueryNamesAndValues$okhttp3.remove(size + 1);
                List<String> encodedQueryNamesAndValues$okhttp4 = builder.getEncodedQueryNamesAndValues$okhttp();
                Intrinsics.checkNotNull(encodedQueryNamesAndValues$okhttp4);
                encodedQueryNamesAndValues$okhttp4.remove(size);
                List<String> encodedQueryNamesAndValues$okhttp5 = builder.getEncodedQueryNamesAndValues$okhttp();
                Intrinsics.checkNotNull(encodedQueryNamesAndValues$okhttp5);
                if (encodedQueryNamesAndValues$okhttp5.isEmpty()) {
                    builder.setEncodedQueryNamesAndValues$okhttp(null);
                    return;
                }
            }
            if (size != progressionLastElement) {
                size -= 2;
            } else {
                return;
            }
        }
    }

    @NotNull
    public final HttpUrl.Builder commonRemoveAllEncodedQueryParameters(@NotNull HttpUrl.Builder builder, @NotNull String encodedName) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(encodedName, "encodedName");
        if (builder.getEncodedQueryNamesAndValues$okhttp() == null) {
            return builder;
        }
        INSTANCE.commonRemoveAllCanonicalQueryParameters(builder, HttpUrlCommon.canonicalize$okhttp$default(HttpUrlCommon.INSTANCE, encodedName, 0, 0, " \"'<>#&=", true, false, true, false, 83, null));
        return builder;
    }

    @NotNull
    public final HttpUrl.Builder commonRemoveAllQueryParameters(@NotNull HttpUrl.Builder builder, @NotNull String name) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        if (builder.getEncodedQueryNamesAndValues$okhttp() == null) {
            return builder;
        }
        INSTANCE.commonRemoveAllCanonicalQueryParameters(builder, HttpUrlCommon.canonicalize$okhttp$default(HttpUrlCommon.INSTANCE, name, 0, 0, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false, false, true, false, 91, null));
        return builder;
    }

    @NotNull
    public final HttpUrl.Builder commonRemovePathSegment(@NotNull HttpUrl.Builder builder, int i) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        builder.getEncodedPathSegments$okhttp().remove(i);
        if (builder.getEncodedPathSegments$okhttp().isEmpty()) {
            builder.getEncodedPathSegments$okhttp().add("");
        }
        return builder;
    }

    @Nullable
    public final HttpUrl commonResolve(@NotNull HttpUrl httpUrl, @NotNull String link) {
        Intrinsics.checkNotNullParameter(httpUrl, "<this>");
        Intrinsics.checkNotNullParameter(link, "link");
        HttpUrl.Builder newBuilder = httpUrl.newBuilder(link);
        if (newBuilder != null) {
            return newBuilder.build();
        }
        return null;
    }

    @NotNull
    public final HttpUrl.Builder commonScheme(@NotNull HttpUrl.Builder builder, @NotNull String scheme) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(scheme, "scheme");
        if (AbstractC1197x89633db9.equals(scheme, "http", true)) {
            builder.setScheme$okhttp("http");
        } else if (AbstractC1197x89633db9.equals(scheme, "https", true)) {
            builder.setScheme$okhttp("https");
        } else {
            throw new IllegalArgumentException(AbstractC0362x4440ab85.m2952x5ac5058d("unexpected scheme: ", scheme));
        }
        return builder;
    }

    @NotNull
    public final HttpUrl.Builder commonSetEncodedPathSegment(@NotNull HttpUrl.Builder builder, int i, @NotNull String encodedPathSegment) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(encodedPathSegment, "encodedPathSegment");
        String canonicalize$okhttp$default = HttpUrlCommon.canonicalize$okhttp$default(HttpUrlCommon.INSTANCE, encodedPathSegment, 0, 0, " \"<>^`{}|/\\?#", true, false, false, false, 115, null);
        builder.getEncodedPathSegments$okhttp().set(i, canonicalize$okhttp$default);
        CommonHttpUrl commonHttpUrl = INSTANCE;
        if (!commonHttpUrl.isDot$okhttp(builder, canonicalize$okhttp$default) && !commonHttpUrl.isDotDot$okhttp(builder, canonicalize$okhttp$default)) {
            return builder;
        }
        throw new IllegalArgumentException(AbstractC0362x4440ab85.m2952x5ac5058d("unexpected path segment: ", encodedPathSegment).toString());
    }

    @NotNull
    public final HttpUrl.Builder commonSetEncodedQueryParameter(@NotNull HttpUrl.Builder builder, @NotNull String encodedName, @Nullable String str) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(encodedName, "encodedName");
        builder.removeAllEncodedQueryParameters(encodedName);
        builder.addEncodedQueryParameter(encodedName, str);
        return builder;
    }

    @NotNull
    public final HttpUrl.Builder commonSetPathSegment(@NotNull HttpUrl.Builder builder, int i, @NotNull String pathSegment) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(pathSegment, "pathSegment");
        String canonicalize$okhttp$default = HttpUrlCommon.canonicalize$okhttp$default(HttpUrlCommon.INSTANCE, pathSegment, 0, 0, " \"<>^`{}|/\\?#", false, false, false, false, 123, null);
        CommonHttpUrl commonHttpUrl = INSTANCE;
        if (!commonHttpUrl.isDot$okhttp(builder, canonicalize$okhttp$default) && !commonHttpUrl.isDotDot$okhttp(builder, canonicalize$okhttp$default)) {
            builder.getEncodedPathSegments$okhttp().set(i, canonicalize$okhttp$default);
            return builder;
        }
        throw new IllegalArgumentException(AbstractC0362x4440ab85.m2952x5ac5058d("unexpected path segment: ", pathSegment).toString());
    }

    @NotNull
    public final HttpUrl.Builder commonSetQueryParameter(@NotNull HttpUrl.Builder builder, @NotNull String name, @Nullable String str) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        builder.removeAllQueryParameters(name);
        builder.addQueryParameter(name, str);
        return builder;
    }

    @NotNull
    public final HttpUrl commonToHttpUrl$okhttp(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return new HttpUrl.Builder().parse$okhttp(null, str).build();
    }

    @Nullable
    public final HttpUrl commonToHttpUrlOrNull$okhttp(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        try {
            return commonToHttpUrl$okhttp(str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    @NotNull
    public final String commonToString(@NotNull HttpUrl httpUrl) {
        Intrinsics.checkNotNullParameter(httpUrl, "<this>");
        return httpUrl.getUrl();
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ae, code lost:
    
        if (r1 != r3.defaultPort(r4)) goto L29;
     */
    @NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String commonToString$okhttp(@NotNull HttpUrl.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        StringBuilder sb = new StringBuilder();
        if (builder.getScheme() != null) {
            sb.append(builder.getScheme());
            sb.append("://");
        } else {
            sb.append("//");
        }
        if (builder.getEncodedUsername().length() > 0 || builder.getEncodedPassword().length() > 0) {
            sb.append(builder.getEncodedUsername());
            if (builder.getEncodedPassword().length() > 0) {
                sb.append(':');
                sb.append(builder.getEncodedPassword());
            }
            sb.append('@');
        }
        if (builder.getHost() != null) {
            String host = builder.getHost();
            Intrinsics.checkNotNull(host);
            if (StringsKt__StringsKt.contains$default((CharSequence) host, ':', false, 2, (Object) null)) {
                sb.append('[');
                sb.append(builder.getHost());
                sb.append(']');
            } else {
                sb.append(builder.getHost());
            }
        }
        if (builder.getPort() != -1 || builder.getScheme() != null) {
            int effectivePort$okhttp = INSTANCE.effectivePort$okhttp(builder);
            if (builder.getScheme() != null) {
                HttpUrl.Companion companion = HttpUrl.INSTANCE;
                String scheme = builder.getScheme();
                Intrinsics.checkNotNull(scheme);
            }
            sb.append(':');
            sb.append(effectivePort$okhttp);
        }
        CommonHttpUrl commonHttpUrl = INSTANCE;
        commonHttpUrl.toPathString$okhttp(builder.getEncodedPathSegments$okhttp(), sb);
        if (builder.getEncodedQueryNamesAndValues$okhttp() != null) {
            sb.append('?');
            List<String> encodedQueryNamesAndValues$okhttp = builder.getEncodedQueryNamesAndValues$okhttp();
            Intrinsics.checkNotNull(encodedQueryNamesAndValues$okhttp);
            commonHttpUrl.toQueryString$okhttp(encodedQueryNamesAndValues$okhttp, sb);
        }
        if (builder.getEncodedFragment() != null) {
            sb.append('#');
            sb.append(builder.getEncodedFragment());
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    @NotNull
    public final HttpUrl.Builder commonUsername(@NotNull HttpUrl.Builder builder, @NotNull String username) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(username, "username");
        builder.setEncodedUsername$okhttp(HttpUrlCommon.canonicalize$okhttp$default(HttpUrlCommon.INSTANCE, username, 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, 123, null));
        return builder;
    }

    public final int effectivePort$okhttp(@NotNull HttpUrl.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        if (builder.getPort() != -1) {
            return builder.getPort();
        }
        HttpUrl.Companion companion = HttpUrl.INSTANCE;
        String scheme = builder.getScheme();
        Intrinsics.checkNotNull(scheme);
        return companion.defaultPort(scheme);
    }

    @Nullable
    public final String getCommonEncodedFragment(@NotNull HttpUrl httpUrl) {
        Intrinsics.checkNotNullParameter(httpUrl, "<this>");
        if (httpUrl.fragment() == null) {
            return null;
        }
        String substring = httpUrl.getUrl().substring(StringsKt__StringsKt.indexOf$default((CharSequence) httpUrl.getUrl(), '#', 0, false, 6, (Object) null) + 1);
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        return substring;
    }

    @NotNull
    public final String getCommonEncodedPassword(@NotNull HttpUrl httpUrl) {
        Intrinsics.checkNotNullParameter(httpUrl, "<this>");
        if (httpUrl.password().length() == 0) {
            return "";
        }
        String substring = httpUrl.getUrl().substring(StringsKt__StringsKt.indexOf$default((CharSequence) httpUrl.getUrl(), ':', httpUrl.scheme().length() + 3, false, 4, (Object) null) + 1, StringsKt__StringsKt.indexOf$default((CharSequence) httpUrl.getUrl(), '@', 0, false, 6, (Object) null));
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        return substring;
    }

    @NotNull
    public final String getCommonEncodedPath(@NotNull HttpUrl httpUrl) {
        Intrinsics.checkNotNullParameter(httpUrl, "<this>");
        int indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) httpUrl.getUrl(), '/', httpUrl.scheme().length() + 3, false, 4, (Object) null);
        String substring = httpUrl.getUrl().substring(indexOf$default, _UtilCommonKt.delimiterOffset(httpUrl.getUrl(), "?#", indexOf$default, httpUrl.getUrl().length()));
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        return substring;
    }

    @NotNull
    public final List<String> getCommonEncodedPathSegments(@NotNull HttpUrl httpUrl) {
        Intrinsics.checkNotNullParameter(httpUrl, "<this>");
        int indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) httpUrl.getUrl(), '/', httpUrl.scheme().length() + 3, false, 4, (Object) null);
        int delimiterOffset = _UtilCommonKt.delimiterOffset(httpUrl.getUrl(), "?#", indexOf$default, httpUrl.getUrl().length());
        ArrayList arrayList = new ArrayList();
        while (indexOf$default < delimiterOffset) {
            int i = indexOf$default + 1;
            int delimiterOffset2 = _UtilCommonKt.delimiterOffset(httpUrl.getUrl(), '/', i, delimiterOffset);
            String substring = httpUrl.getUrl().substring(i, delimiterOffset2);
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            arrayList.add(substring);
            indexOf$default = delimiterOffset2;
        }
        return arrayList;
    }

    @Nullable
    public final String getCommonEncodedQuery(@NotNull HttpUrl httpUrl) {
        Intrinsics.checkNotNullParameter(httpUrl, "<this>");
        if (httpUrl.getQueryNamesAndValues$okhttp() == null) {
            return null;
        }
        int indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) httpUrl.getUrl(), '?', 0, false, 6, (Object) null) + 1;
        String substring = httpUrl.getUrl().substring(indexOf$default, _UtilCommonKt.delimiterOffset(httpUrl.getUrl(), '#', indexOf$default, httpUrl.getUrl().length()));
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        return substring;
    }

    @NotNull
    public final String getCommonEncodedUsername(@NotNull HttpUrl httpUrl) {
        Intrinsics.checkNotNullParameter(httpUrl, "<this>");
        if (httpUrl.username().length() == 0) {
            return "";
        }
        int length = httpUrl.scheme().length() + 3;
        String substring = httpUrl.getUrl().substring(length, _UtilCommonKt.delimiterOffset(httpUrl.getUrl(), ":@", length, httpUrl.getUrl().length()));
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        return substring;
    }

    public final boolean getCommonIsHttps(@NotNull HttpUrl httpUrl) {
        Intrinsics.checkNotNullParameter(httpUrl, "<this>");
        return Intrinsics.areEqual(httpUrl.scheme(), "https");
    }

    public final int getCommonPathSize(@NotNull HttpUrl httpUrl) {
        Intrinsics.checkNotNullParameter(httpUrl, "<this>");
        return httpUrl.pathSegments().size();
    }

    @Nullable
    public final String getCommonQuery(@NotNull HttpUrl httpUrl) {
        Intrinsics.checkNotNullParameter(httpUrl, "<this>");
        if (httpUrl.getQueryNamesAndValues$okhttp() == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        toQueryString$okhttp(httpUrl.getQueryNamesAndValues$okhttp(), sb);
        return sb.toString();
    }

    @NotNull
    public final Set<String> getCommonQueryParameterNames(@NotNull HttpUrl httpUrl) {
        Intrinsics.checkNotNullParameter(httpUrl, "<this>");
        if (httpUrl.getQueryNamesAndValues$okhttp() == null) {
            return AbstractC1145xfc271605.emptySet();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        IntProgression step = AbstractC0296x1378447b.step(AbstractC0296x1378447b.until(0, httpUrl.getQueryNamesAndValues$okhttp().size()), 2);
        int first = step.getFirst();
        int last = step.getLast();
        int step2 = step.getStep();
        if ((step2 > 0 && first <= last) || (step2 < 0 && last <= first)) {
            while (true) {
                String str = httpUrl.getQueryNamesAndValues$okhttp().get(first);
                Intrinsics.checkNotNull(str);
                linkedHashSet.add(str);
                if (first == last) {
                    break;
                }
                first += step2;
            }
        }
        return _UtilCommonKt.readOnly(linkedHashSet);
    }

    public final int getCommonQuerySize(@NotNull HttpUrl httpUrl) {
        Intrinsics.checkNotNullParameter(httpUrl, "<this>");
        if (httpUrl.getQueryNamesAndValues$okhttp() != null) {
            return httpUrl.getQueryNamesAndValues$okhttp().size() / 2;
        }
        return 0;
    }

    @NotNull
    public final char[] getHEX_DIGITS$okhttp() {
        return HEX_DIGITS;
    }

    public final boolean isDot$okhttp(@NotNull HttpUrl.Builder builder, @NotNull String input) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(input, "input");
        if (Intrinsics.areEqual(input, ".") || AbstractC1197x89633db9.equals(input, "%2e", true)) {
            return true;
        }
        return false;
    }

    public final boolean isDotDot$okhttp(@NotNull HttpUrl.Builder builder, @NotNull String input) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(input, "input");
        if (Intrinsics.areEqual(input, "..") || AbstractC1197x89633db9.equals(input, "%2e.", true) || AbstractC1197x89633db9.equals(input, ".%2e", true) || AbstractC1197x89633db9.equals(input, "%2e%2e", true)) {
            return true;
        }
        return false;
    }

    public final boolean isPercentEncoded$okhttp(@NotNull String str, int i, int i2) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        int i3 = i + 2;
        if (i3 < i2 && str.charAt(i) == '%' && _UtilCommonKt.parseHexDigit(str.charAt(i + 1)) != -1 && _UtilCommonKt.parseHexDigit(str.charAt(i3)) != -1) {
            return true;
        }
        return false;
    }

    public final int parsePort$okhttp(@NotNull String input, int pos, int limit) {
        Intrinsics.checkNotNullParameter(input, "input");
        try {
            int parseInt = Integer.parseInt(HttpUrlCommon.canonicalize$okhttp$default(HttpUrlCommon.INSTANCE, input, pos, limit, "", false, false, false, false, 120, null));
            if (1 > parseInt || parseInt >= 65536) {
                return -1;
            }
            return parseInt;
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    @NotNull
    public final String percentDecode$okhttp(@NotNull String str, int i, int i2, boolean z) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        for (int i3 = i; i3 < i2; i3++) {
            char charAt = str.charAt(i3);
            if (charAt == '%' || (charAt == '+' && z)) {
                Buffer buffer = new Buffer();
                buffer.writeUtf8(str, i, i3);
                HttpUrlCommon.INSTANCE.writePercentDecoded$okhttp(buffer, str, i3, i2, z);
                return buffer.readUtf8();
            }
        }
        String substring = str.substring(i, i2);
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        return substring;
    }

    public final void pop$okhttp(@NotNull HttpUrl.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        if (builder.getEncodedPathSegments$okhttp().remove(builder.getEncodedPathSegments$okhttp().size() - 1).length() == 0 && !builder.getEncodedPathSegments$okhttp().isEmpty()) {
            builder.getEncodedPathSegments$okhttp().set(builder.getEncodedPathSegments$okhttp().size() - 1, "");
        } else {
            builder.getEncodedPathSegments$okhttp().add("");
        }
    }

    public final int portColonOffset$okhttp(@NotNull String input, int pos, int limit) {
        Intrinsics.checkNotNullParameter(input, "input");
        while (pos < limit) {
            char charAt = input.charAt(pos);
            if (charAt != '[') {
                if (charAt == ':') {
                    return pos;
                }
                pos++;
            }
            do {
                pos++;
                if (pos < limit) {
                }
                pos++;
            } while (input.charAt(pos) != ']');
            pos++;
        }
        return limit;
    }

    public final void push$okhttp(@NotNull HttpUrl.Builder builder, @NotNull String input, int i, int i2, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(input, "input");
        String canonicalize$okhttp$default = HttpUrlCommon.canonicalize$okhttp$default(HttpUrlCommon.INSTANCE, input, i, i2, " \"<>^`{}|/\\?#", z2, false, false, false, 112, null);
        if (isDot$okhttp(builder, canonicalize$okhttp$default)) {
            return;
        }
        if (isDotDot$okhttp(builder, canonicalize$okhttp$default)) {
            pop$okhttp(builder);
            return;
        }
        if (builder.getEncodedPathSegments$okhttp().get(builder.getEncodedPathSegments$okhttp().size() - 1).length() == 0) {
            builder.getEncodedPathSegments$okhttp().set(builder.getEncodedPathSegments$okhttp().size() - 1, canonicalize$okhttp$default);
        } else {
            builder.getEncodedPathSegments$okhttp().add(canonicalize$okhttp$default);
        }
        if (z) {
            builder.getEncodedPathSegments$okhttp().add("");
        }
    }

    public final void resolvePath$okhttp(@NotNull HttpUrl.Builder builder, @NotNull String input, int i, int i2) {
        boolean z;
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(input, "input");
        if (i == i2) {
            return;
        }
        char charAt = input.charAt(i);
        if (charAt != '/' && charAt != '\\') {
            builder.getEncodedPathSegments$okhttp().set(builder.getEncodedPathSegments$okhttp().size() - 1, "");
        } else {
            builder.getEncodedPathSegments$okhttp().clear();
            builder.getEncodedPathSegments$okhttp().add("");
            i++;
        }
        while (true) {
            int i3 = i;
            while (i3 < i2) {
                i = _UtilCommonKt.delimiterOffset(input, "/\\", i3, i2);
                if (i < i2) {
                    z = true;
                } else {
                    z = false;
                }
                push$okhttp(builder, input, i3, i, z, true);
                if (z) {
                    i3 = i + 1;
                }
            }
            return;
        }
    }

    public final int schemeDelimiterOffset$okhttp(@NotNull String input, int pos, int limit) {
        Intrinsics.checkNotNullParameter(input, "input");
        if (limit - pos < 2) {
            return -1;
        }
        char charAt = input.charAt(pos);
        if ((Intrinsics.compare((int) charAt, 97) < 0 || Intrinsics.compare((int) charAt, 122) > 0) && (Intrinsics.compare((int) charAt, 65) < 0 || Intrinsics.compare((int) charAt, 90) > 0)) {
            return -1;
        }
        while (true) {
            pos++;
            if (pos >= limit) {
                return -1;
            }
            char charAt2 = input.charAt(pos);
            if ('a' > charAt2 || charAt2 >= '{') {
                if ('A' > charAt2 || charAt2 >= '[') {
                    if ('0' > charAt2 || charAt2 >= ':') {
                        if (charAt2 != '+' && charAt2 != '-' && charAt2 != '.') {
                            if (charAt2 != ':') {
                                return -1;
                            }
                            return pos;
                        }
                    }
                }
            }
        }
    }

    public final int slashCount$okhttp(@NotNull String str, int i, int i2) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        int i3 = 0;
        while (i < i2) {
            char charAt = str.charAt(i);
            if (charAt != '\\' && charAt != '/') {
                break;
            }
            i3++;
            i++;
        }
        return i3;
    }

    public final void toPathString$okhttp(@NotNull List<String> list, @NotNull StringBuilder out) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(out, "out");
        int size = list.size();
        for (int i = 0; i < size; i++) {
            out.append('/');
            out.append(list.get(i));
        }
    }

    @NotNull
    public final List<String> toQueryNamesAndValues$okhttp(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i <= str.length()) {
            int indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, Typography.amp, i, false, 4, (Object) null);
            if (indexOf$default == -1) {
                indexOf$default = str.length();
            }
            int i2 = indexOf$default;
            int indexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) str, '=', i, false, 4, (Object) null);
            if (indexOf$default2 != -1 && indexOf$default2 <= i2) {
                String substring = str.substring(i, indexOf$default2);
                Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                arrayList.add(substring);
                String substring2 = str.substring(indexOf$default2 + 1, i2);
                Intrinsics.checkNotNullExpressionValue(substring2, "substring(...)");
                arrayList.add(substring2);
            } else {
                String substring3 = str.substring(i, i2);
                Intrinsics.checkNotNullExpressionValue(substring3, "substring(...)");
                arrayList.add(substring3);
                arrayList.add(null);
            }
            i = i2 + 1;
        }
        return arrayList;
    }

    public final void toQueryString$okhttp(@NotNull List<String> list, @NotNull StringBuilder out) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(out, "out");
        IntProgression step = AbstractC0296x1378447b.step(AbstractC0296x1378447b.until(0, list.size()), 2);
        int first = step.getFirst();
        int last = step.getLast();
        int step2 = step.getStep();
        if ((step2 <= 0 || first > last) && (step2 >= 0 || last > first)) {
            return;
        }
        while (true) {
            String str = list.get(first);
            String str2 = list.get(first + 1);
            if (first > 0) {
                out.append(Typography.amp);
            }
            out.append(str);
            if (str2 != null) {
                out.append('=');
                out.append(str2);
            }
            if (first != last) {
                first += step2;
            } else {
                return;
            }
        }
    }

    @Nullable
    public final HttpUrl.Builder commonNewBuilder(@NotNull HttpUrl httpUrl, @NotNull String link) {
        Intrinsics.checkNotNullParameter(httpUrl, "<this>");
        Intrinsics.checkNotNullParameter(link, "link");
        try {
            return new HttpUrl.Builder().parse$okhttp(httpUrl, link);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }
}
