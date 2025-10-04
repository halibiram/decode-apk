.class public final Landroidx/camera/core/resolutionselector/AspectRatioStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/resolutionselector/AspectRatioStrategy$AspectRatioFallbackRule;
    }
.end annotation


# static fields
.field public static final FALLBACK_RULE_AUTO:I = 0x1

.field public static final FALLBACK_RULE_NONE:I

.field public static final RATIO_16_9_FALLBACK_AUTO_STRATEGY:Landroidx/camera/core/resolutionselector/AspectRatioStrategy;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final RATIO_4_3_FALLBACK_AUTO_STRATEGY:Landroidx/camera/core/resolutionselector/AspectRatioStrategy;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private final mFallbackRule:I

.field private final mPreferredAspectRatio:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v1, v2}, Landroidx/camera/core/resolutionselector/AspectRatioStrategy;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/camera/core/resolutionselector/AspectRatioStrategy;->RATIO_4_3_FALLBACK_AUTO_STRATEGY:Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

    .line 9
    .line 10
    new-instance v0, Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

    .line 11
    .line 12
    invoke-direct {v0, v2, v2}, Landroidx/camera/core/resolutionselector/AspectRatioStrategy;-><init>(II)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroidx/camera/core/resolutionselector/AspectRatioStrategy;->RATIO_16_9_FALLBACK_AUTO_STRATEGY:Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/camera/core/resolutionselector/AspectRatioStrategy;->mPreferredAspectRatio:I

    .line 5
    .line 6
    iput p2, p0, Landroidx/camera/core/resolutionselector/AspectRatioStrategy;->mFallbackRule:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getFallbackRule()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/resolutionselector/AspectRatioStrategy;->mFallbackRule:I

    .line 2
    .line 3
    return v0
.end method

.method public getPreferredAspectRatio()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/resolutionselector/AspectRatioStrategy;->mPreferredAspectRatio:I

    .line 2
    .line 3
    return v0
.end method
