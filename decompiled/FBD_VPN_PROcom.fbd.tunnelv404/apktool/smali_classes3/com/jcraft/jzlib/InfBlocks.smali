.class final Lcom/jcraft/jzlib/InfBlocks;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BAD:I = 0x9

.field private static final BTREE:I = 0x4

.field private static final CODES:I = 0x6

.field private static final DONE:I = 0x8

.field private static final DRY:I = 0x7

.field private static final DTREE:I = 0x5

.field private static final LENS:I = 0x1

.field private static final MANY:I = 0x5a0

.field private static final STORED:I = 0x2

.field private static final TABLE:I = 0x3

.field private static final TYPE:I = 0x0

.field private static final Z_BUF_ERROR:I = -0x5

.field private static final Z_DATA_ERROR:I = -0x3

.field private static final Z_ERRNO:I = -0x1

.field private static final Z_MEM_ERROR:I = -0x4

.field private static final Z_NEED_DICT:I = 0x2

.field private static final Z_OK:I = 0x0

.field private static final Z_STREAM_END:I = 0x1

.field private static final Z_STREAM_ERROR:I = -0x2

.field private static final Z_VERSION_ERROR:I = -0x6

.field static final border:[I

.field private static final inflate_mask:[I


# instance fields
.field bb:[I

.field bd:[I

.field bitb:I

.field bitk:I

.field bl:[I

.field blens:[I

.field private check:Z

.field private final codes:Lcom/jcraft/jzlib/InfCodes;

.field end:I

.field hufts:[I

.field index:I

.field private final inftree:Lcom/jcraft/jzlib/InfTree;

.field last:I

.field left:I

.field mode:I

.field read:I

.field table:I

.field tb:[I

.field td:[[I

.field tdi:[I

.field tl:[[I

.field tli:[I

.field window:[B

.field write:I

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
    sput-object v0, Lcom/jcraft/jzlib/InfBlocks;->inflate_mask:[I

    .line 9
    .line 10
    const/16 v0, 0x13

    .line 11
    .line 12
    new-array v0, v0, [I

    .line 13
    .line 14
    fill-array-data v0, :array_1

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/jcraft/jzlib/InfBlocks;->border:[I

    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
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

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    :array_1
    .array-data 4
        0x10
        0x11
        0x12
        0x0
        0x8
        0x7
        0x9
        0x6
        0xa
        0x5
        0xb
        0x4
        0xc
        0x3
        0xd
        0x2
        0xe
        0x1
        0xf
    .end array-data
.end method

.method public constructor <init>(Lcom/jcraft/jzlib/ZStream;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v1, v0, [I

    .line 6
    .line 7
    iput-object v1, p0, Lcom/jcraft/jzlib/InfBlocks;->bb:[I

    .line 8
    .line 9
    new-array v1, v0, [I

    .line 10
    .line 11
    iput-object v1, p0, Lcom/jcraft/jzlib/InfBlocks;->tb:[I

    .line 12
    .line 13
    new-array v1, v0, [I

    .line 14
    .line 15
    iput-object v1, p0, Lcom/jcraft/jzlib/InfBlocks;->bl:[I

    .line 16
    .line 17
    new-array v1, v0, [I

    .line 18
    .line 19
    iput-object v1, p0, Lcom/jcraft/jzlib/InfBlocks;->bd:[I

    .line 20
    .line 21
    new-array v1, v0, [[I

    .line 22
    .line 23
    iput-object v1, p0, Lcom/jcraft/jzlib/InfBlocks;->tl:[[I

    .line 24
    .line 25
    new-array v1, v0, [[I

    .line 26
    .line 27
    iput-object v1, p0, Lcom/jcraft/jzlib/InfBlocks;->td:[[I

    .line 28
    .line 29
    new-array v1, v0, [I

    .line 30
    .line 31
    iput-object v1, p0, Lcom/jcraft/jzlib/InfBlocks;->tli:[I

    .line 32
    .line 33
    new-array v1, v0, [I

    .line 34
    .line 35
    iput-object v1, p0, Lcom/jcraft/jzlib/InfBlocks;->tdi:[I

    .line 36
    .line 37
    new-instance v1, Lcom/jcraft/jzlib/InfTree;

    .line 38
    .line 39
    invoke-direct {v1}, Lcom/jcraft/jzlib/InfTree;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/jcraft/jzlib/InfBlocks;->inftree:Lcom/jcraft/jzlib/InfTree;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    .line 45
    .line 46
    new-instance v1, Lcom/jcraft/jzlib/InfCodes;

    .line 47
    .line 48
    invoke-direct {v1, p1, p0}, Lcom/jcraft/jzlib/InfCodes;-><init>(Lcom/jcraft/jzlib/ZStream;Lcom/jcraft/jzlib/InfBlocks;)V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lcom/jcraft/jzlib/InfBlocks;->codes:Lcom/jcraft/jzlib/InfCodes;

    .line 52
    .line 53
    const/16 v1, 0x10e0

    .line 54
    .line 55
    new-array v1, v1, [I

    .line 56
    .line 57
    iput-object v1, p0, Lcom/jcraft/jzlib/InfBlocks;->hufts:[I

    .line 58
    .line 59
    new-array v1, p2, [B

    .line 60
    .line 61
    iput-object v1, p0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    .line 62
    .line 63
    iput p2, p0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    .line 64
    .line 65
    iget-object p1, p1, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    .line 66
    .line 67
    iget p1, p1, Lcom/jcraft/jzlib/Inflate;->wrap:I

    .line 68
    .line 69
    const/4 p2, 0x0

    .line 70
    if-nez p1, :cond_0

    .line 71
    .line 72
    const/4 v0, 0x0

    .line 73
    :cond_0
    iput-boolean v0, p0, Lcom/jcraft/jzlib/InfBlocks;->check:Z

    .line 74
    .line 75
    iput p2, p0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/jcraft/jzlib/InfBlocks;->reset()V

    .line 78
    .line 79
    .line 80
    return-void
.end method


# virtual methods
.method public free()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jzlib/InfBlocks;->reset()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    .line 6
    .line 7
    iput-object v0, p0, Lcom/jcraft/jzlib/InfBlocks;->hufts:[I

    .line 8
    .line 9
    return-void
.end method

.method public inflate_flush(I)I
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    .line 2
    .line 3
    iget v1, v0, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 4
    .line 5
    iget v2, p0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    .line 6
    .line 7
    iget v3, p0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 8
    .line 9
    if-gt v2, v3, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v3, p0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    .line 13
    .line 14
    :goto_0
    sub-int/2addr v3, v2

    .line 15
    iget v4, v0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 16
    .line 17
    if-le v3, v4, :cond_1

    .line 18
    .line 19
    move v3, v4

    .line 20
    :cond_1
    const/4 v5, -0x5

    .line 21
    const/4 v6, 0x0

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    if-ne p1, v5, :cond_2

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    :cond_2
    sub-int/2addr v4, v3

    .line 28
    iput v4, v0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 29
    .line 30
    iget-wide v7, v0, Lcom/jcraft/jzlib/ZStream;->total_out:J

    .line 31
    .line 32
    int-to-long v9, v3

    .line 33
    add-long/2addr v7, v9

    .line 34
    iput-wide v7, v0, Lcom/jcraft/jzlib/ZStream;->total_out:J

    .line 35
    .line 36
    iget-boolean v4, p0, Lcom/jcraft/jzlib/InfBlocks;->check:Z

    .line 37
    .line 38
    if-eqz v4, :cond_3

    .line 39
    .line 40
    if-lez v3, :cond_3

    .line 41
    .line 42
    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->adler:Lcom/jcraft/jzlib/Checksum;

    .line 43
    .line 44
    iget-object v4, p0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    .line 45
    .line 46
    invoke-interface {v0, v4, v2, v3}, Lcom/jcraft/jzlib/Checksum;->update([BII)V

    .line 47
    .line 48
    .line 49
    :cond_3
    iget-object v0, p0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    .line 50
    .line 51
    iget-object v4, p0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    .line 52
    .line 53
    iget-object v4, v4, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    .line 54
    .line 55
    invoke-static {v0, v2, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    .line 57
    .line 58
    add-int/2addr v1, v3

    .line 59
    add-int/2addr v2, v3

    .line 60
    iget v0, p0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    .line 61
    .line 62
    if-ne v2, v0, :cond_8

    .line 63
    .line 64
    iget v2, p0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 65
    .line 66
    if-ne v2, v0, :cond_4

    .line 67
    .line 68
    iput v6, p0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 69
    .line 70
    :cond_4
    iget v0, p0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 71
    .line 72
    iget-object v2, p0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    .line 73
    .line 74
    iget v3, v2, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 75
    .line 76
    if-le v0, v3, :cond_5

    .line 77
    .line 78
    move v0, v3

    .line 79
    :cond_5
    if-eqz v0, :cond_6

    .line 80
    .line 81
    if-ne p1, v5, :cond_6

    .line 82
    .line 83
    const/4 p1, 0x0

    .line 84
    :cond_6
    sub-int/2addr v3, v0

    .line 85
    iput v3, v2, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 86
    .line 87
    iget-wide v3, v2, Lcom/jcraft/jzlib/ZStream;->total_out:J

    .line 88
    .line 89
    int-to-long v7, v0

    .line 90
    add-long/2addr v3, v7

    .line 91
    iput-wide v3, v2, Lcom/jcraft/jzlib/ZStream;->total_out:J

    .line 92
    .line 93
    iget-boolean v3, p0, Lcom/jcraft/jzlib/InfBlocks;->check:Z

    .line 94
    .line 95
    if-eqz v3, :cond_7

    .line 96
    .line 97
    if-lez v0, :cond_7

    .line 98
    .line 99
    iget-object v2, v2, Lcom/jcraft/jzlib/ZStream;->adler:Lcom/jcraft/jzlib/Checksum;

    .line 100
    .line 101
    iget-object v3, p0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    .line 102
    .line 103
    invoke-interface {v2, v3, v6, v0}, Lcom/jcraft/jzlib/Checksum;->update([BII)V

    .line 104
    .line 105
    .line 106
    :cond_7
    iget-object v2, p0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    .line 107
    .line 108
    iget-object v3, p0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    .line 109
    .line 110
    iget-object v3, v3, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    .line 111
    .line 112
    invoke-static {v2, v6, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    .line 114
    .line 115
    add-int/2addr v1, v0

    .line 116
    move v2, v0

    .line 117
    :cond_8
    iget-object v0, p0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    .line 118
    .line 119
    iput v1, v0, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 120
    .line 121
    iput v2, p0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    .line 122
    .line 123
    return p1
.end method

.method public proc(I)I
    .locals 33

    move-object/from16 v0, p0

    const/4 v2, 0x4

    const/16 v3, 0xe

    const/4 v5, -0x3

    const/4 v7, 0x5

    const/16 v8, 0x8

    const/4 v9, -0x1

    .line 1
    iget-object v10, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    iget v11, v10, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    iget v10, v10, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget v12, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iget v13, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 2
    iget v14, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    iget v15, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    const/4 v1, 0x1

    if-ge v14, v15, :cond_0

    sub-int/2addr v15, v14

    sub-int/2addr v15, v1

    goto :goto_0

    :cond_0
    iget v15, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    sub-int/2addr v15, v14

    :goto_0
    move/from16 v16, v15

    move v15, v14

    move v14, v13

    move v13, v12

    move v12, v11

    move v11, v10

    move/from16 v10, p1

    .line 3
    :goto_1
    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_0

    .line 4
    iput v13, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v14, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 5
    iget-object v1, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    iput v11, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v4, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v12, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v12, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 6
    iput v15, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    const/4 v1, -0x2

    .line 7
    invoke-virtual {v0, v1}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v1

    return v1

    .line 8
    :pswitch_0
    iput v13, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v14, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 9
    iget-object v1, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    iput v11, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v4, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v12, v4

    int-to-long v6, v4

    add-long/2addr v2, v6

    iput-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v12, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 10
    iput v15, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 11
    invoke-virtual {v0, v5}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v1

    return v1

    :goto_2
    :pswitch_1
    if-ge v14, v3, :cond_2

    if-eqz v11, :cond_1

    add-int/2addr v11, v9

    .line 12
    iget-object v4, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    iget-object v4, v4, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v10, v12, 0x1

    aget-byte v4, v4, v12

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v14

    or-int/2addr v13, v4

    add-int/2addr v14, v8

    move v12, v10

    const/4 v10, 0x0

    goto :goto_2

    .line 13
    :cond_1
    iput v13, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v14, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 14
    iget-object v1, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    iput v11, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 15
    iget-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v4, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v12, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v12, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 16
    iput v15, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 17
    invoke-virtual {v0, v10}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v1

    return v1

    :cond_2
    and-int/lit16 v4, v13, 0x3fff

    .line 18
    iput v4, v0, Lcom/jcraft/jzlib/InfBlocks;->table:I

    and-int/lit8 v5, v13, 0x1f

    const/16 v8, 0x1d

    if-gt v5, v8, :cond_3

    shr-int/2addr v4, v7

    and-int/lit8 v4, v4, 0x1f

    if-le v4, v8, :cond_4

    :cond_3
    const/16 v1, 0x9

    goto/16 :goto_12

    :cond_4
    add-int/lit16 v5, v5, 0x102

    add-int/2addr v5, v4

    .line 19
    iget-object v4, v0, Lcom/jcraft/jzlib/InfBlocks;->blens:[I

    if-eqz v4, :cond_6

    array-length v4, v4

    if-ge v4, v5, :cond_5

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_7

    .line 20
    iget-object v8, v0, Lcom/jcraft/jzlib/InfBlocks;->blens:[I

    aput v6, v8, v4

    add-int/2addr v4, v1

    goto :goto_3

    .line 21
    :cond_6
    :goto_4
    new-array v4, v5, [I

    iput-object v4, v0, Lcom/jcraft/jzlib/InfBlocks;->blens:[I

    :cond_7
    ushr-int/2addr v13, v3

    add-int/lit8 v14, v14, -0xe

    .line 22
    iput v6, v0, Lcom/jcraft/jzlib/InfBlocks;->index:I

    .line 23
    iput v2, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    .line 24
    :goto_5
    :pswitch_2
    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->index:I

    iget v5, v0, Lcom/jcraft/jzlib/InfBlocks;->table:I

    ushr-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v2

    if-ge v4, v5, :cond_a

    const/4 v4, 0x3

    :goto_6
    if-ge v14, v4, :cond_9

    if-eqz v11, :cond_8

    add-int/2addr v11, v9

    .line 25
    iget-object v4, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    iget-object v4, v4, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v5, v12, 0x1

    aget-byte v4, v4, v12

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v14

    or-int/2addr v13, v4

    const/16 v4, 0x8

    add-int/2addr v14, v4

    move v12, v5

    const/4 v4, 0x3

    const/4 v10, 0x0

    goto :goto_6

    .line 26
    :cond_8
    iput v13, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v14, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 27
    iget-object v1, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    iput v11, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 28
    iget-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v4, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v12, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v12, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 29
    iput v15, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 30
    invoke-virtual {v0, v10}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v1

    return v1

    .line 31
    :cond_9
    iget-object v4, v0, Lcom/jcraft/jzlib/InfBlocks;->blens:[I

    sget-object v5, Lcom/jcraft/jzlib/InfBlocks;->border:[I

    iget v8, v0, Lcom/jcraft/jzlib/InfBlocks;->index:I

    add-int/lit8 v2, v8, 0x1

    iput v2, v0, Lcom/jcraft/jzlib/InfBlocks;->index:I

    aget v2, v5, v8

    const/4 v5, 0x7

    and-int/lit8 v8, v13, 0x7

    aput v8, v4, v2

    const/4 v2, 0x3

    ushr-int/2addr v13, v2

    const/4 v2, -0x3

    add-int/2addr v14, v2

    const/4 v2, 0x4

    goto :goto_5

    .line 32
    :cond_a
    :goto_7
    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->index:I

    const/16 v4, 0x13

    if-ge v2, v4, :cond_b

    .line 33
    iget-object v4, v0, Lcom/jcraft/jzlib/InfBlocks;->blens:[I

    sget-object v5, Lcom/jcraft/jzlib/InfBlocks;->border:[I

    add-int/lit8 v8, v2, 0x1

    iput v8, v0, Lcom/jcraft/jzlib/InfBlocks;->index:I

    aget v2, v5, v2

    aput v6, v4, v2

    goto :goto_7

    .line 34
    :cond_b
    iget-object v2, v0, Lcom/jcraft/jzlib/InfBlocks;->bb:[I

    const/4 v4, 0x7

    aput v4, v2, v6

    .line 35
    iget-object v4, v0, Lcom/jcraft/jzlib/InfBlocks;->inftree:Lcom/jcraft/jzlib/InfTree;

    iget-object v5, v0, Lcom/jcraft/jzlib/InfBlocks;->blens:[I

    iget-object v8, v0, Lcom/jcraft/jzlib/InfBlocks;->tb:[I

    iget-object v3, v0, Lcom/jcraft/jzlib/InfBlocks;->hufts:[I

    iget-object v1, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v2

    move-object/from16 v20, v8

    move-object/from16 v21, v3

    move-object/from16 v22, v1

    invoke-virtual/range {v17 .. v22}, Lcom/jcraft/jzlib/InfTree;->inflate_trees_bits([I[I[I[ILcom/jcraft/jzlib/ZStream;)I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v2, -0x3

    if-ne v1, v2, :cond_c

    const/4 v2, 0x0

    .line 36
    iput-object v2, v0, Lcom/jcraft/jzlib/InfBlocks;->blens:[I

    const/16 v2, 0x9

    .line 37
    iput v2, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    .line 38
    :cond_c
    iput v13, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v14, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 39
    iget-object v2, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    iput v11, v2, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v3, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v5, v2, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v5, v12, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v12, v2, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 40
    iput v15, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 41
    invoke-virtual {v0, v1}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v1

    return v1

    .line 42
    :cond_d
    iput v6, v0, Lcom/jcraft/jzlib/InfBlocks;->index:I

    .line 43
    iput v7, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    .line 44
    :goto_8
    :pswitch_3
    iget v1, v0, Lcom/jcraft/jzlib/InfBlocks;->table:I

    .line 45
    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->index:I

    and-int/lit8 v3, v1, 0x1f

    add-int/lit16 v3, v3, 0x102

    shr-int/lit8 v4, v1, 0x5

    and-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    if-lt v2, v3, :cond_14

    .line 46
    iget-object v2, v0, Lcom/jcraft/jzlib/InfBlocks;->tb:[I

    aput v9, v2, v6

    .line 47
    iget-object v2, v0, Lcom/jcraft/jzlib/InfBlocks;->bl:[I

    const/16 v3, 0x9

    aput v3, v2, v6

    .line 48
    iget-object v3, v0, Lcom/jcraft/jzlib/InfBlocks;->bd:[I

    const/4 v4, 0x6

    aput v4, v3, v6

    .line 49
    iget-object v4, v0, Lcom/jcraft/jzlib/InfBlocks;->inftree:Lcom/jcraft/jzlib/InfTree;

    and-int/lit8 v5, v1, 0x1f

    add-int/lit16 v5, v5, 0x101

    shr-int/2addr v1, v7

    and-int/lit8 v1, v1, 0x1f

    const/4 v8, 0x1

    add-int/lit8 v25, v1, 0x1

    iget-object v1, v0, Lcom/jcraft/jzlib/InfBlocks;->blens:[I

    iget-object v8, v0, Lcom/jcraft/jzlib/InfBlocks;->tli:[I

    iget-object v7, v0, Lcom/jcraft/jzlib/InfBlocks;->tdi:[I

    iget-object v9, v0, Lcom/jcraft/jzlib/InfBlocks;->hufts:[I

    iget-object v6, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    move-object/from16 v23, v4

    move/from16 v24, v5

    move-object/from16 v26, v1

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v29, v8

    move-object/from16 v30, v7

    move-object/from16 v31, v9

    move-object/from16 v32, v6

    invoke-virtual/range {v23 .. v32}, Lcom/jcraft/jzlib/InfTree;->inflate_trees_dynamic(II[I[I[I[I[I[ILcom/jcraft/jzlib/ZStream;)I

    move-result v1

    if-eqz v1, :cond_f

    const/4 v2, -0x3

    if-ne v1, v2, :cond_e

    const/4 v2, 0x0

    .line 50
    iput-object v2, v0, Lcom/jcraft/jzlib/InfBlocks;->blens:[I

    const/16 v2, 0x9

    .line 51
    iput v2, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    .line 52
    :cond_e
    iput v13, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v14, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 53
    iget-object v2, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    iput v11, v2, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v3, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v5, v2, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v5, v12, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v12, v2, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 54
    iput v15, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 55
    invoke-virtual {v0, v1}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v1

    return v1

    .line 56
    :cond_f
    iget-object v2, v0, Lcom/jcraft/jzlib/InfBlocks;->codes:Lcom/jcraft/jzlib/InfCodes;

    iget-object v1, v0, Lcom/jcraft/jzlib/InfBlocks;->bl:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    iget-object v4, v0, Lcom/jcraft/jzlib/InfBlocks;->bd:[I

    aget v4, v4, v3

    iget-object v7, v0, Lcom/jcraft/jzlib/InfBlocks;->hufts:[I

    iget-object v5, v0, Lcom/jcraft/jzlib/InfBlocks;->tli:[I

    aget v6, v5, v3

    iget-object v5, v0, Lcom/jcraft/jzlib/InfBlocks;->tdi:[I

    aget v8, v5, v3

    move v3, v1

    move-object v5, v7

    invoke-virtual/range {v2 .. v8}, Lcom/jcraft/jzlib/InfCodes;->init(II[II[II)V

    const/4 v1, 0x6

    .line 57
    iput v1, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    .line 58
    :pswitch_4
    iput v13, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v14, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 59
    iget-object v1, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    iput v11, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v4, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v12, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v12, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 60
    iput v15, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 61
    iget-object v1, v0, Lcom/jcraft/jzlib/InfBlocks;->codes:Lcom/jcraft/jzlib/InfCodes;

    invoke-virtual {v1, v10}, Lcom/jcraft/jzlib/InfCodes;->proc(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_10

    .line 62
    invoke-virtual {v0, v1}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v1

    return v1

    .line 63
    :cond_10
    iget-object v1, v0, Lcom/jcraft/jzlib/InfBlocks;->codes:Lcom/jcraft/jzlib/InfCodes;

    iget-object v2, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    invoke-virtual {v1, v2}, Lcom/jcraft/jzlib/InfCodes;->free(Lcom/jcraft/jzlib/ZStream;)V

    .line 64
    iget-object v1, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    iget v12, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    iget v11, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget v13, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iget v14, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 65
    iget v15, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    iget v1, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    if-ge v15, v1, :cond_11

    sub-int/2addr v1, v15

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_9
    move/from16 v16, v1

    goto :goto_a

    :cond_11
    iget v1, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    sub-int/2addr v1, v15

    goto :goto_9

    .line 66
    :goto_a
    iget v1, v0, Lcom/jcraft/jzlib/InfBlocks;->last:I

    if-nez v1, :cond_12

    const/4 v1, 0x0

    .line 67
    iput v1, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    :goto_b
    const/4 v1, 0x1

    const/4 v2, 0x4

    const/16 v3, 0xe

    const/4 v5, -0x3

    const/4 v7, 0x5

    const/16 v8, 0x8

    const/4 v9, -0x1

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_12
    const/4 v1, 0x7

    .line 68
    iput v1, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    const/4 v10, 0x0

    .line 69
    :pswitch_5
    iput v15, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 70
    invoke-virtual {v0, v10}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v1

    .line 71
    iget v15, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    if-eq v2, v15, :cond_13

    .line 72
    iput v13, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v14, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 73
    iget-object v2, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    iput v11, v2, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v3, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v5, v2, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v5, v12, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v12, v2, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 74
    iput v15, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 75
    invoke-virtual {v0, v1}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v1

    return v1

    :cond_13
    const/16 v1, 0x8

    .line 76
    iput v1, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    .line 77
    :pswitch_6
    iput v13, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v14, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 78
    iget-object v1, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    iput v11, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v4, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v12, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v12, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 79
    iput v15, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    const/4 v1, 0x1

    .line 80
    invoke-virtual {v0, v1}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v1

    return v1

    :cond_14
    const/4 v1, 0x1

    .line 81
    iget-object v2, v0, Lcom/jcraft/jzlib/InfBlocks;->bb:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    :goto_c
    if-ge v14, v2, :cond_16

    if-eqz v11, :cond_15

    const/4 v3, -0x1

    add-int/2addr v11, v3

    .line 82
    iget-object v3, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    iget-object v3, v3, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    add-int/lit8 v4, v12, 0x1

    aget-byte v1, v3, v12

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v14

    or-int/2addr v13, v1

    const/16 v1, 0x8

    add-int/2addr v14, v1

    move v12, v4

    const/4 v1, 0x1

    const/4 v10, 0x0

    goto :goto_c

    .line 83
    :cond_15
    iput v13, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v14, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 84
    iget-object v1, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    iput v11, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 85
    iget-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v4, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v12, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v12, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 86
    iput v15, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 87
    invoke-virtual {v0, v10}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v1

    return v1

    .line 88
    :cond_16
    iget-object v1, v0, Lcom/jcraft/jzlib/InfBlocks;->tb:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    .line 89
    iget-object v3, v0, Lcom/jcraft/jzlib/InfBlocks;->hufts:[I

    sget-object v4, Lcom/jcraft/jzlib/InfBlocks;->inflate_mask:[I

    aget v2, v4, v2

    and-int/2addr v2, v13

    add-int/2addr v2, v1

    const/4 v5, 0x3

    mul-int/lit8 v2, v2, 0x3

    const/4 v6, 0x1

    add-int/2addr v2, v6

    aget v2, v3, v2

    .line 90
    aget v4, v4, v2

    and-int/2addr v4, v13

    add-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x3

    const/4 v4, 0x2

    add-int/2addr v1, v4

    aget v1, v3, v1

    const/16 v3, 0x10

    if-ge v1, v3, :cond_17

    ushr-int v3, v13, v2

    sub-int/2addr v14, v2

    .line 91
    iget-object v2, v0, Lcom/jcraft/jzlib/InfBlocks;->blens:[I

    iget v4, v0, Lcom/jcraft/jzlib/InfBlocks;->index:I

    const/4 v5, 0x1

    add-int/lit8 v6, v4, 0x1

    iput v6, v0, Lcom/jcraft/jzlib/InfBlocks;->index:I

    aput v1, v2, v4

    move v13, v3

    const/16 v4, 0xe

    goto/16 :goto_10

    :cond_17
    const/16 v3, 0x12

    const/16 v4, 0xe

    if-ne v1, v3, :cond_18

    const/4 v5, 0x7

    goto :goto_d

    :cond_18
    add-int/lit8 v5, v1, -0xe

    :goto_d
    if-ne v1, v3, :cond_19

    const/16 v3, 0xb

    goto :goto_e

    :cond_19
    const/4 v3, 0x3

    :goto_e
    add-int v6, v2, v5

    if-ge v14, v6, :cond_1b

    if-eqz v11, :cond_1a

    const/4 v6, -0x1

    add-int/2addr v11, v6

    .line 92
    iget-object v6, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    iget-object v6, v6, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    const/4 v7, 0x1

    add-int/lit8 v8, v12, 0x1

    aget-byte v6, v6, v12

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v14

    or-int/2addr v13, v6

    const/16 v6, 0x8

    add-int/2addr v14, v6

    move v12, v8

    const/4 v10, 0x0

    goto :goto_e

    .line 93
    :cond_1a
    iput v13, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v14, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 94
    iget-object v1, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    iput v11, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 95
    iget-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v4, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v12, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v12, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 96
    iput v15, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 97
    invoke-virtual {v0, v10}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v1

    return v1

    :cond_1b
    ushr-int v6, v13, v2

    sub-int/2addr v14, v2

    .line 98
    sget-object v2, Lcom/jcraft/jzlib/InfBlocks;->inflate_mask:[I

    aget v2, v2, v5

    and-int/2addr v2, v6

    add-int/2addr v3, v2

    ushr-int v2, v6, v5

    sub-int/2addr v14, v5

    .line 99
    iget v5, v0, Lcom/jcraft/jzlib/InfBlocks;->index:I

    .line 100
    iget v6, v0, Lcom/jcraft/jzlib/InfBlocks;->table:I

    add-int v7, v5, v3

    and-int/lit8 v8, v6, 0x1f

    add-int/lit16 v8, v8, 0x102

    const/4 v9, 0x5

    shr-int/2addr v6, v9

    and-int/lit8 v6, v6, 0x1f

    add-int/2addr v8, v6

    if-gt v7, v8, :cond_1c

    const/16 v6, 0x10

    const/4 v7, 0x1

    if-ne v1, v6, :cond_1d

    if-ge v5, v7, :cond_1d

    :cond_1c
    const/4 v1, 0x0

    goto :goto_11

    :cond_1d
    if-ne v1, v6, :cond_1e

    .line 101
    iget-object v1, v0, Lcom/jcraft/jzlib/InfBlocks;->blens:[I

    add-int/lit8 v6, v5, -0x1

    aget v1, v1, v6

    goto :goto_f

    :cond_1e
    const/4 v1, 0x0

    .line 102
    :goto_f
    iget-object v6, v0, Lcom/jcraft/jzlib/InfBlocks;->blens:[I

    add-int/lit8 v8, v5, 0x1

    aput v1, v6, v5

    const/4 v5, -0x1

    add-int/2addr v3, v5

    if-nez v3, :cond_1f

    .line 103
    iput v8, v0, Lcom/jcraft/jzlib/InfBlocks;->index:I

    move v13, v2

    :goto_10
    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v9, -0x1

    goto/16 :goto_8

    :cond_1f
    move v5, v8

    const/4 v7, 0x1

    goto :goto_f

    .line 104
    :goto_11
    iput-object v1, v0, Lcom/jcraft/jzlib/InfBlocks;->blens:[I

    const/16 v1, 0x9

    .line 105
    iput v1, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    .line 106
    iget-object v1, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x5

    new-array v4, v4, [J

    fill-array-data v4, :array_0

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 107
    iput v2, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v14, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 108
    iget-object v1, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    iput v11, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v4, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v12, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v12, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 109
    iput v15, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    const/4 v1, -0x3

    .line 110
    invoke-virtual {v0, v1}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v1

    return v1

    .line 111
    :goto_12
    iput v1, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    .line 112
    iget-object v1, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x6

    new-array v3, v3, [J

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 113
    iput v13, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v14, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 114
    iget-object v1, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    iput v11, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v4, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v12, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v12, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 115
    iput v15, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    const/4 v1, -0x3

    .line 116
    invoke-virtual {v0, v1}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v1

    return v1

    :pswitch_7
    const/16 v4, 0xe

    if-nez v11, :cond_20

    .line 117
    iput v13, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v14, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 118
    iget-object v1, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    iput v11, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v4, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v12, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v12, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 119
    iput v15, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 120
    invoke-virtual {v0, v10}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v1

    return v1

    :cond_20
    if-nez v16, :cond_26

    .line 121
    iget v1, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    if-ne v15, v1, :cond_22

    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    if-eqz v2, :cond_22

    if-lez v2, :cond_21

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move/from16 v16, v2

    goto :goto_13

    :cond_21
    move/from16 v16, v1

    :goto_13
    const/4 v15, 0x0

    :cond_22
    if-nez v16, :cond_26

    .line 122
    iput v15, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 123
    invoke-virtual {v0, v10}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v1

    .line 124
    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    iget v3, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    if-ge v2, v3, :cond_23

    sub-int v5, v3, v2

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    goto :goto_14

    :cond_23
    const/4 v6, 0x1

    iget v5, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    sub-int/2addr v5, v2

    .line 125
    :goto_14
    iget v7, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    if-ne v2, v7, :cond_25

    if-eqz v3, :cond_25

    if-lez v3, :cond_24

    add-int/lit8 v7, v3, -0x1

    :cond_24
    move/from16 v16, v7

    const/4 v15, 0x0

    goto :goto_15

    :cond_25
    move v15, v2

    move/from16 v16, v5

    :goto_15
    if-nez v16, :cond_26

    .line 126
    iput v13, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v14, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 127
    iget-object v2, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    iput v11, v2, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v3, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v5, v2, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v5, v12, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v12, v2, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 128
    iput v15, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 129
    invoke-virtual {v0, v1}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v1

    return v1

    :cond_26
    move/from16 v1, v16

    .line 130
    iget v2, v0, Lcom/jcraft/jzlib/InfBlocks;->left:I

    if-le v2, v11, :cond_27

    move v2, v11

    :cond_27
    if-le v2, v1, :cond_28

    move v2, v1

    .line 131
    :cond_28
    iget-object v3, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    iget-object v3, v3, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget-object v5, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    invoke-static {v3, v12, v5, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v12, v2

    sub-int/2addr v11, v2

    add-int/2addr v15, v2

    sub-int v16, v1, v2

    .line 132
    iget v1, v0, Lcom/jcraft/jzlib/InfBlocks;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/jcraft/jzlib/InfBlocks;->left:I

    if-eqz v1, :cond_29

    goto/16 :goto_b

    .line 133
    :cond_29
    iget v1, v0, Lcom/jcraft/jzlib/InfBlocks;->last:I

    if-eqz v1, :cond_2a

    const/4 v1, 0x7

    goto :goto_16

    :cond_2a
    const/4 v1, 0x0

    :goto_16
    iput v1, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    goto/16 :goto_b

    :pswitch_8
    const/16 v4, 0xe

    :goto_17
    const/16 v1, 0x20

    if-ge v14, v1, :cond_2c

    if-eqz v11, :cond_2b

    const/4 v1, -0x1

    add-int/2addr v11, v1

    .line 134
    iget-object v1, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    iget-object v1, v1, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    const/4 v2, 0x1

    add-int/lit8 v3, v12, 0x1

    aget-byte v1, v1, v12

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v14

    or-int/2addr v13, v1

    const/16 v1, 0x8

    add-int/2addr v14, v1

    move v12, v3

    const/4 v10, 0x0

    goto :goto_17

    .line 135
    :cond_2b
    iput v13, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v14, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 136
    iget-object v1, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    iput v11, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 137
    iget-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v4, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v12, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v12, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 138
    iput v15, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 139
    invoke-virtual {v0, v10}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v1

    return v1

    :cond_2c
    not-int v1, v13

    const/16 v2, 0x10

    ushr-int/2addr v1, v2

    const v2, 0xffff

    and-int/2addr v1, v2

    and-int/2addr v2, v13

    if-eq v1, v2, :cond_2d

    const/16 v1, 0x9

    .line 140
    iput v1, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    .line 141
    iget-object v1, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x5

    new-array v3, v3, [J

    fill-array-data v3, :array_2

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 142
    iput v13, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v14, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 143
    iget-object v1, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    iput v11, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v4, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v12, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v12, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 144
    iput v15, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    const/4 v1, -0x3

    .line 145
    invoke-virtual {v0, v1}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v1

    return v1

    :cond_2d
    const/4 v3, 0x5

    .line 146
    iput v2, v0, Lcom/jcraft/jzlib/InfBlocks;->left:I

    if-eqz v2, :cond_2e

    const/4 v1, 0x2

    goto :goto_18

    .line 147
    :cond_2e
    iget v1, v0, Lcom/jcraft/jzlib/InfBlocks;->last:I

    if-eqz v1, :cond_2f

    const/4 v1, 0x7

    goto :goto_18

    :cond_2f
    const/4 v1, 0x0

    :goto_18
    iput v1, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/16 v3, 0xe

    const/4 v5, -0x3

    const/4 v7, 0x5

    const/16 v8, 0x8

    const/4 v9, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto/16 :goto_1

    :pswitch_9
    const/4 v3, 0x5

    const/16 v4, 0xe

    const/4 v1, 0x3

    :goto_19
    if-ge v14, v1, :cond_31

    if-eqz v11, :cond_30

    const/4 v1, -0x1

    add-int/2addr v11, v1

    .line 148
    iget-object v2, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    iget-object v2, v2, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    const/4 v5, 0x1

    add-int/lit8 v6, v12, 0x1

    aget-byte v2, v2, v12

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v14

    or-int/2addr v13, v2

    const/16 v2, 0x8

    add-int/2addr v14, v2

    move v12, v6

    const/4 v1, 0x3

    const/4 v10, 0x0

    goto :goto_19

    .line 149
    :cond_30
    iput v13, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v14, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 150
    iget-object v1, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    iput v11, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 151
    iget-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v4, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v12, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v12, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 152
    iput v15, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 153
    invoke-virtual {v0, v10}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v1

    return v1

    :cond_31
    const/4 v1, -0x1

    const/16 v2, 0x8

    const/4 v5, 0x7

    and-int/lit8 v6, v13, 0x7

    const/4 v5, 0x1

    and-int/lit8 v7, v13, 0x1

    .line 154
    iput v7, v0, Lcom/jcraft/jzlib/InfBlocks;->last:I

    ushr-int/2addr v6, v5

    if-eqz v6, :cond_35

    if-eq v6, v5, :cond_34

    const/4 v5, 0x2

    if-eq v6, v5, :cond_33

    const/4 v5, 0x3

    if-eq v6, v5, :cond_32

    move v6, v13

    const/4 v1, 0x3

    const/4 v5, 0x4

    :goto_1a
    const/4 v7, -0x3

    const/4 v8, 0x6

    :goto_1b
    const/4 v9, 0x7

    const/4 v13, 0x1

    goto/16 :goto_1c

    :cond_32
    ushr-int/lit8 v1, v13, 0x3

    const/4 v2, -0x3

    add-int/2addr v14, v2

    const/16 v2, 0x9

    .line 155
    iput v2, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    .line 156
    iget-object v2, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v5, 0x4

    new-array v4, v5, [J

    fill-array-data v4, :array_3

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 157
    iput v1, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    iput v14, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 158
    iget-object v1, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    iput v11, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iget v4, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int v4, v12, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput v12, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 159
    iput v15, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    const/4 v6, -0x3

    .line 160
    invoke-virtual {v0, v6}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(I)I

    move-result v1

    return v1

    :cond_33
    const/4 v5, 0x4

    const/4 v6, -0x3

    const/4 v7, 0x3

    ushr-int/lit8 v8, v13, 0x3

    add-int/2addr v14, v6

    .line 161
    iput v7, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    move v6, v8

    const/4 v1, 0x3

    goto :goto_1a

    :cond_34
    const/4 v5, 0x4

    .line 162
    iget-object v6, v0, Lcom/jcraft/jzlib/InfBlocks;->bl:[I

    iget-object v7, v0, Lcom/jcraft/jzlib/InfBlocks;->bd:[I

    iget-object v8, v0, Lcom/jcraft/jzlib/InfBlocks;->tl:[[I

    iget-object v9, v0, Lcom/jcraft/jzlib/InfBlocks;->td:[[I

    iget-object v1, v0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    invoke-static {v6, v7, v8, v9, v1}, Lcom/jcraft/jzlib/InfTree;->inflate_trees_fixed([I[I[[I[[ILcom/jcraft/jzlib/ZStream;)I

    .line 163
    iget-object v1, v0, Lcom/jcraft/jzlib/InfBlocks;->codes:Lcom/jcraft/jzlib/InfCodes;

    iget-object v6, v0, Lcom/jcraft/jzlib/InfBlocks;->bl:[I

    const/4 v7, 0x0

    aget v24, v6, v7

    iget-object v6, v0, Lcom/jcraft/jzlib/InfBlocks;->bd:[I

    aget v25, v6, v7

    iget-object v6, v0, Lcom/jcraft/jzlib/InfBlocks;->tl:[[I

    aget-object v26, v6, v7

    iget-object v6, v0, Lcom/jcraft/jzlib/InfBlocks;->td:[[I

    aget-object v28, v6, v7

    const/16 v29, 0x0

    const/16 v27, 0x0

    move-object/from16 v23, v1

    invoke-virtual/range {v23 .. v29}, Lcom/jcraft/jzlib/InfCodes;->init(II[II[II)V

    const/4 v1, 0x3

    ushr-int/lit8 v6, v13, 0x3

    const/4 v7, -0x3

    add-int/2addr v14, v7

    const/4 v8, 0x6

    .line 164
    iput v8, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    goto :goto_1b

    :cond_35
    const/4 v1, 0x3

    const/4 v5, 0x4

    const/4 v7, -0x3

    const/4 v8, 0x6

    ushr-int/lit8 v6, v13, 0x3

    add-int/2addr v14, v7

    const/4 v9, 0x7

    and-int/lit8 v13, v14, 0x7

    ushr-int/2addr v6, v13

    sub-int/2addr v14, v13

    const/4 v13, 0x1

    .line 165
    iput v13, v0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    :goto_1c
    move v13, v6

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/16 v3, 0xe

    const/4 v5, -0x3

    const/4 v7, 0x5

    const/16 v8, 0x8

    const/4 v9, -0x1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 8
        -0x38cb7c59efc729d5L    # -1.0651608972422367E35
        -0x8f37eacce4194cfL
        -0x7dc00c963f8f5551L    # -7.633548660081906E-298
        -0x28ff541f7a9340b6L
        0x1b8d04372a42c7aL
    .end array-data

    :array_1
    .array-data 8
        -0x281fa2c20cdce2a5L    # -2.0149479845775237E115
        -0x2f2759956ee53a08L    # -2.922785138508088E81
        0xd72d6ac856f9835L
        0x55dd8a40d4a99b96L    # 4.234379236111156E105
        -0x79a3cd5e5928aeb0L
        0x5a756acaca037f07L    # 5.799091956924509E127
    .end array-data

    :array_2
    .array-data 8
        0x53e9ccbfd076d300L    # 1.7221263215555513E96
        -0x506e1cb7efaed5f3L    # -1.5086153750001122E-79
        -0x384ddce5daf4f41eL    # -2.4108364591687613E37
        -0x16ae6b5db64275c7L    # -2.102668808433817E199
        -0x7f87e1b0a67fd2f4L
    .end array-data

    :array_3
    .array-data 8
        -0x75585c9078cb440bL
        0x49fcd439dd25b4fdL    # 2.633352643487654E48
        -0x35fbbe748149e064L    # -3.700528498553205E48
        -0x3f5b15bae81ac8cfL    # -2677.134947932231
    .end array-data
.end method

.method public reset()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/jcraft/jzlib/InfBlocks;->codes:Lcom/jcraft/jzlib/InfCodes;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/jcraft/jzlib/InfCodes;->free(Lcom/jcraft/jzlib/ZStream;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    .line 15
    .line 16
    iput v0, p0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 17
    .line 18
    iput v0, p0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    .line 19
    .line 20
    iput v0, p0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 21
    .line 22
    iput v0, p0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/jcraft/jzlib/InfBlocks;->check:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/jcraft/jzlib/InfBlocks;->z:Lcom/jcraft/jzlib/ZStream;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->adler:Lcom/jcraft/jzlib/Checksum;

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/jcraft/jzlib/Checksum;->reset()V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public set_dictionary([BII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    .line 6
    .line 7
    iput p3, p0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 8
    .line 9
    iput p3, p0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    .line 10
    .line 11
    return-void
.end method

.method public sync_point()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/jcraft/jzlib/InfBlocks;->mode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
.end method
