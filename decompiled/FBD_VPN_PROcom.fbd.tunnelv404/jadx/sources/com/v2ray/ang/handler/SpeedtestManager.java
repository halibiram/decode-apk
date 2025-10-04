package com.v2ray.ang.handler;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import com.fbd.tunnel.R;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.dto.IPAPIInfo;
import com.v2ray.ang.extension._ExtKt;
import com.v2ray.ang.util.HttpUtil;
import com.v2ray.ang.util.JsonUtil;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.JobKt;
import libv2ray.Libv2ray;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0086@¢\u0006\u0002\u0010\u000eJ\u000e\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000bJ\u000e\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\u0012\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rJ\u0006\u0010\u0013\u001a\u00020\u0014J\"\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000b0\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\f\u001a\u00020\rJ\b\u0010\u0019\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010\u001a\u001a\u00020\u000bR\"\u0010\u0004\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005j\n\u0012\u0006\u0012\u0004\u0018\u00010\u0006`\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/v2ray/ang/handler/SpeedtestManager;", "", "<init>", "()V", "tcpTestingSockets", "Ljava/util/ArrayList;", "Ljava/net/Socket;", "Lkotlin/collections/ArrayList;", "tcping", "", "url", "", "port", "", "(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "realPing", "config", "ping", "socketConnectTime", "closeAllTcpSockets", "", "testConnection", "Lkotlin/Pair;", "context", "Landroid/content/Context;", "getRemoteIPInfo", "getLibVersion", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSpeedtestManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpeedtestManager.kt\ncom/v2ray/ang/handler/SpeedtestManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,190:1\n1#2:191\n739#3,9:192\n1869#3,2:205\n37#4:201\n36#4,3:202\n*S KotlinDebug\n*F\n+ 1 SpeedtestManager.kt\ncom/v2ray/ang/handler/SpeedtestManager\n*L\n75#1:192,9\n122#1:205,2\n75#1:201\n75#1:202,3\n*E\n"})
/* loaded from: classes3.dex */
public final class SpeedtestManager {

    @NotNull
    public static final SpeedtestManager INSTANCE = new SpeedtestManager();

    @NotNull
    private static final ArrayList<Socket> tcpTestingSockets = new ArrayList<>();

    private SpeedtestManager() {
    }

