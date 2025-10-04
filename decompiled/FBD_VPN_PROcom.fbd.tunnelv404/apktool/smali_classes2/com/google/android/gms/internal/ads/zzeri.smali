.class public final Lcom/google/android/gms/internal/ads/zzeri;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzexp;


# instance fields
.field public final zza:Landroid/content/Context;

.field public final zzb:Lcom/google/android/gms/ads/internal/client/zzq;

.field public final zzc:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzq;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeri;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeri;->zzb:Lcom/google/android/gms/ads/internal/client/zzq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeri;->zzc:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzj(Ljava/lang/Object;)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    check-cast p1, Landroid/os/Bundle;

    .line 3
    .line 4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbie;->zza:Lcom/google/android/gms/internal/ads/zzbhm;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbhm;->zze()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    .line 20
    .line 21
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeri;->zza:Landroid/content/Context;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    :try_start_0
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array v5, v0, [J

    .line 33
    .line 34
    fill-array-data v5, :array_0

    .line 35
    .line 36
    .line 37
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Landroid/app/ActivityManager;

    .line 49
    .line 50
    if-nez v2, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v4, 0x1

    .line 54
    invoke-virtual {v2, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_2

    .line 65
    .line 66
    const/4 v4, 0x0

    .line 67
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 72
    .line 73
    if-eqz v2, :cond_2

    .line 74
    .line 75
    invoke-static {v2}, L땲땵듟돰뎡둔딠됫듻뒾뎹돝땟둡딟땦뒐딸되뒀땝듬된뒨뒵뎸땵뒐돠듸돳뎹땍드듼돠딻땯땡땭뒈땯땀뎰땸딎딤땀땱땥땟뒨돶땻뒻돳딃듼뎽딁듨뒬듻뒈뒼땡뒉땳듽돴땡딃듻들뒼뒻뒷뎡땐딄두둬든돷뒹드뒾땠뒘듐둔듟돠돼땔뒹뎬뎡돸뒘돤둡딠땋뎬되듬뎹땻땵딀들돵땪돴돴땱땹땅뒉뎠땹됫딎뒤드딀땪뒝뒨;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    if-eqz v4, :cond_2

    .line 80
    .line 81
    invoke-static {v2}, L땲땵듟돰뎡둔딠됫듻뒾뎹돝땟둡딟땦뒐딸되뒀땝듬된뒨뒵뎸땵뒐돠듸돳뎹땍드듼돠딻땯땡땭뒈땯땀뎰땸딎딤땀땱땥땟뒨돶땻뒻돳딃듼뎽딁듨뒬듻뒈뒼땡뒉땳듽돴땡딃듻들뒼뒻뒷뎡땐딄두둬든돷뒹드뒾땠뒘듐둔듟돠돼땔뒹뎬뎡돸뒘돤둡딠땋뎬되듬뎹땻땵딀들돵땪돴돴땱땹땅뒉뎠땹됫딎뒤드딀땪뒝뒨;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 90
    :catch_0
    nop

    .line 91
    :cond_2
    :goto_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    new-array v4, v0, [J

    .line 94
    .line 95
    fill-array-data v4, :array_1

    .line 96
    .line 97
    .line 98
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    new-instance v2, Landroid/os/Bundle;

    .line 109
    .line 110
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 111
    .line 112
    .line 113
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeri;->zzb:Lcom/google/android/gms/ads/internal/client/zzq;

    .line 114
    .line 115
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 116
    .line 117
    new-array v5, v0, [J

    .line 118
    .line 119
    fill-array-data v5, :array_2

    .line 120
    .line 121
    .line 122
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    iget v3, v3, Lcom/google/android/gms/ads/internal/client/zzq;->zze:I

    .line 130
    .line 131
    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeri;->zzb:Lcom/google/android/gms/ads/internal/client/zzq;

    .line 135
    .line 136
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 137
    .line 138
    new-array v5, v0, [J

    .line 139
    .line 140
    fill-array-data v5, :array_3

    .line 141
    .line 142
    .line 143
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    iget v3, v3, Lcom/google/android/gms/ads/internal/client/zzq;->zzb:I

    .line 151
    .line 152
    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 153
    .line 154
    .line 155
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 156
    .line 157
    new-array v4, v0, [J

    .line 158
    .line 159
    fill-array-data v4, :array_4

    .line 160
    .line 161
    .line 162
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 170
    .line 171
    .line 172
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeri;->zzc:Ljava/util/List;

    .line 173
    .line 174
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-nez v2, :cond_3

    .line 179
    .line 180
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeri;->zzc:Ljava/util/List;

    .line 181
    .line 182
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    new-array v3, v3, [Landroid/os/Parcelable;

    .line 187
    .line 188
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    check-cast v2, [Landroid/os/Parcelable;

    .line 193
    .line 194
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 195
    .line 196
    new-array v0, v0, [J

    .line 197
    .line 198
    fill-array-data v0, :array_5

    .line 199
    .line 200
    .line 201
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 209
    .line 210
    .line 211
    :cond_3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 212
    .line 213
    const/4 v2, 0x3

    .line 214
    new-array v2, v2, [J

    .line 215
    .line 216
    fill-array-data v2, :array_6

    .line 217
    .line 218
    .line 219
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 227
    .line 228
    .line 229
    return-void

    .line 230
    nop

    .line 231
    :array_0
    .array-data 8
        -0x5b9d2172eed779d6L
        0x19a051f9e8c51d7dL    # 3.000673013829619E-185
    .end array-data

    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    :array_1
    .array-data 8
        -0x20713d7774d10646L    # -2.0137830927553748E152
        -0x50752eff962aee36L    # -1.1308157172591574E-79
    .end array-data

    :array_2
    .array-data 8
        -0x43413d2ef02d57cbL    # -4.26894665867416E-16
        -0x624c649e18b18044L    # -1.3300032885055889E-165
    .end array-data

    :array_3
    .array-data 8
        0x4e329aa86b9a5b34L    # 5.015664170283575E68
        -0x1e9a262feaf6a031L    # -1.5360157265905417E161
    .end array-data

    :array_4
    .array-data 8
        0x21bbd97d141d42b3L    # 3.484821430584883E-146
        -0x529fc562986ba78L
    .end array-data

    :array_5
    .array-data 8
        -0x56e43cb8f6a948d5L
        0x3991ab8e81ae6875L    # 2.1780133096799593E-31
    .end array-data

    :array_6
    .array-data 8
        -0x2589f66eb32e8ca9L    # -5.967027073658111E127
        -0x2b63e2616db1238eL    # -3.8435054426444365E99
        0x60aeff3566fec146L    # 5.319687641539353E157
    .end array-data
.end method
