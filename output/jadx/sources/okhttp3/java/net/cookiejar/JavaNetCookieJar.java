package okhttp3.java.net.cookiejar;

import defpackage.AbstractC0961xbc4021d9;
import defpackage.AbstractC0962xa4a1ff52;
import defpackage.AbstractC1197x89633db9;
import j$.util.DesugarCollections;
import java.io.IOException;
import java.net.CookieHandler;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.HttpUrl;
import okhttp3.internal.Internal;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal.platform.Platform;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J%\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u001d\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lokhttp3/java/net/cookiejar/JavaNetCookieJar;", "Lokhttp3/CookieJar;", "Ljava/net/CookieHandler;", "cookieHandler", "<init>", "(Ljava/net/CookieHandler;)V", "Lokhttp3/HttpUrl;", "url", "", "Lokhttp3/Cookie;", "cookies", "", "saveFromResponse", "(Lokhttp3/HttpUrl;Ljava/util/List;)V", "loadForRequest", "(Lokhttp3/HttpUrl;)Ljava/util/List;", "okhttp-java-net-cookiejar"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class JavaNetCookieJar implements CookieJar {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final CookieHandler f3530xfbe0c504;

    public JavaNetCookieJar(@NotNull CookieHandler cookieHandler) {
        Intrinsics.checkNotNullParameter(cookieHandler, "cookieHandler");
        this.f3530xfbe0c504 = cookieHandler;
    }

    @Override // okhttp3.CookieJar
    @NotNull
    public List<Cookie> loadForRequest(@NotNull HttpUrl url) {
        String str;
        Intrinsics.checkNotNullParameter(url, "url");
        try {
            Map<String, List<String>> map = this.f3530xfbe0c504.get(url.uri(), AbstractC0962xa4a1ff52.emptyMap());
            Intrinsics.checkNotNull(map);
            ArrayList arrayList = null;
            for (Map.Entry<String, List<String>> entry : map.entrySet()) {
                String key = entry.getKey();
                List<String> value = entry.getValue();
                if (AbstractC1197x89633db9.equals("Cookie", key, true) || AbstractC1197x89633db9.equals("Cookie2", key, true)) {
                    Intrinsics.checkNotNull(value);
                    if (!value.isEmpty()) {
                        for (String str2 : value) {
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                            }
                            Intrinsics.checkNotNull(str2);
                            ArrayList arrayList2 = new ArrayList();
                            int length = str2.length();
                            int i = 0;
                            while (i < length) {
                                int delimiterOffset = _UtilCommonKt.delimiterOffset(str2, ";,", i, length);
                                int delimiterOffset2 = _UtilCommonKt.delimiterOffset(str2, '=', i, delimiterOffset);
                                String trimSubstring = _UtilCommonKt.trimSubstring(str2, i, delimiterOffset2);
                                if (!AbstractC1197x89633db9.startsWith$default(trimSubstring, "$", false, 2, null)) {
                                    if (delimiterOffset2 < delimiterOffset) {
                                        str = _UtilCommonKt.trimSubstring(str2, delimiterOffset2 + 1, delimiterOffset);
                                    } else {
                                        str = "";
                                    }
                                    if (AbstractC1197x89633db9.startsWith$default(str, "\"", false, 2, null) && AbstractC1197x89633db9.endsWith$default(str, "\"", false, 2, null) && str.length() >= 2) {
                                        str = str.substring(1, str.length() - 1);
                                        Intrinsics.checkNotNullExpressionValue(str, "substring(...)");
                                    }
                                    arrayList2.add(new Cookie.Builder().name(trimSubstring).value(str).domain(url.host()).build());
                                }
                                i = delimiterOffset + 1;
                            }
                            arrayList.addAll(arrayList2);
                        }
                    }
                }
            }
            if (arrayList != null) {
                List<Cookie> unmodifiableList = DesugarCollections.unmodifiableList(arrayList);
                Intrinsics.checkNotNull(unmodifiableList);
                return unmodifiableList;
            }
            return CollectionsKt__CollectionsKt.emptyList();
        } catch (IOException e) {
            Platform platform = Platform.INSTANCE.get();
            StringBuilder sb = new StringBuilder("Loading cookies failed for ");
            HttpUrl resolve = url.resolve("/...");
            Intrinsics.checkNotNull(resolve);
            sb.append(resolve);
            platform.log(sb.toString(), 5, e);
            return CollectionsKt__CollectionsKt.emptyList();
        }
    }

    @Override // okhttp3.CookieJar
    public void saveFromResponse(@NotNull HttpUrl url, @NotNull List<Cookie> cookies) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(cookies, "cookies");
        ArrayList arrayList = new ArrayList();
        Iterator<Cookie> it = cookies.iterator();
        while (it.hasNext()) {
            arrayList.add(Internal.cookieToString(it.next(), true));
        }
        try {
            this.f3530xfbe0c504.put(url.uri(), AbstractC0961xbc4021d9.mapOf(TuplesKt.to("Set-Cookie", arrayList)));
        } catch (IOException e) {
            Platform platform = Platform.INSTANCE.get();
            StringBuilder sb = new StringBuilder("Saving cookies failed for ");
            HttpUrl resolve = url.resolve("/...");
            Intrinsics.checkNotNull(resolve);
            sb.append(resolve);
            platform.log(sb.toString(), 5, e);
        }
    }
}
