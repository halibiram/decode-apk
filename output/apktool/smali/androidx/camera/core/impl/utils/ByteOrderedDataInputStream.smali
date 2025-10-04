.class final Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"

# interfaces
.implements Ljava/io/DataInput;


# static fields
.field private static final BIG_ENDIAN:Ljava/nio/ByteOrder;

.field private static final LITTLE_ENDIAN:Ljava/nio/ByteOrder;


# instance fields
.field private mByteOrder:Ljava/nio/ByteOrder;

.field private final mDataInputStream:Ljava/io/DataInputStream;

.field final mLength:I

.field mPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    sput-object v0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 4
    .line 5
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 6
    .line 7
    sput-object v0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, p1, v0}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 3
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 4
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 5
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result p1

    iput p1, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mLength:I

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    .line 7
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 8
    iput-object p2, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 9
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getLength()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mLength:I

    .line 2
    .line 3
    return v0
.end method

.method public mark(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->mark(I)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public peek()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    .line 2
    .line 3
    return v0
.end method

.method public read()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    .line 2
    iget-object v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1

    .line 3
    iget-object v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I

    move-result p1

    .line 4
    iget p2, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    return p1
.end method

.method public readBoolean()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public readByte()B
    .locals 2

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    .line 6
    .line 7
    iget v1, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mLength:I

    .line 8
    .line 9
    if-gt v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-ltz v0, :cond_0

    .line 18
    .line 19
    int-to-byte v0, v0

    .line 20
    return v0

    .line 21
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public readChar()C
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readChar()C

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public readDouble()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->readLong()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public readFully([B)V
    .locals 3

    .line 6
    iget v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    .line 7
    iget v1, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mLength:I

    if-gt v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    array-length p1, p1

    if-ne v0, p1, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Couldn\'t read up to the length of buffer"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public readFully([BII)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    .line 2
    iget v1, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mLength:I

    if-gt v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I

    move-result p1

    if-ne p1, p3, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Couldn\'t read up to the length of buffer"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public readInt()I
    .locals 6

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    .line 6
    .line 7
    iget v1, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mLength:I

    .line 8
    .line 9
    if-gt v0, v1, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v2, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iget-object v3, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    or-int v4, v0, v1

    .line 36
    .line 37
    or-int/2addr v4, v2

    .line 38
    or-int/2addr v4, v3

    .line 39
    if-ltz v4, :cond_2

    .line 40
    .line 41
    iget-object v4, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 42
    .line 43
    sget-object v5, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 44
    .line 45
    if-ne v4, v5, :cond_0

    .line 46
    .line 47
    shl-int/lit8 v3, v3, 0x18

    .line 48
    .line 49
    shl-int/lit8 v2, v2, 0x10

    .line 50
    .line 51
    add-int/2addr v3, v2

    .line 52
    shl-int/lit8 v1, v1, 0x8

    .line 53
    .line 54
    add-int/2addr v3, v1

    .line 55
    add-int/2addr v3, v0

    .line 56
    return v3

    .line 57
    :cond_0
    sget-object v5, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 58
    .line 59
    if-ne v4, v5, :cond_1

    .line 60
    .line 61
    shl-int/lit8 v0, v0, 0x18

    .line 62
    .line 63
    shl-int/lit8 v1, v1, 0x10

    .line 64
    .line 65
    add-int/2addr v0, v1

    .line 66
    shl-int/lit8 v1, v2, 0x8

    .line 67
    .line 68
    add-int/2addr v0, v1

    .line 69
    add-int/2addr v0, v3

    .line 70
    return v0

    .line 71
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 72
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v2, "Invalid byte order: "

    .line 76
    .line 77
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v2, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v0

    .line 93
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 96
    .line 97
    .line 98
    throw v0

    .line 99
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    .line 100
    .line 101
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 102
    .line 103
    .line 104
    throw v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "readLine() not implemented."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public readLong()J
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    add-int/2addr v1, v2

    .line 8
    iput v1, v0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    .line 9
    .line 10
    iget v3, v0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mLength:I

    .line 11
    .line 12
    if-gt v1, v3, :cond_3

    .line 13
    .line 14
    iget-object v1, v0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget-object v3, v0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    iget-object v4, v0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    iget-object v5, v0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    iget-object v6, v0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 39
    .line 40
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    iget-object v7, v0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 45
    .line 46
    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    iget-object v8, v0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 51
    .line 52
    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    iget-object v9, v0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 57
    .line 58
    invoke-virtual {v9}, Ljava/io/InputStream;->read()I

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    or-int v10, v1, v3

    .line 63
    .line 64
    or-int/2addr v10, v4

    .line 65
    or-int/2addr v10, v5

    .line 66
    or-int/2addr v10, v6

    .line 67
    or-int/2addr v10, v7

    .line 68
    or-int/2addr v10, v8

    .line 69
    or-int/2addr v10, v9

    .line 70
    if-ltz v10, :cond_2

    .line 71
    .line 72
    iget-object v10, v0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 73
    .line 74
    sget-object v11, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 75
    .line 76
    const/16 v12, 0x10

    .line 77
    .line 78
    const/16 v13, 0x18

    .line 79
    .line 80
    const/16 v14, 0x20

    .line 81
    .line 82
    const/16 v15, 0x28

    .line 83
    .line 84
    const/16 v16, 0x30

    .line 85
    .line 86
    const/16 v17, 0x38

    .line 87
    .line 88
    if-ne v10, v11, :cond_0

    .line 89
    .line 90
    int-to-long v9, v9

    .line 91
    shl-long v9, v9, v17

    .line 92
    .line 93
    move/from16 v18, v3

    .line 94
    .line 95
    int-to-long v2, v8

    .line 96
    shl-long v2, v2, v16

    .line 97
    .line 98
    add-long/2addr v9, v2

    .line 99
    int-to-long v2, v7

    .line 100
    shl-long/2addr v2, v15

    .line 101
    add-long/2addr v9, v2

    .line 102
    int-to-long v2, v6

    .line 103
    shl-long/2addr v2, v14

    .line 104
    add-long/2addr v9, v2

    .line 105
    int-to-long v2, v5

    .line 106
    shl-long/2addr v2, v13

    .line 107
    add-long/2addr v9, v2

    .line 108
    int-to-long v2, v4

    .line 109
    shl-long/2addr v2, v12

    .line 110
    add-long/2addr v9, v2

    .line 111
    move/from16 v2, v18

    .line 112
    .line 113
    int-to-long v2, v2

    .line 114
    const/16 v4, 0x8

    .line 115
    .line 116
    shl-long/2addr v2, v4

    .line 117
    add-long/2addr v9, v2

    .line 118
    int-to-long v1, v1

    .line 119
    add-long/2addr v9, v1

    .line 120
    return-wide v9

    .line 121
    :cond_0
    move v2, v3

    .line 122
    sget-object v3, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 123
    .line 124
    if-ne v10, v3, :cond_1

    .line 125
    .line 126
    int-to-long v11, v1

    .line 127
    shl-long v11, v11, v17

    .line 128
    .line 129
    int-to-long v1, v2

    .line 130
    shl-long v1, v1, v16

    .line 131
    .line 132
    add-long/2addr v11, v1

    .line 133
    int-to-long v1, v4

    .line 134
    shl-long/2addr v1, v15

    .line 135
    add-long/2addr v11, v1

    .line 136
    int-to-long v1, v5

    .line 137
    shl-long/2addr v1, v14

    .line 138
    add-long/2addr v11, v1

    .line 139
    int-to-long v1, v6

    .line 140
    shl-long/2addr v1, v13

    .line 141
    add-long/2addr v11, v1

    .line 142
    int-to-long v1, v7

    .line 143
    const/16 v4, 0x10

    .line 144
    .line 145
    shl-long/2addr v1, v4

    .line 146
    add-long/2addr v11, v1

    .line 147
    int-to-long v1, v8

    .line 148
    const/16 v3, 0x8

    .line 149
    .line 150
    shl-long/2addr v1, v3

    .line 151
    add-long/2addr v11, v1

    .line 152
    int-to-long v1, v9

    .line 153
    add-long/2addr v11, v1

    .line 154
    return-wide v11

    .line 155
    :cond_1
    new-instance v1, Ljava/io/IOException;

    .line 156
    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v3, "Invalid byte order: "

    .line 160
    .line 161
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object v3, v0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 165
    .line 166
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw v1

    .line 177
    :cond_2
    new-instance v1, Ljava/io/EOFException;

    .line 178
    .line 179
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 180
    .line 181
    .line 182
    throw v1

    .line 183
    :cond_3
    new-instance v1, Ljava/io/EOFException;

    .line 184
    .line 185
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 186
    .line 187
    .line 188
    throw v1
.end method

.method public readShort()S
    .locals 4

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    .line 6
    .line 7
    iget v1, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mLength:I

    .line 8
    .line 9
    if-gt v0, v1, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    or-int v2, v0, v1

    .line 24
    .line 25
    if-ltz v2, :cond_2

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 28
    .line 29
    sget-object v3, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 30
    .line 31
    if-ne v2, v3, :cond_0

    .line 32
    .line 33
    shl-int/lit8 v1, v1, 0x8

    .line 34
    .line 35
    add-int/2addr v1, v0

    .line 36
    int-to-short v0, v1

    .line 37
    return v0

    .line 38
    :cond_0
    sget-object v3, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    shl-int/lit8 v0, v0, 0x8

    .line 43
    .line 44
    add-int/2addr v0, v1

    .line 45
    int-to-short v0, v0

    .line 46
    return v0

    .line 47
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v2, "Invalid byte order: "

    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 72
    .line 73
    .line 74
    throw v0

    .line 75
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 78
    .line 79
    .line 80
    throw v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public readUnsignedInt()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    const-wide v2, 0xffffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    and-long/2addr v0, v2

    .line 12
    return-wide v0
.end method

.method public readUnsignedShort()I
    .locals 4

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    .line 6
    .line 7
    iget v1, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mLength:I

    .line 8
    .line 9
    if-gt v0, v1, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    or-int v2, v0, v1

    .line 24
    .line 25
    if-ltz v2, :cond_2

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 28
    .line 29
    sget-object v3, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 30
    .line 31
    if-ne v2, v3, :cond_0

    .line 32
    .line 33
    shl-int/lit8 v1, v1, 0x8

    .line 34
    .line 35
    add-int/2addr v1, v0

    .line 36
    return v1

    .line 37
    :cond_0
    sget-object v3, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    shl-int/lit8 v0, v0, 0x8

    .line 42
    .line 43
    add-int/2addr v0, v1

    .line 44
    return v0

    .line 45
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v2, "Invalid byte order: "

    .line 50
    .line 51
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 76
    .line 77
    .line 78
    throw v0
.end method

.method public seek(J)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    .line 2
    .line 3
    int-to-long v1, v0

    .line 4
    cmp-long v3, v1, p1

    .line 5
    .line 6
    if-lez v3, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 17
    .line 18
    iget v1, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mLength:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    int-to-long v0, v0

    .line 25
    sub-long/2addr p1, v0

    .line 26
    :goto_0
    long-to-int p2, p1

    .line 27
    invoke-virtual {p0, p2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->skipBytes(I)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-ne p1, p2, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 35
    .line 36
    const-string p2, "Couldn\'t seek up to the byteCount"

    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method public setByteOrder(Ljava/nio/ByteOrder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    return-void
.end method

.method public skipBytes(I)I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mLength:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-ge v0, p1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 14
    .line 15
    sub-int v2, p1, v0

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-int/2addr v0, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget p1, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    .line 24
    .line 25
    add-int/2addr p1, v0

    .line 26
    iput p1, p0, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->mPosition:I

    .line 27
    .line 28
    return v0
.end method
