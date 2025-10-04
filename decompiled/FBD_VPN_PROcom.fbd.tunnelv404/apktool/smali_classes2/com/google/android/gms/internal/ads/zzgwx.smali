.class final Lcom/google/android/gms/internal/ads/zzgwx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgxh;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgxh;Lcom/google/android/gms/internal/ads/zzgww;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwx;->zza:Lcom/google/android/gms/internal/ads/zzgxh;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    new-array v3, v1, [J

    .line 19
    .line 20
    fill-array-data v3, :array_1

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array v1, v1, [J

    .line 33
    .line 34
    fill-array-data v1, :array_2

    .line 35
    .line 36
    .line 37
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    filled-new-array {v0, v2, v1}, [Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwz;->zzb([Ljava/lang/String;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const/4 v1, 0x0

    .line 57
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Ljava/security/Provider;

    .line 68
    .line 69
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgwx;->zza:Lcom/google/android/gms/internal/ads/zzgxh;

    .line 70
    .line 71
    invoke-interface {v3, p1, v2}, Lcom/google/android/gms/internal/ads/zzgxh;->zza(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    return-object p1

    .line 76
    :catch_0
    move-exception v2

    .line 77
    if-nez v1, :cond_0

    .line 78
    .line 79
    move-object v1, v2

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 82
    .line 83
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    const/4 v2, 0x4

    .line 86
    new-array v2, v2, [J

    .line 87
    .line 88
    fill-array-data v2, :array_3

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-direct {p1, v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    throw p1

    .line 102
    nop

    .line 103
    :array_0
    .array-data 8
        -0x7712b7955fd2309aL
        0x735f912ed7e95065L    # 5.517869543324411E247
        -0x585a231552933808L
    .end array-data

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
    :array_1
    .array-data 8
        -0x3c9cee760ffd32a1L    # -4.293846953927756E16
        0x40bd4d21dae0120cL    # 7501.132246021658
        0x7f9539ebddb5fb45L    # 3.72639583949792E306
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
    .line 132
    .line 133
    .line 134
    .line 135
    :array_2
    .array-data 8
        -0x78d5f9c3cf5d1178L    # -3.758321676293223E-274
        0x4a9d2e300318d72bL    # 2.7294228328712482E51
        -0x5c5905c4c9bcc918L    # -6.174390794920612E-137
    .end array-data

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
    .line 148
    .line 149
    .line 150
    .line 151
    :array_3
    .array-data 8
        0x33907807fd1d95e2L    # 2.562151035820004E-60
        -0x145055e4edeb32e9L    # -5.204982647603846E210
        0x4832d57d2b40b413L    # 6.408858082056342E39
        -0x59b9f867643f0fb6L
    .end array-data
.end method
