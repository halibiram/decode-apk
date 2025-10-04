.class public final Lcom/google/android/gms/internal/ads/zzgin;
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

.field private zzd:Lcom/google/android/gms/internal/ads/zzgio;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgin;->zza:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgin;->zzb:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgin;->zzc:Ljava/lang/Integer;

    .line 3
    throw v0
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgim;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgin;->zza:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgin;->zzb:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgin;->zzc:Ljava/lang/Integer;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgio;->zzc:Lcom/google/android/gms/internal/ads/zzgio;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgin;->zzd:Lcom/google/android/gms/internal/ads/zzgio;

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzgin;
    .locals 3

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x10

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v1, 0x1

    .line 17
    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    aput-object p1, v1, v2

    .line 21
    .line 22
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/16 v2, 0xa

    .line 25
    .line 26
    new-array v2, v2, [J

    .line 27
    .line 28
    fill-array-data v2, :array_0

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgin;->zzb:Ljava/lang/Integer;

    .line 51
    .line 52
    return-object p0

    .line 53
    :array_0
    .array-data 8
        -0x764b30d4430c680dL    # -6.608462673293952E-262
        -0xb1a5f8cd1005176L
        0x431aa7d8bbd8ca65L    # 1.8757246751996412E15
        -0x41f21f88064c2cc0L    # -8.6953021467558E-10
        0x4e8793d9da57252fL    # 2.0340777590447697E70
        -0x1f97b625c06d823fL    # -2.605242890404376E156
        0x1e03c5b65b0129b1L
        0x7798952a7e529f24L
        0x46a6f7319314160aL    # 2.3289885499689532E32
        0x49bc3651b2eb8bccL    # 1.610630988023044E47
    .end array-data
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzgin;
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgin;->zza:Ljava/lang/Integer;

    .line 55
    .line 56
    return-object p0

    .line 57
    :array_0
    .array-data 8
        -0x6f5df356a3cece73L
        -0x7f85dc740590ce2dL
        -0x3c5815a24ed12889L    # -8.6164641149955162E17
        -0x3d4e0c8f58d4fb3eL    # -1.9737264728836758E13
        0x3f9ab44538521fdeL    # 0.026078301966236832
        -0x4abb679ce517fe12L    # -4.300491411485808E-52
        0x70ce82fc61496bcbL    # 2.4253393731091604E235
        -0x3162a8ba8c597aafL    # -5.062586838523454E70
        -0x3e21e56a87cfb53fL    # -2.0202347207545626E9
        -0x29f4f54f31fa8bceL    # -3.1010119941612736E106
        0x29c06f43d323e16bL    # 1.399559777569849E-107
    .end array-data
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/ads/zzgin;
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgin;->zzc:Ljava/lang/Integer;

    .line 8
    .line 9
    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzgio;)Lcom/google/android/gms/internal/ads/zzgin;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgin;->zzd:Lcom/google/android/gms/internal/ads/zzgio;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzgiq;
    .locals 9

    .line 1
    const/4 v0, 0x4

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgin;->zza:Ljava/lang/Integer;

    .line 3
    .line 4
    if-eqz v1, :cond_3

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgin;->zzb:Ljava/lang/Integer;

    .line 7
    .line 8
    if-eqz v2, :cond_2

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgin;->zzd:Lcom/google/android/gms/internal/ads/zzgio;

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgin;->zzc:Ljava/lang/Integer;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgiq;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgin;->zzb:Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgin;->zzc:Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzgin;->zzd:Lcom/google/android/gms/internal/ads/zzgio;

    .line 36
    .line 37
    const/4 v8, 0x0

    .line 38
    const/16 v6, 0x10

    .line 39
    .line 40
    move-object v3, v0

    .line 41
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzgiq;-><init>(IIILcom/google/android/gms/internal/ads/zzgio;Lcom/google/android/gms/internal/ads/zzgip;)V

    .line 42
    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_0
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 46
    .line 47
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    new-array v0, v0, [J

    .line 50
    .line 51
    fill-array-data v0, :array_0

    .line 52
    .line 53
    .line 54
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v1

    .line 65
    :cond_1
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 66
    .line 67
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    new-array v0, v0, [J

    .line 70
    .line 71
    fill-array-data v0, :array_1

    .line 72
    .line 73
    .line 74
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v1

    .line 85
    :cond_2
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 86
    .line 87
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 88
    .line 89
    new-array v0, v0, [J

    .line 90
    .line 91
    fill-array-data v0, :array_2

    .line 92
    .line 93
    .line 94
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v1

    .line 105
    :cond_3
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 106
    .line 107
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 108
    .line 109
    new-array v0, v0, [J

    .line 110
    .line 111
    fill-array-data v0, :array_3

    .line 112
    .line 113
    .line 114
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v1

    .line 125
    :array_0
    .array-data 8
        -0x5909f68b7fbc7c95L    # -5.333753256620175E-121
        0x59bb538a05663f04L    # 1.8064230104039986E124
        -0x77c67f7549f36c31L    # -4.827253560441546E-269
        -0x79726ed9fa69713L    # -1.050162323421106E272
    .end array-data

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
        -0x7371bab35d7f4ac8L
        -0x155744c6099a4515L    # -6.20318788504325E205
        -0x73c6b493737833e9L    # -8.832260182684299E-250
        0x2a8f30a91234533bL
    .end array-data

    .line 146
    .line 147
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
    :array_2
    .array-data 8
        -0x23c52da5c4f7e74aL
        0x19a1013465220967L    # 3.126524211964881E-185
        -0x61455e74fb1cc1a7L
        -0x74c86f9be864a34eL
    .end array-data

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
    :array_3
    .array-data 8
        0x1f0ca994632e2e6dL    # 4.07741733530914E-159
        -0x7e0ebd13839a9e56L
        0x5b341f4b65b0dcccL    # 2.231693469107117E131
        0x62b7681606047927L    # 3.4506084474104884E167
    .end array-data
.end method
