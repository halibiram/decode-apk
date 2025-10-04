.class final Lcom/google/common/io/CharSource$EmptyCharSource;
.super Lcom/google/common/io/CharSource$StringCharSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/CharSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmptyCharSource"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/io/CharSource$EmptyCharSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/io/CharSource$EmptyCharSource;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/io/CharSource$EmptyCharSource;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/common/io/CharSource$EmptyCharSource;->INSTANCE:Lcom/google/common/io/CharSource$EmptyCharSource;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    const-wide v2, -0x25c3d22c1ca9811cL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    aput-wide v2, v1, v4

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p0, v0}, Lcom/google/common/io/CharSource$StringCharSource;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static synthetic access$000()Lcom/google/common/io/CharSource$EmptyCharSource;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/io/CharSource$EmptyCharSource;->INSTANCE:Lcom/google/common/io/CharSource$EmptyCharSource;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
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
        0x54984d880629b360L    # 3.322277573610345E99
        0x67662b3af6325313L    # 1.234669748425686E190
        -0x63aa17e00aa62638L
        -0x17a040dfccc7d960L    # -5.7936763703509173E194
    .end array-data
.end method
