.class abstract Lcom/google/common/hash/AbstractHashFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/hash/HashFunction;


# annotations
.annotation runtime Lcom/google/common/hash/ElementTypesAreNonnullByDefault;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


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
.method public hashBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/HashCode;
    .locals 1

    .line 4
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractHashFunction;->newHasher(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/hash/Hasher;->putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object p1

    return-object p1
.end method

.method public hashBytes([B)Lcom/google/common/hash/HashCode;
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/common/hash/AbstractHashFunction;->hashBytes([BII)Lcom/google/common/hash/HashCode;

    move-result-object p1

    return-object p1
.end method

.method public hashBytes([BII)Lcom/google/common/hash/HashCode;
    .locals 2

    add-int v0, p2, p3

    .line 2
    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 3
    invoke-virtual {p0, p3}, Lcom/google/common/hash/AbstractHashFunction;->newHasher(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/hash/Hasher;->putBytes([BII)Lcom/google/common/hash/Hasher;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object p1

    return-object p1
.end method

.method public hashInt(I)Lcom/google/common/hash/HashCode;
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractHashFunction;->newHasher(I)Lcom/google/common/hash/Hasher;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-interface {v0, p1}, Lcom/google/common/hash/Hasher;->putInt(I)Lcom/google/common/hash/Hasher;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public hashLong(J)Lcom/google/common/hash/HashCode;
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractHashFunction;->newHasher(I)Lcom/google/common/hash/Hasher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/Hasher;->putLong(J)Lcom/google/common/hash/Hasher;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public hashObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/HashCode;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/hash/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;)",
            "Lcom/google/common/hash/HashCode;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/common/hash/HashFunction;->newHasher()Lcom/google/common/hash/Hasher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/Hasher;->putObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/Hasher;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public hashString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/HashCode;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/common/hash/HashFunction;->newHasher()Lcom/google/common/hash/Hasher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/Hasher;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public hashUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/HashCode;
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractHashFunction;->newHasher(I)Lcom/google/common/hash/Hasher;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p1}, Lcom/google/common/hash/Hasher;->putUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/Hasher;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public newHasher(I)Lcom/google/common/hash/Hasher;
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x7

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p0}, Lcom/google/common/hash/HashFunction;->newHasher()Lcom/google/common/hash/Hasher;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :array_0
    .array-data 8
        0x7f79f72e57e6efddL    # 1.1396018697380113E306
        -0xf2567a6d7860837L    # -4.2280335495478705E235
        0x1f0e6bc54eb1af0eL
        -0x2815e6083f720438L    # -3.213903026691247E115
        0x5e70517faa55c13fL    # 8.150687805230438E146
        -0x3e2f86bfdef3ac6aL    # -1.1055269161926017E9
        -0x4ba760bb38f274a2L    # -1.5690134874398268E-56
    .end array-data
.end method
