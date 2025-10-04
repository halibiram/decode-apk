.class public final Lcom/jcraft/jzlib/CRC32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jcraft/jzlib/Checksum;


# static fields
.field private static final GF2_DIM:I = 0x20

.field private static crc_table:[I


# instance fields
.field private v:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    sput-object v1, Lcom/jcraft/jzlib/CRC32;->crc_table:[I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_2

    .line 9
    .line 10
    const/16 v2, 0x8

    .line 11
    .line 12
    move v3, v1

    .line 13
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 14
    .line 15
    if-ltz v2, :cond_1

    .line 16
    .line 17
    and-int/lit8 v4, v3, 0x1

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    ushr-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    const v4, -0x12477ce0

    .line 24
    .line 25
    .line 26
    xor-int/2addr v3, v4

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    ushr-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    sget-object v2, Lcom/jcraft/jzlib/CRC32;->crc_table:[I

    .line 32
    .line 33
    aput v3, v2, v1

    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/jcraft/jzlib/CRC32;->v:I

    .line 6
    .line 7
    return-void
.end method

.method public static combine(JJJ)J
    .locals 14

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    new-array v1, v0, [J

    .line 4
    .line 5
    new-array v2, v0, [J

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    cmp-long v5, p4, v3

    .line 10
    .line 11
    if-gtz v5, :cond_0

    .line 12
    .line 13
    return-wide p0

    .line 14
    :cond_0
    const/4 v5, 0x0

    .line 15
    const-wide v6, 0xedb88320L

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    aput-wide v6, v2, v5

    .line 21
    .line 22
    const-wide/16 v5, 0x1

    .line 23
    .line 24
    const/4 v7, 0x1

    .line 25
    move-wide v9, v5

    .line 26
    const/4 v8, 0x1

    .line 27
    :goto_0
    if-ge v8, v0, :cond_1

    .line 28
    .line 29
    aput-wide v9, v2, v8

    .line 30
    .line 31
    shl-long/2addr v9, v7

    .line 32
    add-int/lit8 v8, v8, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {v1, v2}, Lcom/jcraft/jzlib/CRC32;->gf2_matrix_square([J[J)V

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v1}, Lcom/jcraft/jzlib/CRC32;->gf2_matrix_square([J[J)V

    .line 39
    .line 40
    .line 41
    move-wide v8, p0

    .line 42
    move-wide/from16 v10, p4

    .line 43
    .line 44
    :cond_2
    invoke-static {v1, v2}, Lcom/jcraft/jzlib/CRC32;->gf2_matrix_square([J[J)V

    .line 45
    .line 46
    .line 47
    and-long v12, v10, v5

    .line 48
    .line 49
    cmp-long v0, v12, v3

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-static {v1, v8, v9}, Lcom/jcraft/jzlib/CRC32;->gf2_matrix_times([JJ)J

    .line 54
    .line 55
    .line 56
    move-result-wide v8

    .line 57
    :cond_3
    shr-long v12, v10, v7

    .line 58
    .line 59
    cmp-long v0, v12, v3

    .line 60
    .line 61
    if-nez v0, :cond_4

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_4
    invoke-static {v2, v1}, Lcom/jcraft/jzlib/CRC32;->gf2_matrix_square([J[J)V

    .line 65
    .line 66
    .line 67
    and-long/2addr v12, v5

    .line 68
    cmp-long v0, v12, v3

    .line 69
    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    invoke-static {v2, v8, v9}, Lcom/jcraft/jzlib/CRC32;->gf2_matrix_times([JJ)J

    .line 73
    .line 74
    .line 75
    move-result-wide v8

    .line 76
    :cond_5
    const/4 v0, 0x2

    .line 77
    shr-long/2addr v10, v0

    .line 78
    cmp-long v0, v10, v3

    .line 79
    .line 80
    if-nez v0, :cond_2

    .line 81
    .line 82
    :goto_1
    xor-long v0, v8, p2

    .line 83
    .line 84
    return-wide v0
.end method

.method public static getCRC32Table()[I
    .locals 4

    .line 1
    sget-object v0, Lcom/jcraft/jzlib/CRC32;->crc_table:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    new-array v2, v1, [I

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    .line 9
    .line 10
    return-object v2
.end method

.method public static final gf2_matrix_square([J[J)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0x20

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    aget-wide v1, p1, v0

    .line 7
    .line 8
    invoke-static {p1, v1, v2}, Lcom/jcraft/jzlib/CRC32;->gf2_matrix_times([JJ)J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    aput-wide v1, p0, v0

    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method private static gf2_matrix_times([JJ)J
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    move-wide v3, v0

    .line 5
    :goto_0
    cmp-long v5, p1, v0

    .line 6
    .line 7
    if-eqz v5, :cond_1

    .line 8
    .line 9
    const-wide/16 v5, 0x1

    .line 10
    .line 11
    and-long/2addr v5, p1

    .line 12
    cmp-long v7, v5, v0

    .line 13
    .line 14
    if-eqz v7, :cond_0

    .line 15
    .line 16
    aget-wide v5, p0, v2

    .line 17
    .line 18
    xor-long/2addr v3, v5

    .line 19
    :cond_0
    const/4 v5, 0x1

    .line 20
    shr-long/2addr p1, v5

    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return-wide v3
.end method


# virtual methods
.method public copy()Lcom/jcraft/jzlib/CRC32;
    .locals 2

    .line 2
    new-instance v0, Lcom/jcraft/jzlib/CRC32;

    invoke-direct {v0}, Lcom/jcraft/jzlib/CRC32;-><init>()V

    .line 3
    iget v1, p0, Lcom/jcraft/jzlib/CRC32;->v:I

    iput v1, v0, Lcom/jcraft/jzlib/CRC32;->v:I

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/jcraft/jzlib/Checksum;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jzlib/CRC32;->copy()Lcom/jcraft/jzlib/CRC32;

    move-result-object v0

    return-object v0
.end method

.method public getValue()J
    .locals 4

    .line 1
    iget v0, p0, Lcom/jcraft/jzlib/CRC32;->v:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    const-wide v2, 0xffffffffL

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    and-long/2addr v0, v2

    .line 10
    return-wide v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/jcraft/jzlib/CRC32;->v:I

    return-void
.end method

.method public reset(J)V
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr p1, v0

    long-to-int p2, p1

    .line 2
    iput p2, p0, Lcom/jcraft/jzlib/CRC32;->v:I

    return-void
.end method

.method public update([BII)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/jcraft/jzlib/CRC32;->v:I

    .line 2
    .line 3
    not-int v0, v0

    .line 4
    :goto_0
    add-int/lit8 p3, p3, -0x1

    .line 5
    .line 6
    if-ltz p3, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcom/jcraft/jzlib/CRC32;->crc_table:[I

    .line 9
    .line 10
    add-int/lit8 v2, p2, 0x1

    .line 11
    .line 12
    aget-byte p2, p1, p2

    .line 13
    .line 14
    xor-int/2addr p2, v0

    .line 15
    and-int/lit16 p2, p2, 0xff

    .line 16
    .line 17
    aget p2, v1, p2

    .line 18
    .line 19
    ushr-int/lit8 v0, v0, 0x8

    .line 20
    .line 21
    xor-int/2addr v0, p2

    .line 22
    move p2, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    not-int p1, v0

    .line 25
    iput p1, p0, Lcom/jcraft/jzlib/CRC32;->v:I

    .line 26
    .line 27
    return-void
.end method
