.class public Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StreamConfigurationMapCompat"


# instance fields
.field private final mCachedClassOutputSizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;[",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachedFormatHighResolutionOutputSizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachedFormatOutputSizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private final mImpl:Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;

.field private final mOutputSizesCorrector:Landroidx/camera/camera2/internal/compat/workaround/OutputSizesCorrector;


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroidx/camera/camera2/internal/compat/workaround/OutputSizesCorrector;)V
    .locals 2
    .param p1    # Landroid/hardware/camera2/params/StreamConfigurationMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/camera2/internal/compat/workaround/OutputSizesCorrector;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->mCachedFormatOutputSizes:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->mCachedFormatHighResolutionOutputSizes:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->mCachedClassOutputSizes:Ljava/util/Map;

    .line 24
    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    .line 27
    const/16 v1, 0x17

    .line 28
    .line 29
    if-lt v0, v1, :cond_0

    .line 30
    .line 31
    new-instance v0, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompatApi23Impl;

    .line 32
    .line 33
    invoke-direct {v0, p1}, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompatApi23Impl;-><init>(Landroid/hardware/camera2/params/StreamConfigurationMap;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->mImpl:Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompatBaseImpl;

    .line 40
    .line 41
    invoke-direct {v0, p1}, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompatBaseImpl;-><init>(Landroid/hardware/camera2/params/StreamConfigurationMap;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->mImpl:Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;

    .line 45
    .line 46
    :goto_0
    iput-object p2, p0, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->mOutputSizesCorrector:Landroidx/camera/camera2/internal/compat/workaround/OutputSizesCorrector;

    .line 47
    .line 48
    return-void
.end method

.method public static toStreamConfigurationMapCompat(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroidx/camera/camera2/internal/compat/workaround/OutputSizesCorrector;)Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;
    .locals 1
    .param p0    # Landroid/hardware/camera2/params/StreamConfigurationMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/camera2/internal/compat/workaround/OutputSizesCorrector;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;-><init>(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroidx/camera/camera2/internal/compat/workaround/OutputSizesCorrector;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public getHighResolutionOutputSizes(I)[Landroid/util/Size;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->mCachedFormatHighResolutionOutputSizes:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->mCachedFormatHighResolutionOutputSizes:Ljava/util/Map;

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, [Landroid/util/Size;

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->mCachedFormatHighResolutionOutputSizes:Ljava/util/Map;

    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, [Landroid/util/Size;

    .line 40
    .line 41
    invoke-virtual {p1}, [Landroid/util/Size;->clone()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    move-object v1, p1

    .line 46
    check-cast v1, [Landroid/util/Size;

    .line 47
    .line 48
    :goto_0
    return-object v1

    .line 49
    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->mImpl:Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;

    .line 50
    .line 51
    invoke-interface {v0, p1}, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    array-length v2, v0

    .line 58
    if-lez v2, :cond_2

    .line 59
    .line 60
    iget-object v2, p0, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->mOutputSizesCorrector:Landroidx/camera/camera2/internal/compat/workaround/OutputSizesCorrector;

    .line 61
    .line 62
    invoke-virtual {v2, v0, p1}, Landroidx/camera/camera2/internal/compat/workaround/OutputSizesCorrector;->applyQuirks([Landroid/util/Size;I)[Landroid/util/Size;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :cond_2
    iget-object v2, p0, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->mCachedFormatHighResolutionOutputSizes:Ljava/util/Map;

    .line 67
    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    invoke-virtual {v0}, [Landroid/util/Size;->clone()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    move-object v1, p1

    .line 82
    check-cast v1, [Landroid/util/Size;

    .line 83
    .line 84
    :cond_3
    return-object v1
.end method

.method public getOutputFormats()[I
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->mImpl:Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;->getOutputFormats()[I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, [I

    .line 16
    .line 17
    :goto_0
    return-object v0
.end method

.method public getOutputSizes(I)[Landroid/util/Size;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->mCachedFormatOutputSizes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->mCachedFormatOutputSizes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Size;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->mCachedFormatOutputSizes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/util/Size;

    invoke-virtual {p1}, [Landroid/util/Size;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/util/Size;

    :goto_0
    return-object p1

    .line 4
    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->mImpl:Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;

    invoke-interface {v0, p1}, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    array-length v1, v0

    if-nez v1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->mOutputSizesCorrector:Landroidx/camera/camera2/internal/compat/workaround/OutputSizesCorrector;

    invoke-virtual {v1, v0, p1}, Landroidx/camera/camera2/internal/compat/workaround/OutputSizesCorrector;->applyQuirks([Landroid/util/Size;I)[Landroid/util/Size;

    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->mCachedFormatOutputSizes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v0}, [Landroid/util/Size;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/util/Size;

    return-object p1

    .line 9
    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Retrieved output sizes array is null or empty for format "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "StreamConfigurationMapCompat"

    invoke-static {v1, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->mCachedClassOutputSizes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->mCachedClassOutputSizes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Size;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->mCachedClassOutputSizes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/util/Size;

    invoke-virtual {p1}, [Landroid/util/Size;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/util/Size;

    :goto_0
    return-object p1

    .line 13
    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->mImpl:Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;

    invoke-interface {v0, p1}, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 14
    array-length v1, v0

    if-nez v1, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->mOutputSizesCorrector:Landroidx/camera/camera2/internal/compat/workaround/OutputSizesCorrector;

    invoke-virtual {v1, v0, p1}, Landroidx/camera/camera2/internal/compat/workaround/OutputSizesCorrector;->applyQuirks([Landroid/util/Size;Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v0

    .line 16
    iget-object v1, p0, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->mCachedClassOutputSizes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v0}, [Landroid/util/Size;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/util/Size;

    return-object p1

    .line 18
    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Retrieved output sizes array is null or empty for class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "StreamConfigurationMapCompat"

    invoke-static {v1, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public toStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->mImpl:Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;->unwrap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
