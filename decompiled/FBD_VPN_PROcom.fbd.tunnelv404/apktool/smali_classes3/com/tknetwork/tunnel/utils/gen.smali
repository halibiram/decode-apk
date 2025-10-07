.class public Lcom/tknetwork/tunnel/utils/gen;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/tunnel/utils/gen$OnGenerateListener;,
        Lcom/tknetwork/tunnel/utils/gen$OnCancelListener;,
        Lcom/tknetwork/tunnel/utils/gen$OnNeutralListener;
    }
.end annotation


# static fields
.field private static context:Landroid/content/Context;

.field private static inflater:Landroid/view/LayoutInflater;

.field private static mPref:Landroid/content/SharedPreferences;

.field private static view:Landroid/view/View;


# instance fields
.field private A:Landroid/widget/RadioGroup;

.field private B:Landroid/widget/RadioButton;

.field private C:Landroid/widget/Spinner;

.field private D:Landroid/widget/Spinner;

.field private E:Lcom/google/android/material/textfield/TextInputEditText;

.field private F:Landroid/widget/Spinner;

.field public adb:Landroidx/appcompat/app/AlertDialog$Builder;

.field private cancel:Landroid/content/DialogInterface$OnClickListener;

.field private cancelButtonName:Ljava/lang/CharSequence;

.field private cancelListener:Lcom/tknetwork/tunnel/utils/gen$OnCancelListener;

.field private generate:Landroid/content/DialogInterface$OnClickListener;

.field private generateButtonName:Ljava/lang/CharSequence;

.field private generateListener:Lcom/tknetwork/tunnel/utils/gen$OnGenerateListener;

.field private mIcon:I

.field private neutral:Landroid/content/DialogInterface$OnClickListener;

.field private neutralButtonListener:Lcom/tknetwork/tunnel/utils/gen$OnNeutralListener;

.field private neutralButtonName:Ljava/lang/CharSequence;

.field private o:Landroid/widget/CheckBox;

.field private p:Landroid/widget/CheckBox;

.field private q:Landroid/widget/CheckBox;

.field private r:Landroid/widget/CheckBox;

.field private s:Landroid/widget/CheckBox;

.field private sshView:Landroid/view/View;

.field private t:Landroid/widget/CheckBox;

.field private title:Ljava/lang/String;

.field private u:Landroid/widget/CheckBox;

.field private vj:Landroid/widget/CheckBox;

.field private w:Landroid/widget/CheckBox;

.field private x:Landroid/widget/CheckBox;

