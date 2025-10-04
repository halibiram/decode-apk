.class final Landroidx/camera/core/internal/compat/ImageWriterCompatApi26Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1a
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageWriterCompatApi26"

.field private static sNewInstanceMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    :try_start_0
    const-class v0, Landroid/media/ImageWriter;

    .line 2
    .line 3
    const-string v1, "newInstance"

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v2, v2, [Ljava/lang/Class;

    .line 7
    .line 8
    const-class v3, Landroid/view/Surface;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    aput-object v3, v2, v4

    .line 12
    .line 13
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    aput-object v3, v2, v4

    .line 17
    .line 18
    const/4 v4, 0x2

    .line 19
    aput-object v3, v2, v4

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Landroidx/camera/core/internal/compat/ImageWriterCompatApi26Impl;->sNewInstanceMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    :catch_0
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

.method public static newInstance(Landroid/view/Surface;II)Landroid/media/ImageWriter;
    .locals 4
    .param p0    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    :try_start_0
    sget-object v0, Landroidx/camera/core/internal/compat/ImageWriterCompatApi26Impl;->sNewInstanceMethod:Ljava/lang/reflect/Method;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const/4 v1, 0x3

    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    aput-object p0, v1, v3

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    aput-object p1, v1, p0

    .line 26
    .line 27
    const/4 p0, 0x2

    .line 28
    aput-object p2, v1, p0

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Landroid/media/ImageWriter;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    return-object p0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    :goto_0
    move-object v2, p0

    .line 43
    goto :goto_1

    .line 44
    :catch_1
    move-exception p0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    :goto_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 47
    .line 48
    const-string p1, "Unable to invoke newInstance(Surface, int, int) via reflection."

    .line 49
    .line 50
    invoke-direct {p0, p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw p0
.end method
