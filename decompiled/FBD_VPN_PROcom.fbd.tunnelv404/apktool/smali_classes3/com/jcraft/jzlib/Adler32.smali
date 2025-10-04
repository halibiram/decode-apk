.class public final Lcom/jcraft/jzlib/Adler32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jcraft/jzlib/Checksum;


# static fields
.field private static final BASE:I = 0xfff1

.field private static final NMAX:I = 0x15b0


# instance fields
.field private s1:J

.field private s2:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/jcraft/jzlib/Adler32;->s1:J

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/jcraft/jzlib/Adler32;->s2:J

    .line 11
    .line 12
    return-void
.end method

.method public static combine(JJJ)J
    .locals 16

    .line 1
    const-wide/32 v0, 0xfff1

    .line 2
    .line 3
    .line 4
    rem-long v2, p4, v0

    .line 5
    .line 6
    const-wide/32 v4, 0xffff

    .line 7
    .line 8
    .line 9
    and-long v6, p0, v4

    .line 10
    .line 11
    mul-long v8, v2, v6

    .line 12
    .line 13
    rem-long/2addr v8, v0

    .line 14
    and-long v10, p2, v4

    .line 15
    .line 16
    const-wide/32 v12, 0xfff0

    .line 17
    .line 18
    .line 19
    add-long/2addr v10, v12

    .line 20
    add-long/2addr v10, v6

    .line 21
    const/16 v6, 0x10

    .line 22
    .line 23
    shr-long v12, p0, v6

    .line 24
    .line 25
    and-long/2addr v12, v4

    .line 26
    shr-long v14, p2, v6

    .line 27
    .line 28
    and-long/2addr v4, v14

    .line 29
    add-long/2addr v12, v4

    .line 30
    add-long/2addr v12, v0

    .line 31
    sub-long/2addr v12, v2

    .line 32
    add-long/2addr v12, v8

    .line 33
    cmp-long v2, v10, v0

    .line 34
    .line 35
    if-ltz v2, :cond_0

    .line 36
    .line 37
    sub-long/2addr v10, v0

    .line 38
    :cond_0
    cmp-long v2, v10, v0

    .line 39
    .line 40
    if-ltz v2, :cond_1

    .line 41
    .line 42
    sub-long/2addr v10, v0

    .line 43
    :cond_1
    const-wide/32 v2, 0x1ffe2

    .line 44
    .line 45
    .line 46
    cmp-long v4, v12, v2

    .line 47
    .line 48
    if-ltz v4, :cond_2

    .line 49
    .line 50
    sub-long/2addr v12, v2

    .line 51
    :cond_2
    cmp-long v2, v12, v0

    .line 52
    .line 53
    if-ltz v2, :cond_3

    .line 54
    .line 55
    sub-long/2addr v12, v0

    .line 56
    :cond_3
    shl-long v0, v12, v6

    .line 57
    .line 58
    or-long/2addr v0, v10

    .line 59
    return-wide v0
.end method


# virtual methods
.method public copy()Lcom/jcraft/jzlib/Adler32;
    .locals 3

    .line 2
    new-instance v0, Lcom/jcraft/jzlib/Adler32;

    invoke-direct {v0}, Lcom/jcraft/jzlib/Adler32;-><init>()V

    .line 3
    iget-wide v1, p0, Lcom/jcraft/jzlib/Adler32;->s1:J

    iput-wide v1, v0, Lcom/jcraft/jzlib/Adler32;->s1:J

    .line 4
    iget-wide v1, p0, Lcom/jcraft/jzlib/Adler32;->s2:J

    iput-wide v1, v0, Lcom/jcraft/jzlib/Adler32;->s2:J

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/jcraft/jzlib/Checksum;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jzlib/Adler32;->copy()Lcom/jcraft/jzlib/Adler32;

    move-result-object v0

    return-object v0
.end method

.method public getValue()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jzlib/Adler32;->s2:J

    .line 2
    .line 3
    const/16 v2, 0x10

    .line 4
    .line 5
    shl-long/2addr v0, v2

    .line 6
    iget-wide v2, p0, Lcom/jcraft/jzlib/Adler32;->s1:J

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    return-wide v0
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x1

    .line 3
    iput-wide v0, p0, Lcom/jcraft/jzlib/Adler32;->s1:J

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/jcraft/jzlib/Adler32;->s2:J

    return-void
.end method

.method public reset(J)V
    .locals 4

    const-wide/32 v0, 0xffff

    and-long v2, p1, v0

    .line 1
    iput-wide v2, p0, Lcom/jcraft/jzlib/Adler32;->s1:J

    const/16 v2, 0x10

    shr-long/2addr p1, v2

    and-long/2addr p1, v0

    .line 2
    iput-wide p1, p0, Lcom/jcraft/jzlib/Adler32;->s2:J

    return-void
.end method