    public final void closeAllTcpSockets() {
        synchronized (this) {
            try {
                for (Socket socket : tcpTestingSockets) {
                    if (socket != null) {
                        socket.close();
                    }
                }
                tcpTestingSockets.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @NotNull
    public final String getLibVersion() {
        String checkVersionX = Libv2ray.checkVersionX();
        Intrinsics.checkNotNullExpressionValue(checkVersionX, new ObfuscatedString(new long[]{8280191179209419923L, 8427229496938246036L, 6719689819522552568L, -5715809632509812103L}).toString());
        return checkVersionX;
    }

    @Nullable
    public final String getRemoteIPInfo() {
        IPAPIInfo iPAPIInfo;
        String urlContent = HttpUtil.INSTANCE.getUrlContent(new ObfuscatedString(new long[]{3189232084218461914L, -5988037170995692605L, -2330291898502839473L, -3057647724770248895L, -2126237847955048630L, -4535332013177584818L}).toString(), 5000, SettingsManager.INSTANCE.getHttpPort());
        if (urlContent == null || (iPAPIInfo = (IPAPIInfo) JsonUtil.INSTANCE.fromJson(urlContent, IPAPIInfo.class)) == null) {
            return null;
        }
        String ip = iPAPIInfo.getIp();
        if (ip == null && (ip = iPAPIInfo.getClientIp()) == null && (ip = iPAPIInfo.getIp_addr()) == null) {
            ip = iPAPIInfo.getQuery();
        }
        String country_code = iPAPIInfo.getCountry_code();
        if (country_code == null && (country_code = iPAPIInfo.getCountry()) == null) {
            country_code = iPAPIInfo.getCountryCode();
        }
        if (country_code == null) {
            country_code = new ObfuscatedString(new long[]{-5633284124819396640L, -2298744142168359359L}).toString();
        }
        return "(" + country_code + ") " + ip;
    }

    @NotNull
    public final String ping(@NotNull String url) {
        List emptyList;
        Intrinsics.checkNotNullParameter(url, new ObfuscatedString(new long[]{-8239175172709985212L, 7144366348201313722L}).toString());
        try {
            InputStream inputStream = Runtime.getRuntime().exec("/system/bin/ping -c 3 " + url).getInputStream();
            Intrinsics.checkNotNullExpressionValue(inputStream, new ObfuscatedString(new long[]{-8069324806789062794L, -5895326719817928699L, -2447167247927891002L, -3128184463460771425L}).toString());
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, Charsets.UTF_8), 8192);
            try {
                String readText = TextStreamsKt.readText(bufferedReader);
                CloseableKt.closeFinally(bufferedReader, null);
                if (!TextUtils.isEmpty(readText)) {
                    String substring = readText.substring(StringsKt__StringsKt.indexOf$default((CharSequence) readText, new ObfuscatedString(new long[]{-1014052094815883007L, -7572686855956538589L, -294569060842037233L}).toString(), 0, false, 6, (Object) null) + 19);
                    Intrinsics.checkNotNullExpressionValue(substring, new ObfuscatedString(new long[]{-12399470727353256L, 4084712615425097257L, -7374672828750367600L}).toString());
                    List<String> split = new Regex(new ObfuscatedString(new long[]{-7399152531359986710L, 1184071953211335850L}).toString()).split(substring, 0);
                    if (!split.isEmpty()) {
                        ListIterator<String> listIterator = split.listIterator(split.size());
                        while (listIterator.hasPrevious()) {
                            if (listIterator.previous().length() != 0) {
                                emptyList = CollectionsKt___CollectionsKt.take(split, listIterator.nextIndex() + 1);
                                break;
                            }
                        }
                    }
                    emptyList = CollectionsKt__CollectionsKt.emptyList();
                    String[] strArr = (String[]) emptyList.toArray(new String[0]);
                    if (strArr.length > 0 && strArr[0].length() < 10) {
                        return ((int) Float.parseFloat(strArr[0])) + "ms";
                    }
                }
            } finally {
            }
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{5686763968522133630L, 6219397092828887248L, -5367650725965139698L}).toString();
        }
        return new ObfuscatedString(new long[]{1704467857695592711L, -193346271368692570L}).toString();
    }

