package com.v2ray.ang.service;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import android.net.ProxyInfo;
import android.net.VpnService;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.os.StrictMode;
import androidx.annotation.RequiresApi;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.AppConfig;
import com.v2ray.ang.dto.VpnInterfaceAddressConfig;
import com.v2ray.ang.handler.MmkvManager;
import com.v2ray.ang.handler.SettingsManager;
import com.v2ray.ang.service.V2RayVpnService;
import com.v2ray.ang.service.V2RayVpnService$defaultNetworkCallback$2$1;
import com.v2ray.ang.util.MyContextWrapper;
import com.v2ray.ang.util.Utils;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0919x86d1e2e2;
import defpackage.AbstractC1026x65ee1cd8;
import defpackage.C1140xd0502f52;
import defpackage.RunnableC1044x8c43c726;
import j$.util.Objects;
import java.io.File;
import java.io.FileDescriptor;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006*\u0002\f\u001b\u0018\u0000 ;2\u00020\u00012\u00020\u0002:\u0001;B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\u001f\u001a\u00020 H\u0016J\b\u0010!\u001a\u00020 H\u0016J\b\u0010\"\u001a\u00020 H\u0016J\"\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010'\u001a\u00020$2\u0006\u0010(\u001a\u00020$H\u0016J\b\u0010)\u001a\u00020*H\u0016J\b\u0010+\u001a\u00020 H\u0016J\b\u0010,\u001a\u00020 H\u0016J\u0010\u0010-\u001a\u00020\b2\u0006\u0010.\u001a\u00020$H\u0016J\u0012\u0010/\u001a\u00020 2\b\u00100\u001a\u0004\u0018\u000101H\u0015J\b\u00102\u001a\u00020 H\u0002J\b\u00103\u001a\u00020\bH\u0002J\u0014\u00104\u001a\u00020 2\n\u00105\u001a\u000606R\u00020\u0001H\u0002J\b\u00107\u001a\u00020 H\u0002J\b\u00108\u001a\u00020 H\u0002J\u0012\u00109\u001a\u00020 2\b\b\u0002\u0010:\u001a\u00020\bH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\rR#\u0010\u000e\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000f8BX\u0083\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0015\u001a\u00020\u00168BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u0014\u001a\u0004\b\u0017\u0010\u0018R\u001b\u0010\u001a\u001a\u00020\u001b8BX\u0083\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u0014\u001a\u0004\b\u001c\u0010\u001d¨\u0006<"}, d2 = {"Lcom/v2ray/ang/service/V2RayVpnService;", "Landroid/net/VpnService;", "Lcom/v2ray/ang/service/ServiceControl;", "<init>", "()V", "mInterface", "Landroid/os/ParcelFileDescriptor;", "isRunning", "", "process", "Ljava/lang/Process;", "broadcastReceiver", "com/v2ray/ang/service/V2RayVpnService$broadcastReceiver$1", "Lcom/v2ray/ang/service/V2RayVpnService$broadcastReceiver$1;", "defaultNetworkRequest", "Landroid/net/NetworkRequest;", "kotlin.jvm.PlatformType", "getDefaultNetworkRequest", "()Landroid/net/NetworkRequest;", "defaultNetworkRequest$delegate", "Lkotlin/Lazy;", "connectivity", "Landroid/net/ConnectivityManager;", "getConnectivity", "()Landroid/net/ConnectivityManager;", "connectivity$delegate", "defaultNetworkCallback", "com/v2ray/ang/service/V2RayVpnService$defaultNetworkCallback$2$1", "getDefaultNetworkCallback", "()Lcom/v2ray/ang/service/V2RayVpnService$defaultNetworkCallback$2$1;", "defaultNetworkCallback$delegate", "onCreate", "", "onRevoke", "onDestroy", "onStartCommand", "", "intent", "Landroid/content/Intent;", "flags", "startId", "getService", "Landroid/app/Service;", "startService", "stopService", "vpnProtect", "socket", "attachBaseContext", "newBase", "Landroid/content/Context;", "setup", "setupVpnService", "configurePerAppProxy", "builder", "Landroid/net/VpnService$Builder;", "runTun2socks", "sendFd", "stopV2Ray", "isForced", "Companion", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nV2RayVpnService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 V2RayVpnService.kt\ncom/v2ray/ang/service/V2RayVpnService\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,428:1\n1869#2,2:429\n1869#2,2:431\n1869#2,2:433\n*S KotlinDebug\n*F\n+ 1 V2RayVpnService.kt\ncom/v2ray/ang/service/V2RayVpnService\n*L\n191#1:429,2\n213#1:431,2\n289#1:433,2\n*E\n"})
/* loaded from: classes3.dex */
public final class V2RayVpnService extends VpnService implements ServiceControl {
    private static final int VPN_MTU = 1500;

    /* renamed from: connectivity$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy connectivity;

    /* renamed from: defaultNetworkCallback$delegate, reason: from kotlin metadata */
    @RequiresApi(28)
    @NotNull
    private final Lazy defaultNetworkCallback;
    private boolean isRunning;
    private ParcelFileDescriptor mInterface;
    private Process process;

    @NotNull
    private static final String TUN2SOCKS = new ObfuscatedString(new long[]{5987446321228464999L, 8430696234815720489L, 3697636920037029740L}).toString();

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final String MSG_STATE_STAR = new ObfuscatedString(new long[]{-7923671132010199135L, 5339524152948126169L, 8834336202251423621L}).toString();

    @NotNull
    private static final String MSG_STATE_STOP = new ObfuscatedString(new long[]{3925440715620755221L, -78026503546287600L, 3415697598873466522L}).toString();

    @NotNull
    private final V2RayVpnService$broadcastReceiver$1 broadcastReceiver = new BroadcastReceiver() { // from class: com.v2ray.ang.service.V2RayVpnService$broadcastReceiver$1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{-3185094607427804005L, 8321030094813269627L}).toString());
            Intrinsics.checkNotNullParameter(intent, new ObfuscatedString(new long[]{-9199487919565495439L, -6238665096208160685L}).toString());
            String action = intent.getAction();
            if (action != null && Intrinsics.areEqual(action, new ObfuscatedString(new long[]{7607191262188695560L, -6041341384919242287L, -4939800138280904905L}).toString())) {
                V2RayVpnService.stopV2Ray$default(V2RayVpnService.this, false, 1, null);
            }
        }
    };

    /* renamed from: defaultNetworkRequest$delegate, reason: from kotlin metadata */
    @RequiresApi(28)
    @NotNull
    private final Lazy defaultNetworkRequest = AbstractC0919x86d1e2e2.lazy(new C1140xd0502f52(4));

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u001c\u0010\b\u001a\u00020\u00078\u0006X\u0087D¢\u0006\u000e\n\u0000\u0012\u0004\b\t\u0010\u0003\u001a\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\u00020\u00078\u0006X\u0087D¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\u0003\u001a\u0004\b\u000e\u0010\u000b¨\u0006\u000f"}, d2 = {"Lcom/v2ray/ang/service/V2RayVpnService$Companion;", "", "<init>", "()V", "VPN_MTU", "", "TUN2SOCKS", "", "MSG_STATE_STAR", "getMSG_STATE_STAR$annotations", "getMSG_STATE_STAR", "()Ljava/lang/String;", "MSG_STATE_STOP", "getMSG_STATE_STOP$annotations", "getMSG_STATE_STOP", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public static /* synthetic */ void getMSG_STATE_STAR$annotations() {
        }

        @JvmStatic
        public static /* synthetic */ void getMSG_STATE_STOP$annotations() {
        }

        @NotNull
        public final String getMSG_STATE_STAR() {
            return V2RayVpnService.MSG_STATE_STAR;
        }

        @NotNull
        public final String getMSG_STATE_STOP() {
            return V2RayVpnService.MSG_STATE_STOP;
        }

        private Companion() {
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.v2ray.ang.service.V2RayVpnService$broadcastReceiver$1] */
    public V2RayVpnService() {
        final int i = 0;
        this.connectivity = AbstractC0919x86d1e2e2.lazy(new Function0(this) { // from class: 땰뒉듼듼뒘땬듸뒬딁딸들땨뒻땋돵들뒷뎡땮둡뒤딄땤땥듬땯땫땣뎨땅땻뒉됴땦뒼땯둔뒬듌딜뎸뒹듻땨딅딟뒈땸땭땫뒵딃듐돤딽땣됩뒼땟땅뒀땵돨딁듻땪되딁땸딹두돴뒾듰땟된뒼뒤뎨딅땱땝돳땰듸땠뒼땀뎬뎠땰뒨듌뎰딞뒙뒷딤땤딁딸뒤땦돸땍땯둠뒉뒨땔돴딜듐땍둣땰뎽땧듔뎨뒙땭뒼뎻땩듌뎸딸땧뎻

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ V2RayVpnService f5694x3271d0aa;

            {
                this.f5694x3271d0aa = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                ConnectivityManager connectivity_delegate$lambda$1;
                V2RayVpnService$defaultNetworkCallback$2$1 defaultNetworkCallback_delegate$lambda$2;
                switch (i) {
                    case 0:
                        connectivity_delegate$lambda$1 = V2RayVpnService.connectivity_delegate$lambda$1(this.f5694x3271d0aa);
                        return connectivity_delegate$lambda$1;
                    default:
                        defaultNetworkCallback_delegate$lambda$2 = V2RayVpnService.defaultNetworkCallback_delegate$lambda$2(this.f5694x3271d0aa);
                        return defaultNetworkCallback_delegate$lambda$2;
                }
            }
        });
        final int i2 = 1;
        this.defaultNetworkCallback = AbstractC0919x86d1e2e2.lazy(new Function0(this) { // from class: 땰뒉듼듼뒘땬듸뒬딁딸들땨뒻땋돵들뒷뎡땮둡뒤딄땤땥듬땯땫땣뎨땅땻뒉됴땦뒼땯둔뒬듌딜뎸뒹듻땨딅딟뒈땸땭땫뒵딃듐돤딽땣됩뒼땟땅뒀땵돨딁듻땪되딁땸딹두돴뒾듰땟된뒼뒤뎨딅땱땝돳땰듸땠뒼땀뎬뎠땰뒨듌뎰딞뒙뒷딤땤딁딸뒤땦돸땍땯둠뒉뒨땔돴딜듐땍둣땰뎽땧듔뎨뒙땭뒼뎻땩듌뎸딸땧뎻

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ V2RayVpnService f5694x3271d0aa;

            {
                this.f5694x3271d0aa = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                ConnectivityManager connectivity_delegate$lambda$1;
                V2RayVpnService$defaultNetworkCallback$2$1 defaultNetworkCallback_delegate$lambda$2;
                switch (i2) {
                    case 0:
                        connectivity_delegate$lambda$1 = V2RayVpnService.connectivity_delegate$lambda$1(this.f5694x3271d0aa);
                        return connectivity_delegate$lambda$1;
                    default:
                        defaultNetworkCallback_delegate$lambda$2 = V2RayVpnService.defaultNetworkCallback_delegate$lambda$2(this.f5694x3271d0aa);
                        return defaultNetworkCallback_delegate$lambda$2;
                }
            }
        });
    }

    private final void configurePerAppProxy(VpnService.Builder builder) {
        VpnService.Builder addDisallowedApplication;
        String obfuscatedString = new ObfuscatedString(new long[]{-3151358742719988818L, 5090388263444580157L, 5395220784100216192L}).toString();
        MmkvManager mmkvManager = MmkvManager.INSTANCE;
        if (!mmkvManager.decodeSettingsBool(new ObfuscatedString(new long[]{-3563065839402108604L, -348182610719776309L, 5445764497760030417L, -7034392964736870736L}).toString())) {
            builder.addDisallowedApplication(obfuscatedString);
            return;
        }
        Set<String> decodeSettingsStringSet = MmkvManager.decodeSettingsStringSet(new ObfuscatedString(new long[]{1435051165311838953L, 1539010183518998414L, 7986274960654893880L, 1735395240655207493L}).toString());
        Set<String> set = decodeSettingsStringSet;
        if (set != null && !set.isEmpty()) {
            boolean decodeSettingsBool = mmkvManager.decodeSettingsBool(new ObfuscatedString(new long[]{3440051354897828813L, 1440737190531593498L, -8197215981288922286L}).toString());
            if (decodeSettingsBool) {
                decodeSettingsStringSet.add(obfuscatedString);
            } else {
                decodeSettingsStringSet.remove(obfuscatedString);
            }
            for (String str : decodeSettingsStringSet) {
                if (decodeSettingsBool) {
                    try {
                        addDisallowedApplication = builder.addDisallowedApplication(str);
                    } catch (PackageManager.NameNotFoundException e) {
                        new ObfuscatedString(new long[]{433442288490262279L, -2566873115821249199L, -2759648994342417016L}).toString();
                        e.getLocalizedMessage();
                    }
                } else {
                    addDisallowedApplication = builder.addAllowedApplication(str);
                }
                Intrinsics.checkNotNull(addDisallowedApplication);
            }
            return;
        }
        builder.addDisallowedApplication(obfuscatedString);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ConnectivityManager connectivity_delegate$lambda$1(V2RayVpnService v2RayVpnService) {
        Object systemService = v2RayVpnService.getSystemService(new ObfuscatedString(new long[]{2124195169390674018L, -2186593032007187700L, 210834735274165345L}).toString());
        Intrinsics.checkNotNull(systemService, new ObfuscatedString(new long[]{-4651236759438665253L, -3727507206393794570L, -4458745813331937189L, -4371547592596795898L, -5121250553264534507L, 5855517406896954187L, -4173209351869558016L, 288890824522651782L, -4030155177152853735L, -7877515133024675606L}).toString());
        return (ConnectivityManager) systemService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.v2ray.ang.service.V2RayVpnService$defaultNetworkCallback$2$1] */
    public static final V2RayVpnService$defaultNetworkCallback$2$1 defaultNetworkCallback_delegate$lambda$2(final V2RayVpnService v2RayVpnService) {
        return new ConnectivityManager.NetworkCallback() { // from class: com.v2ray.ang.service.V2RayVpnService$defaultNetworkCallback$2$1
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                Intrinsics.checkNotNullParameter(network, new ObfuscatedString(new long[]{-4660001701569479028L, -4651696838923507519L}).toString());
                V2RayVpnService.this.setUnderlyingNetworks(new Network[]{network});
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
                Intrinsics.checkNotNullParameter(network, new ObfuscatedString(new long[]{-8517337453947508390L, 8540820378101197533L}).toString());
                Intrinsics.checkNotNullParameter(networkCapabilities, new ObfuscatedString(new long[]{-772971333569582647L, -1125647623561001199L, -1261949147304109641L, 8184131030503962476L}).toString());
                V2RayVpnService.this.setUnderlyingNetworks(new Network[]{network});
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                Intrinsics.checkNotNullParameter(network, new ObfuscatedString(new long[]{7932578046442922815L, 954655783037691221L}).toString());
                V2RayVpnService.this.setUnderlyingNetworks(null);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NetworkRequest defaultNetworkRequest_delegate$lambda$0() {
        return new NetworkRequest.Builder().addCapability(12).addCapability(13).build();
    }

    private final ConnectivityManager getConnectivity() {
        return (ConnectivityManager) this.connectivity.getValue();
    }

    private final V2RayVpnService$defaultNetworkCallback$2$1 getDefaultNetworkCallback() {
        return (V2RayVpnService$defaultNetworkCallback$2$1) this.defaultNetworkCallback.getValue();
    }

    private final NetworkRequest getDefaultNetworkRequest() {
        return (NetworkRequest) this.defaultNetworkRequest.getValue();
    }

    @NotNull
    public static final String getMSG_STATE_STAR() {
        return INSTANCE.getMSG_STATE_STAR();
    }

    @NotNull
    public static final String getMSG_STATE_STOP() {
        return INSTANCE.getMSG_STATE_STOP();
    }

    private final void runTun2socks() {
        new ObfuscatedString(new long[]{-5664892929523611012L, -8793211140776058626L, 6539103146862366849L}).toString();
        new ObfuscatedString(new long[]{-155516900964166257L, 1793950090263357777L, 2489589040026439177L, -3332035631858092389L, 3138157031515059652L}).toString();
        SettingsManager settingsManager = SettingsManager.INSTANCE;
        int socksPort = settingsManager.getSocksPort();
        VpnInterfaceAddressConfig currentVpnInterfaceAddressConfig = settingsManager.getCurrentVpnInterfaceAddressConfig();
        ArrayList arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new File(getApplicationContext().getApplicationInfo().nativeLibraryDir, new ObfuscatedString(new long[]{-5699503694689188116L, 9072254543135348322L, -7559215644484297350L}).toString()).getAbsolutePath(), new ObfuscatedString(new long[]{1842646255220098L, 6051453233621172680L, -6734940391012352444L}).toString(), currentVpnInterfaceAddressConfig.getIpv4Router(), new ObfuscatedString(new long[]{-8700467348808758509L, -150977193510196786L, -8500455971488004983L}).toString(), new ObfuscatedString(new long[]{-95357854671870360L, -8723845872783121335L, -8116342974177230914L}).toString(), new ObfuscatedString(new long[]{-1484564835376985802L, -4658788045353147273L, 7628888210331770172L, 2352662236631259684L}).toString(), AbstractC0362x4440ab85.m2929x9738a56c(socksPort, "127.0.0.1:"), new ObfuscatedString(new long[]{6787191330021452556L, 6001403674911948176L}).toString(), new ObfuscatedString(new long[]{-3651384515222870105L, 9007639443577063657L}).toString(), new ObfuscatedString(new long[]{-6905814823545233916L, -6670506480571322727L, -1501547393120765615L}).toString(), new ObfuscatedString(new long[]{-1938811956609857427L, 5543920720431968841L, 3171223558790211051L}).toString(), new ObfuscatedString(new long[]{5743628553585482217L, -3363003133193484318L, -3294976236151656358L, -6489081512657149060L}).toString(), new ObfuscatedString(new long[]{4115995581265168583L, -4897347156237519230L, -5212115840102863299L}).toString(), new ObfuscatedString(new long[]{-8261002768498044448L, -8950510591543163139L}).toString());
        MmkvManager mmkvManager = MmkvManager.INSTANCE;
        if (mmkvManager.decodeSettingsBool(new ObfuscatedString(new long[]{7018007598423204542L, 5334778315591494085L, -1685578018842056714L}).toString())) {
            arrayListOf.add(new ObfuscatedString(new long[]{-4022353590939108014L, -7398879710522137576L, -2028261614045556972L}).toString());
            arrayListOf.add(currentVpnInterfaceAddressConfig.getIpv6Router());
        }
        if (mmkvManager.decodeSettingsBool(new ObfuscatedString(new long[]{8181925819254894214L, 7011644068107082398L, -2787979786135573443L, -3807865625706504537L}).toString())) {
            int parseInt = Utils.INSTANCE.parseInt(MmkvManager.decodeSettingsString(new ObfuscatedString(new long[]{4816266017305844550L, -3742729277485344486L, -2628622833023051746L, 4263022695836395522L}).toString()), Integer.parseInt(new ObfuscatedString(new long[]{2384491475476545117L, -7836330398361149641L}).toString()));
            arrayListOf.add(new ObfuscatedString(new long[]{-5937114402587443060L, 4088279396353267894L}).toString());
            arrayListOf.add("127.0.0.1:" + parseInt);
        }
        new ObfuscatedString(new long[]{-8225857031867313515L, -5344294864334068160L, -8743603456689210954L}).toString();
        arrayListOf.toString();
        try {
            ProcessBuilder processBuilder = new ProcessBuilder(arrayListOf);
            processBuilder.redirectErrorStream(true);
            this.process = processBuilder.directory(getApplicationContext().getFilesDir()).start();
            new Thread(new RunnableC1044x8c43c726(this, 11)).start();
            new ObfuscatedString(new long[]{2367915238363306122L, 2378744527406942691L, 871823692528218506L}).toString();
            Process process = this.process;
            if (process == null) {
                new ObfuscatedString(new long[]{-4848369156253337762L, 65468298216238874L}).toString();
                process = null;
            }
            Objects.toString(process);
            sendFd();
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{3725320097424800933L, -5756099840766404333L, -7178921376082430634L}).toString();
            new ObfuscatedString(new long[]{5599939844794328637L, 4731880449607453338L, -5452131303530125008L, -8224718912737251097L, 4441762429436358082L, -3205517771373310620L}).toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void runTun2socks$lambda$7(V2RayVpnService v2RayVpnService) {
        new ObfuscatedString(new long[]{-8153202526205254738L, -851889687945292097L, 3113661670483504387L}).toString();
        new ObfuscatedString(new long[]{3764926007102273702L, 9028489143576968355L, 7487576225533747374L, 5868278621433521904L}).toString();
        Process process = v2RayVpnService.process;
        if (process == null) {
            new ObfuscatedString(new long[]{-7210069638064274476L, -6782212893929638243L}).toString();
            process = null;
        }
        process.waitFor();
        new ObfuscatedString(new long[]{-449429309262441023L, -5053184835755890912L, 7147106183791402584L}).toString();
        new ObfuscatedString(new long[]{-3233708462395764874L, 2083158238318657722L, 2645862018857251134L, -5078715154644105760L}).toString();
        if (v2RayVpnService.isRunning) {
            new ObfuscatedString(new long[]{7054212249430877914L, 2540391887491363605L, -1849022699714194994L}).toString();
            new ObfuscatedString(new long[]{8883301597603939880L, 7340474537219546620L, -1171538470507578904L, 5568628817520098436L}).toString();
            v2RayVpnService.runTun2socks();
        }
    }

    private final void sendFd() {
        ParcelFileDescriptor parcelFileDescriptor = this.mInterface;
        if (parcelFileDescriptor == null) {
            new ObfuscatedString(new long[]{-8652985681118474558L, -57315936369807076L, 6102456562390071271L}).toString();
            parcelFileDescriptor = null;
        }
        FileDescriptor fileDescriptor = parcelFileDescriptor.getFileDescriptor();
        String absolutePath = new File(getApplicationContext().getFilesDir(), new ObfuscatedString(new long[]{7722175101348135495L, 9216362478277946409L, -694068227586095338L}).toString()).getAbsolutePath();
        new ObfuscatedString(new long[]{-6938891241128694676L, -5006401083364732703L, 2229384892290545212L}).toString();
        BuildersKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new V2RayVpnService$sendFd$1(absolutePath, fileDescriptor, null), 3, null);
    }

    private final void setup() {
        if (VpnService.prepare(this) != null || !setupVpnService()) {
            return;
        }
        runTun2socks();
    }

    private final boolean setupVpnService() {
        VpnService.Builder builder = new VpnService.Builder(this);
        SettingsManager settingsManager = SettingsManager.INSTANCE;
        VpnInterfaceAddressConfig currentVpnInterfaceAddressConfig = settingsManager.getCurrentVpnInterfaceAddressConfig();
        builder.setMtu(1500);
        builder.addAddress(currentVpnInterfaceAddressConfig.getIpv4Client(), 30);
        boolean routingRulesetsBypassLan = settingsManager.routingRulesetsBypassLan();
        if (routingRulesetsBypassLan) {
            Iterator<T> it = AppConfig.INSTANCE.getROUTED_IP_LIST().iterator();
            while (it.hasNext()) {
                List split$default = StringsKt__StringsKt.split$default((CharSequence) it.next(), new char[]{'/'}, false, 0, 6, (Object) null);
                builder.addRoute((String) split$default.get(0), Integer.parseInt((String) split$default.get(1)));
            }
        } else {
            Intrinsics.checkNotNull(builder.addRoute(new ObfuscatedString(new long[]{6855478620604726069L, -685613367651416200L}).toString(), 0));
        }
        if (MmkvManager.INSTANCE.decodeSettingsBool(new ObfuscatedString(new long[]{-1171800369587491144L, -1207779688285631819L, 8924907390033586434L}).toString())) {
            builder.addAddress(currentVpnInterfaceAddressConfig.getIpv6Client(), 126);
            if (routingRulesetsBypassLan) {
                builder.addRoute(new ObfuscatedString(new long[]{8833389786319693640L, 4416144253847587568L}).toString(), 3);
                builder.addRoute(new ObfuscatedString(new long[]{654310778057670688L, 1230865228782975229L}).toString(), 18);
            } else {
                builder.addRoute(new ObfuscatedString(new long[]{7436918702883810337L, -3367282162491367266L}).toString(), 0);
            }
        }
        for (String str : SettingsManager.INSTANCE.getVpnDnsServers()) {
            if (Utils.INSTANCE.isPureIpAddress(str)) {
                builder.addDnsServer(str);
            }
        }
        builder.setSession(V2RayServiceManager.INSTANCE.getRunningServerName());
        configurePerAppProxy(builder);
        try {
            ParcelFileDescriptor parcelFileDescriptor = this.mInterface;
            if (parcelFileDescriptor == null) {
                new ObfuscatedString(new long[]{-6430613300623521795L, 2745060709977336752L, 2734678530332179710L}).toString();
                parcelFileDescriptor = null;
            }
            parcelFileDescriptor.close();
        } catch (Exception unused) {
        }
        if (Build.VERSION.SDK_INT >= 28) {
            try {
                getConnectivity().requestNetwork(getDefaultNetworkRequest(), getDefaultNetworkCallback());
            } catch (Exception unused2) {
                new ObfuscatedString(new long[]{8725248711189313616L, -9028507640849497042L, 3856831440498238294L}).toString();
                new ObfuscatedString(new long[]{8491815853301372445L, -8857047522346895799L, -1463629625603993586L, 8348933905496937618L, 1124995261272873206L, 1780661320995880789L}).toString();
            }
        }
        if (Build.VERSION.SDK_INT >= 29) {
            builder.setMetered(false);
            if (MmkvManager.INSTANCE.decodeSettingsBool(new ObfuscatedString(new long[]{4074241909582178526L, -3606257848665959372L, -4027653324480204840L, -5170792322551765930L}).toString())) {
                builder.setHttpProxy(ProxyInfo.buildDirectProxy(new ObfuscatedString(new long[]{461009604653661894L, -7979990673137842343L, 5248331413633387687L}).toString(), SettingsManager.INSTANCE.getHttpPort()));
            }
        }
        try {
            ParcelFileDescriptor establish = builder.establish();
            Intrinsics.checkNotNull(establish);
            this.mInterface = establish;
            this.isRunning = true;
            return true;
        } catch (Exception unused3) {
            new ObfuscatedString(new long[]{-2593592080933990036L, 1453135085157914996L, -1580707387583995258L}).toString();
            new ObfuscatedString(new long[]{2579613591387509091L, -3146406849979400001L, -3816041629499371004L, -344339527569832855L, 7792426859038996955L, -1804046950173235860L}).toString();
            stopV2Ray$default(this, false, 1, null);
            return false;
        }
    }

    private final void stopV2Ray(boolean isForced) {
        this.isRunning = false;
        if (Build.VERSION.SDK_INT >= 28) {
            try {
                getConnectivity().unregisterNetworkCallback(getDefaultNetworkCallback());
            } catch (Exception unused) {
            }
        }
        ParcelFileDescriptor parcelFileDescriptor = null;
        try {
            new ObfuscatedString(new long[]{-7605999530046592342L, -6451418415213879691L, 1394947362202477679L}).toString();
            new ObfuscatedString(new long[]{4860128000427867731L, 9100261481799844666L, -17407434390527300L, 562528031987140942L}).toString();
            Process process = this.process;
            if (process == null) {
                new ObfuscatedString(new long[]{4357175820712592749L, -7665483016683588084L}).toString();
                process = null;
            }
            process.destroy();
        } catch (Exception unused2) {
            new ObfuscatedString(new long[]{1171135285844422174L, 8860209073699527729L, -6575607007399413082L}).toString();
            new ObfuscatedString(new long[]{-3373286322847399585L, -1259749195215146813L, -7037144509793230631L, 3801194222449285024L, -8288054965042206457L, -5668851333539334270L, -5019694199045980899L}).toString();
        }
        V2RayServiceManager.INSTANCE.stopCoreLoop();
        if (isForced) {
            stopSelf();
            try {
                ParcelFileDescriptor parcelFileDescriptor2 = this.mInterface;
                if (parcelFileDescriptor2 == null) {
                    new ObfuscatedString(new long[]{4073444704980148995L, 2054772287420038336L, -7284559909483514039L}).toString();
                } else {
                    parcelFileDescriptor = parcelFileDescriptor2;
                }
                parcelFileDescriptor.close();
            } catch (Exception unused3) {
                new ObfuscatedString(new long[]{4509038194988286712L, 6139914303339786948L, -8101492359269363659L}).toString();
                new ObfuscatedString(new long[]{-4824887486725348496L, 8703745694456605545L, 4055430734772086830L, -4580853021370333610L, 8016513542415578098L}).toString();
            }
        }
    }

    public static /* synthetic */ void stopV2Ray$default(V2RayVpnService v2RayVpnService, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        v2RayVpnService.stopV2Ray(z);
    }

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
    public void onCreate() {
        super.onCreate();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(new ObfuscatedString(new long[]{518108065160321779L, -6844448568396548151L}).toString());
        intentFilter.addAction(new ObfuscatedString(new long[]{-2749793334947709327L, -4743574093903280207L, 7617612816780643498L}).toString());
        if (Build.VERSION.SDK_INT >= 33) {
            AbstractC1026x65ee1cd8.m3675xe28a696a(this, this.broadcastReceiver, intentFilter);
        } else {
            registerReceiver(this.broadcastReceiver, intentFilter);
        }
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().permitAll().build());
        V2RayServiceManager.INSTANCE.setServiceControl(new SoftReference<>(this));
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.broadcastReceiver);
        NotificationService.INSTANCE.cancelNotification();
    }

    @Override // android.net.VpnService
    public void onRevoke() {
        stopV2Ray$default(this, false, 1, null);
    }

    @Override // android.app.Service
    public int onStartCommand(@Nullable Intent intent, int flags, int startId) {
        if (V2RayServiceManager.INSTANCE.startCoreLoop()) {
            startService();
            return 1;
        }
        return 1;
    }

    @Override // com.v2ray.ang.service.ServiceControl
    public void startService() {
        setup();
    }

    @Override // com.v2ray.ang.service.ServiceControl
    public void stopService() {
        stopV2Ray(true);
    }

    @Override // com.v2ray.ang.service.ServiceControl
    public boolean vpnProtect(int socket) {
        return protect(socket);
    }
}
