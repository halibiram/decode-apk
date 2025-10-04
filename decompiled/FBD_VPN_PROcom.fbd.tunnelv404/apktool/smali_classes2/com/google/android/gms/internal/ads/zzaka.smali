.class final Lcom/google/android/gms/internal/ads/zzaka;
.super Lcom/google/android/gms/internal/ads/zzake;
.source "SourceFile"


# static fields
.field private static final zza:[B

.field private static final zzb:[B


# instance fields
.field private zzc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/gms/internal/ads/zzaka;->zza:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaka;->zzb:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data

    :array_1
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x54t
        0x61t
        0x67t
        0x73t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzake;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzfp;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaka;->zza:[B

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzaka;->zzk(Lcom/google/android/gms/internal/ads/zzfp;[B)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static zzk(Lcom/google/android/gms/internal/ads/zzfp;[B)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    if-ge v0, v2, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    new-array v3, v2, [B

    .line 16
    .line 17
    invoke-virtual {p0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzG([BII)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 21
    .line 22
    .line 23
    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfp;)J
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzadq;->zzd([B)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzake;->zzg(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public final zzb(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzake;->zzb(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzc:Z

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzfp;JLcom/google/android/gms/internal/ads/zzakb;)Z
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/ads/zzaka;->zza:[B

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaka;->zzk(Lcom/google/android/gms/internal/ads/zzfp;[B)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 p3, 0x1

    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zze()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/16 p2, 0x9

    .line 23
    .line 24
    aget-byte p2, p1, p2

    .line 25
    .line 26
    and-int/lit16 p2, p2, 0xff

    .line 27
    .line 28
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzadq;->zze([B)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p4, Lcom/google/android/gms/internal/ads/zzakb;->zza:Lcom/google/android/gms/internal/ads/zzam;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzak;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    const/4 v2, 0x3

    .line 45
    new-array v2, v2, [J

    .line 46
    .line 47
    fill-array-data v2, :array_0

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzak;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzak;->zzy(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 61
    .line 62
    .line 63
    const p2, 0xbb80

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzak;->zzX(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzak;->zzL(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzak;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p4, Lcom/google/android/gms/internal/ads/zzakb;->zza:Lcom/google/android/gms/internal/ads/zzam;

    .line 77
    .line 78
    return p3

    .line 79
    :cond_1
    sget-object p2, Lcom/google/android/gms/internal/ads/zzaka;->zzb:[B

    .line 80
    .line 81
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaka;->zzk(Lcom/google/android/gms/internal/ads/zzfp;[B)Z

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    const/4 v0, 0x0

    .line 86
    if-eqz p2, :cond_3

    .line 87
    .line 88
    iget-object p2, p4, Lcom/google/android/gms/internal/ads/zzakb;->zza:Lcom/google/android/gms/internal/ads/zzam;

    .line 89
    .line 90
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzek;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzc:Z

    .line 94
    .line 95
    if-nez p2, :cond_2

    .line 96
    .line 97
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzc:Z

    .line 98
    .line 99
    const/16 p2, 0x8

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 102
    .line 103
    .line 104
    invoke-static {p1, v0, v0}, Lcom/google/android/gms/internal/ads/zzaeg;->zzc(Lcom/google/android/gms/internal/ads/zzfp;ZZ)Lcom/google/android/gms/internal/ads/zzaed;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaed;->zzb:[Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgaa;->zzk([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgaa;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaeg;->zzb(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzby;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    if-eqz p1, :cond_2

    .line 119
    .line 120
    iget-object p2, p4, Lcom/google/android/gms/internal/ads/zzakb;->zza:Lcom/google/android/gms/internal/ads/zzam;

    .line 121
    .line 122
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzam;->zzb()Lcom/google/android/gms/internal/ads/zzak;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    iget-object v0, p4, Lcom/google/android/gms/internal/ads/zzakb;->zza:Lcom/google/android/gms/internal/ads/zzam;

    .line 127
    .line 128
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzam;->zzk:Lcom/google/android/gms/internal/ads/zzby;

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzby;->zzd(Lcom/google/android/gms/internal/ads/zzby;)Lcom/google/android/gms/internal/ads/zzby;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzak;->zzP(Lcom/google/android/gms/internal/ads/zzby;)Lcom/google/android/gms/internal/ads/zzak;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iput-object p1, p4, Lcom/google/android/gms/internal/ads/zzakb;->zza:Lcom/google/android/gms/internal/ads/zzam;

    .line 142
    .line 143
    :cond_2
    :goto_0
    return p3

    .line 144
    :cond_3
    iget-object p1, p4, Lcom/google/android/gms/internal/ads/zzakb;->zza:Lcom/google/android/gms/internal/ads/zzam;

    .line 145
    .line 146
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    return v0

    .line 150
    nop

    .line 151
    :array_0
    .array-data 8
        0x3318668473187b56L    # 1.4828557242110078E-62
        -0x3811225d807f6759L    # -3.2822106665131784E38
        0x68324def91ad49f5L    # 8.351290586422359E193
    .end array-data
.end method
