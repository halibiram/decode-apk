.class public Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final rangeSelector:Lcom/airbnb/lottie/model/animatable/AnimatableTextRangeSelector;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final textStyle:Lcom/airbnb/lottie/model/animatable/AnimatableTextStyle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/animatable/AnimatableTextStyle;Lcom/airbnb/lottie/model/animatable/AnimatableTextRangeSelector;)V
    .locals 0
    .param p1    # Lcom/airbnb/lottie/model/animatable/AnimatableTextStyle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/airbnb/lottie/model/animatable/AnimatableTextRangeSelector;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->textStyle:Lcom/airbnb/lottie/model/animatable/AnimatableTextStyle;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->rangeSelector:Lcom/airbnb/lottie/model/animatable/AnimatableTextRangeSelector;

    .line 7
    .line 8
    return-void
.end method
