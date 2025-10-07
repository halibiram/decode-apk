.class Lcom/tknetwork/tunnel/activities/ActivityUi$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tknetwork/tunnel/activities/ActivityUi;->showTelegramGroupDialog()V
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
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$4;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$4;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돰듟딁뒨딅듸땱땹딀딠뒐돝둡땬땰땫땟뒛따딜둣듨딄돷땲둑땵뎽땍뎽땜땹뒹땹딸땣듬듼도둥뒻둬도딸딟뒝땻땥땐땄둑듰땮두듸뒻뒘뒵뎰됩땃뒀땨뒨땻땭뒛딸듻따땪땹돰돸뒵딨듬땱둘땪둘듬돸뒨딟듬땅땸땸딅뒙둥딝땯땫딎돤땦뒹됴뒝땯땀둥듨뒻땯딌뎽둥뒛될뒼뒻됐된돰뎸든뎡땀딻땻돛듬돝땬뎨뒵뎸(Lcom/tknetwork/tunnel/activities/ActivityUi;)Landroid/content/SharedPreferences$Editor;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    new-array v1, v1, [J

    .line 11
    .line 12
    fill-array-data v1, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 28
    .line 29
    .line 30
    iget-object p2, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$4;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 31
    .line 32
    new-instance v0, Landroid/content/Intent;

    .line 33
    .line 34
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 v2, 0x5

    .line 37
    new-array v2, v2, [J

    .line 38
    .line 39
    fill-array-data v2, :array_1

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    const/4 v3, 0x4

    .line 52
    new-array v3, v3, [J

    .line 53
    .line 54
    fill-array-data v3, :array_2

    .line 55
    .line 56
    .line 57
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    nop

    .line 79
    :array_0
    .array-data 8
        -0x2944a98b8e12414L    # -1.415730049531689E296
        0x6f3f9f264b989a36L    # 7.491032004306276E227
        -0x54cb82014149156L
    .end array-data

    .line 80
    .line 81
    .line 82
    :array_1
    .array-data 8
        0x5c9329932277f0d5L    # 8.913904223432339E137
        0x4e50f7f884a4dccL
        0x27ca12e420685976L
        -0x46529c32803fd918L    # -7.245158487232992E-31
        0x7752b1c5f15bef08L    # 6.027931728991137E266
    .end array-data

    :array_2
    .array-data 8
        -0x4cec79f874c159c5L    # -1.186478185325664E-62
        -0xbb5961560ef1dbbL
        -0x9546543d2a4e4eaL    # -4.346153569548383E263
        0x7117f1abd0cd9510L    # 6.090512235347279E236
    .end array-data
.end method
