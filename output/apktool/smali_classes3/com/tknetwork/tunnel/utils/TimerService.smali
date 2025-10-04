.class public Lcom/tknetwork/tunnel/utils/TimerService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final COUNTDOWN_BR:Ljava/lang/String;


# instance fields
.field private TAG:Ljava/lang/String;

.field countDownTimer:Landroid/os/CountDownTimer;

.field intent:Landroid/content/Intent;

.field sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x6

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/utils/TimerService;->COUNTDOWN_BR:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        -0x10037c45812b6d44L    # -2.7668360746296544E231
        0x5699b4dcbce72d26L    # 1.5093198479440509E109
        0x974d9a3b03432beL
        -0x1dbbd3b430b4f8a4L    # -2.323372310642239E165
        -0x16261baaafc41320L    # -7.927595498771053E201
        0x41ba07a906fcb182L    # 4.3670963898708355E8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    new-array v1, v1, [J

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/tknetwork/tunnel/utils/TimerService;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v0, Landroid/content/Intent;

    .line 22
    .line 23
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 v2, 0x6

    .line 26
    new-array v2, v2, [J

    .line 27
    .line 28
    fill-array-data v2, :array_1

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/tknetwork/tunnel/utils/TimerService;->intent:Landroid/content/Intent;

    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :array_0
    .array-data 8
        0x68d92b8691d9374dL    # 1.1759281282172858E197
        0x35c8fe2868026529L    # 1.3359976934754136E-49
        -0x4f3fc23f28b12cfaL    # -7.181411636535233E-74
    .end array-data

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
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    :array_1
    .array-data 8
        -0x63a1c4146a0b9e89L    # -4.889663918927302E-172
        -0x25a48e41fccfd8d9L    # -1.8577635361545584E127
        -0x1b1439956d43518cL
        -0x16e37d904db63374L    # -2.1311156662460933E198
        -0x2fc3323947165d5L    # -1.580724553053358E294
        -0x26deddca28b6fff7L    # -2.212166221557878E121
    .end array-data
.end method

.method public static bridge synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/utils/TimerService;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/utils/TimerService;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 10

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    new-array v1, v1, [J

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/tknetwork/tunnel/utils/TimerService;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 28
    .line 29
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    new-array v2, v2, [J

    .line 33
    .line 34
    fill-array-data v2, :array_1

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-wide/16 v2, 0x0

    .line 45
    .line 46
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 47
    .line 48
    .line 49
    move-result-wide v6

    .line 50
    new-instance v0, Lcom/tknetwork/tunnel/utils/TimerService$1;

    .line 51
    .line 52
    const-wide/16 v8, 0x3e8

    .line 53
    .line 54
    move-object v4, v0

    .line 55
    move-object v5, p0

    .line 56
    invoke-direct/range {v4 .. v9}, Lcom/tknetwork/tunnel/utils/TimerService$1;-><init>(Lcom/tknetwork/tunnel/utils/TimerService;JJ)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/tknetwork/tunnel/utils/TimerService;->countDownTimer:Landroid/os/CountDownTimer;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :array_0
    .array-data 8
        0x2e56a2f18e564228L    # 1.8206668576776574E-85
        0x39043ddca0da6d56L    # 4.8729994457850736E-34
        -0x3f6c242003b8ea25L    # -1270.9687358004655
        0x53577d75a52462e9L    # 3.062408361965404E93
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
    :array_1
    .array-data 8
        0x55f28bc89041f526L    # 1.0633823021817281E106
        -0x6265fb353f63f8dL    # -9.08530902240108E278
    .end array-data
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/TimerService;->countDownTimer:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
