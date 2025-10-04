.class final Lcom/google/common/io/ByteSource$EmptyByteSource;
.super Lcom/google/common/io/ByteSource$ByteArrayByteSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/ByteSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmptyByteSource"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/io/ByteSource$EmptyByteSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/io/ByteSource$EmptyByteSource;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/io/ByteSource$EmptyByteSource;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/common/io/ByteSource$EmptyByteSource;->INSTANCE:Lcom/google/common/io/ByteSource$EmptyByteSource;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/google/common/io/ByteSource$ByteArrayByteSource;-><init>([B)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public asCharSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/common/io/CharSource;->empty()Lcom/google/common/io/CharSource;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public read()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;->bytes:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

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
        -0x15d19905a560934fL    # -2.9787422471415867E203
        0x1d70919057c5543cL    # 7.024387370982082E-167
        -0x1deac7742562db55L    # -3.055069688619481E164
        -0x5b5d95aa882354cdL
    .end array-data
.end method
