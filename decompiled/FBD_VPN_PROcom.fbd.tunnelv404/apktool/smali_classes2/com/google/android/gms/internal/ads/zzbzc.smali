.class public final Lcom/google/android/gms/internal/ads/zzbzc;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "LargeParcelTeleporterCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x1
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzbzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zza:Landroid/os/ParcelFileDescriptor;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x2
    .end annotation
.end field

.field private zzb:Landroid/os/Parcelable;

.field private zzc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbzc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1    # Landroid/os/ParcelFileDescriptor;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzc;->zza:Landroid/os/ParcelFileDescriptor;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzc;->zzb:Landroid/os/Parcelable;

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbzc;->zzc:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzc;->zza:Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbzc;->zzb:Landroid/os/Parcelable;

    .line 11
    .line 12
    invoke-interface {v2, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    .line 16
    .line 17
    .line 18
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    :try_start_1
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v4, 0x1

    .line 28
    aget-object v4, v3, v4

    .line 29
    .line 30
    new-instance v5, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 31
    .line 32
    invoke-direct {v5, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 33
    .line 34
    .line 35
    :try_start_2
    sget-object v4, Lcom/google/android/gms/internal/ads/zzcep;->zza:Lcom/google/android/gms/internal/ads/zzgey;

    .line 36
    .line 37
    new-instance v6, Lcom/google/android/gms/internal/ads/zzbzb;

    .line 38
    .line 39
    invoke-direct {v6, v5, v2}, Lcom/google/android/gms/internal/ads/zzbzb;-><init>(Ljava/io/OutputStream;[B)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v4, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    aget-object v0, v3, v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception v2

    .line 49
    goto :goto_0

    .line 50
    :catch_1
    move-exception v2

    .line 51
    move-object v5, v0

    .line 52
    :goto_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    const/4 v4, 0x6

    .line 55
    new-array v4, v4, [J

    .line 56
    .line 57
    fill-array-data v4, :array_0

    .line 58
    .line 59
    .line 60
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    const/4 v4, 0x5

    .line 73
    new-array v4, v4, [J

    .line 74
    .line 75
    fill-array-data v4, :array_1

    .line 76
    .line 77
    .line 78
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzcdl;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v5}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 93
    .line 94
    .line 95
    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzc;->zza:Landroid/os/ParcelFileDescriptor;

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :catchall_0
    move-exception p1

    .line 99
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :cond_0
    :goto_2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    const/4 v2, 0x2

    .line 108
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbzc;->zza:Landroid/os/ParcelFileDescriptor;

    .line 109
    .line 110
    invoke-static {p1, v2, v3, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 111
    .line 112
    .line 113
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :array_0
    .array-data 8
        -0x23b449906eac7ac8L    # -4.0285239645686883E136
        -0x11adef9b64b84ad5L    # -2.611870073339946E223
        0x585c9291428b3493L    # 4.503259857357916E117
        0x6c4a021c643c15f7L    # 4.3778210256302914E213
        -0x6af44261acb44edbL    # -2.700165391696687E-207
        -0x131c9085cfcb70L
    .end array-data

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :array_1
    .array-data 8
        -0x707ba40feb7b75afL    # -6.403134695417395E-234
        0x4cad9f6667c912f0L    # 2.3800886716415322E61
        0x42618532b192464dL    # 6.019930881461969E11
        0x79a25b657c9d42dfL    # 8.135198097542064E277
        0x6a3c46b198157a86L    # 5.5408618577351E203
    .end array-data
.end method

.method public final zza(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
    .locals 6

    .line 1
    const/4 v0, 0x7

    .line 2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbzc;->zzc:Z

    .line 3
    .line 4
    if-eqz v1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbzc;->zza:Landroid/os/ParcelFileDescriptor;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    new-array v0, v0, [J

    .line 14
    .line 15
    fill-array-data v0, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzg(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object v2

    .line 29
    :cond_0
    new-instance v1, Ljava/io/DataInputStream;

    .line 30
    .line 31
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 32
    .line 33
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbzc;->zza:Landroid/os/ParcelFileDescriptor;

    .line 34
    .line 35
    invoke-direct {v3, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 39
    .line 40
    .line 41
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    new-array v4, v3, [B

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    invoke-virtual {v1, v4, v5, v3}, Ljava/io/DataInputStream;->readFully([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :try_start_1
    invoke-virtual {v0, v4, v5, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Landroid/os/Parcelable;

    .line 69
    .line 70
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzc;->zzb:Landroid/os/Parcelable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 73
    .line 74
    .line 75
    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzbzc;->zzc:Z

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :catchall_1
    move-exception p1

    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-exception p1

    .line 86
    :try_start_2
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    new-array v0, v0, [J

    .line 89
    .line 90
    fill-array-data v0, :array_1

    .line 91
    .line 92
    .line 93
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    .line 102
    .line 103
    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 104
    .line 105
    .line 106
    return-object v2

    .line 107
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 108
    .line 109
    .line 110
    throw p1

    .line 111
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzc;->zzb:Landroid/os/Parcelable;

    .line 112
    .line 113
    check-cast p1, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    .line 114
    .line 115
    return-object p1

    .line 116
    nop

    .line 117
    :array_0
    .array-data 8
        0x715612126cf79d9fL    # 8.982363099455523E237
        0x3c2c206dfce3e4dL
        0x1978a161ea09344dL    # 5.660752389300643E-186
        -0x3fc5e902b38d7e97L    # -26.089802530246207
        -0x1ce5e0a455e65bc9L    # -2.4646326226456737E169
        0x415a3aa5fac5668dL    # 6875799.918298376
        -0x225e92215158fd1cL    # -1.0626858324959097E143
    .end array-data

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    :array_1
    .array-data 8
        -0x4f14d860c8dde2a4L    # -4.8028303009677453E-73
        -0x6b0f4e6220c3a6ffL    # -8.124536642292798E-208
        0x36f37c81bce59d52L    # 5.461239767283516E-44
        0x5740757bdad466e2L    # 1.9791092289015525E112
        0x1b972eda54bfdf04L    # 9.153612667745935E-176
        -0x3f1cbb3e13679f59L    # -39462.06013125303
        0x5f610f2a8e84533fL    # 2.792078309328054E151
    .end array-data
.end method
