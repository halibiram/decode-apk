package com.v2ray.ang.service;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.dto.ConfigResult;
import com.v2ray.ang.dto.EConfigType;
import com.v2ray.ang.dto.ProfileItem;
import com.v2ray.ang.handler.MmkvManager;
import com.v2ray.ang.handler.SpeedtestManager;
import com.v2ray.ang.handler.V2rayConfigManager;
import com.v2ray.ang.util.PluginUtil;
import com.v2ray.ang.util.Utils;
import defpackage.AbstractC0919x86d1e2e2;
import defpackage.C1140xd0502f52;
import go.Seq;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import libv2ray.Libv2ray;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u000bH\u0016J\"\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\rH\u0016J\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0018"}, d2 = {"Lcom/v2ray/ang/service/V2RayTestService;", "Landroid/app/Service;", "<init>", "()V", "realTestScope", "Lkotlinx/coroutines/CoroutineScope;", "getRealTestScope", "()Lkotlinx/coroutines/CoroutineScope;", "realTestScope$delegate", "Lkotlin/Lazy;", "onCreate", "", "onStartCommand", "", "intent", "Landroid/content/Intent;", "flags", "startId", "onBind", "Landroid/os/IBinder;", "startRealPing", "", "guid", "", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nV2RayTestService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 V2RayTestService.kt\ncom/v2ray/ang/service/V2RayTestService\n+ 2 _Ext.kt\ncom/v2ray/ang/extension/_ExtKt\n*L\n1#1,92:1\n190#2,4:93\n*S KotlinDebug\n*F\n+ 1 V2RayTestService.kt\ncom/v2ray/ang/service/V2RayTestService\n*L\n48#1:93,4\n*E\n"})
/* loaded from: classes3.dex */
public final class V2RayTestService extends Service {

    /* renamed from: realTestScope$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy realTestScope = AbstractC0919x86d1e2e2.lazy(new C1140xd0502f52(3));

    private final CoroutineScope getRealTestScope() {
        return (CoroutineScope) this.realTestScope.getValue();
    }

    public static final CoroutineScope realTestScope_delegate$lambda$0() {
        ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(Runtime.getRuntime().availableProcessors());
        Intrinsics.checkNotNullExpressionValue(newFixedThreadPool, new ObfuscatedString(new long[]{-5969003964226593783L, -7641337235475279578L, 4311672134676902504L, -9050959281051754739L}).toString());
        return CoroutineScopeKt.CoroutineScope(ExecutorsKt.from(newFixedThreadPool));
    }

    public final long startRealPing(String guid) {
        ProfileItem decodeServerConfig = MmkvManager.INSTANCE.decodeServerConfig(guid);
        if (decodeServerConfig == null) {
            return -1L;
        }
        if (decodeServerConfig.getConfigType() == EConfigType.HYSTERIA2) {
            return PluginUtil.INSTANCE.realPingHy2(this, decodeServerConfig);
        }
        ConfigResult v2rayConfig4Speedtest = V2rayConfigManager.INSTANCE.getV2rayConfig4Speedtest(this, guid);
        if (!v2rayConfig4Speedtest.getStatus()) {
            return -1L;
        }
        return SpeedtestManager.INSTANCE.realPing(v2rayConfig4Speedtest.getContent());
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(@Nullable Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Seq.setContext((Context) this);
        Utils utils = Utils.INSTANCE;
        Libv2ray.initCoreEnv(utils.userAssetPath(this), utils.getDeviceIdForXUDPBaseKey());
    }

    @Override // android.app.Service
    public int onStartCommand(@Nullable Intent intent, int flags, int startId) {
        Integer num;
        Job job;
        Object obj;
        if (intent != null) {
            num = Integer.valueOf(intent.getIntExtra(new ObfuscatedString(new long[]{-5897629019525064559L, 4589812295169751129L}).toString(), 0));
        } else {
            num = null;
        }
        if (num != null && num.intValue() == 7) {
            String obfuscatedString = new ObfuscatedString(new long[]{-7767952444210034300L, -6649537840029159348L}).toString();
            if (Build.VERSION.SDK_INT >= 33) {
                obj = intent.getSerializableExtra(obfuscatedString, String.class);
            } else {
                Object serializableExtra = intent.getSerializableExtra(obfuscatedString);
                if (!(serializableExtra instanceof String)) {
                    serializableExtra = null;
                }
                obj = (String) serializableExtra;
            }
            String str = (String) obj;
            if (str == null) {
                str = new ObfuscatedString(new long[]{1453700949922049823L}).toString();
            }
            BuildersKt.launch$default(getRealTestScope(), null, null, new V2RayTestService$onStartCommand$1(this, str, null), 3, null);
        } else if (num != null && num.intValue() == 72 && (job = (Job) getRealTestScope().getCoroutineContext().get(Job.INSTANCE)) != null) {
            JobKt.cancelChildren$default(job, (CancellationException) null, 1, (Object) null);
        }
        return super.onStartCommand(intent, flags, startId);
    }
}
