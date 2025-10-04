package com.v2ray.ang.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.handler.MmkvManager;
import com.v2ray.ang.service.V2RayServiceManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\n"}, d2 = {"Lcom/v2ray/ang/receiver/BootReceiver;", "Landroid/content/BroadcastReceiver;", "<init>", "()V", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class BootReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(@Nullable Context context, @Nullable Intent intent) {
        String str;
        String selectServer;
        if (context != null) {
            if (intent != null) {
                str = intent.getAction();
            } else {
                str = null;
            }
            if (Intrinsics.areEqual(str, new ObfuscatedString(new long[]{2397226911988284769L, 6072690922836965281L, -3271269587620738468L, -8885292687277856825L, -674076122056734181L, 4369498084024105964L}).toString()) && MmkvManager.INSTANCE.decodeStartOnBoot() && (selectServer = MmkvManager.getSelectServer()) != null && selectServer.length() != 0) {
                V2RayServiceManager.startVService$default(context, null, 2, null);
            }
        }
    }
}
