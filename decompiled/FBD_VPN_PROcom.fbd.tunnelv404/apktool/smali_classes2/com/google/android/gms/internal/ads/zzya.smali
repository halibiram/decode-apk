.class final Lcom/google/android/gms/internal/ads/zzya;
.super Lcom/google/android/gms/internal/ads/zzyc;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final zze:I

.field private final zzf:Z

.field private final zzg:Z

.field private final zzh:Z

.field private final zzi:I

.field private final zzj:I

.field private final zzk:I

.field private final zzl:I

.field private final zzm:Z


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzcz;ILcom/google/android/gms/internal/ads/zzxu;ILjava/lang/String;)V
    .locals 3
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzyc;-><init>(ILcom/google/android/gms/internal/ads/zzcz;I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-static {p5, p1}, Lcom/google/android/gms/internal/ads/zzyg;->zzo(IZ)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzya;->zzf:Z

    .line 10
    .line 11
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzyc;->zzd:Lcom/google/android/gms/internal/ads/zzam;

    .line 12
    .line 13
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzam;->zze:I

    .line 14
    .line 15
    iget p3, p4, Lcom/google/android/gms/internal/ads/zzdg;->zzy:I

    .line 16
    .line 17
    const/4 p3, 0x1

    .line 18
    and-int/lit8 v0, p2, 0x1

    .line 19
    .line 20
    if-eq p3, v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x1

    .line 25
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzya;->zzg:Z

    .line 26
    .line 27
    and-int/lit8 p2, p2, 0x2

    .line 28
    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    const/4 p2, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 p2, 0x0

    .line 34
    :goto_1
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzya;->zzh:Z

    .line 35
    .line 36
    iget-object p2, p4, Lcom/google/android/gms/internal/ads/zzdg;->zzw:Lcom/google/android/gms/internal/ads/zzgaa;

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_2

    .line 43
    .line 44
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v0, p3, [J

    .line 47
    .line 48
    const-wide v1, -0x16f2e8f450201800L    # -1.0872545141031443E198

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    aput-wide v1, v0, p1

    .line 54
    .line 55
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgaa;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgaa;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    iget-object p2, p4, Lcom/google/android/gms/internal/ads/zzdg;->zzw:Lcom/google/android/gms/internal/ads/zzgaa;

    .line 68
    .line 69
    :goto_2
    const/4 v0, 0x0

    .line 70
    :goto_3
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-ge v0, v1, :cond_4

    .line 75
    .line 76
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyc;->zzd:Lcom/google/android/gms/internal/ads/zzam;

    .line 77
    .line 78
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzyg;->zzb(Lcom/google/android/gms/internal/ads/zzam;Ljava/lang/String;Z)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-lez v1, :cond_3

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_3
    add-int/2addr v0, p3

    .line 92
    goto :goto_3

    .line 93
    :cond_4
    const v0, 0x7fffffff

    .line 94
    .line 95
    .line 96
    const/4 v1, 0x0

    .line 97
    :goto_4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzya;->zzi:I

    .line 98
    .line 99
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzya;->zzj:I

    .line 100
    .line 101
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzyc;->zzd:Lcom/google/android/gms/internal/ads/zzam;

    .line 102
    .line 103
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzam;->zzf:I

    .line 104
    .line 105
    iget v0, p4, Lcom/google/android/gms/internal/ads/zzdg;->zzx:I

    .line 106
    .line 107
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzyg;->zza(II)I

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzya;->zzk:I

    .line 112
    .line 113
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyc;->zzd:Lcom/google/android/gms/internal/ads/zzam;

    .line 114
    .line 115
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzam;->zzf:I

    .line 116
    .line 117
    and-int/lit16 v0, v0, 0x440

    .line 118
    .line 119
    if-eqz v0, :cond_5

    .line 120
    .line 121
    const/4 v0, 0x1

    .line 122
    goto :goto_5

    .line 123
    :cond_5
    const/4 v0, 0x0

    .line 124
    :goto_5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzya;->zzm:Z

    .line 125
    .line 126
    invoke-static {p6}, Lcom/google/android/gms/internal/ads/zzyg;->zzh(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-nez v0, :cond_6

    .line 131
    .line 132
    const/4 v0, 0x1

    .line 133
    goto :goto_6

    .line 134
    :cond_6
    const/4 v0, 0x0

    .line 135
    :goto_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzyc;->zzd:Lcom/google/android/gms/internal/ads/zzam;

    .line 136
    .line 137
    invoke-static {v2, p6, v0}, Lcom/google/android/gms/internal/ads/zzyg;->zzb(Lcom/google/android/gms/internal/ads/zzam;Ljava/lang/String;Z)I

    .line 138
    .line 139
    .line 140
    move-result p6

    .line 141
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzya;->zzl:I

    .line 142
    .line 143
    if-gtz v1, :cond_7

    .line 144
    .line 145
    iget-object v0, p4, Lcom/google/android/gms/internal/ads/zzdg;->zzw:Lcom/google/android/gms/internal/ads/zzgaa;

    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_8

    .line 152
    .line 153
    if-gtz p2, :cond_7

    .line 154
    .line 155
    goto :goto_8

    .line 156
    :cond_7
    :goto_7
    const/4 p2, 0x1

    .line 157
    goto :goto_9

    .line 158
    :cond_8
    :goto_8
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzya;->zzg:Z

    .line 159
    .line 160
    if-nez p2, :cond_7

    .line 161
    .line 162
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzya;->zzh:Z

    .line 163
    .line 164
    if-eqz p2, :cond_9

    .line 165
    .line 166
    if-lez p6, :cond_9

    .line 167
    .line 168
    goto :goto_7

    .line 169
    :cond_9
    const/4 p2, 0x0

    .line 170
    :goto_9
    iget-boolean p4, p4, Lcom/google/android/gms/internal/ads/zzxu;->zzT:Z

    .line 171
    .line 172
    invoke-static {p5, p4}, Lcom/google/android/gms/internal/ads/zzyg;->zzo(IZ)Z

    .line 173
    .line 174
    .line 175
    move-result p4

    .line 176
    if-eqz p4, :cond_a

    .line 177
    .line 178
    if-eqz p2, :cond_a

    .line 179
    .line 180
    const/4 p1, 0x1

    .line 181
    :cond_a
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzya;->zze:I

    .line 182
    .line 183
    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzya;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzya;->zza(Lcom/google/android/gms/internal/ads/zzya;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzya;)I
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzp;->zzk()Lcom/google/android/gms/internal/ads/zzfzp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzya;->zzf:Z

    .line 6
    .line 7
    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzya;->zzf:Z

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfzp;->zze(ZZ)Lcom/google/android/gms/internal/ads/zzfzp;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzya;->zzi:I

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzya;->zzi:I

    .line 20
    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgbj;->zzc()Lcom/google/android/gms/internal/ads/zzgbj;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgbj;->zza()Lcom/google/android/gms/internal/ads/zzgbj;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfzp;->zzd(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfzp;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzya;->zzj:I

    .line 38
    .line 39
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzya;->zzj:I

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfzp;->zzb(II)Lcom/google/android/gms/internal/ads/zzfzp;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzya;->zzk:I

    .line 46
    .line 47
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzya;->zzk:I

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfzp;->zzb(II)Lcom/google/android/gms/internal/ads/zzfzp;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzya;->zzg:Z

    .line 54
    .line 55
    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzya;->zzg:Z

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfzp;->zze(ZZ)Lcom/google/android/gms/internal/ads/zzfzp;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzya;->zzh:Z

    .line 62
    .line 63
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzya;->zzh:Z

    .line 68
    .line 69
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzya;->zzj:I

    .line 74
    .line 75
    if-nez v3, :cond_0

    .line 76
    .line 77
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgbj;->zzc()Lcom/google/android/gms/internal/ads/zzgbj;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgbj;->zzc()Lcom/google/android/gms/internal/ads/zzgbj;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgbj;->zza()Lcom/google/android/gms/internal/ads/zzgbj;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfzp;->zzd(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfzp;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzya;->zzl:I

    .line 95
    .line 96
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzya;->zzl:I

    .line 97
    .line 98
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfzp;->zzb(II)Lcom/google/android/gms/internal/ads/zzfzp;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzya;->zzk:I

    .line 103
    .line 104
    if-nez v1, :cond_1

    .line 105
    .line 106
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzya;->zzm:Z

    .line 107
    .line 108
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzya;->zzm:Z

    .line 109
    .line 110
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfzp;->zzf(ZZ)Lcom/google/android/gms/internal/ads/zzfzp;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfzp;->zza()I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    return p1
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzya;->zze:I

    return v0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzyc;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzya;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1
.end method
