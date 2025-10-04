.class public Lcom/tknetwork/tunnel/view/FileDialog;
.super Landroid/app/ListActivity;
.source "SourceFile"


# static fields
.field public static final CAN_SELECT_DIR:Ljava/lang/String;

.field private static final EXT_STORAGE:Ljava/lang/String;

.field public static final FORMAT_FILTER:Ljava/lang/String;

.field private static final ITEM_IMAGE:Ljava/lang/String;

.field private static final ITEM_KEY:Ljava/lang/String;

.field public static final MODE_CREATE:I = 0x0

.field public static final MODE_OPEN:I = 0x1

.field public static final OPTION_CURRENT_PATH_IN_TITLEBAR:Ljava/lang/String;

.field public static final OPTION_ONE_CLICK_SELECT:Ljava/lang/String;

.field public static final OPTION_PROMPT:Ljava/lang/String;

.field public static final RESULT_PATH:Ljava/lang/String;

.field private static final ROOT:Ljava/lang/String;

.field public static final SELECTION_MODE:Ljava/lang/String;

.field public static final START_PATH:Ljava/lang/String;


# instance fields
.field private canSelectDir:Z

.field private currentPath:Ljava/lang/String;

.field private formatFilter:[Ljava/lang/String;

.field private inputManager:Landroid/view/inputmethod/InputMethodManager;

.field private final lastPositions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private layoutCreate:Landroid/widget/LinearLayout;

.field private layoutSelect:Landroid/widget/LinearLayout;

.field private mFileName:Landroid/widget/EditText;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_bOneClickSelect:Z

.field private m_bTitlebarFolder:Z

.field private myPath:Landroid/widget/TextView;

.field private myPrompt:Landroid/widget/TextView;

.field private parentPath:Ljava/lang/String;

.field private path:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectButton:Landroid/widget/Button;

.field private selectedFile:Ljava/io/File;

.field private selectionMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/tknetwork/tunnel/view/FileDialog;->CAN_SELECT_DIR:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    new-array v2, v1, [J

    .line 21
    .line 22
    fill-array-data v2, :array_1

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lcom/tknetwork/tunnel/view/FileDialog;->FORMAT_FILTER:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    new-array v3, v2, [J

    .line 38
    .line 39
    fill-array-data v3, :array_2

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lcom/tknetwork/tunnel/view/FileDialog;->ITEM_IMAGE:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array v3, v2, [J

    .line 54
    .line 55
    fill-array-data v3, :array_3

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/tknetwork/tunnel/view/FileDialog;->ITEM_KEY:Ljava/lang/String;

    .line 66
    .line 67
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    const/4 v3, 0x5

    .line 70
    new-array v3, v3, [J

    .line 71
    .line 72
    fill-array-data v3, :array_4

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sput-object v0, Lcom/tknetwork/tunnel/view/FileDialog;->OPTION_CURRENT_PATH_IN_TITLEBAR:Ljava/lang/String;

    .line 83
    .line 84
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    const/4 v3, 0x4

    .line 87
    new-array v3, v3, [J

    .line 88
    .line 89
    fill-array-data v3, :array_5

    .line 90
    .line 91
    .line 92
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    sput-object v0, Lcom/tknetwork/tunnel/view/FileDialog;->OPTION_ONE_CLICK_SELECT:Ljava/lang/String;

    .line 100
    .line 101
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 102
    .line 103
    new-array v3, v1, [J

    .line 104
    .line 105
    fill-array-data v3, :array_6

    .line 106
    .line 107
    .line 108
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    sput-object v0, Lcom/tknetwork/tunnel/view/FileDialog;->OPTION_PROMPT:Ljava/lang/String;

    .line 116
    .line 117
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 118
    .line 119
    new-array v3, v1, [J

    .line 120
    .line 121
    fill-array-data v3, :array_7

    .line 122
    .line 123
    .line 124
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    sput-object v0, Lcom/tknetwork/tunnel/view/FileDialog;->RESULT_PATH:Ljava/lang/String;

    .line 132
    .line 133
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 134
    .line 135
    new-array v2, v2, [J

    .line 136
    .line 137
    fill-array-data v2, :array_8

    .line 138
    .line 139
    .line 140
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    sput-object v0, Lcom/tknetwork/tunnel/view/FileDialog;->ROOT:Ljava/lang/String;

    .line 148
    .line 149
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 150
    .line 151
    new-array v2, v1, [J

    .line 152
    .line 153
    fill-array-data v2, :array_9

    .line 154
    .line 155
    .line 156
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    sput-object v0, Lcom/tknetwork/tunnel/view/FileDialog;->SELECTION_MODE:Ljava/lang/String;

    .line 164
    .line 165
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 166
    .line 167
    new-array v1, v1, [J

    .line 168
    .line 169
    fill-array-data v1, :array_a

    .line 170
    .line 171
    .line 172
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    sput-object v0, Lcom/tknetwork/tunnel/view/FileDialog;->START_PATH:Ljava/lang/String;

    .line 180
    .line 181
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    sput-object v0, Lcom/tknetwork/tunnel/view/FileDialog;->EXT_STORAGE:Ljava/lang/String;

    .line 190
    .line 191
    return-void

    .line 192
    nop

    .line 193
    :array_0
    .array-data 8
        0x606d16fb0cd0a652L    # 3.1202402001507163E156
        0x4e92c421fcd1cc45L    # 3.237979077463403E70
        0x68fa4dc4f4694d33L    # 4.9155876499695884E197
    .end array-data

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
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
    :array_1
    .array-data 8
        0x42a141e87d25c306L    # 9.487385531105512E12
        -0x3ed1759b19651feL    # -4.606801826401162E289
        0x5316970ae6ac682fL    # 1.8406665301273102E92
    .end array-data

    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    :array_2
    .array-data 8
        -0x3b9d36939ead5157L    # -2.772443808269006E21
        -0x95b598e2dbc5308L
    .end array-data

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    :array_3
    .array-data 8
        -0x45a19f1d37c6832fL    # -1.5337203063454902E-27
        0x2fae4f47322ae53eL    # 5.112490357765572E-79
    .end array-data

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    :array_4
    .array-data 8
        0x13674e2b1a3ee1e3L
        0x4befd55145a67f91L    # 6.24439634119488E57
        -0x5b22c79060fe6947L
        0x118d51c9dc41da5cL
        0x486366a7c2b00bacL    # 5.2814538315028E40
    .end array-data

    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    :array_5
    .array-data 8
        0x64142727ad9b04dcL    # 1.246109253536515E174
        0x3ca716aed60a45dbL    # 1.6020938247625833E-16
        0x3cc00c68f8e9c08L
        -0x184c06d1d47b0dffL    # -3.5596590761030556E191
    .end array-data

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    :array_6
    .array-data 8
        -0x432fc3689d70b3ffL    # -9.013170738518557E-16
        0x5dddcb53372bc678L    # 1.4532831390804328E144
        -0x3885c6dc4aefc19dL    # -2.178538315062814E36
    .end array-data

    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    :array_7
    .array-data 8
        0x3fc44c5c9e553f75L    # 0.15858037692168706
        -0x6a96d1ffc0151150L
        -0x21e56b2524b98473L    # -2.0745162055989373E145
    .end array-data

    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    :array_8
    .array-data 8
        -0xde106672ac11068L    # -5.163541725463701E241
        -0x63769ec4287b5e48L
    .end array-data

    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    :array_9
    .array-data 8
        -0x7cd32643d7bfd325L    # -2.258645077624384E-293
        -0x4cd952c4638ec795L    # -2.756199093140999E-62
        -0x5b87ea734ea9c50fL    # -5.301682972141221E-133
    .end array-data

    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    :array_a
    .array-data 8
        -0x5eea52b857dae8beL    # -2.648858904152805E-149
        -0x6dedbb5500e805a2L
        0x48740c9336aedc96L    # 1.0915779921776768E41
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/view/FileDialog;->canSelectDir:Z

    .line 6
    .line 7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    new-array v2, v2, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->currentPath:Ljava/lang/String;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->formatFilter:[Ljava/lang/String;

    .line 26
    .line 27
    new-instance v2, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lcom/tknetwork/tunnel/view/FileDialog;->lastPositions:Ljava/util/HashMap;

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/view/FileDialog;->m_bOneClickSelect:Z

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/view/FileDialog;->m_bTitlebarFolder:Z

    .line 37
    .line 38
    iput-object v1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->path:Ljava/util/List;

    .line 39
    .line 40
    iput v0, p0, Lcom/tknetwork/tunnel/view/FileDialog;->selectionMode:I

    .line 41
    .line 42
    return-void

    .line 43
    :array_0
    .array-data 8
        0x478d9c098966117fL    # 4.919725451903414E36
        -0x6e607f42f12ec744L    # -8.510862215364448E-224
    .end array-data
.end method

.method private addItem(Ljava/lang/String;I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    new-array v3, v2, [J

    .line 10
    .line 11
    fill-array-data v3, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    new-array v1, v2, [J

    .line 27
    .line 28
    fill-array-data v1, :array_1

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->mList:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :array_0
    .array-data 8
        0x361f3ccfcfe7cb0L
        0x1303a2ca7fe8dbd7L    # 4.450040870677095E-217
    .end array-data

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
    :array_1
    .array-data 8
        0x739ab325fd366efaL    # 7.46731407745401E248
        0x5fc1779254d25bacL    # 1.829650062519698E153
    .end array-data
.end method

.method private getDir(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->currentPath:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget-object v1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->lastPositions:Ljava/util/HashMap;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/tknetwork/tunnel/view/FileDialog;->parentPath:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/view/FileDialog;->getDirImpl(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method private getDirImpl(Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    const/4 v1, 0x2

    .line 5
    const/4 v8, 0x1

    .line 6
    move-object/from16 v2, p1

    .line 7
    .line 8
    iput-object v2, v6, Lcom/tknetwork/tunnel/view/FileDialog;->currentPath:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v3, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v3, v6, Lcom/tknetwork/tunnel/view/FileDialog;->path:Ljava/util/List;

    .line 21
    .line 22
    new-instance v3, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v3, v6, Lcom/tknetwork/tunnel/view/FileDialog;->mList:Ljava/util/ArrayList;

    .line 28
    .line 29
    new-instance v3, Ljava/io/File;

    .line 30
    .line 31
    iget-object v4, v6, Lcom/tknetwork/tunnel/view/FileDialog;->currentPath:Ljava/lang/String;

    .line 32
    .line 33
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    if-nez v4, :cond_0

    .line 41
    .line 42
    sget-object v3, Lcom/tknetwork/tunnel/view/FileDialog;->EXT_STORAGE:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v3, v6, Lcom/tknetwork/tunnel/view/FileDialog;->currentPath:Ljava/lang/String;

    .line 45
    .line 46
    new-instance v3, Ljava/io/File;

    .line 47
    .line 48
    iget-object v4, v6, Lcom/tknetwork/tunnel/view/FileDialog;->currentPath:Ljava/lang/String;

    .line 49
    .line 50
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    :cond_0
    const v5, 0x7f1300c0

    .line 58
    .line 59
    .line 60
    iget-object v9, v6, Lcom/tknetwork/tunnel/view/FileDialog;->currentPath:Ljava/lang/String;

    .line 61
    .line 62
    invoke-direct {v6, v5, v9}, Lcom/tknetwork/tunnel/view/FileDialog;->showLocation(ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v5, v6, Lcom/tknetwork/tunnel/view/FileDialog;->currentPath:Ljava/lang/String;

    .line 66
    .line 67
    sget-object v9, Lcom/tknetwork/tunnel/view/FileDialog;->EXT_STORAGE:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    const v10, 0x7f0800da

    .line 74
    .line 75
    .line 76
    if-nez v5, :cond_1

    .line 77
    .line 78
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    new-array v11, v0, [J

    .line 81
    .line 82
    fill-array-data v11, :array_0

    .line 83
    .line 84
    .line 85
    invoke-direct {v5, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 96
    .line 97
    new-array v0, v0, [J

    .line 98
    .line 99
    fill-array-data v0, :array_1

    .line 100
    .line 101
    .line 102
    invoke-direct {v5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-direct {v6, v0, v10}, Lcom/tknetwork/tunnel/view/FileDialog;->addItem(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    iget-object v0, v6, Lcom/tknetwork/tunnel/view/FileDialog;->path:Ljava/util/List;

    .line 113
    .line 114
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    :cond_1
    iget-object v0, v6, Lcom/tknetwork/tunnel/view/FileDialog;->currentPath:Ljava/lang/String;

    .line 118
    .line 119
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    new-array v9, v1, [J

    .line 122
    .line 123
    fill-array-data v9, :array_2

    .line 124
    .line 125
    .line 126
    invoke-direct {v5, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_2

    .line 138
    .line 139
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 140
    .line 141
    new-array v5, v1, [J

    .line 142
    .line 143
    fill-array-data v5, :array_3

    .line 144
    .line 145
    .line 146
    invoke-direct {v0, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 157
    .line 158
    new-array v5, v1, [J

    .line 159
    .line 160
    fill-array-data v5, :array_4

    .line 161
    .line 162
    .line 163
    invoke-direct {v0, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-direct {v6, v0, v10}, Lcom/tknetwork/tunnel/view/FileDialog;->addItem(Ljava/lang/String;I)V

    .line 171
    .line 172
    .line 173
    iget-object v0, v6, Lcom/tknetwork/tunnel/view/FileDialog;->path:Ljava/util/List;

    .line 174
    .line 175
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    iput-object v0, v6, Lcom/tknetwork/tunnel/view/FileDialog;->parentPath:Ljava/lang/String;

    .line 187
    .line 188
    :cond_2
    new-instance v9, Ljava/util/TreeMap;

    .line 189
    .line 190
    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    .line 191
    .line 192
    .line 193
    new-instance v0, Ljava/util/TreeMap;

    .line 194
    .line 195
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 196
    .line 197
    .line 198
    new-instance v11, Ljava/util/TreeMap;

    .line 199
    .line 200
    invoke-direct {v11}, Ljava/util/TreeMap;-><init>()V

    .line 201
    .line 202
    .line 203
    new-instance v3, Ljava/util/TreeMap;

    .line 204
    .line 205
    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 206
    .line 207
    .line 208
    array-length v5, v4

    .line 209
    const/4 v12, 0x0

    .line 210
    :goto_0
    if-ge v12, v5, :cond_7

    .line 211
    .line 212
    aget-object v13, v4, v12

    .line 213
    .line 214
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    .line 215
    .line 216
    .line 217
    move-result v14

    .line 218
    if-eqz v14, :cond_3

    .line 219
    .line 220
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v14

    .line 224
    invoke-virtual {v9, v14, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v13

    .line 231
    invoke-virtual {v0, v14, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_3
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v14

    .line 239
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v15

    .line 243
    iget-object v10, v6, Lcom/tknetwork/tunnel/view/FileDialog;->formatFilter:[Ljava/lang/String;

    .line 244
    .line 245
    if-eqz v10, :cond_5

    .line 246
    .line 247
    const/4 v10, 0x0

    .line 248
    :goto_1
    iget-object v1, v6, Lcom/tknetwork/tunnel/view/FileDialog;->formatFilter:[Ljava/lang/String;

    .line 249
    .line 250
    array-length v7, v1

    .line 251
    if-ge v10, v7, :cond_6

    .line 252
    .line 253
    aget-object v1, v1, v10

    .line 254
    .line 255
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {v15, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-eqz v1, :cond_4

    .line 264
    .line 265
    invoke-virtual {v11, v14, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-virtual {v3, v14, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    goto :goto_2

    .line 276
    :cond_4
    add-int/2addr v10, v8

    .line 277
    goto :goto_1

    .line 278
    :cond_5
    invoke-virtual {v11, v14, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-virtual {v3, v14, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    :cond_6
    :goto_2
    add-int/2addr v12, v8

    .line 289
    const/4 v1, 0x2

    .line 290
    const v10, 0x7f0800da

    .line 291
    .line 292
    .line 293
    goto :goto_0

    .line 294
    :cond_7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 295
    .line 296
    new-array v4, v8, [J

    .line 297
    .line 298
    const-wide v12, 0x45e3cc2b018a0561L    # 4.901631315166328E28

    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    const/4 v5, 0x0

    .line 304
    aput-wide v12, v4, v5

    .line 305
    .line 306
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-virtual {v9, v1}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 322
    .line 323
    .line 324
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 325
    .line 326
    new-array v4, v8, [J

    .line 327
    .line 328
    const-wide v12, -0x3b1926c721b781d6L    # -8.631928310363586E23

    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    aput-wide v12, v4, v5

    .line 334
    .line 335
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    invoke-virtual {v11, v1}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 351
    .line 352
    .line 353
    iget-object v1, v6, Lcom/tknetwork/tunnel/view/FileDialog;->path:Ljava/util/List;

    .line 354
    .line 355
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 356
    .line 357
    new-array v4, v8, [J

    .line 358
    .line 359
    const-wide v12, 0x5e71a22072ae9229L    # 8.807480398415886E146

    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    aput-wide v12, v4, v5

    .line 365
    .line 366
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 382
    .line 383
    .line 384
    iget-object v0, v6, Lcom/tknetwork/tunnel/view/FileDialog;->path:Ljava/util/List;

    .line 385
    .line 386
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 387
    .line 388
    new-array v2, v8, [J

    .line 389
    .line 390
    const-wide v12, -0x41e3e0a572792f6aL    # -1.636943516592702E-9

    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    aput-wide v12, v2, v5

    .line 396
    .line 397
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    invoke-virtual {v3, v1}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 413
    .line 414
    .line 415
    new-instance v7, Landroid/widget/SimpleAdapter;

    .line 416
    .line 417
    iget-object v2, v6, Lcom/tknetwork/tunnel/view/FileDialog;->mList:Ljava/util/ArrayList;

    .line 418
    .line 419
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 420
    .line 421
    const/4 v1, 0x2

    .line 422
    new-array v3, v1, [J

    .line 423
    .line 424
    fill-array-data v3, :array_5

    .line 425
    .line 426
    .line 427
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 435
    .line 436
    new-array v1, v1, [J

    .line 437
    .line 438
    fill-array-data v1, :array_6

    .line 439
    .line 440
    .line 441
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v4

    .line 452
    const v0, 0x7f0a01a0

    .line 453
    .line 454
    .line 455
    const v1, 0x7f0a019f

    .line 456
    .line 457
    .line 458
    filled-new-array {v0, v1}, [I

    .line 459
    .line 460
    .line 461
    move-result-object v5

    .line 462
    const v3, 0x7f0d0045

    .line 463
    .line 464
    .line 465
    move-object v0, v7

    .line 466
    move-object/from16 v1, p0

    .line 467
    .line 468
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 469
    .line 470
    .line 471
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 472
    .line 473
    new-array v1, v8, [J

    .line 474
    .line 475
    const-wide v2, -0x2309ef7d1f3a0667L    # -6.568890728800285E139

    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    const/4 v4, 0x0

    .line 481
    aput-wide v2, v1, v4

    .line 482
    .line 483
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    invoke-virtual {v9, v0}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 503
    .line 504
    .line 505
    move-result v1

    .line 506
    if-eqz v1, :cond_8

    .line 507
    .line 508
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    check-cast v1, Ljava/lang/String;

    .line 513
    .line 514
    const v2, 0x7f0800da

    .line 515
    .line 516
    .line 517
    invoke-direct {v6, v1, v2}, Lcom/tknetwork/tunnel/view/FileDialog;->addItem(Ljava/lang/String;I)V

    .line 518
    .line 519
    .line 520
    goto :goto_3

    .line 521
    :cond_8
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 522
    .line 523
    new-array v1, v8, [J

    .line 524
    .line 525
    const-wide v2, 0x5dc2dffbd31112ffL    # 4.603344139846242E143

    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    const/4 v4, 0x0

    .line 531
    aput-wide v2, v1, v4

    .line 532
    .line 533
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    invoke-virtual {v11, v0}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 553
    .line 554
    .line 555
    move-result v1

    .line 556
    if-eqz v1, :cond_9

    .line 557
    .line 558
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v1

    .line 562
    check-cast v1, Ljava/lang/String;

    .line 563
    .line 564
    const v2, 0x7f0800d9

    .line 565
    .line 566
    .line 567
    invoke-direct {v6, v1, v2}, Lcom/tknetwork/tunnel/view/FileDialog;->addItem(Ljava/lang/String;I)V

    .line 568
    .line 569
    .line 570
    goto :goto_4

    .line 571
    :cond_9
    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v6, v7}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 575
    .line 576
    .line 577
    return-void

    .line 578
    nop

    .line 579
    :array_0
    .array-data 8
        0x2b19352641f9ddccL
        -0x4208f683799cbf2eL    # -3.352332911159514E-10
        -0x7de9bebdae386163L
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
    :array_1
    .array-data 8
        -0x1f3bfd6bf6f53d7eL    # -1.3736509091201316E158
        0x159c6f0be8d37ce1L
        -0x48c3ed5cdbdb394eL    # -1.2588279713090802E-42
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
    .line 608
    .line 609
    .line 610
    .line 611
    :array_2
    .array-data 8
        0x635979e855988d54L    # 3.8458490710692036E170
        -0xe25c08d84b263afL    # -2.7347028119066995E240
    .end array-data

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
    .line 622
    .line 623
    :array_3
    .array-data 8
        -0x85ee290cc1b70b8L    # -1.765966662923551E268
        0x74247f28373cbcb2L
    .end array-data

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
    :array_4
    .array-data 8
        0x5ad98ef990564534L    # 4.429079125975276E129
        0x2e9bf844afe8d052L    # 3.599403659909084E-84
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
    :array_5
    .array-data 8
        -0x5025906ed66f7677L    # -3.5672515667387446E-78
        -0x6805f54d945da283L
    .end array-data

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
    :array_6
    .array-data 8
        -0x3a901b057e2d6bdL    # -8.963117283268578E290
        -0x6ef3381acd144a26L
    .end array-data
.end method

.method private setCreateVisible(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/FileDialog;->layoutCreate:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/FileDialog;->layoutSelect:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/FileDialog;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->selectButton:Landroid/widget/Button;

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private setSelectVisible(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/view/FileDialog;->m_bOneClickSelect:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/FileDialog;->layoutCreate:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/FileDialog;->layoutSelect:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/FileDialog;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->selectButton:Landroid/widget/Button;

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method private showLocation(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/view/FileDialog;->m_bTitlebarFolder:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/FileDialog;->myPath:Landroid/widget/TextView;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    new-array v2, v2, [J

    .line 27
    .line 28
    fill-array-data v2, :array_0

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void

    .line 52
    nop

    .line 53
    :array_0
    .array-data 8
        -0x58920674dabf061fL    # -9.286407081374216E-119
        -0x643db64f720b1448L    # -5.776638427418405E-175
    .end array-data
.end method

.method public static bridge synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/view/FileDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/view/FileDialog;->currentPath:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/tknetwork/tunnel/view/FileDialog;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/view/FileDialog;->mFileName:Landroid/widget/EditText;

    return-object p0
.end method

.method public static bridge synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/tknetwork/tunnel/view/FileDialog;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/view/FileDialog;->selectedFile:Ljava/io/File;

    return-object p0
.end method

.method public static bridge synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lcom/tknetwork/tunnel/view/FileDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/view/FileDialog;->setCreateVisible(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 11
    .line 12
    .line 13
    const p1, 0x7f0d0044

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 17
    .line 18
    .line 19
    const p1, 0x7f0a019d

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/widget/TextView;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->myPath:Landroid/widget/TextView;

    .line 29
    .line 30
    const p1, 0x7f0a019e

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/widget/TextView;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->myPrompt:Landroid/widget/TextView;

    .line 40
    .line 41
    const p1, 0x7f0a0199

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Landroid/widget/EditText;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->mFileName:Landroid/widget/EditText;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    const/4 v3, 0x4

    .line 59
    new-array v3, v3, [J

    .line 60
    .line 61
    fill-array-data v3, :array_0

    .line 62
    .line 63
    .line 64
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget-boolean v3, p0, Lcom/tknetwork/tunnel/view/FileDialog;->m_bOneClickSelect:Z

    .line 72
    .line 73
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iput-boolean p1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->m_bOneClickSelect:Z

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    const/4 v3, 0x5

    .line 86
    new-array v3, v3, [J

    .line 87
    .line 88
    fill-array-data v3, :array_1

    .line 89
    .line 90
    .line 91
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    iget-boolean v3, p0, Lcom/tknetwork/tunnel/view/FileDialog;->m_bTitlebarFolder:Z

    .line 99
    .line 100
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    iput-boolean p1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->m_bTitlebarFolder:Z

    .line 105
    .line 106
    const/16 v2, 0x8

    .line 107
    .line 108
    if-eqz p1, :cond_0

    .line 109
    .line 110
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->myPath:Landroid/widget/TextView;

    .line 111
    .line 112
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    new-array v4, v0, [J

    .line 122
    .line 123
    fill-array-data v4, :array_2

    .line 124
    .line 125
    .line 126
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    if-eqz p1, :cond_1

    .line 138
    .line 139
    iget-object v3, p0, Lcom/tknetwork/tunnel/view/FileDialog;->myPrompt:Landroid/widget/TextView;

    .line 140
    .line 141
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->myPrompt:Landroid/widget/TextView;

    .line 145
    .line 146
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_1
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->myPrompt:Landroid/widget/TextView;

    .line 151
    .line 152
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    :goto_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 156
    .line 157
    new-array v3, v0, [J

    .line 158
    .line 159
    fill-array-data v3, :array_3

    .line 160
    .line 161
    .line 162
    invoke-direct {p1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 174
    .line 175
    iput-object p1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 176
    .line 177
    const p1, 0x7f0a0198

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    check-cast p1, Landroid/widget/Button;

    .line 185
    .line 186
    iput-object p1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->selectButton:Landroid/widget/Button;

    .line 187
    .line 188
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 189
    .line 190
    .line 191
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->selectButton:Landroid/widget/Button;

    .line 192
    .line 193
    new-instance v3, Lcom/tknetwork/tunnel/view/FileDialog$1;

    .line 194
    .line 195
    invoke-direct {v3, p0}, Lcom/tknetwork/tunnel/view/FileDialog$1;-><init>(Lcom/tknetwork/tunnel/view/FileDialog;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    .line 200
    .line 201
    const p1, 0x7f0a0197

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    check-cast p1, Landroid/widget/Button;

    .line 209
    .line 210
    new-instance v3, Lcom/tknetwork/tunnel/view/FileDialog$2;

    .line 211
    .line 212
    invoke-direct {v3, p0}, Lcom/tknetwork/tunnel/view/FileDialog$2;-><init>(Lcom/tknetwork/tunnel/view/FileDialog;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 223
    .line 224
    new-array v5, v0, [J

    .line 225
    .line 226
    fill-array-data v5, :array_4

    .line 227
    .line 228
    .line 229
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    iput v3, p0, Lcom/tknetwork/tunnel/view/FileDialog;->selectionMode:I

    .line 241
    .line 242
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 247
    .line 248
    new-array v5, v0, [J

    .line 249
    .line 250
    fill-array-data v5, :array_5

    .line 251
    .line 252
    .line 253
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    iput-object v3, p0, Lcom/tknetwork/tunnel/view/FileDialog;->formatFilter:[Ljava/lang/String;

    .line 265
    .line 266
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 271
    .line 272
    new-array v5, v0, [J

    .line 273
    .line 274
    fill-array-data v5, :array_6

    .line 275
    .line 276
    .line 277
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    iput-boolean v1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->canSelectDir:Z

    .line 289
    .line 290
    iget v1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->selectionMode:I

    .line 291
    .line 292
    const/4 v3, 0x1

    .line 293
    if-ne v1, v3, :cond_2

    .line 294
    .line 295
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 296
    .line 297
    .line 298
    :cond_2
    const p1, 0x7f0a019c

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    check-cast p1, Landroid/widget/LinearLayout;

    .line 306
    .line 307
    iput-object p1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->layoutSelect:Landroid/widget/LinearLayout;

    .line 308
    .line 309
    const p1, 0x7f0a019a

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    check-cast p1, Landroid/widget/LinearLayout;

    .line 317
    .line 318
    iput-object p1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->layoutCreate:Landroid/widget/LinearLayout;

    .line 319
    .line 320
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 321
    .line 322
    .line 323
    iget p1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->selectionMode:I

    .line 324
    .line 325
    if-ne p1, v3, :cond_3

    .line 326
    .line 327
    iget-boolean p1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->m_bOneClickSelect:Z

    .line 328
    .line 329
    if-eqz p1, :cond_3

    .line 330
    .line 331
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->layoutSelect:Landroid/widget/LinearLayout;

    .line 332
    .line 333
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 334
    .line 335
    .line 336
    :cond_3
    const p1, 0x7f0a0195

    .line 337
    .line 338
    .line 339
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    new-instance v1, Lcom/tknetwork/tunnel/view/FileDialog$3;

    .line 344
    .line 345
    invoke-direct {v1, p0}, Lcom/tknetwork/tunnel/view/FileDialog$3;-><init>(Lcom/tknetwork/tunnel/view/FileDialog;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    .line 350
    .line 351
    const p1, 0x7f0a0196

    .line 352
    .line 353
    .line 354
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    new-instance v1, Lcom/tknetwork/tunnel/view/FileDialog$4;

    .line 359
    .line 360
    invoke-direct {v1, p0}, Lcom/tknetwork/tunnel/view/FileDialog$4;-><init>(Lcom/tknetwork/tunnel/view/FileDialog;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 371
    .line 372
    new-array v0, v0, [J

    .line 373
    .line 374
    fill-array-data v0, :array_7

    .line 375
    .line 376
    .line 377
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    if-nez p1, :cond_4

    .line 389
    .line 390
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 391
    .line 392
    const/4 v0, 0x2

    .line 393
    new-array v0, v0, [J

    .line 394
    .line 395
    fill-array-data v0, :array_8

    .line 396
    .line 397
    .line 398
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    :cond_4
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/view/FileDialog;->canSelectDir:Z

    .line 406
    .line 407
    if-eqz v0, :cond_5

    .line 408
    .line 409
    new-instance v0, Ljava/io/File;

    .line 410
    .line 411
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    iput-object v0, p0, Lcom/tknetwork/tunnel/view/FileDialog;->selectedFile:Ljava/io/File;

    .line 415
    .line 416
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/FileDialog;->selectButton:Landroid/widget/Button;

    .line 417
    .line 418
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 419
    .line 420
    .line 421
    :cond_5
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/view/FileDialog;->getDir(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    return-void

    .line 425
    :array_0
    .array-data 8
        0x79db42fbd07d062fL    # 9.665141526222994E278
        0x58de7221e4fc91caL    # 1.228417812529854E120
        -0x4a5f7b0444c67db5L    # -2.207632303155362E-50
        -0xda376b2f894bc9L
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
    .line 442
    .line 443
    .line 444
    .line 445
    :array_1
    .array-data 8
        -0x2ec10ffdecc63abeL    # -2.3477101705063764E83
        0x38751ce0c05cc1d6L    # 9.927192937079283E-37
        -0x4159b6744becb1a5L    # -6.642129407826302E-7
        -0x35234426faba7aadL    # -4.3002334044503605E52
        0x43b1b526823f20f0L    # 1.27596841027613082E18
    .end array-data

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
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    :array_2
    .array-data 8
        0x45aae2bc8c7d7d74L    # 4.1603589435366695E27
        0x2311ec2c70108f1aL    # 9.406366486770504E-140
        -0x410f4c518c8f8fe8L    # -1.592815462113381E-5
    .end array-data

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
    :array_3
    .array-data 8
        -0x712d8b5baa7a23a5L    # -2.834212179672961E-237
        -0x2e01c369a9973b4bL    # -9.39837379361948E86
        -0x663d659f21f54a29L    # -1.36815908939763E-184
    .end array-data

    .line 486
    .line 487
    .line 488
    .line 489
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
    :array_4
    .array-data 8
        0x4cf727c93c13ed5aL    # 5.953490599297631E62
        -0x1dae78e3e13d3f76L    # -4.037424075294975E165
        0x6a3667193ad4f51fL    # 4.3899341548336746E203
    .end array-data

    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
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
    :array_5
    .array-data 8
        -0x2e7306f5e7303c57L    # -7.0355721653446745E84
        0x51eaedd5e0e07ed4L    # 4.1851374066609514E86
        -0x5cdc7e1453fbf379L    # -2.047640370982753E-139
    .end array-data

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
    :array_6
    .array-data 8
        -0x678d6a5a13018845L    # -6.517411055602977E-191
        -0x445bc9aa39b4103L    # -9.99780344675236E287
        -0xb490ec5cc7e9e5bL
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
    :array_7
    .array-data 8
        -0xf0a335a92270ff0L    # -1.3862486725919981E236
        0x103365c97563241fL    # 1.249428612756607E-230
        0x1456133b788bef5aL
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
    :array_8
    .array-data 8
        -0x37472c5aff92a3L
        0x7d5d390471a2978dL    # 7.465458000645125E295
    .end array-data
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/FileDialog;->selectButton:Landroid/widget/Button;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/FileDialog;->layoutCreate:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->layoutCreate:Landroid/widget/LinearLayout;

    .line 24
    .line 25
    const/16 p2, 0x8

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->layoutSelect:Landroid/widget/LinearLayout;

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/FileDialog;->currentPath:Ljava/lang/String;

    .line 37
    .line 38
    sget-object v1, Lcom/tknetwork/tunnel/view/FileDialog;->EXT_STORAGE:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    return p1

    .line 51
    :cond_2
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->parentPath:Ljava/lang/String;

    .line 52
    .line 53
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/view/FileDialog;->getDir(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    const/4 p1, 0x1

    .line 57
    return p1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .line 1
    const/4 p1, 0x2

    .line 2
    new-instance p4, Ljava/io/File;

    .line 3
    .line 4
    iget-object p5, p0, Lcom/tknetwork/tunnel/view/FileDialog;->path:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p5

    .line 10
    check-cast p5, Ljava/lang/String;

    .line 11
    .line 12
    invoke-direct {p4, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p2}, Lcom/tknetwork/tunnel/view/FileDialog;->setSelectVisible(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p4}, Ljava/io/File;->isDirectory()Z

    .line 19
    .line 20
    .line 21
    move-result p5

    .line 22
    const/4 v0, 0x1

    .line 23
    if-eqz p5, :cond_2

    .line 24
    .line 25
    iget-object p5, p0, Lcom/tknetwork/tunnel/view/FileDialog;->selectButton:Landroid/widget/Button;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p5, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p4}, Ljava/io/File;->canRead()Z

    .line 32
    .line 33
    .line 34
    move-result p5

    .line 35
    if-eqz p5, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->lastPositions:Ljava/util/HashMap;

    .line 38
    .line 39
    iget-object p5, p0, Lcom/tknetwork/tunnel/view/FileDialog;->currentPath:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p1, p5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->path:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Ljava/lang/String;

    .line 55
    .line 56
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/view/FileDialog;->getDir(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-boolean p1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->canSelectDir:Z

    .line 60
    .line 61
    if-eqz p1, :cond_0

    .line 62
    .line 63
    iput-object p4, p0, Lcom/tknetwork/tunnel/view/FileDialog;->selectedFile:Ljava/io/File;

    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->selectButton:Landroid/widget/Button;

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 71
    .line 72
    .line 73
    :cond_0
    return-void

    .line 74
    :cond_1
    new-instance p2, Landroid/app/AlertDialog$Builder;

    .line 75
    .line 76
    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    const p3, 0x7f0800d3

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    new-instance p3, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    new-instance p5, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    new-array v0, p1, [J

    .line 94
    .line 95
    fill-array-data v0, :array_0

    .line 96
    .line 97
    .line 98
    invoke-direct {p5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p5

    .line 105
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p4

    .line 112
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 116
    .line 117
    new-array p5, p1, [J

    .line 118
    .line 119
    fill-array-data p5, :array_1

    .line 120
    .line 121
    .line 122
    invoke-direct {p4, p5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p4

    .line 129
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const p4, 0x7f1300bd

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, p4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 136
    .line 137
    .line 138
    move-result-object p4

    .line 139
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p3

    .line 146
    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 151
    .line 152
    new-array p1, p1, [J

    .line 153
    .line 154
    fill-array-data p1, :array_2

    .line 155
    .line 156
    .line 157
    invoke-direct {p3, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    new-instance p3, Lcom/tknetwork/tunnel/view/FileDialog$5;

    .line 165
    .line 166
    invoke-direct {p3, p0}, Lcom/tknetwork/tunnel/view/FileDialog$5;-><init>(Lcom/tknetwork/tunnel/view/FileDialog;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2, p1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :cond_2
    iput-object p4, p0, Lcom/tknetwork/tunnel/view/FileDialog;->selectedFile:Ljava/io/File;

    .line 178
    .line 179
    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 180
    .line 181
    .line 182
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->selectButton:Landroid/widget/Button;

    .line 183
    .line 184
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 185
    .line 186
    .line 187
    const p1, 0x7f1300c3

    .line 188
    .line 189
    .line 190
    invoke-virtual {p4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/tknetwork/tunnel/view/FileDialog;->showLocation(ILjava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget-boolean p1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->m_bOneClickSelect:Z

    .line 198
    .line 199
    if-eqz p1, :cond_3

    .line 200
    .line 201
    iget-object p1, p0, Lcom/tknetwork/tunnel/view/FileDialog;->selectButton:Landroid/widget/Button;

    .line 202
    .line 203
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 204
    .line 205
    .line 206
    :cond_3
    return-void

    .line 207
    :array_0
    .array-data 8
        -0x22839f1f92db186cL    # -2.1628492544613788E142
        -0x26b8028619ff0d0fL    # -1.2389707875377448E122
    .end array-data

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    :array_1
    .array-data 8
        0x5250cf336e9860b7L    # 3.3438778150660245E88
        -0x488ed042aba88560L    # -1.2330696600702415E-41
    .end array-data

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    :array_2
    .array-data 8
        0x10ccd04b4811e67bL    # 9.502361492636354E-228
        -0x1b253febe5ee5084L    # -6.7749520414367125E177
    .end array-data
.end method
