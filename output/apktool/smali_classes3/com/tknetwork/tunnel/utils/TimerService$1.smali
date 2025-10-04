.class Lcom/tknetwork/tunnel/utils/TimerService$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tknetwork/tunnel/utils/TimerService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tknetwork/tunnel/utils/TimerService;


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/utils/TimerService;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/utils/TimerService$1;->this$0:Lcom/tknetwork/tunnel/utils/TimerService;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/TimerService$1;->this$0:Lcom/tknetwork/tunnel/utils/TimerService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tknetwork/tunnel/utils/TimerService;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/utils/TimerService;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v1, 0x5

    .line 9
    new-array v1, v1, [J

    .line 10
    .line 11
    fill-array-data v1, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/TimerService$1;->this$0:Lcom/tknetwork/tunnel/utils/TimerService;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/tknetwork/tunnel/utils/TimerService;->intent:Landroid/content/Intent;

    .line 23
    .line 24
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/4 v2, 0x3

    .line 27
    new-array v2, v2, [J

    .line 28
    .line 29
    fill-array-data v2, :array_1

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/TimerService$1;->this$0:Lcom/tknetwork/tunnel/utils/TimerService;

    .line 43
    .line 44
    iget-object p2, p1, Lcom/tknetwork/tunnel/utils/TimerService;->intent:Landroid/content/Intent;

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :array_0
    .array-data 8
        0x26b5dabb6435c3afL    # 3.305986618127264E-122
        -0x425b2ab2cb88d3ccL    # -9.473846741432858E-12
        0xf720b31735c3ce5L
        0xd25c70350cd68e2L
        -0x1e670758885bbd81L    # -1.4042968762779419E162
    .end array-data

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
        0x21962f447e96a76cL    # 6.939920390664592E-147
        0x3859912b9f682e5fL    # 3.005394856121363E-37
        -0x59b754730db8e2c0L    # -2.915567169479021E-124
    .end array-data
.end method
