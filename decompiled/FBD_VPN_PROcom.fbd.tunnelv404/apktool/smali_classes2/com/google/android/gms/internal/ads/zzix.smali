.class final Lcom/google/android/gms/internal/ads/zzix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzlh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzmm;

.field private final zzb:Lcom/google/android/gms/internal/ads/zziw;

.field private zzc:Lcom/google/android/gms/internal/ads/zzmf;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzd:Lcom/google/android/gms/internal/ads/zzlh;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zze:Z

.field private zzf:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zziw;Lcom/google/android/gms/internal/ads/zzel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzix;->zzb:Lcom/google/android/gms/internal/ads/zziw;

    .line 5
    .line 6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzmm;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzmm;-><init>(Lcom/google/android/gms/internal/ads/zzel;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzix;->zza:Lcom/google/android/gms/internal/ads/zzmm;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzix;->zze:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzb(Z)J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzix;->zzc:Lcom/google/android/gms/internal/ads/zzmf;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzmf;->zzV()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzix;->zzc:Lcom/google/android/gms/internal/ads/zzmf;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzmf;->zzW()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    if-nez p1, :cond_3

    .line 20
    .line 21
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzix;->zzc:Lcom/google/android/gms/internal/ads/zzmf;

    .line 22
    .line 23
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzmf;->zzP()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzix;->zzd:Lcom/google/android/gms/internal/ads/zzlh;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzlh;->zza()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzix;->zze:Z

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzix;->zza:Lcom/google/android/gms/internal/ads/zzmm;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzmm;->zza()J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    cmp-long v4, v0, v2

    .line 50
    .line 51
    if-gez v4, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzix;->zza:Lcom/google/android/gms/internal/ads/zzmm;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzmm;->zze()V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const/4 v2, 0x0

    .line 60
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzix;->zze:Z

    .line 61
    .line 62
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzix;->zzf:Z

    .line 63
    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzix;->zza:Lcom/google/android/gms/internal/ads/zzmm;

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzmm;->zzd()V

    .line 69
    .line 70
    .line 71
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzix;->zza:Lcom/google/android/gms/internal/ads/zzmm;

    .line 72
    .line 73
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzmm;->zzb(J)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzlh;->zzc()Lcom/google/android/gms/internal/ads/zzcg;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzix;->zza:Lcom/google/android/gms/internal/ads/zzmm;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzmm;->zzc()Lcom/google/android/gms/internal/ads/zzcg;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcg;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_4

    .line 91
    .line 92
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzix;->zza:Lcom/google/android/gms/internal/ads/zzmm;

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzmm;->zzg(Lcom/google/android/gms/internal/ads/zzcg;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzix;->zzb:Lcom/google/android/gms/internal/ads/zziw;

    .line 98
    .line 99
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zziw;->zza(Lcom/google/android/gms/internal/ads/zzcg;)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 104
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzix;->zze:Z

    .line 105
    .line 106
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzix;->zzf:Z

    .line 107
    .line 108
    if-eqz p1, :cond_4

    .line 109
    .line 110
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzix;->zza:Lcom/google/android/gms/internal/ads/zzmm;

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzmm;->zzd()V

    .line 113
    .line 114
    .line 115
    :cond_4
    :goto_1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzix;->zze:Z

    .line 116
    .line 117
    if-eqz p1, :cond_5

    .line 118
    .line 119
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzix;->zza:Lcom/google/android/gms/internal/ads/zzmm;

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzmm;->zza()J

    .line 122
    .line 123
    .line 124
    move-result-wide v0

    .line 125
    goto :goto_2

    .line 126
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzix;->zzd:Lcom/google/android/gms/internal/ads/zzlh;

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzlh;->zza()J

    .line 132
    .line 133
    .line 134
    move-result-wide v0

    .line 135
    :goto_2
    return-wide v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzcg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzix;->zzd:Lcom/google/android/gms/internal/ads/zzlh;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzlh;->zzc()Lcom/google/android/gms/internal/ads/zzcg;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzix;->zza:Lcom/google/android/gms/internal/ads/zzmm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzmm;->zzc()Lcom/google/android/gms/internal/ads/zzcg;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzmf;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzix;->zzc:Lcom/google/android/gms/internal/ads/zzmf;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzix;->zzd:Lcom/google/android/gms/internal/ads/zzlh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzix;->zzc:Lcom/google/android/gms/internal/ads/zzmf;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzix;->zze:Z

    :cond_0
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzmf;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzmf;->zzk()Lcom/google/android/gms/internal/ads/zzlh;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzix;->zzd:Lcom/google/android/gms/internal/ads/zzlh;

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzix;->zzd:Lcom/google/android/gms/internal/ads/zzlh;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzix;->zzc:Lcom/google/android/gms/internal/ads/zzmf;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzix;->zza:Lcom/google/android/gms/internal/ads/zzmm;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzmm;->zzc()Lcom/google/android/gms/internal/ads/zzcg;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzlh;->zzg(Lcom/google/android/gms/internal/ads/zzcg;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/4 v1, 0x6

    .line 32
    new-array v1, v1, [J

    .line 33
    .line 34
    fill-array-data v1, :array_0

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/16 v0, 0x3e8

    .line 48
    .line 49
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zziz;->zzd(Ljava/lang/RuntimeException;I)Lcom/google/android/gms/internal/ads/zziz;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    throw p1

    .line 54
    :cond_1
    return-void

    .line 55
    :array_0
    .array-data 8
        -0x617b065e9a9b8305L
        -0x3218a5c29343cfceL    # -1.967444213342874E67
        -0x40b1d08240526924L    # -9.211887366802024E-4
        -0x65d92c8bee849b6aL
        -0x5b82157c6af1597cL    # -6.585465366306686E-133
        -0xc033fd0a0c18eedL    # -5.146182431270877E250
    .end array-data
.end method

.method public final zzf(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzix;->zza:Lcom/google/android/gms/internal/ads/zzmm;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzmm;->zzb(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzcg;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzix;->zzd:Lcom/google/android/gms/internal/ads/zzlh;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzlh;->zzg(Lcom/google/android/gms/internal/ads/zzcg;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzix;->zzd:Lcom/google/android/gms/internal/ads/zzlh;

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzlh;->zzc()Lcom/google/android/gms/internal/ads/zzcg;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzix;->zza:Lcom/google/android/gms/internal/ads/zzmm;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzmm;->zzg(Lcom/google/android/gms/internal/ads/zzcg;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final zzh()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzix;->zzf:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzix;->zza:Lcom/google/android/gms/internal/ads/zzmm;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzmm;->zzd()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final zzi()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzix;->zzf:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzix;->zza:Lcom/google/android/gms/internal/ads/zzmm;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzmm;->zze()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final zzj()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzix;->zze:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzix;->zzd:Lcom/google/android/gms/internal/ads/zzlh;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzlh;->zzj()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method
