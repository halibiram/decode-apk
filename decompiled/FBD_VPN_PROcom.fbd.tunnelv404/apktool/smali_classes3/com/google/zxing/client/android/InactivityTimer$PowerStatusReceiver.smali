.class final Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/client/android/InactivityTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PowerStatusReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/zxing/client/android/InactivityTimer;


# direct methods
.method private constructor <init>(Lcom/google/zxing/client/android/InactivityTimer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;->this$0:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/zxing/client/android/InactivityTimer;Lcom/google/zxing/client/android/InactivityTimer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;-><init>(Lcom/google/zxing/client/android/InactivityTimer;)V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;->this$0:Lcom/google/zxing/client/android/InactivityTimer;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/zxing/client/android/InactivityTimer;->access$200(Lcom/google/zxing/client/android/InactivityTimer;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;->lambda$onReceive$0(Z)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v0, 0x6

    .line 4
    new-array v0, v0, [J

    .line 5
    .line 6
    fill-array-data v0, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    new-array v0, v0, [J

    .line 30
    .line 31
    fill-array-data v0, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/4 v0, -0x1

    .line 42
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-gtz p1, :cond_0

    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 p1, 0x0

    .line 51
    :goto_0
    iget-object p2, p0, Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;->this$0:Lcom/google/zxing/client/android/InactivityTimer;

    .line 52
    .line 53
    invoke-static {p2}, Lcom/google/zxing/client/android/InactivityTimer;->access$100(Lcom/google/zxing/client/android/InactivityTimer;)Landroid/os/Handler;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    new-instance v0, Lcom/google/zxing/client/android/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;

    .line 58
    .line 59
    invoke-direct {v0, p0, p1}, Lcom/google/zxing/client/android/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;-><init>(Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void

    .line 66
    nop

    .line 67
    :array_0
    .array-data 8
        0x1a7c3c4723c4ab38L
        -0x7f4c696fd1215105L    # -2.789443380480691E-305
        -0x7c2b78c2450f9457L    # -3.291371251377869E-290
        0x243c2c9a73443c29L
        0xb900db1461eb349L
        0x5311f7ad68f0ac95L    # 1.4640169230786886E92
    .end array-data

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
    :array_1
    .array-data 8
        0x7a0fa489bdd3d231L    # 8.974698969916588E279
        -0x7bf28d5bf930802bL    # -3.777176306594441E-289
    .end array-data
.end method
