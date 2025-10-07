.class public final Lcom/v2ray/ang/service/NotificationService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u0016\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0006\u0010\u0017\u001a\u00020\u0013J\u0010\u0010\u0018\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0008\u0010\u0019\u001a\u00020\u001aH\u0003J\"\u0010\u001b\u001a\u00020\u00132\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u000bH\u0002J\n\u0010\u001f\u001a\u0004\u0018\u00010\u0011H\u0002J.\u0010 \u001a\u00020\u00132\n\u0010!\u001a\u00060\"j\u0002`#2\u0008\u0010$\u001a\u0004\u0018\u00010\u001a2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020&H\u0002J\n\u0010(\u001a\u0004\u0018\u00010)H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lcom/v2ray/ang/service/NotificationService;",
        "",
        "<init>",
        "()V",
        "NOTIFICATION_ID",
        "",
        "NOTIFICATION_PENDING_INTENT_CONTENT",
        "NOTIFICATION_PENDING_INTENT_STOP_V2RAY",
        "NOTIFICATION_PENDING_INTENT_RESTART_V2RAY",
        "NOTIFICATION_ICON_THRESHOLD",
        "lastQueryTime",
        "",
        "mBuilder",
        "Landroidx/core/app/NotificationCompat$Builder;",
        "speedNotificationJob",
        "Lkotlinx/coroutines/Job;",
        "mNotificationManager",
        "Landroid/app/NotificationManager;",
        "startSpeedNotification",
        "",
        "currentConfig",
        "Lcom/v2ray/ang/dto/ProfileItem;",
        "showNotification",
        "cancelNotification",
        "stopSpeedNotification",
        "createNotificationChannel",
        "",
        "updateNotification",
        "contentText",
        "proxyTraffic",
        "directTraffic",
        "getNotificationManager",
        "appendSpeedString",
        "text",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "name",
        "up",
        "",
        "down",
        "getService",
        "Landroid/app/Service;",
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
.field public static final INSTANCE:Lcom/v2ray/ang/service/NotificationService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final NOTIFICATION_ICON_THRESHOLD:I = 0xbb8

.field private static final NOTIFICATION_ID:I = 0x1

.field private static final NOTIFICATION_PENDING_INTENT_CONTENT:I = 0x0

.field private static final NOTIFICATION_PENDING_INTENT_RESTART_V2RAY:I = 0x2

.field private static final NOTIFICATION_PENDING_INTENT_STOP_V2RAY:I = 0x1

.field private static lastQueryTime:J

.field private static mBuilder:Landroidx/core/app/NotificationCompat$Builder;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static mNotificationManager:Landroid/app/NotificationManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static speedNotificationJob:Lkotlinx/coroutines/Job;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/v2ray/ang/service/NotificationService;

    invoke-direct {v0}, Lcom/v2ray/ang/service/NotificationService;-><init>()V

    sput-object v0, Lcom/v2ray/ang/service/NotificationService;->INSTANCE:Lcom/v2ray/ang/service/NotificationService;

    return-void
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

