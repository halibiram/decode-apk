.class public final Lcom/google/android/gms/common/ConnectionResult;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "ConnectionResultCreator"
.end annotation


# static fields
.field public static final API_DISABLED:I = 0x17

.field public static final API_DISABLED_FOR_CONNECTION:I = 0x18

.field public static final API_UNAVAILABLE:I = 0x10

.field public static final CANCELED:I = 0xd

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVELOPER_ERROR:I = 0xa

.field public static final DRIVE_EXTERNAL_STORAGE_REQUIRED:I = 0x5dc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INTERNAL_ERROR:I = 0x8

.field public static final INTERRUPTED:I = 0xf

.field public static final INVALID_ACCOUNT:I = 0x5

.field public static final LICENSE_CHECK_FAILED:I = 0xb

.field public static final NETWORK_ERROR:I = 0x7

.field public static final RESOLUTION_ACTIVITY_NOT_FOUND:I = 0x16

.field public static final RESOLUTION_REQUIRED:I = 0x6

.field public static final RESTRICTED_PROFILE:I = 0x14

.field public static final RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation
.end field

.field public static final SERVICE_DISABLED:I = 0x3

.field public static final SERVICE_INVALID:I = 0x9

.field public static final SERVICE_MISSING:I = 0x1

.field public static final SERVICE_MISSING_PERMISSION:I = 0x13

.field public static final SERVICE_UPDATING:I = 0x12

.field public static final SERVICE_VERSION_UPDATE_REQUIRED:I = 0x2

.field public static final SIGN_IN_FAILED:I = 0x11

.field public static final SIGN_IN_REQUIRED:I = 0x4

.field public static final SUCCESS:I = 0x0

.field public static final TIMEOUT:I = 0xe

.field public static final UNKNOWN:I = -0x1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field


# instance fields
.field final zza:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$VersionField;
        id = 0x1
    .end annotation
.end field

.field private final zzb:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getErrorCode"
        id = 0x2
    .end annotation
.end field

.field private final zzc:Landroid/app/PendingIntent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getResolution"
        id = 0x3
    .end annotation
.end field

