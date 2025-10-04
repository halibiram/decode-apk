.class public final Lcom/v2ray/ang/helper/SimpleItemTouchHelperCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/v2ray/ang/helper/SimpleItemTouchHelperCallback$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000b\u0018\u0000 %2\u00020\u0001:\u0001%B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\tH\u0016J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J \u0010\u0011\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0010H\u0016J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u000cH\u0016J@\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u000c2\u0006\u0010\u001e\u001a\u00020\tH\u0016J\u0010\u0010\u001f\u001a\u00020\u00152\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u001a\u0010 \u001a\u00020\u00152\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u001d\u001a\u00020\u000cH\u0016J\u0018\u0010!\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\"\u001a\u00020\u001b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010#\u001a\u00020\u001b2\u0006\u0010$\u001a\u00020\u001bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/v2ray/ang/helper/SimpleItemTouchHelperCallback;",
        "Landroidx/recyclerview/widget/ItemTouchHelper$Callback;",
        "mAdapter",
        "Lcom/v2ray/ang/helper/ItemTouchHelperAdapter;",
        "<init>",
        "(Lcom/v2ray/ang/helper/ItemTouchHelperAdapter;)V",
        "mReturnAnimator",
        "Landroid/animation/ValueAnimator;",
        "isLongPressDragEnabled",
        "",
        "isItemViewSwipeEnabled",
        "getMovementFlags",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "viewHolder",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "onMove",
        "source",
        "target",
        "onSwiped",
        "",
        "direction",
        "onChildDraw",
        "c",
        "Landroid/graphics/Canvas;",
        "dX",
        "",
        "dY",
        "actionState",
        "isCurrentlyActive",
        "returnViewToOriginalPosition",
        "onSelectedChanged",
        "clearView",
        "getSwipeThreshold",
        "getSwipeEscapeVelocity",
        "defaultValue",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSimpleItemTouchHelperCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SimpleItemTouchHelperCallback.kt\ncom/v2ray/ang/helper/SimpleItemTouchHelperCallback\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,148:1\n1#2:149\n*E\n"
    }
.end annotation


# static fields
.field private static final ALPHA_FULL:F = 1.0f

.field private static final ANIMATION_DURATION:J = 0xc8L

.field public static final Companion:Lcom/v2ray/ang/helper/SimpleItemTouchHelperCallback$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SWIPE_THRESHOLD:F = 0.25f


# instance fields
.field private final mAdapter:Lcom/v2ray/ang/helper/ItemTouchHelperAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mReturnAnimator:Landroid/animation/ValueAnimator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/v2ray/ang/helper/SimpleItemTouchHelperCallback$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/v2ray/ang/helper/SimpleItemTouchHelperCallback$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/v2ray/ang/helper/SimpleItemTouchHelperCallback;->Companion:Lcom/v2ray/ang/helper/SimpleItemTouchHelperCallback$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/v2ray/ang/helper/ItemTouchHelperAdapter;)V
    .locals 2
    .param p1    # Lcom/v2ray/ang/helper/ItemTouchHelperAdapter;
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
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/v2ray/ang/helper/SimpleItemTouchHelperCallback;->mAdapter:Lcom/v2ray/ang/helper/ItemTouchHelperAdapter;

    .line 23
    .line 24
    return-void

    .line 25
    :array_0
    .array-data 8
        0x4be7ff0a06c5af2dL    # 4.7070900645038106E57
        0x25ac5c135a4a1094L    # 3.273052868436658E-127
    .end array-data
.end method

