.class Lcom/google/common/base/FinalizableReferenceQueue$SystemLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/FinalizableReferenceQueue$FinalizerLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/FinalizableReferenceQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemLoader"
.end annotation


# static fields
.field static disabled:Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public loadFinalizer()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    const/4 v0, 0x7

    .line 2
    sget-boolean v1, Lcom/google/common/base/FinalizableReferenceQueue$SystemLoader;->disabled:Z

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-object v2

    .line 8
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 9
    .line 10
    .line 11
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    :try_start_1
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    new-array v0, v0, [J

    .line 17
    .line 18
    fill-array-data v0, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 32
    return-object v0

    .line 33
    :catch_0
    :cond_1
    return-object v2

    .line 34
    :catch_1
    invoke-static {}, Lcom/google/common/base/FinalizableReferenceQueue;->access$000()Ljava/util/logging/Logger;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    new-array v0, v0, [J

    .line 41
    .line 42
    fill-array-data v0, :array_1

    .line 43
    .line 44
    .line 45
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v2

    .line 56
    nop

    .line 57
    :array_0
    .array-data 8
        0x270e2bb060170577L
        -0x4c3017d9f337a282L    # -3.971133885327174E-59
        -0x74c0d5d8603220afL
        -0x6fbee1c3e5af0c67L
        -0x7232fb64311c674L
        -0x5c45be61b736d746L
        0x14d080e9ac651e3cL    # 2.007986516824205E-208
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    :array_1
    .array-data 8
        0x50311cd724a8e56aL    # 1.9815104019299338E78
        -0x3b015bfe59a6061L
        -0x16a43170f73b8f15L    # -3.3257473512865584E199
        -0x5efdd379a55f051cL    # -1.110403691865796E-149
        -0x584ad389269005d0L
        0x4773e9d4893dbc98L    # 1.6543404895095523E36
        -0x46ef3a1a14a93569L    # -8.07592477711664E-34
    .end array-data
.end method
