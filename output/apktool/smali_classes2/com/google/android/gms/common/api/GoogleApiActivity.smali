.class public Lcom/google/android/gms/common/api/GoogleApiActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation


# instance fields
.field protected zaa:I
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    .line 6
    .line 7
    return-void
.end method

.method public static zaa(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/google/android/gms/common/api/GoogleApiActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    new-array v2, v1, [J

    .line 12
    .line 13
    fill-array-data v2, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 p1, 0x4

    .line 29
    new-array p1, p1, [J

    .line 30
    .line 31
    fill-array-data p1, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array p1, v1, [J

    .line 47
    .line 48
    fill-array-data p1, :array_2

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    return-object v0

    .line 62
    nop

    .line 63
    :array_0
    .array-data 8
        -0x53b830d02a3e925L
        0x15d38808d9333817L
        0x4767b9a170341b49L    # 9.855029118596439E35
    .end array-data

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    :array_1
    .array-data 8
        0x7835b86a46b49376L    # 1.1474753554820928E271
        0x6464dbaaddb50a4eL    # 4.127069040700725E175
        0x617b32e08cfe7edeL    # 3.8238994221363816E161
        -0x227f4d27a4a27a13L    # -2.5453551543226506E142
    .end array-data

    .line 80
    .line 81
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
    :array_2
    .array-data 8
        0x2bc6e8f9b5a03a2fL    # 8.379491204967697E-98
        -0x49a780ece76108a0L    # -6.70444274814578E-47
        0x66142cbef69acc92L    # 5.3577984326134035E183
    .end array-data
.end method

.method private final zab()V
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    const/4 v8, 0x6

    .line 4
    const/4 v9, 0x5

    .line 5
    const/4 v10, 0x2

    .line 6
    const/4 v11, 0x3

    .line 7
    const/4 v12, 0x4

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object v13

    .line 16
    if-nez v13, :cond_0

    .line 17
    .line 18
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    new-array v1, v12, [J

    .line 21
    .line 22
    fill-array-data v1, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    new-array v1, v9, [J

    .line 34
    .line 35
    fill-array-data v1, :array_1

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    new-array v1, v11, [J

    .line 51
    .line 52
    fill-array-data v1, :array_2

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v13, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    move-object v14, v0

    .line 67
    check-cast v14, Landroid/app/PendingIntent;

    .line 68
    .line 69
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v1, v11, [J

    .line 72
    .line 73
    fill-array-data v1, :array_3

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v13, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Ljava/lang/Integer;

    .line 88
    .line 89
    if-nez v14, :cond_2

    .line 90
    .line 91
    if-eqz v0, :cond_1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    new-array v1, v12, [J

    .line 97
    .line 98
    fill-array-data v1, :array_4

    .line 99
    .line 100
    .line 101
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 108
    .line 109
    new-array v1, v8, [J

    .line 110
    .line 111
    fill-array-data v1, :array_5

    .line 112
    .line 113
    .line 114
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_2
    :goto_0
    const/4 v15, 0x1

    .line 125
    if-eqz v14, :cond_5

    .line 126
    .line 127
    :try_start_0
    invoke-virtual {v14}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const/4 v5, 0x0

    .line 132
    const/4 v6, 0x0

    .line 133
    const/4 v2, 0x1

    .line 134
    const/4 v3, 0x0

    .line 135
    const/4 v4, 0x0

    .line 136
    move-object/from16 v0, p0

    .line 137
    .line 138
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 139
    .line 140
    .line 141
    iput v15, v7, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    .line 143
    return-void

    .line 144
    :catch_0
    nop

    .line 145
    goto :goto_1

    .line 146
    :catch_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 147
    .line 148
    new-array v1, v12, [J

    .line 149
    .line 150
    fill-array-data v1, :array_6

    .line 151
    .line 152
    .line 153
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 160
    .line 161
    new-array v1, v9, [J

    .line 162
    .line 163
    fill-array-data v1, :array_7

    .line 164
    .line 165
    .line 166
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :goto_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 177
    .line 178
    new-array v1, v11, [J

    .line 179
    .line 180
    fill-array-data v1, :array_8

    .line 181
    .line 182
    .line 183
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v13, v0, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_3

    .line 195
    .line 196
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    .line 201
    .line 202
    const/16 v2, 0x16

    .line 203
    .line 204
    const/4 v3, 0x0

    .line 205
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 213
    .line 214
    new-array v4, v12, [J

    .line 215
    .line 216
    fill-array-data v4, :array_9

    .line 217
    .line 218
    .line 219
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    const/4 v4, -0x1

    .line 227
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaz(Lcom/google/android/gms/common/ConnectionResult;I)V

    .line 232
    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_3
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    add-int/lit8 v2, v2, 0x24

    .line 246
    .line 247
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 248
    .line 249
    .line 250
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 251
    .line 252
    new-array v3, v8, [J

    .line 253
    .line 254
    fill-array-data v3, :array_a

    .line 255
    .line 256
    .line 257
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 271
    .line 272
    new-array v2, v10, [J

    .line 273
    .line 274
    fill-array-data v2, :array_b

    .line 275
    .line 276
    .line 277
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 278
    .line 279
    .line 280
    invoke-static {v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 285
    .line 286
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 287
    .line 288
    new-array v3, v10, [J

    .line 289
    .line 290
    fill-array-data v3, :array_c

    .line 291
    .line 292
    .line 293
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    if-eqz v1, :cond_4

    .line 305
    .line 306
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 307
    .line 308
    const/16 v2, 0x11

    .line 309
    .line 310
    new-array v2, v2, [J

    .line 311
    .line 312
    fill-array-data v2, :array_d

    .line 313
    .line 314
    .line 315
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    :cond_4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 326
    .line 327
    new-array v1, v12, [J

    .line 328
    .line 329
    fill-array-data v1, :array_e

    .line 330
    .line 331
    .line 332
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    :goto_2
    iput v15, v7, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    .line 339
    .line 340
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 341
    .line 342
    .line 343
    return-void

    .line 344
    :cond_5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    check-cast v0, Ljava/lang/Integer;

    .line 349
    .line 350
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    invoke-virtual {v1, v7, v0, v10, v7}, Lcom/google/android/gms/common/GoogleApiAvailability;->showErrorDialogFragment(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z

    .line 359
    .line 360
    .line 361
    iput v15, v7, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    .line 362
    .line 363
    return-void

    .line 364
    nop

    .line 365
    :array_0
    .array-data 8
        -0x3765f778ef27f5d8L    # -5.6695530659977994E41
        -0x304564f98b1ec646L    # -1.2034039919756483E76
        -0x49ea59d93b2dc945L    # -3.703216697207391E-48
        -0x30c8de671a12442aL    # -4.086936224555311E73
    .end array-data

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    :array_1
    .array-data 8
        0x3a269cdb33d9b4fL
        0xf39a68045fec1fcL
        -0x2aa9d100c921472bL    # -1.2421390153369977E103
        -0x3ec9914c4b26fa2L    # -4.726971102811309E289
        -0x41cd3ee9d8d327e2L    # -4.366562766577496E-9
    .end array-data

    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    :array_2
    .array-data 8
        -0x704bb2927fd007cbL    # -5.108246654473287E-233
        -0x42e37ee33ad5c8ecL    # -2.5316944316988944E-14
        0x5346aa8076c92875L    # 1.4774881181079613E93
    .end array-data

    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    :array_3
    .array-data 8
        0x5e8e88fb34c49acaL    # 3.0503312449655552E147
        -0x53046fa36e25d3deL    # -5.2856962008563654E-92
        0x6aef0be3fb3f710fL    # 1.2459452282403851E207
    .end array-data

    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    :array_4
    .array-data 8
        0x298682aca8c2e7adL
        -0x4cbc5ebac04b11a7L    # -9.543559301042963E-62
        -0x419c643d00d052f0L    # -3.652357340857942E-8
        0x54d2f0b2880c2775L    # 4.142701905107268E100
    .end array-data

    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    :array_5
    .array-data 8
        0xe47e012ed85fc3eL    # 7.161138913548604E-240
        0x361ce69f82676331L    # 4.943694670249794E-48
        0x525b0070dd208ae8L    # 5.371433542210402E88
        0x3ee59a589cb82e59L    # 1.0301072413752115E-5
        -0x6984ee5658120aa1L
        0x26ec52dd8dd6cf44L    # 3.4276907836999233E-121
    .end array-data

    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    :array_6
    .array-data 8
        0x76d940a34588a4baL    # 3.180683390065542E264
        -0x389dd762abb0e732L    # -7.542808380132064E35
        0x56313aaa81fe2946L    # 1.5806025737767246E107
        -0xe1a8d2f67aec251L    # -4.469339904283618E240
    .end array-data

    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    :array_7
    .array-data 8
        -0x7493a1e29512268aL
        -0x87bc1871f3785ffL    # -5.222075863673122E267
        0x2bf89dfb2e926386L    # 7.203085028129252E-97
        0x5ee132ebf409525cL    # 1.099585152844887E149
        0xa81d926b3da4c95L
    .end array-data

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
    :array_8
    .array-data 8
        0x7bb96df8d3c34911L    # 9.680438409827051E287
        0x7379ba209527b779L    # 1.7988154053699193E248
        0x26b6e25d47e2bd3fL
    .end array-data

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
    :array_9
    .array-data 8
        0x4c55b9595161f580L    # 5.4545551279757825E59
        0x793fad1d243475d4L    # 1.0967041256183627E276
        -0x44521d1e30227dd9L    # -3.1643306619347196E-21
        0x49e443c09f9bb351L    # 9.255259617242799E47
    .end array-data

    .line 550
    .line 551
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
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    :array_a
    .array-data 8
        0x118780d2f47b0ea1L
        -0x3142b76cb0da24abL    # -2.0210727368338496E71
        -0x53c3ea358577ef92L    # -1.3148544610304046E-95
        0x6a1b8c8c7a3c4a5cL    # 1.3495942703435932E203
        -0x273094167848e69eL    # -6.338925588309016E119
        -0x14189868781968dL
    .end array-data

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
    .line 596
    .line 597
    :array_b
    .array-data 8
        -0x48d0c8434f5c8815L    # -6.99925555242849E-43
        -0x23c62fd88379476fL    # -1.876196250219904E136
    .end array-data

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
    .line 608
    .line 609
    :array_c
    .array-data 8
        0x3633e002dab2e7d3L    # 1.3599056645152027E-47
        0x45a8d9cc82e92f69L    # 3.8454714581053277E27
    .end array-data

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
    .line 620
    .line 621
    :array_d
    .array-data 8
        0x68dfcb805f58ee26L    # 1.4854396817986038E197
        0x1592884ed5a3f358L    # 9.235828558539138E-205
        0xb78e5bc1ab209c8L
        -0x1b29e8626a6e12d9L    # -5.595222671599354E177
        0x4cd8e8eab9b4f9a2L    # 1.6011422446128402E62
        -0x5c47c0b19ee1548fL    # -1.303122306499112E-136
        0x4f3af56e1785a51cL    # 4.763191961049612E73
        -0x102a2a2b0bd43910L    # -5.296823169686345E230
        -0x5fbac6f8d3f9165aL    # -3.165732354853051E-153
        0x389e6d66bffeefd0L    # 5.7227483145886336E-36
        0x12fe81b24bc850c8L
        0x729faf7fd2345f26L
        0x2ae3bd55b7d49b20L
        0xd1d64f77326be89L
        -0x2cee8be06b0b62beL    # -1.4221450069574946E92
        -0x2e6789032a28074dL    # -1.1881749274147589E85
        -0x75369877697d1853L    # -1.0574579990873561E-256
    .end array-data

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
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    :array_e
    .array-data 8
        0x69f4a797e8c6d5baL    # 2.5296194374458446E202
        0x30bb53d292126164L    # 6.041710264887617E-74
        -0x1b8238ad9a223156L    # -1.1784245361804966E176
        -0x701ece448a555e13L    # -3.460963422563498E-232
    .end array-data
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne p1, v1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v3, 0x3

    .line 15
    new-array v3, v3, [J

    .line 16
    .line 17
    fill-array-data v3, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    .line 32
    .line 33
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 34
    .line 35
    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/4 p3, -0x1

    .line 43
    if-eq p2, p3, :cond_1

    .line 44
    .line 45
    if-eqz p2, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance p2, Lcom/google/android/gms/common/ConnectionResult;

    .line 49
    .line 50
    const/16 v0, 0xd

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    const/4 v2, 0x4

    .line 63
    new-array v2, v2, [J

    .line 64
    .line 65
    fill-array-data v2, :array_1

    .line 66
    .line 67
    .line 68
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 76
    .line 77
    .line 78
    move-result p3

    .line 79
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaz(Lcom/google/android/gms/common/ConnectionResult;I)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaA()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    const/4 v1, 0x2

    .line 88
    if-ne p1, v1, :cond_3

    .line 89
    .line 90
    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    .line 91
    .line 92
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :array_0
    .array-data 8
        -0xd8b5ee1551bf21fL
        -0x3887ee23309d919L    # -3.664918052879555E291
        -0x1eb84ff1203b964cL    # -4.162853186893645E160
    .end array-data

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
    :array_1
    .array-data 8
        -0x6ba9b703d2a793bbL
        -0x30ff954b17b41b3aL    # -3.625751925410817E72
        -0x6e6441dba3af6b7bL    # -7.49501700854597E-224
        0x2a46cd37383c3feeL    # 4.97092600717428E-105
    .end array-data
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    new-array v1, v1, [J

    .line 10
    .line 11
    fill-array-data v1, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput p1, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    .line 26
    .line 27
    :cond_0
    iget p1, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    if-eq p1, v0, :cond_1

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->zab()V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void

    .line 36
    nop

    .line 37
    :array_0
    .array-data 8
        -0x3c23ae5d621677dL
        -0x5b728f62957f7895L
        0x48836f7c173c604eL    # 2.1163371504381857E41
    .end array-data
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget v1, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :array_0
    .array-data 8
        -0x754751379f41e5cbL    # -5.13708992995064E-257
        -0x92e03bfd713f9a0L    # -2.265349426175395E264
        -0x705dbe61bf24bb9dL    # -2.296712491699184E-233
    .end array-data
.end method
