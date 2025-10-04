.class public final Lcom/tknetwork/tunnel/activities/OpenVPNApplication;
.super Landroid/app/Application;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/tunnel/activities/OpenVPNApplication$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0014J\u0008\u0010\u000c\u001a\u00020\tH\u0017R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/tknetwork/tunnel/activities/OpenVPNApplication;",
        "Landroid/app/Application;",
        "<init>",
        "()V",
        "night_mode",
        "",
        "workManagerConfiguration",
        "Landroidx/work/Configuration;",
        "attachBaseContext",
        "",
        "base",
        "Landroid/content/Context;",
        "onCreate",
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


# static fields
.field public static final Companion:Lcom/tknetwork/tunnel/activities/OpenVPNApplication$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PREFS_GENERAL:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PREFS_SPLIT:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static app:Lcom/tknetwork/tunnel/activities/OpenVPNApplication;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static application:Lcom/tknetwork/tunnel/activities/OpenVPNApplication;

.field private static context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static mOnByCountListener:Lcom/tknetwork/tunnel/interfaces/OnByteCountListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static privateSharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final sharedPreferences:Lcom/tknetwork/tunnel/securepreferences/SecurePreferences;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static splitSharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private final night_mode:I

.field private final workManagerConfiguration:Landroidx/work/Configuration;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->PREFS_GENERAL:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->PREFS_SPLIT:Ljava/lang/String;

    new-instance v0, Lcom/tknetwork/tunnel/activities/OpenVPNApplication$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tknetwork/tunnel/activities/OpenVPNApplication$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->Companion:Lcom/tknetwork/tunnel/activities/OpenVPNApplication$Companion;

    return-void

    :array_0
    .array-data 8
        0x64ee48753c57d8ccL    # 1.5339348301398737E178
        -0x7d418de5b377157fL
        0x4c354d83bd98ed7cL    # 1.3371978919350718E59
    .end array-data

    :array_1
    .array-data 8
        0xcc1d424cd8b5a4eL
        -0x225beccc238f6f94L    # -1.224006516370038E143
        0x61a1a90ef64e9b2dL    # 1.986313692183486E162
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/work/Configuration$Builder;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/work/Configuration$Builder;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    new-array v2, v2, [J

    .line 13
    .line 14
    fill-array-data v2, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Landroidx/work/Configuration$Builder;->setDefaultProcessName(Ljava/lang/String;)Landroidx/work/Configuration$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroidx/work/Configuration$Builder;->build()Landroidx/work/Configuration;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->workManagerConfiguration:Landroidx/work/Configuration;

    .line 33
    .line 34
    return-void

    :array_0
    .array-data 8
        0x3d08ae36ba812ba6L    # 1.0960353776189604E-14
        0x4a748af7bed9802L
        -0x4a66c3f73c5910dbL    # -1.686147610390795E-50
        0x6a48d9a1d4e50d30L    # 9.73902924735105E203
    .end array-data
.end method

.method public static final synthetic access$getApp$cp()Lcom/tknetwork/tunnel/activities/OpenVPNApplication;
    .locals 1

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->app:Lcom/tknetwork/tunnel/activities/OpenVPNApplication;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getContext$cp()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getMOnByCountListener$cp()Lcom/tknetwork/tunnel/interfaces/OnByteCountListener;
    .locals 1

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->mOnByCountListener:Lcom/tknetwork/tunnel/interfaces/OnByteCountListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getPrivateSharedPreferences$cp()Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->privateSharedPreferences:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$setApp$cp(Lcom/tknetwork/tunnel/activities/OpenVPNApplication;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->app:Lcom/tknetwork/tunnel/activities/OpenVPNApplication;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setContext$cp(Landroid/content/Context;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setMOnByCountListener$cp(Lcom/tknetwork/tunnel/interfaces/OnByteCountListener;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->mOnByCountListener:Lcom/tknetwork/tunnel/interfaces/OnByteCountListener;

    .line 2
    .line 3
    return-void
.end method

.method public static final getApp()Lcom/tknetwork/tunnel/activities/OpenVPNApplication;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->Companion:Lcom/tknetwork/tunnel/activities/OpenVPNApplication$Companion;

    invoke-virtual {v0}, Lcom/tknetwork/tunnel/activities/OpenVPNApplication$Companion;->getApp()Lcom/tknetwork/tunnel/activities/OpenVPNApplication;

    move-result-object v0

    return-object v0
.end method

.method public static final getPrivateSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->Companion:Lcom/tknetwork/tunnel/activities/OpenVPNApplication$Companion;

    invoke-virtual {v0}, Lcom/tknetwork/tunnel/activities/OpenVPNApplication$Companion;->getPrivateSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static final resString(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->Companion:Lcom/tknetwork/tunnel/activities/OpenVPNApplication$Companion;

    invoke-virtual {v0, p0}, Lcom/tknetwork/tunnel/activities/OpenVPNApplication$Companion;->resString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setApp(Lcom/tknetwork/tunnel/activities/OpenVPNApplication;)V
    .locals 1
    .param p0    # Lcom/tknetwork/tunnel/activities/OpenVPNApplication;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->Companion:Lcom/tknetwork/tunnel/activities/OpenVPNApplication$Companion;

    invoke-virtual {v0, p0}, Lcom/tknetwork/tunnel/activities/OpenVPNApplication$Companion;->setApp(Lcom/tknetwork/tunnel/activities/OpenVPNApplication;)V

    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->Companion:Lcom/tknetwork/tunnel/activities/OpenVPNApplication$Companion;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Lcom/tknetwork/tunnel/activities/OpenVPNApplication$Companion;->setApplication(Lcom/tknetwork/tunnel/activities/OpenVPNApplication;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onCreate()V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/tknetwork/tunnel/utils/ExceptionHandlerUtils;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/utils/ExceptionHandlerUtils;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 10
    .line 11
    .line 12
    sput-object p0, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->app:Lcom/tknetwork/tunnel/activities/OpenVPNApplication;

    .line 13
    .line 14
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    new-array v2, v1, [J

    .line 18
    .line 19
    fill-array-data v2, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->privateSharedPreferences:Landroid/content/SharedPreferences;

    .line 35
    .line 36
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    new-array v1, v1, [J

    .line 39
    .line 40
    fill-array-data v1, :array_1

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->splitSharedPreferences:Landroid/content/SharedPreferences;

    .line 55
    .line 56
    invoke-static {p0}, Lconfig/ConfigUtil;->getInstance(Landroid/content/Context;)Lconfig/ConfigUtil;

    .line 57
    .line 58
    .line 59
    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->initialize(Landroid/content/Context;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    sget-object v0, Landroidx/work/WorkManager;->Companion:Landroidx/work/WorkManager$Companion;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->workManagerConfiguration:Landroidx/work/Configuration;

    .line 65
    .line 66
    invoke-virtual {v0, p0, v1}, Landroidx/work/WorkManager$Companion;->initialize(Landroid/content/Context;Landroidx/work/Configuration;)V

    .line 67
    .line 68
    .line 69
    sget-object v0, Lcom/v2ray/ang/handler/SettingsManager;->INSTANCE:Lcom/v2ray/ang/handler/SettingsManager;

    .line 70
    .line 71
    invoke-virtual {v0, p0}, Lcom/v2ray/ang/handler/SettingsManager;->initRoutingRulesets(Landroid/content/Context;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sput-object v0, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->context:Landroid/content/Context;

    .line 79
    .line 80
    invoke-static {}, Les/dmoral/toasty/Toasty$Config;->getInstance()Les/dmoral/toasty/Toasty$Config;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const/16 v1, 0x50

    .line 85
    .line 86
    const/16 v3, 0xc8

    .line 87
    .line 88
    invoke-virtual {v0, v1, v2, v3}, Les/dmoral/toasty/Toasty$Config;->setGravity(III)Les/dmoral/toasty/Toasty$Config;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Les/dmoral/toasty/Toasty$Config;->apply()V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    nop

    .line 97
    :array_0
    .array-data 8
        0x352af080ed3c68daL    # 1.4063058088975427E-52
        0x1db4dec9011653a6L
        0x5cac5243411e9669L    # 2.6348858503423938E138
    .end array-data

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
    :array_1
    .array-data 8
        0x5094c3c834b8e7f6L    # 1.5388137750456865E80
        0x154e775ef28cde8dL
        -0x60d92e0401e4303bL
    .end array-data
.end method
