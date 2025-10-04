.class final Lcom/google/android/gms/internal/consent_sdk/zzn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/consent_sdk/zzl;

.field private final zzb:Landroid/app/Activity;

.field private final zzc:Lcom/google/android/ump/ConsentDebugSettings;

.field private final zzd:Lcom/google/android/ump/ConsentRequestParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzl;Landroid/app/Activity;Lcom/google/android/ump/ConsentDebugSettings;Lcom/google/android/ump/ConsentRequestParameters;Lcom/google/android/gms/internal/consent_sdk/zzm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza:Lcom/google/android/gms/internal/consent_sdk/zzl;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzn;->zzb:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzn;->zzc:Lcom/google/android/ump/ConsentDebugSettings;

    iput-object p4, p0, Lcom/google/android/gms/internal/consent_sdk/zzn;->zzd:Lcom/google/android/ump/ConsentRequestParameters;

    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/consent_sdk/zzn;)Lcom/google/android/gms/internal/consent_sdk/zzci;
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzci;

    .line 3
    .line 4
    invoke-direct {v1}, Lcom/google/android/gms/internal/consent_sdk/zzci;-><init>()V

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzn;->zzd:Lcom/google/android/ump/ConsentRequestParameters;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/google/android/ump/ConsentRequestParameters;->zza()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x0

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza:Lcom/google/android/gms/internal/consent_sdk/zzl;

    .line 22
    .line 23
    invoke-static {v3}, Lcom/google/android/gms/internal/consent_sdk/zzl;->zza(Lcom/google/android/gms/internal/consent_sdk/zzl;)Landroid/app/Application;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget-object v5, p0, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza:Lcom/google/android/gms/internal/consent_sdk/zzl;

    .line 32
    .line 33
    invoke-static {v5}, Lcom/google/android/gms/internal/consent_sdk/zzl;->zza(Lcom/google/android/gms/internal/consent_sdk/zzl;)Landroid/app/Application;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const/16 v6, 0x80

    .line 42
    .line 43
    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    nop

    .line 51
    move-object v3, v4

    .line 52
    :goto_0
    if-eqz v3, :cond_1

    .line 53
    .line 54
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    const/4 v5, 0x7

    .line 57
    new-array v5, v5, [J

    .line 58
    .line 59
    fill-array-data v5, :array_0

    .line 60
    .line 61
    .line 62
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v3, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-nez v3, :cond_10

    .line 78
    .line 79
    :goto_1
    iput-object v2, v1, Lcom/google/android/gms/internal/consent_sdk/zzci;->zza:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzn;->zzc:Lcom/google/android/ump/ConsentDebugSettings;

    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/google/android/ump/ConsentDebugSettings;->isTestDevice()Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-nez v2, :cond_2

    .line 88
    .line 89
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    goto :goto_3

    .line 94
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzn;->zzc:Lcom/google/android/ump/ConsentDebugSettings;

    .line 100
    .line 101
    invoke-virtual {v3}, Lcom/google/android/ump/ConsentDebugSettings;->getDebugGeography()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    const/4 v5, 0x1

    .line 106
    if-eq v3, v5, :cond_4

    .line 107
    .line 108
    if-eq v3, v0, :cond_3

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_3
    sget-object v3, Lcom/google/android/gms/internal/consent_sdk/zzcd;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzcd;

    .line 112
    .line 113
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_4
    sget-object v3, Lcom/google/android/gms/internal/consent_sdk/zzcd;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzcd;

    .line 118
    .line 119
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    :goto_2
    sget-object v3, Lcom/google/android/gms/internal/consent_sdk/zzcd;->zze:Lcom/google/android/gms/internal/consent_sdk/zzcd;

    .line 123
    .line 124
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    :goto_3
    iput-object v2, v1, Lcom/google/android/gms/internal/consent_sdk/zzci;->zzi:Ljava/util/List;

    .line 128
    .line 129
    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza:Lcom/google/android/gms/internal/consent_sdk/zzl;

    .line 130
    .line 131
    invoke-static {v2}, Lcom/google/android/gms/internal/consent_sdk/zzl;->zzb(Lcom/google/android/gms/internal/consent_sdk/zzl;)Lcom/google/android/gms/internal/consent_sdk/zzap;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v2}, Lcom/google/android/gms/internal/consent_sdk/zzap;->zzc()Ljava/util/Map;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    iput-object v2, v1, Lcom/google/android/gms/internal/consent_sdk/zzci;->zze:Ljava/util/Map;

    .line 140
    .line 141
    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzn;->zzd:Lcom/google/android/ump/ConsentRequestParameters;

    .line 142
    .line 143
    invoke-virtual {v2}, Lcom/google/android/ump/ConsentRequestParameters;->isTagForUnderAgeOfConsent()Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    iput-object v2, v1, Lcom/google/android/gms/internal/consent_sdk/zzci;->zzd:Ljava/lang/Boolean;

    .line 152
    .line 153
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 154
    .line 155
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    iput-object v3, v1, Lcom/google/android/gms/internal/consent_sdk/zzci;->zzc:Ljava/lang/String;

    .line 164
    .line 165
    new-instance v3, Lcom/google/android/gms/internal/consent_sdk/zzce;

    .line 166
    .line 167
    invoke-direct {v3}, Lcom/google/android/gms/internal/consent_sdk/zzce;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    iput-object v5, v3, Lcom/google/android/gms/internal/consent_sdk/zzce;->zzb:Ljava/lang/Integer;

    .line 175
    .line 176
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 177
    .line 178
    iput-object v5, v3, Lcom/google/android/gms/internal/consent_sdk/zzce;->zza:Ljava/lang/String;

    .line 179
    .line 180
    iput v0, v3, Lcom/google/android/gms/internal/consent_sdk/zzce;->zzc:I

    .line 181
    .line 182
    iput-object v3, v1, Lcom/google/android/gms/internal/consent_sdk/zzci;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzce;

    .line 183
    .line 184
    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza:Lcom/google/android/gms/internal/consent_sdk/zzl;

    .line 185
    .line 186
    invoke-static {v3}, Lcom/google/android/gms/internal/consent_sdk/zzl;->zza(Lcom/google/android/gms/internal/consent_sdk/zzl;)Landroid/app/Application;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    iget-object v5, p0, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza:Lcom/google/android/gms/internal/consent_sdk/zzl;

    .line 199
    .line 200
    invoke-static {v5}, Lcom/google/android/gms/internal/consent_sdk/zzl;->zza(Lcom/google/android/gms/internal/consent_sdk/zzl;)Landroid/app/Application;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 209
    .line 210
    .line 211
    new-instance v5, Lcom/google/android/gms/internal/consent_sdk/zzcg;

    .line 212
    .line 213
    invoke-direct {v5}, Lcom/google/android/gms/internal/consent_sdk/zzcg;-><init>()V

    .line 214
    .line 215
    .line 216
    iget v6, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 217
    .line 218
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    iput-object v6, v5, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zza:Ljava/lang/Integer;

    .line 223
    .line 224
    iget v3, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 225
    .line 226
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    iput-object v3, v5, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zzb:Ljava/lang/Integer;

    .line 231
    .line 232
    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza:Lcom/google/android/gms/internal/consent_sdk/zzl;

    .line 233
    .line 234
    invoke-static {v3}, Lcom/google/android/gms/internal/consent_sdk/zzl;->zza(Lcom/google/android/gms/internal/consent_sdk/zzl;)Landroid/app/Application;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 247
    .line 248
    float-to-double v6, v3

    .line 249
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    iput-object v3, v5, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zzc:Ljava/lang/Double;

    .line 254
    .line 255
    const/16 v3, 0x1c

    .line 256
    .line 257
    if-ge v2, v3, :cond_5

    .line 258
    .line 259
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    goto/16 :goto_9

    .line 264
    .line 265
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzn;->zzb:Landroid/app/Activity;

    .line 266
    .line 267
    if-nez v2, :cond_6

    .line 268
    .line 269
    move-object v2, v4

    .line 270
    goto :goto_4

    .line 271
    :cond_6
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    :goto_4
    if-nez v2, :cond_7

    .line 276
    .line 277
    move-object v2, v4

    .line 278
    goto :goto_5

    .line 279
    :cond_7
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    :goto_5
    if-nez v2, :cond_8

    .line 284
    .line 285
    move-object v2, v4

    .line 286
    goto :goto_6

    .line 287
    :cond_8
    invoke-static {v2}, L땸듬땠뒝드딻돳땟뒉땠따듰땮될듨뎽두딻둥뎡딸땵땄땸돶둡돸뎽땹득뒋딸딃딟되땮딅되됴두땪땥땠땥돵뒘뒵돠뒤따딎딀듔땅둥둬땠듌돛둥둑땝땔딠뒬둡뎹돵뒋듸둣돤둬둘돸땸듐둡뒵될들땹돤듨땔땥땅땔둬뎸딹됫뒹뒘뒉둔든돷땬뎬딎땵땯된뒙땩돷땃뎸딠돨돤돸딌듽뒛됫뒻딐땃뒨따도뎰듨딁됨듼뎬둡;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Landroid/view/View;)Landroid/view/WindowInsets;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    :goto_6
    if-nez v2, :cond_9

    .line 292
    .line 293
    move-object v2, v4

    .line 294
    goto :goto_7

    .line 295
    :cond_9
    invoke-static {v2}, L땤뒾듼땯도딞둑뎹땥뒀뒉딅둔땠듬딝둥땟뒵딝됫딟뎹딐도돴된든뎹뎽땟도땠땵뎠돛땧뒻뒾땄뎨땱듰둠땡딅땣뒐땐땫땡땵드돨됴딠땝뒾땬된딜뒹뎨딞딐뒷듟뒨듌든땤뒉땟땨딹듬든돤딌둠뎻딌뎻따땮딸딟땁두돴뎻땋딄돠땝뒨땃딽두땰땝뒾돷땜땣돸땠딟뒷딠땠땡돳땹땳땁땦땤땟뒷뒋땲땁땪디돵돼딐딨뎠;->뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    :goto_7
    if-nez v2, :cond_a

    .line 300
    .line 301
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    goto :goto_9

    .line 306
    :cond_a
    invoke-static {v2}, L땤뒾듼땯도딞둑뎹땥뒀뒉딅둔땠듬딝둥땟뒵딝됫딟뎹딐도돴된든뎹뎽땟도땠땵뎠돛땧뒻뒾땄뎨땱듰둠땡딅땣뒐땐땫땡땵드돨됴딠땝뒾땬된딜뒹뎨딞딐뒷듟뒨듌든땤뒉땟땨딹듬든돤딌둠뎻딌뎻따땮딸딟땁두돴뎻땋딄돠땝뒨땃딽두땰땝뒾돷땜땣돸땠딟뒷딠땠땡돳땹땳땁땦땤땟뒷뒋땲땁땪디돵돼딐딨뎠;->뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐(Landroid/view/DisplayCutout;)V

    .line 307
    .line 308
    .line 309
    new-instance v6, Ljava/util/ArrayList;

    .line 310
    .line 311
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .line 313
    .line 314
    invoke-static {v2}, L땤뒾듼땯도딞둑뎹땥뒀뒉딅둔땠듬딝둥땟뒵딝됫딟뎹딐도돴된든뎹뎽땟도땠땵뎠돛땧뒻뒾땄뎨땱듰둠땡딅땣뒐땐땫땡땵드돨됴딠땝뒾땬된딜뒹뎨딞딐뒷듟뒨듌든땤뒉땟땨딹듬든돤딌둠뎻딌뎻따땮딸딟땁두돴뎻땋딄돠땝뒨땃딽두땰땝뒾돷땜땣돸땠딟뒷딠땠땡돳땹땳땁땦땤땟뒷뒋땲땁땪디돵돼딐딨뎠;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Landroid/view/DisplayCutout;)Ljava/util/List;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    :cond_b
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 323
    .line 324
    .line 325
    move-result v7

    .line 326
    if-eqz v7, :cond_c

    .line 327
    .line 328
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v7

    .line 332
    check-cast v7, Landroid/graphics/Rect;

    .line 333
    .line 334
    if-eqz v7, :cond_b

    .line 335
    .line 336
    new-instance v8, Lcom/google/android/gms/internal/consent_sdk/zzcf;

    .line 337
    .line 338
    invoke-direct {v8}, Lcom/google/android/gms/internal/consent_sdk/zzcf;-><init>()V

    .line 339
    .line 340
    .line 341
    iget v9, v7, Landroid/graphics/Rect;->left:I

    .line 342
    .line 343
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 344
    .line 345
    .line 346
    move-result-object v9

    .line 347
    iput-object v9, v8, Lcom/google/android/gms/internal/consent_sdk/zzcf;->zzb:Ljava/lang/Integer;

    .line 348
    .line 349
    iget v9, v7, Landroid/graphics/Rect;->right:I

    .line 350
    .line 351
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 352
    .line 353
    .line 354
    move-result-object v9

    .line 355
    iput-object v9, v8, Lcom/google/android/gms/internal/consent_sdk/zzcf;->zzc:Ljava/lang/Integer;

    .line 356
    .line 357
    iget v9, v7, Landroid/graphics/Rect;->top:I

    .line 358
    .line 359
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 360
    .line 361
    .line 362
    move-result-object v9

    .line 363
    iput-object v9, v8, Lcom/google/android/gms/internal/consent_sdk/zzcf;->zza:Ljava/lang/Integer;

    .line 364
    .line 365
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 366
    .line 367
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 368
    .line 369
    .line 370
    move-result-object v7

    .line 371
    iput-object v7, v8, Lcom/google/android/gms/internal/consent_sdk/zzcf;->zzd:Ljava/lang/Integer;

    .line 372
    .line 373
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    goto :goto_8

    .line 377
    :cond_c
    move-object v2, v6

    .line 378
    :goto_9
    iput-object v2, v5, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zzd:Ljava/util/List;

    .line 379
    .line 380
    iput-object v5, v1, Lcom/google/android/gms/internal/consent_sdk/zzci;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzcg;

    .line 381
    .line 382
    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza:Lcom/google/android/gms/internal/consent_sdk/zzl;

    .line 383
    .line 384
    invoke-static {v2}, Lcom/google/android/gms/internal/consent_sdk/zzl;->zza(Lcom/google/android/gms/internal/consent_sdk/zzl;)Landroid/app/Application;

    .line 385
    .line 386
    .line 387
    move-result-object v5

    .line 388
    :try_start_1
    invoke-static {v2}, Lcom/google/android/gms/internal/consent_sdk/zzl;->zza(Lcom/google/android/gms/internal/consent_sdk/zzl;)Landroid/app/Application;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v6

    .line 400
    const/4 v7, 0x0

    .line 401
    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 402
    .line 403
    .line 404
    move-result-object v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 405
    goto :goto_a

    .line 406
    :catch_1
    nop

    .line 407
    move-object v2, v4

    .line 408
    :goto_a
    new-instance v6, Lcom/google/android/gms/internal/consent_sdk/zzcc;

    .line 409
    .line 410
    invoke-direct {v6}, Lcom/google/android/gms/internal/consent_sdk/zzcc;-><init>()V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v5

    .line 417
    iput-object v5, v6, Lcom/google/android/gms/internal/consent_sdk/zzcc;->zza:Ljava/lang/String;

    .line 418
    .line 419
    iget-object v5, p0, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza:Lcom/google/android/gms/internal/consent_sdk/zzl;

    .line 420
    .line 421
    invoke-static {v5}, Lcom/google/android/gms/internal/consent_sdk/zzl;->zza(Lcom/google/android/gms/internal/consent_sdk/zzl;)Landroid/app/Application;

    .line 422
    .line 423
    .line 424
    move-result-object v5

    .line 425
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 426
    .line 427
    .line 428
    move-result-object v5

    .line 429
    iget-object p0, p0, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza:Lcom/google/android/gms/internal/consent_sdk/zzl;

    .line 430
    .line 431
    invoke-static {p0}, Lcom/google/android/gms/internal/consent_sdk/zzl;->zza(Lcom/google/android/gms/internal/consent_sdk/zzl;)Landroid/app/Application;

    .line 432
    .line 433
    .line 434
    move-result-object p0

    .line 435
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 436
    .line 437
    .line 438
    move-result-object p0

    .line 439
    invoke-virtual {v5, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 440
    .line 441
    .line 442
    move-result-object p0

    .line 443
    if-eqz p0, :cond_d

    .line 444
    .line 445
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v4

    .line 449
    :cond_d
    iput-object v4, v6, Lcom/google/android/gms/internal/consent_sdk/zzcc;->zzb:Ljava/lang/String;

    .line 450
    .line 451
    if-eqz v2, :cond_f

    .line 452
    .line 453
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 454
    .line 455
    if-lt p0, v3, :cond_e

    .line 456
    .line 457
    invoke-static {v2}, L땤뒾듼땯도딞둑뎹땥뒀뒉딅둔땠듬딝둥땟뒵딝됫딟뎹딐도돴된든뎹뎽땟도땠땵뎠돛땧뒻뒾땄뎨땱듰둠땡딅땣뒐땐땫땡땵드돨됴딠땝뒾땬된딜뒹뎨딞딐뒷듟뒨듌든땤뒉땟땨딹듬든돤딌둠뎻딌뎻따땮딸딟땁두돴뎻땋딄돠땝뒨땃딽두땰땝뒾돷땜땣돸땠딟뒷딠땠땡돳땹땳땁땦땤땟뒷뒋땲땁땪디돵돼딐딨뎠;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Landroid/content/pm/PackageInfo;)J

    .line 458
    .line 459
    .line 460
    move-result-wide v2

    .line 461
    goto :goto_b

    .line 462
    :cond_e
    iget p0, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 463
    .line 464
    int-to-long v2, p0

    .line 465
    :goto_b
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object p0

    .line 469
    iput-object p0, v6, Lcom/google/android/gms/internal/consent_sdk/zzcc;->zzc:Ljava/lang/String;

    .line 470
    .line 471
    :cond_f
    iput-object v6, v1, Lcom/google/android/gms/internal/consent_sdk/zzci;->zzg:Lcom/google/android/gms/internal/consent_sdk/zzcc;

    .line 472
    .line 473
    new-instance p0, Lcom/google/android/gms/internal/consent_sdk/zzch;

    .line 474
    .line 475
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzch;-><init>()V

    .line 476
    .line 477
    .line 478
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 479
    .line 480
    new-array v0, v0, [J

    .line 481
    .line 482
    fill-array-data v0, :array_1

    .line 483
    .line 484
    .line 485
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzch;->zza:Ljava/lang/String;

    .line 493
    .line 494
    iput-object p0, v1, Lcom/google/android/gms/internal/consent_sdk/zzci;->zzh:Lcom/google/android/gms/internal/consent_sdk/zzch;

    .line 495
    .line 496
    return-object v1

    .line 497
    :cond_10
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 498
    .line 499
    const/16 v0, 0x28

    .line 500
    .line 501
    new-array v0, v0, [J

    .line 502
    .line 503
    fill-array-data v0, :array_2

    .line 504
    .line 505
    .line 506
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object p0

    .line 513
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzg;

    .line 514
    .line 515
    const/4 v1, 0x3

    .line 516
    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    .line 517
    .line 518
    .line 519
    throw v0

    .line 520
    nop

    .line 521
    :array_0
    .array-data 8
        -0x4d0d44384c4598ceL    # -2.846165918882713E-63
        -0x6e5e7b3b2e1e8dcbL    # -9.465712874401737E-224
        0x29506a547dc550b5L
        0x5e06a9dbf53ee26eL    # 8.843723428110025E144
        0x84a9650896bb9b2L
        -0x459594f14b387823L    # -2.667555809446767E-27
        0x677e8001b1f9d512L    # 3.397328048194245E190
    .end array-data

    .line 522
    .line 523
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
    .line 552
    .line 553
    :array_1
    .array-data 8
        0x57013a4bd033f7b2L
        0x75179aabadc2cdccL    # 1.1075549651260414E256
    .end array-data

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
    .line 564
    .line 565
    :array_2
    .array-data 8
        0x7f585481ed4a5e76L    # 2.6695597700487292E305
        -0x533e58e2f74cdb4cL    # -4.231405282897438E-93
        -0x40ad04bd5f9b4a62L    # -0.0011585379266521932
        -0x12280f6277f430ccL    # -1.3521324465736647E221
        -0x2bde0eb8047449c7L    # -1.9162478627271657E97
        -0x49bdaf325d07ad01L    # -2.5064135814417637E-47
        0x6972307324035969L    # 8.701860068005654E199
        -0x44d15fc76a082599L    # -1.2666560236404754E-23
        0x1cc4d4903663206dL    # 4.312096934402056E-170
        0x5d1b4f3e0377b3b6L    # 3.252163578407686E140
        0xb34239beb3a2280L
        0x340fb67401bdfb10L    # 6.315157249362246E-58
        -0x6b267763f23cbb0dL    # -3.10667333855343E-208
        0x1f1e33a8de92bcabL    # 8.59280706331296E-159
        -0x1d196529235bd662L    # -2.665931896069439E168
        -0x5f7fae722a97397fL
        -0x372a47f4f5c8ae36L    # -7.56793853853341E42
        0x3fc90c1de14e595fL    # 0.1956822729232028
        0x1f5381fd26924074L
        -0x2c55630d3ed06ab2L    # -1.1102576568880672E95
        -0x33ecd19da8d8a0deL    # -3.0100567208429544E58
        0x3f441a2d4ca8c2f2L    # 6.134720982285664E-4
        -0x3c9a92faad1fcd25L    # -4.824675314890108E16
        0xe29cd48e5851cbaL    # 1.934750878465417E-240
        -0x14ad97f77431f14dL    # -9.455084216517265E208
        0x3cc4341cfcb83212L    # 5.607616401601293E-16
        -0x67e7bebaa043c971L
        -0x2bb74a77f1897e67L    # -1.0555666575543938E98
        0x5d67f1199bae7657L    # 9.123568124242692E141
        -0x149f4439d43ca78L
        0x23c959bd593b7f5cL    # 2.724829180680557E-136
        -0x633a5836d1d5eb8fL    # -4.482898849185994E-170
        0x1b943a7f237eae54L    # 7.987047624267926E-176
        -0x6999de9000cc9e7aL    # -9.034963187871435E-201
        -0xd43cec4617e651eL    # -4.812461305839651E244
        0x37a7f9bc0532a9a2L
        0x2ee9c26421b3dc48L    # 1.0607815049006691E-82
        0x23edca7920cd559eL
        -0xda3cc4cfcc35953L    # -7.52204045640927E242
        -0x6c3969a3d274deb8L
    .end array-data
.end method