.method public static final synthetic access$appendSpeedString(Lcom/v2ray/ang/service/NotificationService;Ljava/lang/StringBuilder;Ljava/lang/String;DD)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/v2ray/ang/service/NotificationService;->appendSpeedString(Ljava/lang/StringBuilder;Ljava/lang/String;DD)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getLastQueryTime$p()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/v2ray/ang/service/NotificationService;->lastQueryTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$setLastQueryTime$p(J)V
    .locals 0

    .line 1
    sput-wide p0, Lcom/v2ray/ang/service/NotificationService;->lastQueryTime:J

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$updateNotification(Lcom/v2ray/ang/service/NotificationService;Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/v2ray/ang/service/NotificationService;->updateNotification(Ljava/lang/String;JJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final appendSpeedString(Ljava/lang/StringBuilder;Ljava/lang/String;DD)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    new-array v1, v0, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x6

    .line 23
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    const/4 v3, 0x3

    .line 35
    new-array v3, v3, [J

    .line 36
    .line 37
    fill-array-data v3, :array_1

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    invoke-static {p2, v2, v0}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-gt p2, v1, :cond_1

    .line 62
    .line 63
    :goto_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    new-array v3, v0, [J

    .line 66
    .line 67
    fill-array-data v3, :array_2

    .line 68
    .line 69
    .line 70
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    if-eq p2, v1, :cond_1

    .line 81
    .line 82
    add-int/2addr p2, v0

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    double-to-long p2, p3

    .line 85
    invoke-static {p2, p3}, Lcom/v2ray/ang/extension/_ExtKt;->toSpeedString(J)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    double-to-long p3, p5

    .line 90
    invoke-static {p3, p4}, Lcom/v2ray/ang/extension/_ExtKt;->toSpeedString(J)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    new-instance p4, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string p5, "\u2022  "

    .line 97
    .line 98
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string p2, "\u2191  "

    .line 105
    .line 106
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string p2, "\u2193\n"

    .line 113
    .line 114
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :array_0
    .array-data 8
        0x51b8319413931613L    # 4.700028177832579E85
        0x30aa0ed351c7cb22L    # 2.880518656567574E-74
    .end array-data

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
    :array_1
    .array-data 8
        -0x61dcea845db9d6c5L
        -0x7558cfc2d40b101bL    # -2.413043355301796E-257
        0x6157fe0250be92b2L    # 8.432729863522275E160
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
    .line 150
    .line 151
    .line 152
    .line 153
    :array_2
    .array-data 8
        -0x7df0378f94cc9f9bL    # -9.491803286954722E-299
        0x39f7c1f6c8b2cb11L    # 1.8741498540993482E-29
    .end array-data
.end method

.method private final createNotificationChannel()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

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
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/4 v2, 0x5

    .line 19
    new-array v2, v2, [J

    .line 20
    .line 21
    fill-array-data v2, :array_1

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {}, L땸뒵돵딃땀된될땐땫돰땠땦돨됩딃디따땝뒐뒐땨땻뎠돠돨됩땻됩득뒷땹딸딹땋땹땹된뒬딹뎡딄뒋뒐뎽뎸돳땄땃따뎨듌뒬뒛땅딜뒀듼됩땅딞뎰땥뒀뒨뎬딃됩땬딸뒀돶돠뎠돤돴돳땃든뒙듰뒹땳드뒈땰딐땁둔된둘땋든듌딝땵뎹땵땳딸둡딐땭듻땮뒻딟딞됴도돴딻뎸돰듸돴땬땵땜딸돶듨돠돶땨땣땮따땱땻뒋;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨()V

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, L됴땀돰듸딜듨듼딅땭뒋땣둘땸돷땜둬돴뒹딅돰듨뒐둣땋딅듟들돛둡땣드딠땭따땋뒬땥든땡뒉땔땰땪딌딻뒉드뒾뎸뒘딃돰듐딟드돼둔둘땻뎸뒛둥돳뎠땔뎸딀땦땭둘드뒛돠땥뒐딄땐듬둘됨땬듽땋땻땹뎨땥딞둡땃돷땬땍뒵땬든듽뒛땦됨땋딞땄돶듰땍둑뎰뒻딎딄둡돶땮뒼땱듼뒙땦딹뒛땩될둔든딻딠돸땥둡;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, L딤뎸땨땹땨땤뒈득땥땻딤뒀듼뒼뒷듬돛딟든뒬뎬된딝두뒤듟땵땯딐뒤뒉땟도뎬돰땝따땨땐뎬뎬듬딸득땋듔뎡딌둡뎽땟둘땹딟땋드땐뎹둬땤뒘된땁딀딟됩땥듻땡딅뎽디돵둘딽딁될돝딤됴땯딤뒈딃땬땣돶듰뒀돵둣됨땻땐딹딀땍땹딹땍됴돶땵땝땳듸돴땠땮딎돛뎸땡돵돝둔뒨땦돷땟땁뎹딀되딄둘딽돰땔뒬;->뎬뒐듨땧뒾땹됐따딤뎬딎땔딠돵땩딎딟듌됨듟듔둔땐땋땰땜땪디뒹듬땝땵땵땠뒹둡땡땠둠뒝뒻땦땝뒀뎸뒨돝둥뒋딀된됐땲땄듌딟디두딹듽뒐땦둠드뒷땹땝땠듻땻듸둘뎬돵뒾땭딜돠돼땭뒛돠듼뒉둣땁땯딟딞땀땜땄딃됴딞땣듨땁뎨됫돴됨돨땬됫땄뒛뒹땩땫딀땥뒘됩땱땜딄뒹듸뒾땐둠뒈돰딄땋도딽둡듽(Landroid/app/NotificationChannel;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, L딤뎸땨땹땨땤뒈득땥땻딤뒀듼뒼뒷듬돛딟든뒬뎬된딝두뒤듟땵땯딐뒤뒉땟도뎬돰땝따땨땐뎬뎬듬딸득땋듔뎡딌둡뎽땟둘땹딟땋드땐뎹둬땤뒘된땁딀딟됩땥듻땡딅뎽디돵둘딽딁될돝딤됴땯딤뒈딃땬땣돶듰뒀돵둣됨땻땐딹딀땍땹딹땍됴돶땵땝땳듸돴땠땮딎돛뎸땡돵돝둔뒨땦돷땟땁뎹딀되딄둘딽돰땔뒬;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Landroid/app/NotificationChannel;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, L딤뎸땨땹땨땤뒈득땥땻딤뒀듼뒼뒷듬돛딟든뒬뎬된딝두뒤듟땵땯딐뒤뒉땟도뎬돰땝따땨땐뎬뎬듬딸득땋듔뎡딌둡뎽땟둘땹딟땋드땐뎹둬땤뒘된땁딀딟됩땥듻땡딅뎽디돵둘딽딁될돝딤됴땯딤뒈딃땬땣돶듰뒀돵둣됨땻땐딹딀땍땹딹땍됴돶땵땝땳듸돴땠땮딎돛뎸땡돵돝둔뒨땦돷땟땁뎹딀되딄둘딽돰땔뒬;->뎰딌뒝뒙땸땫땨둘뒘둔뎹됐딜땬듬뎽돛땃뒤땟뎰땠땧딞딝뎰딐땦뎹디딻둑뎠듸땋돵듟땯둠땀듟듰땃땁땍땁땱땵땬딨뒝딤뒻땱둑뒀땩땄땩뎽땤돼땱딃딠됐땬뎽딝된둡득도돴듼땪딀땨땜땪땰땸되뒾뒀땹땵뎨땐뒈딻드듼땱땹듔도딄될땹딄둠딞됩뎹딟딨듐뒈땬뎨두딜둬땐딀땔땥둥땻돸돼뒹돼듔듌되뒝땠듨(Landroid/app/NotificationChannel;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/v2ray/ang/service/NotificationService;->getNotificationManager()Landroid/app/NotificationManager;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    invoke-static {v2, v1}, L듬땥둡뎰뒻돵딽땥드땨뒉딌뒙듟돤돳돰뒉땧되땳땬땰딄돰땔뒨둥듽뎰뎡딠땹두땡둬뎠딃돶둡돨땩땹둥딝돳뎹돤땟땝듻딹됨둬둡들땮돳땵듨딟땔도뒤뎰듌뒷된땪도땀듸둔될됫땩땔뎠될듨딜땡땻땬둣뒐딄돳드땤땔듐돵돼될딀땤딻뎠땩득둔딐뎰딅땵뒤뎻든딟듔땫듟뎻돰됨뒘딌땵뒛땀딞딜땤듔둠뒋둥땦뒻;->뎬뒐듨땧뒾땹됐따딤뎬딎땔딠돵땩딎딟듌됨듟듔둔땐땋땰땜땪디뒹듬땝땵땵땠뒹둡땡땠둠뒝뒻땦땝뒀뎸뒨돝둥뒋딀된됐땲땄듌딟디두딹듽뒐땦둠드뒷땹땝땠듻땻듸둘뎬돵뒾땭딜돠돼땭뒛돠듼뒉둣땁땯딟딞땀땜땄딃됴딞땣듨땁뎨됫돴됨돨땬됫땄뒛뒹땩땫딀땥뒘됩땱땜딄뒹듸뒾땐둠뒈돰딄땋도딽둡듽(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    return-object v0

    .line 57
    :array_0
    .array-data 8
        0x7e8ce8054122246aL    # 3.8716726982453463E301
        -0x7277057c7a335c83L    # -1.829115278784408E-243
        0x70ee190681f027ebL    # 9.56975309319566E235
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
        0x69432e4d66f81443L    # 1.147031700354398E199
        -0x7d2ae96eeba5c2f3L    # -5.159204770668472E-295
        -0x717f7dcb7c5fea53L    # -7.922532966867578E-239
        0x34088e6e07f57c8fL    # 4.890068593032264E-58
        -0x325d7478a12f0ec3L    # -9.765100326038653E65
    .end array-data
.end method

.method private final getNotificationManager()Landroid/app/NotificationManager;
    .locals 3

    .line 1
    sget-object v0, Lcom/v2ray/ang/service/NotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/v2ray/ang/service/NotificationService;->getService()Landroid/app/Service;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    new-array v2, v2, [J

    .line 17
    .line 18
    fill-array-data v2, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    const/16 v2, 0xa

    .line 35
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
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    check-cast v0, Landroid/app/NotificationManager;

    .line 52
    .line 53
    sput-object v0, Lcom/v2ray/ang/service/NotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 54
    .line 55
    :cond_1
    sget-object v0, Lcom/v2ray/ang/service/NotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 56
    .line 57
    return-object v0

    .line 58
    nop

    .line 59
    :array_0
    .array-data 8
        0x741d39e4cf83dcd0L    # 2.0925120841891428E251
        -0x1935f1c53b6a6d6aL    # -1.4171249365043903E187
        0x7910a54d7de2bf1bL    # 1.4407826643458186E275
    .end array-data

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
    .line 74
    .line 75
    :array_1
    .array-data 8
        -0x2a4f37c8c645168eL    # -6.014016612830039E104
        0x47f0c0ed899e3fdfL    # 3.563101882193203E38
        -0x546ddb6dd03252feL    # -8.294822091924984E-99
        0x24af19dfa8d4e3b0L
        -0x402e46a0a6566b03L    # -0.27693923717590946
        0x35f4de63abc8acb5L    # 8.92434355964294E-49
        0x58b8aa514ae0bb1eL    # 2.4879677918363866E119
        0x3c842829977179c9L    # 3.496662098248773E-17
        -0x457b50289871be9cL    # -8.355364519104693E-27
        -0x36d95f230d8e646L
    .end array-data
.end method

.method private final getService()Landroid/app/Service;
    .locals 1

    .line 1
    sget-object v0, Lcom/v2ray/ang/service/V2RayServiceManager;->INSTANCE:Lcom/v2ray/ang/service/V2RayServiceManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/v2ray/ang/service/V2RayServiceManager;->getServiceControl()Ljava/lang/ref/SoftReference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/v2ray/ang/service/ServiceControl;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/v2ray/ang/service/ServiceControl;->getService()Landroid/app/Service;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return-object v0
.end method

.method private final updateNotification(Ljava/lang/String;JJ)V
    .locals 4

    .line 1
    sget-object v0, Lcom/v2ray/ang/service/NotificationService;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    const-wide/16 v1, 0xbb8

    .line 6
    .line 7
    cmp-long v3, p2, v1

    .line 8
    .line 9
    if-gez v3, :cond_0

    .line 10
    .line 11
    cmp-long v3, p4, v1

    .line 12
    .line 13
    if-gez v3, :cond_0

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    const p2, 0x7f080169

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    cmp-long v1, p2, p4

    .line 25
    .line 26
    if-lez v1, :cond_1

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    const p2, 0x7f08016b

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    if-eqz v0, :cond_2

    .line 38
    .line 39
    const p2, 0x7f080168

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_0
    sget-object p2, Lcom/v2ray/ang/service/NotificationService;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 46
    .line 47
    if-eqz p2, :cond_3

    .line 48
    .line 49
    new-instance p3, Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 50
    .line 51
    invoke-direct {p3}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3, p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 59
    .line 60
    .line 61
    :cond_3
    sget-object p2, Lcom/v2ray/ang/service/NotificationService;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 62
    .line 63
    if-eqz p2, :cond_4

    .line 64
    .line 65
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 66
    .line 67
    .line 68
    :cond_4
    invoke-direct {p0}, Lcom/v2ray/ang/service/NotificationService;->getNotificationManager()Landroid/app/NotificationManager;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-eqz p1, :cond_6

    .line 73
    .line 74
    sget-object p2, Lcom/v2ray/ang/service/NotificationService;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 75
    .line 76
    if-eqz p2, :cond_5

    .line 77
    .line 78
    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    goto :goto_1

    .line 83
    :cond_5
    const/4 p2, 0x0

    .line 84
    :goto_1
    const/4 p3, 0x1

    .line 85
    invoke-virtual {p1, p3, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 86
    .line 87
    .line 88
    :cond_6
    return-void
.end method


# virtual methods
.method public final cancelNotification()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/v2ray/ang/service/NotificationService;->getService()Landroid/app/Service;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v2, 0x18

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-lt v1, v2, :cond_1

    .line 14
    .line 15
    invoke-static {v0}, L듨딞든딟둔땃딨돨딄땩돴둡땦됨돝땐땀뒬딄뒉땜딌딝딞뒵땻딨땰딞딤땭됐뒻들땝듰뒤돰딜뒼돸될땝둬뒹딞둔둡딠둔뎽땻됴뒀돷딌둣뒨돠땟듬뒋되땨돷뎬듌됴디돰뎹디땪딄듌땫땜도딄됐딐땰됴뒼둘딜땫땳돛듨딽듬뎸들땔땯듼땮듨딻두뒝뎠딌돶땔둥뒛딄든땰됫뒙둬땧땔땃될땋땧뎠되듔땄둬둥돷뒼둔둣;->뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Landroid/app/Service;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {v0, v3}, Landroid/app/Service;->stopForeground(Z)V

    .line 20
    .line 21
    .line 22
    :goto_0
    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/v2ray/ang/service/NotificationService;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 24
    .line 25
    sget-object v1, Lcom/v2ray/ang/service/NotificationService;->speedNotificationJob:Lkotlinx/coroutines/Job;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-static {v1, v0, v3, v0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_2
    sput-object v0, Lcom/v2ray/ang/service/NotificationService;->speedNotificationJob:Lkotlinx/coroutines/Job;

    .line 33
    .line 34
    sput-object v0, Lcom/v2ray/ang/service/NotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 35
    .line 36
    return-void
.end method

.method public final showNotification(Lcom/v2ray/ang/dto/ProfileItem;)V
    .locals 13
    .param p1    # Lcom/v2ray/ang/dto/ProfileItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x2

    .line 5
    const/4 v4, 0x5

    .line 6
    invoke-direct {p0}, Lcom/v2ray/ang/service/NotificationService;->getService()Landroid/app/Service;

    .line 7
    .line 8
    .line 9
    move-result-object v5

    .line 10
    if-nez v5, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v7, 0x17

    .line 16
    .line 17
    if-lt v6, v7, :cond_1

    .line 18
    .line 19
    const/high16 v7, 0xc000000

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/high16 v7, 0x8000000

    .line 23
    .line 24
    :goto_0
    new-instance v8, Landroid/content/Intent;

    .line 25
    .line 26
    const-class v9, Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 27
    .line 28
    invoke-direct {v8, v5, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v5, v2, v8, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    new-instance v9, Landroid/content/Intent;

    .line 36
    .line 37
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    new-array v11, v4, [J

    .line 40
    .line 41
    fill-array-data v11, :array_0

    .line 42
    .line 43
    .line 44
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v11, v1, [J

    .line 57
    .line 58
    fill-array-data v11, :array_1

    .line 59
    .line 60
    .line 61
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    invoke-virtual {v9, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    new-array v11, v3, [J

    .line 74
    .line 75
    fill-array-data v11, :array_2

    .line 76
    .line 77
    .line 78
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    const/4 v11, 0x4

    .line 86
    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    invoke-static {v5, v0, v9, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    new-instance v10, Landroid/content/Intent;

    .line 94
    .line 95
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 96
    .line 97
    new-array v12, v4, [J

    .line 98
    .line 99
    fill-array-data v12, :array_3

    .line 100
    .line 101
    .line 102
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 113
    .line 114
    new-array v1, v1, [J

    .line 115
    .line 116
    fill-array-data v1, :array_4

    .line 117
    .line 118
    .line 119
    invoke-direct {v11, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v10, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    .line 128
    .line 129
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 130
    .line 131
    new-array v11, v3, [J

    .line 132
    .line 133
    fill-array-data v11, :array_5

    .line 134
    .line 135
    .line 136
    invoke-direct {v1, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v10, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    .line 145
    .line 146
    invoke-static {v5, v3, v10, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    const/16 v3, 0x1a

    .line 151
    .line 152
    if-lt v6, v3, :cond_2

    .line 153
    .line 154
    invoke-direct {p0}, Lcom/v2ray/ang/service/NotificationService;->createNotificationChannel()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    goto :goto_1

    .line 159
    :cond_2
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 160
    .line 161
    new-array v4, v0, [J

    .line 162
    .line 163
    const-wide v6, 0x708bb0f82bd079fbL    # 1.375719159758959E234

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    aput-wide v6, v4, v2

    .line 169
    .line 170
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    :goto_1
    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    .line 178
    .line 179
    invoke-direct {v4, v5, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    const v3, 0x7f080169

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    const/4 v4, 0x0

    .line 190
    if-eqz p1, :cond_3

    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getRemarks()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    goto :goto_2

    .line 197
    :cond_3
    move-object p1, v4

    .line 198
    :goto_2
    invoke-virtual {v3, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    const/4 v3, -0x2

    .line 203
    invoke-virtual {p1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-virtual {p1, v8}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    const v2, 0x7f13018c

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    const v3, 0x7f080103

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v3, v2, v9}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    const v2, 0x7f1302e6

    .line 238
    .line 239
    .line 240
    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-virtual {p1, v3, v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    sput-object p1, Lcom/v2ray/ang/service/NotificationService;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 249
    .line 250
    if-eqz p1, :cond_4

    .line 251
    .line 252
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    :cond_4
    invoke-virtual {v5, v0, v4}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 257
    .line 258
    .line 259
    return-void

    .line 260
    nop

    .line 261
    :array_0
    .array-data 8
        -0x7a1295013b48cbb6L
        0x4f4d77acca355bcfL    # 1.0412906219940271E74
        -0x4fdb953da56c5709L    # -8.816244804958644E-77
        -0x7a8408cba276de67L    # -3.009046379796093E-282
        -0x6bfeeb359ba7dc14L    # -2.536949254983371E-212
    .end array-data

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
    :array_1
    .array-data 8
        0x75274c77c960c3ccL    # 2.1864425419065663E256
        0x29d15c80507669e2L    # 2.95695433385528E-107
        -0x7fcc0fe75479de3eL
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
    .line 298
    .line 299
    .line 300
    .line 301
    :array_2
    .array-data 8
        0x291857d33f937401L
        -0x2c38bb921ffa7f2eL    # -3.8827073823891165E95
    .end array-data

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
        0x2810619c0c2db02eL    # 1.039368862675201E-115
        0x5433de29376689bL    # 2.58796499435602E-283
        0x1eaa1cce751b045bL    # 5.804184406078862E-161
        0x6460d5b4ec05e5a1L    # 3.3310046714944035E175
        0x3c763b3062b2f1bfL    # 1.9282498388626103E-17
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
    :array_4
    .array-data 8
        0x1eb8ec616be4c7a2L
        -0x6af992303fc1cfeaL    # -2.183141893902028E-207
        -0x255a219f0aa90ce6L    # -4.737077355514785E128
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
    :array_5
    .array-data 8
        0x454c5696a14f4a47L    # 6.851765020387659E25
        0x587b88166b130fa2L    # 1.7356799384883746E118
    .end array-data
.end method

.method public final startSpeedNotification(Lcom/v2ray/ang/dto/ProfileItem;)V
    .locals 9
    .param p1    # Lcom/v2ray/ang/dto/ProfileItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsBool(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    if-eq v0, v1, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    sget-object v0, Lcom/v2ray/ang/service/NotificationService;->speedNotificationJob:Lkotlinx/coroutines/Job;

    .line 27
    .line 28
    if-nez v0, :cond_4

    .line 29
    .line 30
    sget-object v0, Lcom/v2ray/ang/service/V2RayServiceManager;->INSTANCE:Lcom/v2ray/ang/service/V2RayServiceManager;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/v2ray/ang/service/V2RayServiceManager;->isRunning()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    sput-wide v0, Lcom/v2ray/ang/service/NotificationService;->lastQueryTime:J

    .line 44
    .line 45
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 46
    .line 47
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 48
    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getAllOutboundTags()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    move-object p1, v1

    .line 59
    :goto_0
    if-eqz p1, :cond_3

    .line 60
    .line 61
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    const/4 v3, 0x2

    .line 64
    new-array v3, v3, [J

    .line 65
    .line 66
    fill-array-data v3, :array_1

    .line 67
    .line 68
    .line 69
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    new-instance v6, Lcom/v2ray/ang/service/NotificationService$startSpeedNotification$1;

    .line 88
    .line 89
    invoke-direct {v6, p1, v0, v1}, Lcom/v2ray/ang/service/NotificationService$startSpeedNotification$1;-><init>(Ljava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    .line 90
    .line 91
    .line 92
    const/4 v7, 0x3

    .line 93
    const/4 v8, 0x0

    .line 94
    const/4 v4, 0x0

    .line 95
    const/4 v5, 0x0

    .line 96
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    sput-object p1, Lcom/v2ray/ang/service/NotificationService;->speedNotificationJob:Lkotlinx/coroutines/Job;

    .line 101
    .line 102
    :cond_4
    :goto_1
    return-void

    .line 103
    :array_0
    .array-data 8
        -0x704518d83e4bb9a6L    # -6.768980695041203E-233
        -0x69e8d1c1f1a12be7L
        -0x79b2ab570cf01d16L
        0x64e47c7285e75babL    # 1.0376890159936471E178
    .end array-data

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
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    :array_1
    .array-data 8
        -0x7c68a491c5f0a067L
        -0x475996bbf9a30c4L
    .end array-data
.end method

.method public final stopSpeedNotification(Lcom/v2ray/ang/dto/ProfileItem;)V
    .locals 9
    .param p1    # Lcom/v2ray/ang/dto/ProfileItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/v2ray/ang/service/NotificationService;->speedNotificationJob:Lkotlinx/coroutines/Job;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sput-object v2, Lcom/v2ray/ang/service/NotificationService;->speedNotificationJob:Lkotlinx/coroutines/Job;

    .line 11
    .line 12
    sget-object v3, Lcom/v2ray/ang/service/NotificationService;->INSTANCE:Lcom/v2ray/ang/service/NotificationService;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getRemarks()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :cond_0
    move-object v4, v2

    .line 21
    const-wide/16 v5, 0x0

    .line 22
    .line 23
    const-wide/16 v7, 0x0

    .line 24
    .line 25
    invoke-direct/range {v3 .. v8}, Lcom/v2ray/ang/service/NotificationService;->updateNotification(Ljava/lang/String;JJ)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method