.method public update([BII)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const-wide/32 v1, 0xfff1

    .line 3
    .line 4
    .line 5
    if-ne p3, v0, :cond_0

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/jcraft/jzlib/Adler32;->s1:J

    .line 8
    .line 9
    aget-byte p1, p1, p2

    .line 10
    .line 11
    and-int/lit16 p1, p1, 0xff

    .line 12
    .line 13
    int-to-long p1, p1

    .line 14
    add-long/2addr v3, p1

    .line 15
    iget-wide p1, p0, Lcom/jcraft/jzlib/Adler32;->s2:J

    .line 16
    .line 17
    add-long/2addr p1, v3

    .line 18
    rem-long/2addr v3, v1

    .line 19
    iput-wide v3, p0, Lcom/jcraft/jzlib/Adler32;->s1:J

    .line 20
    .line 21
    rem-long/2addr p1, v1

    .line 22
    iput-wide p1, p0, Lcom/jcraft/jzlib/Adler32;->s2:J

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    div-int/lit16 v0, p3, 0x15b0

    .line 26
    .line 27
    const/16 v3, 0x15b0

    .line 28
    .line 29
    rem-int/2addr p3, v3

    .line 30
    :goto_0
    add-int/lit8 v4, v0, -0x1

    .line 31
    .line 32
    if-lez v0, :cond_2

    .line 33
    .line 34
    const/16 v0, 0x15b0

    .line 35
    .line 36
    :goto_1
    add-int/lit8 v5, v0, -0x1

    .line 37
    .line 38
    if-lez v0, :cond_1

    .line 39
    .line 40
    iget-wide v6, p0, Lcom/jcraft/jzlib/Adler32;->s1:J

    .line 41
    .line 42
    add-int/lit8 v0, p2, 0x1

    .line 43
    .line 44
    aget-byte p2, p1, p2

    .line 45
    .line 46
    and-int/lit16 p2, p2, 0xff

    .line 47
    .line 48
    int-to-long v8, p2

    .line 49
    add-long/2addr v6, v8

    .line 50
    iput-wide v6, p0, Lcom/jcraft/jzlib/Adler32;->s1:J

    .line 51
    .line 52
    iget-wide v8, p0, Lcom/jcraft/jzlib/Adler32;->s2:J

    .line 53
    .line 54
    add-long/2addr v8, v6

    .line 55
    iput-wide v8, p0, Lcom/jcraft/jzlib/Adler32;->s2:J

    .line 56
    .line 57
    move p2, v0

    .line 58
    move v0, v5

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    iget-wide v5, p0, Lcom/jcraft/jzlib/Adler32;->s1:J

    .line 61
    .line 62
    rem-long/2addr v5, v1

    .line 63
    iput-wide v5, p0, Lcom/jcraft/jzlib/Adler32;->s1:J

    .line 64
    .line 65
    iget-wide v5, p0, Lcom/jcraft/jzlib/Adler32;->s2:J

    .line 66
    .line 67
    rem-long/2addr v5, v1

    .line 68
    iput-wide v5, p0, Lcom/jcraft/jzlib/Adler32;->s2:J

    .line 69
    .line 70
    move v0, v4

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    :goto_2
    add-int/lit8 v0, p3, -0x1

    .line 73
    .line 74
    if-lez p3, :cond_3

    .line 75
    .line 76
    iget-wide v3, p0, Lcom/jcraft/jzlib/Adler32;->s1:J

    .line 77
    .line 78
    add-int/lit8 p3, p2, 0x1

    .line 79
    .line 80
    aget-byte p2, p1, p2

    .line 81
    .line 82
    and-int/lit16 p2, p2, 0xff

    .line 83
    .line 84
    int-to-long v5, p2

    .line 85
    add-long/2addr v3, v5

    .line 86
    iput-wide v3, p0, Lcom/jcraft/jzlib/Adler32;->s1:J

    .line 87
    .line 88
    iget-wide v5, p0, Lcom/jcraft/jzlib/Adler32;->s2:J

    .line 89
    .line 90
    add-long/2addr v5, v3

    .line 91
    iput-wide v5, p0, Lcom/jcraft/jzlib/Adler32;->s2:J

    .line 92
    .line 93
    move p2, p3

    .line 94
    move p3, v0

    .line 95
    goto :goto_2

    .line 96
    :cond_3
    iget-wide p1, p0, Lcom/jcraft/jzlib/Adler32;->s1:J

    .line 97
    .line 98
    rem-long/2addr p1, v1

    .line 99
    iput-wide p1, p0, Lcom/jcraft/jzlib/Adler32;->s1:J

    .line 100
    .line 101
    iget-wide p1, p0, Lcom/jcraft/jzlib/Adler32;->s2:J

    .line 102
    .line 103
    rem-long/2addr p1, v1

    .line 104
    iput-wide p1, p0, Lcom/jcraft/jzlib/Adler32;->s2:J

    .line 105
    .line 106
    return-void
.end method
