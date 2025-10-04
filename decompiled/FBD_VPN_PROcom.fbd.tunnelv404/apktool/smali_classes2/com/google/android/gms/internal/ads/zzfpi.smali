.class public Lcom/google/android/gms/internal/ads/zzfpi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzfql;

.field private zzb:J

.field private zzc:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpi;->zzb()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfql;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfql;-><init>(Landroid/webkit/WebView;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpi;->zza:Lcom/google/android/gms/internal/ads/zzfql;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final zza()Landroid/webkit/WebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpi;->zza:Lcom/google/android/gms/internal/ads/zzfql;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/webkit/WebView;

    .line 8
    .line 9
    return-object v0
.end method

.method public final zzb()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfpi;->zzb:J

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfpi;->zzc:I

    .line 9
    .line 10
    return-void
.end method

.method public zzc()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpi;->zza:Lcom/google/android/gms/internal/ads/zzfql;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzd(Ljava/lang/String;J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfpi;->zzb:J

    .line 2
    .line 3
    cmp-long v2, p2, v0

    .line 4
    .line 5
    if-ltz v2, :cond_0

    .line 6
    .line 7
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzfpi;->zzc:I

    .line 8
    .line 9
    const/4 p3, 0x3

    .line 10
    if-eq p2, p3, :cond_0

    .line 11
    .line 12
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzfpi;->zzc:I

    .line 13
    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpb;->zza()Lcom/google/android/gms/internal/ads/zzfpb;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpi;->zza()Landroid/webkit/WebView;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzfpb;->zzg(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final zze(Ljava/util/Date;)V
    .locals 3
    .param p1    # Ljava/util/Date;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    new-array v2, v2, [J

    .line 21
    .line 22
    fill-array-data v2, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfpo;->zze(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpb;->zza()Lcom/google/android/gms/internal/ads/zzfpb;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpi;->zza()Landroid/webkit/WebView;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzfpb;->zzf(Landroid/webkit/WebView;Lorg/json/JSONObject;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :array_0
    .array-data 8
        0x426ca701362b18dL
        -0x233d2082f1517076L    # -7.023425883249828E138
        0x2cc373f940432724L    # 4.662924964493576E-93
    .end array-data
.end method

.method public final zzf(Ljava/lang/String;J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfpi;->zzb:J

    .line 2
    .line 3
    cmp-long v2, p2, v0

    .line 4
    .line 5
    if-ltz v2, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x2

    .line 8
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfpi;->zzc:I

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpb;->zza()Lcom/google/android/gms/internal/ads/zzfpb;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpi;->zza()Landroid/webkit/WebView;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzfpb;->zzg(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public zzg(Lcom/google/android/gms/internal/ads/zzfoh;Lcom/google/android/gms/internal/ads/zzfof;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfpi;->zzh(Lcom/google/android/gms/internal/ads/zzfoh;Lcom/google/android/gms/internal/ads/zzfof;Lorg/json/JSONObject;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzfoh;Lcom/google/android/gms/internal/ads/zzfof;Lorg/json/JSONObject;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfoh;->zzh()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    new-instance v3, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    new-array v1, v0, [J

    .line 14
    .line 15
    fill-array-data v1, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    const/4 v4, 0x2

    .line 28
    new-array v5, v4, [J

    .line 29
    .line 30
    fill-array-data v5, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v3, p1, v1}, Lcom/google/android/gms/internal/ads/zzfpo;->zze(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    new-array v1, v0, [J

    .line 46
    .line 47
    fill-array-data v1, :array_2

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfof;->zzd()Lcom/google/android/gms/internal/ads/zzfog;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v3, p1, v1}, Lcom/google/android/gms/internal/ads/zzfpo;->zze(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    new-instance p1, Lorg/json/JSONObject;

    .line 65
    .line 66
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 67
    .line 68
    .line 69
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 70
    .line 71
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    new-array v7, v4, [J

    .line 80
    .line 81
    fill-array-data v7, :array_3

    .line 82
    .line 83
    .line 84
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-static {v6, v1, v5}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    new-array v6, v0, [J

    .line 94
    .line 95
    fill-array-data v6, :array_4

    .line 96
    .line 97
    .line 98
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-static {p1, v5, v1}, Lcom/google/android/gms/internal/ads/zzfpo;->zze(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 109
    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 115
    .line 116
    new-array v6, v0, [J

    .line 117
    .line 118
    fill-array-data v6, :array_5

    .line 119
    .line 120
    .line 121
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-static {p1, v5, v1}, Lcom/google/android/gms/internal/ads/zzfpo;->zze(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 132
    .line 133
    new-array v5, v4, [J

    .line 134
    .line 135
    fill-array-data v5, :array_6

    .line 136
    .line 137
    .line 138
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 146
    .line 147
    new-array v6, v4, [J

    .line 148
    .line 149
    fill-array-data v6, :array_7

    .line 150
    .line 151
    .line 152
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-static {p1, v1, v5}, Lcom/google/android/gms/internal/ads/zzfpo;->zze(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 163
    .line 164
    new-array v5, v0, [J

    .line 165
    .line 166
    fill-array-data v5, :array_8

    .line 167
    .line 168
    .line 169
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-static {v3, v1, p1}, Lcom/google/android/gms/internal/ads/zzfpo;->zze(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpn;->zza()Lcom/google/android/gms/internal/ads/zzfoj;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfoj;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 188
    .line 189
    new-array v5, v0, [J

    .line 190
    .line 191
    fill-array-data v5, :array_9

    .line 192
    .line 193
    .line 194
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-static {v3, v1, p1}, Lcom/google/android/gms/internal/ads/zzfpo;->zze(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    new-instance p1, Lorg/json/JSONArray;

    .line 205
    .line 206
    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 207
    .line 208
    .line 209
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 210
    .line 211
    new-array v5, v4, [J

    .line 212
    .line 213
    fill-array-data v5, :array_a

    .line 214
    .line 215
    .line 216
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 224
    .line 225
    .line 226
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 227
    .line 228
    new-array v5, v4, [J

    .line 229
    .line 230
    fill-array-data v5, :array_b

    .line 231
    .line 232
    .line 233
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 241
    .line 242
    .line 243
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 244
    .line 245
    new-array v5, v4, [J

    .line 246
    .line 247
    fill-array-data v5, :array_c

    .line 248
    .line 249
    .line 250
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-static {v3, v1, p1}, Lcom/google/android/gms/internal/ads/zzfpo;->zze(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    new-instance p1, Lorg/json/JSONObject;

    .line 261
    .line 262
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfof;->zze()Lcom/google/android/gms/internal/ads/zzfon;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfon;->zzb()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 274
    .line 275
    new-array v6, v0, [J

    .line 276
    .line 277
    fill-array-data v6, :array_d

    .line 278
    .line 279
    .line 280
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    invoke-static {p1, v5, v1}, Lcom/google/android/gms/internal/ads/zzfpo;->zze(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfof;->zze()Lcom/google/android/gms/internal/ads/zzfon;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfon;->zzc()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 299
    .line 300
    new-array v6, v0, [J

    .line 301
    .line 302
    fill-array-data v6, :array_e

    .line 303
    .line 304
    .line 305
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v5

    .line 312
    invoke-static {p1, v5, v1}, Lcom/google/android/gms/internal/ads/zzfpo;->zze(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 316
    .line 317
    new-array v5, v0, [J

    .line 318
    .line 319
    fill-array-data v5, :array_f

    .line 320
    .line 321
    .line 322
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    invoke-static {v3, v1, p1}, Lcom/google/android/gms/internal/ads/zzfpo;->zze(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    new-instance p1, Lorg/json/JSONObject;

    .line 333
    .line 334
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 335
    .line 336
    .line 337
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 338
    .line 339
    new-array v5, v0, [J

    .line 340
    .line 341
    fill-array-data v5, :array_10

    .line 342
    .line 343
    .line 344
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 352
    .line 353
    const/4 v6, 0x4

    .line 354
    new-array v7, v6, [J

    .line 355
    .line 356
    fill-array-data v7, :array_11

    .line 357
    .line 358
    .line 359
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v5

    .line 366
    invoke-static {p1, v1, v5}, Lcom/google/android/gms/internal/ads/zzfpo;->zze(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoz;->zzb()Lcom/google/android/gms/internal/ads/zzfoz;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfoz;->zza()Landroid/content/Context;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 386
    .line 387
    new-array v7, v4, [J

    .line 388
    .line 389
    fill-array-data v7, :array_12

    .line 390
    .line 391
    .line 392
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v5

    .line 399
    invoke-static {p1, v5, v1}, Lcom/google/android/gms/internal/ads/zzfpo;->zze(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 403
    .line 404
    new-array v4, v4, [J

    .line 405
    .line 406
    fill-array-data v4, :array_13

    .line 407
    .line 408
    .line 409
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    invoke-static {v3, v1, p1}, Lcom/google/android/gms/internal/ads/zzfpo;->zze(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfof;->zzf()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    if-eqz p1, :cond_0

    .line 424
    .line 425
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfof;->zzf()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 430
    .line 431
    new-array v0, v0, [J

    .line 432
    .line 433
    fill-array-data v0, :array_14

    .line 434
    .line 435
    .line 436
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    invoke-static {v3, v0, p1}, Lcom/google/android/gms/internal/ads/zzfpo;->zze(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 444
    .line 445
    .line 446
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfof;->zzg()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object p1

    .line 450
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 451
    .line 452
    new-array v1, v6, [J

    .line 453
    .line 454
    fill-array-data v1, :array_15

    .line 455
    .line 456
    .line 457
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    invoke-static {v3, v0, p1}, Lcom/google/android/gms/internal/ads/zzfpo;->zze(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 465
    .line 466
    .line 467
    new-instance v4, Lorg/json/JSONObject;

    .line 468
    .line 469
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 470
    .line 471
    .line 472
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfof;->zzh()Ljava/util/List;

    .line 473
    .line 474
    .line 475
    move-result-object p1

    .line 476
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 477
    .line 478
    .line 479
    move-result-object p1

    .line 480
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 481
    .line 482
    .line 483
    move-result p2

    .line 484
    if-nez p2, :cond_1

    .line 485
    .line 486
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpb;->zza()Lcom/google/android/gms/internal/ads/zzfpb;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpi;->zza()Landroid/webkit/WebView;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    move-object v5, p3

    .line 495
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfpb;->zzh(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 496
    .line 497
    .line 498
    return-void

    .line 499
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object p1

    .line 503
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfoo;

    .line 504
    .line 505
    const/4 p1, 0x0

    .line 506
    throw p1

    .line 507
    :array_0
    .array-data 8
        0x2c03ddf8fed97ea3L    # 1.1626405196872601E-96
        0x7ac60f712ee96904L    # 2.5628179703255404E283
        -0xe7ecec331d811ebL    # -5.597594320392038E238
    .end array-data

    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    :array_1
    .array-data 8
        -0x36730c3e16969b73L    # -2.0660964345422225E46
        -0x669f8212ac72aa94L
    .end array-data

    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    :array_2
    .array-data 8
        0x51c0f1c18b3b3065L    # 6.58345601797019E85
        -0x42e23a1dfb3c8090L    # -2.6443718344162E-14
        -0x4b9b758cb98d6b78L    # -2.617873321242865E-56
    .end array-data

    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    :array_3
    .array-data 8
        -0x53fd59fa5d9e086eL    # -1.0913293924012144E-96
        -0x604180b17a40e79bL    # -8.88512478221455E-156
    .end array-data

    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    :array_4
    .array-data 8
        -0x88b5d211b95a83cL    # -2.661620793494844E267
        -0xeddde5e3a8bd127L    # -9.223958441332371E236
        0x333c8b291c5e0fc0L    # 6.938563840296979E-62
    .end array-data

    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    :array_5
    .array-data 8
        0x795dd9bbd9522a01L    # 4.133976234912678E276
        0x674da0045911be84L    # 4.124835387819788E189
        0x76719aeeecac1bb2L    # 3.46479386493814E262
    .end array-data

    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    :array_6
    .array-data 8
        -0x74f6124b7dd72b33L
        0x33c230855ccab5cfL    # 2.26387507779213E-59
    .end array-data

    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    :array_7
    .array-data 8
        0x511ac7451f40727aL    # 5.0802306337626357E82
        0x1cee93d5f87c181eL
    .end array-data

    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    :array_8
    .array-data 8
        0x11257921f1374f1fL    # 4.532204646210411E-226
        0x6c5baeb99acc19c0L    # 9.319284173249269E213
        0x744020cbcb8d2db2L    # 9.237827662678386E251
    .end array-data

    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    :array_9
    .array-data 8
        0x6bcb938374c53ee1L    # 1.8131836138468629E211
        0x5112700d3fe3c329L    # 3.497885786563117E82
        -0x7f37f9ab55350974L
    .end array-data

    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    :array_a
    .array-data 8
        0x11ab94835c5f5a3aL
        0x1f6b33f0cc526d82L
    .end array-data

    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    :array_b
    .array-data 8
        0x6a77c8e998d79e80L    # 7.4572179424153E204
        -0x7dfaa98c9c4d21a3L    # -6.372383179421749E-299
    .end array-data

    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    :array_c
    .array-data 8
        -0x772476218de84f05L    # -5.337832222687666E-266
        0x5ede2f796b8e3d95L    # 9.649292674228276E148
    .end array-data

    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    :array_d
    .array-data 8
        -0x743df8c1e82d9c73L    # -4.917996356168928E-252
        0x682ce3086344257dL    # 6.589726143404675E193
        -0xfb6e93ddce3b588L    # -7.790194170409414E232
    .end array-data

    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    :array_e
    .array-data 8
        0x53338ace1ed156f1L    # 6.369308805569201E92
        0x4f83bae1656a191L
        0x4652e354268e8952L    # 5.98584701733724E30
    .end array-data

    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    :array_f
    .array-data 8
        -0x73925574a026bc43L    # -8.286962174015085E-249
        -0x1199ec21c7e28b3aL    # -6.384381699328402E223
        0x1759a329339745eaL
    .end array-data

    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    :array_10
    .array-data 8
        0x3e678aa3e8f17df9L    # 4.384957918361115E-8
        -0x5efbe54c8a15c376L    # -1.228347194681077E-149
        0x3c7ff44eb0e8e38dL    # 2.7715959501583444E-17
    .end array-data

    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    :array_11
    .array-data 8
        -0x7261a952b439f4c4L
        -0x2b58cbeec484b3a1L    # -6.343953387459483E99
        -0x2ec776235a42220cL    # -1.8621181802661144E83
        -0x664120618f2d53deL
    .end array-data

    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    :array_12
    .array-data 8
        -0x6764f39e6e60f07cL    # -3.794230823251756E-190
        -0x44a756d70a00b2a6L    # -8.159568060843893E-23
    .end array-data

    :array_13
    .array-data 8
        -0x2ade6651ff853b10L
        -0x165a483f363b9463L    # -8.311945058818848E200
    .end array-data

    :array_14
    .array-data 8
        -0x565466c235c15517L
        -0x4e95e6239ab4671L    # -8.413286533735292E284
        0x205480ba848e0ea2L
    .end array-data

    :array_15
    .array-data 8
        0x155c3bed52e34621L    # 8.794208735347296E-206
        0x59ed37d5cc5f5a3aL    # 1.5451842722792972E125
        -0x2bf92d9a5d17f4c4L    # -6.093400530773966E96
        0x51c9648b77c993b9L    # 9.865942311561366E85
    .end array-data
.end method

.method public final zzi(F)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpb;->zza()Lcom/google/android/gms/internal/ads/zzfpb;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfpi;->zza()Landroid/webkit/WebView;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfpb;->zze(Landroid/webkit/WebView;F)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final zzj(Landroid/webkit/WebView;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfql;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfql;-><init>(Landroid/webkit/WebView;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpi;->zza:Lcom/google/android/gms/internal/ads/zzfql;

    .line 7
    .line 8
    return-void
.end method

.method public zzk()V
    .locals 0

    return-void
.end method

.method public final zzl()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpi;->zza:Lcom/google/android/gms/internal/ads/zzfql;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method
