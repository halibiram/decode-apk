.class public Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;
.super Landroid/util/Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/circularreveal/CircularRevealWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CircularRevealScrimColorProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/google/android/material/circularreveal/CircularRevealWidget;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final CIRCULAR_REVEAL_SCRIM_COLOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/circularreveal/CircularRevealWidget;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;

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
    invoke-direct {v0, v1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Landroid/util/Property;

    .line 22
    .line 23
    return-void

    .line 24
    nop

    :array_0
    .array-data 8
        0x2dc276a0b7c548faL    # 2.900432208260973E-88
        -0x2c2e8d4462fa6d25L    # -5.823293146940253E95
        0x4a1e8936c35c7f15L    # 1.1157100528535332E49
        -0x6897cafa1787b36cL    # -6.476732787794235E-196
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-class v0, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public get(Lcom/google/android/material/circularreveal/CircularRevealWidget;)Ljava/lang/Integer;
    .locals 0
    .param p1    # Lcom/google/android/material/circularreveal/CircularRevealWidget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-interface {p1}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->getCircularRevealScrimColor()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    invoke-virtual {p0, p1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->get(Lcom/google/android/material/circularreveal/CircularRevealWidget;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/google/android/material/circularreveal/CircularRevealWidget;Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Lcom/google/android/material/circularreveal/CircularRevealWidget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->setCircularRevealScrimColor(I)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->set(Lcom/google/android/material/circularreveal/CircularRevealWidget;Ljava/lang/Integer;)V

    return-void
.end method
