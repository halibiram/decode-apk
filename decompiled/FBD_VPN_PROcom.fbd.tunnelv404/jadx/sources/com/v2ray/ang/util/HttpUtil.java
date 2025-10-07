package com.v2ray.ang.util;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0613x9f5dff2a;
import defpackage.AbstractC1197x89633db9;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.IDN;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005J \u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u00052\b\b\u0002\u0010\f\u001a\u00020\rJ\"\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u0011J$\u0010\u0013\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u0011J6\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u00112\b\b\u0002\u0010\u0018\u001a\u00020\u00112\b\b\u0002\u0010\u0019\u001a\u00020\u00112\b\b\u0002\u0010\u001a\u001a\u00020\r¨\u0006\u001b"}, d2 = {"Lcom/v2ray/ang/util/HttpUtil;", "", "<init>", "()V", "toIdnUrl", "", "str", "toIdnDomain", "domain", "resolveHostToIP", "", "host", "ipv6Preferred", "", "getUrlContent", "url", "timeout", "", "httpPort", "getUrlContentWithUserAgent", "createProxyConnection", "Ljava/net/HttpURLConnection;", "urlStr", "port", "connectTimeout", "readTimeout", "needStream", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHttpUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpUtil.kt\ncom/v2ray/ang/util/HttpUtil\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,224:1\n1069#2,2:225\n1617#3,9:227\n1869#3:236\n1870#3:238\n1626#3:239\n1#4:237\n1#4:240\n*S KotlinDebug\n*F\n+ 1 HttpUtil.kt\ncom/v2ray/ang/util/HttpUtil\n*L\n53#1:225,2\n88#1:227,9\n88#1:236\n88#1:238\n88#1:239\n88#1:237\n*E\n"})
/* loaded from: classes3.dex */
public final class HttpUtil {

    @NotNull
    public static final HttpUtil INSTANCE = new HttpUtil();

    private HttpUtil() {
    }

    public static /* synthetic */ HttpURLConnection createProxyConnection$default(HttpUtil httpUtil, String str, int i, int i2, int i3, boolean z, int i4, Object obj) {
        int i5;
        int i6;
        boolean z2;
        if ((i4 & 4) != 0) {
            i5 = 15000;
        } else {
            i5 = i2;
        }
        if ((i4 & 8) != 0) {
            i6 = 15000;
        } else {
            i6 = i3;
        }
        if ((i4 & 16) != 0) {
            z2 = false;
        } else {
            z2 = z;
        }
        return httpUtil.createProxyConnection(str, i, i5, i6, z2);
    }

    public static /* synthetic */ String getUrlContent$default(HttpUtil httpUtil, String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        return httpUtil.getUrlContent(str, i, i2);
    }

    public static /* synthetic */ String getUrlContentWithUserAgent$default(HttpUtil httpUtil, String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 15000;
        }
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        return httpUtil.getUrlContentWithUserAgent(str, i, i2);
    }

    public static /* synthetic */ List resolveHostToIP$default(HttpUtil httpUtil, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return httpUtil.resolveHostToIP(str, z);
    }

    @Nullable
    public final HttpURLConnection createProxyConnection(@NotNull String urlStr, int port, int connectTimeout, int readTimeout, boolean needStream) {
        HttpURLConnection httpURLConnection;
        URLConnection openConnection;
        Intrinsics.checkNotNullParameter(urlStr, new ObfuscatedString(new long[]{-3095204359727597090L, -2883894135845499391L}).toString());
        try {
            URL url = new URL(urlStr);
            if (port == 0) {
                openConnection = url.openConnection();
            } else {
                openConnection = url.openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(new ObfuscatedString(new long[]{-6979747850320929148L, 6560091652187920565L, -9033456464583031457L}).toString(), port)));
            }
            Intrinsics.checkNotNull(openConnection, new ObfuscatedString(new long[]{-7660169858351724991L, -4179959008554578365L, -6857437779833048577L, -3122209733207116699L, -6254763340692482357L, 2351363465550950407L, 4722482457758390687L, -1596440869118228985L, 1765556898082938398L}).toString());
            httpURLConnection = (HttpURLConnection) openConnection;
            try {
                httpURLConnection.setConnectTimeout(connectTimeout);
                httpURLConnection.setReadTimeout(readTimeout);
                if (!needStream) {
                    httpURLConnection.setRequestProperty(new ObfuscatedString(new long[]{5004480331527695929L, 6400187392534641145L, 2859983532083255607L}).toString(), new ObfuscatedString(new long[]{-5787553099092402178L, -2351848574126866944L}).toString());
                    httpURLConnection.setInstanceFollowRedirects(false);
                    httpURLConnection.setUseCaches(false);
                }
                String userInfo = url.getUserInfo();
                if (userInfo != null) {
                    String obfuscatedString = new ObfuscatedString(new long[]{7166445066759664785L, -3356889617724299774L, -495196415432118948L}).toString();
                    Utils utils = Utils.INSTANCE;
                    httpURLConnection.setRequestProperty(obfuscatedString, "Basic " + utils.encode(utils.urlDecode(userInfo)));
                }
                return httpURLConnection;
            } catch (Exception unused) {
                new ObfuscatedString(new long[]{3838868216348167405L, -2027906685958656973L, 6501097892266877725L}).toString();
                new ObfuscatedString(new long[]{4919036918806386601L, -5362239029239860200L, 5145325557746190635L, -1398838868142138079L, 4678612222837919065L, -8189514497588164450L}).toString();
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return null;
            }
        } catch (Exception unused2) {
            httpURLConnection = null;
        }
    }

    @Nullable
    public final String getUrlContent(@NotNull String url, int timeout, int httpPort) {
        Intrinsics.checkNotNullParameter(url, new ObfuscatedString(new long[]{-419878075534022346L, -7794134813361646713L}).toString());
        HttpURLConnection createProxyConnection$default = createProxyConnection$default(this, url, httpPort, timeout, timeout, false, 16, null);
        if (createProxyConnection$default == null) {
            return null;
        }
        try {
            InputStream inputStream = createProxyConnection$default.getInputStream();
            Intrinsics.checkNotNullExpressionValue(inputStream, new ObfuscatedString(new long[]{-1727409893521053754L, 4032857154641592044L, 5307111711343369790L, 8250434575088540893L}).toString());
            return TextStreamsKt.readText(new BufferedReader(new InputStreamReader(inputStream, Charsets.UTF_8), 8192));
        } catch (Exception unused) {
            return null;
        } finally {
            createProxyConnection$default.disconnect();
        }
    }

    @NotNull
    public final String getUrlContentWithUserAgent(@Nullable String url, int timeout, int httpPort) {
        HttpURLConnection createProxyConnection$default;
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (i < 3) {
                if (url != null && (createProxyConnection$default = createProxyConnection$default(this, url, httpPort, timeout, timeout, false, 16, null)) != null) {
                    createProxyConnection$default.setRequestProperty(new ObfuscatedString(new long[]{5553841804811341172L, -3962755668843025761L, -3559534972256093466L}).toString(), new ObfuscatedString(new long[]{-6056752365293306019L, -9177067958930853867L, -3056761336928210194L}).toString());
                    createProxyConnection$default.connect();
                    int responseCode = createProxyConnection$default.getResponseCode();
                    if (300 <= responseCode && responseCode < 400) {
                        url = createProxyConnection$default.getHeaderField(new ObfuscatedString(new long[]{8264462177028995242L, -5456862133869180556L}).toString());
                        if (url == null || url.length() == 0) {
                            break;
                        }
                    } else {
                        try {
                            InputStream inputStream = createProxyConnection$default.getInputStream();
                            try {
                                Intrinsics.checkNotNull(inputStream);
                                String readText = TextStreamsKt.readText(new BufferedReader(new InputStreamReader(inputStream, Charsets.UTF_8), 8192));
                                CloseableKt.closeFinally(inputStream, null);
                                return readText;
                            } finally {
                            }
                        } finally {
                            createProxyConnection$default.disconnect();
                        }
                    }
                }
                i = i2;
            } else {
                throw new IOException(new ObfuscatedString(new long[]{8257197914323070624L, 7880484635193463205L, 5661173151738643079L, -7975185535640201957L}).toString());
            }
        }
        throw new IOException(new ObfuscatedString(new long[]{-5688921466220085666L, 8112753276363036511L, 5130397400473677460L, 5344870989464752929L, 7300425781094376921L}).toString());
    }

    @Nullable
    public final List<String> resolveHostToIP(@NotNull String host, boolean ipv6Preferred) {
        List sortedWith;
        Intrinsics.checkNotNullParameter(host, new ObfuscatedString(new long[]{3592780630440349775L, -6264385655391483247L}).toString());
        try {
            if (Utils.INSTANCE.isPureIpAddress(host)) {
                return null;
            }
            InetAddress[] allByName = InetAddress.getAllByName(host);
            Intrinsics.checkNotNull(allByName);
            if (allByName.length == 0) {
                return null;
            }
            if (ipv6Preferred) {
                sortedWith = ArraysKt___ArraysKt.sortedWith(allByName, new Comparator() { // from class: com.v2ray.ang.util.HttpUtil$resolveHostToIP$$inlined$compareByDescending$1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        return AbstractC0613x9f5dff2a.compareValues(Boolean.valueOf(((InetAddress) t2) instanceof Inet6Address), Boolean.valueOf(((InetAddress) t) instanceof Inet6Address));
                    }
                });
            } else {
                sortedWith = ArraysKt___ArraysKt.sortedWith(allByName, new Comparator() { // from class: com.v2ray.ang.util.HttpUtil$resolveHostToIP$$inlined$compareBy$1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        return AbstractC0613x9f5dff2a.compareValues(Boolean.valueOf(((InetAddress) t) instanceof Inet6Address), Boolean.valueOf(((InetAddress) t2) instanceof Inet6Address));
                    }
                });
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = sortedWith.iterator();
            while (it.hasNext()) {
                String hostAddress = ((InetAddress) it.next()).getHostAddress();
                if (hostAddress != null) {
                    arrayList.add(hostAddress);
                }
            }
            new ObfuscatedString(new long[]{-6887654484651184226L, -4850582639170074815L, 7354218166432204624L}).toString();
            CollectionsKt___CollectionsKt.joinToString$default(arrayList, null, null, null, 0, null, null, 63, null);
            return arrayList;
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{1522586500512403739L, -6540485940317763744L, -3176796757444059283L}).toString();
            new ObfuscatedString(new long[]{-1368182895819105384L, -80934491987486581L, 1427005472934917498L, 2039903325032940466L, 4264044509105187717L}).toString();
            return null;
        }
    }

    @NotNull
    public final String toIdnDomain(@NotNull String domain) {
        Intrinsics.checkNotNullParameter(domain, new ObfuscatedString(new long[]{1253517243567812102L, 5750351461770626014L}).toString());
        if (Utils.INSTANCE.isPureIpAddress(domain)) {
            return domain;
        }
        for (int i = 0; i < domain.length(); i++) {
            if (domain.charAt(i) >= 128) {
                String ascii = IDN.toASCII(domain, 1);
                Intrinsics.checkNotNullExpressionValue(ascii, new ObfuscatedString(new long[]{596124263915010629L, -534345750849344154L, -6069765269829267439L}).toString());
                return ascii;
            }
        }
        return domain;
    }

    @NotNull
    public final String toIdnUrl(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{4397597637330279323L, 2911407944429760019L}).toString());
        URL url = new URL(str);
        String host = url.getHost();
        String ascii = IDN.toASCII(url.getHost(), 1);
        if (!Intrinsics.areEqual(host, ascii)) {
            Intrinsics.checkNotNull(host);
            Intrinsics.checkNotNull(ascii);
            return AbstractC1197x89633db9.replace$default(str, host, ascii, false, 4, (Object) null);
        }
        return str;
    }
}
