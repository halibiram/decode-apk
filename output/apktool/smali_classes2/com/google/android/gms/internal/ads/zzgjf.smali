.class public final Lcom/google/android/gms/internal/ads/zzgjf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzb:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzc:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzd:Lcom/google/android/gms/internal/ads/zzgjg;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjf;->zza:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjf;->zzb:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjf;->zzc:Ljava/lang/Integer;

    .line 3
    throw v0
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgje;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjf;->zza:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjf;->zzb:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjf;->zzc:Ljava/lang/Integer;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgjg;->zzc:Lcom/google/android/gms/internal/ads/zzgjg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjf;->zzd:Lcom/google/android/gms/internal/ads/zzgjg;

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzgjf;
    .locals 0

    .line 1
    const/16 p1, 0xc

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjf;->zzb:Ljava/lang/Integer;

    .line 8
    .line 9
    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzgjf;
    .locals 3

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x18

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x20

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 v1, 0x1

    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    aput-object p1, v1, v2

    .line 25
    .line 26
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/16 v2, 0xb

    .line 29
    .line 30
    new-array v2, v2, [J

    .line 31
    .line 32
    fill-array-data v2, :array_0

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjf;->zza:Ljava/lang/Integer;

    .line 55
    .line 56
    return-object p0

    .line 57
    :array_0
    .array-data 8
        0x6b787b333c0247f4L    # 5.0302619063135105E209
        0x3239c2b9e6ab49f7L    # 9.55515581798767E-67
        -0x452829343e2e6276L    # -3.0811245559767133E-25
        0x2ea507ac9674efafL    # 5.412650944739127E-84
        0x38df7ed7ee923da1L    # 9.477826967074968E-35
        0x693b07b6fd03926cL    # 8.082121691547554E198
        0x7c00d04c255bcb20L    # 2.048180185568603E289
        0x66448ab807b44426L    # 4.364227162658557E184
        -0x1a3478cf3bbacb96L    # -2.2845645840031393E182
        -0x4aa30f237b92d0c9L    # -1.2086269091983637E-51
        0x29867bcb72cb7457L
    .end array-data
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/ads/zzgjf;
    .locals 0

    .line 1
    const/16 p1, 0x10

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjf;->zzc:Ljava/lang/Integer;

    .line 8
    .line 9
    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzgjg;)Lcom/google/android/gms/internal/ads/zzgjf;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjf;->zzd:Lcom/google/android/gms/internal/ads/zzgjg;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzgji;
    .locals 9

    .line 1
    const/4 v0, 0x4

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgjf;->zza:Ljava/lang/Integer;

    .line 3
    .line 4
    if-eqz v1, :cond_3

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgjf;->zzd:Lcom/google/android/gms/internal/ads/zzgjg;

    .line 7
    .line 8
    if-eqz v2, :cond_2

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgjf;->zzb:Ljava/lang/Integer;

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgjf;->zzc:Ljava/lang/Integer;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgji;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgjf;->zzb:Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgjf;->zzc:Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzgjf;->zzd:Lcom/google/android/gms/internal/ads/zzgjg;

    .line 35
    .line 36
    const/4 v8, 0x0

    .line 37
    const/16 v5, 0xc

    .line 38
    .line 39
    const/16 v6, 0x10

    .line 40
    .line 41
    move-object v3, v0

    .line 42
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzgji;-><init>(IIILcom/google/android/gms/internal/ads/zzgjg;Lcom/google/android/gms/internal/ads/zzgjh;)V

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_0
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 47
    .line 48
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    new-array v0, v0, [J

    .line 51
    .line 52
    fill-array-data v0, :array_0

    .line 53
    .line 54
    .line 55
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v1

    .line 66
    :cond_1
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 67
    .line 68
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v0, v0, [J

    .line 71
    .line 72
    fill-array-data v0, :array_1

    .line 73
    .line 74
    .line 75
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v1

    .line 86
    :cond_2
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 87
    .line 88
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 89
    .line 90
    new-array v0, v0, [J

    .line 91
    .line 92
    fill-array-data v0, :array_2

    .line 93
    .line 94
    .line 95
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v1

    .line 106
    :cond_3
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 107
    .line 108
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    new-array v0, v0, [J

    .line 111
    .line 112
    fill-array-data v0, :array_3

    .line 113
    .line 114
    .line 115
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v1

    .line 126
    nop

    .line 127
    :array_0
    .array-data 8
        -0x7f4a36f83e0453a8L
        -0x56341efd5247cb2bL    # -2.374148744549745E-107
        0x55444c9d47fe5d6L
        -0x352333918959f619L    # -4.30992828213606E52
    .end array-data

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
    :array_1
    .array-data 8
        -0x772db6ffdc412476L
        -0x57bda703f707fa43L    # -9.313026173325683E-115
        -0x6736d74d644a4372L
        -0x2250c89ed1c94f3eL    # -1.9033109830441857E143
    .end array-data

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
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
    :array_2
    .array-data 8
        -0x7beb20a4bb175c20L    # -5.354493037030361E-289
        0x5dca028aa4142d3L
        -0x2d6dc48464f84f8fL    # -5.803119172628635E89
        0x2302ec0051725d46L    # 4.965423616620999E-140
    .end array-data

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
    :array_3
    .array-data 8
        -0xa7c22f8353a06f6L
        -0x4ea35a2081c23c52L    # -6.485664108822034E-71
        -0x2409c6e3f982c505L    # -1.0095373712091313E135
        -0x1122d8cade0c6ccfL    # -1.0791015575543302E226
    .end array-data
.end method
