.class final Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$InputConfigurationCompatBaseImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$InputConfigurationCompatImpl;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputConfigurationCompatBaseImpl"
.end annotation


# instance fields
.field private final mFormat:I

.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$InputConfigurationCompatBaseImpl;->mWidth:I

    .line 5
    .line 6
    iput p2, p0, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$InputConfigurationCompatBaseImpl;->mHeight:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$InputConfigurationCompatBaseImpl;->mFormat:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$InputConfigurationCompatBaseImpl;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$InputConfigurationCompatBaseImpl;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$InputConfigurationCompatBaseImpl;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v2, p0, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$InputConfigurationCompatBaseImpl;->mWidth:I

    .line 14
    .line 15
    if-ne v0, v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$InputConfigurationCompatBaseImpl;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget v2, p0, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$InputConfigurationCompatBaseImpl;->mHeight:I

    .line 22
    .line 23
    if-ne v0, v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$InputConfigurationCompatBaseImpl;->getFormat()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iget v0, p0, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$InputConfigurationCompatBaseImpl;->mFormat:I

    .line 30
    .line 31
    if-ne p1, v0, :cond_1

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    :cond_1
    return v1
.end method

.method public getFormat()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$InputConfigurationCompatBaseImpl;->mFormat:I

    .line 2
    .line 3
    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$InputConfigurationCompatBaseImpl;->mHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public getInputConfiguration()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$InputConfigurationCompatBaseImpl;->mWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    const/16 v0, 0x1f

    .line 2
    .line 3
    iget v1, p0, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$InputConfigurationCompatBaseImpl;->mWidth:I

    .line 4
    .line 5
    xor-int/2addr v0, v1

    .line 6
    shl-int/lit8 v1, v0, 0x5

    .line 7
    .line 8
    sub-int/2addr v1, v0

    .line 9
    iget v0, p0, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$InputConfigurationCompatBaseImpl;->mHeight:I

    .line 10
    .line 11
    xor-int/2addr v0, v1

    .line 12
    shl-int/lit8 v1, v0, 0x5

    .line 13
    .line 14
    sub-int/2addr v1, v0

    .line 15
    iget v0, p0, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$InputConfigurationCompatBaseImpl;->mFormat:I

    .line 16
    .line 17
    xor-int/2addr v0, v1

    .line 18
    return v0
.end method

.method public isMultiResolution()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$InputConfigurationCompatBaseImpl;->mWidth:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$InputConfigurationCompatBaseImpl;->mHeight:I

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Landroidx/camera/camera2/internal/compat/params/InputConfigurationCompat$InputConfigurationCompatBaseImpl;->mFormat:I

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x3

    .line 20
    new-array v3, v3, [Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    aput-object v0, v3, v4

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    aput-object v1, v3, v0

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    aput-object v2, v3, v0

    .line 30
    .line 31
    const-string v0, "InputConfiguration(w:%d, h:%d, format:%d)"

    .line 32
    .line 33
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method