    public final long realPing(@NotNull String config2) {
        Intrinsics.checkNotNullParameter(config2, new ObfuscatedString(new long[]{1265471034560392230L, 1945567286938802328L}).toString());
        try {
            return Libv2ray.measureOutboundDelay(config2, SettingsManager.getDelayTestUrl$default(SettingsManager.INSTANCE, false, 1, null));
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{-1696952631654629979L, 4666107743094739943L, -7996090808830044231L}).toString();
            new ObfuscatedString(new long[]{-2998603997439034676L, 6516776942607398242L, 294835878038358269L, -8385663958092390997L, 1388672683761312730L}).toString();
            return -1L;
        }
    }

    public final long socketConnectTime(@NotNull String url, int port) {
        ArrayList<Socket> arrayList;
        Intrinsics.checkNotNullParameter(url, new ObfuscatedString(new long[]{1291760140980323246L, 8955858362727645912L}).toString());
        try {
            Socket socket = new Socket();
            synchronized (this) {
                arrayList = tcpTestingSockets;
                arrayList.add(socket);
            }
            long currentTimeMillis = System.currentTimeMillis();
            socket.connect(new InetSocketAddress(url, port), PathInterpolatorCompat.MAX_NUM_POINTS);
            long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
            synchronized (this) {
                arrayList.remove(socket);
            }
            socket.close();
            return currentTimeMillis2;
        } catch (UnknownHostException unused) {
            new ObfuscatedString(new long[]{8021828528392716083L, -2195337960074695606L, 6262867597072943590L}).toString();
            return -1L;
        } catch (IOException e) {
            new ObfuscatedString(new long[]{2370496931073574634L, -5433308254658755273L, -2131791533308910760L}).toString();
            e.toString();
            return -1L;
        } catch (Exception unused2) {
            new ObfuscatedString(new long[]{-7419450823059267001L, 3674303283365549186L, -557451787905086626L}).toString();
            return -1L;
        }
    }

    @Nullable
    public final Object tcping(@NotNull String str, int i, @NotNull Continuation<? super Long> continuation) {
        long j = -1;
        for (int i2 = 0; i2 < 2; i2++) {
            long socketConnectTime = socketConnectTime(str, i);
            if (!JobKt.isActive(continuation.getContext())) {
                break;
            }
            if (socketConnectTime != -1 && (j == -1 || socketConnectTime < j)) {
                j = socketConnectTime;
            }
        }
        return Boxing.boxLong(j);
    }

    @NotNull
    public final Pair<Long, String> testConnection(@NotNull Context context, int port) {
        String string;
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{4144376171171799245L, 2935574902787663228L}).toString());
        HttpURLConnection createProxyConnection$default = HttpUtil.createProxyConnection$default(HttpUtil.INSTANCE, SettingsManager.getDelayTestUrl$default(SettingsManager.INSTANCE, false, 1, null), port, 15000, 15000, false, 16, null);
        long j = -1;
        if (createProxyConnection$default == null) {
            return new Pair<>(-1L, new ObfuscatedString(new long[]{-5306321414587794596L}).toString());
        }
        try {
            try {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                int responseCode = createProxyConnection$default.getResponseCode();
                j = SystemClock.elapsedRealtime() - elapsedRealtime;
                if (responseCode != 204 && (responseCode != 200 || _ExtKt.getResponseLength(createProxyConnection$default) != 0)) {
                    throw new IOException(context.getString(R.string.connection_test_error_status_code, Integer.valueOf(responseCode)));
                }
                string = context.getString(R.string.connection_test_available, Long.valueOf(j));
                Intrinsics.checkNotNullExpressionValue(string, new ObfuscatedString(new long[]{-3287437231048673541L, -5371472408554993721L, -68072459582256266L}).toString());
            } catch (IOException e) {
                new ObfuscatedString(new long[]{-6066812765057310068L, 4327057365167809540L, -7189364364342330287L}).toString();
                new ObfuscatedString(new long[]{-5826288379646299851L, -7693089221181533762L, -8023354807253334027L, 4329958718385167859L, 6435214768720975269L}).toString();
                string = context.getString(R.string.connection_test_error, e.getMessage());
                Intrinsics.checkNotNullExpressionValue(string, new ObfuscatedString(new long[]{-7773186121355326345L, -3679450284915879065L, -1829829939679445934L}).toString());
            } catch (Exception e2) {
                new ObfuscatedString(new long[]{7846381434863760311L, -2740221912991601607L, 5014688037163811716L}).toString();
                new ObfuscatedString(new long[]{3899315442388001068L, -9022361696720132865L, 4900290423920371870L, -7318218272550134774L, 4567772372130706471L}).toString();
                string = context.getString(R.string.connection_test_error, e2.getMessage());
                Intrinsics.checkNotNullExpressionValue(string, new ObfuscatedString(new long[]{8342233812035137352L, -4106188518076459497L, 5464834930449677714L}).toString());
            }
            createProxyConnection$default.disconnect();
            return new Pair<>(Long.valueOf(j), string);
        } catch (Throwable th) {
            createProxyConnection$default.disconnect();
            throw th;
        }
    }
}
