.class public Landroidx/test/internal/util/ReflectionUtil$ReflectionParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/util/ReflectionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReflectionParams"
.end annotation


# instance fields
.field final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/test/internal/util/ReflectionUtil$ReflectionParams;->type:Ljava/lang/Class;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/test/internal/util/ReflectionUtil$ReflectionParams;->value:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public static getTypes([Landroidx/test/internal/util/ReflectionUtil$ReflectionParams;)[Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/test/internal/util/ReflectionUtil$ReflectionParams;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    new-array v0, v0, [Ljava/lang/Class;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p0

    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    aget-object v2, p0, v1

    .line 9
    .line 10
    iget-object v2, v2, Landroidx/test/internal/util/ReflectionUtil$ReflectionParams;->type:Ljava/lang/Class;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-object v0
.end method

.method public static getValues([Landroidx/test/internal/util/ReflectionUtil$ReflectionParams;)[Ljava/lang/Object;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p0

    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    aget-object v2, p0, v1

    .line 9
    .line 10
    iget-object v2, v2, Landroidx/test/internal/util/ReflectionUtil$ReflectionParams;->value:Ljava/lang/Object;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-object v0
.end method
