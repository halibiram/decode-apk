.class public final Lcom/google/android/gms/internal/ads/zzgwk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgxj;


# static fields
.field private static final zza:Ljava/lang/ThreadLocal;


# instance fields
.field private final zzb:Ljavax/crypto/spec/SecretKeySpec;

.field private final zzc:I

.field private final zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwj;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgwj;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgwk;->zza:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmv;->zza(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    array-length v1, p1

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgxo;->zza(I)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    new-array v0, v0, [J

    .line 18
    .line 19
    fill-array-data v0, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 30
    .line 31
    invoke-direct {v1, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgwk;->zzb:Ljavax/crypto/spec/SecretKeySpec;

    .line 35
    .line 36
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgwk;->zza:Ljava/lang/ThreadLocal;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Ljavax/crypto/Cipher;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljavax/crypto/Cipher;->getBlockSize()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgwk;->zzd:I

    .line 49
    .line 50
    if-gt p2, p1, :cond_0

    .line 51
    .line 52
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgwk;->zzc:I

    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 56
    .line 57
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    const/4 v0, 0x3

    .line 60
    new-array v0, v0, [J

    .line 61
    .line 62
    fill-array-data v0, :array_1

    .line 63
    .line 64
    .line 65
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 77
    .line 78
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    const/16 v0, 0xb

    .line 81
    .line 82
    new-array v0, v0, [J

    .line 83
    .line 84
    fill-array-data v0, :array_2

    .line 85
    .line 86
    .line 87
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1

    .line 98
    nop

    .line 99
    :array_0
    .array-data 8
        -0x4e27f7a5ef0bdd94L    # -1.3928430918187845E-68
        -0xf38706fe47ff2e1L    # -1.872822111511951E235
    .end array-data

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
    :array_1
    .array-data 8
        -0xb668a7cbc65c219L    # -4.666360536069325E253
        -0x5ef47282ca44bbd8L
        -0x43949b46371f4c70L    # -1.188001947216876E-17
    .end array-data

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
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    :array_2
    .array-data 8
        -0x6678bf996f1f4ba9L
        -0x3fb8f60702262e8eL    # -46.077911120754734
        -0x4a9340829ec6c19cL    # -2.40114557221037E-51
        0x605615d8379419d2L    # 1.1844634755710003E156
        0x4ede413a2579b3ecL    # 8.352436418659381E71
        0x74466c5e467bdb27L    # 1.284358243286345E252
        -0x5922f0dfdddab82cL
        0x54997245721a8995L    # 3.4785997465442027E99
        0x6177f1ab0b46572eL    # 3.366314520821404E161
        0x217a3b2cdd3d0824L    # 2.051443306103364E-147
        0x392361cab3ab65caL    # 1.866418635393461E-33
    .end array-data
.end method


# virtual methods
.method public final zza([B)[B
    .locals 10

    .line 1
    array-length v0, p1

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgwk;->zzc:I

    .line 3
    .line 4
    if-lt v0, v1, :cond_1

    .line 5
    .line 6
    new-array v2, v1, [B

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {p1, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    .line 11
    .line 12
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzgwk;->zzc:I

    .line 13
    .line 14
    sub-int/2addr v0, v6

    .line 15
    new-array v1, v0, [B

    .line 16
    .line 17
    sget-object v4, Lcom/google/android/gms/internal/ads/zzgwk;->zza:Ljava/lang/ThreadLocal;

    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Ljavax/crypto/Cipher;

    .line 24
    .line 25
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzgwk;->zzd:I

    .line 26
    .line 27
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzgwk;->zzc:I

    .line 28
    .line 29
    new-array v5, v5, [B

    .line 30
    .line 31
    invoke-static {v2, v3, v5, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    .line 35
    .line 36
    invoke-direct {v2, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 37
    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzgwk;->zzb:Ljavax/crypto/spec/SecretKeySpec;

    .line 41
    .line 42
    invoke-virtual {v4, v3, v5, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 43
    .line 44
    .line 45
    const/4 v9, 0x0

    .line 46
    move-object v5, p1

    .line 47
    move v7, v0

    .line 48
    move-object v8, v1

    .line 49
    invoke-virtual/range {v4 .. v9}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-ne p1, v0, :cond_0

    .line 54
    .line 55
    return-object v1

    .line 56
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 57
    .line 58
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    const/16 v1, 0x8

    .line 61
    .line 62
    new-array v1, v1, [J

    .line 63
    .line 64
    fill-array-data v1, :array_0

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1

    .line 78
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 79
    .line 80
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    const/4 v1, 0x4

    .line 83
    new-array v1, v1, [J

    .line 84
    .line 85
    fill-array-data v1, :array_1

    .line 86
    .line 87
    .line 88
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :array_0
    .array-data 8
        0x1f6f2369d35018a7L
        -0x22a62f03bcf1a7ebL    # -4.9189545120885806E141
        0x518cf4915ba844e3L    # 7.031330510720743E84
        0x68262a329cd74367L    # 5.056287125959472E193
        0x5cc47dc0a3e3d006L    # 7.625632111247674E138
        -0x1419c5f392a5c18eL    # -5.845786840952115E211
        -0xfda677e65582ccdL    # -1.6763878909235225E232
        0x7db54fbcbde16851L    # 3.484409717241625E297
    .end array-data

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
    :array_1
    .array-data 8
        -0x6d587b7ce4d98e16L    # -8.327729913346951E-219
        0x1b978fbda3d535b2L    # 9.303047634958504E-176
        -0x718e4e43141f1b21L    # -4.245771004825013E-239
        -0x28fe1418f7bea25bL    # -1.3468605394677805E111
    .end array-data
.end method
