.class public Lcom/google/android/gms/common/data/BitmapTeleporter;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "BitmapTeleporterCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/data/BitmapTeleporter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zaa:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$VersionField;
        id = 0x1
    .end annotation
.end field

.field zab:Landroid/os/ParcelFileDescriptor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x2
    .end annotation
.end field

.field final zac:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x3
    .end annotation
.end field

.field private zad:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zae:Z

.field private zaf:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/data/zaa;

    invoke-direct {v0}, Lcom/google/android/gms/common/data/zaa;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/data/BitmapTeleporter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/ParcelFileDescriptor;I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Landroid/os/ParcelFileDescriptor;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zaa:I

    iput-object p2, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zab:Landroid/os/ParcelFileDescriptor;

    iput p3, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zac:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zad:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zae:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zaa:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zab:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zac:I

    iput-object p1, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zad:Landroid/graphics/Bitmap;

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zae:Z

    return-void
.end method

.method private static final zaa(Ljava/io/Closeable;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    new-array v0, v0, [J

    .line 9
    .line 10
    fill-array-data v0, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v0, 0x4

    .line 22
    new-array v0, v0, [J

    .line 23
    .line 24
    fill-array-data v0, :array_1

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :array_0
    .array-data 8
        0x38f6bd0eeda3de80L
        -0x304e89c2babe2279L    # -7.898229253259282E75
        -0x5829fea4832baf71L    # -8.726277687221078E-117
    .end array-data

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    :array_1
    .array-data 8
        -0xc5445aa5e2b5c38L
        0x787f23c77d9a7999L    # 2.6321546166502563E272
        -0x3714694a09d5ac3fL    # -1.9226527549011429E43
        0x2a392daf423247ecL    # 2.744546618445445E-105
    .end array-data
.end method


# virtual methods
.method public get()Landroid/graphics/Bitmap;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zae:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/io/DataInputStream;

    .line 6
    .line 7
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zab:Landroid/os/ParcelFileDescriptor;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 16
    .line 17
    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    new-array v1, v1, [B

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-static {v4}, Landroid/graphics/Bitmap$Config;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$Config;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/google/android/gms/common/data/BitmapTeleporter;->zaa(Ljava/io/Closeable;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zad:Landroid/graphics/Bitmap;

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zae:Z

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catchall_0
    move-exception v1

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    .line 71
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    const/4 v4, 0x7

    .line 76
    new-array v4, v4, [J

    .line 77
    .line 78
    fill-array-data v4, :array_0

    .line 79
    .line 80
    .line 81
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/data/BitmapTeleporter;->zaa(Ljava/io/Closeable;)V

    .line 93
    .line 94
    .line 95
    throw v1

    .line 96
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zad:Landroid/graphics/Bitmap;

    .line 97
    .line 98
    return-object v0

    .line 99
    :array_0
    .array-data 8
        0x2a9637da0a121179L    # 1.5499932277344856E-103
        0x4333c09f2142f2abL    # 5.559814247871147E15
        -0x24e3171b51a52659L    # -8.015715828896052E130
        0x2fd3ee5ffdf2de3aL    # 2.689512345030843E-78
        -0x6513d070e211a549L    # -5.434037216728456E-179
        -0x28acf739c7acf204L    # -4.5775671730462365E112
        -0x15adcecba476e41L
    .end array-data
.end method

.method public release()V
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zae:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zab:Landroid/os/ParcelFileDescriptor;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    new-array v1, v1, [J

    .line 21
    .line 22
    fill-array-data v1, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    const/4 v1, 0x4

    .line 34
    new-array v1, v1, [J

    .line 35
    .line 36
    fill-array-data v1, :array_1

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        0x10a0992a5ef37742L    # 1.368475360258424E-228
        0x5c15f35405fcb32eL    # 3.9886185079829376E135
        0x54cc00ef708a1cbdL    # 3.0625505771160195E100
    .end array-data

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    :array_1
    .array-data 8
        0x703d0d2140472234L    # 4.51026511892155E232
        -0x1f10ce0e349a0311L    # -8.565920810193964E158
        -0x7511ea1ef29a06dfL
        -0x6195349232d1565fL    # -3.722376862989146E-162
    .end array-data
.end method

.method public setTempDir(Ljava/io/File;)V
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zaf:Ljava/io/File;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v1, 0x5

    .line 11
    new-array v1, v1, [J

    .line 12
    .line 13
    fill-array-data v1, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    :array_0
    .array-data 8
        0x124653a15a9eb577L
        0x3a223721441ab152L    # 1.1495502843506096E-28
        -0x4931624d9cae8131L    # -1.0725539578992702E-44
        0x458928a7967a444eL    # 9.732842111678393E26
        0x2c24c135b5d1e2d3L    # 4.858345452031435E-96
    .end array-data
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 9
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zab:Landroid/os/ParcelFileDescriptor;

    .line 4
    .line 5
    if-nez v2, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zad:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Landroid/graphics/Bitmap;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getRowBytes()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    mul-int v4, v4, v3

    .line 24
    .line 25
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    new-instance v4, Ljava/io/BufferedOutputStream;

    .line 37
    .line 38
    iget-object v5, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zaf:Ljava/io/File;

    .line 39
    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    :try_start_0
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    new-array v7, v1, [J

    .line 45
    .line 46
    fill-array-data v7, :array_0

    .line 47
    .line 48
    .line 49
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    new-array v8, v0, [J

    .line 59
    .line 60
    fill-array-data v8, :array_1

    .line 61
    .line 62
    .line 63
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-static {v6, v7, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 71
    .line 72
    .line 73
    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 74
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    .line 75
    .line 76
    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 77
    .line 78
    .line 79
    const/high16 v7, 0x10000000

    .line 80
    .line 81
    invoke-static {v5, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    iput-object v7, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zab:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    .line 87
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 88
    .line 89
    .line 90
    invoke-direct {v4, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 91
    .line 92
    .line 93
    new-instance v5, Ljava/io/DataOutputStream;

    .line 94
    .line 95
    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 96
    .line 97
    .line 98
    :try_start_2
    array-length v4, v3

    .line 99
    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    .line 129
    .line 130
    invoke-static {v5}, Lcom/google/android/gms/common/data/BitmapTeleporter;->zaa(Ljava/io/Closeable;)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :catchall_0
    move-exception p1

    .line 135
    goto :goto_0

    .line 136
    :catch_0
    move-exception p1

    .line 137
    :try_start_3
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 138
    .line 139
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 140
    .line 141
    const/4 v1, 0x6

    .line 142
    new-array v1, v1, [J

    .line 143
    .line 144
    fill-array-data v1, :array_2

    .line 145
    .line 146
    .line 147
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 158
    :goto_0
    invoke-static {v5}, Lcom/google/android/gms/common/data/BitmapTeleporter;->zaa(Ljava/io/Closeable;)V

    .line 159
    .line 160
    .line 161
    throw p1

    .line 162
    :catch_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 163
    .line 164
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 165
    .line 166
    const/4 v0, 0x7

    .line 167
    new-array v0, v0, [J

    .line 168
    .line 169
    fill-array-data v0, :array_3

    .line 170
    .line 171
    .line 172
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw p1

    .line 183
    :catch_2
    move-exception p1

    .line 184
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 185
    .line 186
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 187
    .line 188
    const/4 v1, 0x5

    .line 189
    new-array v1, v1, [J

    .line 190
    .line 191
    fill-array-data v1, :array_4

    .line 192
    .line 193
    .line 194
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    .line 203
    .line 204
    throw p2

    .line 205
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 206
    .line 207
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 208
    .line 209
    const/16 v0, 0xa

    .line 210
    .line 211
    new-array v0, v0, [J

    .line 212
    .line 213
    fill-array-data v0, :array_5

    .line 214
    .line 215
    .line 216
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw p1

    .line 227
    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    iget v3, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zaa:I

    .line 232
    .line 233
    const/4 v4, 0x1

    .line 234
    invoke-static {p1, v4, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 235
    .line 236
    .line 237
    iget-object v3, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zab:Landroid/os/ParcelFileDescriptor;

    .line 238
    .line 239
    or-int/2addr p2, v4

    .line 240
    const/4 v4, 0x0

    .line 241
    invoke-static {p1, v0, v3, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 242
    .line 243
    .line 244
    iget p2, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zac:I

    .line 245
    .line 246
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 247
    .line 248
    .line 249
    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 250
    .line 251
    .line 252
    const/4 p1, 0x0

    .line 253
    iput-object p1, p0, Lcom/google/android/gms/common/data/BitmapTeleporter;->zab:Landroid/os/ParcelFileDescriptor;

    .line 254
    .line 255
    return-void

    .line 256
    nop

    .line 257
    :array_0
    .array-data 8
        -0x4ccc9556ccc6d18dL    # -4.719924767661854E-62
        0x22f1ba089474f89aL
        -0x5a13df28c0bb66f9L    # -5.194156970382128E-126
    .end array-data

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    :array_1
    .array-data 8
        0x1d3f927e39eb28c6L    # 8.365806281479303E-168
        0x7a1431a3badb14baL
    .end array-data

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    :array_2
    .array-data 8
        0x6c47bf854953eb45L    # 3.9973881045031094E213
        -0x75f6cc92385bc7b2L    # -2.5610007431731495E-260
        -0x11347b93e93697beL    # -5.092747952111102E225
        0x26ff45d90b2d6a50L    # 7.569184952537541E-121
        0x55c96b40f8fd5246L
        -0x1b88f988b3ed9295L    # -9.111754021041187E175
    .end array-data

    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    :array_3
    .array-data 8
        -0x25bd7bcc29bbdfbL    # -1.647849634505194E297
        0x3f4c16ac466361f1L    # 8.571950136469481E-4
        0x245360b66adbfec3L
        -0x320814234be8c1bcL    # -4.0307372126998523E67
        0x56b4ab03572af22bL    # 4.853972441865693E109
        0x7ff008e1b9bf3d77L
        -0x45d92cc6db852cc6L    # -1.4404657353521082E-28
    .end array-data

    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    :array_4
    .array-data 8
        0xd36d12dfb1ce1feL
        0xa8b63e0c19cd84fL
        -0xfdd211734327244L    # -1.4648582389321884E232
        -0x36ca2408842f2165L    # -4.8747745411238426E44
        -0x2a26e201daeb24f3L    # -3.6003856153715057E105
    .end array-data

    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    :array_5
    .array-data 8
        -0x2ddcba057b66fd8fL    # -4.79254335675158E87
        0xa7a6d9623eae682L
        0x4f6c4c45e5971c66L    # 3.999850796091928E74
        -0x33a367cb657aba57L    # -7.179636646789547E59
        0x7c67cd087b0fe7eaL    # 1.8555787847521947E291
        0x769b242e55a900adL    # 2.1366204721691997E263
        -0x281f92338f30317cL    # -2.0229114057004682E115
        0x3fd95c974d5f9815L    # 0.3962763076400518
        -0x39c610b51222cdf9L    # -2.054761563995753E30
        0x4ef6b241caff098fL    # 2.5063075030866083E72
    .end array-data
.end method
