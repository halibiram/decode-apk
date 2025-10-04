.class public Lcom/tknetwork/tunnel/utils/ExceptionHandlerUtils;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final LINE_SEPARATOR:Ljava/lang/String;

.field private final myContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    new-array v1, v1, [J

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/tknetwork/tunnel/utils/ExceptionHandlerUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/tknetwork/tunnel/utils/ExceptionHandlerUtils;->myContext:Landroid/content/Context;

    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        0x52d0c94a1eb9b677L    # 8.54856775004972E90
        0x385fee41cd0a1e06L
    .end array-data
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 2
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x7

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v1, [J

    fill-array-data v0, :array_1

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x2

    new-array v1, v0, [J

    fill-array-data v1, :array_2

    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v0, [J

    fill-array-data v1, :array_3

    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v0, [J

    fill-array-data v1, :array_4

    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v0, [J

    fill-array-data v1, :array_5

    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v0, [J

    fill-array-data v1, :array_6

    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v0, [J

    fill-array-data v1, :array_7

    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v0, [J

    fill-array-data v1, :array_8

    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    sget-object p1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v0, [J

    fill-array-data v1, :array_9

    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v2, v1, [J

    fill-array-data v2, :array_a

    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    sget-object p1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v0, [J

    fill-array-data v2, :array_b

    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x6

    new-array v2, v2, [J

    fill-array-data v2, :array_c

    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v0, [J

    fill-array-data v2, :array_d

    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    sget-object p1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v0, [J

    fill-array-data v2, :array_e

    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_f

    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v0, [J

    fill-array-data v2, :array_10

    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_11

    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    sget-object p1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v0, [J

    fill-array-data v1, :array_12

    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0xa

    new-array v1, v1, [J

    fill-array-data v1, :array_13

    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v0, [J

    fill-array-data v1, :array_14

    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/ExceptionHandlerUtils;->myContext:Landroid/content/Context;

    const-class v2, Lcom/tknetwork/tunnel/activities/ExceptionActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_15

    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 36
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x4000000

    .line 37
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    iget-object p2, p0, Lcom/tknetwork/tunnel/utils/ExceptionHandlerUtils;->myContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 39
    new-instance p2, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    :array_0
    .array-data 8
        0x232f9923f3be2bbcL    # 3.316762895446708E-139
        0x37f581fcc1b8a3a4L
        -0x130ea24959806245L    # -5.986574610936273E216
        -0x5221d0a765cc947eL    # -9.483566064482623E-88
        -0x858d0a1fecca28fL
        -0x199ce3f6507c1692L    # -1.6239669725920263E185
        -0x2fdbce2df0a5ee7cL    # -1.1691881290824712E78
    .end array-data

    :array_1
    .array-data 8
        0x1f69f430a61a313aL
        -0x19a4e91171171781L    # -1.1510643102374512E185
        -0x39e0a3cca5d95fd4L    # -6.21151934947015E29
        -0x176f2841efb98e62L    # -4.918017205499739E195
        -0xd5a3fc8f216f90fL
        0x11640196860c8ed3L    # 6.75612879556789E-225
        -0x4c600f08e7a7b6f6L    # -4.969275337975859E-60
    .end array-data

    :array_2
    .array-data 8
        -0x3aab808db613a372L    # -9.912146076470262E25
        0x34e22c1f2b2049a5L    # 5.929006025919822E-54
    .end array-data

    :array_3
    .array-data 8
        0x25d1c5544626a0f9L    # 1.640775749474997E-126
        -0x86ace076d555294L    # -1.09348709069753E268
    .end array-data

    :array_4
    .array-data 8
        0x732e65912547ad44L    # 6.6416129152475056E246
        0x3f548023cc13e4fbL    # 0.0012512540418455054
    .end array-data

    :array_5
    .array-data 8
        -0x65b7c87c658f4ea1L    # -4.559427528106656E-182
        -0x327894ffe6cf5181L    # -3.0827501417579637E65
    .end array-data

    :array_6
    .array-data 8
        0x12c6865e4a0b6f81L    # 3.19047661504926E-218
        0x3d500062918b3445L    # 2.273950490861781E-13
    .end array-data

    :array_7
    .array-data 8
        -0x2016c57862a6566fL    # -1.0570645303598993E154
        0x28b9fe5f0a0e9d21L
    .end array-data

    :array_8
    .array-data 8
        -0x18ee7cf370345e1cL
        0x6fcc984a0d5fe93cL    # 3.4682865988896774E230
    .end array-data

    :array_9
    .array-data 8
        -0x7b54b6492dc82ce0L
        0x3b985434157f8b01L    # 1.28796228684695E-21
    .end array-data

    :array_a
    .array-data 8
        -0x1bd3eaae52e6b695L    # -3.4729241530141952E174
        0x6ef2cb14ee32e558L    # 2.78252790695295E226
        -0x6a7950c1180bcdd0L    # -5.652534207841566E-205
    .end array-data

    :array_b
    .array-data 8
        0x427b72b0a94d3726L    # 1.8862127566914468E12
        -0x6c1db2ed466dd02dL    # -6.795313294757299E-213
    .end array-data

    :array_c
    .array-data 8
        0x78d4a52e3c5461dL
        -0x701cadc92d02e171L    # -3.889074857310984E-232
        -0x3004ba2455944c88L    # -1.9737400697921641E77
        0x334aef89dedfab2cL    # 1.3095410702360861E-61
        0x1be07d166835ebe4L
        -0x2ae1dc9e0f2d9200L    # -1.0547172588785026E102
    .end array-data

    :array_d
    .array-data 8
        0x49057b896a27f4baL    # 5.988465251608107E43
        0x29163db81307a286L
    .end array-data

    :array_e
    .array-data 8
        0x1a0d377b80cbb98fL    # 3.437987003026566E-183
        -0x5be28c03cce6727L    # -8.096190208847975E280
    .end array-data

    :array_f
    .array-data 8
        0x4bba4f4d1e8bac93L    # 6.451136954959575E56
        -0x4d94931d9741a415L    # -8.138096137393034E-66
        0x719de6abf93a853dL    # 1.9470772496222442E239
    .end array-data

    :array_10
    .array-data 8
        0x5b1a085cbea67f45L    # 7.217998178026953E130
        0x4deee63cd7558bc8L    # 2.6032664240478367E67
    .end array-data

    :array_11
    .array-data 8
        -0x114d8707e03a8fe3L    # -1.7093984165568764E225
        -0x308f98658a309abL    # -9.190961896631723E293
        0x30264e62dbc8c0efL    # 9.632003407318407E-77
    .end array-data

    :array_12
    .array-data 8
        -0x6ae6d8f0eeafe9adL    # -4.896496195870211E-207
        0x61f770708152d944L    # 8.436081224953019E163
    .end array-data

    :array_13
    .array-data 8
        -0x44cb9794a7e665f5L    # -1.6881009248445652E-23
        0xa5d5223025186abL
        0x233fba6def6b2babL    # 6.660824540203811E-139
        -0x7ea4e03761dae2fbL
        0x481422c542561237L    # 1.7129663295537202E39
        -0x409217b06b4d76e7L    # -0.0036508135140859263
        0x676d85cbacc93b2eL    # 1.6442295860818214E190
        -0x12e03ad22d195eecL    # -4.380838589251541E217
        -0x60104d93c7ccce16L    # -7.387711129920307E-155
        0x7365edbab792e7e7L    # 7.66616134018336E247
    .end array-data

    :array_14
    .array-data 8
        -0x4ed96398eaa4685dL    # -6.398671503334832E-72
        0x73eb1b42154ad217L    # 2.425936853788194E250
    .end array-data

    :array_15
    .array-data 8
        -0x12344c5ebd6ee232L    # -7.822992925649811E220
        -0x2fc5da7676e32555L    # -3.027572899932833E78
    .end array-data
.end method
