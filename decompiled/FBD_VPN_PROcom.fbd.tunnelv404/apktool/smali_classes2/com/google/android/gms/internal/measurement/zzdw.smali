.class final Lcom/google/android/gms/internal/measurement/zzdw;
.super Lcom/google/android/gms/internal/measurement/zzdt;
.source "SourceFile"


# instance fields
.field final synthetic zza:Landroid/os/Bundle;

.field final synthetic zzb:Landroid/app/Activity;

.field final synthetic zzc:Lcom/google/android/gms/internal/measurement/zzed;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzed;Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzdw;->zzc:Lcom/google/android/gms/internal/measurement/zzed;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzdw;->zza:Landroid/os/Bundle;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzdw;->zzb:Landroid/app/Activity;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzed;->zza:Lcom/google/android/gms/internal/measurement/zzee;

    .line 8
    .line 9
    const/4 p2, 0x1

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzdt;-><init>(Lcom/google/android/gms/internal/measurement/zzee;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    .line 1
    const/4 v0, 0x7

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzdw;->zza:Landroid/os/Bundle;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzdw;->zza:Landroid/os/Bundle;

    .line 12
    .line 13
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    new-array v4, v0, [J

    .line 16
    .line 17
    fill-array-data v4, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzdw;->zza:Landroid/os/Bundle;

    .line 34
    .line 35
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v4, v0, [J

    .line 38
    .line 39
    fill-array-data v4, :array_1

    .line 40
    .line 41
    .line 42
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    instance-of v3, v2, Landroid/os/Bundle;

    .line 54
    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    new-array v0, v0, [J

    .line 60
    .line 61
    fill-array-data v0, :array_2

    .line 62
    .line 63
    .line 64
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v2, Landroid/os/Bundle;

    .line 72
    .line 73
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    const/4 v1, 0x0

    .line 78
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdw;->zzc:Lcom/google/android/gms/internal/measurement/zzed;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzed;->zza:Lcom/google/android/gms/internal/measurement/zzee;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzee;->zze(Lcom/google/android/gms/internal/measurement/zzee;)Lcom/google/android/gms/internal/measurement/zzcc;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcc;

    .line 91
    .line 92
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzdw;->zzb:Landroid/app/Activity;

    .line 93
    .line 94
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzdt;->zzi:J

    .line 99
    .line 100
    invoke-interface {v0, v2, v1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcc;->onActivityCreated(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/os/Bundle;J)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    nop

    .line 105
    :array_0
    .array-data 8
        -0x43a7edff2d96bb82L    # -5.2194197404820366E-18
        -0x5513d89fb3d082efL    # -6.285049497958543E-102
        -0x505855119f220a9fL    # -3.992153229492772E-79
        0x301945ff1b2b79edL    # 5.456638710624913E-77
        -0x5b6fa78289ab90adL
        -0x1aef706280022af0L    # -6.710948723056014E178
        -0x1cb244ad06c8e0d5L    # -2.2441290010932342E170
    .end array-data

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
    .line 136
    .line 137
    :array_1
    .array-data 8
        -0x63dd9aebac65013aL
        0x7c4432711996ddd7L    # 3.936529600517685E290
        -0x7a1a76d2394ffcb5L    # -2.966034229496477E-280
        -0x7456b629d7de47bbL    # -1.724627915590605E-252
        0x474e40b53e7bebb3L    # 3.1416267921195032E35
        -0x13dcfa11fc0b0580L    # -8.005153845260209E212
        0x29a6ec23f28a5e95L
    .end array-data

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
        -0xd860f96f0528165L    # -2.767397022328677E243
        -0x72d2cfbb9467dcd4L
        0x1103681710623047L
        0x76f8f43e00955c41L    # 1.2572383194899443E265
        -0x67211e7a0cb56a10L    # -6.930959901633975E-189
        -0x2d420d85ba3a45e8L    # -3.8127174653934256E90
        -0x17804928609fd613L    # -2.3151084853999493E195
    .end array-data
.end method
