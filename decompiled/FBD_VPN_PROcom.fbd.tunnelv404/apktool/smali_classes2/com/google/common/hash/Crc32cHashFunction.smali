.class final Lcom/google/common/hash/Crc32cHashFunction;
.super Lcom/google/common/hash/AbstractHashFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/hash/ElementTypesAreNonnullByDefault;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;
    }
.end annotation


# static fields
.field static final CRC_32_C:Lcom/google/common/hash/HashFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/hash/Crc32cHashFunction;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/hash/Crc32cHashFunction;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/common/hash/Crc32cHashFunction;->CRC_32_C:Lcom/google/common/hash/HashFunction;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/hash/AbstractHashFunction;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bits()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :array_0
    .array-data 8
        0x7760a8b0fa99d436L    # 1.0743203656102304E267
        -0x1cc6b69e8a3f64e1L    # -9.543084193249626E169
        0x1e459f7464be2383L    # 7.509753590582162E-163
    .end array-data
.end method
