.class final Lcom/google/android/gms/internal/ads/zzfm;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfn;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfn;Lcom/google/android/gms/internal/ads/zzfl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfm;->zza:Lcom/google/android/gms/internal/ads/zzfn;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1
    const/4 p2, 0x2

    .line 2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v1, 0x3

    .line 5
    new-array v2, v1, [J

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x5

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    const/4 v4, 0x1

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-nez v5, :cond_3

    .line 41
    .line 42
    :cond_2
    const/4 v1, 0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    const/16 v6, 0x9

    .line 49
    .line 50
    const/4 v7, 0x6

    .line 51
    const/4 v8, 0x4

    .line 52
    if-eqz v5, :cond_7

    .line 53
    .line 54
    if-eq v5, v4, :cond_6

    .line 55
    .line 56
    if-eq v5, v8, :cond_7

    .line 57
    .line 58
    if-eq v5, v3, :cond_7

    .line 59
    .line 60
    if-eq v5, v7, :cond_5

    .line 61
    .line 62
    if-eq v5, v6, :cond_4

    .line 63
    .line 64
    const/16 v1, 0x8

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    const/4 v1, 0x7

    .line 68
    goto :goto_1

    .line 69
    :cond_5
    :pswitch_0
    const/4 v1, 0x5

    .line 70
    goto :goto_1

    .line 71
    :cond_6
    :pswitch_1
    const/4 v1, 0x2

    .line 72
    goto :goto_1

    .line 73
    :cond_7
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    packed-switch v0, :pswitch_data_0

    .line 78
    .line 79
    .line 80
    :pswitch_2
    const/4 v1, 0x6

    .line 81
    goto :goto_1

    .line 82
    :pswitch_3
    sget v0, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 83
    .line 84
    const/16 v1, 0x1d

    .line 85
    .line 86
    if-lt v0, v1, :cond_0

    .line 87
    .line 88
    const/16 v1, 0x9

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :pswitch_4
    const/4 v1, 0x4

    .line 92
    goto :goto_1

    .line 93
    :catch_0
    nop

    .line 94
    goto :goto_0

    .line 95
    :goto_1
    :pswitch_5
    sget v0, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 96
    .line 97
    const/16 v2, 0x1f

    .line 98
    .line 99
    if-lt v0, v2, :cond_9

    .line 100
    .line 101
    if-ne v1, v3, :cond_9

    .line 102
    .line 103
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfm;->zza:Lcom/google/android/gms/internal/ads/zzfn;

    .line 104
    .line 105
    :try_start_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 106
    .line 107
    new-array p2, p2, [J

    .line 108
    .line 109
    fill-array-data p2, :array_1

    .line 110
    .line 111
    .line 112
    invoke-direct {v1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 124
    .line 125
    if-eqz p2, :cond_8

    .line 126
    .line 127
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfk;

    .line 128
    .line 129
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfk;-><init>(Lcom/google/android/gms/internal/ads/zzfn;)V

    .line 130
    .line 131
    .line 132
    invoke-static {p1}, L땤뒾듼땯도딞둑뎹땥뒀뒉딅둔땠듬딝둥땟뒵딝됫딟뎹딐도돴된든뎹뎽땟도땠땵뎠돛땧뒻뒾땄뎨땱듰둠땡딅땣뒐땐땫땡땵드돨됴딠땝뒾땬된딜뒹뎨딞딐뒷듟뒨듌든땤뒉땟땨딹듬든돤딌둠뎻딌뎻따땮딸딟땁두돴뎻땋딄돠땝뒨땃딽두땰땝뒾돷땜땣돸땠딟뒷딠땠땡돳땹땳땁땦땤땟뒷뒋땲땁땪디돵돼딐딨뎠;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-static {p2, p1, v1}, L딨뒘딨뒾될돶뒹뎽땟땯돼뒀뎹뎻돸땪뒨딤뒾듽돴돸딄됩딐뒾딐땔됫뒤딄도돼딜디뎹땝땠땩뒾땄땰돛땭딌땦둬딜돰드뒻땀땭땰드땍땍땡뒨딻땵듼듔됐뎬땠땦딽뎹돼땝됴디땅뎠들됩땩돶돰뎹도되딁딨된땠땻둣뎬될됐뒤뒙땀땬뎡뒷땫됨뒀딅돶듸듨딐땮됐땅둘둬뒵딨뒘듔뒐뒵뎸딟딎듌딀땳둡땀뒨땅딎땳땫;->뎬땍뒹듽돨득돛되도땩뒛땦듬딠드돼뒙땧뒵땃듽듽돶딁된땝듽땥듰딝땪땍땹땥땹따땝딽듼뒷돝땠듌땝땸뎻뎠딜되땡딹땦뎹돼들뒵됫돰땮들듌뎬듌땄땲뎽딞딽땹돨딟땅뎠돳땲뎹땥땥땰땧뒀뎡돴뒾됐둔땃땮땣딝땵딁됩땦땲뒨돠딜된득딠딜디딐땯땧땱둣땋땣땩된딄뒤둠딝됩딹뒹둥득돴딝땮뎽딎듻딃딹땠(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 137
    .line 138
    .line 139
    invoke-static {p2, v1}, L딨뒘딨뒾될돶뒹뎽땟땯돼뒀뎹뎻돸땪뒨딤뒾듽돴돸딄됩딐뒾딐땔됫뒤딄도돼딜디뎹땝땠땩뒾땄땰돛땭딌땦둬딜돰드뒻땀땭땰드땍땍땡뒨딻땵듼듔됐뎬땠땦딽뎹돼땝됴디땅뎠들됩땩돶돰뎹도되딁딨된땠땻둣뎬될됐뒤뒙땀땬뎡뒷땫됨뒀딅돶듸듨딐땮됐땅둘둬뒵딨뒘듔뒐뒵뎸딟딎듌딀땳둡땀뒨땅딎땳땫;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Landroid/telephony/TelephonyManager;Landroid/telephony/TelephonyCallback;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_8
    const/4 p1, 0x0

    .line 144
    throw p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    :catch_1
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzfn;->zzc(Lcom/google/android/gms/internal/ads/zzfn;I)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfm;->zza:Lcom/google/android/gms/internal/ads/zzfn;

    .line 150
    .line 151
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzfn;->zzc(Lcom/google/android/gms/internal/ads/zzfn;I)V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

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
    :array_0
    .array-data 8
        0x7a12e3836bfab3abL    # 1.0714665259394758E280
        -0x74686e831c928b6dL    # -8.036595831686973E-253
        -0x7eb2017fb65e1a96L
    .end array-data

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
    :array_1
    .array-data 8
        0x7db4381ea26ada8L
        0x19c3e9b42a22678cL
    .end array-data
.end method
