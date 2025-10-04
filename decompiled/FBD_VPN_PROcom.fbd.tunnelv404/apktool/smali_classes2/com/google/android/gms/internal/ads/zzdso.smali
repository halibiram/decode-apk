.class public final Lcom/google/android/gms/internal/ads/zzdso;
.super Lcom/google/android/gms/internal/ads/zzcwh;
.source "SourceFile"


# instance fields
.field private final zzc:Landroid/content/Context;

.field private final zzd:Ljava/lang/ref/WeakReference;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdkw;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzdhy;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzdbk;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzdcr;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzcxc;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzcak;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzfrc;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzfha;

.field private zzm:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcwg;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcjk;Lcom/google/android/gms/internal/ads/zzdkw;Lcom/google/android/gms/internal/ads/zzdhy;Lcom/google/android/gms/internal/ads/zzdbk;Lcom/google/android/gms/internal/ads/zzdcr;Lcom/google/android/gms/internal/ads/zzcxc;Lcom/google/android/gms/internal/ads/zzfgm;Lcom/google/android/gms/internal/ads/zzfrc;Lcom/google/android/gms/internal/ads/zzfha;)V
    .locals 1
    .param p3    # Lcom/google/android/gms/internal/ads/zzcjk;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcwh;-><init>(Lcom/google/android/gms/internal/ads/zzcwg;)V

    .line 3
    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdso;->zzm:Z

    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdso;->zzc:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdso;->zze:Lcom/google/android/gms/internal/ads/zzdkw;

    .line 11
    .line 12
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdso;->zzd:Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdso;->zzf:Lcom/google/android/gms/internal/ads/zzdhy;

    .line 20
    .line 21
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdso;->zzg:Lcom/google/android/gms/internal/ads/zzdbk;

    .line 22
    .line 23
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdso;->zzh:Lcom/google/android/gms/internal/ads/zzdcr;

    .line 24
    .line 25
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdso;->zzi:Lcom/google/android/gms/internal/ads/zzcxc;

    .line 26
    .line 27
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzdso;->zzk:Lcom/google/android/gms/internal/ads/zzfrc;

    .line 28
    .line 29
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcbe;

    .line 30
    .line 31
    iget-object p3, p9, Lcom/google/android/gms/internal/ads/zzfgm;->zzm:Lcom/google/android/gms/internal/ads/zzcag;

    .line 32
    .line 33
    if-eqz p3, :cond_0

    .line 34
    .line 35
    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzcag;->zza:Ljava/lang/String;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    new-array p5, v0, [J

    .line 41
    .line 42
    const-wide p6, -0x269fe879567c0129L    # -3.324264241723608E122

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    aput-wide p6, p5, p1

    .line 48
    .line 49
    invoke-direct {p4, p5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :goto_0
    if-eqz p3, :cond_1

    .line 57
    .line 58
    iget v0, p3, Lcom/google/android/gms/internal/ads/zzcag;->zzb:I

    .line 59
    .line 60
    :cond_1
    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzcbe;-><init>(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdso;->zzj:Lcom/google/android/gms/internal/ads/zzcak;

    .line 64
    .line 65
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzdso;->zzl:Lcom/google/android/gms/internal/ads/zzfha;

    .line 66
    .line 67
    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdso;->zzd:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzcjk;

    .line 8
    .line 9
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgc;->zzgL:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdso;->zzm:Z

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcep;->zze:Lcom/google/android/gms/internal/ads/zzgey;

    .line 34
    .line 35
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdsn;

    .line 36
    .line 37
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdsn;-><init>(Lcom/google/android/gms/internal/ads/zzcjk;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjk;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 56
    .line 57
    .line 58
    throw v0
.end method

.method public final zza()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdso;->zzh:Lcom/google/android/gms/internal/ads/zzdcr;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdcr;->zzb()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzcak;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdso;->zzj:Lcom/google/android/gms/internal/ads/zzcak;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzfha;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdso;->zzl:Lcom/google/android/gms/internal/ads/zzfha;

    return-object v0
.end method

.method public final zze()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdso;->zzi:Lcom/google/android/gms/internal/ads/zzcxc;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxc;->zzg()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final zzf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdso;->zzm:Z

    return v0
.end method

.method public final zzg()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdso;->zzd:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzcjk;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjk;->zzaD()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public final zzh(ZLandroid/app/Activity;)Z
    .locals 4
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzaB:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdso;->zzc:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzt;->zzF(Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    const/16 p2, 0x1c

    .line 34
    .line 35
    new-array p2, p2, [J

    .line 36
    .line 37
    fill-array-data p2, :array_0

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdso;->zzg:Lcom/google/android/gms/internal/ads/zzdbk;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdbk;->zzb()V

    .line 53
    .line 54
    .line 55
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzaC:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 56
    .line 57
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Ljava/lang/Boolean;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_0

    .line 72
    .line 73
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdso;->zzk:Lcom/google/android/gms/internal/ads/zzfrc;

    .line 74
    .line 75
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwh;->zza:Lcom/google/android/gms/internal/ads/zzfgy;

    .line 76
    .line 77
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfgy;->zzb:Lcom/google/android/gms/internal/ads/zzfgx;

    .line 78
    .line 79
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfgx;->zzb:Lcom/google/android/gms/internal/ads/zzfgp;

    .line 80
    .line 81
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfgp;->zzb:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfrc;->zza(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_0
    return v1

    .line 87
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdso;->zzm:Z

    .line 88
    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    const/4 p2, 0x6

    .line 94
    new-array p2, p2, [J

    .line 95
    .line 96
    fill-array-data p2, :array_1

    .line 97
    .line 98
    .line 99
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdso;->zzg:Lcom/google/android/gms/internal/ads/zzdbk;

    .line 110
    .line 111
    const/16 p2, 0xa

    .line 112
    .line 113
    const/4 v0, 0x0

    .line 114
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzfij;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdbk;->zza(Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 119
    .line 120
    .line 121
    return v1

    .line 122
    :cond_2
    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdso;->zzm:Z

    .line 124
    .line 125
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdso;->zzf:Lcom/google/android/gms/internal/ads/zzdhy;

    .line 126
    .line 127
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdhy;->zzb()V

    .line 128
    .line 129
    .line 130
    if-nez p2, :cond_3

    .line 131
    .line 132
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdso;->zzc:Landroid/content/Context;

    .line 133
    .line 134
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdso;->zze:Lcom/google/android/gms/internal/ads/zzdkw;

    .line 135
    .line 136
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdso;->zzg:Lcom/google/android/gms/internal/ads/zzdbk;

    .line 137
    .line 138
    invoke-interface {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/zzdkw;->zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdbk;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdso;->zzf:Lcom/google/android/gms/internal/ads/zzdhy;

    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhy;->zza()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdkv; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .line 145
    .line 146
    return v0

    .line 147
    :catch_0
    move-exception p1

    .line 148
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdso;->zzg:Lcom/google/android/gms/internal/ads/zzdbk;

    .line 149
    .line 150
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzdbk;->zzc(Lcom/google/android/gms/internal/ads/zzdkv;)V

    .line 151
    .line 152
    .line 153
    return v1

    .line 154
    nop

    .line 155
    :array_0
    .array-data 8
        0x3717c200e96cff8cL    # 2.6633444534877856E-43
        0x6a66d645209c2449L    # 3.5800243342338513E204
        -0x381d4ea6445b2853L    # -1.9877568375381234E38
        0x3267f01c87c59678L    # 7.103258959452608E-66
        0x73e60ae24ed31dddL    # 1.9727296525438157E250
        0x414ab3aab7cba322L    # 3499861.4359020153
        0x4222d25e689271cfL    # 4.041940692122228E10
        -0x54e8880d3b0e74baL    # -4.19128977936706E-101
        -0x6426f27179995c35L    # -1.582710557653288E-174
        -0x148ee1a950b71f62L    # -3.51740976965588E209
        -0xb855beee8faaf4bL
        0x4f8a419b53315e40L    # 1.4845063919917402E75
        -0xc580ee8c69f3bd7L
        0xb156075c5c9dabaL
        0x37467fea8f8bfcb8L    # 2.017840449939818E-42
        0x23611e58672f5037L
        -0x6b18b4ade9c5488bL    # -5.668409299023795E-208
        0x7e74e228a135bc86L    # 1.39854860180844E301
        0x4fd832219eba2440L    # 4.3776331024565315E76
        -0x57caf39d3ff8478fL    # -5.341956879633083E-115
        0x63271f4c9951e76bL    # 4.363127503263729E169
        -0x7bc92829fffac2d6L
        -0x4cc90a46e7c316deL    # -5.5812317185064096E-62
        -0x244b07d6b94da50fL    # -5.953655187771069E133
        -0x34966a2b8fed6ba5L    # -1.960465823380575E55
        0x80e49f2985a5fc6L
        0x4412a34a39bc220dL    # 8.595191844585467E19
        -0x6afb71777df7317eL    # -2.000911509764764E-207
    .end array-data

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
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
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    :array_1
    .array-data 8
        0x31aa664c4fdb9213L    # 1.912530582939689E-69
        -0x7cedd5e13f170213L    # -7.110308560898659E-294
        -0x104d964016cddfdcL    # -1.1166658962038253E230
        -0x79fe87102bddb9d4L    # -9.625578415750488E-280
        0x708175b34d46a63fL    # 8.67411341860559E233
        0x4865e183ef2c158L    # 7.34467702094555E-287
    .end array-data
.end method
