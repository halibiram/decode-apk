.class final Landroidx/camera/core/impl/AutoValue_StreamSpec;
.super Landroidx/camera/core/impl/StreamSpec;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;
    }
.end annotation


# instance fields
.field private final dynamicRange:Landroidx/camera/core/DynamicRange;

.field private final expectedFrameRateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final implementationOptions:Landroidx/camera/core/impl/Config;

.field private final resolution:Landroid/util/Size;

.field private final zslDisabled:Z


# direct methods
.method private constructor <init>(Landroid/util/Size;Landroidx/camera/core/DynamicRange;Landroid/util/Range;Landroidx/camera/core/impl/Config;Z)V
    .locals 0
    .param p4    # Landroidx/camera/core/impl/Config;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            "Landroidx/camera/core/DynamicRange;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/camera/core/impl/Config;",
            "Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Landroidx/camera/core/impl/StreamSpec;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec;->resolution:Landroid/util/Size;

    .line 4
    iput-object p2, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec;->dynamicRange:Landroidx/camera/core/DynamicRange;

    .line 5
    iput-object p3, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec;->expectedFrameRateRange:Landroid/util/Range;

    .line 6
    iput-object p4, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec;->implementationOptions:Landroidx/camera/core/impl/Config;

    .line 7
    iput-boolean p5, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec;->zslDisabled:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/util/Size;Landroidx/camera/core/DynamicRange;Landroid/util/Range;Landroidx/camera/core/impl/Config;ZLandroidx/camera/core/impl/AutoValue_StreamSpec$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroidx/camera/core/impl/AutoValue_StreamSpec;-><init>(Landroid/util/Size;Landroidx/camera/core/DynamicRange;Landroid/util/Range;Landroidx/camera/core/impl/Config;Z)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/camera/core/impl/StreamSpec;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    check-cast p1, Landroidx/camera/core/impl/StreamSpec;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec;->resolution:Landroid/util/Size;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/camera/core/impl/StreamSpec;->getResolution()Landroid/util/Size;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v1, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec;->dynamicRange:Landroidx/camera/core/DynamicRange;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/camera/core/impl/StreamSpec;->getDynamicRange()Landroidx/camera/core/DynamicRange;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v1, v3}, Landroidx/camera/core/DynamicRange;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec;->expectedFrameRateRange:Landroid/util/Range;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/camera/core/impl/StreamSpec;->getExpectedFrameRateRange()Landroid/util/Range;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v1, v3}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec;->implementationOptions:Landroidx/camera/core/impl/Config;

    .line 49
    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    invoke-virtual {p1}, Landroidx/camera/core/impl/StreamSpec;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p1}, Landroidx/camera/core/impl/StreamSpec;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    :goto_0
    iget-boolean v1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec;->zslDisabled:Z

    .line 70
    .line 71
    invoke-virtual {p1}, Landroidx/camera/core/impl/StreamSpec;->getZslDisabled()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-ne v1, p1, :cond_2

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    const/4 v0, 0x0

    .line 79
    :goto_1
    return v0

    .line 80
    :cond_3
    return v2
.end method

.method public getDynamicRange()Landroidx/camera/core/DynamicRange;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec;->dynamicRange:Landroidx/camera/core/DynamicRange;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExpectedFrameRateRange()Landroid/util/Range;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec;->expectedFrameRateRange:Landroid/util/Range;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImplementationOptions()Landroidx/camera/core/impl/Config;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec;->implementationOptions:Landroidx/camera/core/impl/Config;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResolution()Landroid/util/Size;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec;->resolution:Landroid/util/Size;

    .line 2
    .line 3
    return-object v0
.end method

.method public getZslDisabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec;->zslDisabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec;->resolution:Landroid/util/Size;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/Size;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0xf4243

    .line 8
    .line 9
    .line 10
    xor-int/2addr v0, v1

    .line 11
    mul-int v0, v0, v1

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec;->dynamicRange:Landroidx/camera/core/DynamicRange;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroidx/camera/core/DynamicRange;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    xor-int/2addr v0, v2

    .line 20
    mul-int v0, v0, v1

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec;->expectedFrameRateRange:Landroid/util/Range;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/util/Range;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    xor-int/2addr v0, v2

    .line 29
    mul-int v0, v0, v1

    .line 30
    .line 31
    iget-object v2, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec;->implementationOptions:Landroidx/camera/core/impl/Config;

    .line 32
    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    :goto_0
    xor-int/2addr v0, v2

    .line 42
    mul-int v0, v0, v1

    .line 43
    .line 44
    iget-boolean v1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec;->zslDisabled:Z

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    const/16 v1, 0x4cf

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/16 v1, 0x4d5

    .line 52
    .line 53
    :goto_1
    xor-int/2addr v0, v1

    .line 54
    return v0
.end method

.method public toBuilder()Landroidx/camera/core/impl/StreamSpec$Builder;
    .locals 2

    .line 1
    new-instance v0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;-><init>(Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/AutoValue_StreamSpec$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "StreamSpec{resolution="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec;->resolution:Landroid/util/Size;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", dynamicRange="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec;->dynamicRange:Landroidx/camera/core/DynamicRange;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", expectedFrameRateRange="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec;->expectedFrameRateRange:Landroid/util/Range;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", implementationOptions="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec;->implementationOptions:Landroidx/camera/core/impl/Config;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", zslDisabled="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec;->zslDisabled:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, "}"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method