.method private final returnViewToOriginalPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/helper/SimpleItemTouchHelperCallback;->mReturnAnimator:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x2

    .line 25
    new-array v1, v1, [F

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    aput v0, v1, v2

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    const/4 v2, 0x1

    .line 32
    aput v0, v1, v2

    .line 33
    .line 34
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, L뒐딅땍땔딀땤땳뒙뒋디뒹땝땵뎽듌땅뒉들뒘딞딻드둬뒛딅돛둡듌됴돳땸둬됐딠땭땝뒘딃땫땲땀땀듨돠듬드땱딜땧딞듬들돝땨디됐딨땬땟들뒝된돰땪돛뒬돸도뎨땋될딟뎨뎡땭땍둣딸딎듽듐둑땔듐뎸돶딁듼땣될땵땱된딞땠땫될땣뒋땲딜땲땅듸땠돠딅듸뒹딽둘뒾뒀뎹돶뒹뎽듸땨됩돰돳둥딝뒬돛뒛됫딌땤;

    .line 39
    .line 40
    const/4 v2, 0x4

    .line 41
    invoke-direct {v1, p1, v2}, L뒐딅땍땔딀땤땳뒙뒋디뒹땝땵뎽듌땅뒉들뒘딞딻드둬뒛딅돛둡듌됴돳땸둬됐딠땭땝뒘딃땫땲땀땀듨돠듬드땱딜땧딞듬들돝땨디됐딨땬땟들뒝된돰땪돛뒬돸도뎨땋될딟뎨뎡땭땍둣딸딎듽듐둑땔듐뎸돶딁듼땣될땵땱된딞땠땫될땣뒋땲딜땲땅듸땠돠딅듸뒹딽둘뒾뒀뎹돶뒹뎽듸땨됩돰돳둥딝뒬돛뒛됫딌땤;-><init>(Ljava/lang/Object;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 45
    .line 46
    .line 47
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    .line 48
    .line 49
    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 53
    .line 54
    .line 55
    const-wide/16 v1, 0xc8

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/v2ray/ang/helper/SimpleItemTouchHelperCallback;->mReturnAnimator:Landroid/animation/ValueAnimator;

    .line 64
    .line 65
    return-void
.end method

.method private static final returnViewToOriginalPosition$lambda$2$lambda$1(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/animation/ValueAnimator;)V
    .locals 2

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
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/16 v1, 0x8

    .line 26
    .line 27
    new-array v1, v1, [J

    .line 28
    .line 29
    fill-array-data v1, :array_1

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    check-cast p1, Ljava/lang/Float;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 54
    .line 55
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    int-to-float p0, p0

    .line 66
    const/high16 v1, 0x3e800000    # 0.25f

    .line 67
    .line 68
    mul-float p0, p0, v1

    .line 69
    .line 70
    div-float/2addr p1, p0

    .line 71
    const/high16 p0, 0x3f800000    # 1.0f

    .line 72
    .line 73
    sub-float/2addr p0, p1

    .line 74
    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    nop

    .line 79
    :array_0
    .array-data 8
        -0x24534697aab4305eL    # -4.0777140533213796E133
        -0x741539113e0e0c9fL
        0x21558296a8812a98L
    .end array-data

    .line 80
    .line 81
    .line 82
    :array_1
    .array-data 8
        0x2c976486b9e82159L    # 7.009085464357844E-94
        -0x4a357f2eaf14c2fbL    # -1.4167360277505797E-49
        -0x64f65a750dfe964L
        0x7386cabf6b4dcfb5L    # 3.187194436242916E248
        -0x76857cb025620be6L    # -5.262373169716508E-263
        -0x1d5a3b647966314eL    # -1.6045235747186878E167
        -0x20cf074030688195L    # -3.472182965274353E150
        0x6c66b4dc734a967cL    # 1.5288219771377466E214
    .end array-data
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/v2ray/ang/helper/SimpleItemTouchHelperCallback;->returnViewToOriginalPosition$lambda$2$lambda$1(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 40
    .line 41
    const/high16 v0, 0x3f800000    # 1.0f

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 44
    .line 45
    .line 46
    instance-of p1, p2, Lcom/v2ray/ang/helper/ItemTouchHelperViewHolder;

    .line 47
    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    check-cast p2, Lcom/v2ray/ang/helper/ItemTouchHelperViewHolder;

    .line 51
    .line 52
    invoke-interface {p2}, Lcom/v2ray/ang/helper/ItemTouchHelperViewHolder;->onItemClear()V

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object p1, p0, Lcom/v2ray/ang/helper/SimpleItemTouchHelperCallback;->mAdapter:Lcom/v2ray/ang/helper/ItemTouchHelperAdapter;

    .line 56
    .line 57
    invoke-interface {p1}, Lcom/v2ray/ang/helper/ItemTouchHelperAdapter;->onItemMoveCompleted()V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :array_0
    .array-data 8
        0x30c08c4e29dc56c0L    # 7.317089369656769E-74
        -0x47d706d60b05861L    # -8.832086264113638E286
        0x2aae00c0b129d11aL
    .end array-data

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
    .line 76
    .line 77
    :array_1
    .array-data 8
        -0xa7bbb79a802d6e7L    # -1.217279284478201E258
        0x50d15caea3fcb360L    # 2.058636146985737E81
        -0x11ab60bd88333046L    # -2.981740583285425E223
    .end array-data
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    new-array v2, v1, [J

    .line 22
    .line 23
    fill-array-data v2, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

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
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    instance-of p1, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    const/16 v1, 0xf

    .line 45
    .line 46
    :cond_0
    const/16 p1, 0x30

    .line 47
    .line 48
    invoke-static {v1, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    return p1

    .line 53
    :array_0
    .array-data 8
        -0x39e2f0198c51d9a4L    # -5.756343968210351E29
        -0x2359fadfa42d5cfeL    # -2.048640881036025E138
        0x54e09e8ef108e0a7L    # 7.270145209646005E100
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
    :array_1
    .array-data 8
        -0x77ada426eba3a574L    # -1.390041352982147E-268
        0x2e573b15fc8acf1aL    # 1.868467229077385E-85
        -0x171b8e56772e00dfL    # -1.9102618560614672E197
    .end array-data
.end method

.method public getSwipeEscapeVelocity(F)F
    .locals 1

    const/16 v0, 0xa

    int-to-float v0, v0

    mul-float p1, p1, v0

    return p1
.end method

.method public getSwipeThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x3f8ccccd    # 1.1f

    return p1

    :array_0
    .array-data 8
        -0x487ef7111385c93dL    # -2.444387652203924E-41
        -0x16edeac832047faL    # -4.588783874386522E301
        -0x430cd27e9abc0abcL    # -4.258317181023076E-15
    .end array-data
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
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
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    new-array v1, v1, [J

    .line 40
    .line 41
    fill-array-data v1, :array_2

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    if-ne p6, v0, :cond_0

    .line 56
    .line 57
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    int-to-float p1, p1

    .line 64
    const/high16 p2, 0x3e800000    # 0.25f

    .line 65
    .line 66
    mul-float p1, p1, p2

    .line 67
    .line 68
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    invoke-static {p4}, Ljava/lang/Math;->signum(F)F

    .line 73
    .line 74
    .line 75
    move-result p4

    .line 76
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    .line 77
    .line 78
    .line 79
    move-result p5

    .line 80
    mul-float p5, p5, p4

    .line 81
    .line 82
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    .line 83
    .line 84
    .line 85
    move-result p4

    .line 86
    div-float/2addr p4, p1

    .line 87
    const/high16 p6, 0x3f800000    # 1.0f

    .line 88
    .line 89
    sub-float/2addr p6, p4

    .line 90
    iget-object p4, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 91
    .line 92
    invoke-virtual {p4, p5}, Landroid/view/View;->setTranslationX(F)V

    .line 93
    .line 94
    .line 95
    iget-object p4, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 96
    .line 97
    invoke-virtual {p4, p6}, Landroid/view/View;->setAlpha(F)V

    .line 98
    .line 99
    .line 100
    cmpl-float p1, p2, p1

    .line 101
    .line 102
    if-ltz p1, :cond_1

    .line 103
    .line 104
    if-eqz p7, :cond_1

    .line 105
    .line 106
    invoke-direct {p0, p3}, Lcom/v2ray/ang/helper/SimpleItemTouchHelperCallback;->returnViewToOriginalPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_0
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 111
    .line 112
    .line 113
    :cond_1
    :goto_0
    return-void

    .line 114
    nop

    .line 115
    :array_0
    .array-data 8
        0x2a0165c7750e0158L    # 2.37050158390294E-106
        -0x7f8d9ce0ae816bbL
    .end array-data

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
    .line 126
    .line 127
    :array_1
    .array-data 8
        -0x61af656df44ac981L    # -1.153319427429428E-162
        -0x50736758218bdc6aL    # -1.2058719041491454E-79
        -0x51d5a53031b282a4L    # -2.649658354613743E-86
    .end array-data

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
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :array_2
    .array-data 8
        -0x789a26780d8ed97L    # -1.8905005566399967E272
        0x2143e38a79ad50abL    # 1.944291687517348E-148
        0x27a5c7c48e2dce8L
    .end array-data
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

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
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    new-array v1, v0, [J

    .line 23
    .line 24
    fill-array-data v1, :array_1

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    new-array v0, v0, [J

    .line 40
    .line 41
    fill-array-data v0, :array_2

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eq p1, v0, :cond_0

    .line 63
    .line 64
    const/4 p1, 0x0

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/v2ray/ang/helper/SimpleItemTouchHelperCallback;->mAdapter:Lcom/v2ray/ang/helper/ItemTouchHelperAdapter;

    .line 67
    .line 68
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    invoke-interface {p1, p2, p3}, Lcom/v2ray/ang/helper/ItemTouchHelperAdapter;->onItemMove(II)Z

    .line 77
    .line 78
    .line 79
    const/4 p1, 0x1

    .line 80
    :goto_0
    return p1

    .line 81
    :array_0
    .array-data 8
        0x2116e879d95a2376L
        -0x6d350f5770715d7bL    # -3.815855364335324E-218
        0xf2597e54415ee6L
    .end array-data

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
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    :array_1
    .array-data 8
        -0x3edc2e16297f38beL    # -649460.9189512508
        -0x608e8fb170af3000L    # -3.175384692892557E-157
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
    :array_2
    .array-data 8
        0x74bf270f4b2b6d25L    # 2.283969696593681E254
        -0x6c868ed7fb937feL    # -8.167446664426438E275
    .end array-data
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    instance-of v0, p1, Lcom/v2ray/ang/helper/ItemTouchHelperViewHolder;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Lcom/v2ray/ang/helper/ItemTouchHelperViewHolder;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/v2ray/ang/helper/ItemTouchHelperViewHolder;->onItemSelected()V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    new-array v0, v0, [J

    .line 5
    .line 6
    fill-array-data v0, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/v2ray/ang/helper/SimpleItemTouchHelperCallback;->returnViewToOriginalPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :array_0
    .array-data 8
        -0x1295a50071b3b1acL    # -1.1629405078046081E219
        -0xb8dbea27c23808dL    # -8.365003725661514E252
        -0x24510215cc1a5834L
    .end array-data
.end method
