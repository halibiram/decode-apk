package com.v2ray.ang.service;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import androidx.core.content.ContextCompat;
import com.fbd.tunnel.R;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.dto.ConfigResult;
import com.v2ray.ang.dto.EConfigType;
import com.v2ray.ang.dto.ProfileItem;
import com.v2ray.ang.extension._ExtKt;
import com.v2ray.ang.handler.MmkvManager;
import com.v2ray.ang.handler.V2rayConfigManager;
import com.v2ray.ang.util.MessageUtil;
import com.v2ray.ang.util.PluginUtil;
import com.v2ray.ang.util.Utils;
import de.blinkt.openvpn.core.TkLogStatus;
import go.Seq;
import java.lang.ref.SoftReference;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import libv2ray.CoreCallbackHandler;
import libv2ray.CoreController;
import libv2ray.Libv2ray;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002)*B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u001c\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u00172\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0007J\u0010\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u0017H\u0007J\u0006\u0010\u001d\u001a\u00020\u0015J\u0006\u0010\u001e\u001a\u00020\u001bJ\u0010\u0010\u001f\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0006\u0010 \u001a\u00020\u0015J\u0006\u0010!\u001a\u00020\u0015J\u0016\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u001b2\u0006\u0010%\u001a\u00020\u001bJ\b\u0010&\u001a\u00020\u0019H\u0002J\n\u0010'\u001a\u0004\u0018\u00010(H\u0003R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R4\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r2\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006+"}, d2 = {"Lcom/v2ray/ang/service/V2RayServiceManager;", "", "<init>", "()V", "coreController", "Llibv2ray/CoreController;", "getCoreController", "()Llibv2ray/CoreController;", "mMsgReceive", "Lcom/v2ray/ang/service/V2RayServiceManager$ReceiveMessageHandler;", "currentConfig", "Lcom/v2ray/ang/dto/ProfileItem;", "value", "Ljava/lang/ref/SoftReference;", "Lcom/v2ray/ang/service/ServiceControl;", "serviceControl", "getServiceControl", "()Ljava/lang/ref/SoftReference;", "setServiceControl", "(Ljava/lang/ref/SoftReference;)V", "startVServiceFromToggle", "", "context", "Landroid/content/Context;", "startVService", "", "guid", "", "stopVService", "isRunning", "getRunningServerName", "startContextService", "startCoreLoop", "stopCoreLoop", "queryStats", "", "tag", "link", "measureV2rayDelay", "getService", "Landroid/app/Service;", "CoreCallback", "ReceiveMessageHandler", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class V2RayServiceManager {

    @NotNull
    public static final V2RayServiceManager INSTANCE = new V2RayServiceManager();

    @NotNull
    private static final CoreController coreController;

    @Nullable
    private static ProfileItem currentConfig;

    @NotNull
    private static final ReceiveMessageHandler mMsgReceive;

    @Nullable
    private static SoftReference<ServiceControl> serviceControl;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\u001a\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016¨\u0006\u000b"}, d2 = {"Lcom/v2ray/ang/service/V2RayServiceManager$CoreCallback;", "Llibv2ray/CoreCallbackHandler;", "<init>", "()V", "startup", "", "shutdown", "onEmitStatus", "l", "s", "", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class CoreCallback implements CoreCallbackHandler {
        @Override // libv2ray.CoreCallbackHandler
        public long onEmitStatus(long l, @Nullable String s) {
            return 0L;
        }

        @Override // libv2ray.CoreCallbackHandler
        public long shutdown() {
            ServiceControl serviceControl;
            SoftReference<ServiceControl> serviceControl2 = V2RayServiceManager.INSTANCE.getServiceControl();
            if (serviceControl2 == null || (serviceControl = serviceControl2.get()) == null) {
                return -1L;
            }
            try {
                serviceControl.stopService();
                return 0L;
            } catch (Exception unused) {
                new ObfuscatedString(new long[]{5504328320090772459L, 7788850613207560068L, 4425309715778549459L}).toString();
                new ObfuscatedString(new long[]{3593396987467696264L, -6111330726870989950L, -77407857128895284L, -7551069726436083319L, 3309645504925989464L, -1145073294996123965L}).toString();
                return -1L;
            }
        }

        @Override // libv2ray.CoreCallbackHandler
        public long startup() {
            return 0L;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\n"}, d2 = {"Lcom/v2ray/ang/service/V2RayServiceManager$ReceiveMessageHandler;", "Landroid/content/BroadcastReceiver;", "<init>", "()V", "onReceive", "", "ctx", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class ReceiveMessageHandler extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(@Nullable Context ctx, @Nullable Intent intent) {
            ServiceControl serviceControl;
            Integer num;
            V2RayServiceManager v2RayServiceManager = V2RayServiceManager.INSTANCE;
            SoftReference<ServiceControl> serviceControl2 = v2RayServiceManager.getServiceControl();
            if (serviceControl2 != null && (serviceControl = serviceControl2.get()) != null) {
                String str = null;
                if (intent != null) {
                    num = Integer.valueOf(intent.getIntExtra(new ObfuscatedString(new long[]{8767596767632462505L, 1923759615085117802L}).toString(), 0));
                } else {
                    num = null;
                }
                if (num != null && num.intValue() == 1) {
                    if (v2RayServiceManager.getCoreController().getIsRunning()) {
                        MessageUtil.INSTANCE.sendMsg2UI(serviceControl.getService(), 11, new ObfuscatedString(new long[]{-498819232205012395L}).toString());
                    } else {
                        MessageUtil.INSTANCE.sendMsg2UI(serviceControl.getService(), 12, new ObfuscatedString(new long[]{5632632852287351521L}).toString());
                    }
                } else if ((num == null || num.intValue() != 2) && (num == null || num.intValue() != 3)) {
                    if (num != null && num.intValue() == 4) {
                        new ObfuscatedString(new long[]{1566713473724534144L, 4856159752206279881L, -5057523445858232092L}).toString();
                        new ObfuscatedString(new long[]{8017966498154467786L, -4314305741307099196L, 3734185189714798191L}).toString();
                        serviceControl.stopService();
                    } else if (num != null && num.intValue() == 5) {
                        new ObfuscatedString(new long[]{-7760176856031762678L, -2790205813020870297L, -2171300122502009070L}).toString();
                        new ObfuscatedString(new long[]{4731227585680424517L, -4039564015105346765L, -2199858298623245700L}).toString();
                        serviceControl.stopService();
                        Thread.sleep(500L);
                        V2RayServiceManager.startVService$default(serviceControl.getService(), null, 2, null);
                    } else if (num != null && num.intValue() == 6) {
                        v2RayServiceManager.measureV2rayDelay();
                    }
                }
                if (intent != null) {
                    str = intent.getAction();
                }
                if (str != null) {
                    int hashCode = str.hashCode();
                    if (hashCode != -2128145023) {
                        if (hashCode == -1454123155 && str.equals(new ObfuscatedString(new long[]{-792370387079549186L, -6357521142220417917L, -4683155156456089748L, 3566560177455560129L, 3919667009183640285L}).toString())) {
                            new ObfuscatedString(new long[]{2341991605590759061L, 8060309643605827478L, 7507150254716478631L}).toString();
                            new ObfuscatedString(new long[]{6944983963265698406L, 305297779349066321L, 3165038386154303446L, -4702208386157584225L, 2228952993053741133L}).toString();
                            NotificationService.INSTANCE.startSpeedNotification(V2RayServiceManager.currentConfig);
                            return;
                        }
                        return;
                    }
                    if (str.equals(new ObfuscatedString(new long[]{-755375336847831611L, -5334260260107886666L, 2287339443537166130L, -3591269680178963168L, -6906478769199804544L}).toString())) {
                        new ObfuscatedString(new long[]{-4777281834729425173L, 6704638037428278221L, 7249653824980554313L}).toString();
                        new ObfuscatedString(new long[]{7221844111313352169L, -7991510079088090964L, -8198810677584468162L, 5752396963917824812L, 8364465532451073606L}).toString();
                        NotificationService.INSTANCE.stopSpeedNotification(V2RayServiceManager.currentConfig);
                    }
                }
            }
        }
    }

    static {
        CoreController newCoreController = Libv2ray.newCoreController(new CoreCallback());
        Intrinsics.checkNotNullExpressionValue(newCoreController, new ObfuscatedString(new long[]{3580763517672399363L, 3811708861521709666L, -5086529754278246989L, 4441872448805575056L}).toString());
        coreController = newCoreController;
        mMsgReceive = new ReceiveMessageHandler();
    }

    private V2RayServiceManager() {
    }

    @JvmStatic
    public static final Service getService() {
        ServiceControl serviceControl2;
        SoftReference<ServiceControl> softReference = serviceControl;
        if (softReference != null && (serviceControl2 = softReference.get()) != null) {
            return serviceControl2.getService();
        }
        return null;
    }

    public final void measureV2rayDelay() {
        if (!coreController.getIsRunning()) {
            return;
        }
        BuildersKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new V2RayServiceManager$measureV2rayDelay$1(null), 3, null);
    }

    private final void startContextService(Context context) {
        String selectServer;
        MmkvManager mmkvManager;
        ProfileItem decodeServerConfig;
        Intent intent;
        if (coreController.getIsRunning() || (selectServer = MmkvManager.getSelectServer()) == null || (decodeServerConfig = (mmkvManager = MmkvManager.INSTANCE).decodeServerConfig(selectServer)) == null) {
            return;
        }
        if (decodeServerConfig.getConfigType() != EConfigType.CUSTOM) {
            Utils utils = Utils.INSTANCE;
            if (!utils.isValidUrl(decodeServerConfig.getServer())) {
                String server = decodeServerConfig.getServer();
                if (server == null) {
                    server = new ObfuscatedString(new long[]{7483084159635025273L}).toString();
                }
                if (!utils.isPureIpAddress(server)) {
                    return;
                }
            }
        }
        if (mmkvManager.decodeSettingsBool(new ObfuscatedString(new long[]{8435541894642108515L, 6863202086202672604L, -3438450887814558304L, 4635167559525200351L, -6378079631095891261L}).toString())) {
            _ExtKt.toast(context, R.string.toast_warning_pref_proxysharing_short);
        } else {
            TkLogStatus.updateStateString(new ObfuscatedString(new long[]{7991297562051514127L, -920402071891210765L, -3793572345785130835L}).toString(), new ObfuscatedString(new long[]{2541742043199669244L, 6651923384876994401L, -3824502788609955849L}).toString());
        }
        String decodeSettingsString = MmkvManager.decodeSettingsString(new ObfuscatedString(new long[]{-2913803298583043894L, 2389341775309342513L, 1098251733801468684L}).toString());
        if (decodeSettingsString == null) {
            decodeSettingsString = new ObfuscatedString(new long[]{-1643750387235072672L, -4793950968988689940L}).toString();
        }
        if (Intrinsics.areEqual(decodeSettingsString, new ObfuscatedString(new long[]{6042595909338455535L, 2802994939356733563L}).toString())) {
            intent = new Intent(context.getApplicationContext(), (Class<?>) V2RayVpnService.class);
        } else {
            intent = new Intent(context.getApplicationContext(), (Class<?>) V2RayProxyOnlyService.class);
        }
        if (Build.VERSION.SDK_INT > 25) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
    }

    @JvmStatic
    public static final void startVService(@NotNull Context context, @Nullable String guid) {
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{8534126413892691001L, -4862528932579252391L}).toString());
        if (guid != null) {
            MmkvManager.INSTANCE.setSelectServer(guid);
        }
        INSTANCE.startContextService(context);
    }

    public static /* synthetic */ void startVService$default(Context context, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        startVService(context, str);
    }

    @JvmStatic
    public static final void stopVService(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{-6465725381949669817L, -5857415002637304909L}).toString());
        TkLogStatus.updateStateString(new ObfuscatedString(new long[]{7845242312728571497L, -3506160989500213339L, -414025507890351315L}).toString(), new ObfuscatedString(new long[]{4320242141358792732L, -9100396842643899524L, -4476335757389515839L}).toString());
        MessageUtil.INSTANCE.sendMsg2Service(context, 4, new ObfuscatedString(new long[]{-2282235160062613230L}).toString());
    }

    @NotNull
    public final CoreController getCoreController() {
        return coreController;
    }

    @NotNull
    public final String getRunningServerName() {
        String str;
        ProfileItem profileItem = currentConfig;
        if (profileItem != null) {
            str = profileItem.getRemarks();
        } else {
            str = null;
        }
        if (str == null) {
            return new ObfuscatedString(new long[]{-2356007618141263233L}).toString();
        }
        return str;
    }

    @Nullable
    public final SoftReference<ServiceControl> getServiceControl() {
        return serviceControl;
    }

    public final boolean isRunning() {
        return coreController.getIsRunning();
    }

    public final long queryStats(@NotNull String tag, @NotNull String link) {
        Intrinsics.checkNotNullParameter(tag, new ObfuscatedString(new long[]{-8833490523106649375L, -5248778422769965690L}).toString());
        Intrinsics.checkNotNullParameter(link, new ObfuscatedString(new long[]{-3572387211612763018L, -6605047546387060460L}).toString());
        return coreController.queryStats(tag, link);
    }

    public final void setServiceControl(@Nullable SoftReference<ServiceControl> softReference) {
        Context context;
        ServiceControl serviceControl2;
        ServiceControl serviceControl3;
        Service service;
        serviceControl = softReference;
        Service service2 = null;
        if (softReference != null && (serviceControl3 = softReference.get()) != null && (service = serviceControl3.getService()) != null) {
            context = service.getApplicationContext();
        } else {
            context = null;
        }
        Seq.setContext(context);
        Utils utils = Utils.INSTANCE;
        if (softReference != null && (serviceControl2 = softReference.get()) != null) {
            service2 = serviceControl2.getService();
        }
        Libv2ray.initCoreEnv(utils.userAssetPath(service2), utils.getDeviceIdForXUDPBaseKey());
    }

    public final boolean startCoreLoop() {
        String selectServer;
        ProfileItem decodeServerConfig;
        CoreController coreController2 = coreController;
        if (coreController2.getIsRunning()) {
            TkLogStatus.updateStateString(new ObfuscatedString(new long[]{-9115130847645362443L, -1210455076576674743L, -23463121138117032L}).toString(), new ObfuscatedString(new long[]{-223758517749275400L, -7570775735249905214L, -8960402501492532391L}).toString());
            return false;
        }
        Service service = getService();
        if (service == null || (selectServer = MmkvManager.getSelectServer()) == null || (decodeServerConfig = MmkvManager.INSTANCE.decodeServerConfig(selectServer)) == null) {
            return false;
        }
        ConfigResult v2rayConfig = V2rayConfigManager.INSTANCE.getV2rayConfig(service, selectServer);
        if (!v2rayConfig.getStatus()) {
            return false;
        }
        try {
            IntentFilter intentFilter = new IntentFilter(new ObfuscatedString(new long[]{7180356698788585833L, 3319004581546376318L, -8861578756621165449L, 9114916527138440137L, 8084294220103167244L}).toString());
            intentFilter.addAction(new ObfuscatedString(new long[]{-4314614986510989163L, 1158110264874990349L, -7241208142385854684L, 1840668234215912249L, 7211386126361399298L}).toString());
            intentFilter.addAction(new ObfuscatedString(new long[]{-6799599445625578104L, 4959113528697149841L, 6870961536899160023L, 9160443011700010830L, 9089375520432144788L}).toString());
            intentFilter.addAction(new ObfuscatedString(new long[]{3143215183801883685L, 3173712747531043942L, -6313746752760580661L, 6913014637372370935L, -7269436506703544924L, 8979021604764906733L}).toString());
            ContextCompat.registerReceiver(service, mMsgReceive, intentFilter, Utils.INSTANCE.receiverFlags());
            currentConfig = decodeServerConfig;
            try {
                coreController2.startLoop(v2rayConfig.getContent());
                if (!coreController2.getIsRunning()) {
                    MessageUtil.INSTANCE.sendMsg2UI(service, 32, new ObfuscatedString(new long[]{7647075481158556772L}).toString());
                    NotificationService.INSTANCE.cancelNotification();
                    TkLogStatus.updateStateString(new ObfuscatedString(new long[]{172502676308097121L, -5873342896871688941L, -165837169862163659L}).toString(), new ObfuscatedString(new long[]{-7765090070466005072L, 14613686238833995L, 6001289871284023919L}).toString());
                    return false;
                }
                if (coreController2.getIsRunning()) {
                    measureV2rayDelay();
                }
                try {
                    MessageUtil.INSTANCE.sendMsg2UI(service, 31, new ObfuscatedString(new long[]{-4484534907104162568L}).toString());
                    NotificationService notificationService = NotificationService.INSTANCE;
                    notificationService.showNotification(currentConfig);
                    notificationService.startSpeedNotification(currentConfig);
                    TkLogStatus.updateStateString(new ObfuscatedString(new long[]{1092805627707100446L, -3357741732794072244L, 3150576366345984878L}).toString(), new ObfuscatedString(new long[]{-4745858075568861651L, 3784895675365763144L, 7707164233306197375L}).toString());
                    PluginUtil.INSTANCE.runPlugin(service, decodeServerConfig, v2rayConfig.getSocksPort());
                    return true;
                } catch (Exception unused) {
                    new ObfuscatedString(new long[]{7518963656250023592L, 2960095124146189025L, -3615742165350531265L}).toString();
                    new ObfuscatedString(new long[]{6465179595228386691L, 4511077359879108152L, 4077605576845010432L, -3953108299345737800L, -2998878541935714565L}).toString();
                    return false;
                }
            } catch (Exception unused2) {
                new ObfuscatedString(new long[]{-3673968267597978466L, 8448836239692406992L, -7843762916386781260L}).toString();
                new ObfuscatedString(new long[]{1318012998067915740L, 349809123302053048L, -2701268067039934288L, -8902418497774973754L, -8700059629519103503L}).toString();
                return false;
            }
        } catch (Exception unused3) {
            new ObfuscatedString(new long[]{410340342068487000L, -6563524613075587036L, 7038361084777831085L}).toString();
            new ObfuscatedString(new long[]{-1195315940583535968L, -5753466232698961579L, 5639856655099671451L, 377617259940008836L, 3691651006593903570L, -4239804022140946153L}).toString();
            return false;
        }
    }

    public final boolean startVServiceFromToggle(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{168690593087839050L, -3646242184397612203L}).toString());
        String selectServer = MmkvManager.getSelectServer();
        if (selectServer != null && selectServer.length() != 0) {
            startContextService(context);
            return true;
        }
        _ExtKt.toast(context, R.string.app_tile_first_use);
        return false;
    }

    public final boolean stopCoreLoop() {
        Service service = getService();
        if (service == null) {
            return false;
        }
        if (coreController.getIsRunning()) {
            BuildersKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new V2RayServiceManager$stopCoreLoop$1(null), 3, null);
        }
        MessageUtil.INSTANCE.sendMsg2UI(service, 41, new ObfuscatedString(new long[]{2572069328201885948L}).toString());
        NotificationService.INSTANCE.cancelNotification();
        try {
            service.unregisterReceiver(mMsgReceive);
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{-7505648570123565143L, -5079684798239042491L, -2766867236341395637L}).toString();
            new ObfuscatedString(new long[]{4035464512374135516L, -8704374723596594455L, 2984315865430841903L, -5094553729611312634L, 2894734110796408870L, -4106394266748919509L}).toString();
        }
        PluginUtil.INSTANCE.stopPlugin();
        return true;
    }
}
