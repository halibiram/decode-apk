package com.v2ray.ang.util;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import androidx.annotation.Keep;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import com.panda912.muddy.ObfuscatedString;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.JobKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0086@¢\u0006\u0002\u0010\u000eJ\u0018\u0010\u000f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000bH\u0007J\u000e\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000bJ\u0018\u0010\u0012\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0007J\u0006\u0010\u0013\u001a\u00020\u0014R\"\u0010\u0004\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005j\n\u0012\u0006\u0012\u0004\u0018\u00010\u0006`\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/v2ray/ang/util/SpeedtestUtil;", "", "<init>", "()V", "tcpTestingSockets", "Ljava/util/ArrayList;", "Ljava/net/Socket;", "Lkotlin/collections/ArrayList;", "tcping", "", "url", "", "port", "", "(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPing", "count", "ping", "socketConnectTime", "closeAllTcpSockets", "", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSpeedtestUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpeedtestUtil.kt\ncom/v2ray/ang/util/SpeedtestUtil\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,132:1\n1#2:133\n739#3,9:134\n739#3,9:147\n1869#3,2:160\n37#4:143\n36#4,3:144\n37#4:156\n36#4,3:157\n*S KotlinDebug\n*F\n+ 1 SpeedtestUtil.kt\ncom/v2ray/ang/util/SpeedtestUtil\n*L\n66#1:134,9\n84#1:147,9\n122#1:160,2\n66#1:143\n66#1:144,3\n84#1:156\n84#1:157,3\n*E\n"})
/* loaded from: classes3.dex */
public final class SpeedtestUtil {

    @NotNull
    public static final SpeedtestUtil INSTANCE = new SpeedtestUtil();

    @NotNull
    private static final ArrayList<Socket> tcpTestingSockets = new ArrayList<>();

    private SpeedtestUtil() {
    }

    @JvmStatic
    @Keep
    public static final long getPing(@NotNull String url, @NotNull String count) {
        List emptyList;
        Intrinsics.checkNotNullParameter(url, new ObfuscatedString(new long[]{-6143002208529430556L, 8437287587541817805L}).toString());
        Intrinsics.checkNotNullParameter(count, new ObfuscatedString(new long[]{-9006351634285226224L, -3635147717406825943L}).toString());
        try {
            InputStream inputStream = Runtime.getRuntime().exec("/system/bin/ping -c " + count + " " + url).getInputStream();
            Intrinsics.checkNotNullExpressionValue(inputStream, new ObfuscatedString(new long[]{6064110712329895776L, -9220732763571423548L, -2543212224643872831L, -590094372041264757L}).toString());
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, Charsets.UTF_8), 8192);
            try {
                String readText = TextStreamsKt.readText(bufferedReader);
                CloseableKt.closeFinally(bufferedReader, null);
                if (!TextUtils.isEmpty(readText)) {
                    String substring = readText.substring(StringsKt__StringsKt.indexOf$default((CharSequence) readText, new ObfuscatedString(new long[]{-1873097182756167680L, 8518864988580171266L, 5256895443318869414L}).toString(), 0, false, 6, (Object) null) + 19);
                    Intrinsics.checkNotNullExpressionValue(substring, new ObfuscatedString(new long[]{1131864812347513337L, 3510706326845152096L, 2585674964648634695L}).toString());
                    List<String> split = new Regex(new ObfuscatedString(new long[]{-3283303075778220145L, 1518229320917632042L}).toString()).split(substring, 0);
                    boolean z = true;
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
                    if (strArr.length != 0) {
                        z = false;
                    }
                    if (!z && strArr[0].length() < 10) {
                        return (int) Float.parseFloat(strArr[0]);
                    }
                    return -1L;
                }
                return -1L;
            } finally {
            }
        } catch (Exception unused) {
            return -1L;
        }
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
    public final String ping(@NotNull String url) {
        List emptyList;
        Intrinsics.checkNotNullParameter(url, new ObfuscatedString(new long[]{7193358233940865852L, 1350603637413183510L}).toString());
        try {
            InputStream inputStream = Runtime.getRuntime().exec("/system/bin/ping -c 3 " + url).getInputStream();
            Intrinsics.checkNotNullExpressionValue(inputStream, new ObfuscatedString(new long[]{-6742484220100859354L, -1492891901712707487L, -1675452076892799661L, 9213071786141605070L}).toString());
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, Charsets.UTF_8), 8192);
            try {
                String readText = TextStreamsKt.readText(bufferedReader);
                CloseableKt.closeFinally(bufferedReader, null);
                if (!TextUtils.isEmpty(readText)) {
                    String substring = readText.substring(StringsKt__StringsKt.indexOf$default((CharSequence) readText, new ObfuscatedString(new long[]{3785471808268111928L, -2443145546455526119L, -5676531441785678548L}).toString(), 0, false, 6, (Object) null) + 19);
                    Intrinsics.checkNotNullExpressionValue(substring, new ObfuscatedString(new long[]{9129843328156469084L, 5442237047611834146L, 4340509447032366079L}).toString());
                    List<String> split = new Regex(new ObfuscatedString(new long[]{-5683729322506445188L, -9085368450703811705L}).toString()).split(substring, 0);
                    boolean z = true;
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
                    if (strArr.length != 0) {
                        z = false;
                    }
                    if (!z && strArr[0].length() < 10) {
                        return ((int) Float.parseFloat(strArr[0])) + "ms";
                    }
                }
            } finally {
            }
        } catch (Exception unused) {
        }
        return new ObfuscatedString(new long[]{-7182524712149880970L, 5406417880739346489L}).toString();
    }

    @SuppressLint({"LongLogTag"})
    public final long socketConnectTime(@NotNull String url, int port) {
        ArrayList<Socket> arrayList;
        Intrinsics.checkNotNullParameter(url, new ObfuscatedString(new long[]{642788282829730322L, -8290020468441213727L}).toString());
        try {
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
            } catch (IOException e) {
                new ObfuscatedString(new long[]{-6883381701973845575L, -1320549725937080411L, -7881118728161987812L}).toString();
                e.toString();
                return -1L;
            }
        } catch (UnknownHostException | Exception unused) {
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
}
