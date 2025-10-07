.class final Landroidx/camera/core/ImageReaderFormatRecommender;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/ImageReaderFormatRecommender$FormatCombo;
    }
.end annotation


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

.method public static chooseCombo()Landroidx/camera/core/ImageReaderFormatRecommender$FormatCombo;
    .locals 2

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    const/16 v1, 0x23

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/camera/core/ImageReaderFormatRecommender$FormatCombo;->create(II)Landroidx/camera/core/ImageReaderFormatRecommender$FormatCombo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
