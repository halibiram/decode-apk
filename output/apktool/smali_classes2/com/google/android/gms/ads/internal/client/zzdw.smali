.class public final Lcom/google/android/gms/ads/internal/client/zzdw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/HashSet;

.field private final zzb:Landroid/os/Bundle;

.field private final zzc:Ljava/util/HashMap;

.field private final zzd:Ljava/util/HashSet;

.field private final zze:Landroid/os/Bundle;

.field private final zzf:Ljava/util/HashSet;

.field private zzg:Ljava/lang/String;

.field private final zzh:Ljava/util/List;

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;

.field private zzk:I

.field private zzl:Z

.field private zzm:Ljava/lang/String;

.field private zzn:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zza:Ljava/util/HashSet;

    .line 10
    .line 11
    new-instance v0, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzb:Landroid/os/Bundle;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzc:Ljava/util/HashMap;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashSet;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzd:Ljava/util/HashSet;

    .line 31
    .line 32
    new-instance v0, Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zze:Landroid/os/Bundle;

    .line 38
    .line 39
    new-instance v0, Ljava/util/HashSet;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzf:Ljava/util/HashSet;

    .line 45
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzh:Ljava/util/List;

    .line 52
    .line 53
    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzk:I

    .line 55
    .line 56
    const v0, 0xea60

    .line 57
    .line 58
    .line 59
    iput v0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzn:I

    .line 60
    .line 61
    return-void
.end method

.method public static bridge synthetic zzD(Lcom/google/android/gms/ads/internal/client/zzdw;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzl:Z

    return p0
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/ads/internal/client/zzdw;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzn:I

    return p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/ads/internal/client/zzdw;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzk:I

    return p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/ads/internal/client/zzdw;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zze:Landroid/os/Bundle;

    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/gms/ads/internal/client/zzdw;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzb:Landroid/os/Bundle;

    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/gms/ads/internal/client/zzdw;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzm:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/gms/ads/internal/client/zzdw;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzg:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/gms/ads/internal/client/zzdw;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzi:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic zzh(Lcom/google/android/gms/ads/internal/client/zzdw;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzj:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic zzi(Lcom/google/android/gms/ads/internal/client/zzdw;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzc:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic zzj(Lcom/google/android/gms/ads/internal/client/zzdw;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzf:Ljava/util/HashSet;

    return-object p0
.end method

.method public static bridge synthetic zzk(Lcom/google/android/gms/ads/internal/client/zzdw;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zza:Ljava/util/HashSet;

    return-object p0
.end method

.method public static bridge synthetic zzl(Lcom/google/android/gms/ads/internal/client/zzdw;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzd:Ljava/util/HashSet;

    return-object p0
.end method

.method public static bridge synthetic zzm(Lcom/google/android/gms/ads/internal/client/zzdw;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzh:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final zzA(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzi:Ljava/lang/String;

    return-void
.end method

.method public final zzB(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzj:Ljava/lang/String;

    return-void
.end method

.method public final zzC(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzk:I

    return-void
.end method

.method public final zzn(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzf:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzo(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzb:Landroid/os/Bundle;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    new-array v3, v2, [J

    .line 8
    .line 9
    fill-array-data v3, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzb:Landroid/os/Bundle;

    .line 26
    .line 27
    new-instance v1, Landroid/os/Bundle;

    .line 28
    .line 29
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    new-array v4, v2, [J

    .line 35
    .line 36
    fill-array-data v4, :array_1

    .line 37
    .line 38
    .line 39
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzb:Landroid/os/Bundle;

    .line 50
    .line 51
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array v2, v2, [J

    .line 54
    .line 55
    fill-array-data v2, :array_2

    .line 56
    .line 57
    .line 58
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    nop

    .line 81
    :array_0
    .array-data 8
        0xec1a288472d230bL
        0x7653938564e69bfeL    # 9.631764167039518E261
        0x702e0d03444e8c07L    # 2.3327229483981263E232
        0xd0081763593fed5L
        0x26b1f8e075e82289L    # 2.718707014994684E-122
        -0x5284cd3afab32e70L    # -1.3351908907517613E-89
        0x6a80093321fd89d8L    # 1.0055447240237047E205
        -0x4b73a3abf2b20890L    # -1.4457962914401007E-55
        0x5599d1d0bd24f481L    # 2.3131717590335E104
        -0x3eef5c3ab53fa584L    # -272625.3229993952
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
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
    :array_1
    .array-data 8
        0x777fdbab8ef39d00L    # 4.108997285844021E267
        -0x20f3245ff4850856L    # -7.379938617882864E149
        -0x2edcfbc3ec8eccf7L    # -7.215399213178083E82
        0x553beca94715e2c9L    # 3.9089786201122846E102
        -0x4888129029023c89L    # -1.7167130570428047E-41
        -0x7d74c713fe19a5afL    # -2.081229207418563E-296
        -0x730700ba5d07dc83L    # -3.575149125081353E-246
        -0x5a890935299d6776L
        -0x741b09b49d2cd4L
        0x5055382db49b466eL    # 9.828176592491077E78
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
    .line 166
    .line 167
    .line 168
    .line 169
    :array_2
    .array-data 8
        -0x71f6025e903c6d9dL    # -4.872279604054595E-241
        -0x2069a4f8d34ce8f2L
        -0x7c1755d0740cd2f8L    # -7.909182036071923E-290
        0x2f078c9554eb32aL
        -0x6f94d52305338049L    # -1.3999158923608324E-229
        -0x5dfb04d315e44c4cL
        -0x4f16b30ff10ae5d9L    # -4.474874075349153E-73
        0x18487fd587680dL
        -0x503faec031491ec5L    # -1.1009347107554012E-78
        -0x45826ef7afafca2L
    .end array-data
.end method

.method public final zzp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zze:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzq(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zza:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzr(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzb:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final zzs(Lcom/google/android/gms/ads/mediation/NetworkExtras;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzc:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final zzt(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzd:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzu(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzd:Ljava/util/HashSet;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x5

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        0x46252b6ac039343aL    # 8.386141610541703E29
        0x717ed476a2b993faL    # 5.018907546879885E238
        -0x6e9c8550dfa0ca41L    # -6.578170690743998E-225
        -0x5333443615015fb0L    # -6.887484444691088E-93
        0x7cfa55ae79054e5bL    # 1.0511968562392197E294
    .end array-data
.end method

.method public final zzv(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzm:Ljava/lang/String;

    return-void
.end method

.method public final zzw(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzg:Ljava/lang/String;

    return-void
.end method

.method public final zzx(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzn:I

    return-void
.end method

.method public final zzy(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzl:Z

    return-void
.end method

.method public final zzz(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzh:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/16 v1, 0x8

    .line 31
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
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzdw;->zzh:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return-void

    .line 55
    :array_0
    .array-data 8
        -0x60fbbdba6e17db08L
        -0x4ff91ea44b66720bL    # -2.469977193077035E-77
        -0x2f7ee2eb2b44ba72L    # -6.341182063371668E79
        -0x2cab4a01424d76f0L    # -2.700088682122452E93
        0x29110dd05ee47be8L    # 7.091316398352331E-111
        0x6528552d7cb27177L    # 1.9720512223040768E179
        0x2ef0ee6c5999dc11L    # 1.3944808285230342E-82
        -0x132840d22f2da682L    # -2.0465476825276395E216
    .end array-data
.end method
