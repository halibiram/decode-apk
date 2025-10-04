package com.v2ray.ang.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.service.V2RayServiceManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\n"}, d2 = {"Lcom/v2ray/ang/receiver/TaskerReceiver;", "Landroid/content/BroadcastReceiver;", "<init>", "()V", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class TaskerReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(@NotNull Context context, @Nullable Intent intent) {
        Bundle bundleExtra;
        Boolean bool;
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{-5889881450945037221L, -2291460150857070904L}).toString());
        String str = null;
        if (intent != null) {
            try {
                bundleExtra = intent.getBundleExtra(new ObfuscatedString(new long[]{-9000650641229335707L, 1662991138039797558L, -7852170456192762495L, 7874882513110924212L, -808347544801254951L, -5793140000148593511L, -1981653760066806267L}).toString());
            } catch (Exception unused) {
                new ObfuscatedString(new long[]{8680894441915754008L, -3577903736009622455L, 1865917071579249725L}).toString();
                new ObfuscatedString(new long[]{-4453195815393963764L, -4616615982292853620L, -7830267780192228197L, -4029037793681119182L, 4631613374803430733L, 6477805544004318910L}).toString();
                return;
            }
        } else {
            bundleExtra = null;
        }
        if (bundleExtra != null) {
            bool = Boolean.valueOf(bundleExtra.getBoolean(new ObfuscatedString(new long[]{-8925235218360517141L, 7901151100482611638L, -6398042674362925891L, -4125378091505145501L, 3233692026877438971L}).toString(), false));
        } else {
            bool = null;
        }
        if (bundleExtra != null) {
            str = bundleExtra.getString(new ObfuscatedString(new long[]{-8068192583523140043L, 9012152532431760344L, -218665610107676556L, -5282707540485584394L}).toString());
        }
        if (str == null) {
            str = new ObfuscatedString(new long[]{3957584804990710361L}).toString();
        }
        if (bool != null && !TextUtils.isEmpty(str)) {
            if (bool.booleanValue()) {
                if (Intrinsics.areEqual(str, new ObfuscatedString(new long[]{-5884785939395877224L, -2933096087483870428L}).toString())) {
                    V2RayServiceManager.INSTANCE.startVServiceFromToggle(context);
                    return;
                } else {
                    V2RayServiceManager.startVService(context, str);
                    return;
                }
            }
            V2RayServiceManager.stopVService(context);
        }
    }
}
