package okhttp3.internal.platform.android;

import android.util.Log;
import defpackage.AbstractC0962xa4a1ff52;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.StringsKt___StringsKt;
import okhttp3.OkHttpClient;
import okhttp3.internal.SuppressSignatureCheck;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http2.Http2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@SuppressSignatureCheck
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\bÇ\u0002\u0018\u00002\u00020\u0001J3\u0010\f\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0000¢\u0006\u0004\b\n\u0010\u000bJ\r\u0010\r\u001a\u00020\t¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lokhttp3/internal/platform/android/AndroidLog;", "", "", "loggerName", "", "logLevel", "message", "", "t", "", "androidLog$okhttp", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V", "androidLog", "enable", "()V", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class AndroidLog {

    @NotNull
    public static final AndroidLog INSTANCE = new Object();

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final CopyOnWriteArraySet f3427xfbe0c504 = new CopyOnWriteArraySet();

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final Map f3428x3271d0aa;

    /* JADX WARN: Type inference failed for: r0v0, types: [okhttp3.internal.platform.android.AndroidLog, java.lang.Object] */
    static {
        String str;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Package r2 = OkHttpClient.class.getPackage();
        if (r2 != null) {
            str = r2.getName();
        } else {
            str = null;
        }
        if (str != null) {
            linkedHashMap.put(str, "OkHttp");
        }
        String name = OkHttpClient.class.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        linkedHashMap.put(name, "okhttp.OkHttpClient");
        String name2 = Http2.class.getName();
        Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
        linkedHashMap.put(name2, "okhttp.Http2");
        String name3 = TaskRunner.class.getName();
        Intrinsics.checkNotNullExpressionValue(name3, "getName(...)");
        linkedHashMap.put(name3, "okhttp.TaskRunner");
        linkedHashMap.put("okhttp3.mockwebserver.MockWebServer", "okhttp.MockWebServer");
        f3428x3271d0aa = AbstractC0962xa4a1ff52.toMap(linkedHashMap);
    }

    public static /* synthetic */ void androidLog$okhttp$default(AndroidLog androidLog, String str, int i, String str2, Throwable th, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            th = null;
        }
        androidLog.androidLog$okhttp(str, i, str2, th);
    }

    public final void androidLog$okhttp(@NotNull String loggerName, int logLevel, @NotNull String message, @Nullable Throwable t) {
        int min;
        Intrinsics.checkNotNullParameter(loggerName, "loggerName");
        Intrinsics.checkNotNullParameter(message, "message");
        String str = (String) f3428x3271d0aa.get(loggerName);
        if (str == null) {
            str = StringsKt___StringsKt.take(loggerName, 23);
        }
        if (Log.isLoggable(str, logLevel)) {
            if (t != null) {
                message = message + '\n' + Log.getStackTraceString(t);
            }
            int length = message.length();
            int i = 0;
            while (i < length) {
                int indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) message, '\n', i, false, 4, (Object) null);
                if (indexOf$default == -1) {
                    indexOf$default = length;
                }
                while (true) {
                    min = Math.min(indexOf$default, i + 4000);
                    String substring = message.substring(i, min);
                    Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                    Log.println(logLevel, str, substring);
                    if (min >= indexOf$default) {
                        break;
                    } else {
                        i = min;
                    }
                }
                i = min + 1;
            }
        }
    }

    public final void enable() {
        Level level;
        for (Map.Entry entry : f3428x3271d0aa.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            Logger logger = Logger.getLogger(str);
            if (f3427xfbe0c504.add(logger)) {
                logger.setUseParentHandlers(false);
                if (Log.isLoggable(str2, 3)) {
                    level = Level.FINE;
                } else if (Log.isLoggable(str2, 4)) {
                    level = Level.INFO;
                } else {
                    level = Level.WARNING;
                }
                logger.setLevel(level);
                logger.addHandler(AndroidLogHandler.INSTANCE);
            }
        }
    }
}
