.class public Lcom/google/android/gms/common/GmsSignatureVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/RestrictedInheritance;
    allowedOnPath = ".*javatests/com/google/android/gmscore/integ/client/common/robolectric/.*"
    explanation = "Sub classing of GMS Core\'s APIs are restricted to testing fakes."
    link = "go/gmscore-restrictedinheritance"
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/common/zzab;

.field private static final zzb:Lcom/google/android/gms/common/zzab;

.field private static final zzc:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/common/zzz;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/common/zzz;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    new-array v3, v2, [J

    .line 10
    .line 11
    fill-array-data v3, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzz;->zzd(Ljava/lang/String;)Lcom/google/android/gms/common/zzz;

    .line 22
    .line 23
    .line 24
    const-wide/32 v3, 0xc2bd840

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/common/zzz;->zza(J)Lcom/google/android/gms/common/zzz;

    .line 28
    .line 29
    .line 30
    sget-object v1, Lcom/google/android/gms/common/zzn;->zzd:Lcom/google/android/gms/common/zzl;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/common/zzl;->zzf()[B

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    sget-object v4, Lcom/google/android/gms/common/zzn;->zzb:Lcom/google/android/gms/common/zzl;

    .line 37
    .line 38
    invoke-virtual {v4}, Lcom/google/android/gms/common/zzl;->zzf()[B

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/common/zzag;->zzn(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzag;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/zzz;->zzc(Ljava/util/List;)Lcom/google/android/gms/common/zzz;

    .line 47
    .line 48
    .line 49
    sget-object v3, Lcom/google/android/gms/common/zzn;->zzc:Lcom/google/android/gms/common/zzl;

    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/google/android/gms/common/zzl;->zzf()[B

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    sget-object v5, Lcom/google/android/gms/common/zzn;->zza:Lcom/google/android/gms/common/zzl;

    .line 56
    .line 57
    invoke-virtual {v5}, Lcom/google/android/gms/common/zzl;->zzf()[B

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/common/zzag;->zzn(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzag;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/zzz;->zzb(Ljava/util/List;)Lcom/google/android/gms/common/zzz;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/common/zzz;->zze()Lcom/google/android/gms/common/zzab;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sput-object v0, Lcom/google/android/gms/common/GmsSignatureVerifier;->zza:Lcom/google/android/gms/common/zzab;

    .line 73
    .line 74
    new-instance v0, Lcom/google/android/gms/common/zzz;

    .line 75
    .line 76
    invoke-direct {v0}, Lcom/google/android/gms/common/zzz;-><init>()V

    .line 77
    .line 78
    .line 79
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    new-array v2, v2, [J

    .line 82
    .line 83
    fill-array-data v2, :array_1

    .line 84
    .line 85
    .line 86
    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/zzz;->zzd(Ljava/lang/String;)Lcom/google/android/gms/common/zzz;

    .line 94
    .line 95
    .line 96
    const-wide/32 v4, 0x4e6e200

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/common/zzz;->zza(J)Lcom/google/android/gms/common/zzz;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/google/android/gms/common/zzl;->zzf()[B

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {v1}, Lcom/google/android/gms/internal/common/zzag;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzag;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzz;->zzc(Ljava/util/List;)Lcom/google/android/gms/common/zzz;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/google/android/gms/common/zzl;->zzf()[B

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-static {v1}, Lcom/google/android/gms/internal/common/zzag;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzag;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzz;->zzb(Ljava/util/List;)Lcom/google/android/gms/common/zzz;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/google/android/gms/common/zzz;->zze()Lcom/google/android/gms/common/zzab;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    sput-object v0, Lcom/google/android/gms/common/GmsSignatureVerifier;->zzb:Lcom/google/android/gms/common/zzab;

    .line 129
    .line 130
    new-instance v0, Ljava/util/HashMap;

    .line 131
    .line 132
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 133
    .line 134
    .line 135
    sput-object v0, Lcom/google/android/gms/common/GmsSignatureVerifier;->zzc:Ljava/util/HashMap;

    .line 136
    .line 137
    return-void

    .line 138
    nop

    .line 139
    :array_0
    .array-data 8
        -0x2bcb37f2805c4d04L    # -4.438892054409895E97
        0x7489c70a0a00ee06L    # 2.3623656254592208E253
        0x53911ca0579aef3bL    # 3.569397378734803E94
        -0x3437f39bf643c783L    # -1.1793301760362623E57
    .end array-data

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
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :array_1
    .array-data 8
        -0xf078d5e19f2d49aL
        -0x11ad371ee29fca72L    # -2.7160684845643644E223
        -0x79d14d406eff62fL    # -7.995691121842658E271
        0x2c98bdf4a0828884L    # 7.413382510835108E-94
    .end array-data
.end method
