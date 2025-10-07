.class final Lcom/jcraft/jzlib/Inflate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jzlib/Inflate$Return;
    }
.end annotation


# static fields
.field private static final BAD:I = 0xd

.field private static final BLOCKS:I = 0x7

.field private static final CHECK1:I = 0xb

.field private static final CHECK2:I = 0xa

.field private static final CHECK3:I = 0x9

.field private static final CHECK4:I = 0x8

.field private static final COMMENT:I = 0x15

.field private static final DICT0:I = 0x6

.field private static final DICT1:I = 0x5

.field private static final DICT2:I = 0x4

.field private static final DICT3:I = 0x3

.field private static final DICT4:I = 0x2

.field private static final DONE:I = 0xc

.field private static final EXLEN:I = 0x12

.field private static final EXTRA:I = 0x13

.field private static final FLAG:I = 0x1

.field private static final FLAGS:I = 0x17

.field private static final HCRC:I = 0x16

.field private static final HEAD:I = 0xe

.field static final INFLATE_ANY:I = 0x40000000

.field private static final LENGTH:I = 0xf

.field private static final MAX_WBITS:I = 0xf

.field private static final METHOD:I = 0x0

.field private static final NAME:I = 0x14

.field private static final OS:I = 0x11

.field private static final PRESET_DICT:I = 0x20

.field private static final TIME:I = 0x10

.field private static final Z_BUF_ERROR:I = -0x5

.field private static final Z_DATA_ERROR:I = -0x3

.field private static final Z_DEFLATED:I = 0x8

.field private static final Z_ERRNO:I = -0x1

.field static final Z_FINISH:I = 0x4

.field static final Z_FULL_FLUSH:I = 0x3

.field private static final Z_MEM_ERROR:I = -0x4

.field private static final Z_NEED_DICT:I = 0x2

.field static final Z_NO_FLUSH:I = 0x0

.field private static final Z_OK:I = 0x0

.field static final Z_PARTIAL_FLUSH:I = 0x1

.field private static final Z_STREAM_END:I = 0x1

.field private static final Z_STREAM_ERROR:I = -0x2

.field static final Z_SYNC_FLUSH:I = 0x2

.field private static final Z_VERSION_ERROR:I = -0x6

