package com.tknetwork.tunnel.activities;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.graphics.Color;
import android.net.VpnService;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.StrictMode;
import android.security.KeyChain;
import android.text.TextUtils;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.Toast;
import androidx.activity.ComponentActivity;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.preference.PreferenceManager;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import app.tunnel.vpncommons.utils.FileUtils;
import com.fbd.tunnel.R;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;
import com.google.android.ump.ConsentForm;
import com.google.android.ump.ConsentInformation;
import com.google.android.ump.ConsentRequestParameters;
import com.google.android.ump.FormError;
import com.google.android.ump.UserMessagingPlatform;
import com.panda912.muddy.ObfuscatedString;
import com.tencent.mmkv.MMKV;
import com.tknetwork.tunnel.activities.MainBaseActivity;
import com.tknetwork.tunnel.service.TunnelVPN;
import com.tknetwork.tunnel.service.c_05;
import com.tknetwork.tunnel.utils.c_11;
import com.tknetwork.tunnel.utils.c_12;
import com.v2ray.ang.extension._ExtKt;
import com.v2ray.ang.handler.MmkvManager;
import com.v2ray.ang.service.V2RayServiceManager;
import com.v2ray.ang.viewmodel.MainViewModel;
import config.ConfigUtil;
import de.blinkt.openvpn.core.TkLogStatus;
import defpackage.AbstractC0919x86d1e2e2;
import defpackage.C0350x95f25580;
import defpackage.C0370x5ac5058d;
import defpackage.C0955xd0e9233c;
import defpackage.DialogInterfaceOnClickListenerC0519xdc2f50a1;
import j$.util.Objects;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import net.openvpn.openvpn.PrefUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Metadata(d1 = {"\u0000ì\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u0000 \u0097\u00012\u00020\u00012\u00020\u00022\u00020\u0003:\u0004\u0096\u0001\u0097\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0011\u001a\u00020\u0012H\u0002J\u0006\u0010 \u001a\u00020\u0012J\b\u0010!\u001a\u00020\u0012H\u0002J\u0006\u0010\"\u001a\u00020\u0012J\u0006\u0010#\u001a\u00020\u0012J\u0006\u0010$\u001a\u00020\u0012J\u0012\u0010%\u001a\u00020\u00122\b\u0010&\u001a\u0004\u0018\u00010'H\u0016J\u0012\u00101\u001a\u0004\u0018\u0001022\u0006\u00103\u001a\u000204H\u0004J\u0012\u00108\u001a\u0002092\b\u0010:\u001a\u0004\u0018\u00010;H\u0002J\u0012\u0010<\u001a\u00020\u00122\b\u0010=\u001a\u0004\u0018\u000109H\u0014J\b\u0010>\u001a\u00020\u0012H\u0004J\b\u0010?\u001a\u00020\u0012H\u0004J\b\u0010@\u001a\u00020\u0012H\u0004J\b\u0010A\u001a\u00020\u0012H\u0004J\b\u0010B\u001a\u00020\u0012H\u0016J\b\u0010C\u001a\u00020\u0012H\u0014J\u0010\u0010D\u001a\u00020\u00122\u0006\u0010E\u001a\u00020FH\u0016J\u0010\u0010G\u001a\u00020\u00122\u0006\u0010H\u001a\u00020IH\u0016J\u0012\u0010J\u001a\u0004\u0018\u00010K2\u0006\u0010L\u001a\u000204H\u0016J\b\u0010M\u001a\u00020\u0018H\u0004J\u000e\u0010N\u001a\b\u0018\u00010OR\u00020\u0007H\u0004J\u000e\u0010P\u001a\b\u0018\u00010QR\u00020\u0007H\u0004J\n\u0010R\u001a\u0004\u0018\u00010SH\u0004J\n\u0010T\u001a\u0004\u0018\u00010FH\u0004J\n\u0010U\u001a\u0004\u0018\u00010FH\u0004J\u000e\u0010V\u001a\n\u0012\u0004\u0012\u00020I\u0018\u00010WJ\b\u0010X\u001a\u00020\u0012H\u0004J\b\u0010Y\u001a\u00020\u0012H\u0004J\u0010\u0010Z\u001a\u0002092\u0006\u0010[\u001a\u000209H\u0004J¬\u0001\u0010\\\u001a\u00020\u00122\u0006\u0010]\u001a\u0002092\b\u0010^\u001a\u0004\u0018\u0001092\b\u0010_\u001a\u0004\u0018\u0001092\b\u0010`\u001a\u0004\u0018\u0001092\b\u0010a\u001a\u0004\u0018\u0001092\b\u0010b\u001a\u0004\u0018\u0001092\b\u0010c\u001a\u0004\u0018\u0001092\u0006\u0010d\u001a\u00020\u00182\b\u0010e\u001a\u0004\u0018\u0001092\b\u0010f\u001a\u0004\u0018\u0001092\b\u0010g\u001a\u0004\u0018\u0001092\b\u0010h\u001a\u0004\u0018\u0001092\b\u0010i\u001a\u0004\u0018\u0001092\b\u0010j\u001a\u0004\u0018\u0001092\b\u0010k\u001a\u0004\u0018\u0001092\u0006\u0010l\u001a\u00020\u00182\b\u0010m\u001a\u0004\u0018\u000109H\u0004J\u000e\u0010n\u001a\u00020\u00122\u0006\u0010o\u001a\u000204J\u000e\u0010p\u001a\u00020\u00122\u0006\u0010o\u001a\u000204J\u0010\u0010q\u001a\u00020r2\u0006\u0010s\u001a\u00020\u0018H\u0004J\u0010\u0010t\u001a\u00020\u00122\u0006\u0010s\u001a\u00020\u0018H\u0004J\u001e\u0010u\u001a\u00020\u00122\f\u0010v\u001a\b\u0018\u00010OR\u00020\u00072\u0006\u0010w\u001a\u00020xH\u0004J\u0010\u0010y\u001a\u00020\u00122\u0006\u0010z\u001a\u000209H\u0004J\u0012\u0010{\u001a\u00020\u00122\b\u0010|\u001a\u0004\u0018\u000109H\u0016J(\u0010{\u001a\u00020\u00122\b\u0010}\u001a\u0004\u0018\u0001092\b\u0010~\u001a\u0004\u0018\u0001092\n\b\u0002\u0010D\u001a\u0004\u0018\u00010\u007fH\u0016J\u0011\u0010\u0080\u0001\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000eH\u0004J\u0012\u0010\u0081\u0001\u001a\u0002092\u0007\u0010\u0082\u0001\u001a\u000204H\u0004J\u0007\u0010\u0083\u0001\u001a\u00020\u0012J\t\u0010\u008a\u0001\u001a\u00020\u0012H\u0004J\u0013\u0010\u008b\u0001\u001a\u00020\u00122\b\u0010^\u001a\u0004\u0018\u000109H\u0002J\t\u0010\u008c\u0001\u001a\u00020\u0012H\u0002J\t\u0010\u0091\u0001\u001a\u00020\u0012H\u0002J\u0007\u0010\u0092\u0001\u001a\u00020\u0012J\u0007\u0010\u0093\u0001\u001a\u00020\u0012R\"\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007@BX\u0084\u000e¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0004\n\u0002\b\u001fR\u000e\u0010(\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010*\u001a\u0004\u0018\u00010+8\u0004@\u0004X\u0085\u000e¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010-\u001a\u0004\u0018\u00010.8DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b/\u00100R\u0016\u00105\u001a\u0004\u0018\u0001028TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b6\u00107R!\u0010\u0084\u0001\u001a\u00030\u0085\u00018FX\u0086\u0084\u0002¢\u0006\u0010\n\u0006\b\u0088\u0001\u0010\u0089\u0001\u001a\u0006\b\u0086\u0001\u0010\u0087\u0001R \u0010\u008d\u0001\u001a\u0002098BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0090\u0001\u0010\u0089\u0001\u001a\u0006\b\u008e\u0001\u0010\u008f\u0001R\u0016\u0010\u0094\u0001\u001a\t\u0012\u0004\u0012\u00020r0\u0095\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0098\u0001"}, d2 = {"Lcom/tknetwork/tunnel/activities/MainBaseActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Lcom/tknetwork/tunnel/service/TunnelVPN$InjectorListener;", "Lcom/tknetwork/tunnel/service/c_05$EventReceiver;", "<init>", "()V", "value", "Lcom/tknetwork/tunnel/service/c_05;", "openVPNService", "getOpenVPNService", "()Lcom/tknetwork/tunnel/service/c_05;", "mConfig", "Lconfig/ConfigUtil;", "prefs", "Lnet/openvpn/openvpn/PrefUtil;", "settingsStorage", "Lcom/tencent/mmkv/MMKV;", "getSettingsStorage", "", "editor", "Landroid/content/SharedPreferences$Editor;", "myPrefs", "Landroid/content/SharedPreferences;", "isPremium", "", "consentInformation", "Lcom/google/android/ump/ConsentInformation;", "isMobileAdsInitializeCalled", "Ljava/util/concurrent/atomic/AtomicBoolean;", "interstitialAd", "Lcom/google/android/gms/ads/interstitial/InterstitialAd;", "interstitialAd$1", "recquestConsentform", "initializeMobileAdsSdk", "loadAdsView", "loadInterstitial", "showInterstitial", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "mConnection", "Landroid/content/ServiceConnection;", "mInjector", "Lcom/tknetwork/tunnel/service/TunnelVPN;", "mInjectorConnection", "jSONObject", "Lorg/json/JSONObject;", "getJSONObject", "()Lorg/json/JSONObject;", "getServersArray", "Lorg/json/JSONArray;", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "", "networksArray", "getNetworksArray", "()Lorg/json/JSONArray;", "readStream", "", "in", "Ljava/io/InputStream;", "showToast", "str", "doBindService", "dobindInjector", "doUnbindService", "unbindInjector", "startOpenVPN", "post_bind", NotificationCompat.CATEGORY_EVENT, "ev", "Lcom/tknetwork/tunnel/service/c_05$EventMsg;", "log", "lm", "Lcom/tknetwork/tunnel/service/c_05$LogMsg;", "get_configure_intent", "Landroid/app/PendingIntent;", "requestCode", "is_active", "current_profile", "Lcom/tknetwork/tunnel/service/c_05$Profile;", "profile_list", "Lcom/tknetwork/tunnel/service/c_05$ProfileList;", "get_connection_stats", "Lcom/tknetwork/tunnel/service/c_05$ConnectionStats;", "get_last_event", "get_last_event_prof_manage", "log_history", "Ljava/util/ArrayDeque;", "jellyBeanHackPurge", "gen_ui_reset_event", "get_gui_version", "name", "submitConnectIntent", "profile_name", "server", "vpn_proto", "ipv6", "conn_timeout", "username", "password", "cache_password", "pk_password", "response", "epki_alias", "compression_mode", "proxy_name", "proxy_username", "proxy_password", "proxy_allow_creds_dialog", "gui_version", "setStatusBarColor", TypedValues.Custom.S_COLOR, "setNavBarColor", "buildDisconnectIntent", "Landroid/content/Intent;", "stop_service", "submitDisconnectIntent", "resolveExternalPkiAlias", "prof", "next_action", "Lcom/tknetwork/tunnel/activities/MainBaseActivity$EpkiPost;", "import_pkcs12", "path", "ok_dialog", "text", "title", "message", "Ljava/lang/Runnable;", "init_default_preferences", "resString", "res_id", "setUiColor", "mainViewModel", "Lcom/v2ray/ang/viewmodel/MainViewModel;", "getMainViewModel", "()Lcom/v2ray/ang/viewmodel/MainViewModel;", "mainViewModel$delegate", "Lkotlin/Lazy;", "loadV2rayConfig", "importBatchConfig", "initGroupTab", "editGuid", "getEditGuid", "()Ljava/lang/String;", "editGuid$delegate", "startV2Ray", "restartV2Ray", "stoptV2Ray", "requestVpnPermission", "Landroidx/activity/result/ActivityResultLauncher;", "EpkiPost", "Companion", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMainBaseActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainBaseActivity.kt\ncom/tknetwork/tunnel/activities/MainBaseActivity\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n*L\n1#1,824:1\n70#2,11:825\n*S KotlinDebug\n*F\n+ 1 MainBaseActivity.kt\ncom/tknetwork/tunnel/activities/MainBaseActivity\n*L\n738#1:825,11\n*E\n"})
/* loaded from: classes3.dex */
public abstract class MainBaseActivity extends AppCompatActivity implements TunnelVPN.InjectorListener, c_05.EventReceiver {

    @Nullable
    private static InterstitialAd interstitialAd;

    @Nullable
    private ConsentInformation consentInformation;

    @Nullable
    private SharedPreferences.Editor editor;

    /* renamed from: interstitialAd$1, reason: from kotlin metadata */
    @Nullable
    private InterstitialAd interstitialAd;
    private boolean isPremium;

    @JvmField
    @Nullable
    public ConfigUtil mConfig;

    @JvmField
    @Nullable
    protected TunnelVPN mInjector;

    /* renamed from: mainViewModel$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy mainViewModel;

    @Nullable
    private SharedPreferences myPrefs;

    @Nullable
    private c_05 openVPNService;

    @Nullable
    private PrefUtil prefs;

    @Nullable
    private MMKV settingsStorage;

    @NotNull
    protected static final String TAG = new ObfuscatedString(new long[]{-6954930439047698757L, -8471577959291951901L, -573618839493915089L}).toString();

    @NotNull
    private final AtomicBoolean isMobileAdsInitializeCalled = new AtomicBoolean(false);

    @NotNull
    private final ServiceConnection mConnection = new ServiceConnection() { // from class: com.tknetwork.tunnel.activities.MainBaseActivity$mConnection$1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName className, IBinder service) {
            Intrinsics.checkNotNullParameter(className, new ObfuscatedString(new long[]{5429074391361506755L, -7504217575547974426L, 1083826162375060603L}).toString());
            Intrinsics.checkNotNullParameter(service, new ObfuscatedString(new long[]{4987873396465710298L, 6948338042487241496L}).toString());
            MainBaseActivity.this.openVPNService = ((c_05.LocalBinder) service).getService();
            new ObfuscatedString(new long[]{3482182061874724257L, -3095115076237347135L, 3924356851634363143L}).toString();
            Objects.toString(MainBaseActivity.this.getOpenVPNService());
            c_05 openVPNService = MainBaseActivity.this.getOpenVPNService();
            Intrinsics.checkNotNull(openVPNService);
            openVPNService.client_attach(MainBaseActivity.this);
            MainBaseActivity.this.post_bind();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName className) {
            Intrinsics.checkNotNullParameter(className, new ObfuscatedString(new long[]{8762438974121953100L, -2453762245824567394L, 9053545695754518088L}).toString());
            new ObfuscatedString(new long[]{-4611288215183459295L, -29826410220037122L, 4345368215292589625L}).toString();
            new ObfuscatedString(new long[]{6958868831754314881L, -8363108450892211173L, -3770049424597374218L, -7034555451052050039L, -8082047806385104675L}).toString();
            MainBaseActivity.this.openVPNService = null;
        }
    };

    @NotNull
    private final ServiceConnection mInjectorConnection = new ServiceConnection() { // from class: com.tknetwork.tunnel.activities.MainBaseActivity$mInjectorConnection$1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName p1, IBinder p2) {
            Intrinsics.checkNotNullParameter(p1, new ObfuscatedString(new long[]{7656060869776243609L, -6806013036269576456L}).toString());
            Intrinsics.checkNotNullParameter(p2, new ObfuscatedString(new long[]{5871594331357322449L, 7845601207375910812L}).toString());
            MainBaseActivity.this.mInjector = ((TunnelVPN.MyBinder) p2).getService();
            TunnelVPN tunnelVPN = MainBaseActivity.this.mInjector;
            Intrinsics.checkNotNull(tunnelVPN);
            tunnelVPN.setInjectorListener(MainBaseActivity.this);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName p1) {
            Intrinsics.checkNotNullParameter(p1, new ObfuscatedString(new long[]{3422111269136216562L, 6513812146033488203L}).toString());
            MainBaseActivity.this.mInjector = null;
        }
    };

    /* renamed from: editGuid$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy editGuid = AbstractC0919x86d1e2e2.lazy(new C0350x95f25580(this, 10));

    @NotNull
    private final ActivityResultLauncher<Intent> requestVpnPermission = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new C0955xd0e9233c(this));

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bd\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/tknetwork/tunnel/activities/MainBaseActivity$EpkiPost;", "", "post_dispatch", "", "str", "", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public interface EpkiPost {
        void post_dispatch(@Nullable String str);
    }

    public MainBaseActivity() {
        final Function0 function0 = null;
        this.mainViewModel = new ViewModelLazy(Reflection.getOrCreateKotlinClass(MainViewModel.class), new Function0<ViewModelStore>() { // from class: com.tknetwork.tunnel.activities.MainBaseActivity$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return ComponentActivity.this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.tknetwork.tunnel.activities.MainBaseActivity$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                return ComponentActivity.this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.tknetwork.tunnel.activities.MainBaseActivity$special$$inlined$viewModels$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final CreationExtras invoke() {
                CreationExtras creationExtras;
                Function0 function02 = Function0.this;
                return (function02 == null || (creationExtras = (CreationExtras) function02.invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
    }

    public static final String editGuid_delegate$lambda$4(MainBaseActivity mainBaseActivity) {
        String stringExtra = mainBaseActivity.getIntent().getStringExtra(new ObfuscatedString(new long[]{-5057116953934359257L, 5805861571080714974L}).toString());
        if (stringExtra == null) {
            return new ObfuscatedString(new long[]{-1609664567413961720L}).toString();
        }
        return stringExtra;
    }

    private final String getEditGuid() {
        return (String) this.editGuid.getValue();
    }

    private final void getSettingsStorage() {
        if (this.settingsStorage == null) {
            this.settingsStorage = MMKV.mmkvWithID(new ObfuscatedString(new long[]{2462380406801486477L, -6336256108338576949L}).toString(), 2);
        }
    }

    private final void importBatchConfig(String server) {
        BuildersKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), Dispatchers.getIO(), null, new MainBaseActivity$importBatchConfig$1(server, this, null), 2, null);
    }

    public final void initGroupTab() {
        Pair<List<String>, List<String>> subscriptions = getMainViewModel().getSubscriptions(this);
        subscriptions.component1();
        subscriptions.component2();
    }

    private final void initializeMobileAdsSdk() {
        if (this.isMobileAdsInitializeCalled.getAndSet(true)) {
            return;
        }
        new AppOpenManager(getApplication(), new ObfuscatedString(new long[]{6710013492728631093L, -8933730355710061271L, 2366978668911403959L, 5907470204002662680L, -7483229677222663632L, -1672798947250318865L}).toString());
        loadAdsView();
        loadInterstitial();
        loadAdsView();
    }

    public static /* synthetic */ void ok_dialog$default(MainBaseActivity mainBaseActivity, String str, String str2, Runnable runnable, int i, Object obj) {
        if (obj == null) {
            if ((i & 4) != 0) {
                runnable = null;
            }
            mainBaseActivity.ok_dialog(str, str2, runnable);
            return;
        }
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{4209509361416169089L, -4713658642347127456L, -3177078110277623856L, -212095170015751117L, -6698605824637628478L, -785383309367753707L, 7389074830330450582L, 3982062035331410403L, 5466831399219343163L, -1996561792016965172L, 7647583945685435637L, -4659515831770168421L}).toString());
    }

    public static final void ok_dialog$lambda$3(Runnable runnable, DialogInterface dialogInterface, int i) {
        if (runnable != null) {
            runnable.run();
        }
    }

    private final String readStream(InputStream in) {
        StringBuilder sb = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(in));
            char[] cArr = new char[1024];
            while (true) {
                int read = bufferedReader.read(cArr, 0, 1024);
                if (read <= 0) {
                    break;
                }
                sb.append(cArr, 0, read);
            }
        } catch (Exception unused) {
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, new ObfuscatedString(new long[]{7700330861884257969L, 9052400144202998389L, 4895516568177451165L}).toString());
        return sb2;
    }

    public static final void recquestConsentform$lambda$1(MainBaseActivity mainBaseActivity) {
        UserMessagingPlatform.loadAndShowConsentFormIfRequired(mainBaseActivity, new ConsentForm.OnConsentFormDismissedListener() { // from class: 딐돶뎬딞돨딌듬뒹땡뒨돛둘땰땵돵됨땠딠둡둑딎딞됨뒛땨딌딀뒋된땣딽딐뒘듼땍듔뎨됫될된뒘땄뒛땲됴땠땡땁뒝땫둬땯뒷뎡뒤될뎬땜뎽딎둠딞뒋뎠돠따돛땹듌될돶듬뎽땪듬둔뎬듼뎽딠둥도뎹땀뒉뎠딁뎡땫땳딹땔뒐땍뒀뒵뎸딨돝딄둘땻된뒨돳딸돵땝뎬땣땥땪땐딅둠두들됨든땜둥됨둣땱딽뒾땧돳돰돳
            @Override // com.google.android.ump.ConsentForm.OnConsentFormDismissedListener
            public final void onConsentFormDismissed(FormError formError) {
                MainBaseActivity.recquestConsentform$lambda$1$lambda$0(MainBaseActivity.this, formError);
            }
        });
    }

    public static final void recquestConsentform$lambda$1$lambda$0(MainBaseActivity mainBaseActivity, FormError formError) {
        if (formError != null) {
            new ObfuscatedString(new long[]{-4300860252179822144L, 1892468361481190840L, -4768642341291754913L}).toString();
            String.format(new ObfuscatedString(new long[]{-9195092525275771601L, -5909711212784874255L}).toString(), Integer.valueOf(formError.getErrorCode()), formError.getMessage());
        }
        ConsentInformation consentInformation = mainBaseActivity.consentInformation;
        Intrinsics.checkNotNull(consentInformation);
        if (consentInformation.canRequestAds()) {
            mainBaseActivity.initializeMobileAdsSdk();
        }
    }

    public static final void recquestConsentform$lambda$2(FormError formError) {
        new ObfuscatedString(new long[]{-5203883432630429281L, 3146959614464275669L, 8729807139524728661L}).toString();
        String.format(new ObfuscatedString(new long[]{5158769780348409966L, 6143806263099627883L}).toString(), Integer.valueOf(formError.getErrorCode()), formError.getMessage());
    }

    public static final void requestVpnPermission$lambda$5(MainBaseActivity mainBaseActivity, ActivityResult activityResult) {
        Intrinsics.checkNotNullParameter(activityResult, new ObfuscatedString(new long[]{-7175779342849182328L, -6520510098698192815L}).toString());
        if (activityResult.getResultCode() == -1) {
            mainBaseActivity.startV2Ray();
        }
    }

    private final void startV2Ray() {
        String selectServer = MmkvManager.getSelectServer();
        if (selectServer != null && selectServer.length() != 0) {
            V2RayServiceManager.startVService$default(this, null, 2, null);
        } else {
            _ExtKt.toast(this, new ObfuscatedString(new long[]{4344413177017454489L, -2781825689499516180L, 444012558773588054L, 1380679023435712525L, -8428684784660675821L}).toString());
        }
    }

    /* renamed from: 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠 */
    public static /* synthetic */ void m1480x1db10c9d(FormError formError) {
        recquestConsentform$lambda$2(formError);
    }

    @NotNull
    public final Intent buildDisconnectIntent(boolean stop_service) {
        Intent putExtra = new Intent(this, (Class<?>) c_05.class).setAction(new ObfuscatedString(new long[]{2550410459783931709L, 7836549875450748395L, -1944563407833036669L, -3173123778249626956L, 5198422196735696315L}).toString()).putExtra(new ObfuscatedString(new long[]{1020643597900761343L, 1960802978784803266L, -7292216254887792412L, -5828543455734337180L}).toString(), stop_service);
        Intrinsics.checkNotNullExpressionValue(putExtra, new ObfuscatedString(new long[]{-7204128703058006615L, -4497053874479691253L, -9103358601882517908L}).toString());
        return putExtra;
    }

    @Nullable
    public final c_05.Profile current_profile() {
        c_05 c_05Var = this.openVPNService;
        if (c_05Var != null) {
            Intrinsics.checkNotNull(c_05Var);
            return c_05Var.get_current_profile();
        }
        return null;
    }

    public final void doBindService() {
        bindService(new Intent(this, (Class<?>) c_05.class).setAction(new ObfuscatedString(new long[]{-6436878516949825395L, 5729842407379374251L, -6768638185863483733L, -3061646831715904305L}).toString()), this.mConnection, 65);
    }

    public final void doUnbindService() {
        new ObfuscatedString(new long[]{-5724451028559912889L, 63845396491477516L, 761816289234216097L}).toString();
        new ObfuscatedString(new long[]{4408923919556806697L, -7640662876525797055L, 1782667547161989139L, -4493735057972304798L}).toString();
        c_05 c_05Var = this.openVPNService;
        if (c_05Var != null) {
            Intrinsics.checkNotNull(c_05Var);
            c_05Var.client_detach(this);
            unbindService(this.mConnection);
            this.openVPNService = null;
        }
    }

    public final void dobindInjector() {
        bindService(new Intent(this, (Class<?>) TunnelVPN.class), this.mInjectorConnection, 1);
    }

    public void event(@NotNull c_05.EventMsg eventMsg) {
        Intrinsics.checkNotNullParameter(eventMsg, new ObfuscatedString(new long[]{6626347695270342505L, 4616871967360337594L}).toString());
    }

    public final void gen_ui_reset_event() {
        c_05 c_05Var = this.openVPNService;
        if (c_05Var != null) {
            Intrinsics.checkNotNull(c_05Var);
            c_05Var.gen_ui_reset_event(true, this);
        }
    }

    @Nullable
    public final JSONObject getJSONObject() {
        File file = new File(getFilesDir(), new ObfuscatedString(new long[]{-8528493769580141191L, 4046828443413135368L, 5417466749266689943L}).toString());
        try {
            if (file.exists()) {
                return new JSONObject(readStream(new FileInputStream(file)));
            }
            return new JSONObject(c_12.Parser.d_01(new c_11().conf));
        } catch (Exception unused) {
            return null;
        }
    }

    @NotNull
    public final MainViewModel getMainViewModel() {
        return (MainViewModel) this.mainViewModel.getValue();
    }

    @Nullable
    public JSONArray getNetworksArray() {
        try {
            JSONObject jSONObject = getJSONObject();
            Intrinsics.checkNotNull(jSONObject);
            return jSONObject.getJSONArray(new ObfuscatedString(new long[]{-5232575050649351180L, 4010778530414254068L}).toString());
        } catch (Exception unused) {
            return null;
        }
    }

    @Nullable
    public final c_05 getOpenVPNService() {
        return this.openVPNService;
    }

    @Nullable
    public final JSONArray getServersArray(int r10) {
        try {
            JSONObject jSONObject = getJSONObject();
            Intrinsics.checkNotNull(jSONObject);
            JSONArray jSONArray = jSONObject.getJSONArray(new ObfuscatedString(new long[]{-5749636616671220369L, 6509037381950761978L}).toString());
            JSONArray jSONArray2 = new JSONArray();
            if (jSONArray.length() > 0) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(new ObfuscatedString(new long[]{6035734331794283546L, -6778764439632414105L}).toString(), new ObfuscatedString(new long[]{-8886277039942733729L, 7532203505462586721L, 205403803363495088L}).toString());
                jSONObject2.put(new ObfuscatedString(new long[]{-7581966070545439751L, -3092864923977801970L}).toString(), new ObfuscatedString(new long[]{-8339757528856846319L, -1422345115785944849L}).toString());
                jSONArray2.put(jSONObject2);
            }
            PrefUtil prefUtil = this.prefs;
            Intrinsics.checkNotNull(prefUtil);
            String str = prefUtil.get_string(new ObfuscatedString(new long[]{-7874425174788149959L, -6323097860048658341L, -7474086660960975165L}).toString());
            if (!TextUtils.isEmpty(str)) {
                JSONObject jSONObject3 = new JSONObject(c_12.Parser.d_01(str));
                if (r10 == jSONObject3.optInt(new ObfuscatedString(new long[]{4196162254004287693L, -5770355192801344208L, 138830525624023971L}).toString(), -1)) {
                    jSONArray2.put(jSONObject3);
                }
            }
            PrefUtil prefUtil2 = this.prefs;
            Intrinsics.checkNotNull(prefUtil2);
            String str2 = prefUtil2.get_string(new ObfuscatedString(new long[]{3293258414491017275L, -6826839886776909008L, 7285729675168607534L}).toString());
            if (!TextUtils.isEmpty(str2)) {
                JSONObject jSONObject4 = new JSONObject(c_12.Parser.d_01(str2));
                if (r10 == jSONObject4.optInt(new ObfuscatedString(new long[]{-6310595343116217436L, 4815070379774948568L, 8168637820581900439L}).toString(), -1)) {
                    jSONArray2.put(jSONObject4);
                }
            }
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObject5 = jSONArray.getJSONObject(i);
                if (jSONObject5.optInt(new ObfuscatedString(new long[]{-4851394134709101194L, 2918567031022233980L, 1117545724771365476L}).toString(), -1) == r10) {
                    jSONArray2.put(jSONObject5);
                }
            }
            return jSONArray2;
        } catch (Exception unused) {
            return null;
        }
    }

    @Nullable
    public PendingIntent get_configure_intent(int requestCode) {
        return null;
    }

    @Nullable
    public final c_05.ConnectionStats get_connection_stats() {
        c_05 c_05Var = this.openVPNService;
        if (c_05Var != null) {
            Intrinsics.checkNotNull(c_05Var);
            return c_05Var.get_connection_stats();
        }
        return null;
    }

    @NotNull
    public final String get_gui_version(@NotNull String name) {
        int i;
        Intrinsics.checkNotNullParameter(name, new ObfuscatedString(new long[]{3447307899763457493L, 6404542433278660556L}).toString());
        String obfuscatedString = new ObfuscatedString(new long[]{-2906010132211726500L, 7232048639384349394L}).toString();
        try {
            PackageInfo packageInfo = getPackageManager().getPackageInfo(getPackageName(), 0);
            obfuscatedString = String.valueOf(packageInfo.versionName);
            i = packageInfo.versionCode;
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{-4511618610747270896L, 2909819859031035198L, 7442973729421565362L}).toString();
            new ObfuscatedString(new long[]{62082664709728582L, -2005705336026664362L, -1758674095282873804L, 8319157600035570254L, -122586978184140456L}).toString();
            i = 0;
        }
        String format = String.format(new ObfuscatedString(new long[]{8434468669001745498L, 4538553821682169333L}).toString(), Arrays.copyOf(new Object[]{name, obfuscatedString, Integer.valueOf(i)}, 3));
        Intrinsics.checkNotNullExpressionValue(format, new ObfuscatedString(new long[]{-8141248831512807851L, -3734941035666548478L, 92592298386044506L}).toString());
        return format;
    }

    @Nullable
    public final c_05.EventMsg get_last_event() {
        c_05 c_05Var = this.openVPNService;
        if (c_05Var != null) {
            Intrinsics.checkNotNull(c_05Var);
            return c_05Var.get_last_event();
        }
        return null;
    }

    @Nullable
    public final c_05.EventMsg get_last_event_prof_manage() {
        c_05 c_05Var = this.openVPNService;
        if (c_05Var != null) {
            Intrinsics.checkNotNull(c_05Var);
            return c_05Var.get_last_event_prof_manage();
        }
        return null;
    }

    public final void import_pkcs12(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, new ObfuscatedString(new long[]{-4197304279594079255L, 6381352496269248452L}).toString());
        jellyBeanHackPurge();
        try {
            Intent createInstallIntent = KeyChain.createInstallIntent();
            Intrinsics.checkNotNullExpressionValue(createInstallIntent, new ObfuscatedString(new long[]{3798529973849294712L, -5374393653742742852L, 8802167931783096003L, 7146181813785096507L}).toString());
            createInstallIntent.putExtra(new ObfuscatedString(new long[]{-7815902940991518395L, -1475626901133837720L}).toString(), FileUtils.readFileByteArray(path, 262144L));
            startActivity(createInstallIntent);
        } catch (IOException unused) {
            String format = String.format(new ObfuscatedString(new long[]{-6566527639467798033L, -1762890982462486876L, -365522087685184134L}).toString(), Arrays.copyOf(new Object[]{path, getText(R.string.file_read_error)}, 2));
            Intrinsics.checkNotNullExpressionValue(format, new ObfuscatedString(new long[]{994438292612592809L, -1598002952297178542L, 8057128629278875619L}).toString());
            ok_dialog(format);
        }
    }

    public final void init_default_preferences(@NotNull PrefUtil prefs) {
        Intrinsics.checkNotNullParameter(prefs, new ObfuscatedString(new long[]{-8703110986538194735L, 5670766769617308318L}).toString());
        if (!prefs.contains_key(new ObfuscatedString(new long[]{-8388195978868334684L, -7040120252429632842L, 759086516156879508L}).toString())) {
            prefs.set_string(new ObfuscatedString(new long[]{-7347372803341218214L, -4434941227563075496L, -4482198025899635436L}).toString(), new ObfuscatedString(new long[]{6470241339935851353L, -7725266057257334102L}).toString());
        }
        if (!prefs.contains_key(new ObfuscatedString(new long[]{7634487746805589820L, -5728582520812099258L}).toString())) {
            prefs.set_string(new ObfuscatedString(new long[]{-9170479327378562270L, -5206263186061370011L}).toString(), new ObfuscatedString(new long[]{-1844479009272691923L, -9163670141705835389L}).toString());
        }
        if (!prefs.contains_key(new ObfuscatedString(new long[]{7504407960762055273L, -6786107198902110383L, 615904949992020672L}).toString())) {
            prefs.set_string(new ObfuscatedString(new long[]{-530075732615805154L, -2742544838331041840L, 5189304054445833407L}).toString(), new ObfuscatedString(new long[]{8418634688817893084L, -9172666014050070634L}).toString());
        }
        if (!prefs.contains_key(new ObfuscatedString(new long[]{8397389964273961648L, -6229802060093746043L, 4009512749500011958L}).toString())) {
            String obfuscatedString = new ObfuscatedString(new long[]{2945383590282124495L, 7003367209377729232L, 6849214963708822676L}).toString();
            ConfigUtil configUtil = this.mConfig;
            Intrinsics.checkNotNull(configUtil);
            prefs.set_string(obfuscatedString, (configUtil.getCompression() ? new ObfuscatedString(new long[]{-3537748678658619712L, -7929733396988881401L}) : new ObfuscatedString(new long[]{-5427845643042927688L, -7721675872139480265L})).toString());
        }
        if (!prefs.contains_key(new ObfuscatedString(new long[]{-1234122095079779603L, -1527062169183303282L, -8116139609748995062L, 3803586669130453647L}).toString())) {
            prefs.set_string(new ObfuscatedString(new long[]{-6013565135830295193L, -5036723109186588382L, 7960222148151285615L, -3732031940879868937L}).toString(), new ObfuscatedString(new long[]{-8481856300833019714L, -4049076315265319940L}).toString());
        }
        if (!prefs.contains_key(new ObfuscatedString(new long[]{2314683020325858809L, -7474140126223004421L, 1323759905915547597L}).toString())) {
            prefs.set_boolean(new ObfuscatedString(new long[]{-7728630531805677896L, -340158583137457971L, -404886128650419515L}).toString(), true);
        }
        if (!prefs.contains_key(new ObfuscatedString(new long[]{5469844522078410236L, -1571498511151017510L, -741242775452010098L, -8517730902718501501L}).toString())) {
            prefs.set_boolean(new ObfuscatedString(new long[]{188107087908817251L, -6272765310933516893L, 6777908693067108405L, 2239853281187251682L}).toString(), true);
        }
        if (!prefs.contains_key(new ObfuscatedString(new long[]{3619258147725862652L, -350376471184258994L, -5629660117544752166L, 1347703771425452460L, 8356413384274943436L}).toString())) {
            prefs.set_boolean(new ObfuscatedString(new long[]{-6151295788534826795L, -7982029529712515843L, -2599644013453394261L, 4609020761957512385L, -9193041272338460320L}).toString(), true);
        }
        if (!prefs.contains_key(new ObfuscatedString(new long[]{6823894528542129775L, -5752506523221518939L, 2898967354219541125L, 5413248995884266144L}).toString())) {
            prefs.set_boolean(new ObfuscatedString(new long[]{-1175252358775291568L, -5405310183391127845L, 88621635301096975L, -3501270628759844061L}).toString(), true);
        }
        if (!prefs.contains_key(new ObfuscatedString(new long[]{-2019945096663047977L, 5803257589507960386L, -5186714795184501281L}).toString())) {
            prefs.set_boolean(new ObfuscatedString(new long[]{7843979844786901952L, -1486240029196994843L, -7498881005404925289L}).toString(), false);
        }
        SharedPreferences.Editor editor = this.editor;
        Intrinsics.checkNotNull(editor);
        editor.putString(new ObfuscatedString(new long[]{8860327601935366216L, -4615034536217679596L, -6686974774364164158L, -7359108372147284607L}).toString(), new ObfuscatedString(new long[]{384931337764891933L, 7847505416694904208L, 5816597663449534949L}).toString());
        SharedPreferences.Editor editor2 = this.editor;
        Intrinsics.checkNotNull(editor2);
        editor2.putString(new ObfuscatedString(new long[]{-5918915677866627064L, 7181305975148797609L, -793570056338211082L}).toString(), new ObfuscatedString(new long[]{-6400776193127342559L, -782860335827419607L}).toString());
        SharedPreferences.Editor editor3 = this.editor;
        Intrinsics.checkNotNull(editor3);
        editor3.putString(new ObfuscatedString(new long[]{5088034587116029830L, -3166295117320627444L}).toString(), new ObfuscatedString(new long[]{-6865025111260601705L, -4803093655714193787L}).toString());
        SharedPreferences.Editor editor4 = this.editor;
        Intrinsics.checkNotNull(editor4);
        editor4.putString(new ObfuscatedString(new long[]{8757250905356981336L, 4187013845721112957L, 6481072713470905506L}).toString(), new ObfuscatedString(new long[]{2467630545617269705L, 2596947235226976697L}).toString());
        SharedPreferences.Editor editor5 = this.editor;
        Intrinsics.checkNotNull(editor5);
        editor5.putString(new ObfuscatedString(new long[]{-873734161484502026L, -1695044031974121333L, -3209610123224695796L}).toString(), new ObfuscatedString(new long[]{-3826100456647445722L, 2914140268622962803L}).toString());
        SharedPreferences.Editor editor6 = this.editor;
        Intrinsics.checkNotNull(editor6);
        editor6.putString(new ObfuscatedString(new long[]{6272032035319373428L, -6027068282507724551L, 6616151618641152052L, 6319326825596542719L}).toString(), new ObfuscatedString(new long[]{6638953381299527363L, 7058012950442264642L}).toString());
        SharedPreferences.Editor editor7 = this.editor;
        Intrinsics.checkNotNull(editor7);
        editor7.putString(new ObfuscatedString(new long[]{-1437244584494982740L, 2407342376130931018L, -464521987049493743L, 9090453291094651123L}).toString(), new ObfuscatedString(new long[]{6748996475763649485L, -4138187231029877103L}).toString());
        SharedPreferences.Editor editor8 = this.editor;
        Intrinsics.checkNotNull(editor8);
        editor8.putString(new ObfuscatedString(new long[]{-551808970397470034L, 8989524470819439616L, 7912688155192653503L, 5954847987618519054L, 6447660905961581943L}).toString(), new ObfuscatedString(new long[]{-2127196368708955385L, 4723059789245277498L}).toString());
        SharedPreferences.Editor editor9 = this.editor;
        Intrinsics.checkNotNull(editor9);
        editor9.putBoolean(new ObfuscatedString(new long[]{-4814960303219096361L, 7667921386222459151L, 4763370413830353775L, -6296049929545407610L}).toString(), false);
        SharedPreferences.Editor editor10 = this.editor;
        Intrinsics.checkNotNull(editor10);
        editor10.putBoolean(new ObfuscatedString(new long[]{-4684404149042740619L, 8018836810841823017L, 6580908486930064611L, 1718305030337159295L}).toString(), true);
        SharedPreferences.Editor editor11 = this.editor;
        Intrinsics.checkNotNull(editor11);
        editor11.putBoolean(new ObfuscatedString(new long[]{-4403936599870278539L, -6205280698294350367L, 2943239930631426884L, -7184542478192534962L}).toString(), false);
        SharedPreferences.Editor editor12 = this.editor;
        Intrinsics.checkNotNull(editor12);
        editor12.putBoolean(new ObfuscatedString(new long[]{8478819844847070645L, -8323720863940894187L, 9185349239193199098L, 8763843887697275556L}).toString(), false);
        SharedPreferences.Editor editor13 = this.editor;
        Intrinsics.checkNotNull(editor13);
        editor13.putBoolean(new ObfuscatedString(new long[]{-6792949394476657831L, -1620096923624272631L, 4281310455023700860L, 9117953412345356539L}).toString(), false);
        SharedPreferences.Editor editor14 = this.editor;
        Intrinsics.checkNotNull(editor14);
        editor14.putString(new ObfuscatedString(new long[]{3751621230403021425L, -8872137569605987456L, -5495877863078961971L, -306691250379445875L}).toString(), new ObfuscatedString(new long[]{3904961844468902239L, -755927667743113172L}).toString());
        SharedPreferences.Editor editor15 = this.editor;
        Intrinsics.checkNotNull(editor15);
        editor15.putString(new ObfuscatedString(new long[]{2542297623350412290L, 7537071688464112094L, -6379014139449230259L}).toString(), new ObfuscatedString(new long[]{8052706536607428555L, 5588105894484636178L}).toString());
        SharedPreferences.Editor editor16 = this.editor;
        Intrinsics.checkNotNull(editor16);
        editor16.putString(new ObfuscatedString(new long[]{3548489365017841054L, -3173160962961566066L, -3657116740967443475L, 296460392897155969L, -7616056370585300274L}).toString(), new ObfuscatedString(new long[]{-8566290030137482994L, -2744962763383712765L, 3251362064461092323L}).toString());
        SharedPreferences.Editor editor17 = this.editor;
        Intrinsics.checkNotNull(editor17);
        editor17.putBoolean(new ObfuscatedString(new long[]{4334477404110915888L, -7586247382363791438L, -8844851373983705437L}).toString(), false);
        SharedPreferences.Editor editor18 = this.editor;
        Intrinsics.checkNotNull(editor18);
        editor18.putBoolean(new ObfuscatedString(new long[]{7834611918540557893L, -932928083812636583L, 1743160672600010775L, -4109780547860161962L}).toString(), true);
        SharedPreferences.Editor editor19 = this.editor;
        Intrinsics.checkNotNull(editor19);
        editor19.putString(new ObfuscatedString(new long[]{-7826782016860775267L, -5496311634498691025L, 2516671447075684242L}).toString(), new ObfuscatedString(new long[]{6445382548205974016L, -881801960983002832L}).toString());
        SharedPreferences.Editor editor20 = this.editor;
        Intrinsics.checkNotNull(editor20);
        editor20.putString(new ObfuscatedString(new long[]{3321688186277754941L, 3139221265491887195L, 7018500397249375202L}).toString(), new ObfuscatedString(new long[]{6499889816058403809L, 1748135351351305857L}).toString());
        SharedPreferences.Editor editor21 = this.editor;
        Intrinsics.checkNotNull(editor21);
        editor21.putString(new ObfuscatedString(new long[]{8972751549205756778L, -4231286029747167032L, -3047563744175705837L, 2631918990187184832L}).toString(), new ObfuscatedString(new long[]{5247232928549059799L, 4177818373618254302L, 2682339657329742485L}).toString());
        SharedPreferences.Editor editor22 = this.editor;
        Intrinsics.checkNotNull(editor22);
        editor22.putString(new ObfuscatedString(new long[]{1949503908398075914L, 6374030861363194839L, -5917547092248983228L, -8828838533571369611L}).toString(), new ObfuscatedString(new long[]{-3908424292324877766L, -2261733990666287198L}).toString());
        SharedPreferences.Editor editor23 = this.editor;
        Intrinsics.checkNotNull(editor23);
        editor23.putString(new ObfuscatedString(new long[]{7390187434733290119L, 4144722553735902835L, -2253723447943663002L}).toString(), new ObfuscatedString(new long[]{-7624561825961785070L, -6168383492772674439L}).toString());
        SharedPreferences.Editor editor24 = this.editor;
        Intrinsics.checkNotNull(editor24);
        editor24.putBoolean(new ObfuscatedString(new long[]{4032715673483876360L, -8295708760011980102L, -3531577387604631813L, 7230754213390833323L}).toString(), false);
        SharedPreferences.Editor editor25 = this.editor;
        Intrinsics.checkNotNull(editor25);
        editor25.putBoolean(new ObfuscatedString(new long[]{-6850457151163841457L, -8421776159074968663L, 24220695729308724L, 3558351158295575673L, -1828610041920020891L}).toString(), false);
        SharedPreferences.Editor editor26 = this.editor;
        Intrinsics.checkNotNull(editor26);
        editor26.putString(new ObfuscatedString(new long[]{8670009217417143220L, -4361719214884448872L, -4701829003381229075L}).toString(), new ObfuscatedString(new long[]{-4785750582251033865L, 3962790851971704450L}).toString());
        SharedPreferences.Editor editor27 = this.editor;
        Intrinsics.checkNotNull(editor27);
        editor27.apply();
        MMKV mmkv = this.settingsStorage;
        Intrinsics.checkNotNull(mmkv);
        mmkv.encode(new ObfuscatedString(new long[]{6124855685859345753L, -121544170785566545L, 5853877332381646649L, -7179724361659826839L}).toString(), false);
        MMKV mmkv2 = this.settingsStorage;
        Intrinsics.checkNotNull(mmkv2);
        mmkv2.encode(new ObfuscatedString(new long[]{2024032986406629016L, 1654961453561737073L, 9127182757059612210L, -8426526776728471106L}).toString(), true);
        MMKV mmkv3 = this.settingsStorage;
        Intrinsics.checkNotNull(mmkv3);
        mmkv3.encode(new ObfuscatedString(new long[]{-4126537794156658760L, 5267702852457291620L, 8268421911495184401L, 3739931243459175505L}).toString(), false);
        MMKV mmkv4 = this.settingsStorage;
        Intrinsics.checkNotNull(mmkv4);
        mmkv4.encode(new ObfuscatedString(new long[]{6521117509366581141L, 7070921886748180410L, 363817354680383995L, -222869266569053442L}).toString(), false);
        MMKV mmkv5 = this.settingsStorage;
        Intrinsics.checkNotNull(mmkv5);
        mmkv5.encode(new ObfuscatedString(new long[]{-1068680868321255882L, 8301501561701613306L, -4224263486059376297L, 8547419415732703306L}).toString(), false);
        MMKV mmkv6 = this.settingsStorage;
        Intrinsics.checkNotNull(mmkv6);
        mmkv6.encode(new ObfuscatedString(new long[]{-4875113072177918725L, 1580943236858819117L, -3143883721719440688L, -3522873388456417284L}).toString(), new ObfuscatedString(new long[]{1814922361027448106L, 6478772102859322541L}).toString());
        MMKV mmkv7 = this.settingsStorage;
        Intrinsics.checkNotNull(mmkv7);
        mmkv7.encode(new ObfuscatedString(new long[]{4621026988238243623L, -8122277558942602334L, 9052615599994985606L}).toString(), new ObfuscatedString(new long[]{2532404222485247265L, -632670175262292782L}).toString());
        MMKV mmkv8 = this.settingsStorage;
        Intrinsics.checkNotNull(mmkv8);
        mmkv8.encode(new ObfuscatedString(new long[]{-2441588949051045963L, 6638996191389991083L, 8430654961534904237L, -3619199384761292545L, -3498053270389903160L}).toString(), new ObfuscatedString(new long[]{-5422997860480027243L, -5050919977275220167L, 442597506894400164L}).toString());
        MMKV mmkv9 = this.settingsStorage;
        Intrinsics.checkNotNull(mmkv9);
        mmkv9.encode(new ObfuscatedString(new long[]{5060420272303601754L, -1345304816179440353L, 3123434176283069058L}).toString(), false);
        MMKV mmkv10 = this.settingsStorage;
        Intrinsics.checkNotNull(mmkv10);
        mmkv10.encode(new ObfuscatedString(new long[]{-21321785374203785L, 8181936325713381259L, 4012054652090051083L, -9184860524584378935L}).toString(), true);
        MMKV mmkv11 = this.settingsStorage;
        Intrinsics.checkNotNull(mmkv11);
        mmkv11.encode(new ObfuscatedString(new long[]{-9222777208032947611L, -2304174554704727199L, -6067848506425119700L}).toString(), new ObfuscatedString(new long[]{-607968569659784263L, 4233590160833477529L}).toString());
        MMKV mmkv12 = this.settingsStorage;
        Intrinsics.checkNotNull(mmkv12);
        mmkv12.encode(new ObfuscatedString(new long[]{-3581002998576288060L, -2557894682035843624L, -8997724891895467629L}).toString(), new ObfuscatedString(new long[]{-5496421565137373934L, -2156157868179988642L}).toString());
        MMKV mmkv13 = this.settingsStorage;
        Intrinsics.checkNotNull(mmkv13);
        mmkv13.encode(new ObfuscatedString(new long[]{-2675427230264433653L, -4385561701502573635L, 2723476305501302398L, -8644685288853550772L}).toString(), new ObfuscatedString(new long[]{6658111719290984861L, -7112458351851833946L, 2870768653954862998L}).toString());
        MMKV mmkv14 = this.settingsStorage;
        Intrinsics.checkNotNull(mmkv14);
        mmkv14.encode(new ObfuscatedString(new long[]{9129256149799520158L, -1929995865642527588L, -1838824637851742388L, 2795968627701317731L}).toString(), new ObfuscatedString(new long[]{606129689620043683L, -2310425570017562559L}).toString());
        MMKV mmkv15 = this.settingsStorage;
        Intrinsics.checkNotNull(mmkv15);
        mmkv15.encode(new ObfuscatedString(new long[]{-613975447805498717L, -9172457277552323236L, -516669903141718998L}).toString(), new ObfuscatedString(new long[]{716500905333388990L, 2002767607842362351L}).toString());
        MMKV mmkv16 = this.settingsStorage;
        Intrinsics.checkNotNull(mmkv16);
        mmkv16.encode(new ObfuscatedString(new long[]{4612476681168082388L, 5893415216285726935L, -8010852028332344518L, -1317137142644447129L}).toString(), false);
        MMKV mmkv17 = this.settingsStorage;
        Intrinsics.checkNotNull(mmkv17);
        mmkv17.encode(new ObfuscatedString(new long[]{-8451679646529316370L, -6037324254697677311L, 7571087712649822148L, -3610414381179766072L, -8958559533071059643L}).toString(), false);
        MMKV mmkv18 = this.settingsStorage;
        Intrinsics.checkNotNull(mmkv18);
        mmkv18.encode(new ObfuscatedString(new long[]{-3613552684465403925L, 425928667166998685L, 6486383402024219133L}).toString(), new ObfuscatedString(new long[]{4904364347446784197L, 8564365669669614013L}).toString());
    }

    public final boolean is_active() {
        c_05 c_05Var = this.openVPNService;
        if (c_05Var != null) {
            Intrinsics.checkNotNull(c_05Var);
            if (c_05Var.is_active()) {
                return true;
            }
        }
        return false;
    }

    public final void jellyBeanHackPurge() {
        c_05 c_05Var = this.openVPNService;
        if (c_05Var != null) {
            Intrinsics.checkNotNull(c_05Var);
            c_05Var.jellyBeanHackPurge();
        }
    }

    public final void loadAdsView() {
        View findViewById = findViewById(R.id.adView);
        Intrinsics.checkNotNullExpressionValue(findViewById, new ObfuscatedString(new long[]{7015545020324455035L, 8601537652974102712L, 5118623927910356846L, -1045784589883818985L}).toString());
        AdView adView = new AdView(this);
        adView.setAdSize(AdSize.FULL_BANNER);
        adView.setAdUnitId(new ObfuscatedString(new long[]{1172950697871286800L, -4447310590795986014L, -8805900003931319125L, -5944137648590118339L, 1249079248299616225L, 3434783687892702005L}).toString());
        ((RelativeLayout) findViewById).addView(adView);
        AdRequest build = new AdRequest.Builder().build();
        Intrinsics.checkNotNullExpressionValue(build, new ObfuscatedString(new long[]{-8259896758988369109L, 8069853472823788166L, -5641970494246749175L}).toString());
        adView.loadAd(build);
    }

    public final void loadInterstitial() {
        InterstitialAd.load(this, new ObfuscatedString(new long[]{7132805922539232867L, -565671898546296158L, -4135164045989796964L, -626057606373813045L, 513988622423496977L, -2507371912160426103L}).toString(), new AdRequest.Builder().build(), new InterstitialAdLoadCallback() { // from class: com.tknetwork.tunnel.activities.MainBaseActivity$loadInterstitial$1
            @Override // com.google.android.gms.ads.AdLoadCallback
            public void onAdFailedToLoad(LoadAdError adError) {
                Intrinsics.checkNotNullParameter(adError, new ObfuscatedString(new long[]{7355206263717497009L, -8218464532495953355L}).toString());
                new ObfuscatedString(new long[]{7587868012037463553L, 5646360566916866562L, 1077755625558180303L}).toString();
                adError.getMessage();
                MainBaseActivity.this.interstitialAd = null;
            }

            @Override // com.google.android.gms.ads.AdLoadCallback
            public void onAdLoaded(InterstitialAd ad) {
                Intrinsics.checkNotNullParameter(ad, new ObfuscatedString(new long[]{3744702186094735919L, -3683267886350490400L}).toString());
                new ObfuscatedString(new long[]{-775987521166703878L, 3220689900870556603L, -648982856504354048L}).toString();
                new ObfuscatedString(new long[]{-227324473835944846L, -1964959302061723007L, -8394601551464379798L}).toString();
                MainBaseActivity.this.interstitialAd = ad;
            }
        });
        InterstitialAd interstitialAd2 = this.interstitialAd;
        if (interstitialAd2 != null) {
            interstitialAd2.setFullScreenContentCallback(new FullScreenContentCallback() { // from class: com.tknetwork.tunnel.activities.MainBaseActivity$loadInterstitial$2
                @Override // com.google.android.gms.ads.FullScreenContentCallback
                public void onAdClicked() {
                    new ObfuscatedString(new long[]{2719704865783464366L, -706993880532039770L, -3799355768960054707L}).toString();
                    new ObfuscatedString(new long[]{-7421654592876411340L, 2181264618615534097L, -8072052876172083428L}).toString();
                }

                @Override // com.google.android.gms.ads.FullScreenContentCallback
                public void onAdDismissedFullScreenContent() {
                    new ObfuscatedString(new long[]{1213832806284310922L, 2690097817738161799L, -7678761521392364198L}).toString();
                    new ObfuscatedString(new long[]{-1882915498122100897L, -5775815123577265291L, 5734944948322986235L, -5984016548032556520L}).toString();
                    MainBaseActivity.this.interstitialAd = null;
                }

                @Override // com.google.android.gms.ads.FullScreenContentCallback
                public void onAdFailedToShowFullScreenContent(AdError adError) {
                    Intrinsics.checkNotNullParameter(adError, new ObfuscatedString(new long[]{1663532593637836704L, -7910604469947532538L}).toString());
                    new ObfuscatedString(new long[]{7796362146781138226L, -1054000873447807416L, 5427803376400907372L}).toString();
                    new ObfuscatedString(new long[]{-2569579925760311347L, -6088501355108764751L, 6404795651485218340L, -1883891531378989721L}).toString();
                    MainBaseActivity.this.interstitialAd = null;
                }

                @Override // com.google.android.gms.ads.FullScreenContentCallback
                public void onAdImpression() {
                    new ObfuscatedString(new long[]{-1987255796882612943L, 4727616789388639481L, -7398643236735599803L}).toString();
                    new ObfuscatedString(new long[]{-5108380615637968620L, -1454648946954687430L, -7572693806322190069L, -1242051313533677438L, 1434823691789209422L}).toString();
                }

                @Override // com.google.android.gms.ads.FullScreenContentCallback
                public void onAdShowedFullScreenContent() {
                    new ObfuscatedString(new long[]{85154641117326940L, 1819740658397851302L, 5318931250505342227L}).toString();
                    new ObfuscatedString(new long[]{-2149786208788701876L, -4837410581906448855L, 6227314955516269903L, 1349681892614893174L, -3029620099370067826L}).toString();
                }
            });
        }
    }

    public final void loadV2rayConfig() {
        try {
            ConfigUtil configUtil = this.mConfig;
            Intrinsics.checkNotNull(configUtil);
            importBatchConfig(configUtil.getV2rayConfig());
        } catch (Exception unused) {
            TkLogStatus.updateStateString(new ObfuscatedString(new long[]{4339190711260926712L, -3343639228976496574L, -3522269864704329945L}).toString(), getString(R.string.state_disconnected));
        }
    }

    public void log(@NotNull c_05.LogMsg lm) {
        Intrinsics.checkNotNullParameter(lm, new ObfuscatedString(new long[]{-6810847791854312676L, -2243985758137812086L}).toString());
    }

    @Nullable
    public final ArrayDeque<c_05.LogMsg> log_history() {
        if (this.openVPNService != null) {
            return c_05.log_history();
        }
        return null;
    }

    public void ok_dialog(@Nullable String text) {
        ok_dialog$default(this, null, text, null, 4, null);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.prefs = new PrefUtil(PreferenceManager.getDefaultSharedPreferences(this));
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().permitAll().build());
        this.mConfig = ConfigUtil.getInstance(this);
        getSettingsStorage();
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        this.myPrefs = defaultSharedPreferences;
        Intrinsics.checkNotNull(defaultSharedPreferences);
        this.editor = defaultSharedPreferences.edit();
    }

    public void post_bind() {
    }

    @Nullable
    public final c_05.ProfileList profile_list() {
        c_05 c_05Var = this.openVPNService;
        if (c_05Var != null) {
            Intrinsics.checkNotNull(c_05Var);
            return c_05Var.get_profile_list();
        }
        return null;
    }

    public final void recquestConsentform() {
        ConsentRequestParameters.Builder tagForUnderAgeOfConsent = new ConsentRequestParameters.Builder().setTagForUnderAgeOfConsent(false);
        Intrinsics.checkNotNullExpressionValue(tagForUnderAgeOfConsent, new ObfuscatedString(new long[]{4469177382074658470L, 1248913485054804026L, 8376122354101880960L, 6391677436183478158L, -3898854908627596700L}).toString());
        ConsentRequestParameters build = tagForUnderAgeOfConsent.build();
        Intrinsics.checkNotNullExpressionValue(build, new ObfuscatedString(new long[]{3206167646439546010L, -6267709112028930635L, -3457036653922697242L}).toString());
        ConsentInformation consentInformation = UserMessagingPlatform.getConsentInformation(this);
        this.consentInformation = consentInformation;
        Intrinsics.checkNotNull(consentInformation);
        consentInformation.requestConsentInfoUpdate(this, build, new C0955xd0e9233c(this), new C0370x5ac5058d(17));
        ConsentInformation consentInformation2 = this.consentInformation;
        Intrinsics.checkNotNull(consentInformation2);
        if (consentInformation2.canRequestAds()) {
            initializeMobileAdsSdk();
        }
    }

    @NotNull
    public final String resString(int res_id) {
        String string = getResources().getString(res_id);
        Intrinsics.checkNotNullExpressionValue(string, new ObfuscatedString(new long[]{2132246781223140925L, -2130432088616069762L, -1458661024005865159L}).toString());
        return string;
    }

    public final void resolveExternalPkiAlias(@Nullable c_05.Profile prof, @NotNull EpkiPost next_action) {
        Intrinsics.checkNotNullParameter(next_action, new ObfuscatedString(new long[]{663216396912644644L, 6391375286408804841L, -3191627238411223143L}).toString());
        new Handler();
        if (prof != null && prof.need_external_pki_alias()) {
            next_action.post_dispatch(new ObfuscatedString(new long[]{-5917284002943599778L, 6255138584095104166L, -3213898931447242610L, -7832248356345995883L}).toString());
        } else {
            next_action.post_dispatch(null);
        }
    }

    public final void restartV2Ray() {
        if (Intrinsics.areEqual(getMainViewModel().isRunning().getValue(), Boolean.TRUE)) {
            V2RayServiceManager.stopVService(this);
            return;
        }
        String decodeSettingsString = MmkvManager.decodeSettingsString(new ObfuscatedString(new long[]{4754924129478679296L, 2661278183086735925L, -8241808635880043001L}).toString());
        if (decodeSettingsString == null) {
            decodeSettingsString = new ObfuscatedString(new long[]{2675448225471136653L, -175432730239921732L}).toString();
        }
        if (Intrinsics.areEqual(decodeSettingsString, new ObfuscatedString(new long[]{5679237665255343643L, 2681933169944893318L}).toString())) {
            Intent prepare = VpnService.prepare(this);
            if (prepare == null) {
                startV2Ray();
                return;
            } else {
                this.requestVpnPermission.launch(prepare);
                return;
            }
        }
        startV2Ray();
    }

    public final void setNavBarColor(int r2) {
        getWindow().setNavigationBarColor(r2);
    }

    public final void setStatusBarColor(int r2) {
        getWindow().setStatusBarColor(r2);
    }

    public final void setUiColor() {
        JSONObject jSONObject = getJSONObject();
        if (jSONObject == null) {
            return;
        }
        try {
            if (jSONObject.has(new ObfuscatedString(new long[]{-7390128829947898808L, 5157506570796387556L, 3405414405313688421L}).toString())) {
                if (Intrinsics.areEqual(jSONObject.getString(new ObfuscatedString(new long[]{5324779790075807888L, 5486688290209413003L, -8097798789030825220L}).toString()), new ObfuscatedString(new long[]{-6021491371592880250L, -9041673741295173401L}).toString())) {
                    SharedPreferences.Editor editor = this.editor;
                    Intrinsics.checkNotNull(editor);
                    editor.putInt(new ObfuscatedString(new long[]{9141234282212316447L, -2752160478038459841L, -8661884164400986960L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{-3173461202675422690L, 4510307052536991069L}).toString())).apply();
                } else if (Intrinsics.areEqual(jSONObject.getString(new ObfuscatedString(new long[]{-111143239928943003L, -8200532584524159728L, 3631832717371072861L}).toString()), new ObfuscatedString(new long[]{6316951422738260196L, -8539075748295669879L}).toString())) {
                    SharedPreferences.Editor editor2 = this.editor;
                    Intrinsics.checkNotNull(editor2);
                    editor2.putInt(new ObfuscatedString(new long[]{5943104943455010649L, 1571378880962014559L, 3163364287099466355L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{1233699466631824734L, -5165258345431534650L}).toString())).apply();
                } else if (Intrinsics.areEqual(jSONObject.getString(new ObfuscatedString(new long[]{-7102933004178904144L, 7476115479969961859L, -5844549387435165214L}).toString()), new ObfuscatedString(new long[]{6384632826219623121L, -6220235983463441509L}).toString())) {
                    SharedPreferences.Editor editor3 = this.editor;
                    Intrinsics.checkNotNull(editor3);
                    editor3.putInt(new ObfuscatedString(new long[]{-168622036753921052L, 433012944922612786L, -806353020413734944L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{-9050493217747137840L, -8511071719813129259L, 7757561917655926487L}).toString())).apply();
                } else if (Intrinsics.areEqual(jSONObject.getString(new ObfuscatedString(new long[]{305479045639940062L, -151924138712864131L, 119151361753805163L}).toString()), new ObfuscatedString(new long[]{2143091638650999530L, -831643808802277075L}).toString())) {
                    SharedPreferences.Editor editor4 = this.editor;
                    Intrinsics.checkNotNull(editor4);
                    editor4.putInt(new ObfuscatedString(new long[]{-8315364144371142972L, 7128282290031643623L, 3636209329823774743L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{-8422921778118825765L, -2793213908570705231L}).toString())).apply();
                } else if (Intrinsics.areEqual(jSONObject.getString(new ObfuscatedString(new long[]{-960316955379834248L, -143004844090839493L, -4837679760964163724L}).toString()), new ObfuscatedString(new long[]{-608571917242333890L, -589009156696971764L}).toString())) {
                    SharedPreferences.Editor editor5 = this.editor;
                    Intrinsics.checkNotNull(editor5);
                    editor5.putInt(new ObfuscatedString(new long[]{1086070314861186428L, 1833021796095519520L, 1894535413985151880L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{-5954580076386718134L, 1695367889259440252L}).toString())).apply();
                } else if (Intrinsics.areEqual(jSONObject.getString(new ObfuscatedString(new long[]{-1180171035812157331L, 4961888506605282459L, -6600400492720251954L}).toString()), new ObfuscatedString(new long[]{-3432204524848027387L, -6212467811785566267L}).toString())) {
                    SharedPreferences.Editor editor6 = this.editor;
                    Intrinsics.checkNotNull(editor6);
                    editor6.putInt(new ObfuscatedString(new long[]{7502513203558618358L, 7728601581576607902L, 6210636115292415561L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{-1279921522419753723L, 4519280849241508165L}).toString())).apply();
                } else if (Intrinsics.areEqual(jSONObject.getString(new ObfuscatedString(new long[]{8744964481125030492L, 5882785929796055760L, 5040197904928249568L}).toString()), new ObfuscatedString(new long[]{-8991948584425296131L, 5159470707738383863L}).toString())) {
                    SharedPreferences.Editor editor7 = this.editor;
                    Intrinsics.checkNotNull(editor7);
                    editor7.putInt(new ObfuscatedString(new long[]{4949305213560681995L, -4913122759472564682L, -5351139056752724269L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{-8376606014114532934L, 4204950639537935904L}).toString())).apply();
                }
            }
        } catch (JSONException unused) {
        }
    }

    public final void showInterstitial() {
        InterstitialAd interstitialAd2 = this.interstitialAd;
        if (interstitialAd2 != null) {
            interstitialAd2.show(this);
        }
    }

    public void showToast(@Nullable String str) {
        Toast.makeText(this, str, 1).show();
    }

    public void startOpenVPN() {
    }

    public final void stoptV2Ray() {
        getMainViewModel().clearAllTestDelay();
        V2RayServiceManager.stopVService(this);
    }

    public final void submitConnectIntent(@NotNull String profile_name, @Nullable String server, @Nullable String vpn_proto, @Nullable String ipv6, @Nullable String conn_timeout, @Nullable String username, @Nullable String password, boolean cache_password, @Nullable String pk_password, @Nullable String response, @Nullable String epki_alias, @Nullable String compression_mode, @Nullable String proxy_name, @Nullable String proxy_username, @Nullable String proxy_password, boolean proxy_allow_creds_dialog, @Nullable String gui_version) {
        Intrinsics.checkNotNullParameter(profile_name, new ObfuscatedString(new long[]{-4493993948744454897L, 2797129574379255468L, -8820666038415247776L}).toString());
        String obfuscatedString = new ObfuscatedString(new long[]{-2987846645776426929L, -7094753230039907454L, 1823230170897155525L, 6126463278570847032L}).toString();
        ConfigUtil configUtil = this.mConfig;
        Intrinsics.checkNotNull(configUtil);
        int tunnelType = configUtil.getTunnelType();
        if (tunnelType != 11 && tunnelType != 8 && tunnelType != 6 && tunnelType != 9) {
            Intent putExtra = new Intent(this, (Class<?>) c_05.class).setAction(new ObfuscatedString(new long[]{-788623524425906072L, -6692645957539825427L, -4297141820129968688L, -5075397790141852040L, 5187992027153738888L}).toString()).putExtra(obfuscatedString + ".PROFILE", profile_name).putExtra(obfuscatedString + ".GUI_VERSION", gui_version).putExtra(obfuscatedString + ".PROXY_NAME", proxy_name).putExtra(obfuscatedString + ".PROXY_USERNAME", proxy_username).putExtra(obfuscatedString + ".PROXY_PASSWORD", proxy_password).putExtra(obfuscatedString + ".PROXY_ALLOW_CREDS_DIALOG", proxy_allow_creds_dialog).putExtra(obfuscatedString + ".SERVER", server).putExtra(obfuscatedString + ".PROTO", vpn_proto).putExtra(obfuscatedString + ".IPv6", ipv6).putExtra(obfuscatedString + ".CONN_TIMEOUT", conn_timeout).putExtra(obfuscatedString + ".USERNAME", username).putExtra(obfuscatedString + ".PASSWORD", password).putExtra(obfuscatedString + ".CACHE_PASSWORD", cache_password).putExtra(obfuscatedString + ".PK_PASSWORD", pk_password).putExtra(obfuscatedString + ".RESPONSE", response).putExtra(obfuscatedString + ".EPKI_ALIAS", epki_alias).putExtra(obfuscatedString + ".COMPRESSION_MODE", compression_mode);
            Intrinsics.checkNotNullExpressionValue(putExtra, new ObfuscatedString(new long[]{510564445040118521L, 3085741081923048643L, 7915598244326254129L}).toString());
            startService(putExtra);
        }
        c_05 c_05Var = this.openVPNService;
        if (c_05Var != null) {
            Intrinsics.checkNotNull(c_05Var);
            c_05Var.client_attach(this);
        }
        new ObfuscatedString(new long[]{-2737829746014011731L, -8123404060935706363L, 1193345796562125277L}).toString();
    }

    public final void submitDisconnectIntent(boolean stop_service) {
        new ObfuscatedString(new long[]{4146426552277508286L, 4855443191958241911L, -7603728941998904935L}).toString();
        new ObfuscatedString(new long[]{6844756854824915994L, 3079821873464749486L, 7431157045587106988L, -2120256392450491833L, -5853819285872140322L}).toString();
        startService(buildDisconnectIntent(stop_service));
    }

    public final void unbindInjector() {
        if (this.mInjector != null) {
            unbindService(this.mInjectorConnection);
            this.mInjector = null;
        }
    }

    public void ok_dialog(@Nullable String title, @Nullable String message, @Nullable Runnable r5) {
        AlertDialog.Builder positiveButton = new AlertDialog.Builder(this).setMessage(message).setPositiveButton(R.string.ok, new DialogInterfaceOnClickListenerC0519xdc2f50a1(r5, 3));
        if (title != null) {
            positiveButton.setTitle(title);
        }
        positiveButton.show();
    }
}
