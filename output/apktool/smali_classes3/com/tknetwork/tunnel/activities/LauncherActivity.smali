.class public Lcom/tknetwork/tunnel/activities/LauncherActivity;
.super Lcom/tknetwork/tunnel/activities/MainBaseActivity;
.source "SourceFile"


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private myPrefs:Landroid/content/SharedPreferences;

.field private old:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$onCreate$0()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const/high16 v1, 0x10000

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private loadAppColors(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->setStatusBarColor(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->setNavBarColor(I)V

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a0386

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static synthetic 뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Lcom/tknetwork/tunnel/activities/LauncherActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/LauncherActivity;->lambda$onCreate$0()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    invoke-super {p0, p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0d0025

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/LauncherActivity;->myPrefs:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/LauncherActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 23
    .line 24
    invoke-static {p0}, Lconfig/ConfigUtil;->getInstance(Landroid/content/Context;)Lconfig/ConfigUtil;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lconfig/ConfigUtil;->hasAccount()Z

    .line 29
    .line 30
    .line 31
    const p1, 0x7f0a0387

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/widget/ImageView;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    new-instance p1, Landroid/os/Handler;

    .line 45
    .line 46
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-direct {p1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 51
    .line 52
    .line 53
    new-instance v2, L돨뎠뒤땹땃땅땍딐땯딁딨뎬뒨땣땹땧딸되땠듌뎹듸둡땦땫뒙뎻땱돝디딀뒵땩딀돨땅든뒻됐둥딝땅땱뎽돴둔드뎨땵둬땡둥딐땵땻뒨듌땳땵됨딠뎠땜뒉땦듻딅땁땤듌땁듌땳돳땧뒤따땪땲딅돷땯뒵땄듨둔돤뎬땤따돨땠땜듼땍둬뎸땅딎듐딄돠땍땭됐뎸딞듬뒐둡땄땠둡뒈땤뒨돤땤듸됨디둘땣땩땳땀뒨땳땟뒋;

    .line 54
    .line 55
    const/16 v3, 0x14

    .line 56
    .line 57
    invoke-direct {v2, p0, v3}, L돨뎠뒤땹땃땅땍딐땯딁딨뎬뒨땣땹땧딸되땠듌뎹듸둡땦땫뒙뎻땱돝디딀뒵땩딀돨땅든뒻됐둥딝땅땱뎽돴둔드뎨땵둬땡둥딐땵땻뒨듌땳땵됨딠뎠땜뒉땦듻딅땁땤듌땁듌땳돳땧뒤따땪땲딅돷땯뒵땄듨둔돤뎬땤따돨땠땜듼땍둬뎸땅딎듐딄돠땍땭됐뎸딞듬뒐둡땄땠둡뒈땤뒨돤땤듸됨디둘땣땩땳땀뒨땳땟뒋;-><init>(Ljava/lang/Object;I)V

    .line 58
    .line 59
    .line 60
    const-wide/16 v3, 0x3e8

    .line 61
    .line 62
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->getJSONObject()Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-nez p1, :cond_0

    .line 70
    .line 71
    return-void

    .line 72
    :cond_0
    :try_start_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    new-array v3, v1, [J

    .line 75
    .line 76
    fill-array-data v3, :array_0

    .line 77
    .line 78
    .line 79
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_1

    .line 91
    .line 92
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array v3, v1, [J

    .line 95
    .line 96
    fill-array-data v3, :array_1

    .line 97
    .line 98
    .line 99
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-static {v2}, Lcom/tknetwork/tunnel/utils/VPNUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    iput-object v2, p0, Lcom/tknetwork/tunnel/activities/LauncherActivity;->old:Ljava/lang/String;

    .line 115
    .line 116
    :cond_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 117
    .line 118
    new-array v3, v1, [J

    .line 119
    .line 120
    fill-array-data v3, :array_2

    .line 121
    .line 122
    .line 123
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_8

    .line 135
    .line 136
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 137
    .line 138
    new-array v3, v1, [J

    .line 139
    .line 140
    fill-array-data v3, :array_3

    .line 141
    .line 142
    .line 143
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 155
    .line 156
    new-array v4, v0, [J

    .line 157
    .line 158
    fill-array-data v4, :array_4

    .line 159
    .line 160
    .line 161
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_2

    .line 173
    .line 174
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/LauncherActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 175
    .line 176
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 177
    .line 178
    new-array v1, v1, [J

    .line 179
    .line 180
    fill-array-data v1, :array_5

    .line 181
    .line 182
    .line 183
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 191
    .line 192
    new-array v0, v0, [J

    .line 193
    .line 194
    fill-array-data v0, :array_6

    .line 195
    .line 196
    .line 197
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    :cond_2
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 218
    .line 219
    new-array v3, v1, [J

    .line 220
    .line 221
    fill-array-data v3, :array_7

    .line 222
    .line 223
    .line 224
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 236
    .line 237
    new-array v4, v0, [J

    .line 238
    .line 239
    fill-array-data v4, :array_8

    .line 240
    .line 241
    .line 242
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    if-eqz v2, :cond_3

    .line 254
    .line 255
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/LauncherActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 256
    .line 257
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 258
    .line 259
    new-array v1, v1, [J

    .line 260
    .line 261
    fill-array-data v1, :array_9

    .line 262
    .line 263
    .line 264
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 272
    .line 273
    new-array v0, v0, [J

    .line 274
    .line 275
    fill-array-data v0, :array_a

    .line 276
    .line 277
    .line 278
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_0

    .line 297
    .line 298
    :cond_3
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 299
    .line 300
    new-array v3, v1, [J

    .line 301
    .line 302
    fill-array-data v3, :array_b

    .line 303
    .line 304
    .line 305
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 317
    .line 318
    new-array v4, v0, [J

    .line 319
    .line 320
    fill-array-data v4, :array_c

    .line 321
    .line 322
    .line 323
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v2

    .line 334
    if-eqz v2, :cond_4

    .line 335
    .line 336
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/LauncherActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 337
    .line 338
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 339
    .line 340
    new-array v2, v1, [J

    .line 341
    .line 342
    fill-array-data v2, :array_d

    .line 343
    .line 344
    .line 345
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 353
    .line 354
    new-array v1, v1, [J

    .line 355
    .line 356
    fill-array-data v1, :array_e

    .line 357
    .line 358
    .line 359
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 375
    .line 376
    .line 377
    goto/16 :goto_0

    .line 378
    .line 379
    :cond_4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 380
    .line 381
    new-array v3, v1, [J

    .line 382
    .line 383
    fill-array-data v3, :array_f

    .line 384
    .line 385
    .line 386
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 398
    .line 399
    new-array v4, v0, [J

    .line 400
    .line 401
    fill-array-data v4, :array_10

    .line 402
    .line 403
    .line 404
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v3

    .line 411
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    if-eqz v2, :cond_5

    .line 416
    .line 417
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/LauncherActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 418
    .line 419
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 420
    .line 421
    new-array v1, v1, [J

    .line 422
    .line 423
    fill-array-data v1, :array_11

    .line 424
    .line 425
    .line 426
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 434
    .line 435
    new-array v0, v0, [J

    .line 436
    .line 437
    fill-array-data v0, :array_12

    .line 438
    .line 439
    .line 440
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 452
    .line 453
    .line 454
    move-result-object p1

    .line 455
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 456
    .line 457
    .line 458
    goto/16 :goto_0

    .line 459
    .line 460
    :cond_5
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 461
    .line 462
    new-array v3, v1, [J

    .line 463
    .line 464
    fill-array-data v3, :array_13

    .line 465
    .line 466
    .line 467
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 479
    .line 480
    new-array v4, v0, [J

    .line 481
    .line 482
    fill-array-data v4, :array_14

    .line 483
    .line 484
    .line 485
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v3

    .line 492
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 493
    .line 494
    .line 495
    move-result v2

    .line 496
    if-eqz v2, :cond_6

    .line 497
    .line 498
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/LauncherActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 499
    .line 500
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 501
    .line 502
    new-array v1, v1, [J

    .line 503
    .line 504
    fill-array-data v1, :array_15

    .line 505
    .line 506
    .line 507
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 515
    .line 516
    new-array v0, v0, [J

    .line 517
    .line 518
    fill-array-data v0, :array_16

    .line 519
    .line 520
    .line 521
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 529
    .line 530
    .line 531
    move-result v0

    .line 532
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 533
    .line 534
    .line 535
    move-result-object p1

    .line 536
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 537
    .line 538
    .line 539
    goto/16 :goto_0

    .line 540
    .line 541
    :cond_6
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 542
    .line 543
    new-array v3, v1, [J

    .line 544
    .line 545
    fill-array-data v3, :array_17

    .line 546
    .line 547
    .line 548
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v2

    .line 555
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 560
    .line 561
    new-array v4, v0, [J

    .line 562
    .line 563
    fill-array-data v4, :array_18

    .line 564
    .line 565
    .line 566
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v3

    .line 573
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 574
    .line 575
    .line 576
    move-result v2

    .line 577
    if-eqz v2, :cond_7

    .line 578
    .line 579
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/LauncherActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 580
    .line 581
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 582
    .line 583
    new-array v1, v1, [J

    .line 584
    .line 585
    fill-array-data v1, :array_19

    .line 586
    .line 587
    .line 588
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v1

    .line 595
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 596
    .line 597
    new-array v0, v0, [J

    .line 598
    .line 599
    fill-array-data v0, :array_1a

    .line 600
    .line 601
    .line 602
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 610
    .line 611
    .line 612
    move-result v0

    .line 613
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 614
    .line 615
    .line 616
    move-result-object p1

    .line 617
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 618
    .line 619
    .line 620
    goto :goto_0

    .line 621
    :cond_7
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 622
    .line 623
    new-array v3, v1, [J

    .line 624
    .line 625
    fill-array-data v3, :array_1b

    .line 626
    .line 627
    .line 628
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v2

    .line 635
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object p1

    .line 639
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 640
    .line 641
    new-array v3, v0, [J

    .line 642
    .line 643
    fill-array-data v3, :array_1c

    .line 644
    .line 645
    .line 646
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v2

    .line 653
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 654
    .line 655
    .line 656
    move-result p1

    .line 657
    if-eqz p1, :cond_8

    .line 658
    .line 659
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/LauncherActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 660
    .line 661
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 662
    .line 663
    new-array v1, v1, [J

    .line 664
    .line 665
    fill-array-data v1, :array_1d

    .line 666
    .line 667
    .line 668
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v1

    .line 675
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 676
    .line 677
    new-array v0, v0, [J

    .line 678
    .line 679
    fill-array-data v0, :array_1e

    .line 680
    .line 681
    .line 682
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 683
    .line 684
    .line 685
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 690
    .line 691
    .line 692
    move-result v0

    .line 693
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 694
    .line 695
    .line 696
    move-result-object p1

    .line 697
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    .line 699
    .line 700
    :catch_0
    :cond_8
    :goto_0
    return-void

    .line 701
    :array_0
    .array-data 8
        -0x1bfe84cabd1d43efL    # -5.404565449894404E173
        0x6b7227c382a92778L    # 3.730448725265999E209
        0x767ebc932bde25fdL    # 6.049122139265382E262
    .end array-data

    .line 702
    .line 703
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
    :array_1
    .array-data 8
        -0x24040e633e204b93L    # -1.2694146636783819E135
        0x11d192f0734e420fL    # 7.596497194277775E-223
        -0x1ca61da177712606L
    .end array-data

    .line 718
    .line 719
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
    :array_2
    .array-data 8
        0x4aa7b4129df050c6L    # 4.434249109654612E51
        -0x6ce0ae774f6d66acL
        0x12002523bb7d17aaL
    .end array-data

    .line 734
    .line 735
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
    :array_3
    .array-data 8
        -0x3ccc1f0914bca33dL    # -5.595375671139523E15
        -0x5799197c75915f51L    # -4.64959972615023E-114
        0x10b79545a20057eeL    # 3.888696713509819E-228
    .end array-data

    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    :array_4
    .array-data 8
        -0x3e8bbcf3e05807dbL    # -2.1246145978508133E7
        0x3bbb248f8f27a35eL    # 5.7477147608067926E-21
    .end array-data

    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    :array_5
    .array-data 8
        0x50141a48507e52e7L    # 5.819324218358861E77
        0x43d2debe9e86c478L    # 5.4389349023504056E18
        0x5f9b63a5164bd875L    # 3.586226948149024E152
    .end array-data

    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    :array_6
    .array-data 8
        0x64528f989f0014abL    # 1.836272171696578E175
        0x6e3745bd6ec0443aL    # 8.412370420478551E222
    .end array-data

    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    :array_7
    .array-data 8
        -0x67f104dab0198f7L    # -1.876397922230636E277
        -0x55e1cac210c454cfL    # -8.231958394515767E-106
        -0x413cffa4273aacbdL    # -2.2651435697497513E-6
    .end array-data

    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    :array_8
    .array-data 8
        -0x39d68102fffe3fc8L    # -1.010002516179379E30
        -0x6e398f559518f058L    # -4.849958435520265E-223
    .end array-data

    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    :array_9
    .array-data 8
        0x4cd9b146f3b2c1a9L    # 1.6514495140120295E62
        0x5836cadfe008d786L    # 8.980693815886404E116
        0x34cbffa3a480b38L
    .end array-data

    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    :array_a
    .array-data 8
        0x3d7a546f80ce7000L    # 1.4966773507606743E-12
        0x38366e6ce0daa73eL    # 6.591980964085655E-38
    .end array-data

    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    :array_b
    .array-data 8
        -0x24d0439395177dbaL    # -1.7598705342260738E131
        -0x6ef5990d7f84f299L
        -0x75205f37c12aa711L
    .end array-data

    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    :array_c
    .array-data 8
        -0x7580d716d971f319L
        -0x54ab7b9d46fdc032L
    .end array-data

    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    :array_d
    .array-data 8
        -0x633d2fb4ebaa6ad5L    # -3.894622941895516E-170
        0x3cb6a45129852ba1L    # 3.1421897634818305E-16
        -0x1b832b9636cab855L    # -1.1408753539583708E176
    .end array-data

    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    :array_e
    .array-data 8
        0x2835ba97a46dc80eL    # 5.51466244372577E-115
        -0x286b133eee1579c6L    # -8.051561789637394E113
        -0x36e93ffb0df27b5dL    # -1.268359090348511E44
    .end array-data

    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    :array_f
    .array-data 8
        0x2a6eac6078142583L    # 2.674808416028352E-104
        0x4f5ac428e228f67eL    # 1.8916747273401876E74
        0x5e0c357f063e4c97L    # 1.1007663700768228E145
    .end array-data

    :array_10
    .array-data 8
        -0x774bd14b8f5f6a93L    # -9.779970336715651E-267
        -0x428c734504e9a398L    # -1.1112733830451464E-12
    .end array-data

    :array_11
    .array-data 8
        -0x101d6afbd9208d37L    # -9.015324394591947E230
        -0x1bccf81045b3cc05L    # -4.706945292081609E174
        -0x40cacf04155a763bL    # -3.233542471631458E-4
    .end array-data

    :array_12
    .array-data 8
        0xc26e2ae7e2d761fL
        -0x6aa29386a5cefc2bL    # -9.164750628129165E-206
    .end array-data

    :array_13
    .array-data 8
        -0x3340fbf8031d2d1aL    # -4.984038364014046E61
        0x25956216f876e54dL
        -0x5de20afeed893b97L    # -2.399059944009022E-144
    .end array-data

    :array_14
    .array-data 8
        0x74994f27ff0acd37L    # 4.638898322449501E253
        0xe873ceae5ea6f65L
    .end array-data

    :array_15
    .array-data 8
        -0x78f7a68820023569L    # -8.791110818710124E-275
        0x87766708b0e14e4L
        0x6648fa5b4da84deL
    .end array-data

    :array_16
    .array-data 8
        0x55a52ca70e302ba2L    # 3.794024397181145E104
        0x5438cdf918a5a94bL    # 5.298226591998128E97
    .end array-data

    :array_17
    .array-data 8
        0x687407997b107f2dL    # 1.4621480240697366E195
        0x73a23a4e6f1a91a6L    # 1.0195762645831271E249
        0x528151baf09f2819L    # 2.756246336735586E89
    .end array-data

    :array_18
    .array-data 8
        -0x13da92f8831bf4aL
        0x29d895e9f941b57eL
    .end array-data

    :array_19
    .array-data 8
        0x222bf8fdbff585d1L    # 4.480281077163263E-144
        -0x103f9c194ebf455eL    # -1.9879798696028235E230
        -0x5223e30b5aa07778L    # -8.832631985892659E-88
    .end array-data

    :array_1a
    .array-data 8
        0x52594be2995b8d41L    # 5.0322002541954144E88
        0x5ffa23c9a0b4283bL    # 2.1904834707354188E154
    .end array-data

    :array_1b
    .array-data 8
        -0x49187eaf513040b1L    # -3.293771290411276E-44
        -0x1f2788f4d449d875L    # -3.3589474449914674E158
        0x744b42dda33a4179L    # 1.5614614554806164E252
    .end array-data

    :array_1c
    .array-data 8
        -0x25de2a4c1e2e3553L    # -1.5090924990387166E126
        -0xbd637cac6792aa0L    # -3.691850002907981E251
    .end array-data

    :array_1d
    .array-data 8
        0x261588c886c1b831L    # 3.181213149428454E-125
        0x7a5551b84897d7a6L    # 1.934938838508144E281
        0x226a04384be272d3L
    .end array-data

    :array_1e
    .array-data 8
        -0x3d44a4aa910cdbd8L    # -3.0079089308452156E13
        0x12ca479c996a5c88L
    .end array-data
.end method

.method public onResume()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/LauncherActivity;->myPrefs:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    new-array v3, v3, [J

    .line 22
    .line 23
    fill-array-data v3, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-direct {p0, v0}, Lcom/tknetwork/tunnel/activities/LauncherActivity;->loadAppColors(I)V

    .line 42
    .line 43
    .line 44
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :array_0
    .array-data 8
        0x4cc7f926b1e04a00L    # 7.704704428901066E61
        -0x1682996be313555dL    # -1.406548695566392E200
        -0x57c13e76948778e5L    # -7.805694704112672E-115
    .end array-data

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    :array_1
    .array-data 8
        0x2dbbada265122eaaL    # 2.174002581765757E-88
        -0x2fa856982c3515fbL    # -1.0959369483422201E79
    .end array-data
.end method
