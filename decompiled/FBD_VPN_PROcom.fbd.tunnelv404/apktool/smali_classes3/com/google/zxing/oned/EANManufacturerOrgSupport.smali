.class final Lcom/google/zxing/oned/EANManufacturerOrgSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final countryIdentifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->countryIdentifiers:Ljava/util/List;

    .line 17
    .line 18
    return-void
.end method

.method private add([ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->countryIdentifiers:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private declared-synchronized initIfNeeded()V
    .locals 4

    const/4 v0, 0x2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    const/16 v1, 0x13

    const/4 v2, 0x0

    .line 3
    :try_start_1
    filled-new-array {v2, v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x27

    const/16 v2, 0x1e

    .line 4
    filled-new-array {v2, v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x8b

    const/16 v2, 0x3c

    .line 5
    filled-new-array {v2, v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_2

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x17b

    const/16 v2, 0x12c

    .line 6
    filled-new-array {v2, v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_3

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x17c

    .line 7
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_4

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x17f

    .line 8
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_5

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x181

    .line 9
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_6

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x183

    .line 10
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_7

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x1b8

    const/16 v2, 0x190

    .line 11
    filled-new-array {v2, v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_8

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x1cb

    const/16 v2, 0x1c2

    .line 12
    filled-new-array {v2, v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_9

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x1d5

    const/16 v2, 0x1cc

    .line 13
    filled-new-array {v2, v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_a

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x1d7

    .line 14
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_b

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x1da

    .line 15
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_c

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x1db

    .line 16
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_d

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x1dc

    .line 17
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_e

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x1dd

    .line 18
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_f

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x1de

    .line 19
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_10

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x1df

    .line 20
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_11

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x1e0

    .line 21
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_12

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x1e1

    .line 22
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_13

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x1e2

    .line 23
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_14

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x1e4

    .line 24
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_15

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x1e5

    .line 25
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_16

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x1e6

    .line 26
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_17

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x1e7

    .line 27
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_18

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x1e9

    .line 28
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_19

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x1f3

    const/16 v2, 0x1ea

    .line 29
    filled-new-array {v2, v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_1a

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x1fd

    const/16 v2, 0x1f4

    .line 30
    filled-new-array {v2, v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_1b

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x208

    .line 31
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_1c

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x210

    .line 32
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_1d

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x211

    .line 33
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_1e

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x213

    .line 34
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_1f

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x217

    .line 35
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_20

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x21b

    .line 36
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_21

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x225

    const/16 v2, 0x21c

    .line 37
    filled-new-array {v2, v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_22

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x230

    .line 38
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_23

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x239

    .line 39
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_24

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x243

    const/16 v2, 0x23a

    .line 40
    filled-new-array {v2, v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_25

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x24e

    .line 41
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_26

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x252

    .line 42
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_27

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x257

    .line 43
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_28

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x259

    const/16 v2, 0x258

    .line 44
    filled-new-array {v2, v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_29

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x25b

    .line 45
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_2a

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x260

    .line 46
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_2b

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x261

    .line 47
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_2c

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x263

    .line 48
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_2d

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x265

    .line 49
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_2e

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x268

    .line 50
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_2f

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x26a

    .line 51
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_30

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x26b

    .line 52
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_31

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x26d

    .line 53
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_32

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x26e

    .line 54
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_33

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x270

    .line 55
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_34

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x271

    .line 56
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_35

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x272

    .line 57
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_36

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x273

    .line 58
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_37

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x274

    .line 59
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_38

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x275

    .line 60
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_39

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x289

    const/16 v2, 0x280

    .line 61
    filled-new-array {v2, v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_3a

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x2b7

    const/16 v2, 0x2b2

    .line 62
    filled-new-array {v2, v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_3b

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x2c5

    const/16 v2, 0x2bc

    .line 63
    filled-new-array {v2, v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_3c

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x2d9

    .line 64
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_3d

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x2e3

    const/16 v2, 0x2da

    .line 65
    filled-new-array {v2, v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_3e

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x2e4

    .line 66
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_3f

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x2e5

    .line 67
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_40

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x2e6

    .line 68
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_41

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x2e7

    .line 69
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_42

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x2e8

    .line 70
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_43

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x2e9

    .line 71
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_44

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x2ea

    .line 72
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_45

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x2ee

    .line 73
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_46

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x2f3

    const/16 v2, 0x2f2

    .line 74
    filled-new-array {v2, v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_47

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x2f7

    .line 75
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_48

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x301

    const/16 v2, 0x2f8

    .line 76
    filled-new-array {v2, v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_49

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x302

    .line 77
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_4a

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x305

    .line 78
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_4b

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x307

    .line 79
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_4c

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x309

    .line 80
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_4d

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x30b

    .line 81
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_4e

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x30c

    .line 82
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_4f

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x310

    .line 83
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_50

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x311

    .line 84
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_51

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x312

    .line 85
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_52

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x316

    const/16 v2, 0x315

    .line 86
    filled-new-array {v2, v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_53

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x347

    const/16 v2, 0x320

    .line 87
    filled-new-array {v2, v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_54

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x351

    const/16 v2, 0x348

    .line 88
    filled-new-array {v2, v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_55

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x352

    .line 89
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_56

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x35a

    .line 90
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_57

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x35b

    .line 91
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_58

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x35c

    .line 92
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_59

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x361

    .line 93
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_5a

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x363

    .line 94
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_5b

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x365

    const/16 v2, 0x364

    .line 95
    filled-new-array {v2, v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_5c

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x36f

    const/16 v2, 0x366

    .line 96
    filled-new-array {v2, v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_5d

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x370

    .line 97
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_5e

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x375

    .line 98
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_5f

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x378

    .line 99
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_60

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x37a

    .line 100
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_61

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x37d

    .line 101
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_62

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x380

    .line 102
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_63

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x383

    .line 103
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_64

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x397

    const/16 v2, 0x384

    .line 104
    filled-new-array {v2, v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_65

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x3ab

    const/16 v2, 0x3a2

    .line 105
    filled-new-array {v2, v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_66

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x3b5

    const/16 v2, 0x3ac

    .line 106
    filled-new-array {v2, v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_67

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x3bb

    .line 107
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_68

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    const/16 v1, 0x3be

    .line 108
    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_69

    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :array_0
    .array-data 8
        0x314fae723cfde467L    # 3.586210857623888E-71
        0x2fcb1608ca7f91a9L    # 1.8274990639040803E-78
    .end array-data

    :array_1
    .array-data 8
        -0x3e2793c282ebff35L    # -1.6389872523125484E9
        0x7a26053b302697d3L    # 2.498226796556033E280
    .end array-data

    :array_2
    .array-data 8
        -0x32ecd51e662b4897L    # -1.971263541237085E63
        0x6e6f13329e107da4L    # 8.986235767163697E223
    .end array-data

    :array_3
    .array-data 8
        0x5ba2607562a2a2fbL    # 2.6087819221722943E133
        0x27bdcd38c02c5d73L
    .end array-data

    :array_4
    .array-data 8
        0x2c3defba12c7c5c7L    # 1.4015269053941427E-95
        -0x46e302dfa39a51baL    # -1.3957587474462999E-33
    .end array-data

    :array_5
    .array-data 8
        0x4f4fa0085f26dde0L    # 1.1175352824769257E74
        0x783020987b326600L    # 8.519978486376784E270
    .end array-data

    :array_6
    .array-data 8
        -0x1022cfa1c94f5c34L    # -7.080680265191146E230
        -0x40845bbc404a60aaL    # -0.006748451847080469
    .end array-data

    :array_7
    .array-data 8
        -0x76e73aaa1fe34a74L
        0x2d66291b7cd93125L    # 5.439416862613812E-90
    .end array-data

    :array_8
    .array-data 8
        0x482dd01ec01f1216L    # 5.072413864710274E39
        -0x2955991709a84d53L    # -3.100310150197817E109
    .end array-data

    :array_9
    .array-data 8
        0x580405dcd25cc428L    # 9.861780729058176E115
        -0x65beec9bd574a818L    # -3.214936117483797E-182
    .end array-data

    :array_a
    .array-data 8
        0x32b007bb77af3f61L    # 1.522158906935696E-64
        -0x49be7a0c4c61d152L    # -2.397978817704986E-47
    .end array-data

    :array_b
    .array-data 8
        -0x30b666ebce2a3ddL    # -8.222811291031028E293
        -0x37e42ec9be3a2a72L    # -2.3664285690113528E39
    .end array-data

    :array_c
    .array-data 8
        -0x3ab899459917434aL    # -5.658082748434232E25
        0x3009ef5f07f702e6L    # 2.799742622804667E-77
    .end array-data

    :array_d
    .array-data 8
        0x10b3f0753bc6ae54L    # 3.287857300133914E-228
        0x24ae926f5c4534fbL
    .end array-data

    :array_e
    .array-data 8
        0x61a491d104c366aL
        0x69fd4dd19ff2d0a2L
    .end array-data

    :array_f
    .array-data 8
        -0x12361930d83075fL
        -0x65a13ee801abd34eL
    .end array-data

    :array_10
    .array-data 8
        -0x23e4848472a7683aL
        -0xec02a6807b3746cL    # -3.239012239191731E237
    .end array-data

    :array_11
    .array-data 8
        -0x64b8cbb00b2ea756L    # -2.863135337494097E-177
        0x1bc6e724cf7d8cd8L    # 7.23440982733443E-175
    .end array-data

    :array_12
    .array-data 8
        0x6cd3243e3c3da089L    # 1.6496604602797304E216
        0x3222aafbd07fe618L    # 3.462155380734762E-67
    .end array-data

    :array_13
    .array-data 8
        0x64f95409c79cfad5L    # 2.565919634710019E178
        -0x1c2467d6b08e2ff6L    # -1.0663951827004905E173
    .end array-data

    :array_14
    .array-data 8
        -0x42b01abdc244d1c0L
        -0x2cbec64c48174b4bL    # -1.1228402087245936E93
    .end array-data

    :array_15
    .array-data 8
        -0x7be3f7ecc003ad93L    # -7.191031427525577E-289
        0x7b70c5d3db414f42L    # 3.990621368892617E286
    .end array-data

    :array_16
    .array-data 8
        0x1ae5fa73453927c0L    # 4.237279464927441E-179
        0x3e5f77fadf3500aL
    .end array-data

    :array_17
    .array-data 8
        -0x329c58456a2b85d9L    # -6.46854121232832E64
        -0x38cddc431efaf2f9L    # -9.418619232454075E34
    .end array-data

    :array_18
    .array-data 8
        0x4ce65a86c913d33fL    # 2.8736704847771933E62
        -0x34833ad6bf98af1cL    # -4.4090142981371853E55
    .end array-data

    :array_19
    .array-data 8
        -0x7c0ff7093366db75L    # -1.028379885858192E-289
        0x2425c946429ec51fL
    .end array-data

    :array_1a
    .array-data 8
        0x605c2f22d124062aL    # 1.5115493394762598E156
        0x4cdf857aecc9bcbeL    # 2.02611792055676E62
    .end array-data

    :array_1b
    .array-data 8
        -0x3c7bcef2293386ffL    # -1.81869921352753184E17
        -0x2d89b51c54f55f2L    # -7.470281317849172E294
    .end array-data

    :array_1c
    .array-data 8
        0x11ee90b6a622139dL
        -0x7f4ac5abc2e19d15L    # -3.022945881146459E-305
    .end array-data

    :array_1d
    .array-data 8
        -0x7f0c3bb9001adb38L    # -4.503796332325029E-304
        -0x66b8a3dbc4c7391bL    # -6.710953016777954E-187
    .end array-data

    :array_1e
    .array-data 8
        -0x73b9863487dd85f8L
        -0x79149668d0671c5cL
    .end array-data

    :array_1f
    .array-data 8
        -0x3abc90ea868bfb0fL    # -4.698833877105488E25
        -0x3cd518802b34418fL    # -3.7864428057311285E15
    .end array-data

    :array_20
    .array-data 8
        0x34bbcd94c67940ecL    # 1.1338960962417883E-54
        -0x6c43b7c487f50dc3L
    .end array-data

    :array_21
    .array-data 8
        -0x656197e37d7ae0f4L
        0x12ac9297e279128bL
    .end array-data

    :array_22
    .array-data 8
        -0x36701279e3510784L    # -2.2784459164298474E46
        -0x7d036d7ca021aa66L    # -2.796080758553596E-294
    .end array-data

    :array_23
    .array-data 8
        0x218fe6bfd0cdfa05L
        -0x4ee5dc81ff7eda72L    # -3.6984866869009053E-72
    .end array-data

    :array_24
    .array-data 8
        0x36842b81e58fa565L    # 4.416268922647795E-46
        0x777332dc4d29c0cbL    # 2.476209593902101E267
    .end array-data

    :array_25
    .array-data 8
        -0x68cd97d3ad326898L
        0x11863c633066096bL
    .end array-data

    :array_26
    .array-data 8
        0x2333c18568397acaL    # 4.147436560821063E-139
        -0x1de6005b46afa727L    # -3.742895767594479E164
    .end array-data

    :array_27
    .array-data 8
        0x4dc21eb67fe6890eL    # 3.8165115995652495E66
        0x24507ac793d325bdL    # 9.069196375599556E-134
    .end array-data

    :array_28
    .array-data 8
        0x4e6b96d1b9561056L    # 5.950413433601923E69
        -0x6154b3c89af5952dL    # -6.067624653978224E-161
    .end array-data

    :array_29
    .array-data 8
        -0x29db925c3037120bL    # -9.37044675642663E106
        0x2c5c2ee2b6b47c30L    # 5.277774893281606E-95
    .end array-data

    :array_2a
    .array-data 8
        -0x3f6684f43bf4eb3fL    # -1630.7614900332849
        -0x3f3148a7d2cd2af4L    # -15726.688879350688
    .end array-data

    :array_2b
    .array-data 8
        0x2fee9b2f00bf83bdL    # 8.260005648720566E-78
        -0x26c42d45019ec3e2L    # -7.184636648725545E121
    .end array-data

    :array_2c
    .array-data 8
        0x7534e5529c600559L    # 3.9218877131254215E256
        0x2de760ce0ba711aL    # 7.452299923514646E-295
    .end array-data

    :array_2d
    .array-data 8
        -0x574525a54531e75dL
        0x51d49dbac75228f1L    # 1.6020126754793506E86
    .end array-data

    :array_2e
    .array-data 8
        -0x2e522530ebaa92acL    # -2.899892013097826E85
        -0x23a0355ed10ee6a4L    # -9.242923706797578E136
    .end array-data

    :array_2f
    .array-data 8
        -0x318f5142fbdc46eeL    # -7.19617987467298E69
        -0x1d3d5ad48b983224L    # -5.49736427757622E167
    .end array-data

    :array_30
    .array-data 8
        -0x457301c1bf8b0f39L    # -1.1710234933342656E-26
        0x590d7bd6071ed072L    # 9.516796245110425E120
    .end array-data

    :array_31
    .array-data 8
        0x63da3e93510e9b33L    # 1.0142260527078671E173
        0x6bb9d6b91875c26cL    # 8.494712423380443E210
    .end array-data

    :array_32
    .array-data 8
        0x3009b4c631a66ba4L    # 2.77503296737795E-77
        0x505e16c7fbd7bf8L    # 1.839300018074852E-284
    .end array-data

    :array_33
    .array-data 8
        -0xc6c474820a4537L
        -0x54d025c8a0b93c0aL
    .end array-data

    :array_34
    .array-data 8
        0x6a3494674a8e4c9fL    # 4.032702170117463E203
        0x713746afdfedd75fL    # 2.3682481639347836E237
    .end array-data

    :array_35
    .array-data 8
        0xf8fe1c5d3eb7fb6L
        0x462f205a87efa924L    # 1.2330430017603389E30
    .end array-data

    :array_36
    .array-data 8
        0x74ce5d4732d4d56eL    # 4.452363303847477E254
        0x54d3b285883eb411L    # 4.308304315080534E100
    .end array-data

    :array_37
    .array-data 8
        -0x28876ea36ff1fa22L    # -2.3633333556624308E113
        0xd0492316f865c09L
    .end array-data

    :array_38
    .array-data 8
        -0x37d6b45da8865c7aL    # -4.303797099502632E39
        0x61c6f00286db0a11L    # 1.0319400862065342E163
    .end array-data

    :array_39
    .array-data 8
        0x6d53e3005afbcf0L    # 9.58690004544226E-276
        0x2fa98dd23680c679L    # 4.310323338177646E-79
    .end array-data

    :array_3a
    .array-data 8
        -0xb8be3e835ce8234L
        -0x5a27ed6713dced3fL
    .end array-data

    :array_3b
    .array-data 8
        -0x7d5e1846d204ac99L    # -5.475612476401656E-296
        -0x6019a108ce519006L    # -5.2140699236201E-155
    .end array-data

    :array_3c
    .array-data 8
        0xae47a47778262cdL
        -0x6d5f8d498d172f02L    # -5.824367970287754E-219
    .end array-data

    :array_3d
    .array-data 8
        -0x5473c6be8785b5ecL    # -6.451856417859708E-99
        -0x5544c558782f3fa2L
    .end array-data

    :array_3e
    .array-data 8
        0x6318014d462341beL    # 2.264857253576327E169
        -0xb5ae4a37c113acL
    .end array-data

    :array_3f
    .array-data 8
        0x3cbf5ab12f6e6946L
        -0x279f99250e1903cbL    # -5.17010377254773E117
    .end array-data

    :array_40
    .array-data 8
        -0x1c247959b08d6749L    # -1.0637516399652821E173
        0x72d9636ac2e80eb7L    # 1.733528264197299E245
    .end array-data

    :array_41
    .array-data 8
        -0xcbd3166045fdaafL
        0x63cdc6709500882L
    .end array-data

    :array_42
    .array-data 8
        -0x5209d776013ec06L
        0x6c59e341fda4c284L    # 8.715069139803796E213
    .end array-data

    :array_43
    .array-data 8
        -0x6b3fa30a7e8547adL    # -9.95449329958236E-209
        -0x1c378f26d9053a75L    # -4.72262203944038E172
    .end array-data

    :array_44
    .array-data 8
        0x1aa75746e9d92bd3L    # 2.812488038209133E-180
        0x1df347e9759153d8L
    .end array-data

    :array_45
    .array-data 8
        -0x2c7e007618c5a667L    # -1.8771444125392166E94
        0x16de1dd435067306L
    .end array-data

    :array_46
    .array-data 8
        -0x20b54f7dd46cab11L    # -1.0920639198400055E151
        -0x247c726928be3cf6L    # -6.939422768610889E132
    .end array-data

    :array_47
    .array-data 8
        -0x548631277b3dec43L    # -2.9498208663295804E-99
        -0x63356d6900fd6bb7L    # -5.500811698140295E-170
    .end array-data

    :array_48
    .array-data 8
        0x3b221a5e6bcadddcL    # 7.487226659148182E-24
        -0x10bbffec099f8f39L    # -9.475962752204508E227
    .end array-data

    :array_49
    .array-data 8
        -0x447a9727d0e0e4ecL    # -5.667060356486834E-22
        -0x5c052bd6f56bcd3cL
    .end array-data

    :array_4a
    .array-data 8
        -0x416f3342d18de94aL    # -2.5033595680460067E-7
        -0x5167cc0abd2a785cL    # -3.114653407201788E-84
    .end array-data

    :array_4b
    .array-data 8
        -0x7e447381a49941b5L
        -0x68b5a1df6d422138L
    .end array-data

    :array_4c
    .array-data 8
        0x1736cd1d052a7202L    # 7.625722666878577E-197
        0x5efe153bc5be755dL    # 3.8466103153322593E149
    .end array-data

    :array_4d
    .array-data 8
        -0xe9f88ea8defac81L    # -1.340209933550854E238
        -0x2b24c5212cd2451cL    # -5.955875529792808E100
    .end array-data

    :array_4e
    .array-data 8
        0x1b37067496facfd6L
        0x2453d517f8f7747L
    .end array-data

    :array_4f
    .array-data 8
        -0x5416ae87ed75882bL    # -3.704118690802208E-97
        -0xe47ebc9453ec34dL    # -6.271830215467909E239
    .end array-data

    :array_50
    .array-data 8
        -0x79b1f1d9a4469abfL    # -2.649199678992204E-278
        -0x6ea4522e262c1d50L
    .end array-data

    :array_51
    .array-data 8
        -0x10a9a5a4e71787ecL    # -2.1181251969030956E228
        0x464e7be478243ef3L    # 4.830375468150849E30
    .end array-data

    :array_52
    .array-data 8
        0x273e832b9c728dceL
        0x501e466b814b5339L    # 8.764036303780712E77
    .end array-data

    :array_53
    .array-data 8
        -0x3a6ba3faeb0507a2L    # -1.5752363426707627E27
        -0xc87046fdea02e34L
    .end array-data

    :array_54
    .array-data 8
        -0x5cc2339799c54821L
        0x77adecbe6089da4fL    # 3.0877143709612156E268
    .end array-data

    :array_55
    .array-data 8
        0x63b4a3c2301856e3L    # 1.9940706215839942E172
        0x4a447bb6703d61eaL    # 5.987261424903784E49
    .end array-data

    :array_56
    .array-data 8
        0x56e215df8796479eL
        0x79994cbb0589fdaeL    # 5.605984388597683E277
    .end array-data

    :array_57
    .array-data 8
        -0x1955198aedfa11cL    # -8.93412625523025E300
        -0x7f68ebbe9d0ea117L    # -8.216440422200665E-306
    .end array-data

    :array_58
    .array-data 8
        -0x46735ed50cdd5776L
        -0x4ea2155134e3ca3eL    # -6.772907566702242E-71
    .end array-data

    :array_59
    .array-data 8
        -0x41162b161377a7a4L    # -1.2317511747499971E-5
        0x669acaf0dbbaa014L    # 1.8215220387021706E186
    .end array-data

    :array_5a
    .array-data 8
        0x4961d091e016255dL    # 3.1782533012327173E45
        0x5413ac61bccb68eaL    # 1.050551387210627E97
    .end array-data

    :array_5b
    .array-data 8
        -0x1641998b550091aL    # -7.473776180125154E301
        -0x2defd4724c5e5dc2L    # -2.010445463823924E87
    .end array-data

    :array_5c
    .array-data 8
        -0x326328b8c54a4692L    # -7.593261244511317E65
        -0x618549d18eb2da01L    # -7.421693151239981E-162
    .end array-data

    :array_5d
    .array-data 8
        -0x706b66c315920e63L
        0x73fb87b7d801ae5eL    # 4.9277080724793554E250
    .end array-data

    :array_5e
    .array-data 8
        -0xfdd8b93453e19e2L    # -1.432569308749451E232
        -0x5d00c66bde0ade74L    # -4.096975019896131E-140
    .end array-data

    :array_5f
    .array-data 8
        0x4b9c280a3e454220L    # 1.7259826840319275E56
        -0x3f05b12ba2b1aca7L    # -107757.27277977522
    .end array-data

    :array_60
    .array-data 8
        -0xec1341549026f84L    # -3.133420430115016E237
        0x4f3f952e7a336b00L    # 5.5801872240600106E73
    .end array-data

    :array_61
    .array-data 8
        0x629a85042600423cL    # 9.773823569719773E166
        0x4db6510e132f3041L    # 2.3502145015486236E66
    .end array-data

    :array_62
    .array-data 8
        -0x4c98b60632c08ef1L    # -4.5289875995458755E-61
        -0x4c9aea8f168b170aL    # -4.100141380839578E-61
    .end array-data

    :array_63
    .array-data 8
        -0x6ee290152accbfd9L
        -0x6eb98a2834322789L
    .end array-data

    :array_64
    .array-data 8
        -0x5a71932da0746000L    # -8.778567488270784E-128
        0x306d54b9a091f963L    # 2.026456739136513E-75
    .end array-data

    :array_65
    .array-data 8
        -0x3b623a18e331959dL    # -3.514982249955473E22
        -0x5a750c8e26fa40b0L    # -7.776174994333323E-128
    .end array-data

    :array_66
    .array-data 8
        0x3eb28ab01d46b529L    # 1.1051744098587398E-6
        0x12bd1104355dd08bL    # 2.058521727657547E-218
    .end array-data

    :array_67
    .array-data 8
        -0x670a7a589347a632L    # -1.932177784462684E-188
        -0x4b02e97a59262433L    # -1.898079053959612E-53
    .end array-data

    :array_68
    .array-data 8
        0x2625ead1f58ffdffL    # 6.47557281288357E-125
        0x16718a8ea7c564eaL
    .end array-data

    :array_69
    .array-data 8
        0x3adc9c0cf3cb78e1L    # 3.6977005966508428E-25
        -0x3cc69c9fc4623aaeL    # -7.14613938597205E15
    .end array-data
.end method


# virtual methods
.method public lookupCountryIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->initIfNeeded()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    const/4 v3, 0x0

    .line 22
    if-ge v2, v0, :cond_3

    .line 23
    .line 24
    iget-object v4, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, [I

    .line 31
    .line 32
    aget v5, v4, v1

    .line 33
    .line 34
    if-ge p1, v5, :cond_0

    .line 35
    .line 36
    return-object v3

    .line 37
    :cond_0
    array-length v3, v4

    .line 38
    const/4 v6, 0x1

    .line 39
    if-ne v3, v6, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    aget v5, v4, v6

    .line 43
    .line 44
    :goto_1
    if-gt p1, v5, :cond_2

    .line 45
    .line 46
    iget-object p1, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->countryIdentifiers:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Ljava/lang/String;

    .line 53
    .line 54
    return-object p1

    .line 55
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    return-object v3
.end method
