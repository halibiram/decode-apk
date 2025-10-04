.class public Lcom/airbnb/lottie/model/animatable/AnimatableTextRangeSelector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final end:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final offset:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final start:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final units:Lcom/airbnb/lottie/model/content/TextRangeUnits;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/content/TextRangeUnits;)V
    .locals 0
    .param p1    # Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTextRangeSelector;->start:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTextRangeSelector;->end:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTextRangeSelector;->offset:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTextRangeSelector;->units:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    .line 11
    .line 12
    return-void
.end method
