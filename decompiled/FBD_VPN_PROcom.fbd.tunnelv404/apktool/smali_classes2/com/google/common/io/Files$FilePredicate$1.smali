.class final enum Lcom/google/common/io/Files$FilePredicate$1;
.super Lcom/google/common/io/Files$FilePredicate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/Files$FilePredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/io/Files$FilePredicate;-><init>(Ljava/lang/String;ILcom/google/common/io/Files$1;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public apply(Ljava/io/File;)Z
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/google/common/io/Files$FilePredicate$1;->apply(Ljava/io/File;)Z

    move-result p1

    return p1
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
        0x7ff62317b3464510L
        -0x4d70cc486e3afad5L    # -3.7035111598302836E-65
        -0x41aca49d9bbbd5fbL    # -1.8027583218797392E-8
        -0x1b1d4077d84d312bL    # -9.496561126125918E177
    .end array-data
.end method
