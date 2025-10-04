.class public abstract Lcom/google/android/gms/common/internal/IGmsServiceBroker$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/IGmsServiceBroker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/IGmsServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    new-array v1, v1, [J

    .line 9
    .line 10
    fill-array-data v1, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    :array_0
    .array-data 8
        -0x386dc9e06ce5e96eL    # -6.051782090950216E36
        0x3b234da556eb0e3L
        0x629e5530a15d5c01L    # 1.1179174476263528E167
        0x1b51b4272d03bbecL    # 4.368850248069096E-177
        0x17e65a72accc8b96L
        -0x1454e0cf93871210L    # -4.458266424106882E210
        0x6687b4f83722f4f9L    # 8.058650817995258E185
        0x3717ab4d8a1123ecL    # 2.6534036974411424E-43
    .end array-data
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p2    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const v1, 0xffffff

    .line 4
    .line 5
    .line 6
    if-le p1, v1, :cond_0

    .line 7
    .line 8
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :cond_0
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    new-array v1, v0, [J

    .line 16
    .line 17
    fill-array-data v1, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {p4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p4

    .line 27
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 31
    .line 32
    .line 33
    move-result-object p4

    .line 34
    const/4 v1, 0x0

    .line 35
    if-nez p4, :cond_1

    .line 36
    .line 37
    move-object v0, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    new-array v0, v0, [J

    .line 42
    .line 43
    fill-array-data v0, :array_1

    .line 44
    .line 45
    .line 46
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {p4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    instance-of v2, v0, Lcom/google/android/gms/common/internal/IGmsCallbacks;

    .line 58
    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    check-cast v0, Lcom/google/android/gms/common/internal/IGmsCallbacks;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    new-instance v0, Lcom/google/android/gms/common/internal/zzab;

    .line 65
    .line 66
    invoke-direct {v0, p4}, Lcom/google/android/gms/common/internal/zzab;-><init>(Landroid/os/IBinder;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    const/16 p4, 0x2e

    .line 70
    .line 71
    const/4 v2, 0x1

    .line 72
    if-ne p1, p4, :cond_4

    .line 73
    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    sget-object p1, Lcom/google/android/gms/common/internal/GetServiceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 81
    .line 82
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    move-object v1, p1

    .line 87
    check-cast v1, Lcom/google/android/gms/common/internal/GetServiceRequest;

    .line 88
    .line 89
    :cond_3
    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/common/internal/IGmsServiceBroker;->getService(Lcom/google/android/gms/common/internal/IGmsCallbacks;Lcom/google/android/gms/common/internal/GetServiceRequest;)V

    .line 90
    .line 91
    .line 92
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    .line 97
    .line 98
    return v2

    .line 99
    :cond_4
    const/16 p3, 0x2f

    .line 100
    .line 101
    if-ne p1, p3, :cond_6

    .line 102
    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_5

    .line 108
    .line 109
    sget-object p1, Lcom/google/android/gms/common/internal/zzak;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 110
    .line 111
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Lcom/google/android/gms/common/internal/zzak;

    .line 116
    .line 117
    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 118
    .line 119
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 120
    .line 121
    .line 122
    throw p1

    .line 123
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 124
    .line 125
    .line 126
    const/4 p3, 0x4

    .line 127
    if-eq p1, p3, :cond_b

    .line 128
    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    if-eq p1, v2, :cond_a

    .line 133
    .line 134
    const/4 p3, 0x2

    .line 135
    if-eq p1, p3, :cond_9

    .line 136
    .line 137
    const/16 p3, 0x17

    .line 138
    .line 139
    if-eq p1, p3, :cond_9

    .line 140
    .line 141
    const/16 p3, 0x19

    .line 142
    .line 143
    if-eq p1, p3, :cond_9

    .line 144
    .line 145
    const/16 p3, 0x1b

    .line 146
    .line 147
    if-eq p1, p3, :cond_9

    .line 148
    .line 149
    const/16 p3, 0x1e

    .line 150
    .line 151
    if-eq p1, p3, :cond_8

    .line 152
    .line 153
    const/16 p3, 0x22

    .line 154
    .line 155
    if-eq p1, p3, :cond_7

    .line 156
    .line 157
    const/16 p3, 0x29

    .line 158
    .line 159
    if-eq p1, p3, :cond_9

    .line 160
    .line 161
    const/16 p3, 0x2b

    .line 162
    .line 163
    if-eq p1, p3, :cond_9

    .line 164
    .line 165
    const/16 p3, 0x25

    .line 166
    .line 167
    if-eq p1, p3, :cond_9

    .line 168
    .line 169
    const/16 p3, 0x26

    .line 170
    .line 171
    if-eq p1, p3, :cond_9

    .line 172
    .line 173
    packed-switch p1, :pswitch_data_0

    .line 174
    .line 175
    .line 176
    goto/16 :goto_1

    .line 177
    .line 178
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-eqz p1, :cond_b

    .line 186
    .line 187
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 188
    .line 189
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    check-cast p1, Landroid/os/Bundle;

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    if-eqz p1, :cond_b

    .line 223
    .line 224
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 225
    .line 226
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    check-cast p1, Landroid/os/Bundle;

    .line 231
    .line 232
    goto :goto_1

    .line 233
    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_8
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    if-eqz p1, :cond_b

    .line 248
    .line 249
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 250
    .line 251
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    check-cast p1, Landroid/os/Bundle;

    .line 256
    .line 257
    goto :goto_1

    .line 258
    :cond_9
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    if-eqz p1, :cond_b

    .line 263
    .line 264
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 265
    .line 266
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    check-cast p1, Landroid/os/Bundle;

    .line 271
    .line 272
    goto :goto_1

    .line 273
    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    if-eqz p1, :cond_b

    .line 287
    .line 288
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 289
    .line 290
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    check-cast p1, Landroid/os/Bundle;

    .line 295
    .line 296
    :cond_b
    :goto_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 297
    .line 298
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 299
    .line 300
    .line 301
    throw p1

    .line 302
    nop

    .line 303
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
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
    .line 338
    .line 339
    :array_0
    .array-data 8
        0x38d867cc56b7af37L    # 7.344251487066827E-35
        -0x15462d247dd94ca1L    # -1.2954327701584466E206
        -0x163e6b143d4a4917L    # -2.691587704407509E201
        0x4b10494ba94bbdfL
        -0x1f872c87a4e49861L    # -5.325807684003903E156
        0x5f6e228f357dd575L    # 4.9321809212187177E151
        -0x6b7ee9361684181dL    # -6.497557763974327E-210
        -0x28a266f7ce284741L    # -7.117992931116206E112
    .end array-data

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
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
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
    :array_1
    .array-data 8
        0x24e0dd6eee47da39L    # 4.752012438587272E-131
        0x794169eca0528527L    # 1.2058096840563616E276
        0x33bd52b606d5c19aL
        -0x1e807affc26827d3L    # -4.43136470171065E161
        -0x3d5fc128c90f5bdaL    # -8.931042359378074E12
        -0x743ce8d17a23baf9L    # -5.20777438558325E-252
        -0x2db3c548e33a1cb6L    # -2.8078229945701176E88
        -0x6e8d57a9daf5cf48L
    .end array-data
.end method
