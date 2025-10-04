.class public final Lcom/google/android/gms/internal/ads/zzfsb;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "GassResponseParcelCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzfsb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$VersionField;
        id = 0x1
    .end annotation
.end field

.field private zzb:Lcom/google/android/gms/internal/ads/zzatd;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getAfmaSignalsAsBytes"
        id = 0x2
        type = "byte[]"
    .end annotation
.end field

.field private zzc:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfsc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfsb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # [B
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
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zza:I

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzb:Lcom/google/android/gms/internal/ads/zzatd;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzc:[B

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsb;->zzb()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final zzb()V
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzb:Lcom/google/android/gms/internal/ads/zzatd;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzc:[B

    .line 7
    .line 8
    if-nez v2, :cond_1

    .line 9
    .line 10
    :cond_0
    if-eqz v1, :cond_2

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzc:[B

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    return-void

    .line 18
    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    .line 19
    .line 20
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzc:[B

    .line 21
    .line 22
    if-nez v2, :cond_3

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    new-array v0, v0, [J

    .line 30
    .line 31
    fill-array-data v0, :array_0

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v1

    .line 45
    :cond_4
    :goto_1
    if-nez v1, :cond_5

    .line 46
    .line 47
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzc:[B

    .line 48
    .line 49
    if-nez v1, :cond_5

    .line 50
    .line 51
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    new-array v0, v0, [J

    .line 56
    .line 57
    fill-array-data v0, :array_1

    .line 58
    .line 59
    .line 60
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v1

    .line 71
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    const/4 v2, 0x3

    .line 76
    new-array v2, v2, [J

    .line 77
    .line 78
    fill-array-data v2, :array_2

    .line 79
    .line 80
    .line 81
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v0

    .line 92
    nop

    .line 93
    :array_0
    .array-data 8
        0x53db941b366e10b7L    # 9.204281938169152E95
        -0x4c86d011cb797900L    # -9.796281724482693E-61
        0x2132fa1ae59a2fe3L    # 9.27575113980084E-149
        -0xffa7f83590ccc24L    # -4.172761492160165E231
        0x4ab93ab1bccfdc3eL    # 9.439392275896692E51
        -0x664b302c7286d529L    # -7.653018608607859E-185
    .end array-data

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    :array_1
    .array-data 8
        0x12cdf5cab7ba9e19L
        0x5407459565788a90L    # 6.213535786807705E96
        0x404335439a18474cL    # 38.416125547270525
        -0x70fc45fc095119f6L    # -2.423517481514903E-236
        0x2b32da45a5b2763aL
        -0x4f9b25bd1cd5a3deL    # -1.4406913810809818E-75
    .end array-data

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
    :array_2
    .array-data 8
        0x6253aaac1482f519L    # 4.530111231502546E165
        -0x345011c48bce5121L    # -3.9146795188921073E56
        0x7d3a218dfe106750L
    .end array-data
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zza:I

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzc:[B

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzb:Lcom/google/android/gms/internal/ads/zzatd;

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgxt;->zzax()[B

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    :goto_0
    const/4 v1, 0x2

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/zzatd;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzb:Lcom/google/android/gms/internal/ads/zzatd;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzc:[B

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgzf;->zza()Lcom/google/android/gms/internal/ads/zzgzf;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzatd;->zze([BLcom/google/android/gms/internal/ads/zzgzf;)Lcom/google/android/gms/internal/ads/zzatd;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzb:Lcom/google/android/gms/internal/ads/zzatd;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzc:[B
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzhag; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :catch_0
    move-exception v0

    .line 22
    goto :goto_0

    .line 23
    :catch_1
    move-exception v0

    .line 24
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw v1

    .line 30
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsb;->zzb()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzb:Lcom/google/android/gms/internal/ads/zzatd;

    .line 34
    .line 35
    return-object v0
.end method
