.class public final Landroidx/core/view/WindowInsetsCompat$Type;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/WindowInsetsCompat$Type$InsetsType;
    }
.end annotation


# static fields
.field static final CAPTION_BAR:I = 0x4

.field static final DISPLAY_CUTOUT:I = 0x80

.field static final FIRST:I = 0x1

.field static final IME:I = 0x8

.field static final LAST:I = 0x200

.field static final MANDATORY_SYSTEM_GESTURES:I = 0x20

.field static final NAVIGATION_BARS:I = 0x2

.field static final SIZE:I = 0xa

.field static final STATUS_BARS:I = 0x1

.field static final SYSTEM_GESTURES:I = 0x10

.field static final SYSTEM_OVERLAYS:I = 0x200

.field static final TAPPABLE_ELEMENT:I = 0x40

.field static final WINDOW_DECOR:I = 0x100


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static all()I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, -0x1

    return v0
.end method

.method public static captionBar()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static displayCutout()I
    .locals 1

    const/16 v0, 0x80

    return v0
.end method

.method public static ime()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static indexOf(I)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_9

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p0, v1, :cond_8

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p0, v0, :cond_7

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    if-eq p0, v1, :cond_6

    .line 13
    .line 14
    const/16 v2, 0x10

    .line 15
    .line 16
    if-eq p0, v2, :cond_5

    .line 17
    .line 18
    const/16 v0, 0x20

    .line 19
    .line 20
    if-eq p0, v0, :cond_4

    .line 21
    .line 22
    const/16 v0, 0x40

    .line 23
    .line 24
    if-eq p0, v0, :cond_3

    .line 25
    .line 26
    const/16 v0, 0x80

    .line 27
    .line 28
    if-eq p0, v0, :cond_2

    .line 29
    .line 30
    const/16 v0, 0x100

    .line 31
    .line 32
    if-eq p0, v0, :cond_1

    .line 33
    .line 34
    const/16 v0, 0x200

    .line 35
    .line 36
    if-ne p0, v0, :cond_0

    .line 37
    .line 38
    const/16 p0, 0x9

    .line 39
    .line 40
    return p0

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string v1, "type needs to be >= FIRST and <= LAST, type="

    .line 44
    .line 45
    invoke-static {p0, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(ILjava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_1
    return v1

    .line 54
    :cond_2
    const/4 p0, 0x7

    .line 55
    return p0

    .line 56
    :cond_3
    const/4 p0, 0x6

    .line 57
    return p0

    .line 58
    :cond_4
    const/4 p0, 0x5

    .line 59
    return p0

    .line 60
    :cond_5
    return v0

    .line 61
    :cond_6
    const/4 p0, 0x3

    .line 62
    return p0

    .line 63
    :cond_7
    return v1

    .line 64
    :cond_8
    return v0

    .line 65
    :cond_9
    const/4 p0, 0x0

    .line 66
    return p0
.end method

.method public static mandatorySystemGestures()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public static navigationBars()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static statusBars()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static systemBars()I
    .locals 1

    const/16 v0, 0x207

    return v0
.end method

.method public static systemGestures()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public static systemOverlays()I
    .locals 1

    const/16 v0, 0x200

    return v0
.end method

.method public static tappableElement()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method
