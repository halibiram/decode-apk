.class public final Lcom/google/android/gms/internal/ads/zzetj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzexq;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgey;

.field private final zzb:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgey;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzetj;->zza:Lcom/google/android/gms/internal/ads/zzgey;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzetj;->zzb:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnprotectedReceiver"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeti;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeti;-><init>(Lcom/google/android/gms/internal/ads/zzetj;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzetj;->zza:Lcom/google/android/gms/internal/ads/zzgey;

    .line 7
    .line 8
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgey;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public final synthetic zzc()Lcom/google/android/gms/internal/ads/zzetk;
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    new-instance v1, Landroid/content/IntentFilter;

    .line 3
    .line 4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v3, 0x6

    .line 7
    new-array v3, v3, [J

    .line 8
    .line 9
    fill-array-data v3, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbgc;->zzkw:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 23
    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 41
    .line 42
    const/16 v3, 0x21

    .line 43
    .line 44
    if-lt v2, v3, :cond_0

    .line 45
    .line 46
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzetj;->zzb:Landroid/content/Context;

    .line 47
    .line 48
    invoke-static {v2, v1}, L땸뒵돵딃땀된될땐땫돰땠땦돨됩딃디따땝뒐뒐땨땻뎠돠돨됩땻됩득뒷땹딸딹땋땹땹된뒬딹뎡딄뒋뒐뎽뎸돳땄땃따뎨듌뒬뒛땅딜뒀듼됩땅딞뎰땥뒀뒨뎬딃됩땬딸뒀돶돠뎠돤돴돳땃든뒙듰뒹땳드뒈땰딐땁둔된둘땋든듌딝땵뎹땵땳딸둡딐땭듻땮뒻딟딞됴도돴딻뎸돰듸돴땬땵땜딸돶듨돠돶땨땣땮따땱땻뒋;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzetj;->zzb:Landroid/content/Context;

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    :goto_0
    const/4 v2, 0x0

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    new-array v4, v0, [J

    .line 66
    .line 67
    fill-array-data v4, :array_1

    .line 68
    .line 69
    .line 70
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    const/4 v4, -0x1

    .line 78
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 83
    .line 84
    new-array v6, v0, [J

    .line 85
    .line 86
    fill-array-data v6, :array_2

    .line 87
    .line 88
    .line 89
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    new-array v7, v0, [J

    .line 103
    .line 104
    fill-array-data v7, :array_3

    .line 105
    .line 106
    .line 107
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    int-to-double v4, v5

    .line 119
    int-to-double v6, v1

    .line 120
    const/4 v1, 0x1

    .line 121
    if-eq v3, v0, :cond_1

    .line 122
    .line 123
    const/4 v0, 0x5

    .line 124
    if-ne v3, v0, :cond_2

    .line 125
    .line 126
    :cond_1
    const/4 v2, 0x1

    .line 127
    :cond_2
    div-double/2addr v4, v6

    .line 128
    goto :goto_1

    .line 129
    :cond_3
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 130
    .line 131
    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzetk;

    .line 132
    .line 133
    invoke-direct {v0, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzetk;-><init>(DZ)V

    .line 134
    .line 135
    .line 136
    return-object v0

    .line 137
    :array_0
    .array-data 8
        0x11d9d998d95123adL
        0x639bf119c04f3cdcL    # 6.7488832125303155E171
        -0x6dd519f3e3c43158L
        -0x6d73c7649092e322L
        -0x75c7ccfcc1bc5d09L    # -1.967369706519756E-259
        -0x442fcfd7c0c9f50bL    # -1.3711866012907065E-20
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
    :array_1
    .array-data 8
        -0x17c4bb606575a843L    # -1.244089061447019E194
        0x6511dc4f5bdae74dL    # 7.237576107576184E178
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
    :array_2
    .array-data 8
        -0x2c7caec88c7fc9e4L    # -2.01471682749997E94
        0x69aac0aa083bf13fL    # 1.0238893643674049E201
    .end array-data

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
    :array_3
    .array-data 8
        0x748de8377ef04df5L    # 2.7408207095116236E253
        0x2a9bee1b89cdf4d7L
    .end array-data
.end method