.field private final zzd:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getErrorMessage"
        id = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    new-instance v0, Lcom/google/android/gms/common/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/common/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p3    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/ConnectionResult;->zza:I

    iput p2, p0, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/common/ConnectionResult;->zzc:Landroid/app/PendingIntent;

    iput-object p4, p0, Lcom/google/android/gms/common/ConnectionResult;->zzd:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;)V
    .locals 1
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 1
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method public static zza(I)Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x5

    .line 4
    const/4 v3, 0x3

    .line 5
    const/16 v4, 0x63

    .line 6
    .line 7
    if-eq p0, v4, :cond_1

    .line 8
    .line 9
    const/16 v4, 0x5dc

    .line 10
    .line 11
    if-eq p0, v4, :cond_0

    .line 12
    .line 13
    packed-switch p0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    packed-switch p0, :pswitch_data_1

    .line 17
    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    new-array v0, v0, [J

    .line 27
    .line 28
    fill-array-data v0, :array_0

    .line 29
    .line 30
    .line 31
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v0, v1, [J

    .line 47
    .line 48
    fill-array-data v0, :array_1

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-static {p0, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :pswitch_0
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v0, v2, [J

    .line 62
    .line 63
    fill-array-data v0, :array_2

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :pswitch_1
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    new-array v0, v3, [J

    .line 77
    .line 78
    fill-array-data v0, :array_3

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0

    .line 89
    :pswitch_2
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 90
    .line 91
    new-array v0, v2, [J

    .line 92
    .line 93
    fill-array-data v0, :array_4

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0

    .line 104
    :pswitch_3
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 105
    .line 106
    new-array v0, v2, [J

    .line 107
    .line 108
    fill-array-data v0, :array_5

    .line 109
    .line 110
    .line 111
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0

    .line 119
    :pswitch_4
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    new-array v0, v0, [J

    .line 122
    .line 123
    fill-array-data v0, :array_6

    .line 124
    .line 125
    .line 126
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    return-object p0

    .line 134
    :pswitch_5
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 135
    .line 136
    new-array v0, v2, [J

    .line 137
    .line 138
    fill-array-data v0, :array_7

    .line 139
    .line 140
    .line 141
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    return-object p0

    .line 149
    :pswitch_6
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 150
    .line 151
    new-array v0, v3, [J

    .line 152
    .line 153
    fill-array-data v0, :array_8

    .line 154
    .line 155
    .line 156
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    return-object p0

    .line 164
    :pswitch_7
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 165
    .line 166
    new-array v0, v3, [J

    .line 167
    .line 168
    fill-array-data v0, :array_9

    .line 169
    .line 170
    .line 171
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    return-object p0

    .line 179
    :pswitch_8
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 180
    .line 181
    new-array v0, v3, [J

    .line 182
    .line 183
    fill-array-data v0, :array_a

    .line 184
    .line 185
    .line 186
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    return-object p0

    .line 194
    :pswitch_9
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 195
    .line 196
    new-array v0, v3, [J

    .line 197
    .line 198
    fill-array-data v0, :array_b

    .line 199
    .line 200
    .line 201
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    return-object p0

    .line 209
    :pswitch_a
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 210
    .line 211
    new-array v0, v1, [J

    .line 212
    .line 213
    fill-array-data v0, :array_c

    .line 214
    .line 215
    .line 216
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    return-object p0

    .line 224
    :pswitch_b
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 225
    .line 226
    new-array v0, v1, [J

    .line 227
    .line 228
    fill-array-data v0, :array_d

    .line 229
    .line 230
    .line 231
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    return-object p0

    .line 239
    :pswitch_c
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 240
    .line 241
    new-array v0, v0, [J

    .line 242
    .line 243
    fill-array-data v0, :array_e

    .line 244
    .line 245
    .line 246
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    return-object p0

    .line 254
    :pswitch_d
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 255
    .line 256
    new-array v0, v3, [J

    .line 257
    .line 258
    fill-array-data v0, :array_f

    .line 259
    .line 260
    .line 261
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    return-object p0

    .line 269
    :pswitch_e
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 270
    .line 271
    new-array v0, v3, [J

    .line 272
    .line 273
    fill-array-data v0, :array_10

    .line 274
    .line 275
    .line 276
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p0

    .line 283
    return-object p0

    .line 284
    :pswitch_f
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 285
    .line 286
    new-array v0, v3, [J

    .line 287
    .line 288
    fill-array-data v0, :array_11

    .line 289
    .line 290
    .line 291
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p0

    .line 298
    return-object p0

    .line 299
    :pswitch_10
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 300
    .line 301
    new-array v0, v3, [J

    .line 302
    .line 303
    fill-array-data v0, :array_12

    .line 304
    .line 305
    .line 306
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p0

    .line 313
    return-object p0

    .line 314
    :pswitch_11
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 315
    .line 316
    new-array v0, v0, [J

    .line 317
    .line 318
    fill-array-data v0, :array_13

    .line 319
    .line 320
    .line 321
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p0

    .line 328
    return-object p0

    .line 329
    :pswitch_12
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 330
    .line 331
    new-array v0, v3, [J

    .line 332
    .line 333
    fill-array-data v0, :array_14

    .line 334
    .line 335
    .line 336
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object p0

    .line 343
    return-object p0

    .line 344
    :pswitch_13
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 345
    .line 346
    new-array v0, v3, [J

    .line 347
    .line 348
    fill-array-data v0, :array_15

    .line 349
    .line 350
    .line 351
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object p0

    .line 358
    return-object p0

    .line 359
    :pswitch_14
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 360
    .line 361
    new-array v0, v3, [J

    .line 362
    .line 363
    fill-array-data v0, :array_16

    .line 364
    .line 365
    .line 366
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object p0

    .line 373
    return-object p0

    .line 374
    :pswitch_15
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 375
    .line 376
    new-array v0, v2, [J

    .line 377
    .line 378
    fill-array-data v0, :array_17

    .line 379
    .line 380
    .line 381
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object p0

    .line 388
    return-object p0

    .line 389
    :pswitch_16
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 390
    .line 391
    new-array v0, v3, [J

    .line 392
    .line 393
    fill-array-data v0, :array_18

    .line 394
    .line 395
    .line 396
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object p0

    .line 403
    return-object p0

    .line 404
    :pswitch_17
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 405
    .line 406
    new-array v0, v1, [J

    .line 407
    .line 408
    fill-array-data v0, :array_19

    .line 409
    .line 410
    .line 411
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object p0

    .line 418
    return-object p0

    .line 419
    :pswitch_18
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 420
    .line 421
    new-array v0, v1, [J

    .line 422
    .line 423
    fill-array-data v0, :array_1a

    .line 424
    .line 425
    .line 426
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object p0

    .line 433
    return-object p0

    .line 434
    :cond_0
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 435
    .line 436
    new-array v0, v2, [J

    .line 437
    .line 438
    fill-array-data v0, :array_1b

    .line 439
    .line 440
    .line 441
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object p0

    .line 448
    return-object p0

    .line 449
    :cond_1
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 450
    .line 451
    new-array v0, v3, [J

    .line 452
    .line 453
    fill-array-data v0, :array_1c

    .line 454
    .line 455
    .line 456
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object p0

    .line 463
    return-object p0

    .line 464
    nop

    .line 465
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

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
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

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
    :array_0
    .array-data 8
        0x4569b658ea066166L    # 2.486740509359955E26
        0x708f121c57999f90L    # 1.543612598504072E234
        -0x68ca125faa97ffe3L    # -7.333754666557567E-197
        -0x37b7be75df787c7cL    # -1.6507787645137264E40
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
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    :array_1
    .array-data 8
        0x14c608f8f6d6aa0L
        -0x6458545aff9ffd67L
    .end array-data

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
    .line 554
    .line 555
    :array_2
    .array-data 8
        -0x2871a8366eacab4fL    # -5.83775341477261E113
        0x7090935be019d90bL    # 1.6469728615369354E234
        -0x3fe45dff77d65713L    # -6.908205153982846
        0x619a4357ab31619L
        0x47d88f01240a557aL    # 1.305759739497204E38
    .end array-data

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
    :array_3
    .array-data 8
        -0x578b1c3218b61d07L    # -8.482760185767544E-114
        0x7454148acc7322cbL    # 2.300304588181593E252
        -0x3ff120bceff8aa61L    # -3.859014630531149
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
    :array_4
    .array-data 8
        -0x7b7e99c1bba0412eL    # -5.713314144616049E-287
        -0x42cfd8984de9267aL    # -5.739027393836806E-14
        0x10652bc08ea01f3fL
        -0x23f5f70eb142eb84L    # -2.3653996008243015E135
        0x3582fb70fe144134L    # 6.3418669057843E-51
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
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    :array_5
    .array-data 8
        -0x5351bcddaf699fdeL    # -1.8134787130920256E-93
        0x98354fc7505e70fL    # 7.67414618900739E-263
        -0x4134de73da0a80e6L    # -3.234272568583454E-6
        0x6554803413ae7cedL    # 1.329193226440957E180
        0x4edde5b948ee736eL    # 8.253759384796815E71
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
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    :array_6
    .array-data 8
        -0x2bfcd91bc950f92cL    # -5.11353154092809E96
        -0x4851cffa783d6282L    # -1.732682368680596E-40
        0x6daafc12c02eb32L
        0x48998354b0a2338bL    # 5.55624177661594E41
    .end array-data

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
    :array_7
    .array-data 8
        0x7e96e70052c0721aL    # 6.135015934489987E301
        0x7e328f5b0bae6db0L    # 7.768430284967853E299
        -0x16508895472995f5L    # -1.2043013710941417E201
        -0x58e758d50b697e23L
        0x68133045cda02a8dL    # 2.1886672216005235E193
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
    :array_8
    .array-data 8
        -0x1ef63fafbdf09ec5L    # -2.8284311465339843E159
        0x3a76ccf79ee84c5aL    # 4.604555283162278E-27
        0x56275723a52dab4L    # 9.93063313433834E-283
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
    :array_9
    .array-data 8
        0x186f0ed004c8ad36L
        0x21d19655e933ff71L    # 8.802783176634594E-146
        -0x520bc18c669a1672L    # -2.544113908456668E-87
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
    :array_a
    .array-data 8
        -0x321f330392779561L    # -1.4154584280451692E67
        -0x589d3223900ab714L    # -5.825662347053858E-119
        0x7a7c1d80ed1e2c16L    # 1.0206994608870916E282
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
    :array_b
    .array-data 8
        0xd2afe28d5b7ee20L
        0x14545e60ca9145feL    # 9.680674035302313E-211
        -0x6a65c5f84d268f8cL
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
    :array_c
    .array-data 8
        0x48be29c07b4f0767L    # 2.627576007027167E42
        -0x6ecf4e9c1b0be045L    # -7.046538779646892E-226
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
    :array_d
    .array-data 8
        0x71096457c080be99L    # 3.229407927626098E236
        0x7850a8b80f8274d4L    # 3.520355808565106E271
    .end array-data

    .line 764
    .line 765
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
    :array_e
    .array-data 8
        -0x14784fa47425369aL    # -9.734907576330031E209
        0x11eb8d36bb484c11L
        0x14bf5a5b4c2722f4L
        0x15bc1990d2c13ea6L    # 5.601536865902194E-204
    .end array-data

    .line 776
    .line 777
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
    .line 794
    .line 795
    :array_f
    .array-data 8
        0x44a192636fe200f2L    # 4.149031001878571E22
        0x7af20c52a2be4aa8L    # 1.6773677050609187E284
        -0x4dbee132b2cde907L    # -1.2700559362632678E-66
    .end array-data

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
    :array_10
    .array-data 8
        0x385978c0f4a48df7L    # 2.994183271948944E-37
        0x2d418c30a2842485L    # 1.0767861559918366E-90
        -0x1398275b9b7f874dL    # -1.6055623692111546E214
    .end array-data

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
    :array_11
    .array-data 8
        0x65c675350a67b8f2L    # 1.86378318310246E182
        0x26229cbfe01434e0L    # 5.49910379649056E-125
        0x559e36301d693028L    # 2.7066573114504388E104
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
    :array_12
    .array-data 8
        0x59c321c37a25adcbL    # 2.5294498827969963E124
        -0x6dbe1903003ca744L    # -9.90517078553359E-221
        0x718b7754abe710f8L    # 8.94260690883375E238
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
    :array_13
    .array-data 8
        0x522d20cb846655cbL    # 7.243041830427023E87
        -0x29b111cf052d82fcL    # -5.675112765680377E107
        0x5284d231f1fb462L
        -0x1fd5af14260c5b76L    # -1.7642059913056743E155
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
    :array_14
    .array-data 8
        0x151c623fd260abdeL    # 5.525522108064829E-207
        -0x1b8ef63cdf858255L    # -6.74247749750637E175
        0x603a80aea804aaeeL    # 3.553426425410727E155
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
    :array_15
    .array-data 8
        -0x37cc90a3333b30f3L    # -6.6133911235453E39
        -0x6fb58265cf1d2ae9L
        0x27e33a6870730918L    # 1.524998183208467E-116
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
    :array_16
    .array-data 8
        -0x1d8548b724e52315L    # -2.4615481441196784E166
        0x36c7aabb971d8be6L    # 8.291106379672813E-45
        0x1d540b320e47d89aL    # 2.124423116543767E-167
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
    :array_17
    .array-data 8
        0x23da1136b638bdf9L    # 5.603727874589776E-136
        0x4760726868a70308L    # 6.831777323889677E35
        0x3f45af114a24841cL    # 6.61738817402949E-4
        -0x30482e4313f0774dL    # -1.0773770446450339E76
        -0x297b7c96a5027b86L    # -6.022052554826634E108
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
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    :array_18
    .array-data 8
        0x48c7fdc8eb681fecL    # 4.179882166324603E42
        -0x54549e02b043477cL    # -2.5038530028656187E-98
        -0x2a0e47d5c05a85efL    # -1.0159851783806237E106
    .end array-data

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
    :array_19
    .array-data 8
        -0x611493b979279d6L    # -2.177817337447477E279
        0x2ccb164d97a8d6f2L    # 6.492832567591982E-93
    .end array-data

    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    :array_1a
    .array-data 8
        0x162295fa0c4c1ea1L    # 4.742368184146047E-202
        0x5505c56f837fb03eL    # 3.8095315800640374E101
    .end array-data

    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    :array_1b
    .array-data 8
        0x69e909de5759c793L    # 1.5332616170863536E202
        0x78d8a7943e092848L    # 1.3337490825406834E274
        -0x16eb8aee4b5200bbL    # -1.5292042923196394E198
        -0x6d32eedaa8a87f9cL    # -4.117115064752511E-218
        -0x783b9de09fe39e7eL
    .end array-data

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
    :array_1c
    .array-data 8
        0x2e3e9f84123716e7L    # 6.1575866064366644E-86
        -0x67f1884963e0dc23L    # -8.347404577032919E-193
        -0x529c28a2dad791e1L    # -4.870131225632823E-90
    .end array-data
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 12
    .line 13
    iget v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    .line 14
    .line 15
    iget v3, p1, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    .line 16
    .line 17
    if-ne v1, v3, :cond_2

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzc:Landroid/app/PendingIntent;

    .line 20
    .line 21
    iget-object v3, p1, Lcom/google/android/gms/common/ConnectionResult;->zzc:Landroid/app/PendingIntent;

    .line 22
    .line 23
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget-object v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzd:Ljava/lang/String;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/google/android/gms/common/ConnectionResult;->zzd:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    return v0

    .line 40
    :cond_2
    return v2
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()Landroid/app/PendingIntent;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzc:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public hasResolution()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzc:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzc:Landroid/app/PendingIntent;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->zzd:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    new-array v3, v3, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    aput-object v0, v3, v4

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    aput-object v1, v3, v0

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    aput-object v2, v3, v0

    .line 22
    .line 23
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method public isSuccess()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public startResolutionForResult(Landroid/app/Activity;I)V
    .locals 8
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzc:Landroid/app/PendingIntent;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v7, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    move-object v1, p1

    .line 22
    move v3, p2

    .line 23
    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    .line 6
    .line 7
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    new-array v4, v3, [J

    .line 11
    .line 12
    fill-array-data v4, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v1}, Lcom/google/android/gms/common/ConnectionResult;->zza(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    .line 27
    .line 28
    .line 29
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    new-array v2, v3, [J

    .line 32
    .line 33
    fill-array-data v2, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->zzc:Landroid/app/PendingIntent;

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    .line 46
    .line 47
    .line 48
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    const/4 v2, 0x2

    .line 51
    new-array v2, v2, [J

    .line 52
    .line 53
    fill-array-data v2, :array_2

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->zzd:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0

    .line 73
    :array_0
    .array-data 8
        0x1420f1c717208e73L
        0x2bcee24e6cc20c26L
        -0x6f74474a58e316baL
    .end array-data

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    :array_1
    .array-data 8
        0xce524b073bb316aL
        0x6ed9736586f8cf49L    # 9.420580310436034E225
        0x2f29b5506a16abf6L    # 1.6938846720407212E-81
    .end array-data

    :array_2
    .array-data 8
        -0x1e6b5d8019bc1a63L    # -1.1604253102067394E162
        0x170c462cfb8d8170L    # 1.182012349246051E-197
    .end array-data
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zza:I

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v2, 0x3

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static {p1, v2, v0, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 26
    .line 27
    .line 28
    const/4 p2, 0x4

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {p1, p2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
