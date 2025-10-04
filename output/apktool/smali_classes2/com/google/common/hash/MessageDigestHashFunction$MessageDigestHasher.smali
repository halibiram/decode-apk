.class final Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;
.super Lcom/google/common/hash/AbstractByteHasher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/MessageDigestHashFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageDigestHasher"
.end annotation


# instance fields
.field private final bytes:I

.field private final digest:Ljava/security/MessageDigest;

.field private done:Z


# direct methods
.method private constructor <init>(Ljava/security/MessageDigest;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/common/hash/AbstractByteHasher;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->digest:Ljava/security/MessageDigest;

    .line 4
    iput p2, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->bytes:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/security/MessageDigest;ILcom/google/common/hash/MessageDigestHashFunction$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;-><init>(Ljava/security/MessageDigest;I)V

    return-void
.end method

.method private checkNotDone()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->done:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
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
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void

    :array_0
    .array-data 8
        -0x3024216e6770c2f2L    # -5.0422767305383784E76
        -0x4c434373ff74a469L    # -1.78827748621552E-59
        -0x7897ea24b5bf3a4fL    # -5.565284829944099E-273
        -0x765399d652c97e57L
        -0x71c97a94e7820493L    # -3.3774919996006935E-240
        -0x1ddb0c19247c0257L    # -6.032932935574621E164
        -0x2f11a27f5e5d1d80L    # -7.200880730182754E81
        0x69319a6f37e5530cL    # 5.263446927374794E198
    .end array-data
.end method


# virtual methods
.method public hash()Lcom/google/common/hash/HashCode;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->checkNotDone()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->done:Z

    .line 6
    .line 7
    iget v0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->bytes:I

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->digest:Ljava/security/MessageDigest;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/security/MessageDigest;->getDigestLength()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->digest:Ljava/security/MessageDigest;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->digest:Ljava/security/MessageDigest;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget v1, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->bytes:I

    .line 35
    .line 36
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :goto_0
    return-object v0
.end method

.method public update(B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->checkNotDone()V

    .line 2
    iget-object v0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method public update(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->checkNotDone()V

    .line 6
    iget-object v0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->checkNotDone()V

    .line 4
    iget-object v0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
