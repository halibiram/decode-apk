.class public final Lcom/google/android/gms/common/util/CrashUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static final zza:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x3

    new-array v3, v3, [J

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_2

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_3

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_4

    invoke-direct {v5, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v2, v3, v4, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/CrashUtils;->zza:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        -0x109bc1a07e7c5ff0L    # -3.836502052400006E228
        -0x49c56a61cd6df5edL    # -1.8189815511569959E-47
    .end array-data

    :array_1
    .array-data 8
        0x761c49bb496df5d6L    # 8.698787484091787E260
        -0x129e458d826c3599L    # -7.822655227410769E218
        -0x1bf3e605ab862c5eL    # -8.687936670898668E173
    .end array-data

    :array_2
    .array-data 8
        0x7015cacbe43c989bL    # 8.458185960945573E231
        0x23ecd0f6033b0d83L    # 1.238937748991316E-135
    .end array-data

    :array_3
    .array-data 8
        0x59143d7f92471f74L    # 1.3066331464876412E121
        -0x440087c08ea22548L    # -1.0662355215350329E-19
    .end array-data

    :array_4
    .array-data 8
        -0x3b7bb491e74f5c86L    # -1.1979846093485113E22
        0x2b86d0f7b934fe33L    # 5.21574406207126E-99
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 p1, 0x3

    .line 11
    new-array p1, p1, [J

    .line 12
    .line 13
    fill-array-data p1, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/4 p1, 0x6

    .line 25
    new-array p1, p1, [J

    .line 26
    .line 27
    fill-array-data p1, :array_1

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    :goto_0
    const/4 p0, 0x0

    .line 37
    return p0

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        0x668d2547aa9f48f7L    # 9.907423137550318E185
        -0x3077ac80b8ea138fL    # -1.37537938882826E75
        0x6ba9bfca7542c6daL    # 4.232631312845844E210
    .end array-data

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    :array_1
    .array-data 8
        0x18700dc6785df2e5L    # 5.629902417634591E-191
        0x21a4cf4558a842d9L
        -0x3de8625689756d1fL    # -2.5357344162643436E10
        0x304c9ce4fff85ab4L    # 4.942111235642879E-76
        -0x35a625c244a8f348L    # -1.5113391034555289E50
        -0x49f6d7475dd1d204L    # -2.1518165496070914E-48
    .end array-data
.end method
