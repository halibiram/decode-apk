.class public final Lcom/v2ray/ang/service/V2RayServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/v2ray/ang/service/V2RayServiceManager$CoreCallback;,
        Lcom/v2ray/ang/service/V2RayServiceManager$ReceiveMessageHandler;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002)*B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u001c\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u00172\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0007J\u0010\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u0017H\u0007J\u0006\u0010\u001d\u001a\u00020\u0015J\u0006\u0010\u001e\u001a\u00020\u001bJ\u0010\u0010\u001f\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0006\u0010 \u001a\u00020\u0015J\u0006\u0010!\u001a\u00020\u0015J\u0016\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u001b2\u0006\u0010%\u001a\u00020\u001bJ\u0008\u0010&\u001a\u00020\u0019H\u0002J\n\u0010\'\u001a\u0004\u0018\u00010(H\u0003R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R4\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r2\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006+"
    }
    d2 = {
        "Lcom/v2ray/ang/service/V2RayServiceManager;",
        "",
        "<init>",
        "()V",
        "coreController",
        "Llibv2ray/CoreController;",
        "getCoreController",
        "()Llibv2ray/CoreController;",
        "mMsgReceive",
        "Lcom/v2ray/ang/service/V2RayServiceManager$ReceiveMessageHandler;",
        "currentConfig",
        "Lcom/v2ray/ang/dto/ProfileItem;",
        "value",
        "Ljava/lang/ref/SoftReference;",
        "Lcom/v2ray/ang/service/ServiceControl;",
        "serviceControl",
        "getServiceControl",
        "()Ljava/lang/ref/SoftReference;",
        "setServiceControl",
        "(Ljava/lang/ref/SoftReference;)V",
        "startVServiceFromToggle",
        "",
        "context",
        "Landroid/content/Context;",
        "startVService",
        "",
        "guid",
        "",
        "stopVService",
        "isRunning",
        "getRunningServerName",
        "startContextService",
        "startCoreLoop",
        "stopCoreLoop",
        "queryStats",
        "",
        "tag",
        "link",
        "measureV2rayDelay",
        "getService",
        "Landroid/app/Service;",
        "CoreCallback",
        "ReceiveMessageHandler",
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
.field public static final INSTANCE:Lcom/v2ray/ang/service/V2RayServiceManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final coreController:Llibv2ray/CoreController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static currentConfig:Lcom/v2ray/ang/dto/ProfileItem;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final mMsgReceive:Lcom/v2ray/ang/service/V2RayServiceManager$ReceiveMessageHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static serviceControl:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/v2ray/ang/service/ServiceControl;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/v2ray/ang/service/V2RayServiceManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/v2ray/ang/service/V2RayServiceManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/v2ray/ang/service/V2RayServiceManager;->INSTANCE:Lcom/v2ray/ang/service/V2RayServiceManager;

    .line 7
    .line 8
    new-instance v0, Lcom/v2ray/ang/service/V2RayServiceManager$CoreCallback;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/v2ray/ang/service/V2RayServiceManager$CoreCallback;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Llibv2ray/Libv2ray;->newCoreController(Llibv2ray/CoreCallbackHandler;)Llibv2ray/CoreController;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v2, 0x4

    .line 20
    new-array v2, v2, [J

    .line 21
    .line 22
    fill-array-data v2, :array_0

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
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/v2ray/ang/service/V2RayServiceManager;->coreController:Llibv2ray/CoreController;

    .line 36
    .line 37
    new-instance v0, Lcom/v2ray/ang/service/V2RayServiceManager$ReceiveMessageHandler;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/v2ray/ang/service/V2RayServiceManager$ReceiveMessageHandler;-><init>()V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/v2ray/ang/service/V2RayServiceManager;->mMsgReceive:Lcom/v2ray/ang/service/V2RayServiceManager$ReceiveMessageHandler;

    .line 43
    .line 44
    return-void

    .line 45
    :array_0
    .array-data 8
        0x31b16d72978aa203L    # 2.5250898698467205E-69
        0x34e5e903a635ca62L    # 7.148540191145557E-54
        -0x4696fbdca735ba4dL    # -3.854350401218041E-32
        0x3da4b37548a69990L    # 9.41372871177204E-12
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getCurrentConfig$p()Lcom/v2ray/ang/dto/ProfileItem;
    .locals 1

    .line 1
    sget-object v0, Lcom/v2ray/ang/service/V2RayServiceManager;->currentConfig:Lcom/v2ray/ang/dto/ProfileItem;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getService()Landroid/app/Service;
    .locals 1

    .line 1
    invoke-static {}, Lcom/v2ray/ang/service/V2RayServiceManager;->getService()Landroid/app/Service;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic access$measureV2rayDelay(Lcom/v2ray/ang/service/V2RayServiceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/v2ray/ang/service/V2RayServiceManager;->measureV2rayDelay()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final getService()Landroid/app/Service;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/v2ray/ang/service/V2RayServiceManager;->serviceControl:Ljava/lang/ref/SoftReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/v2ray/ang/service/ServiceControl;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/v2ray/ang/service/ServiceControl;->getService()Landroid/app/Service;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return-object v0
.end method

.method private final measureV2rayDelay()V
    .locals 7

    .line 1
    sget-object v0, Lcom/v2ray/ang/service/V2RayServiceManager;->coreController:Llibv2ray/CoreController;

    .line 2
    .line 3
    invoke-virtual {v0}, Llibv2ray/CoreController;->getIsRunning()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v4, Lcom/v2ray/ang/service/V2RayServiceManager$measureV2rayDelay$1;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-direct {v4, v0}, Lcom/v2ray/ang/service/V2RayServiceManager$measureV2rayDelay$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 22
    .line 23
    .line 24
    const/4 v5, 0x3

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private final startContextService(Landroid/content/Context;)V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    sget-object v2, Lcom/v2ray/ang/service/V2RayServiceManager;->coreController:Llibv2ray/CoreController;

    .line 4
    .line 5
    invoke-virtual {v2}, Llibv2ray/CoreController;->getIsRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Lcom/v2ray/ang/handler/MmkvManager;->getSelectServer()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    sget-object v3, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Lcom/v2ray/ang/handler/MmkvManager;->decodeServerConfig(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/ProfileItem;->getConfigType()Lcom/v2ray/ang/dto/EConfigType;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    sget-object v5, Lcom/v2ray/ang/dto/EConfigType;->CUSTOM:Lcom/v2ray/ang/dto/EConfigType;

    .line 33
    .line 34
    if-eq v4, v5, :cond_4

    .line 35
    .line 36
    sget-object v4, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/ProfileItem;->getServer()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v4, v5}, Lcom/v2ray/ang/util/Utils;->isValidUrl(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-nez v5, :cond_4

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/ProfileItem;->getServer()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-nez v2, :cond_3

    .line 53
    .line 54
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    const/4 v5, 0x1

    .line 57
    new-array v5, v5, [J

    .line 58
    .line 59
    const-wide v6, 0x67d941656765ed79L    # 1.80041417337828E192

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    const/4 v8, 0x0

    .line 65
    aput-wide v6, v5, v8

    .line 66
    .line 67
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    :cond_3
    invoke-virtual {v4, v2}, Lcom/v2ray/ang/util/Utils;->isPureIpAddress(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_4

    .line 79
    .line 80
    return-void

    .line 81
    :cond_4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    const/4 v4, 0x5

    .line 84
    new-array v4, v4, [J

    .line 85
    .line 86
    fill-array-data v4, :array_0

    .line 87
    .line 88
    .line 89
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v3, v2}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsBool(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_5

    .line 101
    .line 102
    const v2, 0x7f13030e

    .line 103
    .line 104
    .line 105
    invoke-static {p1, v2}, Lcom/v2ray/ang/extension/_ExtKt;->toast(Landroid/content/Context;I)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_5
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 110
    .line 111
    new-array v3, v1, [J

    .line 112
    .line 113
    fill-array-data v3, :array_1

    .line 114
    .line 115
    .line 116
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 124
    .line 125
    new-array v4, v1, [J

    .line 126
    .line 127
    fill-array-data v4, :array_2

    .line 128
    .line 129
    .line 130
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-static {v2, v3}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :goto_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 141
    .line 142
    new-array v1, v1, [J

    .line 143
    .line 144
    fill-array-data v1, :array_3

    .line 145
    .line 146
    .line 147
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-static {v1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsString(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    if-nez v1, :cond_6

    .line 159
    .line 160
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 161
    .line 162
    new-array v2, v0, [J

    .line 163
    .line 164
    fill-array-data v2, :array_4

    .line 165
    .line 166
    .line 167
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    :cond_6
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 175
    .line 176
    new-array v0, v0, [J

    .line 177
    .line 178
    fill-array-data v0, :array_5

    .line 179
    .line 180
    .line 181
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_7

    .line 193
    .line 194
    new-instance v0, Landroid/content/Intent;

    .line 195
    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    const-class v2, Lcom/v2ray/ang/service/V2RayVpnService;

    .line 201
    .line 202
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_7
    new-instance v0, Landroid/content/Intent;

    .line 207
    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    const-class v2, Lcom/v2ray/ang/service/V2RayProxyOnlyService;

    .line 213
    .line 214
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    .line 216
    .line 217
    :goto_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 218
    .line 219
    const/16 v2, 0x19

    .line 220
    .line 221
    if-le v1, v2, :cond_8

    .line 222
    .line 223
    invoke-static {p1, v0}, L따딻딄땀둘딽됨딟듻뎠드딎딄듌돼뎻땝땲뒐듻땸뎻둑둣뒤땲딄돳뎻뎽듻뒋들돛땹들딌딄들뒝땣돠딅딸돴뒛땮땯돵땪딝딎땮둘뒵땟땔될돶땍뒬뒝딞땝땡땰뒨듽됨딽듸둑돨듟땡둘듌땪땯땻들둥뎻딠땦듐뒋듌딄뎬뎹땰득땠딄될뎡뒝땤듐딝딝돛둥듟딹땮뎨뒋듌땱땳땳돰둔뎹땡돠딻뒐딜딁들됫들돰딄뒋뒙뒝;->뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(Landroid/content/Context;Landroid/content/Intent;)V

    .line 224
    .line 225
    .line 226
    goto :goto_2

    .line 227
    :cond_8
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 228
    .line 229
    .line 230
    :goto_2
    return-void

    .line 231
    :array_0
    .array-data 8
        0x751110a8e6118863L    # 8.00727213666383E255
        0x5f3efdef41d485dcL    # 6.3405437005704626E150
        -0x2fb7d4dd61d03260L    # -5.5970415174991335E78
        0x40536c5653e9f1dfL    # 77.69276903005765
        -0x58837da1c8a0053dL
    .end array-data

    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    :array_1
    .array-data 8
        0x6ee6cacb00868f0fL    # 1.6872997696073817E226
        -0xcc5ecced19bf20dL
        -0x34a579f304449f53L    # -1.0161838324916245E55
    .end array-data

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    :array_2
    .array-data 8
        0x234614ebeb9783fcL    # 9.27139323975475E-139
        0x5c5061133cb50f61L    # 4.762014670809116E136
        -0x35135d05ed965809L    # -8.571387727956467E52
    .end array-data

    .line 272
    .line 273
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
    .line 286
    .line 287
    :array_3
    .array-data 8
        -0x286fe8a97d675f36L    # -6.191641946882483E113
        0x2128a5af74508731L    # 6.023652273338751E-149
        0xf3dc6221331830cL
    .end array-data

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
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    :array_4
    .array-data 8
        -0x16cfc644aa8eaaa0L    # -4.851495565714485E198
        -0x42878901c135e614L
    .end array-data

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
    .line 314
    .line 315
    :array_5
    .array-data 8
        0x53db9cf6e958ddefL    # 9.215830398752144E95
        0x26e63d0be393607bL
    .end array-data
.end method

.method public static final startVService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

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
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/v2ray/ang/handler/MmkvManager;->setSelectServer(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    sget-object p1, Lcom/v2ray/ang/service/V2RayServiceManager;->INSTANCE:Lcom/v2ray/ang/service/V2RayServiceManager;

    .line 27
    .line 28
    invoke-direct {p1, p0}, Lcom/v2ray/ang/service/V2RayServiceManager;->startContextService(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        0x766f4ec1f85a2439L    # 3.0807515279375128E262
        -0x437b2c4d287218a7L    # -3.6128995043063914E-17
    .end array-data
.end method

.method public static synthetic startVService$default(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1}, Lcom/v2ray/ang/service/V2RayServiceManager;->startVService(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final stopVService(Landroid/content/Context;)V
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

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
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    new-array v2, v1, [J

    .line 23
    .line 24
    fill-array-data v2, :array_1

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array v1, v1, [J

    .line 37
    .line 38
    fill-array-data v1, :array_2

    .line 39
    .line 40
    .line 41
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v0, v1}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sget-object v0, Lcom/v2ray/ang/util/MessageUtil;->INSTANCE:Lcom/v2ray/ang/util/MessageUtil;

    .line 52
    .line 53
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    new-array v2, v2, [J

    .line 57
    .line 58
    const-wide v3, -0x1fac20c9497056eeL

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    aput-wide v3, v2, v5

    .line 65
    .line 66
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const/4 v2, 0x4

    .line 74
    invoke-virtual {v0, p0, v2, v1}, Lcom/v2ray/ang/util/MessageUtil;->sendMsg2Service(Landroid/content/Context;ILjava/io/Serializable;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    nop

    .line 79
    :array_0
    .array-data 8
        -0x59badefa5e5641b9L
        -0x5149b7e9363d844dL    # -1.1469580744481086E-83
    .end array-data

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
    .line 90
    .line 91
    :array_1
    .array-data 8
        0x6cdfe6514b0cee69L    # 2.7491801686861605E216
        -0x30a862d7f07e085bL    # -1.6688854678946196E74
        -0x5beea017dc14cd3L    # -7.753614539658508E280
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
    :array_2
    .array-data 8
        0x3bf49556835d201cL    # 6.973910698516524E-20
        -0x7e4b1ab660e04484L
        -0x3e1f23a79a94cc3fL    # -2.2630080433500676E9
    .end array-data
.end method


# virtual methods
.method public final getCoreController()Llibv2ray/CoreController;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/v2ray/ang/service/V2RayServiceManager;->coreController:Llibv2ray/CoreController;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRunningServerName()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/v2ray/ang/service/V2RayServiceManager;->currentConfig:Lcom/v2ray/ang/dto/ProfileItem;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/v2ray/ang/dto/ProfileItem;->getRemarks()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    new-array v1, v1, [J

    .line 17
    .line 18
    const-wide v2, -0x20b238722f6c9581L    # -1.2184995089894751E151

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    aput-wide v2, v1, v4

    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_1
    return-object v0
.end method

.method public final getServiceControl()Ljava/lang/ref/SoftReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/v2ray/ang/service/ServiceControl;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/v2ray/ang/service/V2RayServiceManager;->serviceControl:Ljava/lang/ref/SoftReference;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isRunning()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/v2ray/ang/service/V2RayServiceManager;->coreController:Llibv2ray/CoreController;

    .line 2
    .line 3
    invoke-virtual {v0}, Llibv2ray/CoreController;->getIsRunning()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final queryStats(Ljava/lang/String;Ljava/lang/String;)J
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

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
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    new-array v1, v1, [J

    .line 22
    .line 23
    fill-array-data v1, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lcom/v2ray/ang/service/V2RayServiceManager;->coreController:Llibv2ray/CoreController;

    .line 37
    .line 38
    invoke-virtual {v0, p1, p2}, Llibv2ray/CoreController;->queryStats(Ljava/lang/String;Ljava/lang/String;)J

    .line 39
    .line 40
    .line 41
    move-result-wide p1

    .line 42
    return-wide p1

    .line 43
    :array_0
    .array-data 8
        -0x7a96dcd4348d251fL
        -0x48d7682a91f05a7aL    # -5.513963818985892E-43
    .end array-data

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    :array_1
    .array-data 8
        -0x3193ab3ddc53b38aL    # -6.110436827806197E69
        -0x5ba9d7bf96f756ecL
    .end array-data
.end method

.method public final setServiceControl(Ljava/lang/ref/SoftReference;)V
    .locals 2
    .param p1    # Ljava/lang/ref/SoftReference;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/v2ray/ang/service/ServiceControl;",
            ">;)V"
        }
    .end annotation

    .line 1
    sput-object p1, Lcom/v2ray/ang/service/V2RayServiceManager;->serviceControl:Ljava/lang/ref/SoftReference;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/v2ray/ang/service/ServiceControl;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v1}, Lcom/v2ray/ang/service/ServiceControl;->getService()Landroid/app/Service;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v1, v0

    .line 26
    :goto_0
    invoke-static {v1}, Lgo/Seq;->setContext(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/v2ray/ang/service/ServiceControl;

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-interface {p1}, Lcom/v2ray/ang/service/ServiceControl;->getService()Landroid/app/Service;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :cond_1
    invoke-virtual {v1, v0}, Lcom/v2ray/ang/util/Utils;->userAssetPath(Landroid/content/Context;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v1}, Lcom/v2ray/ang/util/Utils;->getDeviceIdForXUDPBaseKey()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {p1, v0}, Llibv2ray/Libv2ray;->initCoreEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final startCoreLoop()Z
    .locals 12

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x5

    .line 4
    const/4 v3, 0x3

    .line 5
    sget-object v4, Lcom/v2ray/ang/service/V2RayServiceManager;->coreController:Llibv2ray/CoreController;

    .line 6
    .line 7
    invoke-virtual {v4}, Llibv2ray/CoreController;->getIsRunning()Z

    .line 8
    .line 9
    .line 10
    move-result v5

    .line 11
    const/4 v6, 0x0

    .line 12
    if-eqz v5, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    new-array v1, v3, [J

    .line 17
    .line 18
    fill-array-data v1, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    new-array v2, v3, [J

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
    invoke-static {v0, v1}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return v6

    .line 46
    :cond_0
    invoke-static {}, Lcom/v2ray/ang/service/V2RayServiceManager;->getService()Landroid/app/Service;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    if-nez v5, :cond_1

    .line 51
    .line 52
    return v6

    .line 53
    :cond_1
    invoke-static {}, Lcom/v2ray/ang/handler/MmkvManager;->getSelectServer()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    if-nez v7, :cond_2

    .line 58
    .line 59
    return v6

    .line 60
    :cond_2
    sget-object v8, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 61
    .line 62
    invoke-virtual {v8, v7}, Lcom/v2ray/ang/handler/MmkvManager;->decodeServerConfig(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    if-nez v8, :cond_3

    .line 67
    .line 68
    return v6

    .line 69
    :cond_3
    sget-object v9, Lcom/v2ray/ang/handler/V2rayConfigManager;->INSTANCE:Lcom/v2ray/ang/handler/V2rayConfigManager;

    .line 70
    .line 71
    invoke-virtual {v9, v5, v7}, Lcom/v2ray/ang/handler/V2rayConfigManager;->getV2rayConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/v2ray/ang/dto/ConfigResult;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-virtual {v7}, Lcom/v2ray/ang/dto/ConfigResult;->getStatus()Z

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    if-nez v9, :cond_4

    .line 80
    .line 81
    return v6

    .line 82
    :cond_4
    :try_start_0
    new-instance v9, Landroid/content/IntentFilter;

    .line 83
    .line 84
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v11, v2, [J

    .line 87
    .line 88
    fill-array-data v11, :array_2

    .line 89
    .line 90
    .line 91
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 102
    .line 103
    new-array v11, v2, [J

    .line 104
    .line 105
    fill-array-data v11, :array_3

    .line 106
    .line 107
    .line 108
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 119
    .line 120
    new-array v11, v2, [J

    .line 121
    .line 122
    fill-array-data v11, :array_4

    .line 123
    .line 124
    .line 125
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    new-array v11, v0, [J

    .line 138
    .line 139
    fill-array-data v11, :array_5

    .line 140
    .line 141
    .line 142
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v10

    .line 149
    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    sget-object v10, Lcom/v2ray/ang/service/V2RayServiceManager;->mMsgReceive:Lcom/v2ray/ang/service/V2RayServiceManager$ReceiveMessageHandler;

    .line 153
    .line 154
    sget-object v11, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 155
    .line 156
    invoke-virtual {v11}, Lcom/v2ray/ang/util/Utils;->receiverFlags()I

    .line 157
    .line 158
    .line 159
    move-result v11

    .line 160
    invoke-static {v5, v10, v9, v11}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 161
    .line 162
    .line 163
    sput-object v8, Lcom/v2ray/ang/service/V2RayServiceManager;->currentConfig:Lcom/v2ray/ang/dto/ProfileItem;

    .line 164
    .line 165
    :try_start_1
    invoke-virtual {v7}, Lcom/v2ray/ang/dto/ConfigResult;->getContent()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v4, v0}, Llibv2ray/CoreController;->startLoop(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4}, Llibv2ray/CoreController;->getIsRunning()Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-nez v0, :cond_5

    .line 177
    .line 178
    sget-object v0, Lcom/v2ray/ang/util/MessageUtil;->INSTANCE:Lcom/v2ray/ang/util/MessageUtil;

    .line 179
    .line 180
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 181
    .line 182
    new-array v1, v1, [J

    .line 183
    .line 184
    const-wide v7, 0x6a1fdea2590e1c64L    # 1.561257686714819E203

    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    aput-wide v7, v1, v6

    .line 190
    .line 191
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    const/16 v2, 0x20

    .line 199
    .line 200
    invoke-virtual {v0, v5, v2, v1}, Lcom/v2ray/ang/util/MessageUtil;->sendMsg2UI(Landroid/content/Context;ILjava/io/Serializable;)V

    .line 201
    .line 202
    .line 203
    sget-object v0, Lcom/v2ray/ang/service/NotificationService;->INSTANCE:Lcom/v2ray/ang/service/NotificationService;

    .line 204
    .line 205
    invoke-virtual {v0}, Lcom/v2ray/ang/service/NotificationService;->cancelNotification()V

    .line 206
    .line 207
    .line 208
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 209
    .line 210
    new-array v1, v3, [J

    .line 211
    .line 212
    fill-array-data v1, :array_6

    .line 213
    .line 214
    .line 215
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 223
    .line 224
    new-array v2, v3, [J

    .line 225
    .line 226
    fill-array-data v2, :array_7

    .line 227
    .line 228
    .line 229
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-static {v0, v1}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    return v6

    .line 240
    :cond_5
    invoke-virtual {v4}, Llibv2ray/CoreController;->getIsRunning()Z

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    if-eqz v0, :cond_6

    .line 245
    .line 246
    invoke-direct {p0}, Lcom/v2ray/ang/service/V2RayServiceManager;->measureV2rayDelay()V

    .line 247
    .line 248
    .line 249
    :cond_6
    :try_start_2
    sget-object v0, Lcom/v2ray/ang/util/MessageUtil;->INSTANCE:Lcom/v2ray/ang/util/MessageUtil;

    .line 250
    .line 251
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 252
    .line 253
    new-array v9, v1, [J

    .line 254
    .line 255
    const-wide v10, -0x3e3c44bce8c87308L    # -6.620790224339895E8

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    aput-wide v10, v9, v6

    .line 261
    .line 262
    invoke-direct {v4, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    const/16 v9, 0x1f

    .line 270
    .line 271
    invoke-virtual {v0, v5, v9, v4}, Lcom/v2ray/ang/util/MessageUtil;->sendMsg2UI(Landroid/content/Context;ILjava/io/Serializable;)V

    .line 272
    .line 273
    .line 274
    sget-object v0, Lcom/v2ray/ang/service/NotificationService;->INSTANCE:Lcom/v2ray/ang/service/NotificationService;

    .line 275
    .line 276
    sget-object v4, Lcom/v2ray/ang/service/V2RayServiceManager;->currentConfig:Lcom/v2ray/ang/dto/ProfileItem;

    .line 277
    .line 278
    invoke-virtual {v0, v4}, Lcom/v2ray/ang/service/NotificationService;->showNotification(Lcom/v2ray/ang/dto/ProfileItem;)V

    .line 279
    .line 280
    .line 281
    sget-object v4, Lcom/v2ray/ang/service/V2RayServiceManager;->currentConfig:Lcom/v2ray/ang/dto/ProfileItem;

    .line 282
    .line 283
    invoke-virtual {v0, v4}, Lcom/v2ray/ang/service/NotificationService;->startSpeedNotification(Lcom/v2ray/ang/dto/ProfileItem;)V

    .line 284
    .line 285
    .line 286
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 287
    .line 288
    new-array v4, v3, [J

    .line 289
    .line 290
    fill-array-data v4, :array_8

    .line 291
    .line 292
    .line 293
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 301
    .line 302
    new-array v9, v3, [J

    .line 303
    .line 304
    fill-array-data v9, :array_9

    .line 305
    .line 306
    .line 307
    invoke-direct {v4, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    invoke-static {v0, v4}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    sget-object v0, Lcom/v2ray/ang/util/PluginUtil;->INSTANCE:Lcom/v2ray/ang/util/PluginUtil;

    .line 318
    .line 319
    invoke-virtual {v7}, Lcom/v2ray/ang/dto/ConfigResult;->getSocksPort()Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    invoke-virtual {v0, v5, v8, v4}, Lcom/v2ray/ang/util/PluginUtil;->runPlugin(Landroid/content/Context;Lcom/v2ray/ang/dto/ProfileItem;Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 324
    .line 325
    .line 326
    return v1

    .line 327
    :catch_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 328
    .line 329
    new-array v1, v3, [J

    .line 330
    .line 331
    fill-array-data v1, :array_a

    .line 332
    .line 333
    .line 334
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 341
    .line 342
    new-array v1, v2, [J

    .line 343
    .line 344
    fill-array-data v1, :array_b

    .line 345
    .line 346
    .line 347
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    return v6

    .line 354
    :catch_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 355
    .line 356
    new-array v1, v3, [J

    .line 357
    .line 358
    fill-array-data v1, :array_c

    .line 359
    .line 360
    .line 361
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 368
    .line 369
    new-array v1, v2, [J

    .line 370
    .line 371
    fill-array-data v1, :array_d

    .line 372
    .line 373
    .line 374
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    return v6

    .line 381
    :catch_2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 382
    .line 383
    new-array v2, v3, [J

    .line 384
    .line 385
    fill-array-data v2, :array_e

    .line 386
    .line 387
    .line 388
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 395
    .line 396
    new-array v0, v0, [J

    .line 397
    .line 398
    fill-array-data v0, :array_f

    .line 399
    .line 400
    .line 401
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    return v6

    .line 408
    nop

    .line 409
    :array_0
    .array-data 8
        -0x7e7f73363f1b690bL
        -0x10cc667a97ebc3b7L    # -4.643078038885073E227
        -0x535b9598c269a8L
    .end array-data

    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    :array_1
    .array-data 8
        -0x31af32fb5e9db08L
        -0x6910cc6b65b7a63eL
        -0x7c59be99d1fbe4a7L
    .end array-data

    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    :array_2
    .array-data 8
        0x63a5c05fd7e3e169L    # 1.0507417853773215E172
        0x2e0f791502f73c7eL    # 7.910593794226654E-87
        -0x7afaa6edb18d6389L    # -1.794526970603153E-284
        0x7e7eb049dd6c83c9L    # 2.0551955043201292E301
        0x70312ec2c0fe2d0cL    # 2.667638929480056E232
    .end array-data

    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    :array_3
    .array-data 8
        -0x3be097786d90776bL    # -1.4484530404863176E20
        0x10126f26649b7b0dL    # 2.968432328110831E-231
        -0x647df0709f9338dcL    # -3.565570959464465E-176
        0x198b5e01b9c8f339L
        0x6413fd796ff39002L    # 1.2360419815413917E174
    .end array-data

    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    :array_4
    .array-data 8
        -0x5e5d07ab8374a278L
        0x44d24f7ad6d3d991L    # 3.458749638741028E23
        0x5f5a8f1d283f17d7L    # 2.1734526920991012E151
        0x7f206e629196af4eL
        0x7e23f2e0d57d4194L    # 4.1748535223830134E299
    .end array-data

    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    :array_5
    .array-data 8
        0x2b9ef18e63201c25L    # 1.4147248212457522E-98
        0x2c0b4aedc7b78466L    # 1.5971943109952893E-96
        -0x579eef3850120a35L    # -3.464909253641462E-114
        0x5feff62f9ba7eff7L    # 1.3391745351282847E154
        -0x64e239fcdb52425cL    # -4.592109700456917E-178
        0x7c9be4939e91f4edL    # 1.739679039076861E292
    .end array-data

    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    :array_6
    .array-data 8
        0x264da452825f861L
        -0x51824e3f1419caedL    # -9.553336043594201E-85
        -0x24d2c070030bccbL    # -3.078366627968323E297
    .end array-data

    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    :array_7
    .array-data 8
        -0x6bc32447230a0850L    # -3.42889067858772E-211
        0x33eb11f91fed4bL
        0x5348dd577c08b26fL    # 1.6208037648281414E93
    .end array-data

    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    :array_8
    .array-data 8
        0xf2a6cedb0078d1eL
        -0x2e991850deb1fcb4L    # -1.390526940756511E84
        0x2bb9188341cb1b6eL    # 4.58946064822053E-98
    .end array-data

    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    :array_9
    .array-data 8
        -0x41dcacc66cb371d3L    # -2.2497374192676253E-9
        0x3486a6904216a848L    # 1.1547055776835676E-55
        0x6af559092fcfcd7fL    # 1.7134446779574172E207
    .end array-data

    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    :array_a
    .array-data 8
        0x6858b99bb1dadea8L    # 4.5122596040521964E194
        0x29145ed5081972e1L    # 8.47036204821772E-111
        -0x322db257a51ec0c1L    # -7.710270995264384E66
    .end array-data

    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    :array_b
    .array-data 8
        0x59b8ee967eb11583L    # 1.64814367508971E124
        0x3e9a90f545e6b638L    # 3.9586786284681524E-7
        0x389690ab05ffa600L    # 4.244025419647983E-36
        -0x36dc430dc526b848L    # -2.200868475417272E44
        -0x299e2825289ea105L    # -1.309546096761907E108
    .end array-data

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
    :array_c
    .array-data 8
        -0x32fc8eac823c1b62L    # -9.997818411843673E62
        0x75404bcbd05020d0L    # 6.117154254414803E256
        -0x6cdaa4d07d9db84cL
    .end array-data

    .line 646
    .line 647
    .line 648
    .line 649
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
    :array_d
    .array-data 8
        0x124a85d6af2f8bdcL
        0x4dac58b559c14b8L
        -0x257cd4febb057750L    # -1.0380175734032933E128
        -0x7b8bbe74e9be733aL    # -3.325664584976704E-287
        -0x78bcd2235e33e60fL    # -1.107906873344501E-273
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
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    :array_e
    .array-data 8
        0x5b1d25df6012358L
        -0x5b1652dc4ce74fdcL    # -7.234770775775512E-131
        0x61ad481da31d9aadL    # 3.2933963519563304E162
    .end array-data

    .line 686
    .line 687
    .line 688
    .line 689
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
    :array_f
    .array-data 8
        -0x10969d83d0d7f560L    # -4.8108175667929473E228
        -0x4fd86b0e3339feabL    # -1.0182826274635344E-76
        0x4e44cbbf1f56b39bL    # 1.121311903507312E69
        0x53d90e5afc7d384L
        0x333b610802be2bd2L
        -0x3ad6cf4b70fbc6e9L    # -1.522657490045068E25
    .end array-data
.end method

.method public final startVServiceFromToggle(Landroid/content/Context;)Z
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

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
    invoke-static {}, Lcom/v2ray/ang/handler/MmkvManager;->getSelectServer()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-direct {p0, p1}, Lcom/v2ray/ang/service/V2RayServiceManager;->startContextService(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    return p1

    .line 37
    :cond_1
    :goto_0
    const v0, 0x7f130028

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v0}, Lcom/v2ray/ang/extension/_ExtKt;->toast(Landroid/content/Context;I)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    return p1

    :array_0
    .array-data 8
        0x2574f335df35b4aL
        -0x329a0df2b61064abL    # -7.222289078299302E64
    .end array-data
.end method

.method public final stopCoreLoop()Z
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {}, Lcom/v2ray/ang/service/V2RayServiceManager;->getService()Landroid/app/Service;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    sget-object v3, Lcom/v2ray/ang/service/V2RayServiceManager;->coreController:Llibv2ray/CoreController;

    .line 11
    .line 12
    invoke-virtual {v3}, Llibv2ray/CoreController;->getIsRunning()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-static {v3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    new-instance v7, Lcom/v2ray/ang/service/V2RayServiceManager$stopCoreLoop$1;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-direct {v7, v3}, Lcom/v2ray/ang/service/V2RayServiceManager$stopCoreLoop$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 30
    .line 31
    .line 32
    const/4 v8, 0x3

    .line 33
    const/4 v9, 0x0

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 37
    .line 38
    .line 39
    :cond_1
    sget-object v3, Lcom/v2ray/ang/util/MessageUtil;->INSTANCE:Lcom/v2ray/ang/util/MessageUtil;

    .line 40
    .line 41
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    new-array v5, v0, [J

    .line 44
    .line 45
    const-wide v6, 0x23b1d36d3526a8fcL    # 9.580167022764963E-137

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    aput-wide v6, v5, v1

    .line 51
    .line 52
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const/16 v4, 0x29

    .line 60
    .line 61
    invoke-virtual {v3, v2, v4, v1}, Lcom/v2ray/ang/util/MessageUtil;->sendMsg2UI(Landroid/content/Context;ILjava/io/Serializable;)V

    .line 62
    .line 63
    .line 64
    sget-object v1, Lcom/v2ray/ang/service/NotificationService;->INSTANCE:Lcom/v2ray/ang/service/NotificationService;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/v2ray/ang/service/NotificationService;->cancelNotification()V

    .line 67
    .line 68
    .line 69
    :try_start_0
    sget-object v1, Lcom/v2ray/ang/service/V2RayServiceManager;->mMsgReceive:Lcom/v2ray/ang/service/V2RayServiceManager$ReceiveMessageHandler;

    .line 70
    .line 71
    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 76
    .line 77
    const/4 v2, 0x3

    .line 78
    new-array v2, v2, [J

    .line 79
    .line 80
    fill-array-data v2, :array_0

    .line 81
    .line 82
    .line 83
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 90
    .line 91
    const/4 v2, 0x6

    .line 92
    new-array v2, v2, [J

    .line 93
    .line 94
    fill-array-data v2, :array_1

    .line 95
    .line 96
    .line 97
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    :goto_0
    sget-object v1, Lcom/v2ray/ang/util/PluginUtil;->INSTANCE:Lcom/v2ray/ang/util/PluginUtil;

    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/v2ray/ang/util/PluginUtil;->stopPlugin()V

    .line 106
    .line 107
    .line 108
    return v0

    .line 109
    :array_0
    .array-data 8
        -0x68296b9b9f223857L    # -7.732859773210162E-194
        -0x467eaa6921fd6bbbL    # -1.0683107702640846E-31
        -0x2665e3178acbb0b5L    # -4.315525741792711E123
    .end array-data

    .line 110
    .line 111
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
    :array_1
    .array-data 8
        0x3800d997dbc15adcL    # 6.189702679150112E-39
        -0x78cc26b17fdd2d17L    # -5.732966358404899E-274
        0x296a6b77d0915a2fL    # 3.51545107848105E-109
        -0x46b37d9ffe9fadfaL    # -1.0981374217430931E-32
        0x282c29563939e826L
        -0x38fcd7d439451ed5L    # -1.2433550626406422E34
    .end array-data
.end method
