.class public final Lcom/google/android/gms/internal/ads/zzcrb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcqv;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdzd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdzd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrb;->zza:Lcom/google/android/gms/internal/ads/zzdzd;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/Map;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const v2, 0x5d00c0b

    .line 34
    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    if-eq v0, v2, :cond_2

    .line 38
    .line 39
    const v2, 0x6854f06

    .line 40
    .line 41
    .line 42
    if-eq v0, v2, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v1, v1, [J

    .line 48
    .line 49
    fill-array-data v1, :array_1

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    new-array v1, v1, [J

    .line 70
    .line 71
    fill-array-data v1, :array_2

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    const/4 p1, 0x1

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    :goto_0
    const/4 p1, -0x1

    .line 90
    :goto_1
    if-eqz p1, :cond_5

    .line 91
    .line 92
    if-eq p1, v3, :cond_4

    .line 93
    .line 94
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrb;->zza:Lcom/google/android/gms/internal/ads/zzdzd;

    .line 95
    .line 96
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdyz;->zza:Lcom/google/android/gms/internal/ads/zzdyz;

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdzd;->zzl(Lcom/google/android/gms/internal/ads/zzdyz;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrb;->zza:Lcom/google/android/gms/internal/ads/zzdzd;

    .line 103
    .line 104
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdyz;->zzc:Lcom/google/android/gms/internal/ads/zzdyz;

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdzd;->zzl(Lcom/google/android/gms/internal/ads/zzdyz;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrb;->zza:Lcom/google/android/gms/internal/ads/zzdzd;

    .line 111
    .line 112
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdyz;->zzb:Lcom/google/android/gms/internal/ads/zzdyz;

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdzd;->zzl(Lcom/google/android/gms/internal/ads/zzdyz;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    nop

    .line 119
    :array_0
    .array-data 8
        -0x3f7584740aadd3abL    # -847.4433390064029
        0x114877fc8c724b32L    # 2.065780175537413E-225
    .end array-data

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
    :array_1
    .array-data 8
        -0x7b37b31acd56255dL    # -1.27669468567896E-285
        -0x25607f983aad41c0L
    .end array-data

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
    :array_2
    .array-data 8
        0x70009bdda47acf4bL    # 3.2231926594627544E231
        -0x1ed6027a48444c3aL    # -1.1418771138884139E160
    .end array-data
.end method
