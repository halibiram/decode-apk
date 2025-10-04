.class abstract Lcom/panda912/muddy/ObfuscatedString$Codec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/panda912/muddy/ObfuscatedString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Codec"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/panda912/muddy/ObfuscatedString;


# direct methods
.method private constructor <init>(Lcom/panda912/muddy/ObfuscatedString;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/panda912/muddy/ObfuscatedString$Codec;->this$0:Lcom/panda912/muddy/ObfuscatedString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/panda912/muddy/ObfuscatedString;Lcom/panda912/muddy/ObfuscatedString$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString$Codec;-><init>(Lcom/panda912/muddy/ObfuscatedString;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/panda912/muddy/ObfuscatedString$Codec;->this$0:Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/panda912/muddy/ObfuscatedString;->access$200(Lcom/panda912/muddy/ObfuscatedString;)[J

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    add-int/lit8 v2, v1, -0x1

    .line 9
    .line 10
    mul-int/lit8 v2, v2, 0x8

    .line 11
    .line 12
    new-array v3, v2, [B

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    aget-wide v5, v0, v4

    .line 16
    .line 17
    new-instance v7, Ljava/util/Random;

    .line 18
    .line 19
    invoke-direct {v7, v5, v6}, Ljava/util/Random;-><init>(J)V

    .line 20
    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    :goto_0
    if-ge v5, v1, :cond_0

    .line 24
    .line 25
    aget-wide v8, v0, v5

    .line 26
    .line 27
    invoke-virtual {v7}, Ljava/util/Random;->nextLong()J

    .line 28
    .line 29
    .line 30
    move-result-wide v10

    .line 31
    xor-long/2addr v8, v10

    .line 32
    add-int/lit8 v6, v5, -0x1

    .line 33
    .line 34
    mul-int/lit8 v6, v6, 0x8

    .line 35
    .line 36
    invoke-static {v8, v9, v3, v6}, Lcom/panda912/muddy/ObfuscatedString;->access$300(J[BI)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v5, v5, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    :goto_1
    if-lez v2, :cond_1

    .line 43
    .line 44
    add-int/lit8 v0, v2, -0x1

    .line 45
    .line 46
    aget-byte v1, v3, v0

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    move v2, v0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :try_start_0
    invoke-virtual {p0, v3, v2}, Lcom/panda912/muddy/ObfuscatedString$Codec;->decode([BI)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-static {v3, v4, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 57
    .line 58
    .line 59
    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    goto :goto_2

    .line 62
    :catch_0
    move-exception v0

    .line 63
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    throw v1

    .line 69
    :catch_1
    move-exception v0

    .line 70
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :goto_2
    invoke-static {v3, v4, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 72
    .line 73
    .line 74
    throw v0
.end method

.method public abstract decode([BI)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)TV;"
        }
    .end annotation
.end method
