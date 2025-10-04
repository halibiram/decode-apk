.class Lcom/tknetwork/tunnel/utils/gen$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tknetwork/tunnel/utils/gen;->generatorView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tknetwork/tunnel/utils/gen;


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/utils/gen;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/utils/gen$8;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/gen$8;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/tknetwork/tunnel/utils/gen;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/tknetwork/tunnel/utils/gen;)Lcom/google/android/material/textfield/TextInputEditText;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    new-array v0, v0, [J

    .line 13
    .line 14
    fill-array-data v0, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/gen$8;->this$0:Lcom/tknetwork/tunnel/utils/gen;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/tknetwork/tunnel/utils/gen;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/tknetwork/tunnel/utils/gen;)Lcom/google/android/material/textfield/TextInputEditText;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 v0, 0x3

    .line 37
    new-array v0, v0, [J

    .line 38
    .line 39
    fill-array-data v0, :array_1

    .line 40
    .line 41
    .line 42
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void

    .line 53
    :array_0
    .array-data 8
        -0x30ca1cf325cdd7c5L    # -3.8670831279140573E73
        -0x4fa2811b4d579846L    # -1.0189185581509437E-75
        -0x795674e8a457793cL
        0x3df73044e808f90cL
    .end array-data

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
    :array_1
    .array-data 8
        -0x52d4661a067bc3cfL    # -4.2342718945719657E-91
        0x43cd65c0ff3b1152L    # 4.2366228043757414E18
        0x3e3eec3681d829f0L
    .end array-data
.end method
