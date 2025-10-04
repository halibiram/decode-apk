.class final Lcom/google/common/io/CharStreams$NullWriter;
.super Ljava/io/Writer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/CharStreams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NullWriter"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/io/CharStreams$NullWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/io/CharStreams$NullWriter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/io/CharStreams$NullWriter;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/common/io/CharStreams$NullWriter;->INSTANCE:Lcom/google/common/io/CharStreams$NullWriter;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000()Lcom/google/common/io/CharStreams$NullWriter;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/io/CharStreams$NullWriter;->INSTANCE:Lcom/google/common/io/CharStreams$NullWriter;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .locals 0

    .line 1
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 2
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :goto_0
    invoke-static {p2, p3, p1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    return-object p0

    :array_0
    .array-data 8
        -0x7f7e70c6158194e9L    # -3.125690744409255E-306
        0x650a45f8c5c2c6feL    # 5.323319352240217E178
    .end array-data
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/io/CharStreams$NullWriter;->append(C)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/common/io/CharStreams$NullWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/io/CharStreams$NullWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
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
        0xbe01be4d8f63e74L
        0x4f9fe8ccdb8ad742L    # 3.608255175053639E75
        0x76b16dd87e02f86bL    # 5.488210981021097E263
        -0x378a78ef37d96f36L    # -1.1720740193692494E41
    .end array-data
.end method

.method public write(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 0

    add-int/2addr p3, p2

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p2, p3, p1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    return-void
.end method

.method public write([C)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public write([CII)V
    .locals 0

    add-int/2addr p3, p2

    .line 3
    array-length p1, p1

    invoke-static {p2, p3, p1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    return-void
.end method
