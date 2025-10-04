.class public Lcom/jcraft/jzlib/ZStream;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEF_WBITS:I = 0xf

.field private static final MAX_MEM_LEVEL:I = 0x9

.field private static final MAX_WBITS:I = 0xf

.field private static final Z_BUF_ERROR:I = -0x5

.field private static final Z_DATA_ERROR:I = -0x3

.field private static final Z_ERRNO:I = -0x1

.field private static final Z_FINISH:I = 0x4

.field private static final Z_FULL_FLUSH:I = 0x3

.field private static final Z_MEM_ERROR:I = -0x4

.field private static final Z_NEED_DICT:I = 0x2

.field private static final Z_NO_FLUSH:I = 0x0

.field private static final Z_OK:I = 0x0

.field private static final Z_PARTIAL_FLUSH:I = 0x1

.field private static final Z_STREAM_END:I = 0x1

.field private static final Z_STREAM_ERROR:I = -0x2

.field private static final Z_SYNC_FLUSH:I = 0x2

.field private static final Z_VERSION_ERROR:I = -0x6


# instance fields
.field adler:Lcom/jcraft/jzlib/Checksum;

.field public avail_in:I

.field public avail_out:I

.field data_type:I

.field dstate:Lcom/jcraft/jzlib/Deflate;

.field istate:Lcom/jcraft/jzlib/Inflate;

.field public msg:Ljava/lang/String;