.field private y:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/tknetwork/tunnel/utils/gen;->mIcon:I

    .line 6
    .line 7
    new-instance v0, Lcom/tknetwork/tunnel/utils/gen$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/utils/gen$1;-><init>(Lcom/tknetwork/tunnel/utils/gen;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->generate:Landroid/content/DialogInterface$OnClickListener;

    .line 13
    .line 14
    new-instance v0, Lcom/tknetwork/tunnel/utils/gen$2;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/utils/gen$2;-><init>(Lcom/tknetwork/tunnel/utils/gen;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->cancel:Landroid/content/DialogInterface$OnClickListener;

    .line 20
    .line 21
    new-instance v0, Lcom/tknetwork/tunnel/utils/gen$3;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/utils/gen$3;-><init>(Lcom/tknetwork/tunnel/utils/gen;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->neutral:Landroid/content/DialogInterface$OnClickListener;

    .line 27
    .line 28
    sput-object p1, Lcom/tknetwork/tunnel/utils/gen;->context:Landroid/content/Context;

    .line 29
    .line 30
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 31
    .line 32
    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->adb:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 36
    .line 37
    return-void
.end method

.method private generatorView()Landroid/view/View;
    .locals 9

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/utils/gen;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/tknetwork/tunnel/utils/gen;->inflater:Landroid/view/LayoutInflater;

    .line 8
    .line 9
    const v1, 0x7f0d004d

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/tknetwork/tunnel/utils/gen;->view:Landroid/view/View;

    .line 18
    .line 19
    sget-object v0, Lcom/tknetwork/tunnel/utils/gen;->context:Landroid/content/Context;

    .line 20
    .line 21
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 v2, 0x3

    .line 24
    new-array v3, v2, [J

    .line 25
    .line 26
    fill-array-data v3, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/tknetwork/tunnel/utils/gen;->mPref:Landroid/content/SharedPreferences;

    .line 42
    .line 43
    sget-object v0, Lcom/tknetwork/tunnel/utils/gen;->view:Landroid/view/View;

    .line 44
    .line 45
    const v1, 0x7f0a000c

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->sshView:Landroid/view/View;

    .line 53
    .line 54
    sget-object v0, Lcom/tknetwork/tunnel/utils/gen;->view:Landroid/view/View;

    .line 55
    .line 56
    const v1, 0x7f0a0142

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->E:Lcom/google/android/material/textfield/TextInputEditText;

    .line 66
    .line 67
    sget-object v1, Lcom/tknetwork/tunnel/utils/gen;->mPref:Landroid/content/SharedPreferences;

    .line 68
    .line 69
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    const/4 v5, 0x2

    .line 72
    new-array v5, v5, [J

    .line 73
    .line 74
    fill-array-data v5, :array_1

    .line 75
    .line 76
    .line 77
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    const/4 v6, 0x1

    .line 87
    new-array v6, v6, [J

    .line 88
    .line 89
    const-wide v7, -0x5a1e7026350c994eL

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    aput-wide v7, v6, v3

    .line 95
    .line 96
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    sget-object v0, Lcom/tknetwork/tunnel/utils/gen;->view:Landroid/view/View;

    .line 111
    .line 112
    const v1, 0x7f0a0385

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Landroid/widget/Spinner;

    .line 120
    .line 121
    iput-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->C:Landroid/widget/Spinner;

    .line 122
    .line 123
    sget-object v1, Lcom/tknetwork/tunnel/utils/gen;->mPref:Landroid/content/SharedPreferences;

    .line 124
    .line 125
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 126
    .line 127
    new-array v5, v2, [J

    .line 128
    .line 129
    fill-array-data v5, :array_2

    .line 130
    .line 131
    .line 132
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 144
    .line 145
    .line 146
    sget-object v0, Lcom/tknetwork/tunnel/utils/gen;->view:Landroid/view/View;

    .line 147
    .line 148
    const v1, 0x7f0a0384

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Landroid/widget/Spinner;

    .line 156
    .line 157
    iput-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->D:Landroid/widget/Spinner;

    .line 158
    .line 159
    sget-object v1, Lcom/tknetwork/tunnel/utils/gen;->mPref:Landroid/content/SharedPreferences;

    .line 160
    .line 161
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 162
    .line 163
    new-array v5, v2, [J

    .line 164
    .line 165
    fill-array-data v5, :array_3

    .line 166
    .line 167
    .line 168
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 180
    .line 181
    .line 182
    sget-object v0, Lcom/tknetwork/tunnel/utils/gen;->view:Landroid/view/View;

    .line 183
    .line 184
    const v1, 0x7f0a00a9

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    check-cast v0, Landroid/widget/CheckBox;

    .line 192
    .line 193
    iput-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->o:Landroid/widget/CheckBox;

    .line 194
    .line 195
    sget-object v1, Lcom/tknetwork/tunnel/utils/gen;->mPref:Landroid/content/SharedPreferences;

    .line 196
    .line 197
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 198
    .line 199
    new-array v5, v2, [J

    .line 200
    .line 201
    fill-array-data v5, :array_4

    .line 202
    .line 203
    .line 204
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 216
    .line 217
    .line 218
    sget-object v0, Lcom/tknetwork/tunnel/utils/gen;->view:Landroid/view/View;

    .line 219
    .line 220
    const v1, 0x7f0a00a5

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    check-cast v0, Landroid/widget/CheckBox;

    .line 228
    .line 229
    iput-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->p:Landroid/widget/CheckBox;

    .line 230
    .line 231
    sget-object v1, Lcom/tknetwork/tunnel/utils/gen;->mPref:Landroid/content/SharedPreferences;

    .line 232
    .line 233
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 234
    .line 235
    new-array v5, v2, [J

    .line 236
    .line 237
    fill-array-data v5, :array_5

    .line 238
    .line 239
    .line 240
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 252
    .line 253
    .line 254
    sget-object v0, Lcom/tknetwork/tunnel/utils/gen;->view:Landroid/view/View;

    .line 255
    .line 256
    const v1, 0x7f0a00ab

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    check-cast v0, Landroid/widget/CheckBox;

    .line 264
    .line 265
    iput-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->q:Landroid/widget/CheckBox;

    .line 266
    .line 267
    sget-object v1, Lcom/tknetwork/tunnel/utils/gen;->mPref:Landroid/content/SharedPreferences;

    .line 268
    .line 269
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 270
    .line 271
    new-array v5, v2, [J

    .line 272
    .line 273
    fill-array-data v5, :array_6

    .line 274
    .line 275
    .line 276
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 288
    .line 289
    .line 290
    sget-object v0, Lcom/tknetwork/tunnel/utils/gen;->view:Landroid/view/View;

    .line 291
    .line 292
    const v1, 0x7f0a00a8

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    check-cast v0, Landroid/widget/CheckBox;

    .line 300
    .line 301
    iput-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->r:Landroid/widget/CheckBox;

    .line 302
    .line 303
    sget-object v1, Lcom/tknetwork/tunnel/utils/gen;->mPref:Landroid/content/SharedPreferences;

    .line 304
    .line 305
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 306
    .line 307
    new-array v5, v2, [J

    .line 308
    .line 309
    fill-array-data v5, :array_7

    .line 310
    .line 311
    .line 312
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 324
    .line 325
    .line 326
    sget-object v0, Lcom/tknetwork/tunnel/utils/gen;->view:Landroid/view/View;

    .line 327
    .line 328
    const v1, 0x7f0a00a7

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    check-cast v0, Landroid/widget/CheckBox;

    .line 336
    .line 337
    iput-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->s:Landroid/widget/CheckBox;

    .line 338
    .line 339
    sget-object v1, Lcom/tknetwork/tunnel/utils/gen;->mPref:Landroid/content/SharedPreferences;

    .line 340
    .line 341
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 342
    .line 343
    new-array v5, v2, [J

    .line 344
    .line 345
    fill-array-data v5, :array_8

    .line 346
    .line 347
    .line 348
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 360
    .line 361
    .line 362
    sget-object v0, Lcom/tknetwork/tunnel/utils/gen;->view:Landroid/view/View;

    .line 363
    .line 364
    const v1, 0x7f0a00aa

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    check-cast v0, Landroid/widget/CheckBox;

    .line 372
    .line 373
    iput-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->t:Landroid/widget/CheckBox;

    .line 374
    .line 375
    sget-object v1, Lcom/tknetwork/tunnel/utils/gen;->mPref:Landroid/content/SharedPreferences;

    .line 376
    .line 377
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 378
    .line 379
    new-array v5, v2, [J

    .line 380
    .line 381
    fill-array-data v5, :array_9

    .line 382
    .line 383
    .line 384
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v4

    .line 391
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 392
    .line 393
    .line 394
    move-result v1

    .line 395
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 396
    .line 397
    .line 398
    sget-object v0, Lcom/tknetwork/tunnel/utils/gen;->view:Landroid/view/View;

    .line 399
    .line 400
    const v1, 0x7f0a00ad

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    check-cast v0, Landroid/widget/CheckBox;

    .line 408
    .line 409
    iput-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->u:Landroid/widget/CheckBox;

    .line 410
    .line 411
    sget-object v1, Lcom/tknetwork/tunnel/utils/gen;->mPref:Landroid/content/SharedPreferences;

    .line 412
    .line 413
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 414
    .line 415
    new-array v5, v2, [J

    .line 416
    .line 417
    fill-array-data v5, :array_a

    .line 418
    .line 419
    .line 420
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v4

    .line 427
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 432
    .line 433
    .line 434
    sget-object v0, Lcom/tknetwork/tunnel/utils/gen;->view:Landroid/view/View;

    .line 435
    .line 436
    const v1, 0x7f0a0383

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    check-cast v0, Landroid/widget/Spinner;

    .line 444
    .line 445
    iput-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->F:Landroid/widget/Spinner;

    .line 446
    .line 447
    sget-object v1, Lcom/tknetwork/tunnel/utils/gen;->mPref:Landroid/content/SharedPreferences;

    .line 448
    .line 449
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 450
    .line 451
    new-array v5, v2, [J

    .line 452
    .line 453
    fill-array-data v5, :array_b

    .line 454
    .line 455
    .line 456
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v4

    .line 463
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 464
    .line 465
    .line 466
    move-result v1

    .line 467
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 468
    .line 469
    .line 470
    sget-object v0, Lcom/tknetwork/tunnel/utils/gen;->view:Landroid/view/View;

    .line 471
    .line 472
    const v1, 0x7f0a00ac

    .line 473
    .line 474
    .line 475
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    check-cast v0, Landroid/widget/CheckBox;

    .line 480
    .line 481
    iput-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->vj:Landroid/widget/CheckBox;

    .line 482
    .line 483
    sget-object v1, Lcom/tknetwork/tunnel/utils/gen;->mPref:Landroid/content/SharedPreferences;

    .line 484
    .line 485
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 486
    .line 487
    new-array v5, v2, [J

    .line 488
    .line 489
    fill-array-data v5, :array_c

    .line 490
    .line 491
    .line 492
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v4

    .line 499
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 500
    .line 501
    .line 502
    move-result v1

    .line 503
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 504
    .line 505
    .line 506
    sget-object v0, Lcom/tknetwork/tunnel/utils/gen;->view:Landroid/view/View;

    .line 507
    .line 508
    const v1, 0x7f0a00a6

    .line 509
    .line 510
    .line 511
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    check-cast v0, Landroid/widget/CheckBox;

    .line 516
    .line 517
    iput-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->w:Landroid/widget/CheckBox;

    .line 518
    .line 519
    sget-object v1, Lcom/tknetwork/tunnel/utils/gen;->mPref:Landroid/content/SharedPreferences;

    .line 520
    .line 521
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 522
    .line 523
    new-array v5, v2, [J

    .line 524
    .line 525
    fill-array-data v5, :array_d

    .line 526
    .line 527
    .line 528
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v4

    .line 535
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 536
    .line 537
    .line 538
    move-result v1

    .line 539
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 540
    .line 541
    .line 542
    sget-object v0, Lcom/tknetwork/tunnel/utils/gen;->view:Landroid/view/View;

    .line 543
    .line 544
    const v1, 0x7f0a0305

    .line 545
    .line 546
    .line 547
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    check-cast v0, Landroid/widget/RadioGroup;

    .line 552
    .line 553
    iput-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->A:Landroid/widget/RadioGroup;

    .line 554
    .line 555
    sget-object v1, Lcom/tknetwork/tunnel/utils/gen;->view:Landroid/view/View;

    .line 556
    .line 557
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 558
    .line 559
    .line 560
    move-result v0

    .line 561
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    check-cast v0, Landroid/widget/RadioButton;

    .line 566
    .line 567
    iput-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->B:Landroid/widget/RadioButton;

    .line 568
    .line 569
    sget-object v0, Lcom/tknetwork/tunnel/utils/gen;->view:Landroid/view/View;

    .line 570
    .line 571
    const v1, 0x7f0a0324

    .line 572
    .line 573
    .line 574
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    check-cast v0, Landroid/widget/CheckBox;

    .line 579
    .line 580
    iput-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->x:Landroid/widget/CheckBox;

    .line 581
    .line 582
    sget-object v0, Lcom/tknetwork/tunnel/utils/gen;->view:Landroid/view/View;

    .line 583
    .line 584
    const v1, 0x7f0a0389

    .line 585
    .line 586
    .line 587
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    check-cast v0, Landroid/widget/CheckBox;

    .line 592
    .line 593
    iput-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->y:Landroid/widget/CheckBox;

    .line 594
    .line 595
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->F:Landroid/widget/Spinner;

    .line 596
    .line 597
    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 598
    .line 599
    .line 600
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->o:Landroid/widget/CheckBox;

    .line 601
    .line 602
    new-instance v1, Lcom/tknetwork/tunnel/utils/gen$4;

    .line 603
    .line 604
    invoke-direct {v1, p0}, Lcom/tknetwork/tunnel/utils/gen$4;-><init>(Lcom/tknetwork/tunnel/utils/gen;)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 608
    .line 609
    .line 610
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->p:Landroid/widget/CheckBox;

    .line 611
    .line 612
    new-instance v1, Lcom/tknetwork/tunnel/utils/gen$5;

    .line 613
    .line 614
    invoke-direct {v1, p0}, Lcom/tknetwork/tunnel/utils/gen$5;-><init>(Lcom/tknetwork/tunnel/utils/gen;)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 618
    .line 619
    .line 620
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->u:Landroid/widget/CheckBox;

    .line 621
    .line 622
    new-instance v1, Lcom/tknetwork/tunnel/utils/gen$6;

    .line 623
    .line 624
    invoke-direct {v1, p0}, Lcom/tknetwork/tunnel/utils/gen$6;-><init>(Lcom/tknetwork/tunnel/utils/gen;)V

    .line 625
    .line 626
    .line 627
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    .line 629
    .line 630
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->A:Landroid/widget/RadioGroup;

    .line 631
    .line 632
    sget-object v1, Lcom/tknetwork/tunnel/utils/gen;->mPref:Landroid/content/SharedPreferences;

    .line 633
    .line 634
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 635
    .line 636
    new-array v5, v2, [J

    .line 637
    .line 638
    fill-array-data v5, :array_e

    .line 639
    .line 640
    .line 641
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v4

    .line 648
    const v5, 0x7f0a0306

    .line 649
    .line 650
    .line 651
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 652
    .line 653
    .line 654
    move-result v1

    .line 655
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 656
    .line 657
    .line 658
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->A:Landroid/widget/RadioGroup;

    .line 659
    .line 660
    new-instance v1, Lcom/tknetwork/tunnel/utils/gen$7;

    .line 661
    .line 662
    invoke-direct {v1, p0}, Lcom/tknetwork/tunnel/utils/gen$7;-><init>(Lcom/tknetwork/tunnel/utils/gen;)V

    .line 663
    .line 664
    .line 665
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 666
    .line 667
    .line 668
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->x:Landroid/widget/CheckBox;

    .line 669
    .line 670
    sget-object v1, Lcom/tknetwork/tunnel/utils/gen;->mPref:Landroid/content/SharedPreferences;

    .line 671
    .line 672
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 673
    .line 674
    new-array v2, v2, [J

    .line 675
    .line 676
    fill-array-data v2, :array_f

    .line 677
    .line 678
    .line 679
    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 680
    .line 681
    .line 682
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v2

    .line 686
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 687
    .line 688
    .line 689
    move-result v1

    .line 690
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 691
    .line 692
    .line 693
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->x:Landroid/widget/CheckBox;

    .line 694
    .line 695
    new-instance v1, Lcom/tknetwork/tunnel/utils/gen$8;

    .line 696
    .line 697
    invoke-direct {v1, p0}, Lcom/tknetwork/tunnel/utils/gen$8;-><init>(Lcom/tknetwork/tunnel/utils/gen;)V

    .line 698
    .line 699
    .line 700
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 701
    .line 702
    .line 703
    sget-object v0, Lcom/tknetwork/tunnel/utils/gen;->view:Landroid/view/View;

    .line 704
    .line 705
    return-object v0

    .line 706
    nop

    .line 707
    :array_0
    .array-data 8
        -0x3f47fd621a64681aL    # -6146.616784786782
        0xae9bb6b6a7382fbL
        0x75d7e11df623b5d0L    # 4.5894329032035057E259
    .end array-data

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
    .line 720
    .line 721
    .line 722
    .line 723
    :array_1
    .array-data 8
        0x55c8611e911cfcd6L    # 1.7473142956723E105
        0x50a08fd6d1a608acL    # 2.454699158217702E80
    .end array-data

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
    :array_2
    .array-data 8
        0x113ba83a369d35b5L
        0x629ca48f8d5fcb76L    # 1.0556338787766654E167
        -0x4c186ef2059d798cL
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
    :array_3
    .array-data 8
        0x36333448e1f429e6L    # 1.3140072244994871E-47
        0xd6872486b6b93dfL
        0x484eaa2d38754a27L    # 2.086934913075561E40
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
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    :array_4
    .array-data 8
        -0x635eb26ec3cda8f6L
        -0xcf002b625c0fe96L
        -0x368ccb65f1100a8eL    # -6.852742735682693E45
    .end array-data

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
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    :array_5
    .array-data 8
        0x2890725d87f51029L    # 2.67141559671313E-113
        -0x1cf7ef6ae5c2f176L    # -1.1352444634736934E169
        -0x4a74f922b77d761dL    # -9.029539340459329E-51
    .end array-data

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
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    :array_6
    .array-data 8
        -0x23a26e5423e4c1e7L    # -8.596766016995512E136
        0xa537c87d40e7ab2L
        -0xdadb834801833eeL    # -4.875771886306415E242
    .end array-data

    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
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
    :array_7
    .array-data 8
        0x23f4d5a97bae79ccL    # 1.791544040386796E-135
        0x308b9e44b0b14165L    # 7.632503618858613E-75
        0xc4c479ba633097fL
    .end array-data

    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
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
    :array_8
    .array-data 8
        -0x2bdeebecdef0d696L    # -1.82396385328503E97
        -0x2dd212fbc91c44d4L    # -7.441409182311029E87
        -0x3e4413d8de09415bL    # -4.684613459638465E8
    .end array-data

    .line 832
    .line 833
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
    :array_9
    .array-data 8
        0x39fc37f7ad9477f6L    # 2.2260568497336337E-29
        0x1607637a8e497709L
        -0x704698eb4f236afcL    # -6.391496436482412E-233
    .end array-data

    .line 848
    .line 849
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
    .line 862
    .line 863
    :array_a
    .array-data 8
        0x47f8b0f7a56db7d6L    # 5.251254241234422E38
        -0x506bf96c8052c10fL    # -1.68891814759236E-79
        0x7c14e99dcd08e9bdL    # 5.094987598672525E289
    .end array-data

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
    .line 878
    .line 879
    :array_b
    .array-data 8
        -0x51ef96ab43f73909L    # -8.249890611623911E-87
        -0x98f32dae3ad0270L    # -3.306590023288293E262
        -0x2ab1f6c94f222f8L
    .end array-data

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
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    :array_c
    .array-data 8
        0x633a1906f73e3138L    # 9.849197519622181E169
        0x66ca26f433222989L    # 1.4223777516908053E187
        -0x50678270f1c364c4L    # -2.0654665625666817E-79
    .end array-data

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
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    :array_d
    .array-data 8
        0x423f52ac2f8f3c88L    # 1.3453100225523645E11
        0x29fb9c248b28d2f7L
        0x5c1a11713955fe93L    # 4.736832299096147E135
    .end array-data

    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    :array_e
    .array-data 8
        0x4b4a10bdfb3dd197L    # 4.993138445516638E54
        -0x7e16e8406fcda56bL
        0xebf01d996841a08L
    .end array-data

    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    :array_f
    .array-data 8
        0x3f9e306dbb623b0dL    # 0.029481615602487788
        0x51579959302b0614L    # 7.163293204805111E83
        -0x6bc1f67209931d7aL    # -3.568981271295478E-211
    .end array-data
.end method

.method public static bridge synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/RadioGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/utils/gen;->A:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method public static bridge synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/RadioButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/utils/gen;->B:Landroid/widget/RadioButton;

    return-object p0
.end method

.method public static bridge synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/Spinner;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/utils/gen;->C:Landroid/widget/Spinner;

    return-object p0
.end method

.method public static bridge synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/Spinner;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/utils/gen;->D:Landroid/widget/Spinner;

    return-object p0
.end method

.method public static bridge synthetic 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/tknetwork/tunnel/utils/gen;)Lcom/google/android/material/textfield/TextInputEditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/utils/gen;->E:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method public static bridge synthetic 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/Spinner;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/utils/gen;->F:Landroid/widget/Spinner;

    return-object p0
.end method

.method public static bridge synthetic 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Lcom/tknetwork/tunnel/utils/gen;)Lcom/tknetwork/tunnel/utils/gen$OnCancelListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/utils/gen;->cancelListener:Lcom/tknetwork/tunnel/utils/gen$OnCancelListener;

    return-object p0
.end method

.method public static bridge synthetic 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Lcom/tknetwork/tunnel/utils/gen;)Lcom/tknetwork/tunnel/utils/gen$OnGenerateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/utils/gen;->generateListener:Lcom/tknetwork/tunnel/utils/gen$OnGenerateListener;

    return-object p0
.end method

.method public static bridge synthetic 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷(Lcom/tknetwork/tunnel/utils/gen;)Lcom/tknetwork/tunnel/utils/gen$OnNeutralListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/utils/gen;->neutralButtonListener:Lcom/tknetwork/tunnel/utils/gen$OnNeutralListener;

    return-object p0
.end method

.method public static bridge synthetic 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/utils/gen;->o:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static bridge synthetic 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/utils/gen;->p:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static bridge synthetic 뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/utils/gen;->q:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static bridge synthetic 뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/utils/gen;->r:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static bridge synthetic 뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/utils/gen;->s:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static bridge synthetic 뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/utils/gen;->t:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static bridge synthetic 뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/utils/gen;->u:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static bridge synthetic 뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/utils/gen;->vj:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static bridge synthetic 뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/utils/gen;->w:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static bridge synthetic 뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/utils/gen;->x:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static bridge synthetic 뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Lcom/tknetwork/tunnel/utils/gen;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/utils/gen;->y:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static bridge synthetic 뎬뒐듨땧뒾땹됐따딤뎬딎땔딠돵땩딎딟듌됨듟듔둔땐땋땰땜땪디뒹듬땝땵땵땠뒹둡땡땠둠뒝뒻땦땝뒀뎸뒨돝둥뒋딀된됐땲땄듌딟디두딹듽뒐땦둠드뒷땹땝땠듻땻듸둘뎬돵뒾땭딜돠돼땭뒛돠듼뒉둣땁땯딟딞땀땜땄딃됴딞땣듨땁뎨됫돴됨돨땬됫땄뒛뒹땩땫딀땥뒘됩땱땜딄뒹듸뒾땐둠뒈돰딄땋도딽둡듽(Lcom/tknetwork/tunnel/utils/gen;Landroid/widget/RadioButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/utils/gen;->B:Landroid/widget/RadioButton;

    return-void
.end method

.method public static bridge synthetic 뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨()Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/utils/gen;->mPref:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->adb:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setCancelListener(Ljava/lang/CharSequence;Lcom/tknetwork/tunnel/utils/gen$OnCancelListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/utils/gen;->cancelButtonName:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tknetwork/tunnel/utils/gen;->cancelListener:Lcom/tknetwork/tunnel/utils/gen$OnCancelListener;

    .line 4
    .line 5
    return-void
.end method

.method public setDialogIcon(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/utils/gen;->mIcon:I

    .line 2
    .line 3
    return-void
.end method

.method public setDialogTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/utils/gen;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGenerateListener(Ljava/lang/CharSequence;Lcom/tknetwork/tunnel/utils/gen$OnGenerateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/utils/gen;->generateButtonName:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tknetwork/tunnel/utils/gen;->generateListener:Lcom/tknetwork/tunnel/utils/gen$OnGenerateListener;

    .line 4
    .line 5
    return-void
.end method

.method public setNeutralButtonListener(Ljava/lang/CharSequence;Lcom/tknetwork/tunnel/utils/gen$OnNeutralListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/utils/gen;->neutralButtonName:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tknetwork/tunnel/utils/gen;->neutralButtonListener:Lcom/tknetwork/tunnel/utils/gen$OnNeutralListener;

    .line 4
    .line 5
    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->adb:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->adb:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/tknetwork/tunnel/utils/gen;->generatorView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lcom/tknetwork/tunnel/utils/gen;->mIcon:I

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen;->adb:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->title:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen;->adb:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->adb:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/tknetwork/tunnel/utils/gen;->generatorView()Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->generateListener:Lcom/tknetwork/tunnel/utils/gen$OnGenerateListener;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->adb:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen;->generateButtonName:Ljava/lang/CharSequence;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/tknetwork/tunnel/utils/gen;->generate:Landroid/content/DialogInterface$OnClickListener;

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->adb:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 57
    .line 58
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    const/4 v2, 0x2

    .line 61
    new-array v2, v2, [J

    .line 62
    .line 63
    fill-array-data v2, :array_0

    .line 64
    .line 65
    .line 66
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const/4 v2, 0x0

    .line 74
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->neutralButtonListener:Lcom/tknetwork/tunnel/utils/gen$OnNeutralListener;

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->adb:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/gen;->neutralButtonName:Ljava/lang/CharSequence;

    .line 84
    .line 85
    iget-object v2, p0, Lcom/tknetwork/tunnel/utils/gen;->neutral:Landroid/content/DialogInterface$OnClickListener;

    .line 86
    .line 87
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 88
    .line 89
    .line 90
    :cond_3
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/gen;->adb:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    nop

    .line 101
    :array_0
    .array-data 8
        -0x5b23b171b8f90b87L    # -3.987985520893288E-131
        0x1792bb33b5ecd027L    # 4.009311127617001E-195
    .end array-data
.end method
