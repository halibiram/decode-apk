.class public final Lcom/google/android/gms/internal/ads/zzamq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzacu;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzadb;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzamr;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfp;

.field private zzd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzamp;->zza:Lcom/google/android/gms/internal/ads/zzamp;

    .line 2
    .line 3
    sput-object v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:Lcom/google/android/gms/internal/ads/zzadb;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzamr;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzamr;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Lcom/google/android/gms/internal/ads/zzamr;

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfp;

    .line 13
    .line 14
    const/16 v1, 0x4000

    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzacv;Lcom/google/android/gms/internal/ads/zzadr;)I
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/16 v0, 0x4000

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzacv;->zza([BII)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 p2, -0x1

    .line 15
    if-ne p1, p2, :cond_0

    .line 16
    .line 17
    return p2

    .line 18
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    .line 19
    .line 20
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    .line 24
    .line 25
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzJ(I)V

    .line 26
    .line 27
    .line 28
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzd:Z

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Lcom/google/android/gms/internal/ads/zzamr;

    .line 33
    .line 34
    const-wide/16 v2, 0x0

    .line 35
    .line 36
    const/4 p2, 0x4

    .line 37
    invoke-virtual {p1, v2, v3, p2}, Lcom/google/android/gms/internal/ads/zzamr;->zzd(JI)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzd:Z

    .line 42
    .line 43
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Lcom/google/android/gms/internal/ads/zzamr;

    .line 44
    .line 45
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzamr;->zza(Lcom/google/android/gms/internal/ads/zzfp;)V

    .line 48
    .line 49
    .line 50
    return v1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzacx;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaok;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/high16 v3, -0x80000000

    .line 6
    .line 7
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzaok;-><init>(III)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Lcom/google/android/gms/internal/ads/zzamr;

    .line 11
    .line 12
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzamr;->zzb(Lcom/google/android/gms/internal/ads/zzacx;Lcom/google/android/gms/internal/ads/zzaok;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacx;->zzD()V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzadt;

    .line 19
    .line 20
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    const-wide/16 v3, 0x0

    .line 26
    .line 27
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzadt;-><init>(JJ)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzacx;->zzO(Lcom/google/android/gms/internal/ads/zzadu;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final zzd(JJ)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzd:Z

    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Lcom/google/android/gms/internal/ads/zzamr;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamr;->zze()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzacv;)Z
    .locals 15

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfp;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    move-object/from16 v5, p1

    .line 15
    .line 16
    check-cast v5, Lcom/google/android/gms/internal/ads/zzack;

    .line 17
    .line 18
    invoke-virtual {v5, v4, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzack;->zzm([BIIZ)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzo()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const v6, 0x494433

    .line 29
    .line 30
    .line 31
    const/4 v7, 0x3

    .line 32
    if-eq v4, v6, :cond_7

    .line 33
    .line 34
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzj()V

    .line 35
    .line 36
    .line 37
    move-object/from16 v4, p1

    .line 38
    .line 39
    check-cast v4, Lcom/google/android/gms/internal/ads/zzack;

    .line 40
    .line 41
    invoke-virtual {v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzack;->zzl(IZ)Z

    .line 42
    .line 43
    .line 44
    move v5, v3

    .line 45
    :goto_1
    const/4 v1, 0x0

    .line 46
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    const/4 v8, 0x7

    .line 51
    invoke-virtual {v4, v6, v2, v8, v2}, Lcom/google/android/gms/internal/ads/zzack;->zzm([BIIZ)Z

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzq()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    const v9, 0xac40

    .line 62
    .line 63
    .line 64
    const v10, 0xac41

    .line 65
    .line 66
    .line 67
    if-eq v6, v9, :cond_1

    .line 68
    .line 69
    if-eq v6, v10, :cond_1

    .line 70
    .line 71
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzj()V

    .line 72
    .line 73
    .line 74
    add-int/lit8 v5, v5, 0x1

    .line 75
    .line 76
    sub-int v1, v5, v3

    .line 77
    .line 78
    const/16 v6, 0x2000

    .line 79
    .line 80
    if-ge v1, v6, :cond_0

    .line 81
    .line 82
    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzack;->zzl(IZ)Z

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_0
    return v2

    .line 87
    :cond_1
    const/4 v9, 0x1

    .line 88
    add-int/2addr v1, v9

    .line 89
    const/4 v11, 0x4

    .line 90
    if-lt v1, v11, :cond_2

    .line 91
    .line 92
    return v9

    .line 93
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    array-length v12, v9

    .line 98
    const/4 v13, -0x1

    .line 99
    if-ge v12, v8, :cond_3

    .line 100
    .line 101
    const/4 v12, -0x1

    .line 102
    goto :goto_4

    .line 103
    :cond_3
    const/4 v12, 0x2

    .line 104
    aget-byte v12, v9, v12

    .line 105
    .line 106
    and-int/lit16 v12, v12, 0xff

    .line 107
    .line 108
    aget-byte v14, v9, v7

    .line 109
    .line 110
    shl-int/lit8 v12, v12, 0x8

    .line 111
    .line 112
    and-int/lit16 v14, v14, 0xff

    .line 113
    .line 114
    or-int/2addr v12, v14

    .line 115
    const v14, 0xffff

    .line 116
    .line 117
    .line 118
    if-ne v12, v14, :cond_4

    .line 119
    .line 120
    aget-byte v11, v9, v11

    .line 121
    .line 122
    and-int/lit16 v11, v11, 0xff

    .line 123
    .line 124
    const/4 v12, 0x5

    .line 125
    aget-byte v12, v9, v12

    .line 126
    .line 127
    and-int/lit16 v12, v12, 0xff

    .line 128
    .line 129
    shl-int/lit8 v11, v11, 0x10

    .line 130
    .line 131
    shl-int/lit8 v12, v12, 0x8

    .line 132
    .line 133
    const/4 v14, 0x6

    .line 134
    aget-byte v9, v9, v14

    .line 135
    .line 136
    and-int/lit16 v9, v9, 0xff

    .line 137
    .line 138
    or-int/2addr v11, v12

    .line 139
    or-int v12, v11, v9

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_4
    const/4 v8, 0x4

    .line 143
    :goto_3
    if-ne v6, v10, :cond_5

    .line 144
    .line 145
    add-int/lit8 v8, v8, 0x2

    .line 146
    .line 147
    :cond_5
    add-int/2addr v12, v8

    .line 148
    :goto_4
    if-ne v12, v13, :cond_6

    .line 149
    .line 150
    return v2

    .line 151
    :cond_6
    add-int/lit8 v12, v12, -0x7

    .line 152
    .line 153
    invoke-virtual {v4, v12, v2}, Lcom/google/android/gms/internal/ads/zzack;->zzl(IZ)Z

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_7
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzl()I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    add-int/lit8 v6, v4, 0xa

    .line 165
    .line 166
    add-int/2addr v3, v6

    .line 167
    invoke-virtual {v5, v4, v2}, Lcom/google/android/gms/internal/ads/zzack;->zzl(IZ)Z

    .line 168
    .line 169
    .line 170
    goto/16 :goto_0
.end method