.field public next_in:[B

.field public next_in_index:I

.field public next_out:[B

.field public next_out_index:I

.field public total_in:J

.field public total_out:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/jcraft/jzlib/Adler32;

    invoke-direct {v0}, Lcom/jcraft/jzlib/Adler32;-><init>()V

    invoke-direct {p0, v0}, Lcom/jcraft/jzlib/ZStream;-><init>(Lcom/jcraft/jzlib/Checksum;)V

    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jzlib/Checksum;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/jcraft/jzlib/ZStream;->adler:Lcom/jcraft/jzlib/Checksum;

    return-void
.end method


# virtual methods
.method public deflate(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x2

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Lcom/jcraft/jzlib/Deflate;->deflate(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public deflateEnd()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

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
    invoke-virtual {v0}, Lcom/jcraft/jzlib/Deflate;->deflateEnd()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 13
    .line 14
    return v0
.end method

.method public deflateInit(I)I
    .locals 1

    const/16 v0, 0xf

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jzlib/ZStream;->deflateInit(II)I

    move-result p1

    return p1
.end method

.method public deflateInit(II)I
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/jcraft/jzlib/ZStream;->deflateInit(IIZ)I

    move-result p1

    return p1
.end method

.method public deflateInit(III)I
    .locals 1

    .line 8
    new-instance v0, Lcom/jcraft/jzlib/Deflate;

    invoke-direct {v0, p0}, Lcom/jcraft/jzlib/Deflate;-><init>(Lcom/jcraft/jzlib/ZStream;)V

    iput-object v0, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jzlib/Deflate;->deflateInit(III)I

    move-result p1

    return p1
.end method

.method public deflateInit(IIILcom/jcraft/jzlib/JZlib$WrapperType;)I
    .locals 2

    const/16 v0, 0x9

    const/4 v1, -0x2

    if-lt p2, v0, :cond_4

    const/16 v0, 0xf

    if-le p2, v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    sget-object v0, Lcom/jcraft/jzlib/JZlib;->W_NONE:Lcom/jcraft/jzlib/JZlib$WrapperType;

    if-ne p4, v0, :cond_1

    mul-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/jcraft/jzlib/JZlib;->W_GZIP:Lcom/jcraft/jzlib/JZlib$WrapperType;

    if-ne p4, v0, :cond_2

    add-int/lit8 p2, p2, 0x10

    goto :goto_0

    .line 6
    :cond_2
    sget-object v0, Lcom/jcraft/jzlib/JZlib;->W_ANY:Lcom/jcraft/jzlib/JZlib$WrapperType;

    if-ne p4, v0, :cond_3

    return v1

    .line 7
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/jcraft/jzlib/ZStream;->deflateInit(III)I

    move-result p1

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public deflateInit(IIZ)I
    .locals 1

    .line 10
    new-instance v0, Lcom/jcraft/jzlib/Deflate;

    invoke-direct {v0, p0}, Lcom/jcraft/jzlib/Deflate;-><init>(Lcom/jcraft/jzlib/ZStream;)V

    iput-object v0, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    if-eqz p3, :cond_0

    neg-int p2, p2

    .line 11
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/jcraft/jzlib/Deflate;->deflateInit(II)I

    move-result p1

    return p1
.end method

.method public deflateInit(IZ)I
    .locals 1

    const/16 v0, 0xf

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lcom/jcraft/jzlib/ZStream;->deflateInit(IIZ)I

    move-result p1

    return p1
.end method

.method public deflateParams(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x2

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/jcraft/jzlib/Deflate;->deflateParams(II)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public deflateSetDictionary([BI)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x2

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/jcraft/jzlib/Deflate;->deflateSetDictionary([BI)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public end()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public finished()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public flush_pending()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 2
    .line 3
    iget v1, v0, Lcom/jcraft/jzlib/Deflate;->pending:I

    .line 4
    .line 5
    iget v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 6
    .line 7
    if-le v1, v2, :cond_0

    .line 8
    .line 9
    move v1, v2

    .line 10
    :cond_0
    if-nez v1, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    iget-object v2, v0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    .line 14
    .line 15
    array-length v3, v2

    .line 16
    iget v0, v0, Lcom/jcraft/jzlib/Deflate;->pending_out:I

    .line 17
    .line 18
    if-le v3, v0, :cond_2

    .line 19
    .line 20
    iget-object v3, p0, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    .line 21
    .line 22
    array-length v4, v3

    .line 23
    iget v5, p0, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 24
    .line 25
    if-le v4, v5, :cond_2

    .line 26
    .line 27
    array-length v4, v2

    .line 28
    add-int v5, v0, v1

    .line 29
    .line 30
    if-lt v4, v5, :cond_2

    .line 31
    .line 32
    array-length v3, v3

    .line 33
    :cond_2
    iget-object v3, p0, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    .line 34
    .line 35
    iget v4, p0, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 36
    .line 37
    invoke-static {v2, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    .line 39
    .line 40
    iget v0, p0, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 41
    .line 42
    add-int/2addr v0, v1

    .line 43
    iput v0, p0, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 44
    .line 45
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 46
    .line 47
    iget v2, v0, Lcom/jcraft/jzlib/Deflate;->pending_out:I

    .line 48
    .line 49
    add-int/2addr v2, v1

    .line 50
    iput v2, v0, Lcom/jcraft/jzlib/Deflate;->pending_out:I

    .line 51
    .line 52
    iget-wide v2, p0, Lcom/jcraft/jzlib/ZStream;->total_out:J

    .line 53
    .line 54
    int-to-long v4, v1

    .line 55
    add-long/2addr v2, v4

    .line 56
    iput-wide v2, p0, Lcom/jcraft/jzlib/ZStream;->total_out:J

    .line 57
    .line 58
    iget v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 59
    .line 60
    sub-int/2addr v2, v1

    .line 61
    iput v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 62
    .line 63
    iget v2, v0, Lcom/jcraft/jzlib/Deflate;->pending:I

    .line 64
    .line 65
    sub-int/2addr v2, v1

    .line 66
    iput v2, v0, Lcom/jcraft/jzlib/Deflate;->pending:I

    .line 67
    .line 68
    if-nez v2, :cond_3

    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    iput v1, v0, Lcom/jcraft/jzlib/Deflate;->pending_out:I

    .line 72
    .line 73
    :cond_3
    return-void
.end method

.method public free()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 3
    .line 4
    iput-object v0, p0, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    .line 5
    .line 6
    iput-object v0, p0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public getAdler()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->adler:Lcom/jcraft/jzlib/Checksum;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/jcraft/jzlib/Checksum;->getValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getAvailIn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 2
    .line 3
    return v0
.end method

.method public getAvailOut()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 2
    .line 3
    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNextIn()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getNextInIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 2
    .line 3
    return v0
.end method

.method public getNextOut()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getNextOutIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 2
    .line 3
    return v0
.end method

.method public getTotalIn()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTotalOut()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jzlib/ZStream;->total_out:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public inflate(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x2

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Lcom/jcraft/jzlib/Inflate;->inflate(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public inflateEnd()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

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
    invoke-virtual {v0}, Lcom/jcraft/jzlib/Inflate;->inflateEnd()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public inflateFinished()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    .line 2
    .line 3
    iget v0, v0, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 4
    .line 5
    const/16 v1, 0xc

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public inflateInit()I
    .locals 1

    const/16 v0, 0xf

    .line 1
    invoke-virtual {p0, v0}, Lcom/jcraft/jzlib/ZStream;->inflateInit(I)I

    move-result v0

    return v0
.end method

.method public inflateInit(I)I
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jzlib/ZStream;->inflateInit(IZ)I

    move-result p1

    return p1
.end method

.method public inflateInit(ILcom/jcraft/jzlib/JZlib$WrapperType;)I
    .locals 2

    .line 5
    sget-object v0, Lcom/jcraft/jzlib/JZlib;->W_NONE:Lcom/jcraft/jzlib/JZlib$WrapperType;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    .line 6
    :cond_0
    sget-object v0, Lcom/jcraft/jzlib/JZlib;->W_GZIP:Lcom/jcraft/jzlib/JZlib$WrapperType;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    add-int/lit8 p1, p1, 0x10

    :cond_1
    :goto_0
    const/4 p2, 0x0

    goto :goto_1

    .line 7
    :cond_2
    sget-object v0, Lcom/jcraft/jzlib/JZlib;->W_ANY:Lcom/jcraft/jzlib/JZlib$WrapperType;

    if-ne p2, v0, :cond_1

    const/high16 p2, 0x40000000    # 2.0f

    or-int/2addr p1, p2

    goto :goto_0

    .line 8
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jzlib/ZStream;->inflateInit(IZ)I

    move-result p1

    return p1
.end method

.method public inflateInit(IZ)I
    .locals 1

    .line 9
    new-instance v0, Lcom/jcraft/jzlib/Inflate;

    invoke-direct {v0, p0}, Lcom/jcraft/jzlib/Inflate;-><init>(Lcom/jcraft/jzlib/ZStream;)V

    iput-object v0, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    if-eqz p2, :cond_0

    neg-int p1, p1

    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Lcom/jcraft/jzlib/Inflate;->inflateInit(I)I

    move-result p1

    return p1
.end method

.method public inflateInit(Lcom/jcraft/jzlib/JZlib$WrapperType;)I
    .locals 1

    const/16 v0, 0xf

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/jcraft/jzlib/ZStream;->inflateInit(ILcom/jcraft/jzlib/JZlib$WrapperType;)I

    move-result p1

    return p1
.end method

.method public inflateInit(Z)I
    .locals 1

    const/16 v0, 0xf

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/jcraft/jzlib/ZStream;->inflateInit(IZ)I

    move-result p1

    return p1
.end method

.method public inflateSetDictionary([BI)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x2

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/jcraft/jzlib/Inflate;->inflateSetDictionary([BI)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public inflateSync()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

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
    invoke-virtual {v0}, Lcom/jcraft/jzlib/Inflate;->inflateSync()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public inflateSyncPoint()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

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
    invoke-virtual {v0}, Lcom/jcraft/jzlib/Inflate;->inflateSyncPoint()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public read_buf([BII)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 2
    .line 3
    if-le v0, p3, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move p3, v0

    .line 7
    :goto_0
    if-nez p3, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    sub-int/2addr v0, p3

    .line 12
    iput v0, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 13
    .line 14
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 15
    .line 16
    iget v0, v0, Lcom/jcraft/jzlib/Deflate;->wrap:I

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->adler:Lcom/jcraft/jzlib/Checksum;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 23
    .line 24
    iget v2, p0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 25
    .line 26
    invoke-interface {v0, v1, v2, p3}, Lcom/jcraft/jzlib/Checksum;->update([BII)V

    .line 27
    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 30
    .line 31
    iget v1, p0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 32
    .line 33
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    iget p1, p0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 37
    .line 38
    add-int/2addr p1, p3

    .line 39
    iput p1, p0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 40
    .line 41
    iget-wide p1, p0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 42
    .line 43
    int-to-long v0, p3

    .line 44
    add-long/2addr p1, v0

    .line 45
    iput-wide p1, p0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 46
    .line 47
    return p3
.end method

.method public setAvailIn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 2
    .line 3
    return-void
.end method

.method public setAvailOut(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 2
    .line 3
    return-void
.end method

.method public setInput([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, v1}, Lcom/jcraft/jzlib/ZStream;->setInput([BIIZ)V

    return-void
.end method

.method public setInput([BIIZ)V
    .locals 4

    if-gtz p3, :cond_0

    if-eqz p4, :cond_0

    .line 3
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget v0, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-lez v0, :cond_1

    if-eqz p4, :cond_1

    add-int p4, v0, p3

    .line 5
    new-array p4, p4, [B

    .line 6
    iget-object v1, p0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v2, p0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    const/4 v3, 0x0

    invoke-static {v1, v2, p4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v0, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    invoke-static {p1, p2, p4, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iput-object p4, p0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 9
    iput v3, p0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 10
    iget p1, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    goto :goto_0

    .line 11
    :cond_1
    iput-object p1, p0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 12
    iput p2, p0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 13
    iput p3, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    :goto_0
    return-void
.end method

.method public setInput([BZ)V
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/jcraft/jzlib/ZStream;->setInput([BIIZ)V

    return-void
.end method

.method public setNextIn([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 2
    .line 3
    return-void
.end method

.method public setNextInIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 2
    .line 3
    return-void
.end method

.method public setNextOut([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    .line 2
    .line 3
    return-void
.end method

.method public setNextOutIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 2
    .line 3
    return-void
.end method

.method public setOutput([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/jcraft/jzlib/ZStream;->setOutput([BII)V

    return-void
.end method

.method public setOutput([BII)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    .line 3
    iput p2, p0, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 4
    iput p3, p0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    return-void
.end method
