.class Lcom/tknetwork/tunnel/activities/ActivityUi$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/activities/ActivityUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/activities/ActivityUi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$1;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    new-array v0, v0, [J

    .line 11
    .line 12
    fill-array-data v0, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-static {}, Lde/blinkt/openvpn/core/TkLogStatus;->clearLog()V

    .line 29
    .line 30
    .line 31
    new-instance p1, Lconfig/ConfigUtil;

    .line 32
    .line 33
    iget-object p2, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$1;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 34
    .line 35
    invoke-direct {p1, p2}, Lconfig/ConfigUtil;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lconfig/ConfigUtil;->isUDP()Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$1;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/tknetwork/tunnel/activities/ActivityUi;->stopUdp()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$1;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돴듬딜둥듸딃딻둬뒐뎡듰듽땪둑둠땱돰땜땀뎬뎽듌땟딀따땍돸땐땋뒛땣땥돠뎡둔돷든둘득땥됨딌뎬땁된땠딐딠뎡땻돼땜뒤땜뎻둠뒐땣딨딄뒹둥된된땝뎻땻됩딞땣뒝돰뎽땋듔듬땠듼둥두돷디드둘딎뎨뒾돳둘땪둡딤따뒵딨들딸딠돳딀뒀든딁듼돠땩됐땥땬땫딽되뒾땰듻드땯듰땳딀땰땝땤땥뒀드딹딌뎡돴(Lcom/tknetwork/tunnel/activities/ActivityUi;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_0
    return-void

    .line 60
    nop

    .line 61
    :array_0
    .array-data 8
        0x4a6fe2ec60263a1L    # 3.0200066934718705E-286
        0x24e8679cf8bff2f8L    # 6.876478054110752E-131
        0x3170695adfca2611L    # 1.486176655089393E-70
    .end array-data
.end method
