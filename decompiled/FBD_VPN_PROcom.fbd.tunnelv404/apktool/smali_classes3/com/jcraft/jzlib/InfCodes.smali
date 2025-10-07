.class final Lcom/jcraft/jzlib/InfCodes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BADCODE:I = 0x9

.field private static final COPY:I = 0x5

.field private static final DIST:I = 0x3

.field private static final DISTEXT:I = 0x4

.field private static final END:I = 0x8

.field private static final LEN:I = 0x1

.field private static final LENEXT:I = 0x2

.field private static final LIT:I = 0x6

.field private static final START:I = 0x0

.field private static final WASH:I = 0x7

.field private static final Z_BUF_ERROR:I = -0x5

.field private static final Z_DATA_ERROR:I = -0x3

.field private static final Z_ERRNO:I = -0x1

.field private static final Z_MEM_ERROR:I = -0x4

.field private static final Z_NEED_DICT:I = 0x2

.field private static final Z_OK:I = 0x0

.field private static final Z_STREAM_END:I = 0x1

.field private static final Z_STREAM_ERROR:I = -0x2

.field private static final Z_VERSION_ERROR:I = -0x6

.field private static final inflate_mask:[I


# instance fields
.field dbits:B

.field dist:I

.field dtree:[I

.field dtree_index:I

.field get:I

.field lbits:B

.field len:I

.field lit:I

.field ltree:[I

.field ltree_index:I

.field mode:I

.field need:I

.field private final s:Lcom/jcraft/jzlib/InfBlocks;

.field tree:[I

.field tree_index:I

.field private final z:Lcom/jcraft/jzlib/ZStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
    .end array-data
.end method

.method public constructor <init>(Lcom/jcraft/jzlib/ZStream;Lcom/jcraft/jzlib/InfBlocks;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/jcraft/jzlib/InfCodes;->tree_index:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/jcraft/jzlib/InfCodes;->z:Lcom/jcraft/jzlib/ZStream;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/jcraft/jzlib/InfCodes;->s:Lcom/jcraft/jzlib/InfBlocks;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public free(Lcom/jcraft/jzlib/ZStream;)V
    .locals 0

    return-void
.end method

.method public inflate_fast(II[II[IILcom/jcraft/jzlib/InfBlocks;Lcom/jcraft/jzlib/ZStream;)I
    .locals 24

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    const/16 v2, 0xf

    const/4 v3, 0x2

    .line 1
    iget v4, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    iget v5, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget v6, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iget v7, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 2
    iget v8, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    iget v9, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    const/4 v10, 0x1

    if-ge v8, v9, :cond_0

    sub-int/2addr v9, v8

    sub-int/2addr v9, v10

    goto :goto_0

    :cond_0
    iget v9, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    sub-int/2addr v9, v8

    .line 3
    :goto_0
    sget-object v11, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v12, v11, p1

    .line 4
    aget v11, v11, p2

    :cond_1
    :goto_1
    const/16 v13, 0x14

    if-ge v7, v13, :cond_2

    add-int/lit8 v5, v5, -0x1

    .line 5
    iget-object v13, v1, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v14, v4, 0x1

    aget-byte v4, v13, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v7

    or-int/2addr v6, v4

    add-int/lit8 v7, v7, 0x8

    move v4, v14

    goto :goto_1

    :cond_2
    and-int v13, v6, v12

    add-int v14, p4, v13

    mul-int/lit8 v14, v14, 0x3

    .line 6
    aget v15, p3, v14

    const/16 v16, 0x0

    if-nez v15, :cond_3

    add-int/lit8 v13, v14, 0x1

    .line 7
    aget v13, p3, v13

    shr-int/2addr v6, v13

    sub-int/2addr v7, v13

    .line 8
    iget-object v13, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    add-int/lit8 v15, v8, 0x1

    add-int/2addr v14, v3

    aget v14, p3, v14

    int-to-byte v14, v14

    aput-byte v14, v13, v8

    :goto_2
    add-int/lit8 v9, v9, -0x1

    move v8, v15

    goto/16 :goto_c

    :cond_3
    add-int/lit8 v17, v14, 0x1

    .line 9
    aget v17, p3, v17

    shr-int v6, v6, v17

    sub-int v7, v7, v17

    and-int/lit8 v17, v15, 0x10

    const/16 v18, -0x3

    if-eqz v17, :cond_11

    and-int/lit8 v13, v15, 0xf

    add-int/2addr v14, v3

    .line 10
    aget v14, p3, v14

    sget-object v15, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v15, v15, v13

    and-int/2addr v15, v6

    add-int/2addr v14, v15

    shr-int/2addr v6, v13

    sub-int/2addr v7, v13

    :goto_3
    if-ge v7, v2, :cond_4

    add-int/lit8 v5, v5, -0x1

    .line 11
    iget-object v13, v1, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v15, v4, 0x1

    aget-byte v4, v13, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v7

    or-int/2addr v6, v4

    add-int/lit8 v7, v7, 0x8

    move v4, v15

    goto :goto_3

    :cond_4
    and-int v13, v6, v11

    add-int v15, p6, v13

    mul-int/lit8 v15, v15, 0x3

    .line 12
    aget v17, p5, v15

    :goto_4
    add-int/lit8 v19, v15, 0x1

    .line 13
    aget v19, p5, v19

    shr-int v6, v6, v19

    sub-int v7, v7, v19

    and-int/lit8 v19, v17, 0x10

    if-eqz v19, :cond_e

    and-int/lit8 v13, v17, 0xf

    move/from16 v20, v4

    move/from16 v19, v5

    :goto_5
    if-ge v7, v13, :cond_5

    add-int/lit8 v19, v19, -0x1

    .line 14
    iget-object v4, v1, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v5, v20, 0x1

    aget-byte v4, v4, v20

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v7

    or-int/2addr v6, v4

    add-int/lit8 v7, v7, 0x8

    move/from16 v20, v5

    goto :goto_5

    :cond_5
    add-int/2addr v15, v3

    .line 15
    aget v4, p5, v15

    sget-object v5, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v5, v5, v13

    and-int/2addr v5, v6

    add-int/2addr v4, v5

    shr-int v21, v6, v13

    sub-int v22, v7, v13

    sub-int v23, v9, v14

    if-lt v8, v4, :cond_7

    sub-int v4, v8, v4

    sub-int v5, v8, v4

    if-lez v5, :cond_6

    if-le v3, v5, :cond_6

    .line 16
    iget-object v5, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    add-int/lit8 v6, v8, 0x1

    add-int/lit8 v7, v4, 0x1

    aget-byte v9, v5, v4

    aput-byte v9, v5, v8

    add-int/2addr v8, v3

    add-int/2addr v4, v3

    .line 17
    aget-byte v7, v5, v7

    aput-byte v7, v5, v6

    :goto_6
    add-int/lit8 v14, v14, -0x2

    goto :goto_9

    .line 18
    :cond_6
    iget-object v5, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    invoke-static {v5, v4, v5, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v8, v3

    add-int/2addr v4, v3

    goto :goto_6

    :cond_7
    sub-int v4, v8, v4

    .line 19
    :cond_8
    iget v5, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    add-int/2addr v4, v5

    if-ltz v4, :cond_8

    sub-int/2addr v5, v4

    if-le v14, v5, :cond_b

    sub-int/2addr v14, v5

    sub-int v6, v8, v4

    if-lez v6, :cond_a

    if-le v5, v6, :cond_a

    .line 20
    :goto_7
    iget-object v6, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    add-int/lit8 v7, v8, 0x1

    add-int/lit8 v9, v4, 0x1

    aget-byte v4, v6, v4

    aput-byte v4, v6, v8

    add-int/lit8 v5, v5, -0x1

    move v8, v7

    if-nez v5, :cond_9

    goto :goto_8

    :cond_9
    move v4, v9

    goto :goto_7

    .line 21
    :cond_a
    iget-object v6, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    invoke-static {v6, v4, v6, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v8, v5

    :goto_8
    const/4 v4, 0x0

    :cond_b
    :goto_9
    sub-int v5, v8, v4

    if-lez v5, :cond_d

    if-le v14, v5, :cond_d

    .line 22
    :goto_a
    iget-object v5, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    add-int/lit8 v6, v8, 0x1

    add-int/lit8 v7, v4, 0x1

    aget-byte v4, v5, v4

    aput-byte v4, v5, v8

    add-int/lit8 v14, v14, -0x1

    move v8, v6

    if-nez v14, :cond_c

    :goto_b
    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v9, v23

    goto/16 :goto_c

    :cond_c
    move v4, v7

    goto :goto_a

    .line 23
    :cond_d
    iget-object v5, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    invoke-static {v5, v4, v5, v8, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v8, v14

    goto :goto_b

    :cond_e
    and-int/lit8 v19, v17, 0x40

    if-nez v19, :cond_f

    add-int/2addr v15, v3

    .line 24
    aget v15, p5, v15

    add-int/2addr v13, v15

    .line 25
    sget-object v15, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v15, v15, v17

    and-int/2addr v15, v6

    add-int/2addr v13, v15

    add-int v15, p6, v13

    mul-int/lit8 v15, v15, 0x3

    .line 26
    aget v17, p5, v15

    goto/16 :goto_4

    .line 27
    :cond_f
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x4

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 28
    iget v2, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    sub-int/2addr v2, v5

    shr-int/lit8 v3, v7, 0x3

    if-ge v3, v2, :cond_10

    move v2, v3

    :cond_10
    add-int/2addr v5, v2

    sub-int/2addr v4, v2

    shl-int/lit8 v2, v2, 0x3

    sub-int/2addr v7, v2

    .line 29
    iput v6, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v7, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 30
    iput v5, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v5, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v5, v4, v5

    int-to-long v5, v5

    add-long/2addr v2, v5

    iput-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v4, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 31
    iput v8, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    return v18

    :cond_11
    and-int/lit8 v17, v15, 0x40

    if-nez v17, :cond_14

    add-int/2addr v14, v3

    .line 32
    aget v14, p3, v14

    add-int/2addr v13, v14

    .line 33
    sget-object v14, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v14, v14, v15

    and-int/2addr v14, v6

    add-int/2addr v13, v14

    add-int v14, p4, v13

    mul-int/lit8 v14, v14, 0x3

    .line 34
    aget v15, p3, v14

    if-nez v15, :cond_3

    add-int/lit8 v13, v14, 0x1

    .line 35
    aget v13, p3, v13

    shr-int/2addr v6, v13

    sub-int/2addr v7, v13

    .line 36
    iget-object v13, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    add-int/lit8 v15, v8, 0x1

    add-int/2addr v14, v3

    aget v14, p3, v14

    int-to-byte v14, v14

    aput-byte v14, v13, v8

    goto/16 :goto_2

    :goto_c
    const/16 v13, 0x102

    if-lt v9, v13, :cond_12

    const/16 v13, 0xa

    if-ge v5, v13, :cond_1

    .line 37
    :cond_12
    iget v2, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    sub-int/2addr v2, v5

    shr-int/lit8 v3, v7, 0x3

    if-ge v3, v2, :cond_13

    move v2, v3

    :cond_13
    add-int/2addr v5, v2

    sub-int/2addr v4, v2

    shl-int/lit8 v2, v2, 0x3

    sub-int/2addr v7, v2

    .line 38
    iput v6, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v7, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 39
    iput v5, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v5, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v5, v4, v5

    int-to-long v5, v5

    add-long/2addr v2, v5

    iput-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v4, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 40
    iput v8, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    return v16

    :cond_14
    and-int/lit8 v2, v15, 0x20

    if-eqz v2, :cond_16

    .line 41
    iget v2, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    sub-int/2addr v2, v5

    shr-int/lit8 v3, v7, 0x3

    if-ge v3, v2, :cond_15

    move v2, v3

    :cond_15
    add-int/2addr v5, v2

    sub-int/2addr v4, v2

    shl-int/lit8 v2, v2, 0x3

    sub-int/2addr v7, v2

    .line 42
    iput v6, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v7, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 43
    iput v5, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v5, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v5, v4, v5

    int-to-long v5, v5

    add-long/2addr v2, v5

    iput-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v4, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 44
    iput v8, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    return v10

    .line 45
    :cond_16
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x5

    new-array v3, v3, [J

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 46
    iget v2, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    sub-int/2addr v2, v5

    shr-int/lit8 v3, v7, 0x3

    if-ge v3, v2, :cond_17

    move v2, v3

    :cond_17
    add-int/2addr v5, v2

    sub-int/2addr v4, v2

    shl-int/lit8 v2, v2, 0x3

    sub-int/2addr v7, v2

    .line 47
    iput v6, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v7, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 48
    iput v5, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v5, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v5, v4, v5

    int-to-long v5, v5

    add-long/2addr v2, v5

    iput-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v4, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 49
    iput v8, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    return v18

    nop

    :array_0
    .array-data 8
        0x773599a5830df493L    # 1.741219771761723E266
        -0x4910609f38ba06ebL    # -4.431265943952871E-44
        -0x7f17db783aee1df1L
        0x419340fccf40f205L    # 8.075653181342323E7
    .end array-data

    :array_1
    .array-data 8
        0x7673a1e52744695cL    # 3.863756008595343E262
        0xcf955fa653dd821L
        -0x59d1358b2bda6e17L    # -9.097318880865335E-125
        0x183795904a62f2d1L    # 5.169214226770219E-192
        -0x73b4e0f17944decaL
    .end array-data
.end method

.method public init(II[II[II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/jcraft/jzlib/InfCodes;->mode:I

    .line 3
    .line 4
    int-to-byte p1, p1

    .line 5
    iput-byte p1, p0, Lcom/jcraft/jzlib/InfCodes;->lbits:B

    .line 6
    .line 7
    int-to-byte p1, p2

    .line 8
    iput-byte p1, p0, Lcom/jcraft/jzlib/InfCodes;->dbits:B

    .line 9
    .line 10
    iput-object p3, p0, Lcom/jcraft/jzlib/InfCodes;->ltree:[I

    .line 11
    .line 12
    iput p4, p0, Lcom/jcraft/jzlib/InfCodes;->ltree_index:I

    .line 13
    .line 14
    iput-object p5, p0, Lcom/jcraft/jzlib/InfCodes;->dtree:[I

    .line 15
    .line 16
    iput p6, p0, Lcom/jcraft/jzlib/InfCodes;->dtree_index:I

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    .line 20
    .line 21
    return-void
.end method

.method public proc(I)I
    .locals 20

    move-object/from16 v9, p0

    const/4 v11, 0x5

    const/16 v13, 0x8

    .line 1
    iget-object v0, v9, Lcom/jcraft/jzlib/InfCodes;->z:Lcom/jcraft/jzlib/ZStream;

    iget v1, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-object v2, v9, Lcom/jcraft/jzlib/InfCodes;->s:Lcom/jcraft/jzlib/InfBlocks;

    iget v3, v2, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iget v4, v2, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 2
    iget v5, v2, Lcom/jcraft/jzlib/InfBlocks;->write:I

    iget v6, v2, Lcom/jcraft/jzlib/InfBlocks;->read:I

    const/4 v15, 0x1

    if-ge v5, v6, :cond_0

    sub-int/2addr v6, v5

    sub-int/2addr v6, v15

    goto :goto_0

    :cond_0
    iget v2, v2, Lcom/jcraft/jzlib/InfBlocks;->end:I

    sub-int v6, v2, v5

    :goto_0
    move v2, v1

    move v1, v0

    move/from16 v0, p1

    .line 3
    :goto_1
    iget v7, v9, Lcom/jcraft/jzlib/InfCodes;->mode:I

    const/4 v8, 0x7

    const/4 v10, -0x3

    const/4 v14, 0x0

    packed-switch v7, :pswitch_data_0

    .line 4
    iget-object v0, v9, Lcom/jcraft/jzlib/InfCodes;->s:Lcom/jcraft/jzlib/InfBlocks;

    iput v3, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v4, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 5
    iget-object v3, v9, Lcom/jcraft/jzlib/InfCodes;->z:Lcom/jcraft/jzlib/ZStream;

    iput v1, v3, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v6, v3, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v1, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v1, v2, v1

    int-to-long v10, v1

    add-long/2addr v6, v10

    iput-wide v6, v3, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v2, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 6
    iput v5, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    const/4 v1, -0x2

    .line 7
    invoke-virtual {v0, v1}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    .line 8
    :pswitch_0
    iget-object v0, v9, Lcom/jcraft/jzlib/InfCodes;->s:Lcom/jcraft/jzlib/InfBlocks;

    iput v3, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v4, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 9
    iget-object v3, v9, Lcom/jcraft/jzlib/InfCodes;->z:Lcom/jcraft/jzlib/ZStream;

    iput v1, v3, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v6, v3, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v1, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v1, v2, v1

    int-to-long v11, v1

    add-long/2addr v6, v11

    iput-wide v6, v3, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v2, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 10
    iput v5, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 11
    invoke-virtual {v0, v10}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    :pswitch_1
    if-le v4, v8, :cond_1

    add-int/lit8 v4, v4, -0x8

    add-int/2addr v1, v15

    add-int/lit8 v2, v2, -0x1

    .line 12
    :cond_1
    iget-object v6, v9, Lcom/jcraft/jzlib/InfCodes;->s:Lcom/jcraft/jzlib/InfBlocks;

    iput v5, v6, Lcom/jcraft/jzlib/InfBlocks;->write:I

    invoke-virtual {v6, v0}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    .line 13
    iget-object v5, v9, Lcom/jcraft/jzlib/InfCodes;->s:Lcom/jcraft/jzlib/InfBlocks;

    iget v6, v5, Lcom/jcraft/jzlib/InfBlocks;->write:I

    iget v7, v5, Lcom/jcraft/jzlib/InfBlocks;->read:I

    if-ge v6, v7, :cond_2

    goto :goto_2

    :cond_2
    iget v8, v5, Lcom/jcraft/jzlib/InfBlocks;->end:I

    :goto_2
    if-eq v7, v6, :cond_3

    .line 14
    iput v3, v5, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v4, v5, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 15
    iget-object v3, v9, Lcom/jcraft/jzlib/InfCodes;->z:Lcom/jcraft/jzlib/ZStream;

    iput v1, v3, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v7, v3, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v1, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v1, v2, v1

    int-to-long v10, v1

    add-long/2addr v7, v10

    iput-wide v7, v3, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v2, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 16
    iput v6, v5, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 17
    invoke-virtual {v5, v0}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    .line 18
    :cond_3
    iput v13, v9, Lcom/jcraft/jzlib/InfCodes;->mode:I

    move v5, v6

    .line 19
    :pswitch_2
    iget-object v0, v9, Lcom/jcraft/jzlib/InfCodes;->s:Lcom/jcraft/jzlib/InfBlocks;

    iput v3, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v4, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 20
    iget-object v3, v9, Lcom/jcraft/jzlib/InfCodes;->z:Lcom/jcraft/jzlib/ZStream;

    iput v1, v3, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v6, v3, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v1, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v1, v2, v1

    int-to-long v10, v1

    add-long/2addr v6, v10

    iput-wide v6, v3, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v2, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 21
    iput v5, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 22
    invoke-virtual {v0, v15}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    :pswitch_3
    if-nez v6, :cond_a

    .line 23
    iget-object v7, v9, Lcom/jcraft/jzlib/InfCodes;->s:Lcom/jcraft/jzlib/InfBlocks;

    iget v8, v7, Lcom/jcraft/jzlib/InfBlocks;->end:I

    if-ne v5, v8, :cond_5

    iget v10, v7, Lcom/jcraft/jzlib/InfBlocks;->read:I

    if-eqz v10, :cond_5

    if-lez v10, :cond_4

    sub-int/2addr v10, v15

    move v6, v10

    goto :goto_3

    :cond_4
    move v6, v8

    :goto_3
    const/4 v5, 0x0

    :cond_5
    if-nez v6, :cond_a

    .line 24
    iput v5, v7, Lcom/jcraft/jzlib/InfBlocks;->write:I

    invoke-virtual {v7, v0}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    .line 25
    iget-object v5, v9, Lcom/jcraft/jzlib/InfCodes;->s:Lcom/jcraft/jzlib/InfBlocks;

    iget v6, v5, Lcom/jcraft/jzlib/InfBlocks;->write:I

    iget v7, v5, Lcom/jcraft/jzlib/InfBlocks;->read:I

    if-ge v6, v7, :cond_6

    sub-int v8, v7, v6

    sub-int/2addr v8, v15

    goto :goto_4

    :cond_6
    iget v8, v5, Lcom/jcraft/jzlib/InfBlocks;->end:I

    sub-int/2addr v8, v6

    .line 26
    :goto_4
    iget v10, v5, Lcom/jcraft/jzlib/InfBlocks;->end:I

    if-ne v6, v10, :cond_8

    if-eqz v7, :cond_8

    if-lez v7, :cond_7

    add-int/lit8 v10, v7, -0x1

    :cond_7
    move v8, v10

    const/4 v6, 0x0

    :cond_8
    if-nez v8, :cond_9

    .line 27
    iput v3, v5, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v4, v5, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 28
    iget-object v3, v9, Lcom/jcraft/jzlib/InfCodes;->z:Lcom/jcraft/jzlib/ZStream;

    iput v1, v3, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v7, v3, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v1, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v1, v2, v1

    int-to-long v10, v1

    add-long/2addr v7, v10

    iput-wide v7, v3, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v2, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 29
    iput v6, v5, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 30
    invoke-virtual {v5, v0}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    :cond_9
    move v5, v6

    move v6, v8

    .line 31
    :cond_a
    iget-object v0, v9, Lcom/jcraft/jzlib/InfCodes;->s:Lcom/jcraft/jzlib/InfBlocks;

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    add-int/lit8 v7, v5, 0x1

    iget v8, v9, Lcom/jcraft/jzlib/InfCodes;->lit:I

    int-to-byte v8, v8

    aput-byte v8, v0, v5

    add-int/lit8 v6, v6, -0x1

    .line 32
    iput v14, v9, Lcom/jcraft/jzlib/InfCodes;->mode:I

    move v5, v7

    const/4 v0, 0x0

    goto/16 :goto_1

    .line 33
    :pswitch_4
    iget v7, v9, Lcom/jcraft/jzlib/InfCodes;->get:I

    :goto_5
    if-ge v4, v7, :cond_c

    if-eqz v1, :cond_b

    add-int/lit8 v1, v1, -0x1

    .line 34
    iget-object v0, v9, Lcom/jcraft/jzlib/InfCodes;->z:Lcom/jcraft/jzlib/ZStream;

    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v8, v2, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v4

    or-int/2addr v3, v0

    add-int/2addr v4, v13

    move v2, v8

    const/4 v0, 0x0

    goto :goto_5

    .line 35
    :cond_b
    iget-object v6, v9, Lcom/jcraft/jzlib/InfCodes;->s:Lcom/jcraft/jzlib/InfBlocks;

    iput v3, v6, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v4, v6, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 36
    iget-object v3, v9, Lcom/jcraft/jzlib/InfCodes;->z:Lcom/jcraft/jzlib/ZStream;

    iput v1, v3, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v7, v3, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v1, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v1, v2, v1

    int-to-long v10, v1

    add-long/2addr v7, v10

    iput-wide v7, v3, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v2, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 37
    iput v5, v6, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 38
    invoke-virtual {v6, v0}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    .line 39
    :cond_c
    iget v8, v9, Lcom/jcraft/jzlib/InfCodes;->dist:I

    sget-object v10, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v10, v10, v7

    and-int/2addr v10, v3

    add-int/2addr v8, v10

    iput v8, v9, Lcom/jcraft/jzlib/InfCodes;->dist:I

    shr-int/2addr v3, v7

    sub-int/2addr v4, v7

    .line 40
    iput v11, v9, Lcom/jcraft/jzlib/InfCodes;->mode:I

    .line 41
    :pswitch_5
    iget v7, v9, Lcom/jcraft/jzlib/InfCodes;->dist:I

    sub-int v7, v5, v7

    :goto_6
    if-gez v7, :cond_d

    .line 42
    iget-object v8, v9, Lcom/jcraft/jzlib/InfCodes;->s:Lcom/jcraft/jzlib/InfBlocks;

    iget v8, v8, Lcom/jcraft/jzlib/InfBlocks;->end:I

    add-int/2addr v7, v8

    goto :goto_6

    .line 43
    :cond_d
    :goto_7
    iget v8, v9, Lcom/jcraft/jzlib/InfCodes;->len:I

    if-eqz v8, :cond_16

    if-nez v6, :cond_14

    .line 44
    iget-object v8, v9, Lcom/jcraft/jzlib/InfCodes;->s:Lcom/jcraft/jzlib/InfBlocks;

    iget v10, v8, Lcom/jcraft/jzlib/InfBlocks;->end:I

    if-ne v5, v10, :cond_f

    iget v11, v8, Lcom/jcraft/jzlib/InfBlocks;->read:I

    if-eqz v11, :cond_f

    if-lez v11, :cond_e

    sub-int/2addr v11, v15

    move v6, v11

    goto :goto_8

    :cond_e
    move v6, v10

    :goto_8
    const/4 v5, 0x0

    :cond_f
    if-nez v6, :cond_14

    .line 45
    iput v5, v8, Lcom/jcraft/jzlib/InfBlocks;->write:I

    invoke-virtual {v8, v0}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    .line 46
    iget-object v5, v9, Lcom/jcraft/jzlib/InfCodes;->s:Lcom/jcraft/jzlib/InfBlocks;

    iget v6, v5, Lcom/jcraft/jzlib/InfBlocks;->write:I

    iget v8, v5, Lcom/jcraft/jzlib/InfBlocks;->read:I

    if-ge v6, v8, :cond_10

    sub-int v10, v8, v6

    sub-int/2addr v10, v15

    goto :goto_9

    :cond_10
    iget v10, v5, Lcom/jcraft/jzlib/InfBlocks;->end:I

    sub-int/2addr v10, v6

    .line 47
    :goto_9
    iget v11, v5, Lcom/jcraft/jzlib/InfBlocks;->end:I

    if-ne v6, v11, :cond_12

    if-eqz v8, :cond_12

    if-lez v8, :cond_11

    add-int/lit8 v11, v8, -0x1

    :cond_11
    move v10, v11

    const/4 v6, 0x0

    :cond_12
    if-nez v10, :cond_13

    .line 48
    iput v3, v5, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v4, v5, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 49
    iget-object v3, v9, Lcom/jcraft/jzlib/InfCodes;->z:Lcom/jcraft/jzlib/ZStream;

    iput v1, v3, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v7, v3, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v1, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v1, v2, v1

    int-to-long v10, v1

    add-long/2addr v7, v10

    iput-wide v7, v3, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v2, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 50
    iput v6, v5, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 51
    invoke-virtual {v5, v0}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    :cond_13
    move v5, v6

    move v6, v10

    .line 52
    :cond_14
    iget-object v8, v9, Lcom/jcraft/jzlib/InfCodes;->s:Lcom/jcraft/jzlib/InfBlocks;

    iget-object v10, v8, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    add-int/lit8 v11, v5, 0x1

    add-int/lit8 v12, v7, 0x1

    aget-byte v7, v10, v7

    aput-byte v7, v10, v5

    add-int/lit8 v6, v6, -0x1

    .line 53
    iget v5, v8, Lcom/jcraft/jzlib/InfBlocks;->end:I

    if-ne v12, v5, :cond_15

    const/4 v7, 0x0

    goto :goto_a

    :cond_15
    move v7, v12

    .line 54
    :goto_a
    iget v5, v9, Lcom/jcraft/jzlib/InfCodes;->len:I

    sub-int/2addr v5, v15

    iput v5, v9, Lcom/jcraft/jzlib/InfCodes;->len:I

    move v5, v11

    const/4 v11, 0x5

    goto :goto_7

    .line 55
    :cond_16
    iput v14, v9, Lcom/jcraft/jzlib/InfCodes;->mode:I

    :goto_b
    const/4 v11, 0x5

    goto/16 :goto_1

    .line 56
    :pswitch_6
    iget v7, v9, Lcom/jcraft/jzlib/InfCodes;->get:I

    :goto_c
    if-ge v4, v7, :cond_18

    if-eqz v1, :cond_17

    add-int/lit8 v1, v1, -0x1

    .line 57
    iget-object v0, v9, Lcom/jcraft/jzlib/InfCodes;->z:Lcom/jcraft/jzlib/ZStream;

    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v8, v2, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v4

    or-int/2addr v3, v0

    add-int/2addr v4, v13

    move v2, v8

    const/4 v0, 0x0

    goto :goto_c

    .line 58
    :cond_17
    iget-object v6, v9, Lcom/jcraft/jzlib/InfCodes;->s:Lcom/jcraft/jzlib/InfBlocks;

    iput v3, v6, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v4, v6, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 59
    iget-object v3, v9, Lcom/jcraft/jzlib/InfCodes;->z:Lcom/jcraft/jzlib/ZStream;

    iput v1, v3, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v7, v3, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v1, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v1, v2, v1

    int-to-long v10, v1

    add-long/2addr v7, v10

    iput-wide v7, v3, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v2, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 60
    iput v5, v6, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 61
    invoke-virtual {v6, v0}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    .line 62
    :cond_18
    iget v8, v9, Lcom/jcraft/jzlib/InfCodes;->len:I

    sget-object v11, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v11, v11, v7

    and-int/2addr v11, v3

    add-int/2addr v8, v11

    iput v8, v9, Lcom/jcraft/jzlib/InfCodes;->len:I

    shr-int/2addr v3, v7

    sub-int/2addr v4, v7

    .line 63
    iget-byte v7, v9, Lcom/jcraft/jzlib/InfCodes;->dbits:B

    iput v7, v9, Lcom/jcraft/jzlib/InfCodes;->need:I

    .line 64
    iget-object v7, v9, Lcom/jcraft/jzlib/InfCodes;->dtree:[I

    iput-object v7, v9, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    .line 65
    iget v7, v9, Lcom/jcraft/jzlib/InfCodes;->dtree_index:I

    iput v7, v9, Lcom/jcraft/jzlib/InfCodes;->tree_index:I

    const/4 v7, 0x3

    .line 66
    iput v7, v9, Lcom/jcraft/jzlib/InfCodes;->mode:I

    .line 67
    :pswitch_7
    iget v7, v9, Lcom/jcraft/jzlib/InfCodes;->need:I

    :goto_d
    if-ge v4, v7, :cond_1a

    if-eqz v1, :cond_19

    add-int/lit8 v1, v1, -0x1

    .line 68
    iget-object v0, v9, Lcom/jcraft/jzlib/InfCodes;->z:Lcom/jcraft/jzlib/ZStream;

    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v8, v2, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v4

    or-int/2addr v3, v0

    add-int/2addr v4, v13

    move v2, v8

    const/4 v0, 0x0

    goto :goto_d

    .line 69
    :cond_19
    iget-object v6, v9, Lcom/jcraft/jzlib/InfCodes;->s:Lcom/jcraft/jzlib/InfBlocks;

    iput v3, v6, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v4, v6, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 70
    iget-object v3, v9, Lcom/jcraft/jzlib/InfCodes;->z:Lcom/jcraft/jzlib/ZStream;

    iput v1, v3, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v7, v3, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v1, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v1, v2, v1

    int-to-long v10, v1

    add-long/2addr v7, v10

    iput-wide v7, v3, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v2, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 71
    iput v5, v6, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 72
    invoke-virtual {v6, v0}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    .line 73
    :cond_1a
    iget v8, v9, Lcom/jcraft/jzlib/InfCodes;->tree_index:I

    sget-object v11, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v7, v11, v7

    and-int/2addr v7, v3

    add-int/2addr v8, v7

    const/4 v7, 0x3

    mul-int/lit8 v8, v8, 0x3

    .line 74
    iget-object v7, v9, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    add-int/lit8 v11, v8, 0x1

    aget v11, v7, v11

    shr-int/2addr v3, v11

    sub-int/2addr v4, v11

    .line 75
    aget v11, v7, v8

    and-int/lit8 v12, v11, 0x10

    if-eqz v12, :cond_1b

    and-int/lit8 v10, v11, 0xf

    .line 76
    iput v10, v9, Lcom/jcraft/jzlib/InfCodes;->get:I

    const/4 v12, 0x2

    add-int/2addr v8, v12

    .line 77
    aget v7, v7, v8

    iput v7, v9, Lcom/jcraft/jzlib/InfCodes;->dist:I

    const/4 v7, 0x4

    .line 78
    iput v7, v9, Lcom/jcraft/jzlib/InfCodes;->mode:I

    goto/16 :goto_b

    :cond_1b
    const/4 v12, 0x2

    and-int/lit8 v14, v11, 0x40

    if-nez v14, :cond_1c

    .line 79
    iput v11, v9, Lcom/jcraft/jzlib/InfCodes;->need:I

    const/4 v10, 0x3

    .line 80
    div-int/lit8 v11, v8, 0x3

    add-int/2addr v8, v12

    aget v7, v7, v8

    add-int/2addr v11, v7

    iput v11, v9, Lcom/jcraft/jzlib/InfCodes;->tree_index:I

    goto/16 :goto_b

    :cond_1c
    const/16 v11, 0x9

    .line 81
    iput v11, v9, Lcom/jcraft/jzlib/InfCodes;->mode:I

    .line 82
    iget-object v0, v9, Lcom/jcraft/jzlib/InfCodes;->z:Lcom/jcraft/jzlib/ZStream;

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v12, 0x4

    new-array v7, v12, [J

    fill-array-data v7, :array_0

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 83
    iget-object v0, v9, Lcom/jcraft/jzlib/InfCodes;->s:Lcom/jcraft/jzlib/InfBlocks;

    iput v3, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v4, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 84
    iget-object v3, v9, Lcom/jcraft/jzlib/InfCodes;->z:Lcom/jcraft/jzlib/ZStream;

    iput v1, v3, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v6, v3, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v1, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v1, v2, v1

    int-to-long v11, v1

    add-long/2addr v6, v11

    iput-wide v6, v3, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v2, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 85
    iput v5, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 86
    invoke-virtual {v0, v10}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    :pswitch_8
    const/16 v11, 0x9

    const/4 v12, 0x7

    goto/16 :goto_11

    :pswitch_9
    const/16 v11, 0x9

    const/4 v12, 0x4

    const/16 v7, 0x102

    if-lt v6, v7, :cond_20

    const/16 v7, 0xa

    if-lt v1, v7, :cond_20

    .line 87
    iget-object v7, v9, Lcom/jcraft/jzlib/InfCodes;->s:Lcom/jcraft/jzlib/InfBlocks;

    iput v3, v7, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v4, v7, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 88
    iget-object v6, v9, Lcom/jcraft/jzlib/InfCodes;->z:Lcom/jcraft/jzlib/ZStream;

    iput v1, v6, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v0, v6, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v3, v6, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v3, v2, v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    iput-wide v0, v6, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v2, v6, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 89
    iput v5, v7, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 90
    iget-byte v1, v9, Lcom/jcraft/jzlib/InfCodes;->lbits:B

    iget-byte v2, v9, Lcom/jcraft/jzlib/InfCodes;->dbits:B

    iget-object v3, v9, Lcom/jcraft/jzlib/InfCodes;->ltree:[I

    iget v4, v9, Lcom/jcraft/jzlib/InfCodes;->ltree_index:I

    iget-object v5, v9, Lcom/jcraft/jzlib/InfCodes;->dtree:[I

    iget v0, v9, Lcom/jcraft/jzlib/InfCodes;->dtree_index:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v18, v6

    move/from16 v6, v16

    const/4 v12, 0x7

    move-object/from16 v8, v18

    invoke-virtual/range {v0 .. v8}, Lcom/jcraft/jzlib/InfCodes;->inflate_fast(II[II[IILcom/jcraft/jzlib/InfBlocks;Lcom/jcraft/jzlib/ZStream;)I

    move-result v0

    .line 91
    iget-object v1, v9, Lcom/jcraft/jzlib/InfCodes;->z:Lcom/jcraft/jzlib/ZStream;

    iget v2, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    iget v1, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-object v3, v9, Lcom/jcraft/jzlib/InfCodes;->s:Lcom/jcraft/jzlib/InfBlocks;

    iget v4, v3, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iget v5, v3, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 92
    iget v6, v3, Lcom/jcraft/jzlib/InfBlocks;->write:I

    iget v7, v3, Lcom/jcraft/jzlib/InfBlocks;->read:I

    if-ge v6, v7, :cond_1d

    sub-int/2addr v7, v6

    sub-int/2addr v7, v15

    move v3, v7

    goto :goto_e

    :cond_1d
    iget v3, v3, Lcom/jcraft/jzlib/InfBlocks;->end:I

    sub-int/2addr v3, v6

    :goto_e
    if-eqz v0, :cond_1f

    if-ne v0, v15, :cond_1e

    const/4 v8, 0x7

    goto :goto_f

    :cond_1e
    const/16 v8, 0x9

    .line 93
    :goto_f
    iput v8, v9, Lcom/jcraft/jzlib/InfCodes;->mode:I

    const/4 v11, 0x5

    move/from16 v19, v6

    move v6, v3

    move v3, v4

    move v4, v5

    move/from16 v5, v19

    goto/16 :goto_1

    :cond_1f
    move/from16 v19, v6

    move v6, v3

    move v3, v4

    move v4, v5

    move/from16 v5, v19

    goto :goto_10

    :cond_20
    const/4 v12, 0x7

    .line 94
    :goto_10
    iget-byte v7, v9, Lcom/jcraft/jzlib/InfCodes;->lbits:B

    iput v7, v9, Lcom/jcraft/jzlib/InfCodes;->need:I

    .line 95
    iget-object v7, v9, Lcom/jcraft/jzlib/InfCodes;->ltree:[I

    iput-object v7, v9, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    .line 96
    iget v7, v9, Lcom/jcraft/jzlib/InfCodes;->ltree_index:I

    iput v7, v9, Lcom/jcraft/jzlib/InfCodes;->tree_index:I

    .line 97
    iput v15, v9, Lcom/jcraft/jzlib/InfCodes;->mode:I

    .line 98
    :goto_11
    iget v7, v9, Lcom/jcraft/jzlib/InfCodes;->need:I

    :goto_12
    if-ge v4, v7, :cond_22

    if-eqz v1, :cond_21

    add-int/lit8 v1, v1, -0x1

    .line 99
    iget-object v0, v9, Lcom/jcraft/jzlib/InfCodes;->z:Lcom/jcraft/jzlib/ZStream;

    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v8, v2, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v4

    or-int/2addr v3, v0

    add-int/2addr v4, v13

    move v2, v8

    const/4 v0, 0x0

    goto :goto_12

    .line 100
    :cond_21
    iget-object v6, v9, Lcom/jcraft/jzlib/InfCodes;->s:Lcom/jcraft/jzlib/InfBlocks;

    iput v3, v6, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v4, v6, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 101
    iget-object v3, v9, Lcom/jcraft/jzlib/InfCodes;->z:Lcom/jcraft/jzlib/ZStream;

    iput v1, v3, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v7, v3, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v1, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v1, v2, v1

    int-to-long v10, v1

    add-long/2addr v7, v10

    iput-wide v7, v3, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v2, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 102
    iput v5, v6, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 103
    invoke-virtual {v6, v0}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    .line 104
    :cond_22
    iget v8, v9, Lcom/jcraft/jzlib/InfCodes;->tree_index:I

    sget-object v14, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v7, v14, v7

    and-int/2addr v7, v3

    add-int/2addr v8, v7

    const/4 v7, 0x3

    mul-int/lit8 v8, v8, 0x3

    .line 105
    iget-object v7, v9, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    add-int/lit8 v14, v8, 0x1

    aget v14, v7, v14

    ushr-int/2addr v3, v14

    sub-int/2addr v4, v14

    .line 106
    aget v14, v7, v8

    if-nez v14, :cond_23

    const/4 v13, 0x2

    add-int/2addr v8, v13

    .line 107
    aget v7, v7, v8

    iput v7, v9, Lcom/jcraft/jzlib/InfCodes;->lit:I

    const/4 v7, 0x6

    .line 108
    iput v7, v9, Lcom/jcraft/jzlib/InfCodes;->mode:I

    :goto_13
    const/16 v17, 0x3

    goto :goto_14

    :cond_23
    const/4 v13, 0x2

    and-int/lit8 v17, v14, 0x10

    if-eqz v17, :cond_24

    and-int/lit8 v10, v14, 0xf

    .line 109
    iput v10, v9, Lcom/jcraft/jzlib/InfCodes;->get:I

    add-int/2addr v8, v13

    .line 110
    aget v7, v7, v8

    iput v7, v9, Lcom/jcraft/jzlib/InfCodes;->len:I

    .line 111
    iput v13, v9, Lcom/jcraft/jzlib/InfCodes;->mode:I

    goto :goto_13

    :cond_24
    and-int/lit8 v17, v14, 0x40

    if-nez v17, :cond_25

    .line 112
    iput v14, v9, Lcom/jcraft/jzlib/InfCodes;->need:I

    const/16 v17, 0x3

    .line 113
    div-int/lit8 v10, v8, 0x3

    add-int/2addr v8, v13

    aget v7, v7, v8

    add-int/2addr v10, v7

    iput v10, v9, Lcom/jcraft/jzlib/InfCodes;->tree_index:I

    goto :goto_14

    :cond_25
    const/16 v17, 0x3

    and-int/lit8 v7, v14, 0x20

    if-eqz v7, :cond_26

    .line 114
    iput v12, v9, Lcom/jcraft/jzlib/InfCodes;->mode:I

    :goto_14
    const/4 v11, 0x5

    const/16 v13, 0x8

    goto/16 :goto_1

    .line 115
    :cond_26
    iput v11, v9, Lcom/jcraft/jzlib/InfCodes;->mode:I

    .line 116
    iget-object v0, v9, Lcom/jcraft/jzlib/InfCodes;->z:Lcom/jcraft/jzlib/ZStream;

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v7, 0x5

    new-array v7, v7, [J

    fill-array-data v7, :array_1

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 117
    iget-object v0, v9, Lcom/jcraft/jzlib/InfCodes;->s:Lcom/jcraft/jzlib/InfBlocks;

    iput v3, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v4, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 118
    iget-object v3, v9, Lcom/jcraft/jzlib/InfCodes;->z:Lcom/jcraft/jzlib/ZStream;

    iput v1, v3, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v6, v3, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v1, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v1, v2, v1

    int-to-long v11, v1

    add-long/2addr v6, v11

    iput-wide v6, v3, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v2, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 119
    iput v5, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 120
    invoke-virtual {v0, v10}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 8
        -0x48770bf1d1199cf9L    # -3.580628890574767E-41
        -0x78ae04838b0e90e3L
        -0x44250399a9b416abL    # -2.2857977362027834E-20
        -0x26393acd0fd4053aL    # -3.0104896696596937E124
    .end array-data

    :array_1
    .array-data 8
        0x77ce5989cd660741L    # 1.2526259119441372E269
        -0xcc1426ce9d6f4faL
        0x281ea0ef35c01871L
        0x13bdf049520d080L
        0x52ee93448d5d8ed7L    # 3.114145716498392E91
    .end array-data
.end method