.field private static mark:[B


# instance fields
.field blocks:Lcom/jcraft/jzlib/InfBlocks;

.field private crcbuf:[B

.field private flags:I

.field gheader:Lcom/jcraft/jzlib/GZIPHeader;

.field marker:I

.field method:I

.field mode:I

.field need:J

.field private need_bytes:I

.field private tmp_string:Ljava/io/ByteArrayOutputStream;

.field was:J

.field wbits:I

.field wrap:I

.field private final z:Lcom/jcraft/jzlib/ZStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/jcraft/jzlib/Inflate;->mark:[B

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 1
        0x0t
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Lcom/jcraft/jzlib/ZStream;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/jcraft/jzlib/Inflate;->was:J

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/jcraft/jzlib/Inflate;->need_bytes:I

    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    new-array v0, v0, [B

    .line 13
    .line 14
    iput-object v0, p0, Lcom/jcraft/jzlib/Inflate;->crcbuf:[B

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/jcraft/jzlib/Inflate;->gheader:Lcom/jcraft/jzlib/GZIPHeader;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/jcraft/jzlib/Inflate;->tmp_string:Ljava/io/ByteArrayOutputStream;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    .line 22
    .line 23
    return-void
.end method

.method private checksum(IJ)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, p1, :cond_0

    .line 4
    .line 5
    iget-object v2, p0, Lcom/jcraft/jzlib/Inflate;->crcbuf:[B

    .line 6
    .line 7
    const-wide/16 v3, 0xff

    .line 8
    .line 9
    and-long/2addr v3, p2

    .line 10
    long-to-int v4, v3

    .line 11
    int-to-byte v3, v4

    .line 12
    aput-byte v3, v2, v1

    .line 13
    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    shr-long/2addr p2, v2

    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p2, p0, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    .line 21
    .line 22
    iget-object p2, p2, Lcom/jcraft/jzlib/ZStream;->adler:Lcom/jcraft/jzlib/Checksum;

    .line 23
    .line 24
    iget-object p3, p0, Lcom/jcraft/jzlib/Inflate;->crcbuf:[B

    .line 25
    .line 26
    invoke-interface {p2, p3, v0, p1}, Lcom/jcraft/jzlib/Checksum;->update([BII)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private readBytes(II)I
    .locals 5

    .line 13
    iget-object v0, p0, Lcom/jcraft/jzlib/Inflate;->tmp_string:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jzlib/Inflate;->tmp_string:Ljava/io/ByteArrayOutputStream;

    .line 15
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/jcraft/jzlib/Inflate;->need:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 16
    iget-object v0, p0, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    iget v1, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-eqz v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 17
    iput v1, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v1, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 18
    iget-object p1, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v1, p1, v0

    .line 19
    iget-object v1, p0, Lcom/jcraft/jzlib/Inflate;->tmp_string:Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 20
    iget-object p1, p0, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    iget-object v0, p1, Lcom/jcraft/jzlib/ZStream;->adler:Lcom/jcraft/jzlib/Checksum;

    iget-object v1, p1, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget p1, p1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    invoke-interface {v0, v1, p1, v2}, Lcom/jcraft/jzlib/Checksum;->update([BII)V

    .line 21
    iget-object p1, p0, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    iget v0, p1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 22
    iget-wide v0, p0, Lcom/jcraft/jzlib/Inflate;->need:J

    sub-long/2addr v0, v3

    iput-wide v0, p0, Lcom/jcraft/jzlib/Inflate;->need:J

    move p1, p2

    goto :goto_0

    .line 23
    :cond_1
    new-instance p2, Lcom/jcraft/jzlib/Inflate$Return;

    invoke-direct {p2, p0, p1}, Lcom/jcraft/jzlib/Inflate$Return;-><init>(Lcom/jcraft/jzlib/Inflate;I)V

    throw p2

    :cond_2
    return p1
.end method

.method private readBytes(III)I
    .locals 7

    .line 1
    iget v0, p0, Lcom/jcraft/jzlib/Inflate;->need_bytes:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iput p1, p0, Lcom/jcraft/jzlib/Inflate;->need_bytes:I

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/jcraft/jzlib/Inflate;->need:J

    .line 4
    :cond_0
    :goto_0
    iget v0, p0, Lcom/jcraft/jzlib/Inflate;->need_bytes:I

    if-lez v0, :cond_2

    .line 5
    iget-object v2, p0, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    iget v3, v2, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-eqz v3, :cond_1

    add-int/lit8 v3, v3, -0x1

    .line 6
    iput v3, v2, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v3, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 7
    iget-wide v3, p0, Lcom/jcraft/jzlib/Inflate;->need:J

    iget-object p2, v2, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v5, v2, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v2, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte p2, p2, v5

    and-int/lit16 p2, p2, 0xff

    sub-int v2, p1, v0

    mul-int/lit8 v2, v2, 0x8

    shl-int/2addr p2, v2

    int-to-long v5, p2

    or-long v2, v3, v5

    iput-wide v2, p0, Lcom/jcraft/jzlib/Inflate;->need:J

    add-int/lit8 v0, v0, -0x1

    .line 8
    iput v0, p0, Lcom/jcraft/jzlib/Inflate;->need_bytes:I

    move p2, p3

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Lcom/jcraft/jzlib/Inflate$Return;

    invoke-direct {p1, p0, p2}, Lcom/jcraft/jzlib/Inflate$Return;-><init>(Lcom/jcraft/jzlib/Inflate;I)V

    throw p1

    :cond_2
    const/4 p3, 0x2

    if-ne p1, p3, :cond_3

    .line 10
    iget-wide v2, p0, Lcom/jcraft/jzlib/Inflate;->need:J

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/jcraft/jzlib/Inflate;->need:J

    goto :goto_1

    :cond_3
    const/4 p3, 0x4

    if-ne p1, p3, :cond_4

    .line 11
    iget-wide v2, p0, Lcom/jcraft/jzlib/Inflate;->need:J

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/jcraft/jzlib/Inflate;->need:J

    .line 12
    :cond_4
    :goto_1
    iput v1, p0, Lcom/jcraft/jzlib/Inflate;->need_bytes:I

    return p2
.end method

.method private readString(II)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/Inflate;->tmp_string:Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/jcraft/jzlib/Inflate;->tmp_string:Ljava/io/ByteArrayOutputStream;

    .line 11
    .line 12
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    .line 13
    .line 14
    iget v1, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 15
    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    add-int/lit8 v1, v1, -0x1

    .line 19
    .line 20
    iput v1, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 21
    .line 22
    iget-wide v1, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 23
    .line 24
    const-wide/16 v3, 0x1

    .line 25
    .line 26
    add-long/2addr v1, v3

    .line 27
    iput-wide v1, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 28
    .line 29
    iget-object p1, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 30
    .line 31
    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 32
    .line 33
    aget-byte v1, p1, v0

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    iget-object v3, p0, Lcom/jcraft/jzlib/Inflate;->tmp_string:Ljava/io/ByteArrayOutputStream;

    .line 39
    .line 40
    invoke-virtual {v3, p1, v0, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object p1, p0, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    .line 44
    .line 45
    iget-object v0, p1, Lcom/jcraft/jzlib/ZStream;->adler:Lcom/jcraft/jzlib/Checksum;

    .line 46
    .line 47
    iget-object v3, p1, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 48
    .line 49
    iget p1, p1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 50
    .line 51
    invoke-interface {v0, v3, p1, v2}, Lcom/jcraft/jzlib/Checksum;->update([BII)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    .line 55
    .line 56
    iget v0, p1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 57
    .line 58
    add-int/2addr v0, v2

    .line 59
    iput v0, p1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 60
    .line 61
    if-nez v1, :cond_2

    .line 62
    .line 63
    return p2

    .line 64
    :cond_2
    move p1, p2

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    new-instance p2, Lcom/jcraft/jzlib/Inflate$Return;

    .line 67
    .line 68
    invoke-direct {p2, p0, p1}, Lcom/jcraft/jzlib/Inflate$Return;-><init>(Lcom/jcraft/jzlib/Inflate;I)V

    .line 69
    .line 70
    .line 71
    throw p2
.end method


# virtual methods
.method public getGZIPHeader()Lcom/jcraft/jzlib/GZIPHeader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/Inflate;->gheader:Lcom/jcraft/jzlib/GZIPHeader;

    .line 2
    .line 3
    return-object v0
.end method

.method public inParsingHeader()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x5

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    const/16 v1, 0xe

    .line 16
    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    return v0

    .line 24
    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    .line 25
    return v0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public inflate(I)I
    .locals 29

    move-object/from16 v1, p0

    move/from16 v0, p1

    const/16 v11, 0x8

    const/4 v13, 0x2

    const/4 v14, 0x5

    const/4 v15, 0x1

    .line 1
    iget-object v2, v1, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    const/16 v16, -0x2

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eqz v2, :cond_37

    iget-object v2, v2, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    if-nez v2, :cond_0

    goto/16 :goto_16

    :cond_0
    const/4 v2, -0x5

    if-ne v0, v4, :cond_1

    const/4 v0, -0x5

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v5, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    const v6, 0xffff

    const-wide/32 v21, 0xff00

    const-wide/32 v23, 0xff0000

    const-wide/32 v25, 0xffff

    const/16 v7, 0x10

    const-wide/16 v27, 0x1

    const/16 v10, 0xd

    packed-switch v5, :pswitch_data_0

    return v16

    .line 3
    :pswitch_0
    :try_start_0
    invoke-direct {v1, v13, v2, v0}, Lcom/jcraft/jzlib/Inflate;->readBytes(III)I

    move-result v2
    :try_end_0
    .catch Lcom/jcraft/jzlib/Inflate$Return; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    iget-wide v8, v1, Lcom/jcraft/jzlib/Inflate;->need:J

    long-to-int v5, v8

    and-int v12, v5, v6

    iput v12, v1, Lcom/jcraft/jzlib/Inflate;->flags:I

    and-int/lit16 v12, v5, 0xff

    if-eq v12, v11, :cond_2

    .line 5
    iget-object v5, v1, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v14, [J

    fill-array-data v7, :array_0

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 6
    iput v10, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    goto :goto_0

    :cond_2
    const v12, 0xe000

    and-int/2addr v12, v5

    if-eqz v12, :cond_3

    .line 7
    iget-object v5, v1, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v4, [J

    fill-array-data v7, :array_1

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 8
    iput v10, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    goto :goto_0

    :cond_3
    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_4

    .line 9
    invoke-direct {v1, v13, v8, v9}, Lcom/jcraft/jzlib/Inflate;->checksum(IJ)V

    .line 10
    :cond_4
    iput v7, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 11
    iget v0, v2, Lcom/jcraft/jzlib/Inflate$Return;->r:I

    return v0

    .line 12
    :goto_1
    :pswitch_1
    :try_start_1
    invoke-direct {v1, v4, v2, v0}, Lcom/jcraft/jzlib/Inflate;->readBytes(III)I

    move-result v2
    :try_end_1
    .catch Lcom/jcraft/jzlib/Inflate$Return; {:try_start_1 .. :try_end_1} :catch_7

    .line 13
    iget-object v5, v1, Lcom/jcraft/jzlib/Inflate;->gheader:Lcom/jcraft/jzlib/GZIPHeader;

    if-eqz v5, :cond_5

    .line 14
    iget-wide v7, v1, Lcom/jcraft/jzlib/Inflate;->need:J

    iput-wide v7, v5, Lcom/jcraft/jzlib/GZIPHeader;->time:J

    .line 15
    :cond_5
    iget v5, v1, Lcom/jcraft/jzlib/Inflate;->flags:I

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_6

    .line 16
    iget-wide v7, v1, Lcom/jcraft/jzlib/Inflate;->need:J

    invoke-direct {v1, v4, v7, v8}, Lcom/jcraft/jzlib/Inflate;->checksum(IJ)V

    :cond_6
    const/16 v5, 0x11

    .line 17
    iput v5, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 18
    :pswitch_2
    :try_start_2
    invoke-direct {v1, v13, v2, v0}, Lcom/jcraft/jzlib/Inflate;->readBytes(III)I

    move-result v2
    :try_end_2
    .catch Lcom/jcraft/jzlib/Inflate$Return; {:try_start_2 .. :try_end_2} :catch_6

    .line 19
    iget-object v5, v1, Lcom/jcraft/jzlib/Inflate;->gheader:Lcom/jcraft/jzlib/GZIPHeader;

    if-eqz v5, :cond_7

    .line 20
    iget-wide v7, v1, Lcom/jcraft/jzlib/Inflate;->need:J

    long-to-int v9, v7

    and-int/lit16 v9, v9, 0xff

    iput v9, v5, Lcom/jcraft/jzlib/GZIPHeader;->xflags:I

    long-to-int v8, v7

    shr-int/lit8 v7, v8, 0x8

    and-int/lit16 v7, v7, 0xff

    .line 21
    iput v7, v5, Lcom/jcraft/jzlib/GZIPHeader;->os:I

    .line 22
    :cond_7
    iget v5, v1, Lcom/jcraft/jzlib/Inflate;->flags:I

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_8

    .line 23
    iget-wide v7, v1, Lcom/jcraft/jzlib/Inflate;->need:J

    invoke-direct {v1, v13, v7, v8}, Lcom/jcraft/jzlib/Inflate;->checksum(IJ)V

    :cond_8
    const/16 v5, 0x12

    .line 24
    iput v5, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 25
    :pswitch_3
    iget v5, v1, Lcom/jcraft/jzlib/Inflate;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_a

    .line 26
    :try_start_3
    invoke-direct {v1, v13, v2, v0}, Lcom/jcraft/jzlib/Inflate;->readBytes(III)I

    move-result v2
    :try_end_3
    .catch Lcom/jcraft/jzlib/Inflate$Return; {:try_start_3 .. :try_end_3} :catch_1

    .line 27
    iget-object v5, v1, Lcom/jcraft/jzlib/Inflate;->gheader:Lcom/jcraft/jzlib/GZIPHeader;

    if-eqz v5, :cond_9

    .line 28
    iget-wide v7, v1, Lcom/jcraft/jzlib/Inflate;->need:J

    long-to-int v8, v7

    and-int/2addr v6, v8

    new-array v6, v6, [B

    iput-object v6, v5, Lcom/jcraft/jzlib/GZIPHeader;->extra:[B

    .line 29
    :cond_9
    iget v5, v1, Lcom/jcraft/jzlib/Inflate;->flags:I

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_b

    .line 30
    iget-wide v5, v1, Lcom/jcraft/jzlib/Inflate;->need:J

    invoke-direct {v1, v13, v5, v6}, Lcom/jcraft/jzlib/Inflate;->checksum(IJ)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 31
    iget v0, v2, Lcom/jcraft/jzlib/Inflate$Return;->r:I

    return v0

    .line 32
    :cond_a
    iget-object v5, v1, Lcom/jcraft/jzlib/Inflate;->gheader:Lcom/jcraft/jzlib/GZIPHeader;

    if-eqz v5, :cond_b

    const/4 v6, 0x0

    .line 33
    iput-object v6, v5, Lcom/jcraft/jzlib/GZIPHeader;->extra:[B

    :cond_b
    :goto_2
    const/16 v5, 0x13

    .line 34
    iput v5, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 35
    :pswitch_4
    iget v5, v1, Lcom/jcraft/jzlib/Inflate;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_d

    .line 36
    :try_start_4
    invoke-direct {v1, v2, v0}, Lcom/jcraft/jzlib/Inflate;->readBytes(II)I

    move-result v2

    .line 37
    iget-object v5, v1, Lcom/jcraft/jzlib/Inflate;->gheader:Lcom/jcraft/jzlib/GZIPHeader;

    if-eqz v5, :cond_e

    .line 38
    iget-object v5, v1, Lcom/jcraft/jzlib/Inflate;->tmp_string:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    .line 39
    iput-object v6, v1, Lcom/jcraft/jzlib/Inflate;->tmp_string:Ljava/io/ByteArrayOutputStream;

    .line 40
    array-length v6, v5

    iget-object v7, v1, Lcom/jcraft/jzlib/Inflate;->gheader:Lcom/jcraft/jzlib/GZIPHeader;

    iget-object v7, v7, Lcom/jcraft/jzlib/GZIPHeader;->extra:[B

    array-length v8, v7

    if-ne v6, v8, :cond_c

    .line 41
    array-length v6, v5

    invoke-static {v5, v3, v7, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    .line 42
    :cond_c
    iget-object v5, v1, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v4, [J

    fill-array-data v7, :array_2

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 43
    iput v10, v1, Lcom/jcraft/jzlib/Inflate;->mode:I
    :try_end_4
    .catch Lcom/jcraft/jzlib/Inflate$Return; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 44
    :goto_3
    iget v0, v0, Lcom/jcraft/jzlib/Inflate$Return;->r:I

    return v0

    .line 45
    :cond_d
    iget-object v5, v1, Lcom/jcraft/jzlib/Inflate;->gheader:Lcom/jcraft/jzlib/GZIPHeader;

    if-eqz v5, :cond_e

    const/4 v6, 0x0

    .line 46
    iput-object v6, v5, Lcom/jcraft/jzlib/GZIPHeader;->extra:[B

    :cond_e
    :goto_4
    const/16 v5, 0x14

    .line 47
    iput v5, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 48
    :pswitch_5
    iget v5, v1, Lcom/jcraft/jzlib/Inflate;->flags:I

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_10

    .line 49
    :try_start_5
    invoke-direct {v1, v2, v0}, Lcom/jcraft/jzlib/Inflate;->readString(II)I

    move-result v2

    .line 50
    iget-object v5, v1, Lcom/jcraft/jzlib/Inflate;->gheader:Lcom/jcraft/jzlib/GZIPHeader;

    if-eqz v5, :cond_f

    .line 51
    iget-object v6, v1, Lcom/jcraft/jzlib/Inflate;->tmp_string:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, v5, Lcom/jcraft/jzlib/GZIPHeader;->name:[B

    :cond_f
    const/4 v5, 0x0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_6

    .line 52
    :goto_5
    iput-object v5, v1, Lcom/jcraft/jzlib/Inflate;->tmp_string:Ljava/io/ByteArrayOutputStream;
    :try_end_5
    .catch Lcom/jcraft/jzlib/Inflate$Return; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_7

    .line 53
    :goto_6
    iget v0, v0, Lcom/jcraft/jzlib/Inflate$Return;->r:I

    return v0

    .line 54
    :cond_10
    iget-object v5, v1, Lcom/jcraft/jzlib/Inflate;->gheader:Lcom/jcraft/jzlib/GZIPHeader;

    if-eqz v5, :cond_11

    const/4 v6, 0x0

    .line 55
    iput-object v6, v5, Lcom/jcraft/jzlib/GZIPHeader;->name:[B

    :cond_11
    :goto_7
    const/16 v5, 0x15

    .line 56
    iput v5, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 57
    :pswitch_6
    iget v5, v1, Lcom/jcraft/jzlib/Inflate;->flags:I

    and-int/lit16 v5, v5, 0x1000

    if-eqz v5, :cond_13

    .line 58
    :try_start_6
    invoke-direct {v1, v2, v0}, Lcom/jcraft/jzlib/Inflate;->readString(II)I

    move-result v2

    .line 59
    iget-object v5, v1, Lcom/jcraft/jzlib/Inflate;->gheader:Lcom/jcraft/jzlib/GZIPHeader;

    if-eqz v5, :cond_12

    .line 60
    iget-object v6, v1, Lcom/jcraft/jzlib/Inflate;->tmp_string:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, v5, Lcom/jcraft/jzlib/GZIPHeader;->comment:[B

    :cond_12
    const/4 v5, 0x0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_9

    .line 61
    :goto_8
    iput-object v5, v1, Lcom/jcraft/jzlib/Inflate;->tmp_string:Ljava/io/ByteArrayOutputStream;
    :try_end_6
    .catch Lcom/jcraft/jzlib/Inflate$Return; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_a

    .line 62
    :goto_9
    iget v0, v0, Lcom/jcraft/jzlib/Inflate$Return;->r:I

    return v0

    .line 63
    :cond_13
    iget-object v5, v1, Lcom/jcraft/jzlib/Inflate;->gheader:Lcom/jcraft/jzlib/GZIPHeader;

    if-eqz v5, :cond_14

    const/4 v6, 0x0

    .line 64
    iput-object v6, v5, Lcom/jcraft/jzlib/GZIPHeader;->comment:[B

    :cond_14
    :goto_a
    const/16 v5, 0x16

    .line 65
    iput v5, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 66
    :pswitch_7
    iget v5, v1, Lcom/jcraft/jzlib/Inflate;->flags:I

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_16

    .line 67
    :try_start_7
    invoke-direct {v1, v13, v2, v0}, Lcom/jcraft/jzlib/Inflate;->readBytes(III)I

    move-result v2
    :try_end_7
    .catch Lcom/jcraft/jzlib/Inflate$Return; {:try_start_7 .. :try_end_7} :catch_5

    .line 68
    iget-object v5, v1, Lcom/jcraft/jzlib/Inflate;->gheader:Lcom/jcraft/jzlib/GZIPHeader;

    if-eqz v5, :cond_15

    .line 69
    iget-wide v6, v1, Lcom/jcraft/jzlib/Inflate;->need:J

    and-long v6, v6, v25

    long-to-int v7, v6

    iput v7, v5, Lcom/jcraft/jzlib/GZIPHeader;->hcrc:I

    .line 70
    :cond_15
    iget-wide v5, v1, Lcom/jcraft/jzlib/Inflate;->need:J

    iget-object v7, v1, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    iget-object v7, v7, Lcom/jcraft/jzlib/ZStream;->adler:Lcom/jcraft/jzlib/Checksum;

    invoke-interface {v7}, Lcom/jcraft/jzlib/Checksum;->getValue()J

    move-result-wide v7

    and-long v7, v7, v25

    cmp-long v9, v5, v7

    if-eqz v9, :cond_16

    .line 71
    iput v10, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 72
    iget-object v5, v1, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v4, [J

    fill-array-data v7, :array_3

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 73
    iput v14, v1, Lcom/jcraft/jzlib/Inflate;->marker:I

    goto/16 :goto_0

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 74
    iget v0, v2, Lcom/jcraft/jzlib/Inflate$Return;->r:I

    return v0

    .line 75
    :cond_16
    iget-object v5, v1, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    new-instance v6, Lcom/jcraft/jzlib/CRC32;

    invoke-direct {v6}, Lcom/jcraft/jzlib/CRC32;-><init>()V

    iput-object v6, v5, Lcom/jcraft/jzlib/ZStream;->adler:Lcom/jcraft/jzlib/Checksum;

    const/4 v5, 0x7

    .line 76
    iput v5, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    goto/16 :goto_0

    :catch_6
    move-exception v0

    move-object v2, v0

    .line 77
    iget v0, v2, Lcom/jcraft/jzlib/Inflate$Return;->r:I

    return v0

    :catch_7
    move-exception v0

    move-object v2, v0

    .line 78
    iget v0, v2, Lcom/jcraft/jzlib/Inflate$Return;->r:I

    return v0

    :pswitch_8
    move v5, v2

    const/16 v2, 0xf

    goto/16 :goto_11

    .line 79
    :pswitch_9
    iget v6, v1, Lcom/jcraft/jzlib/Inflate;->wrap:I

    if-nez v6, :cond_17

    const/4 v5, 0x7

    .line 80
    iput v5, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    goto/16 :goto_0

    .line 81
    :cond_17
    :try_start_8
    invoke-direct {v1, v13, v2, v0}, Lcom/jcraft/jzlib/Inflate;->readBytes(III)I

    move-result v2
    :try_end_8
    .catch Lcom/jcraft/jzlib/Inflate$Return; {:try_start_8 .. :try_end_8} :catch_8

    .line 82
    iget v6, v1, Lcom/jcraft/jzlib/Inflate;->wrap:I

    if-eq v6, v4, :cond_18

    and-int/lit8 v8, v6, 0x2

    if-eqz v8, :cond_1b

    :cond_18
    iget-wide v8, v1, Lcom/jcraft/jzlib/Inflate;->need:J

    const-wide/32 v25, 0x8b1f

    cmp-long v12, v8, v25

    if-nez v12, :cond_1b

    if-ne v6, v4, :cond_19

    .line 83
    iput v13, v1, Lcom/jcraft/jzlib/Inflate;->wrap:I

    .line 84
    :cond_19
    iget-object v5, v1, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    new-instance v6, Lcom/jcraft/jzlib/CRC32;

    invoke-direct {v6}, Lcom/jcraft/jzlib/CRC32;-><init>()V

    iput-object v6, v5, Lcom/jcraft/jzlib/ZStream;->adler:Lcom/jcraft/jzlib/Checksum;

    .line 85
    iget-wide v5, v1, Lcom/jcraft/jzlib/Inflate;->need:J

    invoke-direct {v1, v13, v5, v6}, Lcom/jcraft/jzlib/Inflate;->checksum(IJ)V

    .line 86
    iget-object v5, v1, Lcom/jcraft/jzlib/Inflate;->gheader:Lcom/jcraft/jzlib/GZIPHeader;

    if-nez v5, :cond_1a

    .line 87
    new-instance v5, Lcom/jcraft/jzlib/GZIPHeader;

    invoke-direct {v5}, Lcom/jcraft/jzlib/GZIPHeader;-><init>()V

    iput-object v5, v1, Lcom/jcraft/jzlib/Inflate;->gheader:Lcom/jcraft/jzlib/GZIPHeader;

    :cond_1a
    const/16 v5, 0x17

    .line 88
    iput v5, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    goto/16 :goto_0

    :cond_1b
    and-int/lit8 v8, v6, 0x2

    if-eqz v8, :cond_1c

    .line 89
    iput v10, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 90
    iget-object v5, v1, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v4, [J

    fill-array-data v7, :array_4

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    goto/16 :goto_0

    .line 91
    :cond_1c
    iput v3, v1, Lcom/jcraft/jzlib/Inflate;->flags:I

    .line 92
    iget-wide v8, v1, Lcom/jcraft/jzlib/Inflate;->need:J

    long-to-int v12, v8

    and-int/lit16 v5, v12, 0xff

    iput v5, v1, Lcom/jcraft/jzlib/Inflate;->method:I

    shr-long/2addr v8, v11

    long-to-int v9, v8

    and-int/lit16 v8, v9, 0xff

    and-int/lit8 v26, v6, 0x1

    if-eqz v26, :cond_1d

    shl-int/lit8 v26, v5, 0x8

    add-int v26, v26, v8

    .line 93
    rem-int/lit8 v26, v26, 0x1f

    if-eqz v26, :cond_1e

    :cond_1d
    const/16 v8, 0xf

    goto :goto_b

    :cond_1e
    const/16 v8, 0xf

    goto :goto_c

    :goto_b
    and-int/lit8 v7, v12, 0xf

    if-eq v7, v11, :cond_1e

    if-ne v6, v4, :cond_1f

    .line 94
    iget-object v5, v1, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    iget v6, v5, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    sub-int/2addr v6, v13

    iput v6, v5, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 95
    iget v6, v5, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    add-int/2addr v6, v13

    iput v6, v5, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 96
    iget-wide v6, v5, Lcom/jcraft/jzlib/ZStream;->total_in:J

    const-wide/16 v8, 0x2

    sub-long/2addr v6, v8

    iput-wide v6, v5, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 97
    iput v3, v1, Lcom/jcraft/jzlib/Inflate;->wrap:I

    const/4 v5, 0x7

    .line 98
    iput v5, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    goto/16 :goto_0

    .line 99
    :cond_1f
    iput v10, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 100
    iget-object v5, v1, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v4, [J

    fill-array-data v7, :array_5

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    goto/16 :goto_0

    :goto_c
    and-int/2addr v12, v8

    if-eq v12, v11, :cond_20

    .line 101
    iput v10, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 102
    iget-object v5, v1, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v14, [J

    fill-array-data v7, :array_6

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    goto/16 :goto_0

    :cond_20
    if-ne v6, v4, :cond_21

    .line 103
    iput v15, v1, Lcom/jcraft/jzlib/Inflate;->wrap:I

    :cond_21
    shr-int/2addr v5, v4

    add-int/2addr v5, v11

    .line 104
    iget v6, v1, Lcom/jcraft/jzlib/Inflate;->wbits:I

    if-le v5, v6, :cond_22

    .line 105
    iput v10, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 106
    iget-object v5, v1, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v4, [J

    fill-array-data v7, :array_7

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    goto/16 :goto_0

    .line 107
    :cond_22
    iget-object v5, v1, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    new-instance v6, Lcom/jcraft/jzlib/Adler32;

    invoke-direct {v6}, Lcom/jcraft/jzlib/Adler32;-><init>()V

    iput-object v6, v5, Lcom/jcraft/jzlib/ZStream;->adler:Lcom/jcraft/jzlib/Checksum;

    and-int/lit8 v5, v9, 0x20

    if-nez v5, :cond_23

    const/4 v5, 0x7

    .line 108
    iput v5, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    goto/16 :goto_0

    .line 109
    :cond_23
    iput v13, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    goto/16 :goto_14

    :catch_8
    move-exception v0

    move-object v2, v0

    .line 110
    iget v0, v2, Lcom/jcraft/jzlib/Inflate$Return;->r:I

    return v0

    :pswitch_a
    const/4 v5, -0x3

    return v5

    :pswitch_b
    const/4 v5, -0x3

    goto :goto_e

    :pswitch_c
    const/4 v5, -0x3

    goto :goto_d

    :pswitch_d
    const/4 v5, -0x3

    .line 111
    iget-object v6, v1, Lcom/jcraft/jzlib/Inflate;->blocks:Lcom/jcraft/jzlib/InfBlocks;

    invoke-virtual {v6, v2}, Lcom/jcraft/jzlib/InfBlocks;->proc(I)I

    move-result v2

    if-ne v2, v5, :cond_24

    .line 112
    iput v10, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 113
    iput v3, v1, Lcom/jcraft/jzlib/Inflate;->marker:I

    goto/16 :goto_0

    :cond_24
    if-nez v2, :cond_25

    move v2, v0

    :cond_25
    if-eq v2, v15, :cond_26

    return v2

    .line 114
    :cond_26
    iget-object v2, v1, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    iget-object v2, v2, Lcom/jcraft/jzlib/ZStream;->adler:Lcom/jcraft/jzlib/Checksum;

    invoke-interface {v2}, Lcom/jcraft/jzlib/Checksum;->getValue()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/jcraft/jzlib/Inflate;->was:J

    .line 115
    iget-object v2, v1, Lcom/jcraft/jzlib/Inflate;->blocks:Lcom/jcraft/jzlib/InfBlocks;

    invoke-virtual {v2}, Lcom/jcraft/jzlib/InfBlocks;->reset()V

    .line 116
    iget v2, v1, Lcom/jcraft/jzlib/Inflate;->wrap:I

    if-nez v2, :cond_27

    const/16 v2, 0xc

    .line 117
    iput v2, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    move v2, v0

    goto/16 :goto_0

    .line 118
    :cond_27
    iput v11, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    move v2, v0

    .line 119
    :goto_d
    iget-object v6, v1, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    iget v7, v6, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v7, :cond_28

    return v2

    :cond_28
    sub-int/2addr v7, v15

    .line 120
    iput v7, v6, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v7, v6, Lcom/jcraft/jzlib/ZStream;->total_in:J

    add-long v7, v7, v27

    iput-wide v7, v6, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 121
    iget-object v2, v6, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v7, v6, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v6, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v2, v2, v7

    and-int/lit16 v2, v2, 0xff

    const/16 v6, 0x18

    shl-int/2addr v2, v6

    int-to-long v6, v2

    const-wide v8, 0xff000000L

    and-long/2addr v6, v8

    iput-wide v6, v1, Lcom/jcraft/jzlib/Inflate;->need:J

    const/16 v2, 0x9

    .line 122
    iput v2, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    move v2, v0

    .line 123
    :goto_e
    iget-object v6, v1, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    iget v7, v6, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v7, :cond_29

    return v2

    :cond_29
    sub-int/2addr v7, v15

    .line 124
    iput v7, v6, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v7, v6, Lcom/jcraft/jzlib/ZStream;->total_in:J

    add-long v7, v7, v27

    iput-wide v7, v6, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 125
    iget-wide v7, v1, Lcom/jcraft/jzlib/Inflate;->need:J

    iget-object v2, v6, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v9, v6, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v12, v9, 0x1

    iput v12, v6, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v2, v2, v9

    and-int/lit16 v2, v2, 0xff

    const/16 v6, 0x10

    shl-int/2addr v2, v6

    int-to-long v5, v2

    and-long v5, v5, v23

    add-long/2addr v7, v5

    iput-wide v7, v1, Lcom/jcraft/jzlib/Inflate;->need:J

    const/16 v2, 0xa

    .line 126
    iput v2, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    move v2, v0

    .line 127
    :pswitch_e
    iget-object v5, v1, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    iget v6, v5, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v6, :cond_2a

    return v2

    :cond_2a
    sub-int/2addr v6, v15

    .line 128
    iput v6, v5, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v6, v5, Lcom/jcraft/jzlib/ZStream;->total_in:J

    add-long v6, v6, v27

    iput-wide v6, v5, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 129
    iget-wide v6, v1, Lcom/jcraft/jzlib/Inflate;->need:J

    iget-object v2, v5, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v8, v5, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v5, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v2, v2, v8

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v11

    int-to-long v8, v2

    and-long v8, v8, v21

    add-long/2addr v6, v8

    iput-wide v6, v1, Lcom/jcraft/jzlib/Inflate;->need:J

    const/16 v2, 0xb

    .line 130
    iput v2, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    move v2, v0

    .line 131
    :pswitch_f
    iget-object v5, v1, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    iget v6, v5, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v6, :cond_2b

    return v2

    :cond_2b
    sub-int/2addr v6, v15

    .line 132
    iput v6, v5, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v6, v5, Lcom/jcraft/jzlib/ZStream;->total_in:J

    add-long v6, v6, v27

    iput-wide v6, v5, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 133
    iget-wide v6, v1, Lcom/jcraft/jzlib/Inflate;->need:J

    iget-object v2, v5, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v8, v5, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v5, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v2, v2, v8

    int-to-long v8, v2

    const-wide/16 v19, 0xff

    and-long v8, v8, v19

    add-long/2addr v6, v8

    iput-wide v6, v1, Lcom/jcraft/jzlib/Inflate;->need:J

    .line 134
    iget v2, v1, Lcom/jcraft/jzlib/Inflate;->flags:I

    if-eqz v2, :cond_2c

    const-wide/32 v8, -0x1000000

    and-long/2addr v8, v6

    const/16 v12, 0x18

    shr-long/2addr v8, v12

    and-long v23, v6, v23

    shr-long v23, v23, v11

    or-long v8, v8, v23

    and-long v21, v6, v21

    shl-long v21, v21, v11

    or-long v8, v8, v21

    and-long v6, v6, v25

    shl-long/2addr v6, v12

    or-long/2addr v6, v8

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    .line 135
    iput-wide v6, v1, Lcom/jcraft/jzlib/Inflate;->need:J

    .line 136
    :cond_2c
    iget-wide v6, v1, Lcom/jcraft/jzlib/Inflate;->was:J

    long-to-int v7, v6

    iget-wide v8, v1, Lcom/jcraft/jzlib/Inflate;->need:J

    long-to-int v6, v8

    if-eq v7, v6, :cond_2e

    .line 137
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_8

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    :cond_2d
    :goto_f
    const/16 v2, 0xf

    goto :goto_10

    :cond_2e
    if-eqz v2, :cond_2d

    .line 138
    iget-object v2, v1, Lcom/jcraft/jzlib/Inflate;->gheader:Lcom/jcraft/jzlib/GZIPHeader;

    if-eqz v2, :cond_2d

    .line 139
    iput-wide v8, v2, Lcom/jcraft/jzlib/GZIPHeader;->crc:J

    goto :goto_f

    .line 140
    :goto_10
    iput v2, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    move v5, v0

    .line 141
    :goto_11
    iget v6, v1, Lcom/jcraft/jzlib/Inflate;->wrap:I

    if-eqz v6, :cond_32

    iget v6, v1, Lcom/jcraft/jzlib/Inflate;->flags:I

    if-eqz v6, :cond_32

    .line 142
    :try_start_9
    invoke-direct {v1, v4, v5, v0}, Lcom/jcraft/jzlib/Inflate;->readBytes(III)I

    move-result v5
    :try_end_9
    .catch Lcom/jcraft/jzlib/Inflate$Return; {:try_start_9 .. :try_end_9} :catch_9

    .line 143
    iget-object v6, v1, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    iget-object v6, v6, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    if-eqz v6, :cond_2f

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v4, [J

    fill-array-data v8, :array_9

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 144
    iput v10, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 145
    iput v14, v1, Lcom/jcraft/jzlib/Inflate;->marker:I

    const-wide v17, 0xffffffffL

    goto :goto_12

    .line 146
    :cond_2f
    iget-wide v6, v1, Lcom/jcraft/jzlib/Inflate;->need:J

    iget-object v8, v1, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    iget-wide v11, v8, Lcom/jcraft/jzlib/ZStream;->total_out:J

    const-wide v17, 0xffffffffL

    and-long v11, v11, v17

    cmp-long v21, v6, v11

    if-eqz v21, :cond_30

    .line 147
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v4, [J

    fill-array-data v7, :array_a

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 148
    iput v10, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    :goto_12
    move v2, v5

    const/16 v11, 0x8

    goto/16 :goto_0

    :cond_30
    const/4 v5, 0x0

    .line 149
    iput-object v5, v8, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    :cond_31
    const/16 v0, 0xc

    goto :goto_13

    :catch_9
    move-exception v0

    move-object v2, v0

    .line 150
    iget v0, v2, Lcom/jcraft/jzlib/Inflate$Return;->r:I

    return v0

    :cond_32
    const-wide v17, 0xffffffffL

    .line 151
    iget-object v6, v1, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    iget-object v6, v6, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    if-eqz v6, :cond_31

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v4, [J

    fill-array-data v8, :array_b

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 152
    iput v10, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 153
    iput v14, v1, Lcom/jcraft/jzlib/Inflate;->marker:I

    goto :goto_12

    .line 154
    :goto_13
    iput v0, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    :pswitch_10
    return v15

    .line 155
    :pswitch_11
    iput v10, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 156
    iget-object v0, v1, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x3

    new-array v4, v4, [J

    fill-array-data v4, :array_c

    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 157
    iput v3, v1, Lcom/jcraft/jzlib/Inflate;->marker:I

    return v16

    :pswitch_12
    move v0, v2

    goto/16 :goto_15

    .line 158
    :goto_14
    :pswitch_13
    iget-object v3, v1, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    iget v5, v3, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v5, :cond_33

    return v2

    :cond_33
    sub-int/2addr v5, v15

    .line 159
    iput v5, v3, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v5, v3, Lcom/jcraft/jzlib/ZStream;->total_in:J

    add-long v5, v5, v27

    iput-wide v5, v3, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 160
    iget-object v2, v3, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v5, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x18

    shl-int/2addr v2, v3

    int-to-long v2, v2

    const-wide v5, 0xff000000L

    and-long/2addr v2, v5

    iput-wide v2, v1, Lcom/jcraft/jzlib/Inflate;->need:J

    const/4 v2, 0x3

    .line 161
    iput v2, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    move v2, v0

    .line 162
    :pswitch_14
    iget-object v3, v1, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    iget v5, v3, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v5, :cond_34

    return v2

    :cond_34
    sub-int/2addr v5, v15

    .line 163
    iput v5, v3, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v5, v3, Lcom/jcraft/jzlib/ZStream;->total_in:J

    add-long v5, v5, v27

    iput-wide v5, v3, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 164
    iget-wide v5, v1, Lcom/jcraft/jzlib/Inflate;->need:J

    iget-object v2, v3, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v7, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v2, v2, v7

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x10

    shl-int/2addr v2, v3

    int-to-long v2, v2

    and-long v2, v2, v23

    add-long/2addr v5, v2

    iput-wide v5, v1, Lcom/jcraft/jzlib/Inflate;->need:J

    .line 165
    iput v4, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    move v2, v0

    .line 166
    :pswitch_15
    iget-object v3, v1, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    iget v4, v3, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v4, :cond_35

    return v2

    :cond_35
    sub-int/2addr v4, v15

    .line 167
    iput v4, v3, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v4, v3, Lcom/jcraft/jzlib/ZStream;->total_in:J

    add-long v4, v4, v27

    iput-wide v4, v3, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 168
    iget-wide v4, v1, Lcom/jcraft/jzlib/Inflate;->need:J

    iget-object v2, v3, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v6, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    int-to-long v2, v2

    and-long v2, v2, v21

    add-long/2addr v4, v2

    iput-wide v4, v1, Lcom/jcraft/jzlib/Inflate;->need:J

    .line 169
    iput v14, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 170
    :goto_15
    iget-object v2, v1, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    iget v3, v2, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v3, :cond_36

    return v0

    :cond_36
    sub-int/2addr v3, v15

    .line 171
    iput v3, v2, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-wide v3, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    add-long v3, v3, v27

    iput-wide v3, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 172
    iget-wide v3, v1, Lcom/jcraft/jzlib/Inflate;->need:J

    iget-object v0, v2, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v5, v2, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/2addr v15, v5

    iput v15, v2, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    aget-byte v0, v0, v5

    int-to-long v5, v0

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, v1, Lcom/jcraft/jzlib/Inflate;->need:J

    .line 173
    iget-object v0, v2, Lcom/jcraft/jzlib/ZStream;->adler:Lcom/jcraft/jzlib/Checksum;

    invoke-interface {v0, v3, v4}, Lcom/jcraft/jzlib/Checksum;->reset(J)V

    const/4 v0, 0x6

    .line 174
    iput v0, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    return v13

    :cond_37
    :goto_16
    if-ne v0, v4, :cond_38

    .line 175
    iget v0, v1, Lcom/jcraft/jzlib/Inflate;->mode:I

    const/16 v2, 0xe

    if-ne v0, v2, :cond_38

    return v3

    :cond_38
    return v16

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_12
        :pswitch_11
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 8
        -0x48cde20aaf7b32c0L    # -8.12395473394581E-43
        0x74d67bf0f9ed8d02L    # 6.593754009620098E254
        -0x4de237494ec077eeL    # -2.7618783924296446E-67
        0x263c89c9a4698cd0L
        -0x6b1ad388414918cbL    # -5.152402766082746E-208
    .end array-data

    :array_1
    .array-data 8
        -0x7d13666183b2aca7L
        -0x320a2306f6698ca0L    # -3.6839377015173494E67
        0x540ee503dbcbf6d8L    # 8.2488054989932965E96
        0x136b799024f794d6L
    .end array-data

    :array_2
    .array-data 8
        -0x23d54fc4e84140e7L    # -9.699081916697541E135
        0x4628bb3b2e411891L    # 9.797105711159798E29
        -0x50ca491143c872c1L    # -2.86149254858072E-81
        0x2c71e84290890d83L    # 1.3413763581078302E-94
    .end array-data

    :array_3
    .array-data 8
        -0x2a536655bd9e665bL    # -5.1245815176901285E104
        -0x204988f7b2d346a3L    # -1.176585970886719E153
        0x5a268c94f56a2a87L    # 1.9079998501581293E126
        0x310329c2667e0e18L    # 1.3557428756931632E-72
    .end array-data

    :array_4
    .array-data 8
        0x36fae83bf4c4370aL    # 7.540993758906363E-44
        0x75f68e04f4b307d0L    # 1.7339419002460842E260
        0x3259f8e25f8e6497L    # 3.853450379939907E-66
        -0x3a65d83e6eed77cbL    # -2.0236681137911006E27
    .end array-data

    :array_5
    .array-data 8
        -0x59b64b128191a796L
        0x75d37cab2910ddb3L    # 3.745251343303708E259
        0xbf1e5e0ca1eab58L
        -0x3a9f0db4bfc01758L    # -1.638961115053504E26
    .end array-data

    :array_6
    .array-data 8
        0x227b80492713b43cL
        0x65d68139323d8708L    # 3.735357232647818E182
        -0x64df0f8ec3090aaeL    # -5.225239265298889E-178
        -0x6007f59beb4a991eL
        -0x10cf10074844dccaL    # -4.012390544730201E227
    .end array-data

    :array_7
    .array-data 8
        0x702e0c5ee673549dL    # 2.332528259859774E232
        0x46afc56db4e28ac2L    # 3.221982991355222E32
        -0x3686470668ab5d8fL    # -9.178115552591164E45
        0x2104225e0af2328eL
    .end array-data

    :array_8
    .array-data 8
        0x4b2d499f19a79defL    # 1.4025966178204754E54
        -0x62b5ce7fe1766c21L    # -1.388109273314253E-167
        0x76deb53bfd497a81L    # 3.8678265236490838E264
        -0x1503a43e3b037e1L
    .end array-data

    :array_9
    .array-data 8
        -0x25937ccd35890f5aL    # -3.8601429367495594E127
        0x9db314843b63a0cL
        0x52e0c0d57097682dL    # 1.706349344483977E91
        -0x1cc5f410e824879fL    # -9.829895393697995E169
    .end array-data

    :array_a
    .array-data 8
        -0x77c591a3fd7a01e0L    # -5.003097685335148E-269
        -0x1925fc020a4bc68eL    # -2.8298998393599583E187
        0x29c10a568a6a2e8bL
        -0x5cccc4939fb47b0L    # -4.356950386944612E280
    .end array-data

    :array_b
    .array-data 8
        0x26f610e769470dd6L    # 5.340795841099184E-121
        -0x7987a9ed0b9e1291L    # -1.716078891129121E-277
        0x1f7c74d0b45cc3b9L    # 5.181563788804024E-157
        -0x569e5bac8ef3392eL
    .end array-data

    :array_c
    .array-data 8
        0x155b29b29134731dL    # 8.460554064214217E-206
        -0x51ace36666430949L    # -1.5371667647144482E-85
        0x61d6535803e9b6afL    # 2.0088155551599152E163
    .end array-data
.end method

.method public inflateEnd()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/Inflate;->blocks:Lcom/jcraft/jzlib/InfBlocks;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/jcraft/jzlib/InfBlocks;->free()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public inflateInit(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 5
    .line 6
    iput-object v1, p0, Lcom/jcraft/jzlib/Inflate;->blocks:Lcom/jcraft/jzlib/InfBlocks;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lcom/jcraft/jzlib/Inflate;->wrap:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-gez p1, :cond_0

    .line 13
    .line 14
    neg-int p1, p1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const/high16 v3, 0x40000000    # 2.0f

    .line 17
    .line 18
    and-int/2addr v3, p1

    .line 19
    const/4 v4, 0x4

    .line 20
    const/16 v5, 0x30

    .line 21
    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    iput v4, p0, Lcom/jcraft/jzlib/Inflate;->wrap:I

    .line 25
    .line 26
    const v3, -0x40000001    # -1.9999999f

    .line 27
    .line 28
    .line 29
    and-int/2addr v3, p1

    .line 30
    if-ge v3, v5, :cond_1

    .line 31
    .line 32
    :goto_0
    and-int/lit8 p1, p1, 0xf

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move p1, v3

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    and-int/lit8 v3, p1, -0x20

    .line 38
    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    iput v4, p0, Lcom/jcraft/jzlib/Inflate;->wrap:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    shr-int/lit8 v3, p1, 0x4

    .line 45
    .line 46
    add-int/2addr v3, v2

    .line 47
    iput v3, p0, Lcom/jcraft/jzlib/Inflate;->wrap:I

    .line 48
    .line 49
    if-ge p1, v5, :cond_4

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    :goto_1
    const/16 v3, 0x8

    .line 53
    .line 54
    if-lt p1, v3, :cond_6

    .line 55
    .line 56
    const/16 v3, 0xf

    .line 57
    .line 58
    if-le p1, v3, :cond_5

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_5
    iput p1, p0, Lcom/jcraft/jzlib/Inflate;->wbits:I

    .line 62
    .line 63
    new-instance v3, Lcom/jcraft/jzlib/InfBlocks;

    .line 64
    .line 65
    shl-int p1, v2, p1

    .line 66
    .line 67
    invoke-direct {v3, v0, p1}, Lcom/jcraft/jzlib/InfBlocks;-><init>(Lcom/jcraft/jzlib/ZStream;I)V

    .line 68
    .line 69
    .line 70
    iput-object v3, p0, Lcom/jcraft/jzlib/Inflate;->blocks:Lcom/jcraft/jzlib/InfBlocks;

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/jcraft/jzlib/Inflate;->inflateReset()I

    .line 73
    .line 74
    .line 75
    return v1

    .line 76
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/jcraft/jzlib/Inflate;->inflateEnd()I

    .line 77
    .line 78
    .line 79
    const/4 p1, -0x2

    .line 80
    return p1
.end method

.method public inflateReset()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x2

    .line 6
    return v0

    .line 7
    :cond_0
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    iput-wide v1, v0, Lcom/jcraft/jzlib/ZStream;->total_out:J

    .line 10
    .line 11
    iput-wide v1, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-object v1, v0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 15
    .line 16
    const/16 v0, 0xe

    .line 17
    .line 18
    iput v0, p0, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/jcraft/jzlib/Inflate;->need_bytes:I

    .line 22
    .line 23
    iget-object v0, p0, Lcom/jcraft/jzlib/Inflate;->blocks:Lcom/jcraft/jzlib/InfBlocks;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/jcraft/jzlib/InfBlocks;->reset()V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    return v0
.end method

.method public inflateSetDictionary([BI)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget v1, p0, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 6
    .line 7
    const/4 v2, 0x6

    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    iget v3, p0, Lcom/jcraft/jzlib/Inflate;->wrap:I

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v3, 0x0

    .line 16
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->adler:Lcom/jcraft/jzlib/Checksum;

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/jcraft/jzlib/Checksum;->getValue()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iget-object v2, p0, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/jcraft/jzlib/ZStream;->adler:Lcom/jcraft/jzlib/Checksum;

    .line 27
    .line 28
    invoke-interface {v2}, Lcom/jcraft/jzlib/Checksum;->reset()V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    .line 32
    .line 33
    iget-object v2, v2, Lcom/jcraft/jzlib/ZStream;->adler:Lcom/jcraft/jzlib/Checksum;

    .line 34
    .line 35
    invoke-interface {v2, p1, v3, p2}, Lcom/jcraft/jzlib/Checksum;->update([BII)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    .line 39
    .line 40
    iget-object v2, v2, Lcom/jcraft/jzlib/ZStream;->adler:Lcom/jcraft/jzlib/Checksum;

    .line 41
    .line 42
    invoke-interface {v2}, Lcom/jcraft/jzlib/Checksum;->getValue()J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    cmp-long v2, v4, v0

    .line 47
    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    const/4 p1, -0x3

    .line 51
    return p1

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->adler:Lcom/jcraft/jzlib/Checksum;

    .line 55
    .line 56
    invoke-interface {v0}, Lcom/jcraft/jzlib/Checksum;->reset()V

    .line 57
    .line 58
    .line 59
    iget v0, p0, Lcom/jcraft/jzlib/Inflate;->wbits:I

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    shl-int v2, v1, v0

    .line 63
    .line 64
    if-lt p2, v2, :cond_2

    .line 65
    .line 66
    shl-int v0, v1, v0

    .line 67
    .line 68
    sub-int/2addr v0, v1

    .line 69
    sub-int/2addr p2, v0

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    move v0, p2

    .line 72
    const/4 p2, 0x0

    .line 73
    :goto_0
    iget-object v1, p0, Lcom/jcraft/jzlib/Inflate;->blocks:Lcom/jcraft/jzlib/InfBlocks;

    .line 74
    .line 75
    invoke-virtual {v1, p1, p2, v0}, Lcom/jcraft/jzlib/InfBlocks;->set_dictionary([BII)V

    .line 76
    .line 77
    .line 78
    const/4 p1, 0x7

    .line 79
    iput p1, p0, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 80
    .line 81
    return v3

    .line 82
    :cond_3
    :goto_1
    const/4 p1, -0x2

    .line 83
    return p1
.end method

.method public inflateSync()I
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x2

    .line 6
    return v0

    .line 7
    :cond_0
    iget v1, p0, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 8
    .line 9
    const/16 v2, 0xd

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eq v1, v2, :cond_1

    .line 13
    .line 14
    iput v2, p0, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 15
    .line 16
    iput v3, p0, Lcom/jcraft/jzlib/Inflate;->marker:I

    .line 17
    .line 18
    :cond_1
    iget v1, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    const/4 v0, -0x5

    .line 23
    return v0

    .line 24
    :cond_2
    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 25
    .line 26
    iget v2, p0, Lcom/jcraft/jzlib/Inflate;->marker:I

    .line 27
    .line 28
    :goto_0
    const/4 v4, 0x4

    .line 29
    if-eqz v1, :cond_5

    .line 30
    .line 31
    if-ge v2, v4, :cond_5

    .line 32
    .line 33
    iget-object v4, p0, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    .line 34
    .line 35
    iget-object v4, v4, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 36
    .line 37
    aget-byte v4, v4, v0

    .line 38
    .line 39
    sget-object v5, Lcom/jcraft/jzlib/Inflate;->mark:[B

    .line 40
    .line 41
    aget-byte v5, v5, v2

    .line 42
    .line 43
    if-ne v4, v5, :cond_3

    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    if-eqz v4, :cond_4

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    goto :goto_1

    .line 52
    :cond_4
    rsub-int/lit8 v2, v2, 0x4

    .line 53
    .line 54
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    add-int/lit8 v1, v1, -0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_5
    iget-object v5, p0, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    .line 60
    .line 61
    iget-wide v6, v5, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 62
    .line 63
    iget v8, v5, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 64
    .line 65
    sub-int v8, v0, v8

    .line 66
    .line 67
    int-to-long v8, v8

    .line 68
    add-long/2addr v6, v8

    .line 69
    iput-wide v6, v5, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 70
    .line 71
    iput v0, v5, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 72
    .line 73
    iput v1, v5, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 74
    .line 75
    iput v2, p0, Lcom/jcraft/jzlib/Inflate;->marker:I

    .line 76
    .line 77
    if-eq v2, v4, :cond_6

    .line 78
    .line 79
    const/4 v0, -0x3

    .line 80
    return v0

    .line 81
    :cond_6
    iget-wide v0, v5, Lcom/jcraft/jzlib/ZStream;->total_out:J

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/jcraft/jzlib/Inflate;->inflateReset()I

    .line 84
    .line 85
    .line 86
    iget-object v2, p0, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    .line 87
    .line 88
    iput-wide v6, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 89
    .line 90
    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_out:J

    .line 91
    .line 92
    const/4 v0, 0x7

    .line 93
    iput v0, p0, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 94
    .line 95
    return v3
.end method

.method public inflateSyncPoint()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/Inflate;->z:Lcom/jcraft/jzlib/ZStream;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/jcraft/jzlib/Inflate;->blocks:Lcom/jcraft/jzlib/InfBlocks;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/jcraft/jzlib/InfBlocks;->sync_point()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0

    .line 15
    :cond_1
    :goto_0
    const/4 v0, -0x2

    .line 16
    return v0
.end method
