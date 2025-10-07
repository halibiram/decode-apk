package com.v2ray.ang.util;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.service.V2RayTestService;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u001e\u0010\f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u001e\u0010\r\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ(\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002¨\u0006\u0011"}, d2 = {"Lcom/v2ray/ang/util/MessageUtil;", "", "<init>", "()V", "sendMsg2Service", "", "ctx", "Landroid/content/Context;", "what", "", "content", "Ljava/io/Serializable;", "sendMsg2UI", "sendMsg2TestService", "sendMsg", "action", "", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class MessageUtil {

    @NotNull
    public static final MessageUtil INSTANCE = new MessageUtil();

    private MessageUtil() {
    }

    private final void sendMsg(Context ctx, String action, int what, Serializable content) {
        try {
            Intent intent = new Intent();
            intent.setAction(action);
            intent.setPackage(new ObfuscatedString(new long[]{6636890789758721794L, -8495158465219469426L, 3846682068280091558L}).toString());
            intent.putExtra(new ObfuscatedString(new long[]{-2539768389887590972L, 6158466314000121719L}).toString(), what);
            intent.putExtra(new ObfuscatedString(new long[]{-9052704944418738649L, 7212599167801986378L}).toString(), content);
            ctx.sendBroadcast(intent);
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{-2511558873400874103L, -8667780345502995044L, -4751629196585554894L}).toString();
        }
    }

    public final void sendMsg2Service(@NotNull Context ctx, int what, @NotNull Serializable content) {
        Intrinsics.checkNotNullParameter(ctx, new ObfuscatedString(new long[]{5169764489535124868L, -1296960099694594477L}).toString());
        Intrinsics.checkNotNullParameter(content, new ObfuscatedString(new long[]{2186786619838668107L, -2073956128272824087L}).toString());
        sendMsg(ctx, new ObfuscatedString(new long[]{-8276829721188847079L, 4351192393375004230L, 1428038310090891808L, -4402275516411387623L, 2721216622449895123L}).toString(), what, content);
    }

    public final void sendMsg2TestService(@NotNull Context ctx, int what, @NotNull Serializable content) {
        Intrinsics.checkNotNullParameter(ctx, new ObfuscatedString(new long[]{838608124777596914L, 7681240477677966789L}).toString());
        Intrinsics.checkNotNullParameter(content, new ObfuscatedString(new long[]{4967256397229268618L, 7732762221915108791L}).toString());
        try {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName(ctx, (Class<?>) V2RayTestService.class));
            intent.putExtra(new ObfuscatedString(new long[]{-4174976769688336710L, 4156663954007937677L}).toString(), what);
            intent.putExtra(new ObfuscatedString(new long[]{-7754825391238795383L, -9028010128852290044L}).toString(), content);
            ctx.startService(intent);
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{4237336624976616242L, -1467623198343237032L, -6815277144117319522L}).toString();
            new ObfuscatedString(new long[]{1448907370802582382L, -2367331651438053500L, -7203430383235022180L, -8601114645081458431L, -6412675099648011637L, 5532109073802389769L}).toString();
        }
    }

    public final void sendMsg2UI(@NotNull Context ctx, int what, @NotNull Serializable content) {
        Intrinsics.checkNotNullParameter(ctx, new ObfuscatedString(new long[]{-5121402023632000326L, 2184241022949466072L}).toString());
        Intrinsics.checkNotNullParameter(content, new ObfuscatedString(new long[]{818670548373858096L, 8280670214263703214L}).toString());
        sendMsg(ctx, new ObfuscatedString(new long[]{465409938369340391L, -8279025784303304128L, 195413288491058334L, -3122611832053503660L, 1046544175186097779L}).toString(), what, content);
    }
}
