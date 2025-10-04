package com.v2ray.ang.service;

import android.app.Service;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.RequiresApi;
import com.v2ray.ang.handler.SettingsManager;
import com.v2ray.ang.util.MyContextWrapper;
import java.lang.ref.SoftReference;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\"\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\bH\u0016J\b\u0010\r\u001a\u00020\u0006H\u0016J\b\u0010\u000e\u001a\u00020\u0001H\u0016J\b\u0010\u000f\u001a\u00020\u0006H\u0016J\b\u0010\u0010\u001a\u00020\u0006H\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\bH\u0016J\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0012\u0010\u0016\u001a\u00020\u00062\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0015¨\u0006\u0019"}, d2 = {"Lcom/v2ray/ang/service/V2RayProxyOnlyService;", "Landroid/app/Service;", "Lcom/v2ray/ang/service/ServiceControl;", "<init>", "()V", "onCreate", "", "onStartCommand", "", "intent", "Landroid/content/Intent;", "flags", "startId", "onDestroy", "getService", "startService", "stopService", "vpnProtect", "", "socket", "onBind", "Landroid/os/IBinder;", "attachBaseContext", "newBase", "Landroid/content/Context;", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class V2RayProxyOnlyService extends Service implements ServiceControl {
    @Override // android.app.Service, android.content.ContextWrapper
    @RequiresApi(24)
    public void attachBaseContext(@Nullable Context newBase) {
        ContextWrapper contextWrapper;
        if (newBase != null) {
            contextWrapper = MyContextWrapper.INSTANCE.wrap(newBase, SettingsManager.INSTANCE.getLocale());
        } else {
            contextWrapper = null;
        }
        super.attachBaseContext(contextWrapper);
    }

    @Override // com.v2ray.ang.service.ServiceControl
    @NotNull
    public Service getService() {
        return this;
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(@Nullable Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        V2RayServiceManager.INSTANCE.setServiceControl(new SoftReference<>(this));
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        V2RayServiceManager.INSTANCE.startCoreLoop();
    }

    @Override // android.app.Service
    public int onStartCommand(@Nullable Intent intent, int flags, int startId) {
        V2RayServiceManager.INSTANCE.startCoreLoop();
        return 1;
    }

    @Override // com.v2ray.ang.service.ServiceControl
    public void startService() {
    }

    @Override // com.v2ray.ang.service.ServiceControl
    public void stopService() {
        stopSelf();
    }

    @Override // com.v2ray.ang.service.ServiceControl
    public boolean vpnProtect(int socket) {
        return true;
    }
}
