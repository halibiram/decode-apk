package okhttp3.internal.http;

import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC0962xa4a1ff52;
import defpackage.AbstractC1197x89633db9;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.io.encoding.Base64;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Challenge;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Response;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\u001a\u001f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0005\u0010\u0006\u001a!\u0010\f\u001a\u00020\u000b*\u00020\u00072\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0000¢\u0006\u0004\b\f\u0010\r\u001a\u0011\u0010\u0010\u001a\u00020\u000f*\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011\u001a\u0017\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u0013\u0010\u0011¨\u0006\u0014"}, d2 = {"Lokhttp3/Headers;", "", "headerName", "", "Lokhttp3/Challenge;", "parseChallenges", "(Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/List;", "Lokhttp3/CookieJar;", "Lokhttp3/HttpUrl;", "url", "headers", "", "receiveHeaders", "(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V", "Lokhttp3/Response;", "", "promisesBody", "(Lokhttp3/Response;)Z", "response", "hasBody", "okhttp"}, k = 2, mv = {1, 9, 0}, xi = 48)
@JvmName(name = "HttpHeaders")
/* loaded from: classes3.dex */
public final class HttpHeaders {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final ByteString f3245xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final ByteString f3246x3271d0aa;

    static {
        ByteString.Companion companion = ByteString.INSTANCE;
        f3245xfbe0c504 = companion.encodeUtf8("\"\\");
        f3246x3271d0aa = companion.encodeUtf8("\t ,=");
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "No longer supported", replaceWith = @ReplaceWith(expression = "response.promisesBody()", imports = {}))
    public static final boolean hasBody(@NotNull Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        return promisesBody(response);
    }

    @NotNull
    public static final List<Challenge> parseChallenges(@NotNull Headers headers, @NotNull String headerName) {
        Intrinsics.checkNotNullParameter(headers, "<this>");
        Intrinsics.checkNotNullParameter(headerName, "headerName");
        ArrayList arrayList = new ArrayList();
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            if (AbstractC1197x89633db9.equals(headerName, headers.name(i), true)) {
                try {
                    m2601xfbe0c504(new Buffer().writeUtf8(headers.value(i)), arrayList);
                } catch (EOFException e) {
                    Platform.INSTANCE.get().log("Unable to parse challenge", 5, e);
                }
            }
        }
        return arrayList;
    }

    public static final boolean promisesBody(@NotNull Response response) {
        Intrinsics.checkNotNullParameter(response, "<this>");
        if (Intrinsics.areEqual(response.request().method(), "HEAD")) {
            return false;
        }
        int code = response.code();
        if (((code >= 100 && code < 200) || code == 204 || code == 304) && _UtilJvmKt.headersContentLength(response) == -1 && !AbstractC1197x89633db9.equals("chunked", Response.header$default(response, "Transfer-Encoding", null, 2, null), true)) {
            return false;
        }
        return true;
    }

    public static final void receiveHeaders(@NotNull CookieJar cookieJar, @NotNull HttpUrl url, @NotNull Headers headers) {
        Intrinsics.checkNotNullParameter(cookieJar, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(headers, "headers");
        if (cookieJar == CookieJar.NO_COOKIES) {
            return;
        }
        List<Cookie> parseAll = Cookie.INSTANCE.parseAll(url, headers);
        if (parseAll.isEmpty()) {
            return;
        }
        cookieJar.saveFromResponse(url, parseAll);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0108, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00b6, code lost:
    
        r7 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0108, code lost:
    
        continue;
     */
    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void m2601xfbe0c504(Buffer buffer, ArrayList arrayList) {
        String m2602x3271d0aa;
        int skipAll;
        String m2602x3271d0aa2;
        while (true) {
            String str = null;
            while (true) {
                if (str == null) {
                    m2603x1378447b(buffer);
                    str = m2602x3271d0aa(buffer);
                    if (str == null) {
                        return;
                    }
                }
                boolean m2603x1378447b = m2603x1378447b(buffer);
                m2602x3271d0aa = m2602x3271d0aa(buffer);
                if (m2602x3271d0aa == null) {
                    if (!buffer.exhausted()) {
                        return;
                    }
                    arrayList.add(new Challenge(str, (Map<String, String>) AbstractC0962xa4a1ff52.emptyMap()));
                    return;
                }
                skipAll = _UtilCommonKt.skipAll(buffer, Base64.padSymbol);
                boolean m2603x1378447b2 = m2603x1378447b(buffer);
                if (m2603x1378447b || (!m2603x1378447b2 && !buffer.exhausted())) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    int skipAll2 = _UtilCommonKt.skipAll(buffer, Base64.padSymbol) + skipAll;
                    while (true) {
                        if (m2602x3271d0aa == null) {
                            m2602x3271d0aa = m2602x3271d0aa(buffer);
                            if (!m2603x1378447b(buffer)) {
                                skipAll2 = _UtilCommonKt.skipAll(buffer, Base64.padSymbol);
                            }
                        }
                        if (skipAll2 != 0) {
                            if (skipAll2 > 1 || m2603x1378447b(buffer)) {
                                return;
                            }
                            if (!buffer.exhausted() && buffer.getByte(0L) == 34) {
                                if (buffer.readByte() == 34) {
                                    Buffer buffer2 = new Buffer();
                                    while (true) {
                                        long indexOfElement = buffer.indexOfElement(f3245xfbe0c504);
                                        if (indexOfElement == -1) {
                                            break;
                                        }
                                        if (buffer.getByte(indexOfElement) == 34) {
                                            buffer2.write(buffer, indexOfElement);
                                            buffer.readByte();
                                            m2602x3271d0aa2 = buffer2.readUtf8();
                                            break;
                                        } else {
                                            if (buffer.size() == indexOfElement + 1) {
                                                break;
                                            }
                                            buffer2.write(buffer, indexOfElement);
                                            buffer.readByte();
                                            buffer2.write(buffer, 1L);
                                        }
                                    }
                                } else {
                                    throw new IllegalArgumentException("Failed requirement.");
                                }
                            } else {
                                m2602x3271d0aa2 = m2602x3271d0aa(buffer);
                            }
                            if (m2602x3271d0aa2 == null || ((String) linkedHashMap.put(m2602x3271d0aa, m2602x3271d0aa2)) != null) {
                                return;
                            }
                            if (!m2603x1378447b(buffer) && !buffer.exhausted()) {
                                return;
                            } else {
                                m2602x3271d0aa = null;
                            }
                        }
                    }
                    arrayList.add(new Challenge(str, linkedHashMap));
                    str = m2602x3271d0aa;
                }
            }
            StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(m2602x3271d0aa);
            m3341xc20437a5.append(AbstractC1197x89633db9.repeat("=", skipAll));
            Map singletonMap = Collections.singletonMap(null, m3341xc20437a5.toString());
            Intrinsics.checkNotNullExpressionValue(singletonMap, "singletonMap(...)");
            arrayList.add(new Challenge(str, (Map<String, String>) singletonMap));
        }
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final String m2602x3271d0aa(Buffer buffer) {
        long indexOfElement = buffer.indexOfElement(f3246x3271d0aa);
        if (indexOfElement == -1) {
            indexOfElement = buffer.size();
        }
        if (indexOfElement != 0) {
            return buffer.readUtf8(indexOfElement);
        }
        return null;
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final boolean m2603x1378447b(Buffer buffer) {
        boolean z = false;
        while (!buffer.exhausted()) {
            byte b = buffer.getByte(0L);
            if (b == 44) {
                buffer.readByte();
                z = true;
            } else {
                if (b != 32 && b != 9) {
                    break;
                }
                buffer.readByte();
            }
        }
        return z;
    }
}
