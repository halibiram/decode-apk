.class final Lcom/google/android/gms/internal/ads/zzaku;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaea;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzaea;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzakp;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzaki;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfp;

.field private zze:I

.field private zzf:I

.field private zzg:[B

.field private zzh:Lcom/google/android/gms/internal/ads/zzakr;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzi:Lcom/google/android/gms/internal/ads/zzam;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaea;Lcom/google/android/gms/internal/ads/zzakp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaku;->zza:Lcom/google/android/gms/internal/ads/zzaea;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzb:Lcom/google/android/gms/internal/ads/zzakp;

    .line 7
    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaki;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaki;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzc:Lcom/google/android/gms/internal/ads/zzaki;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaku;->zze:I

    .line 17
    .line 18
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzf:I

    .line 19
    .line 20
    sget-object p1, Lcom/google/android/gms/internal/ads/zzfy;->zzf:[B

    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzg:[B

    .line 23
    .line 24
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfp;

    .line 25
    .line 26
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfp;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzd:Lcom/google/android/gms/internal/ads/zzfp;

    .line 30
    .line 31
    return-void
.end method

.method private final zzb(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzg:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzf:I

    .line 5
    .line 6
    sub-int/2addr v0, v1

    .line 7
    if-lt v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaku;->zze:I

    .line 11
    .line 12
    sub-int/2addr v1, v0

    .line 13
    add-int v0, v1, v1

    .line 14
    .line 15
    add-int/2addr p1, v1

    .line 16
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzg:[B

    .line 21
    .line 22
    array-length v2, v0

    .line 23
    if-gt p1, v2, :cond_1

    .line 24
    .line 25
    move-object p1, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-array p1, p1, [B

    .line 28
    .line 29
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaku;->zze:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    .line 34
    .line 35
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzaku;->zze:I

    .line 36
    .line 37
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzf:I

    .line 38
    .line 39
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzg:[B

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final synthetic zza(JILcom/google/android/gms/internal/ads/zzakj;)V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzi:Lcom/google/android/gms/internal/ads/zzam;

    .line 3
    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v2, p4, Lcom/google/android/gms/internal/ads/zzakj;->zza:Lcom/google/android/gms/internal/ads/zzgaa;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lcom/google/android/gms/internal/ads/zzec;

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzec;->zza()Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-wide v2, p4, Lcom/google/android/gms/internal/ads/zzakj;->zzc:J

    .line 43
    .line 44
    new-instance v4, Landroid/os/Bundle;

    .line 45
    .line 46
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v6, v0, [J

    .line 52
    .line 53
    fill-array-data v6, :array_0

    .line 54
    .line 55
    .line 56
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 64
    .line 65
    .line 66
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    new-array v0, v0, [J

    .line 69
    .line 70
    fill-array-data v0, :array_1

    .line 71
    .line 72
    .line 73
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v4, v0, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 81
    .line 82
    .line 83
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzd:Lcom/google/android/gms/internal/ads/zzfp;

    .line 98
    .line 99
    array-length v6, v1

    .line 100
    invoke-virtual {v0, v1, v6}, Lcom/google/android/gms/internal/ads/zzfp;->zzI([BI)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaku;->zza:Lcom/google/android/gms/internal/ads/zzaea;

    .line 104
    .line 105
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzd:Lcom/google/android/gms/internal/ads/zzfp;

    .line 106
    .line 107
    invoke-interface {v0, v1, v6}, Lcom/google/android/gms/internal/ads/zzaea;->zzr(Lcom/google/android/gms/internal/ads/zzfp;I)V

    .line 108
    .line 109
    .line 110
    const v0, 0x7fffffff

    .line 111
    .line 112
    .line 113
    and-int v5, p3, v0

    .line 114
    .line 115
    iget-wide p3, p4, Lcom/google/android/gms/internal/ads/zzakj;->zzb:J

    .line 116
    .line 117
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    const-wide v2, 0x7fffffffffffffffL

    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    cmp-long v4, p3, v0

    .line 128
    .line 129
    if-nez v4, :cond_2

    .line 130
    .line 131
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzi:Lcom/google/android/gms/internal/ads/zzam;

    .line 132
    .line 133
    iget-wide p3, p3, Lcom/google/android/gms/internal/ads/zzam;->zzq:J

    .line 134
    .line 135
    cmp-long v0, p3, v2

    .line 136
    .line 137
    if-nez v0, :cond_1

    .line 138
    .line 139
    const/4 p3, 0x1

    .line 140
    goto :goto_1

    .line 141
    :cond_1
    const/4 p3, 0x0

    .line 142
    :goto_1
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzek;->zzf(Z)V

    .line 143
    .line 144
    .line 145
    :goto_2
    move-wide v3, p1

    .line 146
    goto :goto_3

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzi:Lcom/google/android/gms/internal/ads/zzam;

    .line 148
    .line 149
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzam;->zzq:J

    .line 150
    .line 151
    cmp-long v4, v0, v2

    .line 152
    .line 153
    if-nez v4, :cond_3

    .line 154
    .line 155
    add-long/2addr p1, p3

    .line 156
    goto :goto_2

    .line 157
    :cond_3
    add-long p1, p3, v0

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaku;->zza:Lcom/google/android/gms/internal/ads/zzaea;

    .line 161
    .line 162
    const/4 v7, 0x0

    .line 163
    const/4 v8, 0x0

    .line 164
    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzaea;->zzt(JIIILcom/google/android/gms/internal/ads/zzadz;)V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    nop

    .line 169
    :array_0
    .array-data 8
        0x460af0aeb6253baeL    # 2.668024801222673E29
        0x765784f3cda6b6a0L    # 1.1571814692773563E262
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    :array_1
    .array-data 8
        -0x1783f7e9729f083eL    # -2.0462797374505694E195
        -0x5dd4862612b9016bL    # -4.400735854794561E-144
    .end array-data
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/ads/zzu;IZ)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzady;->zza(Lcom/google/android/gms/internal/ads/zzaea;Lcom/google/android/gms/internal/ads/zzu;IZ)I

    move-result p1

    return p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzu;IZI)I
    .locals 1

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzh:Lcom/google/android/gms/internal/ads/zzakr;

    .line 2
    .line 3
    if-nez p4, :cond_0

    .line 4
    .line 5
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzaku;->zza:Lcom/google/android/gms/internal/ads/zzaea;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-interface {p4, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzaea;->zzg(Lcom/google/android/gms/internal/ads/zzu;IZI)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzaku;->zzb(I)V

    .line 14
    .line 15
    .line 16
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzg:[B

    .line 17
    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzf:I

    .line 19
    .line 20
    invoke-interface {p1, p4, v0, p2}, Lcom/google/android/gms/internal/ads/zzu;->zza([BII)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 p2, -0x1

    .line 25
    if-ne p1, p2, :cond_2

    .line 26
    .line 27
    if-eqz p3, :cond_1

    .line 28
    .line 29
    return p2

    .line 30
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_2
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzf:I

    .line 37
    .line 38
    add-int/2addr p2, p1

    .line 39
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzf:I

    .line 40
    .line 41
    return p1
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzam;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcb;->zzb(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x3

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzd(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzi:Lcom/google/android/gms/internal/ads/zzam;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzam;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzi:Lcom/google/android/gms/internal/ads/zzam;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzb:Lcom/google/android/gms/internal/ads/zzakp;

    .line 30
    .line 31
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzakp;->zzc(Lcom/google/android/gms/internal/ads/zzam;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzb:Lcom/google/android/gms/internal/ads/zzakp;

    .line 38
    .line 39
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzakp;->zzb(Lcom/google/android/gms/internal/ads/zzam;)Lcom/google/android/gms/internal/ads/zzakr;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 v0, 0x0

    .line 45
    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzh:Lcom/google/android/gms/internal/ads/zzakr;

    .line 46
    .line 47
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzh:Lcom/google/android/gms/internal/ads/zzakr;

    .line 48
    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaku;->zza:Lcom/google/android/gms/internal/ads/zzaea;

    .line 52
    .line 53
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaea;->zzl(Lcom/google/android/gms/internal/ads/zzam;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaku;->zza:Lcom/google/android/gms/internal/ads/zzaea;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzam;->zzb()Lcom/google/android/gms/internal/ads/zzak;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    const/4 v3, 0x5

    .line 66
    new-array v3, v3, [J

    .line 67
    .line 68
    fill-array-data v3, :array_0

    .line 69
    .line 70
    .line 71
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzak;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 79
    .line 80
    .line 81
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzak;->zzz(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 84
    .line 85
    .line 86
    const-wide v2, 0x7fffffffffffffffL

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzak;->zzaa(J)Lcom/google/android/gms/internal/ads/zzak;

    .line 92
    .line 93
    .line 94
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzb:Lcom/google/android/gms/internal/ads/zzakp;

    .line 95
    .line 96
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzakp;->zza(Lcom/google/android/gms/internal/ads/zzam;)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzak;->zzD(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaea;->zzl(Lcom/google/android/gms/internal/ads/zzam;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :array_0
    .array-data 8
        0x743fbdc2270505e5L    # 9.090344308920465E251
        0x55225f08f7ca5a9eL    # 1.2858395975244463E102
        0x182c494837634475L    # 3.099904256827609E-192
        0x3491da7b56d65a78L    # 1.8202993939131876E-55
        0x52db3023b1191ac9L    # 1.384575625096371E91
    .end array-data
.end method

.method public final synthetic zzr(Lcom/google/android/gms/internal/ads/zzfp;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzady;->zzb(Lcom/google/android/gms/internal/ads/zzaea;Lcom/google/android/gms/internal/ads/zzfp;I)V

    return-void
.end method

.method public final zzs(Lcom/google/android/gms/internal/ads/zzfp;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzh:Lcom/google/android/gms/internal/ads/zzakr;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaku;->zza:Lcom/google/android/gms/internal/ads/zzaea;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaea;->zzs(Lcom/google/android/gms/internal/ads/zzfp;II)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzaku;->zzb(I)V

    .line 12
    .line 13
    .line 14
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzg:[B

    .line 15
    .line 16
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzf:I

    .line 17
    .line 18
    invoke-virtual {p1, p3, v0, p2}, Lcom/google/android/gms/internal/ads/zzfp;->zzG([BII)V

    .line 19
    .line 20
    .line 21
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzf:I

    .line 22
    .line 23
    add-int/2addr p1, p2

    .line 24
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzf:I

    .line 25
    .line 26
    return-void
.end method

.method public final zzt(JIIILcom/google/android/gms/internal/ads/zzadz;)V
    .locals 8
    .param p6    # Lcom/google/android/gms/internal/ads/zzadz;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzh:Lcom/google/android/gms/internal/ads/zzakr;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaku;->zza:Lcom/google/android/gms/internal/ads/zzaea;

    .line 6
    .line 7
    move-wide v2, p1

    .line 8
    move v4, p3

    .line 9
    move v5, p4

    .line 10
    move v6, p5

    .line 11
    move-object v7, p6

    .line 12
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaea;->zzt(JIIILcom/google/android/gms/internal/ads/zzadz;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    if-nez p6, :cond_1

    .line 18
    .line 19
    const/4 p6, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p6, 0x0

    .line 22
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/4 v2, 0x6

    .line 25
    new-array v2, v2, [J

    .line 26
    .line 27
    fill-array-data v2, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {p6, v1}, Lcom/google/android/gms/internal/ads/zzek;->zze(ZLjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget p6, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzf:I

    .line 41
    .line 42
    sub-int/2addr p6, p5

    .line 43
    sub-int/2addr p6, p4

    .line 44
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzh:Lcom/google/android/gms/internal/ads/zzakr;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzg:[B

    .line 47
    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzakq;->zza()Lcom/google/android/gms/internal/ads/zzakq;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    new-instance v6, Lcom/google/android/gms/internal/ads/zzakt;

    .line 53
    .line 54
    invoke-direct {v6, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzakt;-><init>(Lcom/google/android/gms/internal/ads/zzaku;JI)V

    .line 55
    .line 56
    .line 57
    move v3, p6

    .line 58
    move v4, p4

    .line 59
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzakr;->zza([BIILcom/google/android/gms/internal/ads/zzakq;Lcom/google/android/gms/internal/ads/zzep;)V

    .line 60
    .line 61
    .line 62
    add-int/2addr p6, p4

    .line 63
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzaku;->zze:I

    .line 64
    .line 65
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzf:I

    .line 66
    .line 67
    if-ne p6, p1, :cond_2

    .line 68
    .line 69
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaku;->zze:I

    .line 70
    .line 71
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaku;->zzf:I

    .line 72
    .line 73
    :cond_2
    return-void

    .line 74
    nop

    .line 75
    :array_0
    .array-data 8
        -0x4f031e1c3e59f8b9L    # -1.0216780399826531E-72
        0x6e14f98bfacf1c2bL    # 1.8954593879066937E222
        -0x60f005cd3ebf170fL
        -0x25951aaf821363c7L    # -3.64126255623858E127
        0x1419620e663f055eL    # 7.539916949294654E-212
        0x5dea0bae543d831aL    # 2.5408719984295334E144
    .end array-data
.end method
