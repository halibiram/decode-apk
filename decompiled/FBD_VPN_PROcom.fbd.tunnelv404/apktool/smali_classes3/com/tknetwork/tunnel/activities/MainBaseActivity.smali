.class public abstract Lcom/tknetwork/tunnel/activities/MainBaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/tknetwork/tunnel/service/TunnelVPN$InjectorListener;
.implements Lcom/tknetwork/tunnel/service/c_05$EventReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/tunnel/activities/MainBaseActivity$Companion;,
        Lcom/tknetwork/tunnel/activities/MainBaseActivity$EpkiPost;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ec\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000 \u0097\u00012\u00020\u00012\u00020\u00022\u00020\u0003:\u0004\u0096\u0001\u0097\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0011\u001a\u00020\u0012H\u0002J\u0006\u0010 \u001a\u00020\u0012J\u0008\u0010!\u001a\u00020\u0012H\u0002J\u0006\u0010\"\u001a\u00020\u0012J\u0006\u0010#\u001a\u00020\u0012J\u0006\u0010$\u001a\u00020\u0012J\u0012\u0010%\u001a\u00020\u00122\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0016J\u0012\u00101\u001a\u0004\u0018\u0001022\u0006\u00103\u001a\u000204H\u0004J\u0012\u00108\u001a\u0002092\u0008\u0010:\u001a\u0004\u0018\u00010;H\u0002J\u0012\u0010<\u001a\u00020\u00122\u0008\u0010=\u001a\u0004\u0018\u000109H\u0014J\u0008\u0010>\u001a\u00020\u0012H\u0004J\u0008\u0010?\u001a\u00020\u0012H\u0004J\u0008\u0010@\u001a\u00020\u0012H\u0004J\u0008\u0010A\u001a\u00020\u0012H\u0004J\u0008\u0010B\u001a\u00020\u0012H\u0016J\u0008\u0010C\u001a\u00020\u0012H\u0014J\u0010\u0010D\u001a\u00020\u00122\u0006\u0010E\u001a\u00020FH\u0016J\u0010\u0010G\u001a\u00020\u00122\u0006\u0010H\u001a\u00020IH\u0016J\u0012\u0010J\u001a\u0004\u0018\u00010K2\u0006\u0010L\u001a\u000204H\u0016J\u0008\u0010M\u001a\u00020\u0018H\u0004J\u000e\u0010N\u001a\u0008\u0018\u00010OR\u00020\u0007H\u0004J\u000e\u0010P\u001a\u0008\u0018\u00010QR\u00020\u0007H\u0004J\n\u0010R\u001a\u0004\u0018\u00010SH\u0004J\n\u0010T\u001a\u0004\u0018\u00010FH\u0004J\n\u0010U\u001a\u0004\u0018\u00010FH\u0004J\u000e\u0010V\u001a\n\u0012\u0004\u0012\u00020I\u0018\u00010WJ\u0008\u0010X\u001a\u00020\u0012H\u0004J\u0008\u0010Y\u001a\u00020\u0012H\u0004J\u0010\u0010Z\u001a\u0002092\u0006\u0010[\u001a\u000209H\u0004J\u00ac\u0001\u0010\\\u001a\u00020\u00122\u0006\u0010]\u001a\u0002092\u0008\u0010^\u001a\u0004\u0018\u0001092\u0008\u0010_\u001a\u0004\u0018\u0001092\u0008\u0010`\u001a\u0004\u0018\u0001092\u0008\u0010a\u001a\u0004\u0018\u0001092\u0008\u0010b\u001a\u0004\u0018\u0001092\u0008\u0010c\u001a\u0004\u0018\u0001092\u0006\u0010d\u001a\u00020\u00182\u0008\u0010e\u001a\u0004\u0018\u0001092\u0008\u0010f\u001a\u0004\u0018\u0001092\u0008\u0010g\u001a\u0004\u0018\u0001092\u0008\u0010h\u001a\u0004\u0018\u0001092\u0008\u0010i\u001a\u0004\u0018\u0001092\u0008\u0010j\u001a\u0004\u0018\u0001092\u0008\u0010k\u001a\u0004\u0018\u0001092\u0006\u0010l\u001a\u00020\u00182\u0008\u0010m\u001a\u0004\u0018\u000109H\u0004J\u000e\u0010n\u001a\u00020\u00122\u0006\u0010o\u001a\u000204J\u000e\u0010p\u001a\u00020\u00122\u0006\u0010o\u001a\u000204J\u0010\u0010q\u001a\u00020r2\u0006\u0010s\u001a\u00020\u0018H\u0004J\u0010\u0010t\u001a\u00020\u00122\u0006\u0010s\u001a\u00020\u0018H\u0004J\u001e\u0010u\u001a\u00020\u00122\u000c\u0010v\u001a\u0008\u0018\u00010OR\u00020\u00072\u0006\u0010w\u001a\u00020xH\u0004J\u0010\u0010y\u001a\u00020\u00122\u0006\u0010z\u001a\u000209H\u0004J\u0012\u0010{\u001a\u00020\u00122\u0008\u0010|\u001a\u0004\u0018\u000109H\u0016J(\u0010{\u001a\u00020\u00122\u0008\u0010}\u001a\u0004\u0018\u0001092\u0008\u0010~\u001a\u0004\u0018\u0001092\n\u0008\u0002\u0010D\u001a\u0004\u0018\u00010\u007fH\u0016J\u0011\u0010\u0080\u0001\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000eH\u0004J\u0012\u0010\u0081\u0001\u001a\u0002092\u0007\u0010\u0082\u0001\u001a\u000204H\u0004J\u0007\u0010\u0083\u0001\u001a\u00020\u0012J\t\u0010\u008a\u0001\u001a\u00020\u0012H\u0004J\u0013\u0010\u008b\u0001\u001a\u00020\u00122\u0008\u0010^\u001a\u0004\u0018\u000109H\u0002J\t\u0010\u008c\u0001\u001a\u00020\u0012H\u0002J\t\u0010\u0091\u0001\u001a\u00020\u0012H\u0002J\u0007\u0010\u0092\u0001\u001a\u00020\u0012J\u0007\u0010\u0093\u0001\u001a\u00020\u0012R\"\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007@BX\u0084\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0008\u001fR\u000e\u0010(\u001a\u00020)X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010*\u001a\u0004\u0018\u00010+8\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020)X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010-\u001a\u0004\u0018\u00010.8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008/\u00100R\u0016\u00105\u001a\u0004\u0018\u0001028TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u00086\u00107R!\u0010\u0084\u0001\u001a\u00030\u0085\u00018FX\u0086\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u0088\u0001\u0010\u0089\u0001\u001a\u0006\u0008\u0086\u0001\u0010\u0087\u0001R \u0010\u008d\u0001\u001a\u0002098BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u0090\u0001\u0010\u0089\u0001\u001a\u0006\u0008\u008e\u0001\u0010\u008f\u0001R\u0016\u0010\u0094\u0001\u001a\t\u0012\u0004\u0012\u00020r0\u0095\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0098\u0001"
    }
    d2 = {
        "Lcom/tknetwork/tunnel/activities/MainBaseActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/tknetwork/tunnel/service/TunnelVPN$InjectorListener;",
        "Lcom/tknetwork/tunnel/service/c_05$EventReceiver;",
        "<init>",
        "()V",
        "value",
        "Lcom/tknetwork/tunnel/service/c_05;",
        "openVPNService",
        "getOpenVPNService",
        "()Lcom/tknetwork/tunnel/service/c_05;",
        "mConfig",
        "Lconfig/ConfigUtil;",
        "prefs",
        "Lnet/openvpn/openvpn/PrefUtil;",
        "settingsStorage",
        "Lcom/tencent/mmkv/MMKV;",
        "getSettingsStorage",
        "",
        "editor",
        "Landroid/content/SharedPreferences$Editor;",
        "myPrefs",
        "Landroid/content/SharedPreferences;",
        "isPremium",
        "",
        "consentInformation",
        "Lcom/google/android/ump/ConsentInformation;",
        "isMobileAdsInitializeCalled",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "interstitialAd",
        "Lcom/google/android/gms/ads/interstitial/InterstitialAd;",
        "interstitialAd$1",
        "recquestConsentform",
        "initializeMobileAdsSdk",
        "loadAdsView",
        "loadInterstitial",
        "showInterstitial",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "mConnection",
        "Landroid/content/ServiceConnection;",
        "mInjector",
        "Lcom/tknetwork/tunnel/service/TunnelVPN;",
        "mInjectorConnection",
        "jSONObject",
        "Lorg/json/JSONObject;",
        "getJSONObject",
        "()Lorg/json/JSONObject;",
        "getServersArray",
        "Lorg/json/JSONArray;",
        "type",
        "",
        "networksArray",
        "getNetworksArray",
        "()Lorg/json/JSONArray;",
        "readStream",
        "",
        "in",
        "Ljava/io/InputStream;",
        "showToast",
        "str",
        "doBindService",
        "dobindInjector",
        "doUnbindService",
        "unbindInjector",
        "startOpenVPN",
        "post_bind",
        "event",
        "ev",
        "Lcom/tknetwork/tunnel/service/c_05$EventMsg;",
        "log",
        "lm",
        "Lcom/tknetwork/tunnel/service/c_05$LogMsg;",
        "get_configure_intent",
        "Landroid/app/PendingIntent;",
        "requestCode",
        "is_active",
        "current_profile",
        "Lcom/tknetwork/tunnel/service/c_05$Profile;",
        "profile_list",
        "Lcom/tknetwork/tunnel/service/c_05$ProfileList;",
        "get_connection_stats",
        "Lcom/tknetwork/tunnel/service/c_05$ConnectionStats;",
        "get_last_event",
        "get_last_event_prof_manage",
        "log_history",
        "Ljava/util/ArrayDeque;",
        "jellyBeanHackPurge",
        "gen_ui_reset_event",
        "get_gui_version",
        "name",
        "submitConnectIntent",
        "profile_name",
        "server",
        "vpn_proto",
        "ipv6",
        "conn_timeout",
        "username",
        "password",
        "cache_password",
        "pk_password",
        "response",
        "epki_alias",
        "compression_mode",
        "proxy_name",
        "proxy_username",
        "proxy_password",
        "proxy_allow_creds_dialog",
        "gui_version",
        "setStatusBarColor",
        "color",
        "setNavBarColor",
        "buildDisconnectIntent",
        "Landroid/content/Intent;",
        "stop_service",
        "submitDisconnectIntent",
        "resolveExternalPkiAlias",
        "prof",
        "next_action",
        "Lcom/tknetwork/tunnel/activities/MainBaseActivity$EpkiPost;",
        "import_pkcs12",
        "path",
        "ok_dialog",
        "text",
        "title",
        "message",
        "Ljava/lang/Runnable;",
        "init_default_preferences",
        "resString",
        "res_id",
        "setUiColor",
        "mainViewModel",
        "Lcom/v2ray/ang/viewmodel/MainViewModel;",
        "getMainViewModel",
        "()Lcom/v2ray/ang/viewmodel/MainViewModel;",
        "mainViewModel$delegate",
        "Lkotlin/Lazy;",
        "loadV2rayConfig",
        "importBatchConfig",
        "initGroupTab",
        "editGuid",
        "getEditGuid",
        "()Ljava/lang/String;",
        "editGuid$delegate",
        "startV2Ray",
        "restartV2Ray",
        "stoptV2Ray",
        "requestVpnPermission",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "EpkiPost",
        "Companion",
        "com.fbd.tunnel-404_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMainBaseActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainBaseActivity.kt\ncom/tknetwork/tunnel/activities/MainBaseActivity\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n*L\n1#1,824:1\n70#2,11:825\n*S KotlinDebug\n*F\n+ 1 MainBaseActivity.kt\ncom/tknetwork/tunnel/activities/MainBaseActivity\n*L\n738#1:825,11\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/tknetwork/tunnel/activities/MainBaseActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field protected static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static interstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private consentInformation:Lcom/google/android/ump/ConsentInformation;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final editGuid$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private editor:Landroid/content/SharedPreferences$Editor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private interstitialAd$1:Lcom/google/android/gms/ads/interstitial/InterstitialAd;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final isMobileAdsInitializeCalled:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isPremium:Z

.field public mConfig:Lconfig/ConfigUtil;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mConnection:Landroid/content/ServiceConnection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field protected mInjector:Lcom/tknetwork/tunnel/service/TunnelVPN;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mInjectorConnection:Landroid/content/ServiceConnection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mainViewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private myPrefs:Landroid/content/SharedPreferences;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private openVPNService:Lcom/tknetwork/tunnel/service/c_05;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private prefs:Lnet/openvpn/openvpn/PrefUtil;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final requestVpnPermission:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private settingsStorage:Lcom/tencent/mmkv/MMKV;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->Companion:Lcom/tknetwork/tunnel/activities/MainBaseActivity$Companion;

    return-void

    :array_0
    .array-data 8
        -0x6084e062b0fd5945L    # -4.938873553184778E-157
        -0x7591174506a01b1dL
        -0x7f5e74b9c81b1d1L    # -1.723329944876954E270
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->isMobileAdsInitializeCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$mConnection$1;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity$mConnection$1;-><init>(Lcom/tknetwork/tunnel/activities/MainBaseActivity;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 18
    .line 19
    new-instance v0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$mInjectorConnection$1;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity$mInjectorConnection$1;-><init>(Lcom/tknetwork/tunnel/activities/MainBaseActivity;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->mInjectorConnection:Landroid/content/ServiceConnection;

    .line 25
    .line 26
    new-instance v0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$special$$inlined$viewModels$default$1;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 32
    .line 33
    const-class v2, Lcom/v2ray/ang/viewmodel/MainViewModel;

    .line 34
    .line 35
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    new-instance v3, Lcom/tknetwork/tunnel/activities/MainBaseActivity$special$$inlined$viewModels$default$2;

    .line 40
    .line 41
    invoke-direct {v3, p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 42
    .line 43
    .line 44
    new-instance v4, Lcom/tknetwork/tunnel/activities/MainBaseActivity$special$$inlined$viewModels$default$3;

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    invoke-direct {v4, v5, p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->mainViewModel$delegate:Lkotlin/Lazy;

    .line 54
    .line 55
    new-instance v0, L뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두;

    .line 56
    .line 57
    const/16 v1, 0xa

    .line 58
    .line 59
    invoke-direct {v0, p0, v1}, L뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두;-><init>(Ljava/lang/Object;I)V

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, L딄뒘듰둡땨돸된땀도땡딄듽땩됨돴뒬돛땁됨듸도듽땳돝뒀땡듟둡될들뒼땟딹뒋땀듐둡딞딨둔땅딅딤땜듬뎨땔됨뒀땪뎹뒻땠딜딝딨땀딤땸됐따땄딹따돼땄딸돝둣디두뒘땡딨둘땟돳돼뒼땬둘뒉돛딅듐땦돷둘딎됴뒻땣뒨땱뒻땳돨딤딟뎨땄땲듔듸딻땔땜듔딸딸뒙땅뒹땰듽뒛딟뒈땨땧땦뎹땸디딞땍됩뎽됩돤;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editGuid$delegate:Lkotlin/Lazy;

    .line 67
    .line 68
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 69
    .line 70
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    .line 71
    .line 72
    .line 73
    new-instance v1, L딐뒐되땯뒐땭돵뒐땡딞땹땤딝뒼듐돼듐뒨딅돛뒐딃됴돴땧도땫딨돰딨딌뒻땩뒘듻뒷딻뎸땁땡뎽둡딅딤둠딠딜땻둑듐돛땰돤돳땨땰듽뎽딁되듰땃땀돰땫디뎬든딟돸뒈땯됴되땭뎻됫둬됨돸땳땬돠딃딟돛듼뒋땁돶땧디땹돳듽땸뎸땦뒹땭돝뎰땮땔돠딨딟땫땵땮딝뎰딐둡땃듨둑돼뎠땰딞땻땪돼딝딅땥딀됫돸;

    .line 74
    .line 75
    invoke-direct {v1, p0}, L딐뒐되땯뒐땭돵뒐땡딞땹땤딝뒼듐돼듐뒨딅돛뒐딃됴돴땧도땫딨돰딨딌뒻땩뒘듻뒷딻뎸땁땡뎽둡딅딤둠딠딜땻둑듐돛땰돤돳땨땰듽뎽딁되듰땃땀돰땫디뎬든딟돸뒈땯됴되땭뎻됫둬됨돸땳땬돠딃딟돛듼뒋땁돶땧디땹돳듽땸뎸땦뒹땭돝뎰땮땔돠딨딟땫땵땮딝뎰딐둡땃듨둑돼뎠땰딞땻땪돼딝딅땥딀됫돸;-><init>(Lcom/tknetwork/tunnel/activities/MainBaseActivity;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->requestVpnPermission:Landroidx/activity/result/ActivityResultLauncher;

    .line 83
    .line 84
    return-void
.end method

.method public static final synthetic access$initGroupTab(Lcom/tknetwork/tunnel/activities/MainBaseActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->initGroupTab()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setInterstitialAd$p(Lcom/tknetwork/tunnel/activities/MainBaseActivity;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->interstitialAd$1:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setOpenVPNService$p(Lcom/tknetwork/tunnel/activities/MainBaseActivity;Lcom/tknetwork/tunnel/service/c_05;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->openVPNService:Lcom/tknetwork/tunnel/service/c_05;

    .line 2
    .line 3
    return-void
.end method

.method private static final editGuid_delegate$lambda$4(Lcom/tknetwork/tunnel/activities/MainBaseActivity;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    new-array v1, v1, [J

    .line 9
    .line 10
    fill-array-data v1, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-nez p0, :cond_0

    .line 25
    .line 26
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    new-array v0, v0, [J

    .line 30
    .line 31
    const-wide v1, -0x1656ad654c3df3f8L    # -9.691626599507841E200

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    aput-wide v1, v0, v3

    .line 38
    .line 39
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    :cond_0
    return-object p0

    .line 47
    :array_0
    .array-data 8
        -0x462e7d136adcead9L    # -3.453519144061927E-30
        0x509290568f5b7adeL    # 1.375707900628016E80
    .end array-data
.end method

.method private final getEditGuid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editGuid$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getSettingsStorage()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->settingsStorage:Lcom/tencent/mmkv/MMKV;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    new-array v2, v0, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1, v0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->settingsStorage:Lcom/tencent/mmkv/MMKV;

    .line 25
    .line 26
    :cond_0
    return-void

    .line 27
    :array_0
    .array-data 8
        0x222c21ef0948d28dL    # 4.505896807597682E-144
        -0x57eee75c0f6b7e35L    # -1.0847322999934788E-115
    .end array-data
.end method

.method private final importBatchConfig(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v3, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v3, p1, p0, v2}, Lcom/tknetwork/tunnel/activities/MainBaseActivity$importBatchConfig$1;-><init>(Ljava/lang/String;Lcom/tknetwork/tunnel/activities/MainBaseActivity;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private final initGroupTab()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->getMainViewModel()Lcom/v2ray/ang/viewmodel/MainViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/v2ray/ang/viewmodel/MainViewModel;->getSubscriptions(Landroid/content/Context;)Lkotlin/Pair;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/util/List;

    .line 14
    .line 15
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/List;

    .line 20
    .line 21
    return-void
.end method

.method private final initializeMobileAdsSdk()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->isMobileAdsInitializeCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Lcom/tknetwork/tunnel/activities/AppOpenManager;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v3, 0x6

    .line 20
    new-array v3, v3, [J

    .line 21
    .line 22
    fill-array-data v3, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-direct {v0, v1, v2}, Lcom/tknetwork/tunnel/activities/AppOpenManager;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->loadAdsView()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->loadInterstitial()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->loadAdsView()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :array_0
    .array-data 8
        0x5d1ec1b8702b0f35L    # 3.662671958869686E140
        -0x7bfafc6cf338ead7L
        0x20d9328eff6423b7L    # 1.924418553178844E-150
        0x51fb8cd9f6c87918L    # 8.563346911712387E86
        -0x67d9c5be5b8495d0L    # -2.435929142763274E-192
        -0x1736f9c79780ae11L    # -5.845599981039563E196
    .end array-data
.end method

.method public static synthetic ok_dialog$default(Lcom/tknetwork/tunnel/activities/MainBaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p5, :cond_1

    .line 2
    .line 3
    and-int/lit8 p4, p4, 0x4

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->ok_dialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/16 p2, 0xc

    .line 17
    .line 18
    new-array p2, p2, [J

    .line 19
    .line 20
    fill-array-data p2, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    nop

    .line 35
    :array_0
    .array-data 8
        0x3a6b2e7615e46681L    # 2.7446290288094706E-27
        -0x416a478fa98cf2a0L    # -3.236601373130402E-7
        -0x2c173fb55ac46030L    # -1.652128500819517E96
        -0x2f1836ef35d6bcdL
        -0x5cf63a81bbe3703eL    # -6.762869585900238E-140
        -0xae63df56f62bbebL
        0x668b4468c0a05296L    # 9.268901314536235E185
        0x37432052c17f69e3L    # 1.7153025680348632E-42
        0x4bde16316d6baf3bL    # 2.9508941359172167E57
        -0x1bb5365f2149de34L    # -1.3250781132083238E175
        0x6a21ad14788f84f5L    # 1.731862399844803E203
        -0x40a9ecf639f83c65L    # -0.0013473124928362393
    .end array-data
.end method

.method private static final ok_dialog$lambda$3(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private final readStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 7
    .line 8
    new-instance v2, Ljava/io/InputStreamReader;

    .line 9
    .line 10
    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 14
    .line 15
    .line 16
    const/16 p1, 0x400

    .line 17
    .line 18
    new-array v2, p1, [C

    .line 19
    .line 20
    :goto_0
    const/4 v3, 0x0

    .line 21
    invoke-virtual {v1, v2, v3, p1}, Ljava/io/Reader;->read([CII)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-gtz v4, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    const/4 v1, 0x3

    .line 39
    new-array v1, v1, [J

    .line 40
    .line 41
    fill-array-data v1, :array_0

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object p1

    .line 55
    :array_0
    .array-data 8
        0x6add121eeb96b6b1L    # 5.833293007407853E206
        0x7da095f82fea2275L    # 1.3558843269553138E297
        0x43f05e619641a09dL    # 1.8871799206266917E19
    .end array-data
.end method

.method private static final recquestConsentform$lambda$1(Lcom/tknetwork/tunnel/activities/MainBaseActivity;)V
    .locals 1

    .line 1
    new-instance v0, L딐돶뎬딞돨딌듬뒹땡뒨돛둘땰땵돵됨땠딠둡둑딎딞됨뒛땨딌딀뒋된땣딽딐뒘듼땍듔뎨됫될된뒘땄뒛땲됴땠땡땁뒝땫둬땯뒷뎡뒤될뎬땜뎽딎둠딞뒋뎠돠따돛땹듌될돶듬뎽땪듬둔뎬듼뎽딠둥도뎹땀뒉뎠딁뎡땫땳딹땔뒐땍뒀뒵뎸딨돝딄둘땻된뒨돳딸돵땝뎬땣땥땪땐딅둠두들됨든땜둥됨둣땱딽뒾땧돳돰돳;

    .line 2
    .line 3
    invoke-direct {v0, p0}, L딐돶뎬딞돨딌듬뒹땡뒨돛둘땰땵돵됨땠딠둡둑딎딞됨뒛땨딌딀뒋된땣딽딐뒘듼땍듔뎨됫될된뒘땄뒛땲됴땠땡땁뒝땫둬땯뒷뎡뒤될뎬땜뎽딎둠딞뒋뎠돠따돛땹듌될돶듬뎽땪듬둔뎬듼뎽딠둥도뎹땀뒉뎠딁뎡땫땳딹땔뒐땍뒀뒵뎸딨돝딄둘땻된뒨돳딸돵땝뎬땣땥땪땐딅둠두들됨든땜둥됨둣땱딽뒾땧돳돰돳;-><init>(Lcom/tknetwork/tunnel/activities/MainBaseActivity;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lcom/google/android/ump/UserMessagingPlatform;->loadAndShowConsentFormIfRequired(Landroid/app/Activity;Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final recquestConsentform$lambda$1$lambda$0(Lcom/tknetwork/tunnel/activities/MainBaseActivity;Lcom/google/android/ump/FormError;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v2, 0x3

    .line 7
    new-array v2, v2, [J

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    new-array v2, v0, [J

    .line 21
    .line 22
    fill-array-data v2, :array_1

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p1}, Lcom/google/android/ump/FormError;->getErrorCode()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p1}, Lcom/google/android/ump/FormError;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-array v0, v0, [Ljava/lang/Object;

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    aput-object v2, v0, v3

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    aput-object p1, v0, v2

    .line 51
    .line 52
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->consentInformation:Lcom/google/android/ump/ConsentInformation;

    .line 56
    .line 57
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {p1}, Lcom/google/android/ump/ConsentInformation;->canRequestAds()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->initializeMobileAdsSdk()V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void

    .line 70
    nop

    .line 71
    :array_0
    .array-data 8
        -0x3bafb99cc7c67640L    # -1.20087945841791E21
        0x1a4365f2b2c07db8L    # 3.65220240196407E-182
        -0x422d9ef1ad9505a1L    # -6.68628664626722E-11
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    :array_1
    .array-data 8
        -0x7f9b87ef1de972d1L    # -9.109010751423093E-307
        -0x520383097b2f730fL    # -3.580183682967618E-87
    .end array-data
.end method

.method private static final recquestConsentform$lambda$2(Lcom/google/android/ump/FormError;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    new-array v2, v1, [J

    .line 19
    .line 20
    fill-array-data v2, :array_1

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0}, Lcom/google/android/ump/FormError;->getErrorCode()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p0}, Lcom/google/android/ump/FormError;->getMessage()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    new-array v1, v1, [Ljava/lang/Object;

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    aput-object v2, v1, v3

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    aput-object p0, v1, v2

    .line 49
    .line 50
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :array_0
    .array-data 8
        -0x4837e8691e7a2661L    # -5.531285455978397E-40
        0x2bac3f1896a4b4d5L    # 2.5828286277317497E-98
        0x79268157450a5755L    # 3.895916656654164E275
    .end array-data

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    :array_1
    .array-data 8
        0x4797a1c86bafd86eL    # 7.853067177758204E36
        0x55432f3eb8df996bL    # 5.371062102153858E102
    .end array-data
.end method

.method private static final requestVpnPermission$lambda$5(Lcom/tknetwork/tunnel/activities/MainBaseActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/4 v0, -0x1

    .line 24
    if-ne p1, v0, :cond_0

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->startV2Ray()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        -0x63957d4b1d1c8a78L    # -8.574949928595255E-172
        -0x5a7d81633b40c7afL    # -5.336251811701052E-128
    .end array-data
.end method

.method private final startV2Ray()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/v2ray/ang/handler/MmkvManager;->getSelectServer()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x2

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {p0, v1, v0, v1}, Lcom/v2ray/ang/service/V2RayServiceManager;->startVService$default(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    :goto_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v1, 0x5

    .line 23
    new-array v1, v1, [J

    .line 24
    .line 25
    fill-array-data v1, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {p0, v0}, Lcom/v2ray/ang/extension/_ExtKt;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :array_0
    .array-data 8
        0x3c4a74c44da6cf99L    # 2.868378316014919E-18
        -0x269b07b9d1acbd14L    # -4.331945392134048E122
        0x6297311d9831056L
        0x13292841b4b8080dL
        -0x74f8b42791707cedL
    .end array-data
.end method

.method public static synthetic 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/google/android/ump/FormError;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->recquestConsentform$lambda$2(Lcom/google/android/ump/FormError;)V

    return-void
.end method

.method public static synthetic 뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/tknetwork/tunnel/activities/MainBaseActivity;Lcom/google/android/ump/FormError;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->recquestConsentform$lambda$1$lambda$0(Lcom/tknetwork/tunnel/activities/MainBaseActivity;Lcom/google/android/ump/FormError;)V

    return-void
.end method

.method public static synthetic 뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->ok_dialog$lambda$3(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic 뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/tknetwork/tunnel/activities/MainBaseActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->requestVpnPermission$lambda$5(Lcom/tknetwork/tunnel/activities/MainBaseActivity;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic 뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(Lcom/tknetwork/tunnel/activities/MainBaseActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->recquestConsentform$lambda$1(Lcom/tknetwork/tunnel/activities/MainBaseActivity;)V

    return-void
.end method

.method public static synthetic 뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐(Lcom/tknetwork/tunnel/activities/MainBaseActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editGuid_delegate$lambda$4(Lcom/tknetwork/tunnel/activities/MainBaseActivity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final buildDisconnectIntent(Z)Landroid/content/Intent;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/tknetwork/tunnel/service/c_05;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v2, 0x5

    .line 11
    new-array v2, v2, [J

    .line 12
    .line 13
    fill-array-data v2, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    new-array v2, v2, [J

    .line 31
    .line 32
    fill-array-data v2, :array_1

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    const/4 v1, 0x3

    .line 49
    new-array v1, v1, [J

    .line 50
    .line 51
    fill-array-data v1, :array_2

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object p1

    .line 65
    :array_0
    .array-data 8
        0x2364e0cceedca73dL    # 3.506416768681518E-138
        0x6cc1049786df9debL    # 7.333204950663494E215
        -0x1afc7a1ddf1c777dL    # -3.955611157287219E178
        -0x2c093343aeea154cL    # -3.0437479491950425E96
        0x482481720cefddbbL    # 3.4888549670549824E39
    .end array-data

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    :array_1
    .array-data 8
        0xe2a0df1d726c8ffL
        0x1b362beba0fef9c2L    # 1.367851338580377E-177
        -0x6533280c49ea8f1cL
        -0x50e325645cf90e9cL    # -9.505747461529022E-82
    .end array-data

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    :array_2
    .array-data 8
        -0x63fa34e2e5f7d257L
        -0x3e68beac2427f5f5L    # -9.753931896097581E7
        -0x7e55a06ab0344194L
    .end array-data
.end method

.method public final current_profile()Lcom/tknetwork/tunnel/service/c_05$Profile;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->openVPNService:Lcom/tknetwork/tunnel/service/c_05;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/service/c_05;->get_current_profile()Lcom/tknetwork/tunnel/service/c_05$Profile;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return-object v0
.end method

.method public final doBindService()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/tknetwork/tunnel/service/c_05;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v2, 0x4

    .line 11
    new-array v2, v2, [J

    .line 12
    .line 13
    fill-array-data v2, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 28
    .line 29
    const/16 v2, 0x41

    .line 30
    .line 31
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 32
    .line 33
    .line 34
    return-void

    :array_0
    .array-data 8
        -0x595462e839233773L
        0x4f847d4fbed110abL    # 1.1584579046413768E75
        -0x5def089179899155L
        -0x2a7d279278206b31L    # -8.44178665715754E103
    .end array-data
.end method

.method public final doUnbindService()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    new-array v1, v1, [J

    .line 19
    .line 20
    fill-array-data v1, :array_1

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->openVPNService:Lcom/tknetwork/tunnel/service/c_05;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p0}, Lcom/tknetwork/tunnel/service/c_05;->client_detach(Lcom/tknetwork/tunnel/service/c_05$EventReceiver;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->openVPNService:Lcom/tknetwork/tunnel/service/c_05;

    .line 46
    .line 47
    :cond_0
    return-void

    .line 48
    nop

    .line 49
    :array_0
    .array-data 8
        -0x4f7155e18b6edfb9L    # -8.474368821173181E-75
        0xe2d30cc26b220cL
        0xa9283e0f7e964a1L
    .end array-data

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    :array_1
    .array-data 8
        0x3d2fa4f202e80829L    # 5.621160035251646E-14
        -0x6a0916677bd59ebfL    # -7.307942063861739E-203
        0x18bd4eb06d351013L
        -0x3e5cf439f5289b9eL    # -1.5976934942068774E8
    .end array-data
.end method

.method public final dobindInjector()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/tknetwork/tunnel/service/TunnelVPN;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->mInjectorConnection:Landroid/content/ServiceConnection;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public event(Lcom/tknetwork/tunnel/service/c_05$EventMsg;)V
    .locals 2
    .param p1    # Lcom/tknetwork/tunnel/service/c_05$EventMsg;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x5bf5841ef6d12f69L    # 9.774208025397236E134
        0x40126c97d3f8c6baL    # 4.606047927912806
    .end array-data
.end method

.method public final gen_ui_reset_event()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->openVPNService:Lcom/tknetwork/tunnel/service/c_05;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1, p0}, Lcom/tknetwork/tunnel/service/c_05;->gen_ui_reset_event(ZLcom/tknetwork/tunnel/service/c_05$EventReceiver;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final getJSONObject()Lorg/json/JSONObject;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    new-array v3, v3, [J

    .line 11
    .line 12
    fill-array-data v3, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    new-instance v1, Lorg/json/JSONObject;

    .line 32
    .line 33
    new-instance v2, Ljava/io/FileInputStream;

    .line 34
    .line 35
    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, v2}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->readStream(Ljava/io/InputStream;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object v1

    .line 46
    :cond_0
    new-instance v0, Lcom/tknetwork/tunnel/utils/c_11;

    .line 47
    .line 48
    invoke-direct {v0}, Lcom/tknetwork/tunnel/utils/c_11;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object v0, v0, Lcom/tknetwork/tunnel/utils/c_11;->conf:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/tknetwork/tunnel/utils/c_12$Parser;->d_01(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Lorg/json/JSONObject;

    .line 58
    .line 59
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    return-object v1

    .line 63
    :catch_0
    const/4 v0, 0x0

    .line 64
    return-object v0

    .line 65
    :array_0
    .array-data 8
        -0x765b4be5c4f4da87L
        0x382939073c964008L    # 3.7061524669959227E-38
        0x4b2eb54e3487ff97L    # 1.470631788009502E54
    .end array-data
.end method

.method public final getMainViewModel()Lcom/v2ray/ang/viewmodel/MainViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->mainViewModel$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/v2ray/ang/viewmodel/MainViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public getNetworksArray()Lorg/json/JSONArray;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->getJSONObject()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    new-array v2, v2, [J

    .line 12
    .line 13
    fill-array-data v2, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 24
    .line 25
    .line 26
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return-object v0

    .line 28
    :catch_0
    const/4 v0, 0x0

    .line 29
    return-object v0

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        -0x489dd7490286b40cL    # -6.514236917615676E-42
        0x37a925d2ca1ad7f4L    # 1.4434099262296344E-40
    .end array-data
.end method

.method public final getOpenVPNService()Lcom/tknetwork/tunnel/service/c_05;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->openVPNService:Lcom/tknetwork/tunnel/service/c_05;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getServersArray(I)Lorg/json/JSONArray;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->getJSONObject()Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    new-array v4, v0, [J

    .line 13
    .line 14
    fill-array-data v4, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v3, Lorg/json/JSONArray;

    .line 29
    .line 30
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-lez v4, :cond_0

    .line 38
    .line 39
    new-instance v4, Lorg/json/JSONObject;

    .line 40
    .line 41
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v6, v0, [J

    .line 47
    .line 48
    fill-array-data v6, :array_1

    .line 49
    .line 50
    .line 51
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v7, v1, [J

    .line 61
    .line 62
    fill-array-data v7, :array_2

    .line 63
    .line 64
    .line 65
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 76
    .line 77
    new-array v6, v0, [J

    .line 78
    .line 79
    fill-array-data v6, :array_3

    .line 80
    .line 81
    .line 82
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 90
    .line 91
    new-array v0, v0, [J

    .line 92
    .line 93
    fill-array-data v0, :array_4

    .line 94
    .line 95
    .line 96
    invoke-direct {v6, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 107
    .line 108
    .line 109
    :cond_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    .line 110
    .line 111
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 115
    .line 116
    new-array v5, v1, [J

    .line 117
    .line 118
    fill-array-data v5, :array_5

    .line 119
    .line 120
    .line 121
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {v0, v4}, Lnet/openvpn/openvpn/PrefUtil;->get_string(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    const/4 v5, -0x1

    .line 137
    if-nez v4, :cond_1

    .line 138
    .line 139
    invoke-static {v0}, Lcom/tknetwork/tunnel/utils/c_12$Parser;->d_01(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    new-instance v4, Lorg/json/JSONObject;

    .line 144
    .line 145
    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 149
    .line 150
    new-array v6, v1, [J

    .line 151
    .line 152
    fill-array-data v6, :array_6

    .line 153
    .line 154
    .line 155
    invoke-direct {v0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-ne p1, v0, :cond_1

    .line 167
    .line 168
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 169
    .line 170
    .line 171
    :cond_1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    .line 172
    .line 173
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 177
    .line 178
    new-array v6, v1, [J

    .line 179
    .line 180
    fill-array-data v6, :array_7

    .line 181
    .line 182
    .line 183
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-virtual {v0, v4}, Lnet/openvpn/openvpn/PrefUtil;->get_string(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    if-nez v4, :cond_2

    .line 199
    .line 200
    invoke-static {v0}, Lcom/tknetwork/tunnel/utils/c_12$Parser;->d_01(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    new-instance v4, Lorg/json/JSONObject;

    .line 205
    .line 206
    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 210
    .line 211
    new-array v6, v1, [J

    .line 212
    .line 213
    fill-array-data v6, :array_8

    .line 214
    .line 215
    .line 216
    invoke-direct {v0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-ne p1, v0, :cond_2

    .line 228
    .line 229
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 230
    .line 231
    .line 232
    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    const/4 v4, 0x0

    .line 237
    :goto_0
    if-ge v4, v0, :cond_4

    .line 238
    .line 239
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 244
    .line 245
    new-array v8, v1, [J

    .line 246
    .line 247
    fill-array-data v8, :array_9

    .line 248
    .line 249
    .line 250
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v7

    .line 257
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 258
    .line 259
    .line 260
    move-result v7

    .line 261
    if-ne v7, p1, :cond_3

    .line 262
    .line 263
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .line 265
    .line 266
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 267
    .line 268
    goto :goto_0

    .line 269
    :cond_4
    return-object v3

    .line 270
    :catch_0
    const/4 p1, 0x0

    .line 271
    return-object p1

    .line 272
    nop

    .line 273
    :array_0
    .array-data 8
        -0x4fcad00a3c445291L    # -1.8297747246359458E-76
        0x5a54bf0334e9ebfaL    # 1.4043506122924554E127
    .end array-data

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    :array_1
    .array-data 8
        0x53c33c65653a5c1aL    # 3.209975029843147E95
        -0x5e130257a8570599L    # -2.902104530145388E-145
    .end array-data

    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    :array_2
    .array-data 8
        -0x7b5265e2e57f0fa1L
        0x6887c32e4f0cad61L    # 3.4692689492199976E195
        0x2d9bdabbefeccb0L
    .end array-data

    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    :array_3
    .array-data 8
        -0x69388df85decdc07L    # -6.125916291736827E-199
        -0x2aec1042fbf660f2L    # -6.976972118450243E101
    .end array-data

    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    :array_4
    .array-data 8
        -0x73bcc5495c66dfefL    # -1.3428830520579993E-249
        -0x13bd2f58ce6edf11L    # -3.167031237130046E213
    .end array-data

    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    :array_5
    .array-data 8
        -0x6d4793f9d9a412c7L
        -0x57c02800a43b9fa5L
        -0x67b94a37ff10793dL    # -9.955234475103104E-192
    .end array-data

    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    :array_6
    .array-data 8
        0x3a3bc35679d3f8cdL    # 3.504188079885918E-28
        -0x50146b79a6c13ad0L    # -7.443345001703052E-78
        0x1ed39a0a3ccfba3L
    .end array-data

    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    :array_7
    .array-data 8
        0x2db401145d4da03bL    # 1.5712411342352974E-88
        -0x5ebdceb4f5ce3cd0L    # -1.778466765114108E-148
        0x651c1c89c1f26d2eL    # 1.1391505032699089E179
    .end array-data

    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    :array_8
    .array-data 8
        -0x5793bd0793ad2c5cL    # -5.738104399132822E-114
        0x42d290ffc2fdb4d8L    # 8.165590223841938E13
        0x715cd4d18a9af097L    # 1.1733866793111648E238
    .end array-data

    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    :array_9
    .array-data 8
        -0x43539d4300bfe28aL    # -1.9696533547536396E-16
        0x2880d540613f297cL
        0xf8251ea6940f264L    # 5.761803538886338E-234
    .end array-data
.end method

.method public get_configure_intent(I)Landroid/app/PendingIntent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final get_connection_stats()Lcom/tknetwork/tunnel/service/c_05$ConnectionStats;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->openVPNService:Lcom/tknetwork/tunnel/service/c_05;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/service/c_05;->get_connection_stats()Lcom/tknetwork/tunnel/service/c_05$ConnectionStats;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return-object v0
.end method

.method public final get_gui_version(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v3, 0x2

    .line 6
    new-array v4, v3, [J

    .line 7
    .line 8
    fill-array-data v4, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    new-array v4, v3, [J

    .line 24
    .line 25
    fill-array-data v4, :array_1

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v4, v5, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    new-array v5, v1, [J

    .line 59
    .line 60
    fill-array-data v5, :array_2

    .line 61
    .line 62
    .line 63
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    const/4 v5, 0x5

    .line 72
    new-array v5, v5, [J

    .line 73
    .line 74
    fill-array-data v5, :array_3

    .line 75
    .line 76
    .line 77
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    const/4 v4, 0x0

    .line 84
    :goto_0
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v6, v3, [J

    .line 87
    .line 88
    fill-array-data v6, :array_4

    .line 89
    .line 90
    .line 91
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    new-array v6, v1, [Ljava/lang/Object;

    .line 103
    .line 104
    aput-object p1, v6, v0

    .line 105
    .line 106
    const/4 p1, 0x1

    .line 107
    aput-object v2, v6, p1

    .line 108
    .line 109
    aput-object v4, v6, v3

    .line 110
    .line 111
    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {v5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    new-array v1, v1, [J

    .line 122
    .line 123
    fill-array-data v1, :array_5

    .line 124
    .line 125
    .line 126
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return-object p1

    .line 137
    :array_0
    .array-data 8
        0x2fd74c452ccc7dd5L    # 3.143825859580151E-78
        0x58e181690c7d8fccL    # 1.4126124660380598E120
    .end array-data

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    :array_1
    .array-data 8
        -0x285438d18c2a78a4L
        0x645d65eba4d9ead2L    # 2.9084202106358934E175
    .end array-data

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :array_2
    .array-data 8
        -0x3e9c7d390fa1e6f0L    # -1.022930351148656E7
        0x2861c1beb1ec0d3eL    # 3.605261302969681E-114
        0x674ac12c1ebc9db2L    # 3.725164186881527E189
    .end array-data

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :array_3
    .array-data 8
        0xdc8fdac8bba946L
        -0x1bd5b2605df98daaL    # -3.25279261711309E174
        -0x186810c5950465ccL    # -1.0664029994957293E191
        0x737395c2ac9c824eL    # 1.3693676347064242E248
        -0x1b3843508c116a8L    # -2.384405146699395E300
    .end array-data

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_4
    .array-data 8
        0x750d40911502c45aL    # 6.8628589752746E255
        0x3efc2ea78f5b75f5L    # 2.6876682531864653E-5
    .end array-data

    :array_5
    .array-data 8
        -0x70fb86ad966289abL
        -0x33d52d1557ef26feL    # -8.41881528827668E58
        0x148f4346e3cb65aL
    .end array-data
.end method

.method public final get_last_event()Lcom/tknetwork/tunnel/service/c_05$EventMsg;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->openVPNService:Lcom/tknetwork/tunnel/service/c_05;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/service/c_05;->get_last_event()Lcom/tknetwork/tunnel/service/c_05$EventMsg;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return-object v0
.end method

.method public final get_last_event_prof_manage()Lcom/tknetwork/tunnel/service/c_05$EventMsg;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->openVPNService:Lcom/tknetwork/tunnel/service/c_05;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/service/c_05;->get_last_event_prof_manage()Lcom/tknetwork/tunnel/service/c_05$EventMsg;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return-object v0
.end method

.method public final import_pkcs12(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x3

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    new-array v3, v2, [J

    .line 6
    .line 7
    fill-array-data v3, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->jellyBeanHackPurge()V

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-static {}, Landroid/security/KeyChain;->createInstallIntent()Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 v4, 0x4

    .line 30
    new-array v4, v4, [J

    .line 31
    .line 32
    fill-array-data v4, :array_1

    .line 33
    .line 34
    .line 35
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v4, v2, [J

    .line 48
    .line 49
    fill-array-data v4, :array_2

    .line 50
    .line 51
    .line 52
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const-wide/32 v4, 0x40000

    .line 60
    .line 61
    .line 62
    invoke-static {p1, v4, v5}, Lapp/tunnel/vpncommons/utils/FileUtils;->readFileByteArray(Ljava/lang/String;J)[B

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    new-array v3, v0, [J

    .line 76
    .line 77
    fill-array-data v3, :array_3

    .line 78
    .line 79
    .line 80
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const v3, 0x7f1300c4

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    new-array v4, v2, [Ljava/lang/Object;

    .line 95
    .line 96
    const/4 v5, 0x0

    .line 97
    aput-object p1, v4, v5

    .line 98
    .line 99
    const/4 p1, 0x1

    .line 100
    aput-object v3, v4, p1

    .line 101
    .line 102
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 111
    .line 112
    new-array v0, v0, [J

    .line 113
    .line 114
    fill-array-data v0, :array_4

    .line 115
    .line 116
    .line 117
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->ok_dialog(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :goto_0
    return-void

    .line 131
    :array_0
    .array-data 8
        -0x3a3fd201076e9417L    # -1.0014731770764167E28
        0x588f1e4916ae47c4L    # 3.923595384063806E118
    .end array-data

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :array_1
    .array-data 8
        0x34b716e2bff60778L    # 9.416584262560262E-55
        -0x4a95ae8da6732d44L    # -2.1981945458448636E-51
        0x7a2795191b4426c3L    # 2.675434026613207E280
        0x632c567f5f04713bL    # 5.347304910255E169
    .end array-data

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    :array_2
    .array-data 8
        -0x6c77aa507cbaf6bbL
        -0x147a7ad92f17c598L    # -8.843654251290983E209
    .end array-data

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :array_3
    .array-data 8
        -0x5b20fe18de432e11L
        -0x18770c02236a795cL    # -5.558935652874423E190
        -0x5129866f208da86L
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_4
    .array-data 8
        0xdccf45bbe3834a9L
        -0x162d3f37f1b2e5aeL    # -5.741813528508253E201
        0x6fd0abccc1cc1fe3L    # 4.044089632369052E230
    .end array-data
.end method

.method public final init_default_preferences(Lnet/openvpn/openvpn/PrefUtil;)V
    .locals 9
    .param p1    # Lnet/openvpn/openvpn/PrefUtil;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x5

    const/4 v1, 0x4

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x2

    new-array v4, v3, [J

    fill-array-data v4, :array_0

    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x3

    new-array v5, v4, [J

    fill-array-data v5, :array_1

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/openvpn/openvpn/PrefUtil;->contains_key(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_2

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v3, [J

    fill-array-data v6, :array_3

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v3, [J

    fill-array-data v5, :array_4

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/openvpn/openvpn/PrefUtil;->contains_key(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v3, [J

    fill-array-data v5, :array_5

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v3, [J

    fill-array-data v6, :array_6

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_7

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/openvpn/openvpn/PrefUtil;->contains_key(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 6
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_8

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v3, [J

    fill-array-data v6, :array_9

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_2
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_a

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/openvpn/openvpn/PrefUtil;->contains_key(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 8
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_b

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->mConfig:Lconfig/ConfigUtil;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lconfig/ConfigUtil;->getCompression()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v3, [J

    fill-array-data v6, :array_c

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    :goto_0
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v3, [J

    fill-array-data v6, :array_d

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    goto :goto_0

    :goto_1
    invoke-virtual {p1, v2, v5}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_e

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/openvpn/openvpn/PrefUtil;->contains_key(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 10
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_f

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v3, [J

    fill-array-data v6, :array_10

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_5
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_11

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/openvpn/openvpn/PrefUtil;->contains_key(Ljava/lang/String;)Z

    move-result v2

    const/4 v5, 0x1

    if-nez v2, :cond_6

    .line 12
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_12

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v5}, Lnet/openvpn/openvpn/PrefUtil;->set_boolean(Ljava/lang/String;Z)V

    .line 13
    :cond_6
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v1, [J

    fill-array-data v6, :array_13

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/openvpn/openvpn/PrefUtil;->contains_key(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 14
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v1, [J

    fill-array-data v6, :array_14

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v5}, Lnet/openvpn/openvpn/PrefUtil;->set_boolean(Ljava/lang/String;Z)V

    .line 15
    :cond_7
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v0, [J

    fill-array-data v6, :array_15

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/openvpn/openvpn/PrefUtil;->contains_key(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 16
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v0, [J

    fill-array-data v6, :array_16

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v5}, Lnet/openvpn/openvpn/PrefUtil;->set_boolean(Ljava/lang/String;Z)V

    .line 17
    :cond_8
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v1, [J

    fill-array-data v6, :array_17

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/openvpn/openvpn/PrefUtil;->contains_key(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 18
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v1, [J

    fill-array-data v6, :array_18

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v5}, Lnet/openvpn/openvpn/PrefUtil;->set_boolean(Ljava/lang/String;Z)V

    .line 19
    :cond_9
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_19

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/openvpn/openvpn/PrefUtil;->contains_key(Ljava/lang/String;)Z

    move-result v2

    const/4 v6, 0x0

    if-nez v2, :cond_a

    .line 20
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v4, [J

    fill-array-data v7, :array_1a

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v6}, Lnet/openvpn/openvpn/PrefUtil;->set_boolean(Ljava/lang/String;Z)V

    .line 21
    :cond_a
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v1, [J

    fill-array-data v7, :array_1b

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v4, [J

    fill-array-data v8, :array_1c

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 22
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v4, [J

    fill-array-data v7, :array_1d

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v3, [J

    fill-array-data v8, :array_1e

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 23
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v3, [J

    fill-array-data v7, :array_1f

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v3, [J

    fill-array-data v8, :array_20

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 24
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v4, [J

    fill-array-data v7, :array_21

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v3, [J

    fill-array-data v8, :array_22

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 25
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v4, [J

    fill-array-data v7, :array_23

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v3, [J

    fill-array-data v8, :array_24

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 26
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v1, [J

    fill-array-data v7, :array_25

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v3, [J

    fill-array-data v8, :array_26

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 27
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v1, [J

    fill-array-data v7, :array_27

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v3, [J

    fill-array-data v8, :array_28

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 28
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v0, [J

    fill-array-data v7, :array_29

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v3, [J

    fill-array-data v8, :array_2a

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 29
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v1, [J

    fill-array-data v7, :array_2b

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 30
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v1, [J

    fill-array-data v7, :array_2c

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 31
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v1, [J

    fill-array-data v7, :array_2d

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 32
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v1, [J

    fill-array-data v7, :array_2e

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 33
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v1, [J

    fill-array-data v7, :array_2f

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 34
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v1, [J

    fill-array-data v7, :array_30

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v3, [J

    fill-array-data v8, :array_31

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v4, [J

    fill-array-data v7, :array_32

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v3, [J

    fill-array-data v8, :array_33

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 36
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v0, [J

    fill-array-data v7, :array_34

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v4, [J

    fill-array-data v8, :array_35

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 37
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v4, [J

    fill-array-data v7, :array_36

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 38
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v1, [J

    fill-array-data v7, :array_37

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 39
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v4, [J

    fill-array-data v7, :array_38

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v3, [J

    fill-array-data v8, :array_39

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 40
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v4, [J

    fill-array-data v7, :array_3a

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v3, [J

    fill-array-data v8, :array_3b

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 41
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v1, [J

    fill-array-data v7, :array_3c

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v4, [J

    fill-array-data v8, :array_3d

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 42
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v1, [J

    fill-array-data v7, :array_3e

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v3, [J

    fill-array-data v8, :array_3f

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 43
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v4, [J

    fill-array-data v7, :array_40

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v3, [J

    fill-array-data v8, :array_41

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 44
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v1, [J

    fill-array-data v7, :array_42

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 45
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v0, [J

    fill-array-data v7, :array_43

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 46
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v4, [J

    fill-array-data v7, :array_44

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v3, [J

    fill-array-data v8, :array_45

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 48
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->settingsStorage:Lcom/tencent/mmkv/MMKV;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v1, [J

    fill-array-data v7, :array_46

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v6}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Z)Z

    .line 49
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->settingsStorage:Lcom/tencent/mmkv/MMKV;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v1, [J

    fill-array-data v7, :array_47

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v5}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Z)Z

    .line 50
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->settingsStorage:Lcom/tencent/mmkv/MMKV;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v1, [J

    fill-array-data v7, :array_48

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v6}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Z)Z

    .line 51
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->settingsStorage:Lcom/tencent/mmkv/MMKV;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v1, [J

    fill-array-data v7, :array_49

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v6}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Z)Z

    .line 52
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->settingsStorage:Lcom/tencent/mmkv/MMKV;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v1, [J

    fill-array-data v7, :array_4a

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v6}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Z)Z

    .line 53
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->settingsStorage:Lcom/tencent/mmkv/MMKV;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v1, [J

    fill-array-data v7, :array_4b

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v3, [J

    fill-array-data v8, :array_4c

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v2, v7}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 54
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->settingsStorage:Lcom/tencent/mmkv/MMKV;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v4, [J

    fill-array-data v7, :array_4d

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v3, [J

    fill-array-data v8, :array_4e

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v2, v7}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 55
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->settingsStorage:Lcom/tencent/mmkv/MMKV;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v0, [J

    fill-array-data v7, :array_4f

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v4, [J

    fill-array-data v8, :array_50

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v2, v7}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->settingsStorage:Lcom/tencent/mmkv/MMKV;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v4, [J

    fill-array-data v7, :array_51

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v6}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Z)Z

    .line 57
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->settingsStorage:Lcom/tencent/mmkv/MMKV;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v1, [J

    fill-array-data v7, :array_52

    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v5}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Z)Z

    .line 58
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->settingsStorage:Lcom/tencent/mmkv/MMKV;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_53

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v3, [J

    fill-array-data v7, :array_54

    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 59
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->settingsStorage:Lcom/tencent/mmkv/MMKV;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_55

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v3, [J

    fill-array-data v7, :array_56

    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 60
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->settingsStorage:Lcom/tencent/mmkv/MMKV;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_57

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v4, [J

    fill-array-data v7, :array_58

    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 61
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->settingsStorage:Lcom/tencent/mmkv/MMKV;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_59

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v3, [J

    fill-array-data v7, :array_5a

    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 62
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->settingsStorage:Lcom/tencent/mmkv/MMKV;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_5b

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v3, [J

    fill-array-data v7, :array_5c

    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 63
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->settingsStorage:Lcom/tencent/mmkv/MMKV;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_5d

    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v6}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Z)Z

    .line 64
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->settingsStorage:Lcom/tencent/mmkv/MMKV;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_5e

    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v6}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Z)Z

    .line 65
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->settingsStorage:Lcom/tencent/mmkv/MMKV;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v4, [J

    fill-array-data v1, :array_5f

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v3, [J

    fill-array-data v2, :array_60

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    nop

    :array_0
    .array-data 8
        -0x78c7a954c968972fL    # -7.02973017424645E-274
        0x4eb29c54fb210a9eL    # 1.2844613546331238E71
    .end array-data

    :array_1
    .array-data 8
        -0x7468dbccdacea05cL    # -7.891024317838665E-253
        -0x61b38811c61a054aL    # -9.887275050194384E-163
        0xa88d12a2551d294L    # 6.45630247716198E-258
    .end array-data

    :array_2
    .array-data 8
        -0x65f71ca2f784f1a6L    # -2.928633737779085E-183
        -0x3d8c138c94a1c7a8L    # -1.3691418516195215E12
        -0x3e33f75b5ab472ecL    # -9.406569705902429E8
    .end array-data

    :array_3
    .array-data 8
        0x59caea37c5ec8359L    # 3.558452847772792E124
        -0x6b35a88c8234b556L
    .end array-data

    :array_4
    .array-data 8
        0x69f326280e6b673cL
        -0x4f8003738b8456baL    # -4.419855398977139E-75
    .end array-data

    :array_5
    .array-data 8
        -0x7f44165c68765cdeL
        -0x48405cc8a461a29bL    # -3.63181417017075E-40
    .end array-data

    :array_6
    .array-data 8
        -0x1998e7e2ef5cfcd3L    # -1.9625925727134573E185
        -0x7f2be571533ad37dL
    .end array-data

    :array_7
    .array-data 8
        0x68250347bed5fa69L    # 4.793485689855514E193
        -0x5e2d188b064808afL    # -9.461909101795296E-146
        0x88c2249efaddac0L
    .end array-data

    :array_8
    .array-data 8
        -0x75b3512029eb8e2L
        -0x260f79fff54d8830L
        0x48041c8b1cbcfcbfL    # 8.554485043055835E38
    .end array-data

    :array_9
    .array-data 8
        0x74d4ffa548c58edcL    # 6.158103961248703E254
        -0x7f4bdb2412c0b06aL
    .end array-data

    :array_a
    .array-data 8
        0x748985ae64facab0L    # 2.338968361650098E253
        -0x5674b3f77ce26b7bL
        0x37a4a69a345915b6L    # 1.1852972432542813E-40
    .end array-data

    :array_b
    .array-data 8
        0x28e01ac52207dccfL    # 8.370680477472195E-112
        0x6130f55f1a940ad0L    # 1.490131845508483E160
        0x5f0d4cb886278494L    # 7.492916567828274E149
    .end array-data

    :array_c
    .array-data 8
        -0x31189badf00df940L    # -1.2915584224830266E72
        -0x6e0c1282d312e9f9L    # -3.445562999456348E-222
    .end array-data

    :array_d
    .array-data 8
        -0x4b5394dab939b448L    # -5.7949878127444605E-55
        -0x6b28e74b65940cc9L
    .end array-data

    :array_e
    .array-data 8
        -0x11207b81beb0ed13L    # -1.1666195137257182E226
        -0x153136f3c01bb672L    # -3.088666702593555E206
        -0x70a251f95290fbf6L
        0x34c90dec5dee928fL    # 2.0435938682113147E-54
    .end array-data

    :array_f
    .array-data 8
        -0x537479a13ad6a299L    # -4.1236030915966026E-94
        -0x45e608fb6b114edeL    # -8.193082118225232E-29
        0x6e7863de61c1176fL    # 1.4106217844921966E224
        -0x33cad746ee8e6409L    # -1.3281765959546094E59
    .end array-data

    :array_10
    .array-data 8
        -0x75b59b5de70f9742L    # -4.291450614441402E-259
        -0x38313574afd64404L    # -8.185701889015113E37
    .end array-data

    :array_11
    .array-data 8
        0x201f67f17a26adf9L    # 5.855921520325466E-154
        -0x67b97ad85903f305L    # -9.871969054828556E-192
        0x125ef09ef0002fcdL
    .end array-data

    :array_12
    .array-data 8
        -0x6b419c8548840948L    # -9.243439128584641E-209
        -0x4b87c6ddb355733L    # -6.993127868174616E285
        -0x59e71c9f0b0fd3bL    # -3.186687470284664E281
    .end array-data

    :array_13
    .array-data 8
        0x4be8ca9cc31995fcL    # 4.8630775645136834E57
        -0x15cf1591da362e26L    # -3.314730085748037E203
        -0xa496c6083244672L
        -0x76350f208ce7527dL
    .end array-data

    :array_14
    .array-data 8
        0x29c4a665a89c963L
        -0x570d56d0d595c25dL
        0x5e0ff80ba24c1035L    # 1.2474869142723087E145
        0x1f158eb12628c5e2L    # 6.133360451591618E-159
    .end array-data

    :array_15
    .array-data 8
        0x323a301c15a366fcL    # 9.713642559888682E-67
        -0x4dcc98b4e97b7b2L
        -0x4e20920cb8705426L    # -1.821538597444302E-68
        0x12b401708e44b1acL
        0x73f7f1b2e6071dccL    # 4.2858363189748587E250
    .end array-data

    :array_16
    .array-data 8
        -0x555dcaedbff9872bL    # -2.54037175832137E-103
        -0x6ec5dd9111315b03L    # -1.103208356369286E-225
        -0x2413ca74ec5c4155L    # -6.407345332847859E134
        0x3ff687f69ee0b4c1L    # 1.4081941801226068
        -0x7f943e54933d2ea0L
    .end array-data

    :array_17
    .array-data 8
        0x5eb357eb4e7c3e6fL    # 1.545864647880718E148
        -0x4fd502346cbc6a5bL    # -1.1655108625978456E-76
        0x283b337303b5b285L    # 6.903448924981359E-115
        0x4b1fb947f86bf2a0L    # 7.596330032062321E53
    .end array-data

    :array_18
    .array-data 8
        -0x104f55cb263dbeb0L    # -1.010644942565867E230
        -0x4b0384f925d46925L    # -1.8584441224934198E-53
        0x13ad8e863893e0fL
        -0x3097031619bd34ddL    # -3.5319900440760183E74
    .end array-data

    :array_19
    .array-data 8
        -0x1c08495d00649f29L    # -3.665656775787202E173
        0x50895007dab62e42L    # 9.379203635972176E79
        -0x47fae9a0363c3221L    # -7.746287040191837E-39
    .end array-data

    :array_1a
    .array-data 8
        0x6cdb6a1c11d8d3c0L    # 2.3626374730808567E216
        -0x14a02f6e9f40c91bL    # -1.6342748230472114E209
        -0x6811608b2c15ad69L
    .end array-data

    :array_1b
    .array-data 8
        0x7af635028af23848L    # 2.063893040701945E284
        -0x400be5758d6a16ecL    # -1.2564796901702424
        -0x5ccce820cff9503eL    # -4.008315107491182E-139
        -0x6620ce1301712a7fL    # -4.58847072802633E-184
    .end array-data

    :array_1c
    .array-data 8
        0x5578d0322646d1dL
        0x6ce7f0993f0db590L    # 4.1263694871900466E216
        0x50b8b4c1db46d1e5L    # 7.323568561448524E80
    .end array-data

    :array_1d
    .array-data 8
        -0x5224367302bb0ff8L    # -8.730271362687231E-88
        0x63a91fbc78225ea9L    # 1.213656538787299E172
        -0xb0353c3006d010aL
    .end array-data

    :array_1e
    .array-data 8
        -0x58d42008ee21e1dfL    # -5.397398596557324E-120
        -0xadd4753e1bc81d7L
    .end array-data

    :array_1f
    .array-data 8
        0x469c547fd9f3c786L    # 1.4365055065945269E32
        -0x2bf0f0a229f324f4L    # -8.292976495652073E96
    .end array-data

    :array_20
    .array-data 8
        -0x5f4577f75ad31d69L    # -5.065730211727933E-151
        -0x42a8043b63c6e17bL    # -3.4082559045998464E-13
    .end array-data

    :array_21
    .array-data 8
        0x7988014ceec55458L    # 2.6595562750208812E277
        0x3a1b42e8afd9617dL    # 8.602169403960391E-29
        0x59f1654b71e90ca2L    # 1.8399231542298004E125
    .end array-data

    :array_22
    .array-data 8
        0x223ec8e83c6bb3c9L    # 9.861394389788843E-144
        0x240a35c0502301b9L    # 4.507527742729791E-135
    .end array-data

    :array_23
    .array-data 8
        -0xc2020973368540aL    # -1.426248419381337E250
        -0x17860190fc769f75L    # -1.8975286476003306E195
        -0x2c8ad366de4e43f4L    # -1.1041953486324783E94
    .end array-data

    :array_24
    .array-data 8
        -0x35190a18016e4cdaL    # -6.87245566123464E52
        0x28711b2270eee073L    # 6.946242968402546E-114
    .end array-data

    :array_25
    .array-data 8
        0x570abbe7cd14de74L    # 2.009150429490824E111
        -0x53a472ab8fe58707L    # -5.159594923905758E-95
        0x5bd14ad7e13b4834L    # 1.9638678727192458E134
        0x57b2c24443475effL    # 2.887251897625772E114
    .end array-data

    :array_26
    .array-data 8
        0x5c224cecf4bc9ec3L    # 6.650752643255447E135
        0x61f319622b37c842L    # 6.874035858993753E163
    .end array-data

    :array_27
    .array-data 8
        -0x13f21e55b22d6654L    # -3.143615532519082E212
        0x21689922ee07694aL    # 9.618675555162067E-148
        -0x67250493c7194efL    # -3.288995678534876E277
        0x7e27c71adefa30f3L    # 4.9761851216871246E299
    .end array-data

    :array_28
    .array-data 8
        0x5da9408978416bcdL    # 1.5396620926479698E143
        -0x396dcb5c8f97d96fL    # -9.23134548161505E31
    .end array-data

    :array_29
    .array-data 8
        -0x7a86b55c06a4d52L    # -4.983026754823846E271
        0x7cc134e0aedfc400L    # 8.585383212007523E292
        0x6dcf83f434b2f6bfL    # 8.900005669555191E220
        0x52a3deb1d173980eL    # 1.264865711103825E90
        0x597ab16ecc036d77L    # 1.1028519384999473E123
    .end array-data

    :array_2a
    .array-data 8
        -0x1d8551d3b465ecf9L    # -2.4582687725962154E166
        0x418baddabee5653aL    # 5.804731986200948E7
    .end array-data

    :array_2b
    .array-data 8
        -0x42d22ce290fb3b29L    # -5.297925275746126E-14
        0x6a69eddfd769190fL    # 4.06477150270321E204
        0x421ae42769f6b36fL    # 2.887423449367523E10
        -0x5760100d92ad5c7aL
    .end array-data

    :array_2c
    .array-data 8
        -0x410258c1280efd8bL    # -2.8279593149218484E-5
        0x6f48a198060d9729L    # 1.1670051244459361E228
        0x5b541566d6d1e4e3L    # 8.909630450979278E131
        0x17d8a5523503607fL    # 8.440447399791372E-194
    .end array-data

    :array_2d
    .array-data 8
        -0x3d1ded01289c0b8bL    # -1.5898235391990766E14
        -0x561d95eb096c321fL    # -6.272616049801652E-107
        0x28d87d1f7a081344L    # 6.364267773123949E-112
        -0x63b49f518e5ee5b2L
    .end array-data

    :array_2e
    .array-data 8
        0x75aad1b9e6a46db5L    # 6.443069350634143E258
        -0x7383cc0658b45debL    # -1.575648467013749E-248
        0x7f78ea778c03e1faL    # 1.0935331631920714E306
        0x799f6d95412caaa4L    # 6.9639168201408704E277
    .end array-data

    :array_2f
    .array-data 8
        -0x5e45677bd2fc6ca7L
        -0x167bbd918253f2f7L    # -1.938455446785593E200
        0x3b6a452cecda8b7cL
        0x7e897a51cd67e0fbL    # 3.4124616828407607E301
    .end array-data

    :array_30
    .array-data 8
        0x34106fa1d1fc6a71L    # 6.546039726631681E-58
        -0x7b202a1ceac32c80L    # -3.345151129363882E-285
        -0x4c4547cc4dc12333L    # -1.6627609830985422E-59
        -0x44196113a965673L
    .end array-data

    :array_31
    .array-data 8
        0x3631361bb105e95fL    # 1.1776490425379072E-47
        -0xa7d98356fb7bfd4L
    .end array-data

    :array_32
    .array-data 8
        0x23480e38011f0402L
        0x68990ec47d8e99deL    # 7.316748995242702E195
        -0x5886cf8ff710c3b3L
    .end array-data

    :array_33
    .array-data 8
        0x6fc0f5ee12f3afcbL    # 2.0571670057077785E230
        0x4d8cf0b43805f212L    # 3.8097050508379035E65
    .end array-data

    :array_34
    .array-data 8
        0x313ec446db23cd9eL    # 1.7413338590709734E-71
        -0x2c0955156c75e972L    # -3.026111820496194E96
        -0x32c0b04cb77fac13L    # -1.2880733803672669E64
        0x41d3d28189b9381L
        -0x69b1aaeade166d32L
    .end array-data

    :array_35
    .array-data 8
        -0x76e1936571509ef2L    # -9.435468473795098E-265
        -0x2618111701292bfdL    # -1.265697036662966E125
        0x2d1f2892386255e3L    # 2.3899983776939113E-91
    .end array-data

    :array_36
    .array-data 8
        0x3c27283be6fd0930L    # 6.276761889254286E-19
        -0x6947c3ccf407e04eL
        -0x7abf39766d6ca95dL
    .end array-data

    :array_37
    .array-data 8
        0x6cba2207c5a6ce45L    # 5.630475020379033E215
        -0xcf26d263ca357a7L
        0x1830f36564c13017L    # 3.715284715743668E-192
        -0x3908dfa23c03e5aaL    # -7.504955857942644E33
    .end array-data

    :array_38
    .array-data 8
        -0x6c9e50c6b966e363L    # -2.564986603996694E-215
        -0x4c46d24f95241fd1L    # -1.5668602318623764E-59
        0x22ed0358e3507f92L    # 1.90338128746247E-140
    .end array-data

    :array_39
    .array-data 8
        0x597299474b51b200L    # 7.684256755100576E122
        -0xc3cca3626a27ed0L    # -4.298097887239786E249
    .end array-data

    :array_3a
    .array-data 8
        0x2e1901ce6db2783dL    # 1.2570826309833299E-86
        0x2b90c11bd0ff045bL    # 7.659995493250415E-99
        0x6166b8ecf9fcabe2L    # 1.5972807144970181E161
    .end array-data

    :array_3b
    .array-data 8
        0x5a343f598d571be1L    # 3.4264843321660894E126
        0x18429fd70c98e681L    # 8.164215910479304E-192
    .end array-data

    :array_3c
    .array-data 8
        0x7c859dfe8c3ebb6aL    # 6.741314057312192E291
        -0x3ab88c39ca271f38L    # -5.670404466418261E25
        -0x2a4b1f1421f3ceedL    # -7.482037191583134E104
        0x2486746087b642c0L    # 9.885922555190924E-133
    .end array-data

    :array_3d
    .array-data 8
        0x48d1ea8c27e63cd7L    # 6.242884935152742E42
        0x39fa97acff9dc1deL    # 2.0977770604018296E-29
        0x253995b4ea151295L
    .end array-data

    :array_3e
    .array-data 8
        0x1b0e0779cc4d900aL    # 2.315775072431876E-178
        0x58751b4c1eee2bd7L    # 1.3306297221616955E118
        -0x521f59ba572576bcL    # -1.0461946075743877E-87
        -0x7a8655de7ccd5a8bL
    .end array-data

    :array_3f
    .array-data 8
        -0x363d832fa78825c6L    # -2.1109055147816046E47
        -0x1f634b14d217385eL    # -2.4633222502586268E157
    .end array-data

    :array_40
    .array-data 8
        0x668f385126d54287L    # 1.061255802173861E186
        0x39850333f3fa7673L    # 1.2949960027618673E-31
        -0x1f46d58900a68d9aL    # -8.637933108730377E157
    .end array-data

    :array_41
    .array-data 8
        -0x69cfe2958474b6eeL    # -8.22376500088523E-202
        -0x559a801aed193b87L    # -1.874829048460322E-104
    .end array-data

    :array_42
    .array-data 8
        0x37f71589ee281808L    # 4.239886147389157E-39
        -0x7320472a289c3d46L
        -0x3102aeec44f9e105L    # -3.2373836417229025E72
        0x6458cca59b51d6abL    # 2.4534584170230236E175
    .end array-data

    :array_43
    .array-data 8
        -0x5f11b67bd427bbb1L    # -4.626269310856175E-150
        -0x74e028cbd3846457L
        0x560c982d288434L
        0x3161cd86884ebc79L    # 8.060837593561061E-71
        -0x196087250d5ae19bL    # -2.1396509669253644E186
    .end array-data

    :array_44
    .array-data 8
        0x78520f729382e3b4L
        -0x3c87f0843d2eea68L    # -1.08358778638915968E17
        -0x41404091352ac613L    # -1.8923154059994656E-6
    .end array-data

    :array_45
    .array-data 8
        -0x426a66cc6eb11509L    # -4.910917393610855E-12
        0x36fea948baf0e682L    # 8.593116999119852E-44
    .end array-data

    :array_46
    .array-data 8
        0x54ffdbcba02d8559L    # 2.7873077231219987E101
        -0x1afcfc784316f51L    # -2.710307669019176E300
        0x513d266b2b51bf39L    # 2.2120679523898175E83
        -0x63a3814461f3c297L
    .end array-data

    :array_47
    .array-data 8
        0x1c16cf470070ae98L
        0x16f79aac7482ef71L    # 4.93391923802575E-198
        0x7eaa445c129bce32L
        -0x74f109753137c642L
    .end array-data

    :array_48
    .array-data 8
        -0x39446842acee8048L    # -5.596471049285845E32
        0x491aa3d5b7075f64L    # 1.4852285029995784E44
        0x72bf55eba7ba1011L    # 5.349028186050578E244
        0x33e6e7a6a2c4e451L    # 1.1402996645756284E-58
    .end array-data

    :array_49
    .array-data 8
        0x5a7fa9d30c600795L    # 8.573445770553542E127
        0x6220f5fe1e28ffbaL    # 4.883562654643988E164
        0x50c89f4dcd8b9fbL
        -0x317ca6ac9334502L
    .end array-data

    :array_4a
    .array-data 8
        -0xed4b7966e8b61caL    # -1.3879586019075384E237
        0x7334dbafe7933efaL    # 9.114908372977827E246
        -0x3a9f99426c38eea9L    # -1.586239326257249E26
        0x769e88ac2506504aL    # 2.4036884434202588E263
    .end array-data

    :array_4b
    .array-data 8
        -0x43a7e1827b073305L    # -5.229996725275566E-18
        0x15f0a37f6b06b22dL    # 5.306905529645832E-203
        -0x2ba1519680386530L    # -2.621394130191447E98
        -0x30e3c2ae8b9f1804L    # -1.2473730088179938E73
    .end array-data

    :array_4c
    .array-data 8
        0x192fe6457ff44d2aL
        0x59e938e6cba3f4adL    # 1.3338666581517028E125
    .end array-data

    :array_4d
    .array-data 8
        0x40212f90036f0727L    # 8.59289561014482
        -0x70b82067fbe6945eL    # -4.692755337475065E-235
        0x7da159ece5dc5c86L    # 1.41845979682142E297
    .end array-data

    :array_4e
    .array-data 8
        0x2324e8391ceeb521L    # 2.194553934971309E-139
        -0x8c7b22c207e3b2eL
    .end array-data

    :array_4f
    .array-data 8
        -0x21e244368bb4f84bL    # -2.320516095347367E145
        0x5c2273dc74f8c0abL    # 6.706025818695862E135
        0x74ffb4051e2c27adL    # 3.7189426678585253E255
        -0x3239faaa44025701L    # -4.6381301343528494E66
        -0x308b94ea7afbcf38L    # -5.772161331490076E74
    .end array-data

    :array_50
    .array-data 8
        -0x4b425bd2639d8a6bL    # -1.2088665258859757E-54
        -0x461878f55a69e0c7L    # -9.279964922264102E-30
        0x6246c1668ea0aa4L    # 4.50025282897174E-279
    .end array-data

    :array_51
    .array-data 8
        0x463a396d28d7785aL    # 2.077704836714409E30
        -0x12ab7b9a42ff6ae1L    # -4.52662463903688E218
        0x2b58aad5acaaca82L    # 7.048609766800325E-100
    .end array-data

    :array_52
    .array-data 8
        -0x4bc00d0334df89L
        0x718c13bd0d02c78bL    # 9.141529831493083E238
        0x37adae730547ea0bL    # 1.7036312535042602E-40
        -0x7f772dfbcf5c2237L    # -4.41817366098728E-306
    .end array-data

    :array_53
    .array-data 8
        -0x7ffde3019f5f6d9bL    # -2.93884486021536E-309
        -0x1ffa128ca9ab4c9fL    # -3.6750032525220166E154
        -0x54355411585a93d4L
    .end array-data

    :array_54
    .array-data 8
        -0x86ff031652c7c47L    # -8.28645773917902E267
        0x3ac0bbd21d117b99L    # 1.0813883902143192E-25
    .end array-data

    :array_55
    .array-data 8
        -0x31b2474115bf913cL    # -1.6025889058176173E69
        -0x237f77a9379b7228L    # -3.845284845118759E137
        -0x7cde571e001e8e6dL
    .end array-data

    :array_56
    .array-data 8
        -0x4c47364acdcf4aeeL    # -1.5425561160214858E-59
        -0x1dec3628448820a2L    # -2.848848702913701E164
    .end array-data

    :array_57
    .array-data 8
        -0x252106e412519bf5L    # -5.3673829322285635E129
        -0x3cdca521be9e5c43L    # -2.7239675918299825E15
        0x25cbbb452f992e7eL
        -0x77f81777fd2936b4L
    .end array-data

    :array_58
    .array-data 8
        0x5c665d551f34599dL    # 1.3004354299504773E137
        -0x62b4873005e38a5aL    # -1.455866295670522E-167
        0x27d704e17b4e4f96L    # 9.128288997522672E-117
    .end array-data

    :array_59
    .array-data 8
        0x7eb1a2197059c79eL    # 1.8894126286236923E302
        -0x1ac8b903a5986b64L    # -3.7730261479022417E179
        -0x1984d143ff63b0b4L    # -4.6200602667888E185
        0x26cd46a739460063L    # 8.857340532031679E-122
    .end array-data

    :array_5a
    .array-data 8
        0x86967bdc59ed7a3L
        -0x201047d094e04fbfL    # -1.3290269030394914E154
    .end array-data

    :array_5b
    .array-data 8
        -0x885476ab342155dL
        -0x7f4b1d4bd1f3eaa4L
        -0x72b948a1ae5cbd6L
    .end array-data

    :array_5c
    .array-data 8
        0x9f185c6f7a476beL
        0x1bcb4287391a53efL    # 8.610659212635516E-175
    .end array-data

    :array_5d
    .array-data 8
        0x4002cf1a83cbd5d4L    # 2.3511247917728983
        0x51c99dea2097b8d7L    # 9.953012979097978E85
        -0x6f2c4379f8f784c6L    # -1.301762232562356E-227
        -0x12476940b3cb9799L    # -3.4719636951199355E220
    .end array-data

    :array_5e
    .array-data 8
        -0x754a65dc0ec76612L
        -0x53c8e26c2b1ae1ffL    # -1.0821946291240642E-95
        0x6911e8294bd13fc4L    # 1.338557681456831E198
        -0x321ac4c03a2e8538L    # -1.7887454368659553E67
        -0x7c53326e4be3cabbL
    .end array-data

    :array_5f
    .array-data 8
        -0x3225eb0566b83815L    # -1.0986999211347146E67
        0x5e933ddba25009dL
        0x5a0443567aa4b1fdL    # 4.2864007758716455E125
    .end array-data

    :array_60
    .array-data 8
        0x440fcd63baa7f0c5L    # 7.333111803949093E19
        0x76dabd335b3531bdL    # 3.367925106583206E264
    .end array-data
.end method

.method public final is_active()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->openVPNService:Lcom/tknetwork/tunnel/service/c_05;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/service/c_05;->is_active()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public final jellyBeanHackPurge()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->openVPNService:Lcom/tknetwork/tunnel/service/c_05;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/service/c_05;->jellyBeanHackPurge()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final loadAdsView()V
    .locals 4

    .line 1
    const v0, 0x7f0a0052

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v2, 0x4

    .line 11
    new-array v2, v2, [J

    .line 12
    .line 13
    fill-array-data v2, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 27
    .line 28
    new-instance v1, Lcom/google/android/gms/ads/AdView;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    sget-object v2, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/BaseAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    const/4 v3, 0x6

    .line 41
    new-array v3, v3, [J

    .line 42
    .line 43
    fill-array-data v3, :array_1

    .line 44
    .line 45
    .line 46
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/BaseAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 60
    .line 61
    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    const/4 v3, 0x3

    .line 71
    new-array v3, v3, [J

    .line 72
    .line 73
    fill-array-data v3, :array_2

    .line 74
    .line 75
    .line 76
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/BaseAdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    nop

    .line 91
    :array_0
    .array-data 8
        0x615c3906aa33227bL    # 9.91966836326134E160
        0x775eccec27ab28b8L    # 9.93147236053545E266
        0x47090157c1e9576eL    # 1.6229332091976571E34
        -0xe835f8b2f9a43e9L    # -4.6602489864110123E238
    .end array-data

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    :array_1
    .array-data 8
        0x10472871f5aa2210L
        -0x3db8056b623a345eL    # -2.0597658305159088E11
        -0x7a34d765ddefeb55L    # -9.351073336986458E-281
        -0x527dd1b2b03d5dc3L    # -1.7850315254182932E-89
        0x11559ef55b35e7e1L    # 3.650712641142829E-225
        0x2faacd90dd269335L    # 4.520999103087903E-79
    .end array-data

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    :array_2
    .array-data 8
        -0x72a10c56e8e6ecd5L    # -2.833149056263713E-244
        0x6ffde0fa451d4286L    # 2.8992129243534283E231
        -0x4e4c4e45a6d003f7L    # -2.853516879812521E-69
    .end array-data
.end method

.method public final loadInterstitial()V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 17
    .line 18
    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Lcom/tknetwork/tunnel/activities/MainBaseActivity$loadInterstitial$1;

    .line 26
    .line 27
    invoke-direct {v2, p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity$loadInterstitial$1;-><init>(Lcom/tknetwork/tunnel/activities/MainBaseActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->interstitialAd$1:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    new-instance v1, Lcom/tknetwork/tunnel/activities/MainBaseActivity$loadInterstitial$2;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity$loadInterstitial$2;-><init>(Lcom/tknetwork/tunnel/activities/MainBaseActivity;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        0x62fcd13200c0de63L    # 6.797182117512107E168
        -0x7d9ab983c45d55eL    # -5.898331394057959E270
        -0x39630dca71305c64L    # -1.467743148960584E32
        -0x8b0341374d7ab35L    # -5.126330056431045E266
        0x7220dedca251911L
        -0x22cbf978301d3877L    # -9.538971904494234E140
    .end array-data
.end method

.method public final loadV2rayConfig()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->mConfig:Lconfig/ConfigUtil;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getV2rayConfig()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->importBatchConfig(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    new-array v1, v1, [J

    .line 18
    .line 19
    fill-array-data v1, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const v1, 0x7f13025a

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        0x3c37e6f63d61d2f8L    # 1.2957405775924844E-18
        -0x2e66fe29d4347fbeL    # -1.2145164870231555E85
        -0x30e19dc7b8c3c8d9L    # -1.3420825086073567E73
    .end array-data
.end method

.method public log(Lcom/tknetwork/tunnel/service/c_05$LogMsg;)V
    .locals 2
    .param p1    # Lcom/tknetwork/tunnel/service/c_05$LogMsg;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 8
        -0x5e84fdfb34badce4L    # -2.112188722597582E-147
        -0x1f243d286ad70476L    # -3.8114869652026096E158
    .end array-data
.end method

.method public final log_history()Ljava/util/ArrayDeque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayDeque<",
            "Lcom/tknetwork/tunnel/service/c_05$LogMsg;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->openVPNService:Lcom/tknetwork/tunnel/service/c_05;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/tknetwork/tunnel/service/c_05;->log_history()Ljava/util/ArrayDeque;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public ok_dialog(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->ok_dialog$default(Lcom/tknetwork/tunnel/activities/MainBaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public ok_dialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, L돷땀땃듟딁둬땅듰땯듬뒙땬뒐땜뒘땝딄땡땟딜뎰듬돠땋뒛딄땻땟돳땦됨뎹듻뒬땯딀득뎻딌뒘딀뎻뒐듌돰땃둔듬듌둑땲땍딜돛딐땄땤뒤땩돠땦돼듐드땀둔딃둘뒈뎡땧땲둠땦됫딽뒘딟뒤듰뒘땍땭딨땀둠뎸땡딌뒹둘땬딌땹둡둔돵땪뒹땍땧딐뒛딎땵땵땧뒹뎽땫딽땄듨딻딨둔땅둑딄뒹둑돠뒘든딨땠뎽뒬뒤둡;

    const/4 v1, 0x3

    invoke-direct {v0, p3, v1}, L돷땀땃듟딁둬땅듰땯듬뒙땬뒐땜뒘땝딄땡땟딜뎰듬돠땋뒛딄땻땟돳땦됨뎹듻뒬땯딀득뎻딌뒘딀뎻뒐듌돰땃둔듬듌둑땲땍딜돛딐땄땤뒤땩돠땦돼듐드땀둔딃둘뒈뎡땧땲둠땦됫딽뒘딟뒤듰뒘땍땭딨땀둠뎸땡딌뒹둘땬딌땹둡둔돵땪뒹땍땧딐뒛딎땵땵땧뒹뎽땫딽땄듨딻딨둔땅둑딄뒹둑돠뒘든딨땠뎽뒬뒤둡;-><init>(Ljava/lang/Object;I)V

    const p3, 0x7f130199

    invoke-virtual {p2, p3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lnet/openvpn/openvpn/PrefUtil;

    .line 5
    .line 6
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p1, v0}, Lnet/openvpn/openvpn/PrefUtil;-><init>(Landroid/content/SharedPreferences;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    .line 14
    .line 15
    new-instance p1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 16
    .line 17
    invoke-direct {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Lconfig/ConfigUtil;->getInstance(Landroid/content/Context;)Lconfig/ConfigUtil;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->mConfig:Lconfig/ConfigUtil;

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->getSettingsStorage()V

    .line 38
    .line 39
    .line 40
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->myPrefs:Landroid/content/SharedPreferences;

    .line 45
    .line 46
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 54
    .line 55
    return-void
.end method

.method public post_bind()V
    .locals 0

    return-void
.end method

.method public final profile_list()Lcom/tknetwork/tunnel/service/c_05$ProfileList;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->openVPNService:Lcom/tknetwork/tunnel/service/c_05;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/service/c_05;->get_profile_list()Lcom/tknetwork/tunnel/service/c_05$ProfileList;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return-object v0
.end method

.method public final recquestConsentform()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/ump/ConsentRequestParameters$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/ump/ConsentRequestParameters$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/ump/ConsentRequestParameters$Builder;->setTagForUnderAgeOfConsent(Z)Lcom/google/android/ump/ConsentRequestParameters$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v2, 0x5

    .line 14
    new-array v2, v2, [J

    .line 15
    .line 16
    fill-array-data v2, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/android/ump/ConsentRequestParameters$Builder;->build()Lcom/google/android/ump/ConsentRequestParameters;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    new-array v2, v2, [J

    .line 37
    .line 38
    fill-array-data v2, :array_1

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p0}, Lcom/google/android/ump/UserMessagingPlatform;->getConsentInformation(Landroid/content/Context;)Lcom/google/android/ump/ConsentInformation;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iput-object v1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->consentInformation:Lcom/google/android/ump/ConsentInformation;

    .line 56
    .line 57
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    new-instance v2, L딐뒐되땯뒐땭돵뒐땡딞땹땤딝뒼듐돼듐뒨딅돛뒐딃됴돴땧도땫딨돰딨딌뒻땩뒘듻뒷딻뎸땁땡뎽둡딅딤둠딠딜땻둑듐돛땰돤돳땨땰듽뎽딁되듰땃땀돰땫디뎬든딟돸뒈땯됴되땭뎻됫둬됨돸땳땬돠딃딟돛듼뒋땁돶땧디땹돳듽땸뎸땦뒹땭돝뎰땮땔돠딨딟땫땵땮딝뎰딐둡땃듨둑돼뎠땰딞땻땪돼딝딅땥딀됫돸;

    .line 61
    .line 62
    invoke-direct {v2, p0}, L딐뒐되땯뒐땭돵뒐땡딞땹땤딝뒼듐돼듐뒨딅돛뒐딃됴돴땧도땫딨돰딨딌뒻땩뒘듻뒷딻뎸땁땡뎽둡딅딤둠딠딜땻둑듐돛땰돤돳땨땰듽뎽딁되듰땃땀돰땫디뎬든딟돸뒈땯됴되땭뎻됫둬됨돸땳땬돠딃딟돛듼뒋땁돶땧디땹돳듽땸뎸땦뒹땭돝뎰땮땔돠딨딟땫땵땮딝뎰딐둡땃듨둑돼뎠땰딞땻땪돼딝딅땥딀됫돸;-><init>(Lcom/tknetwork/tunnel/activities/MainBaseActivity;)V

    .line 63
    .line 64
    .line 65
    new-instance v3, L뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻;

    .line 66
    .line 67
    const/16 v4, 0x11

    .line 68
    .line 69
    invoke-direct {v3, v4}, L뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v1, p0, v0, v2, v3}, Lcom/google/android/ump/ConsentInformation;->requestConsentInfoUpdate(Landroid/app/Activity;Lcom/google/android/ump/ConsentRequestParameters;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->consentInformation:Lcom/google/android/ump/ConsentInformation;

    .line 76
    .line 77
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {v0}, Lcom/google/android/ump/ConsentInformation;->canRequestAds()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    .line 86
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->initializeMobileAdsSdk()V

    .line 87
    .line 88
    .line 89
    :cond_0
    return-void

    .line 90
    nop

    .line 91
    :array_0
    .array-data 8
        0x3e05b52678c52ea6L    # 6.317748421119704E-10
        0x1155083297e3003aL
        0x743df6e707738880L    # 8.58149368932977E251
        0x58b3ccc37e987f8eL    # 1.9971945676297284E119
        -0x361b83e1e389359cL    # -9.355818470038287E47
    .end array-data

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    :array_1
    .array-data 8
        0x2c7e987cc8611c9aL
        -0x56fb603ac9f6a24bL
        -0x2ff9dc854491401aL    # -3.204342202344555E77
    .end array-data
.end method

.method public final resString(I)Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    new-array v1, v1, [J

    .line 13
    .line 14
    fill-array-data v1, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    nop

    .line 29
    :array_0
    .array-data 8
        0x1d97432680467e3dL    # 3.944892479360282E-166
        -0x1d90d0b2740dea82L    # -1.4366476647095261E166
        -0x143e34791793bec7L    # -1.170053273387028E211
    .end array-data
.end method

.method public final resolveExternalPkiAlias(Lcom/tknetwork/tunnel/service/c_05$Profile;Lcom/tknetwork/tunnel/activities/MainBaseActivity$EpkiPost;)V
    .locals 2
    .param p1    # Lcom/tknetwork/tunnel/service/c_05$Profile;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/tknetwork/tunnel/activities/MainBaseActivity$EpkiPost;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Landroid/os/Handler;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 22
    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/tknetwork/tunnel/service/c_05$Profile;->need_external_pki_alias()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    const/4 v0, 0x4

    .line 36
    new-array v0, v0, [J

    .line 37
    .line 38
    fill-array-data v0, :array_1

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p2, p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity$EpkiPost;->post_dispatch(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 53
    invoke-interface {p2, p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity$EpkiPost;->post_dispatch(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_1
    return-void

    .line 57
    :array_0
    .array-data 8
        0x93437cc93315224L
        0x58b2b9f5c49b79e9L    # 1.8889164285617652E119
        -0x2c4af01038f64067L    # -1.7573710238586594E95
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :array_1
    .array-data 8
        -0x521e6a73168e04a2L    # -1.10492659172175E-87
        0x56ceb766add41ca6L    # 1.4427759613352894E110
        -0x2c9a100cd8eb9f72L    # -5.71994590728041E93
        -0x6cb1bc6210a3e26bL
    .end array-data
.end method

.method public final restartV2Ray()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->getMainViewModel()Lcom/v2ray/ang/viewmodel/MainViewModel;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/v2ray/ang/viewmodel/MainViewModel;->isRunning()Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-static {p0}, Lcom/v2ray/ang/service/V2RayServiceManager;->stopVService(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    new-array v2, v2, [J

    .line 30
    .line 31
    fill-array-data v2, :array_0

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    new-array v2, v0, [J

    .line 50
    .line 51
    fill-array-data v2, :array_1

    .line 52
    .line 53
    .line 54
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :cond_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    new-array v0, v0, [J

    .line 64
    .line 65
    fill-array-data v0, :array_2

    .line 66
    .line 67
    .line 68
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    invoke-static {p0}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-nez v0, :cond_2

    .line 86
    .line 87
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->startV2Ray()V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->requestVpnPermission:Landroidx/activity/result/ActivityResultLauncher;

    .line 92
    .line 93
    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->startV2Ray()V

    .line 98
    .line 99
    .line 100
    :goto_0
    return-void

    .line 101
    :array_0
    .array-data 8
        0x41fce24d97829b00L    # 7.753488760162842E9
        0x24eec2684f61c235L    # 8.66702028723353E-131
        -0x7260c949906071f9L    # -4.571398272730641E-243
    .end array-data

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :array_1
    .array-data 8
        0x252119fc6628038dL    # 7.709856131662613E-130
        -0x26f43237fed6e44L    # -6.841519169317901E296
    .end array-data

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    :array_2
    .array-data 8
        0x4ed0b4911090461bL    # 4.611840361795418E71
        0x2538240231e71786L
    .end array-data
.end method

.method public final setNavBarColor(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setStatusBarColor(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setUiColor()V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->getJSONObject()Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    new-array v4, v1, [J

    .line 13
    .line 14
    fill-array-data v4, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_7

    .line 29
    .line 30
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array v4, v1, [J

    .line 33
    .line 34
    fill-array-data v4, :array_1

    .line 35
    .line 36
    .line 37
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    new-array v5, v0, [J

    .line 51
    .line 52
    fill-array-data v5, :array_2

    .line 53
    .line 54
    .line 55
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_1

    .line 67
    .line 68
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 69
    .line 70
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    new-array v1, v1, [J

    .line 76
    .line 77
    fill-array-data v1, :array_3

    .line 78
    .line 79
    .line 80
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 88
    .line 89
    new-array v0, v0, [J

    .line 90
    .line 91
    fill-array-data v0, :array_4

    .line 92
    .line 93
    .line 94
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_0

    .line 113
    .line 114
    :cond_1
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 115
    .line 116
    new-array v4, v1, [J

    .line 117
    .line 118
    fill-array-data v4, :array_5

    .line 119
    .line 120
    .line 121
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 133
    .line 134
    new-array v5, v0, [J

    .line 135
    .line 136
    fill-array-data v5, :array_6

    .line 137
    .line 138
    .line 139
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-eqz v3, :cond_2

    .line 151
    .line 152
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 153
    .line 154
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 158
    .line 159
    new-array v1, v1, [J

    .line 160
    .line 161
    fill-array-data v1, :array_7

    .line 162
    .line 163
    .line 164
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 172
    .line 173
    new-array v0, v0, [J

    .line 174
    .line 175
    fill-array-data v0, :array_8

    .line 176
    .line 177
    .line 178
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 194
    .line 195
    .line 196
    goto/16 :goto_0

    .line 197
    .line 198
    :cond_2
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 199
    .line 200
    new-array v4, v1, [J

    .line 201
    .line 202
    fill-array-data v4, :array_9

    .line 203
    .line 204
    .line 205
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 217
    .line 218
    new-array v5, v0, [J

    .line 219
    .line 220
    fill-array-data v5, :array_a

    .line 221
    .line 222
    .line 223
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    if-eqz v3, :cond_3

    .line 235
    .line 236
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 237
    .line 238
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 242
    .line 243
    new-array v3, v1, [J

    .line 244
    .line 245
    fill-array-data v3, :array_b

    .line 246
    .line 247
    .line 248
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 256
    .line 257
    new-array v1, v1, [J

    .line 258
    .line 259
    fill-array-data v1, :array_c

    .line 260
    .line 261
    .line 262
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 278
    .line 279
    .line 280
    goto/16 :goto_0

    .line 281
    .line 282
    :cond_3
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 283
    .line 284
    new-array v4, v1, [J

    .line 285
    .line 286
    fill-array-data v4, :array_d

    .line 287
    .line 288
    .line 289
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 301
    .line 302
    new-array v5, v0, [J

    .line 303
    .line 304
    fill-array-data v5, :array_e

    .line 305
    .line 306
    .line 307
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v3

    .line 318
    if-eqz v3, :cond_4

    .line 319
    .line 320
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 321
    .line 322
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 326
    .line 327
    new-array v1, v1, [J

    .line 328
    .line 329
    fill-array-data v1, :array_f

    .line 330
    .line 331
    .line 332
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 340
    .line 341
    new-array v0, v0, [J

    .line 342
    .line 343
    fill-array-data v0, :array_10

    .line 344
    .line 345
    .line 346
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 362
    .line 363
    .line 364
    goto/16 :goto_0

    .line 365
    .line 366
    :cond_4
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 367
    .line 368
    new-array v4, v1, [J

    .line 369
    .line 370
    fill-array-data v4, :array_11

    .line 371
    .line 372
    .line 373
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v3

    .line 380
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 385
    .line 386
    new-array v5, v0, [J

    .line 387
    .line 388
    fill-array-data v5, :array_12

    .line 389
    .line 390
    .line 391
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v4

    .line 398
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    move-result v3

    .line 402
    if-eqz v3, :cond_5

    .line 403
    .line 404
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 405
    .line 406
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 407
    .line 408
    .line 409
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 410
    .line 411
    new-array v1, v1, [J

    .line 412
    .line 413
    fill-array-data v1, :array_13

    .line 414
    .line 415
    .line 416
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 424
    .line 425
    new-array v0, v0, [J

    .line 426
    .line 427
    fill-array-data v0, :array_14

    .line 428
    .line 429
    .line 430
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 438
    .line 439
    .line 440
    move-result v0

    .line 441
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 446
    .line 447
    .line 448
    goto/16 :goto_0

    .line 449
    .line 450
    :cond_5
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 451
    .line 452
    new-array v4, v1, [J

    .line 453
    .line 454
    fill-array-data v4, :array_15

    .line 455
    .line 456
    .line 457
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v3

    .line 464
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v3

    .line 468
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 469
    .line 470
    new-array v5, v0, [J

    .line 471
    .line 472
    fill-array-data v5, :array_16

    .line 473
    .line 474
    .line 475
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v4

    .line 482
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    move-result v3

    .line 486
    if-eqz v3, :cond_6

    .line 487
    .line 488
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 489
    .line 490
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 491
    .line 492
    .line 493
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 494
    .line 495
    new-array v1, v1, [J

    .line 496
    .line 497
    fill-array-data v1, :array_17

    .line 498
    .line 499
    .line 500
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 508
    .line 509
    new-array v0, v0, [J

    .line 510
    .line 511
    fill-array-data v0, :array_18

    .line 512
    .line 513
    .line 514
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 522
    .line 523
    .line 524
    move-result v0

    .line 525
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 530
    .line 531
    .line 532
    goto :goto_0

    .line 533
    :cond_6
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 534
    .line 535
    new-array v4, v1, [J

    .line 536
    .line 537
    fill-array-data v4, :array_19

    .line 538
    .line 539
    .line 540
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v3

    .line 547
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 552
    .line 553
    new-array v4, v0, [J

    .line 554
    .line 555
    fill-array-data v4, :array_1a

    .line 556
    .line 557
    .line 558
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v3

    .line 565
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 566
    .line 567
    .line 568
    move-result v2

    .line 569
    if-eqz v2, :cond_7

    .line 570
    .line 571
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 572
    .line 573
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 574
    .line 575
    .line 576
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 577
    .line 578
    new-array v1, v1, [J

    .line 579
    .line 580
    fill-array-data v1, :array_1b

    .line 581
    .line 582
    .line 583
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 591
    .line 592
    new-array v0, v0, [J

    .line 593
    .line 594
    fill-array-data v0, :array_1c

    .line 595
    .line 596
    .line 597
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 605
    .line 606
    .line 607
    move-result v0

    .line 608
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    .line 614
    .line 615
    :catch_0
    :cond_7
    :goto_0
    return-void

    .line 616
    nop

    .line 617
    :array_0
    .array-data 8
        -0x668f0304296aebb8L
        0x479324e6870fcce4L    # 6.361732565430352E36
        0x2f42765be5b87365L    # 4.865841001439824E-81
    .end array-data

    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    :array_1
    .array-data 8
        0x49e56b01d6a5c890L    # 9.782011686129589E47
        0x4c24a1ee233a378bL    # 6.475627613615669E58
        -0x706129183ac54d04L
    .end array-data

    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    :array_2
    .array-data 8
        -0x5390a27fcddf907aL
        -0x7d7a7a5ce4e03f19L    # -1.64542204385214E-296
    .end array-data

    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    :array_3
    .array-data 8
        0x7edc3025b7e3551fL    # 1.2081506222639946E303
        -0x2631a35f8a5a05c1L    # -4.0141729188492524E124
        -0x783531c140b3bb50L
    .end array-data

    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    :array_4
    .array-data 8
        -0x2c0a66266df3d5e2L    # -2.8837128086993146E96
        0x3e97d45e1e680d5dL    # 3.5508813170399903E-7
    .end array-data

    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    :array_5
    .array-data 8
        -0x18adc301726919bL    # -1.415723460868339E301
        -0x71ce24eff5941af0L
        0x3266dc9d3a8b615dL    # 6.783922654345651E-66
    .end array-data

    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    :array_6
    .array-data 8
        0x57aa51d9afb660e4L    # 2.0254884395214527E114
        -0x7680e426af50f877L
    .end array-data

    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    :array_7
    .array-data 8
        0x527a26754980ff59L    # 2.0808184966097006E89
        0x15cea8c4474aad5fL
        0x2be6870f13b87273L    # 3.295837800689848E-97
    .end array-data

    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    :array_8
    .array-data 8
        0x111efb20e42dc55eL
        -0x47aeaf1934918c3aL
    .end array-data

    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    :array_9
    .array-data 8
        -0x6292afef317b5450L    # -6.213682734577353E-167
        0x67c07f6b3b689783L    # 5.880461981715464E191
        -0x511c02b3be4cc61eL    # -8.23174547716073E-83
    .end array-data

    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    :array_a
    .array-data 8
        0x589ac5ba6c1e72d1L    # 6.751266037200834E118
        -0x5652b7abb570e465L    # -6.234193153900499E-108
    .end array-data

    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    :array_b
    .array-data 8
        -0x25710d95a05341cL    # -2.0383600012909896E297
        0x6025efaad421432L
        -0xb30bdccc152f020L    # -4.583484839027703E254
    .end array-data

    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    :array_c
    .array-data 8
        -0x7d99cfa145e67530L
        -0x761d66a2b555a42bL    # -4.725254724779002E-261
        0x6ba8657678fac6d7L    # 4.010251832187972E210
    .end array-data

    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    :array_d
    .array-data 8
        0x43d4792d1b1a7deL
        -0x21bbe3300c99583L    # -2.649607734388399E298
        0x1a74f883fd6f16bL
    .end array-data

    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    :array_e
    .array-data 8
        0x1dbdca7da2e712eaL
        -0xb8a97a34b5006d3L    # -9.809472783676621E252
    .end array-data

    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    :array_f
    .array-data 8
        -0x73661ba1f343113cL    # -5.786156656636895E-248
        0x62ecbef9bc0b4be7L    # 3.3901974021855373E168
        0x3276691eb91b7817L    # 1.330010052236968E-65
    .end array-data

    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    :array_10
    .array-data 8
        -0x74e43abb0bac9725L    # -3.69903711758064E-255
        -0x26c37d4032098d4fL    # -7.362185283639191E121
    .end array-data

    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    :array_11
    .array-data 8
        -0xd53bb2ed5331d88L    # -2.412760029986585E244
        -0x1fc0e25e531d1c5L    # -1.043503634357516E299
        -0x4322e41c895d988cL    # -1.6158707464451985E-15
    .end array-data

    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    :array_12
    .array-data 8
        -0x87214ef3381fac2L
        -0x82c94b5126019f4L
    .end array-data

    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    :array_13
    .array-data 8
        0xf127f327665cd7cL    # 4.544870420921326E-236
        0x1970339c9dd26b20L
        0x1a4abdebdcfb8b88L
    .end array-data

    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    :array_14
    .array-data 8
        -0x52a2eb07dfa611b6L    # -3.5691454944632093E-90
        0x1787281ce2e9a87cL    # 2.478273990444089E-195
    .end array-data

    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    :array_15
    .array-data 8
        -0x1060cf4de3c9d793L    # -4.728845444673092E229
        0x44dc2b4ebb4d249bL    # 5.321005789139792E23
        -0x5b99554717e76432L
    .end array-data

    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    :array_16
    .array-data 8
        -0x2fa1a3d4ac0e16fbL    # -1.4061808051919062E79
        -0x56371e8f4c06e83bL
    .end array-data

    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    :array_17
    .array-data 8
        0x681e480234ca14f6L    # 3.4539139635673684E193
        0x6b418230c865589eL    # 4.496942800647182E208
        0x56309ca439376649L    # 1.5239730297010325E107
    .end array-data

    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    :array_18
    .array-data 8
        -0x11c331d7e434e2fbL    # -1.0412360690671133E223
        0x3eb7b5fcfb440945L    # 1.413279261675507E-6
    .end array-data

    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    :array_19
    .array-data 8
        0x795c5adcdedd9a5cL    # 3.926853126804782E276
        0x51a3daa28328f2d0L    # 1.9284915123817446E85
        0x45f2614a58ea96e0L    # 9.101355322598377E28
    .end array-data

    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    :array_1a
    .array-data 8
        -0x7cc9d1989d3f1103L
        0x479a1f45cbc795f7L    # 8.680576181092712E36
    .end array-data

    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    :array_1b
    .array-data 8
        0x44af76de8345f60bL    # 7.429305525283907E22
        -0x442eeb1e703fc9caL    # -1.4468649866730445E-20
        -0x4a43109edd77092dL    # -7.733664977872334E-50
    .end array-data

    :array_1c
    .array-data 8
        -0x743faec9e6b28e46L    # -4.45123085977906E-252
        0x3a5afc53efb5d620L    # 1.3624274455427816E-27
    .end array-data
.end method

.method public final showInterstitial()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->interstitialAd$1:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public startOpenVPN()V
    .locals 0

    return-void
.end method

.method public final stoptV2Ray()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->getMainViewModel()Lcom/v2ray/ang/viewmodel/MainViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/v2ray/ang/viewmodel/MainViewModel;->clearAllTestDelay()V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/v2ray/ang/service/V2RayServiceManager;->stopVService(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final submitConnectIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x3

    new-array v4, v3, [J

    fill-array-data v4, :array_0

    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x4

    new-array v4, v4, [J

    fill-array-data v4, :array_1

    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2
    iget-object v4, v0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->mConfig:Lconfig/ConfigUtil;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lconfig/ConfigUtil;->getTunnelType()I

    move-result v4

    const/16 v5, 0xb

    if-eq v4, v5, :cond_0

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    const/4 v5, 0x6

    if-eq v4, v5, :cond_0

    const/16 v5, 0x9

    if-eq v4, v5, :cond_0

    .line 3
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/tknetwork/tunnel/service/c_05;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v6, 0x5

    new-array v6, v6, [J

    fill-array-data v6, :array_2

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".PROFILE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".GUI_VERSION"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p17

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".PROXY_NAME"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p13

    .line 8
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".PROXY_USERNAME"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p14

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".PROXY_PASSWORD"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p15

    .line 11
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".PROXY_ALLOW_CREDS_DIALOG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move/from16 v5, p16

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".SERVER"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    .line 14
    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".PROTO"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p3

    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".IPv6"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p4

    invoke-virtual {v1, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".CONN_TIMEOUT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p5

    .line 17
    invoke-virtual {v1, v4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".USERNAME"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p6

    invoke-virtual {v1, v4, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".PASSWORD"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p7

    .line 20
    invoke-virtual {v1, v4, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".CACHE_PASSWORD"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v5, p8

    invoke-virtual {v1, v4, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".PK_PASSWORD"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p9

    .line 23
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".RESPONSE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p10

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".EPKI_ALIAS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p11

    .line 26
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".COMPRESSION_MODE"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, p12

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v3, [J

    fill-array-data v4, :array_3

    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 29
    :cond_0
    iget-object v1, v0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->openVPNService:Lcom/tknetwork/tunnel/service/c_05;

    if-eqz v1, :cond_1

    .line 30
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Lcom/tknetwork/tunnel/service/c_05;->client_attach(Lcom/tknetwork/tunnel/service/c_05$EventReceiver;)V

    .line 31
    :cond_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v3, [J

    fill-array-data v2, :array_4

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        -0x3e5ddfafa9ab12f1L    # -1.520538031658711E8
        0x26d166872f9d76acL    # 1.05289119809008E-121
        -0x7a694d072e17c9a0L    # -9.769512235870234E-282
    .end array-data

    :array_1
    .array-data 8
        -0x2976f6b1acd8a7b1L    # -7.349867170143735E108
        -0x6275a0791d957c7eL
        0x194d6a2e381985c5L    # 8.450416698876905E-187
        0x550591e478b0bb38L    # 3.774301031162493E101
    .end array-data

    :array_2
    .array-data 8
        -0xaf1c0eacaec3798L    # -7.096108976650973E255
        -0x5ce10e0a0a9d8713L
        -0x3ba283b7da528230L    # -2.1756441096946943E21
        -0x466f6f6647352988L
        0x47ff7342f40eac88L    # 6.6887263973297215E38
    .end array-data

    :array_3
    .array-data 8
        0x715e3a85d8f8af9L
        0x2ad2c12a40da54c3L
        0x6dd9daaa21c5a631L    # 1.460250090294821E221
    .end array-data

    :array_4
    .array-data 8
        -0x25feb9a5faa9c153L    # -3.654277437890368E125
        -0x70bc20f42b09d6fbL
        0x108f9dadea4a81ddL    # 6.51657410337601E-229
    .end array-data
.end method

.method public final submitDisconnectIntent(Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v1, 0x5

    .line 18
    new-array v1, v1, [J

    .line 19
    .line 20
    fill-array-data v1, :array_1

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->buildDisconnectIntent(Z)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :array_0
    .array-data 8
        0x398b10fb07bfa0beL    # 1.6680913995686558E-31
        0x4361ffdb9bc28277L    # 4.0531146241741752E16
        -0x6985df2fbc339667L
    .end array-data

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    :array_1
    .array-data 8
        0x5efd761829c2541aL    # 3.7671235551306976E149
        0x2abdb9ad23582daeL    # 8.294834219115574E-103
        0x6720c5f6045c5cacL    # 5.838555722033836E188
        -0x1d6ca9f490c345b9L    # -7.126343754208264E166
        -0x513cf1a029bd6022L    # -1.9618525763321797E-83
    .end array-data
.end method

.method public final unbindInjector()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->mInjector:Lcom/tknetwork/tunnel/service/TunnelVPN;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->mInjectorConnection:Landroid/content/ServiceConnection;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->mInjector:Lcom/tknetwork/tunnel/service/TunnelVPN;

    .line 12
    .line 13
    :cond_0
    return-void
.end method
