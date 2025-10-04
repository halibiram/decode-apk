.class public final Landroidx/core/view/ViewGroupCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ViewGroupCompat$Api21Impl;
    }
.end annotation


# static fields
.field private static final CONSUMED:Landroid/view/WindowInsets;

.field public static final LAYOUT_MODE_CLIP_BOUNDS:I = 0x0

.field public static final LAYOUT_MODE_OPTICAL_BOUNDS:I = 0x1

.field static sCompatInsetsDispatchInstalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/core/view/ViewGroupCompat;->CONSUMED:Landroid/view/WindowInsets;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    sput-boolean v0, Landroidx/core/view/ViewGroupCompat;->sCompatInsetsDispatchInstalled:Z

    .line 11
    .line 12
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

.method public static dispatchApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    .line 1
    sget v0, Landroidx/core/R$id;->tag_on_apply_window_listener:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Landroidx/core/R$id;->tag_window_insets_animation_callback:I

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    instance-of v2, v0, Landroid/view/View$OnApplyWindowInsetsListener;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    check-cast v0, Landroid/view/View$OnApplyWindowInsetsListener;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    instance-of v0, v1, Landroid/view/View$OnApplyWindowInsetsListener;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    move-object v0, v1

    .line 25
    check-cast v0, Landroid/view/View$OnApplyWindowInsetsListener;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    :goto_0
    const/4 v1, 0x1

    .line 30
    new-array v1, v1, [Landroid/view/WindowInsets;

    .line 31
    .line 32
    new-instance v2, L땱딄뒹뎬뒋돝딃딨딄뒬땀딸될듐딹딹땋됨들뒈뒐뒤뒋듻듬딠딠딀따땭돤딀뒨딜뎽듸됴뎹되딐뒼들돴뎻뎰뒛돠뒷뒹땬돵땋둑듽딸뒤딃돤듌뎰땪듽땔득뒤딝돛땣돴딃따득뎻둔둡돴땤땐돰돼딄둡땵땋딝뒤드땃뒬땹딹듨땔딁딽땃됴된돤듸땃땵딹땯뒾땲뎬둑듟땵땱뒉땤뎸뒨땲땤뎠뒐돳땔듰땐땱듌땨땁듰땅딃;

    .line 33
    .line 34
    invoke-direct {v2, v1, v0}, L땱딄뒹뎬뒋돝딃딨딄뒬땀딸될듐딹딹땋됨들뒈뒐뒤뒋듻듬딠딠딀따땭돤딀뒨딜뎽듸됴뎹되딐뒼들돴뎻뎰뒛돠뒷뒹땬돵땋둑듽딸뒤딃돤듌뎰땪듽땔득뒤딝돛땣돴딃따득뎻둔둡돴땤땐돰돼딄둡땵땋딝뒤드땃뒬땹딹듨땔딁딽땃됴된돤듸땃땵딹땯뒾땲뎬둑듟땵땱뒉땤뎸뒨땲땤뎠뒐돳땔듰땐땱듌땨땁듰땅딃;-><init>([Landroid/view/WindowInsets;Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 41
    .line 42
    .line 43
    sget p1, Landroidx/core/R$id;->tag_compat_insets_dispatch:I

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    instance-of v2, p1, Landroid/view/View$OnApplyWindowInsetsListener;

    .line 50
    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    move-object v0, p1

    .line 54
    check-cast v0, Landroid/view/View$OnApplyWindowInsetsListener;

    .line 55
    .line 56
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    aget-object v0, v1, p1

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    check-cast p0, Landroid/view/ViewGroup;

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    const/4 v2, 0x0

    .line 81
    :goto_1
    if-ge v2, v0, :cond_3

    .line 82
    .line 83
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    aget-object v4, v1, p1

    .line 88
    .line 89
    invoke-static {v3, v4}, Landroidx/core/view/ViewGroupCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 90
    .line 91
    .line 92
    add-int/lit8 v2, v2, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    aget-object p0, v1, p1

    .line 96
    .line 97
    return-object p0
.end method

.method public static getLayoutMode(Landroid/view/ViewGroup;)I
    .locals 0
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "group.getLayoutMode()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutMode()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static getNestedScrollAxes(Landroid/view/ViewGroup;)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/core/view/ViewGroupCompat$Api21Impl;->getNestedScrollAxes(Landroid/view/ViewGroup;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static installCompatInsetsDispatch(Landroid/view/View;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, L땱딞땋드딝땤딄뎽디땜딠듬뒵뒤뒵땃듽뎽뒀둬땡땧딹뒹됨돛듬딟된땱뎹됐돤뒾됩돨듻땃땱뒹됐땝땰딐뒉딟둡돶돵딠땹딅둣땡딐땫땝딸디땝땔돵뒨딠뒀뎬땱뎹뒹되뎨뎡돝들돵딎돳땵땃돨듬돷뒛돳뒬돶딻돰두땁뎻듐둘뎸딃딜땫된땳뒬듟딜뎻뒻땲땱딀뒐둔됫됫뎡땫땃딀땝듨딞뎸뒙땮돸땬땮돛되돷듐뎸돴;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sget v1, Landroidx/core/R$id;->tag_compat_insets_dispatch:I

    .line 14
    .line 15
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    sput-boolean p0, Landroidx/core/view/ViewGroupCompat;->sCompatInsetsDispatchInstalled:Z

    .line 23
    .line 24
    return-void
.end method

.method public static isTransitionGroup(Landroid/view/ViewGroup;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/core/view/ViewGroupCompat$Api21Impl;->isTransitionGroup(Landroid/view/ViewGroup;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static synthetic lambda$dispatchApplyWindowInsets$1([Landroid/view/WindowInsets;Landroid/view/View$OnApplyWindowInsetsListener;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1, p2, p3}, Landroid/view/View$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2, p3}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    const/4 p2, 0x0

    .line 13
    aput-object p1, p0, p2

    .line 14
    .line 15
    sget-object p0, Landroidx/core/view/ViewGroupCompat;->CONSUMED:Landroid/view/WindowInsets;

    .line 16
    .line 17
    return-object p0
.end method

.method private static synthetic lambda$installCompatInsetsDispatch$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/core/view/ViewGroupCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 2
    .line 3
    .line 4
    sget-object p0, Landroidx/core/view/ViewGroupCompat;->CONSUMED:Landroid/view/WindowInsets;

    .line 5
    .line 6
    return-object p0
.end method

.method public static onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "group.onRequestSendAccessibilityEvent(child, event)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static setLayoutMode(Landroid/view/ViewGroup;I)V
    .locals 0
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "group.setLayoutMode(mode)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutMode(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V
    .locals 0
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "group.setMotionEventSplittingEnabled(split)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/core/view/ViewGroupCompat$Api21Impl;->setTransitionGroup(Landroid/view/ViewGroup;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸([Landroid/view/WindowInsets;Landroid/view/View$OnApplyWindowInsetsListener;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/core/view/ViewGroupCompat;->lambda$dispatchApplyWindowInsets$1([Landroid/view/WindowInsets;Landroid/view/View$OnApplyWindowInsetsListener;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/core/view/ViewGroupCompat;->lambda$installCompatInsetsDispatch$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
