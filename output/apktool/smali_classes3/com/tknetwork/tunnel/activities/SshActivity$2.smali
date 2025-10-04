.class Lcom/tknetwork/tunnel/activities/SshActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tknetwork/tunnel/activities/SshActivity;->setDnsForwarder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tknetwork/tunnel/activities/SshActivity;

.field final synthetic val$info:Landroidx/appcompat/widget/AppCompatTextView;

.field final synthetic val$primary:Lcom/google/android/material/textfield/TextInputEditText;

.field final synthetic val$secondary:Lcom/google/android/material/textfield/TextInputEditText;


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/activities/SshActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->this$0:Lcom/tknetwork/tunnel/activities/SshActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$primary:Lcom/google/android/material/textfield/TextInputEditText;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$secondary:Lcom/google/android/material/textfield/TextInputEditText;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$info:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    const/4 p1, 0x7

    .line 2
    const/16 p2, 0xc

    .line 3
    .line 4
    const/16 p4, 0xb

    .line 5
    .line 6
    const/16 p5, 0x9

    .line 7
    .line 8
    const/16 v0, 0xa

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    const/4 v2, 0x3

    .line 12
    if-nez p3, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$primary:Lcom/google/android/material/textfield/TextInputEditText;

    .line 15
    .line 16
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    new-array p3, v1, [J

    .line 19
    .line 20
    fill-array-data p3, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$secondary:Lcom/google/android/material/textfield/TextInputEditText;

    .line 34
    .line 35
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array p3, v1, [J

    .line 38
    .line 39
    fill-array-data p3, :array_1

    .line 40
    .line 41
    .line 42
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$info:Landroidx/appcompat/widget/AppCompatTextView;

    .line 53
    .line 54
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array p3, v0, [J

    .line 57
    .line 58
    fill-array-data p3, :array_2

    .line 59
    .line 60
    .line 61
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_0

    .line 72
    .line 73
    :cond_0
    const/4 v3, 0x1

    .line 74
    if-ne p3, v3, :cond_1

    .line 75
    .line 76
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$primary:Lcom/google/android/material/textfield/TextInputEditText;

    .line 77
    .line 78
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    new-array p3, v1, [J

    .line 81
    .line 82
    fill-array-data p3, :array_3

    .line 83
    .line 84
    .line 85
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$secondary:Lcom/google/android/material/textfield/TextInputEditText;

    .line 96
    .line 97
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 98
    .line 99
    new-array p3, v2, [J

    .line 100
    .line 101
    fill-array-data p3, :array_4

    .line 102
    .line 103
    .line 104
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$info:Landroidx/appcompat/widget/AppCompatTextView;

    .line 115
    .line 116
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 117
    .line 118
    new-array p3, v0, [J

    .line 119
    .line 120
    fill-array-data p3, :array_5

    .line 121
    .line 122
    .line 123
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_0

    .line 134
    .line 135
    :cond_1
    if-ne p3, v1, :cond_2

    .line 136
    .line 137
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$primary:Lcom/google/android/material/textfield/TextInputEditText;

    .line 138
    .line 139
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 140
    .line 141
    new-array p3, v2, [J

    .line 142
    .line 143
    fill-array-data p3, :array_6

    .line 144
    .line 145
    .line 146
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$secondary:Lcom/google/android/material/textfield/TextInputEditText;

    .line 157
    .line 158
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 159
    .line 160
    new-array p3, v2, [J

    .line 161
    .line 162
    fill-array-data p3, :array_7

    .line 163
    .line 164
    .line 165
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$info:Landroidx/appcompat/widget/AppCompatTextView;

    .line 176
    .line 177
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 178
    .line 179
    new-array p3, p5, [J

    .line 180
    .line 181
    fill-array-data p3, :array_8

    .line 182
    .line 183
    .line 184
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_2
    if-ne p3, v2, :cond_3

    .line 197
    .line 198
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$primary:Lcom/google/android/material/textfield/TextInputEditText;

    .line 199
    .line 200
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 201
    .line 202
    new-array p3, v1, [J

    .line 203
    .line 204
    fill-array-data p3, :array_9

    .line 205
    .line 206
    .line 207
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    .line 216
    .line 217
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$secondary:Lcom/google/android/material/textfield/TextInputEditText;

    .line 218
    .line 219
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 220
    .line 221
    new-array p3, v1, [J

    .line 222
    .line 223
    fill-array-data p3, :array_a

    .line 224
    .line 225
    .line 226
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    .line 235
    .line 236
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$info:Landroidx/appcompat/widget/AppCompatTextView;

    .line 237
    .line 238
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 239
    .line 240
    new-array p3, p4, [J

    .line 241
    .line 242
    fill-array-data p3, :array_b

    .line 243
    .line 244
    .line 245
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    .line 254
    .line 255
    goto/16 :goto_0

    .line 256
    .line 257
    :cond_3
    const/4 v1, 0x4

    .line 258
    if-ne p3, v1, :cond_4

    .line 259
    .line 260
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$primary:Lcom/google/android/material/textfield/TextInputEditText;

    .line 261
    .line 262
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 263
    .line 264
    new-array p4, v2, [J

    .line 265
    .line 266
    fill-array-data p4, :array_c

    .line 267
    .line 268
    .line 269
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p3

    .line 276
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    .line 278
    .line 279
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$secondary:Lcom/google/android/material/textfield/TextInputEditText;

    .line 280
    .line 281
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 282
    .line 283
    new-array p4, v2, [J

    .line 284
    .line 285
    fill-array-data p4, :array_d

    .line 286
    .line 287
    .line 288
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p3

    .line 295
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    .line 297
    .line 298
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$info:Landroidx/appcompat/widget/AppCompatTextView;

    .line 299
    .line 300
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 301
    .line 302
    new-array p2, p2, [J

    .line 303
    .line 304
    fill-array-data p2, :array_e

    .line 305
    .line 306
    .line 307
    invoke-direct {p3, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object p2

    .line 314
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    .line 316
    .line 317
    goto/16 :goto_0

    .line 318
    .line 319
    :cond_4
    const/4 v1, 0x5

    .line 320
    if-ne p3, v1, :cond_5

    .line 321
    .line 322
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$primary:Lcom/google/android/material/textfield/TextInputEditText;

    .line 323
    .line 324
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 325
    .line 326
    new-array p3, v2, [J

    .line 327
    .line 328
    fill-array-data p3, :array_f

    .line 329
    .line 330
    .line 331
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object p2

    .line 338
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    .line 340
    .line 341
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$secondary:Lcom/google/android/material/textfield/TextInputEditText;

    .line 342
    .line 343
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 344
    .line 345
    new-array p3, v2, [J

    .line 346
    .line 347
    fill-array-data p3, :array_10

    .line 348
    .line 349
    .line 350
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object p2

    .line 357
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    .line 359
    .line 360
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$info:Landroidx/appcompat/widget/AppCompatTextView;

    .line 361
    .line 362
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 363
    .line 364
    new-array p3, p4, [J

    .line 365
    .line 366
    fill-array-data p3, :array_11

    .line 367
    .line 368
    .line 369
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object p2

    .line 376
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    .line 378
    .line 379
    goto/16 :goto_0

    .line 380
    .line 381
    :cond_5
    const/4 v1, 0x6

    .line 382
    if-ne p3, v1, :cond_6

    .line 383
    .line 384
    iget-object p2, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$primary:Lcom/google/android/material/textfield/TextInputEditText;

    .line 385
    .line 386
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 387
    .line 388
    new-array p4, v2, [J

    .line 389
    .line 390
    fill-array-data p4, :array_12

    .line 391
    .line 392
    .line 393
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object p3

    .line 400
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    .line 402
    .line 403
    iget-object p2, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$secondary:Lcom/google/android/material/textfield/TextInputEditText;

    .line 404
    .line 405
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 406
    .line 407
    new-array p4, v2, [J

    .line 408
    .line 409
    fill-array-data p4, :array_13

    .line 410
    .line 411
    .line 412
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object p3

    .line 419
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    .line 421
    .line 422
    iget-object p2, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$info:Landroidx/appcompat/widget/AppCompatTextView;

    .line 423
    .line 424
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 425
    .line 426
    new-array p1, p1, [J

    .line 427
    .line 428
    fill-array-data p1, :array_14

    .line 429
    .line 430
    .line 431
    invoke-direct {p3, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object p1

    .line 438
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    .line 440
    .line 441
    goto/16 :goto_0

    .line 442
    .line 443
    :cond_6
    if-ne p3, p1, :cond_7

    .line 444
    .line 445
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$primary:Lcom/google/android/material/textfield/TextInputEditText;

    .line 446
    .line 447
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 448
    .line 449
    new-array p3, v2, [J

    .line 450
    .line 451
    fill-array-data p3, :array_15

    .line 452
    .line 453
    .line 454
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object p2

    .line 461
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    .line 463
    .line 464
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$secondary:Lcom/google/android/material/textfield/TextInputEditText;

    .line 465
    .line 466
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 467
    .line 468
    new-array p3, v2, [J

    .line 469
    .line 470
    fill-array-data p3, :array_16

    .line 471
    .line 472
    .line 473
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object p2

    .line 480
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    .line 482
    .line 483
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$info:Landroidx/appcompat/widget/AppCompatTextView;

    .line 484
    .line 485
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 486
    .line 487
    new-array p3, p5, [J

    .line 488
    .line 489
    fill-array-data p3, :array_17

    .line 490
    .line 491
    .line 492
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object p2

    .line 499
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    .line 501
    .line 502
    goto/16 :goto_0

    .line 503
    .line 504
    :cond_7
    const/16 p1, 0x8

    .line 505
    .line 506
    if-ne p3, p1, :cond_8

    .line 507
    .line 508
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$primary:Lcom/google/android/material/textfield/TextInputEditText;

    .line 509
    .line 510
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 511
    .line 512
    new-array p3, v2, [J

    .line 513
    .line 514
    fill-array-data p3, :array_18

    .line 515
    .line 516
    .line 517
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object p2

    .line 524
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    .line 526
    .line 527
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$secondary:Lcom/google/android/material/textfield/TextInputEditText;

    .line 528
    .line 529
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 530
    .line 531
    new-array p3, v2, [J

    .line 532
    .line 533
    fill-array-data p3, :array_19

    .line 534
    .line 535
    .line 536
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object p2

    .line 543
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    .line 545
    .line 546
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$info:Landroidx/appcompat/widget/AppCompatTextView;

    .line 547
    .line 548
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 549
    .line 550
    new-array p3, v0, [J

    .line 551
    .line 552
    fill-array-data p3, :array_1a

    .line 553
    .line 554
    .line 555
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object p2

    .line 562
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    .line 564
    .line 565
    goto :goto_0

    .line 566
    :cond_8
    if-ne p3, p5, :cond_9

    .line 567
    .line 568
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$primary:Lcom/google/android/material/textfield/TextInputEditText;

    .line 569
    .line 570
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 571
    .line 572
    new-array p4, v2, [J

    .line 573
    .line 574
    fill-array-data p4, :array_1b

    .line 575
    .line 576
    .line 577
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object p3

    .line 584
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    .line 586
    .line 587
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$secondary:Lcom/google/android/material/textfield/TextInputEditText;

    .line 588
    .line 589
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 590
    .line 591
    new-array p4, v2, [J

    .line 592
    .line 593
    fill-array-data p4, :array_1c

    .line 594
    .line 595
    .line 596
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object p3

    .line 603
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    .line 605
    .line 606
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$info:Landroidx/appcompat/widget/AppCompatTextView;

    .line 607
    .line 608
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 609
    .line 610
    new-array p2, p2, [J

    .line 611
    .line 612
    fill-array-data p2, :array_1d

    .line 613
    .line 614
    .line 615
    invoke-direct {p3, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object p2

    .line 622
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    .line 624
    .line 625
    goto :goto_0

    .line 626
    :cond_9
    if-ne p3, v0, :cond_a

    .line 627
    .line 628
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$primary:Lcom/google/android/material/textfield/TextInputEditText;

    .line 629
    .line 630
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 631
    .line 632
    new-array p3, v2, [J

    .line 633
    .line 634
    fill-array-data p3, :array_1e

    .line 635
    .line 636
    .line 637
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object p2

    .line 644
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    .line 646
    .line 647
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$secondary:Lcom/google/android/material/textfield/TextInputEditText;

    .line 648
    .line 649
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 650
    .line 651
    new-array p3, v2, [J

    .line 652
    .line 653
    fill-array-data p3, :array_1f

    .line 654
    .line 655
    .line 656
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object p2

    .line 663
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    .line 665
    .line 666
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/SshActivity$2;->val$info:Landroidx/appcompat/widget/AppCompatTextView;

    .line 667
    .line 668
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 669
    .line 670
    new-array p3, p4, [J

    .line 671
    .line 672
    fill-array-data p3, :array_20

    .line 673
    .line 674
    .line 675
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object p2

    .line 682
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    .line 684
    .line 685
    :cond_a
    :goto_0
    return-void

    .line 686
    nop

    .line 687
    :array_0
    .array-data 8
        -0x30956550e69d3820L    # -3.7604490628603065E74
        0x29d8f39c3fa39d91L
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
    :array_1
    .array-data 8
        0x3ca6894c8120457bL    # 1.5637715854500757E-16
        0x55e53edb5f075383L    # 6.090825593638074E105
    .end array-data

    .line 700
    .line 701
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
    :array_2
    .array-data 8
        -0x7cc1301e716987a8L    # -4.824414578854715E-293
        0x5e95858758d97c1L
        0x3aae0e603ebe53d4L    # 4.855833906285544E-26
        -0x7f885ac735f8a864L
        -0x7b95c6d15960c8bL
        0x9b243d29249f74dL    # 5.80045198707987E-262
        -0x390272ceb23053f6L    # -9.59002093206212E33
        -0x4257a4572cf27b4eL    # -1.1076756348434188E-11
        0xa6e671be18a340cL
        0x43e4306afeab9385L    # 1.1638242573387835E19
    .end array-data

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
    .line 752
    .line 753
    .line 754
    .line 755
    :array_3
    .array-data 8
        -0x390504e1d6df7156L    # -8.755812044096391E33
        -0x357c8059e35cb87bL    # -9.119128753788748E50
    .end array-data

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
        0x337a359ecf525d39L    # 1.0193864734567383E-60
        -0x5e2ebd3c448f55f5L    # -8.639388539967979E-146
        -0x94ff2138ddf69aeL    # -5.055335746036935E263
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
        -0xe1e7825f88422afL    # -3.652961395608212E240
        -0x4d79f82d38f3a8acL
        -0x1156067cb5afdd98L    # -1.20181229533241E225
        -0x62d008f163d01fddL
        -0x78f79afba1c68e12L    # -8.807398186606634E-275
        0x5a17f86892b6e5d8L    # 1.0141273645950528E126
        0x39eee076366f0539L    # 1.2178751690745875E-29
        -0x44a3ad01b1a632f8L    # -9.371689294061569E-23
        -0x287aea73821d9b88L    # -4.0564394206835676E113
        0x3f44b1a279f88a02L    # 6.315272657427264E-4
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
    :array_6
    .array-data 8
        0x633674a2c8b09232L    # 8.474662416175544E169
        -0x10edf0b278d70783L    # -1.0695697830496225E227
        0x57d89b7b10f64652L    # 1.514966910777408E115
    .end array-data

    .line 828
    .line 829
    .line 830
    .line 831
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
    :array_7
    .array-data 8
        0x6f0074279afcab1dL    # 4.872267240859611E226
        -0x69cdec0cbe572024L    # -9.225536414612777E-202
        -0x30b25a821896b51aL    # -1.0476149477916242E74
    .end array-data

    .line 844
    .line 845
    .line 846
    .line 847
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
    :array_8
    .array-data 8
        0x163640794da6b182L
        0x3790f39406da8becL    # 4.864835447141309E-41
        -0x57b5d30b59eccde7L
        0x3e295ba1345fd958L    # 2.9520514114756574E-9
        0x46e5cb19dcf8f03dL    # 3.536175383452681E33
        -0x395bc9a81d2f6775L    # -2.0497685612347976E32
        0x6736ac4bab18caf7L    # 1.5784355347459132E189
        -0x3441e1677c173eadL    # -7.385283514919736E56
        0x61df76106a92eaaeL    # 2.8308234530816566E163
    .end array-data

    .line 860
    .line 861
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
    :array_9
    .array-data 8
        0x1a15785c5fbaaf2eL    # 5.05286757040266E-183
        0x258315620f73babfL    # 5.506181301814057E-128
    .end array-data

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
    :array_a
    .array-data 8
        0x63578bd2b1e5d88bL    # 3.554496501155152E170
        -0x4bc2d4b619ab1864L    # -4.64690514827882E-57
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
    :array_b
    .array-data 8
        0x624aadde029654cfL    # 3.0726983882349906E165
        -0x2d71df8909772188L    # -4.794484881202654E89
        -0x690030b467a63882L    # -6.649103297252871E-198
        -0x1cecffe00e637d6L    # -7.19397922985421E299
        0x223df73ad2f32e5L
        0x9828d01af0ea3beL    # 7.364047816000919E-263
        -0x7e0f9dc4f6366b7aL    # -2.44645177717475E-299
        -0x15f63d24ac0fe6a8L    # -6.310045637988266E202
        0x165e26d4dc8a09aL
        0x52f10706e94d466bL    # 3.468552662314392E91
        0x2f01b032868b22f3L    # 2.913644589404869E-82
    .end array-data

    .line 924
    .line 925
    .line 926
    .line 927
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
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    :array_c
    .array-data 8
        -0xe5cd900f7207b40L    # -2.4942969986176607E239
        -0x385691ce230dd233L    # -1.69014319461394E37
        -0x3153783e3a27d647L    # -9.845444858547656E70
    .end array-data

    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    :array_d
    .array-data 8
        0x7a69c61045e06dc7L    # 4.678455393886735E281
        0x65b844bb9f66a9b6L    # 1.0070246835182719E182
        -0x56e94c71ec94a769L    # -9.439608661302503E-111
    .end array-data

    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    :array_e
    .array-data 8
        -0x5800a8bbf6c3e53fL
        0x162ffe017529f07L
        0x3a02e75b4098c48eL    # 2.982483682280831E-29
        0x788bbd24adaa8bfdL    # 4.6893689461992987E272
        0x4ad7a9339a3112fL
        0x96f1f10253f9763L
        0x419f9011d2f3e4a2L    # 1.3238386073817685E8
        -0x5858a9fb7281b5c7L
        0x309adc66b841d39fL    # 1.4846440059794496E-74
        -0x317aefea0a1df50bL    # -1.8171293142224025E70
        -0x75876a96097ac53bL    # -3.197790882302062E-258
        0x6399a0b7ca966e24L    # 6.189975741627893E171
    .end array-data

    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    :array_f
    .array-data 8
        -0x183aaadd40015a35L    # -7.603792580608159E191
        0x7a9739a3426401a2L    # 3.372674499075545E282
        0x4f0a164d11fd45afL    # 5.761492489282482E72
    .end array-data

    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    :array_10
    .array-data 8
        0x696436824b39331aL    # 4.834998242674138E199
        -0xe382d4e1e18d415L    # -1.2410334870374759E240
        0x6ad81da14425f291L    # 4.839022833467239E206
    .end array-data

    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    :array_11
    .array-data 8
        -0x51f1c0e2a44c6537L    # -7.602334735823671E-87
        0x36e6dc97301260f9L    # 3.2036039797838335E-44
        -0x62ab1278fcb1f738L    # -2.218129279280862E-167
        -0x69513ab4696ba6d1L    # -2.009972162756419E-199
        0x44d503df1862c173L    # 3.969644483197463E23
        0x577a1cb92bb3064bL    # 2.5118971805185763E113
        -0x6b16d970036654c6L
        0x15675b0b7881faceL
        0x22fe056ce9fd89ecL
        0x28d90e21aa87521L
        -0x1e337d4f07f4d51cL    # -1.2826633946680796E163
    .end array-data

    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    :array_12
    .array-data 8
        0x2609f731918ee975L
        -0xf5d69a543fb4634L    # -3.693715672190286E234
        0x34a4d720ff3ef338L    # 4.249675343532308E-55
    .end array-data

    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    :array_13
    .array-data 8
        -0x52184650f2af58fbL    # -1.490814071887605E-87
        0x726df3fe931954c3L    # 1.5978217982551267E243
        0x51f0808c1769db53L    # 5.129310307408193E86
    .end array-data

    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    :array_14
    .array-data 8
        -0x61539d299841837dL
        -0x415ced1b0367dcf1L    # -5.684437322526835E-7
        0x110929d322f88c9dL
        -0x553a389abc66753eL
        0x52cf900424dc5b7L
        0x1034a150507de3e9L
        0x7b481e6d718475d5L    # 7.173029775452345E285
    .end array-data

    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    :array_15
    .array-data 8
        0x6300b15410577264L    # 7.874697614126672E168
        0xd39e31b4559bd74L
        -0xb7245537e60a67bL
    .end array-data

    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    :array_16
    .array-data 8
        -0x3297126f40c276d5L    # -8.203824201813476E64
        0x785f289c6de8e49cL    # 6.5843749934612415E271
        -0x20c111818ea499cfL    # -6.328204008109298E150
    .end array-data

    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    :array_17
    .array-data 8
        0x325ba6856a9bbd2fL    # 4.1024522213894737E-66
        0xe011dc7fc048733L    # 3.208663715177319E-241
        0x3f60db04123179a3L    # 0.0020575599206004865
        -0x5b985e5b37829d46L
        -0x4ad8b9987e7253a4L    # -1.2150125729753273E-52
        0x30503daa20223d1cL    # 5.610358105267574E-76
        -0x720d6c2a35c7e6c7L
        -0xf0afc5862512340L    # -1.336321812703969E236
        0x1de377fe1f6c0289L
    .end array-data

    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    :array_18
    .array-data 8
        -0x4a7696b5da437bf5L    # -8.489799108499854E-51
        0x2c735686d5c64406L    # 1.4485477370024323E-94
        -0x35084a8a570485ebL    # -1.419284025170137E53
    .end array-data

    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    :array_19
    .array-data 8
        -0x1d9eb0032994b3e6L    # -7.97565214453073E165
        -0x6922114f959828ddL
        -0x7eee419dd87837adL    # -1.617142174969546E-303
    .end array-data

    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    :array_1a
    .array-data 8
        -0x7f8412f9708018a4L    # -2.485485943238455E-306
        -0x21e9f54eac713d5aL
        0x5c4fa2420ab9140bL    # 4.598537106546375E136
        0xc18ce6dae52e456L
        0x46ce42c488f3c215L    # 1.2275243429248865E33
        -0x341c4c81116af663L    # -3.864567433373798E57
        -0x1713fc7bfadf1e30L    # -2.6175691627552687E197
        0x68a66d82d0513558L    # 1.3097651476315765E196
        -0x42d3833d8a36c71cL    # -5.060368519890848E-14
        -0x60d8929835b236e8L
    .end array-data

    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    :array_1b
    .array-data 8
        -0x6c2177d0b131800L    # -1.035492653905417E276
        0x53cdf446f028ee95L    # 4.9985780266803176E95
        0x71c01aa5bca058ebL    # 8.389243294663275E239
    .end array-data

    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    :array_1c
    .array-data 8
        0x53cd2318b4ee1c70L    # 4.862223341887619E95
        -0x4332427b08c696c6L    # -8.254594270859661E-16
        0x3f9bbe0978c721f3L    # 0.02709212112111632
    .end array-data

    :array_1d
    .array-data 8
        0x149adf1f04c3a394L
        -0x410a4314a35aa105L    # -2.0730940187035033E-5
        -0x15b18599c1b9d202L    # -1.1944701294882359E204
        0xc4841defd56c97aL
        -0x5c51776ddb8b0aa9L    # -8.204805419145874E-137
        -0x7a6f3a31c3d85e24L    # -7.218824447976616E-282
        -0x3dce0637fa00a393L    # -7.720507955136104E10
        -0x5abcdb52fbea9184L    # -3.452135870079983E-129
        0x43f996fee58d5817L    # 2.950306174923397E19
        -0x12218cf6578c2d6cL    # -1.719788699114113E221
        0xf5df7238af8ab5dL
        -0x20b209a118a24617L    # -1.2259823958470088E151
    .end array-data

    :array_1e
    .array-data 8
        0x415788890ae698e9L    # 6169124.170324543
        -0x67a91e166461fe25L
        -0x213d524240f477deL    # -2.9854787295484E148
    .end array-data

    :array_1f
    .array-data 8
        -0x54d13a53e2c5457cL
        -0x3c307f4e698f3ad4L    # -4.5400189437798216E18
        -0x33106fe598e9b74aL    # -4.0575703531077496E62
    .end array-data

    :array_20
    .array-data 8
        -0x4224734b9f66e2e3L    # -1.0022496040520024E-10
        0x22eb7b0721cf393dL
        0x5b8d91b99e965a47L    # 1.0494173655664962E133
        -0x6457cdda6ab3e186L
        -0x6373c32821398db3L
        0x500817bacd02bbd3L    # 3.487179232123442E77
        -0x637e4b8f113fc1d4L
        -0x9a2e437c4326c1aL
        0x2575ac899161fbc8L
        0x3be83a41ccbf2224L    # 4.1043094157175045E-20
        0x2115a05b8634f774L    # 2.642690609179569E-149
    .end array-data
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
