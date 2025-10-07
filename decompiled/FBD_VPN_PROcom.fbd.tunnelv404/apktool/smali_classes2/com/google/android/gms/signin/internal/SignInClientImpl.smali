.class public Lcom/google/android/gms/signin/internal/SignInClientImpl;
.super Lcom/google/android/gms/common/internal/GmsClient;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/signin/zae;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/GmsClient<",
        "Lcom/google/android/gms/signin/internal/zaf;",
        ">;",
        "Lcom/google/android/gms/signin/zae;"
    }
.end annotation


# static fields
.field public static final synthetic zaa:I


# instance fields
.field private final zab:Z

.field private final zac:Lcom/google/android/gms/common/internal/ClientSettings;

.field private final zad:Landroid/os/Bundle;

.field private final zae:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/ClientSettings;Landroid/os/Bundle;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/common/internal/ClientSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/16 v3, 0x2c

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p6

    .line 8
    move-object v6, p7

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zab:Z

    .line 14
    .line 15
    iput-object p4, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zac:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 16
    .line 17
    iput-object p5, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zad:Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-virtual {p4}, Lcom/google/android/gms/common/internal/ClientSettings;->zab()Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zae:Ljava/lang/Integer;

    .line 24
    .line 25
    return-void
.end method

.method public static createBundleFromClientSettings(Lcom/google/android/gms/common/internal/ClientSettings;)Landroid/os/Bundle;
    .locals 8
    .param p0    # Lcom/google/android/gms/common/internal/ClientSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ClientSettings;->zaa()Lcom/google/android/gms/signin/SignInOptions;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ClientSettings;->zab()Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    new-instance v4, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/16 v6, 0x9

    .line 20
    .line 21
    new-array v7, v6, [J

    .line 22
    .line 23
    fill-array-data v7, :array_0

    .line 24
    .line 25
    .line 26
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ClientSettings;->getAccount()Landroid/accounts/Account;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {v4, v5, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 38
    .line 39
    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    new-array v5, v6, [J

    .line 45
    .line 46
    fill-array-data v5, :array_1

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-virtual {v4, p0, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    :cond_0
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    new-array v3, v6, [J

    .line 66
    .line 67
    fill-array-data v3, :array_2

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {v4, p0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    .line 79
    .line 80
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    new-array v3, v1, [J

    .line 83
    .line 84
    fill-array-data v3, :array_3

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {v4, p0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    .line 96
    .line 97
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 98
    .line 99
    new-array v3, v1, [J

    .line 100
    .line 101
    fill-array-data v3, :array_4

    .line 102
    .line 103
    .line 104
    invoke-direct {p0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {v4, p0, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 115
    .line 116
    new-array v3, v6, [J

    .line 117
    .line 118
    fill-array-data v3, :array_5

    .line 119
    .line 120
    .line 121
    invoke-direct {p0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    const/4 v3, 0x1

    .line 129
    invoke-virtual {v4, p0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    .line 131
    .line 132
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 133
    .line 134
    new-array v3, v6, [J

    .line 135
    .line 136
    fill-array-data v3, :array_6

    .line 137
    .line 138
    .line 139
    invoke-direct {p0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-virtual {v4, p0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 147
    .line 148
    .line 149
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 150
    .line 151
    new-array v3, v1, [J

    .line 152
    .line 153
    fill-array-data v3, :array_7

    .line 154
    .line 155
    .line 156
    invoke-direct {p0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-virtual {v4, p0, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 167
    .line 168
    new-array v1, v1, [J

    .line 169
    .line 170
    fill-array-data v1, :array_8

    .line 171
    .line 172
    .line 173
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-virtual {v4, p0, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 184
    .line 185
    new-array v0, v6, [J

    .line 186
    .line 187
    fill-array-data v0, :array_9

    .line 188
    .line 189
    .line 190
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-virtual {v4, p0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 198
    .line 199
    .line 200
    return-object v4

    .line 201
    :array_0
    .array-data 8
        0xb486d05b84a8ceaL
        -0x5343ef9cf90e9da5L    # -3.3634973920114994E-93
        0x3aa441a2d94d73e1L    # 3.27259648823746E-26
        0x3d082ae5275a5e2bL    # 1.0732552228417119E-14
        -0x38f7d38d3229822eL    # -1.568958079270681E34
        0x4a25c13eaa4d8e0aL    # 1.5897383542199712E49
        -0x20826f146bd9ad42L    # -9.678137652586084E151
        0x132141f7f6dd36c4L    # 1.564428744048556E-216
        -0x5cecad844a1904e0L    # -1.01409489757556E-139
    .end array-data

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
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
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    :array_1
    .array-data 8
        0x41f4c093599b065aL    # 5.570639257689051E9
        0x12bda94807aefcd8L
        -0x7c20db4efb1f93f1L
        -0x11cc77778767b363L    # -7.060787623758162E222
        0x4bb638da663fad2cL    # 5.448838776978949E56
        0xc0f01bc4c392239L
        -0x2ac8a33a4ae3649bL    # -3.2703621341386394E102
        0x592ac7f710d1a25L
        -0x25ceae0a5bc86c92L    # -2.9310954173109333E126
    .end array-data

    :array_2
    .array-data 8
        -0x3012db2f426beb63L    # -1.0545695822009199E77
        -0x23868a9ba64664dbL    # -2.9606830517016017E137
        -0x32c96ba09d84d8a1L    # -9.288700635230624E63
        0x6dbcfb4f573f8a9eL    # 4.0922333578768184E220
        0x78ab25a22e8c05acL    # 1.8357266917330271E273
        -0x1508100472897a6cL
        0x38a131119d3f1b8aL    # 6.466789398264554E-36
        -0x16d7ec3da914112cL    # -3.599588486679781E198
        0x1fd232a1acb4e939L
    .end array-data

    :array_3
    .array-data 8
        0x4d88245b1fef18b8L    # 3.178063716095094E65
        -0x6606f89a9167aa3aL
        0x124374e031e1f559L
        0x39446b81fc15532dL    # 7.865479465242586E-33
        -0x4980b28afa0559b9L    # -3.4268936644498736E-46
        0x7376061afe32e22fL    # 1.5398899079764202E248
        0x44fc70109c5f452fL    # 2.148695900687316E24
        0x3c61c5f3dd247e67L    # 7.707919509631461E-18
    .end array-data

    :array_4
    .array-data 8
        0x1aaf4c400fd19f73L    # 3.77126582438832E-180
        -0x5d906d3c1094c0c4L    # -8.091183956799273E-143
        -0x2c57ad3b24397161L    # -1.0147321940438288E95
        -0x5e3a53c418599056L    # -5.423840579310836E-146
        -0x67dfe0db77aa1782L
        0x6d1b872364a3b72bL    # 3.795855865351841E217
        0x7e5afaea7911e5faL    # 4.5171019571218944E300
        -0x2126e988aade868L
    .end array-data

    :array_5
    .array-data 8
        0x1aacc7c22fa282b7L    # 3.467911653371036E-180
        0x7d855e931853d866L    # 4.367357313182224E296
        0x79c8bc1bd7aa59b2L    # 4.384644698240422E278
        0xa52fd6a944e86f5L
        -0x10b971ba6a39914eL    # -1.0686709243286994E228
        0x3996f33659b2d9a8L    # 2.828811827532146E-31
        0x5558e5c546624ef6L    # 1.3941034375878762E103
        0x6b3147ce97e48336L    # 2.2191835450707306E208
        -0x1339ea49efa22df1L    # -9.516572541743599E215
    .end array-data

    :array_6
    .array-data 8
        -0x1491cb73a29739a7L    # -3.1031993808693205E209
        0x3a1b134708163d42L    # 8.543459089172967E-29
        0x39117b060ebf8902L    # 8.416584056177867E-34
        0x24daf08fbe1f8ca8L    # 3.795373726948301E-131
        -0x1d9d08a8194da4b2L    # -8.737508494841655E165
        0x903eb6266b33d3fL
        0x2e2ced5b98fc09d8L    # 2.9082874879545565E-86
        0x32be6180a0a24dd0L    # 2.8848359928533617E-64
        -0x247f8c05b6e541d2L    # -5.83921143003202E132
    .end array-data

    :array_7
    .array-data 8
        0x7c85e116412f9719L    # 6.823043869878462E291
        0x15d8a2727b77b626L
        0x466c9a8fe58e67a5L    # 1.8129785618823393E31
        0x24b3b0458e19fff1L    # 6.934511785172669E-132
        -0x11b9f52081432a92L    # -1.5935552197196614E223
        -0x6c4ee275a04571f5L    # -7.943830238384772E-214
        0x2cbf459260d668b6L    # 3.7479496155612196E-93
        0x7560f88316054b27L    # 2.548163856566186E257
    .end array-data

    :array_8
    .array-data 8
        0x29671dffd0d542L
        0xd804296918fa21dL
        0x1947f98db75ec1baL    # 6.887601825307665E-187
        -0x42223d8db4fb2057L    # -1.0826463575880998E-10
        0x50b05876bc5ee09bL    # 4.845278071071315E80
        -0x9f77d681cda84b1L
        0x4608133e06232d29L    # 2.3842888723910685E29
        0x128024609008be23L
    .end array-data

    :array_9
    .array-data 8
        0x76c8dcfacdf7a0e9L    # 1.5658251797340813E264
        -0x70358d3ffe7f2c03L
        -0x36ac762a6532c8fdL    # -1.7428849114221405E45
        0x84a681feb952dfaL
        0x1e6164cd2a38bf97L    # 2.416382648499347E-162
        -0x3078a104c64dec75L    # -1.3213766294134909E75
        -0x4eeb5dfadb773ed9L    # -2.919450611043852E-72
        0x2445a206b2f225d6L    # 5.952603788331569E-134
        0x3c72df2ac8a78425L    # 1.6368630911701017E-17
    .end array-data
.end method


# virtual methods
.method public final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2
    .param p1    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
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
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v1, v0, Lcom/google/android/gms/signin/internal/zaf;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    move-object p1, v0

    .line 30
    check-cast p1, Lcom/google/android/gms/signin/internal/zaf;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/google/android/gms/signin/internal/zaf;

    .line 34
    .line 35
    invoke-direct {v0, p1}, Lcom/google/android/gms/signin/internal/zaf;-><init>(Landroid/os/IBinder;)V

    .line 36
    .line 37
    .line 38
    move-object p1, v0

    .line 39
    :goto_0
    return-object p1

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        0x52e2e509aece2b46L    # 1.9244570440426824E91
        0x258d1fae2c0675f4L    # 8.403092936792199E-128
        0x6dd960c2515275f7L    # 1.4333545510234783E221
        0x601934c630909132L    # 8.448980156361394E154
        0x1abb50a083e9d5d5L    # 6.58268388574056E-180
        -0x5205549e0b0c5c73L    # -3.35162595223378E-87
        -0x1eea6ea1b567060cL    # -4.737884545431852E159
        -0x59c1a58e0852b40dL
    .end array-data
.end method

.method public final getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zac:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ClientSettings;->getRealClientPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zad:Landroid/os/Bundle;

    .line 22
    .line 23
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/16 v2, 0x9

    .line 26
    .line 27
    new-array v2, v2, [J

    .line 28
    .line 29
    fill-array-data v2, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zac:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/ClientSettings;->getRealClientPackageName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zad:Landroid/os/Bundle;

    .line 49
    .line 50
    return-object v0

    .line 51
    :array_0
    .array-data 8
        -0x5d9bfd14b6b4d094L    # -5.128254851159892E-143
        -0x4f48eb6be8fbfaa6L    # -5.1027479641395585E-74
        -0x528c014c30595640L    # -9.815698609401838E-90
        0x68d0790d9111946aL    # 7.696021548096939E196
        -0x621c026fba9d2bafL
        0x810b5659d13e377L
        0x7a8f7db9f69775ecL    # 2.286514949128271E282
        0x3a3d3b6519c5ce37L    # 3.689598558921981E-28
        0x4fec93406e9df6efL    # 1.0339944778279857E77
    .end array-data
.end method

.method public final getMinApkVersion()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method public final getServiceDescriptor()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0x8

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 8
        -0x6765438413fce01cL
        -0xa5bb23286002f27L
        -0x245e6cce3950ef4aL    # -2.494956013198282E133
        -0x1c78cfd1cda4843eL    # -2.800365248437189E171
        0x1f74114837bb6e3aL    # 3.654060395919546E-157
        0xd3812175611704cL
        0x5a137d5eeb8dbbdbL    # 8.245633339480949E125
        0x384b3ebe37379b63L    # 1.6013224668473343E-37
    .end array-data
.end method

.method public final getStartServiceAction()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x7

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 8
        0x7a6a1a8b11c4b960L    # 4.738356966651992E281
        0x14bd30f6c5ee8730L    # 8.879242972005587E-209
        0x2ec6604f788cf498L
        -0x1240faa8b197b0f6L    # -4.380167568018366E220
        -0x7617587fdac24330L    # -6.263634800110283E-261
        0x73baf5ae0e799938L    # 3.015999569273419E249
        -0x27555ccab6aa0d12L    # -1.3434524089561392E119
    .end array-data
.end method

.method public final requiresSignIn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zab:Z

    return v0
.end method

.method public final zaa()V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/gms/signin/internal/zaf;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zae:Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/gms/signin/internal/zaf;->zae(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catch_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 v1, 0x3

    .line 26
    new-array v1, v1, [J

    .line 27
    .line 28
    fill-array-data v1, :array_0

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    const/16 v1, 0xa

    .line 40
    .line 41
    new-array v1, v1, [J

    .line 42
    .line 43
    fill-array-data v1, :array_1

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :array_0
    .array-data 8
        -0x5e06103b618fd41cL
        0x2f8fc5f14c1cf2b6L    # 1.3398380094838367E-79
        0x268951ab49269469L    # 4.787608965505945E-123
    .end array-data

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
    .line 66
    .line 67
    .line 68
    .line 69
    :array_1
    .array-data 8
        0x1eeaafd3d8f57158L    # 9.49094025979726E-160
        -0x60846b11f04296daL    # -5.022318008394584E-157
        0x76e0205f097e88d5L    # 4.062421522776268E264
        -0x7223e527a14e0382L    # -6.585746103098317E-242
        -0x7b1b7dbb00052ee2L    # -4.30998490129663E-285
        0x2edee2863e753421L    # 6.35926400512358E-83
        -0x57836cea2b24b7a8L
        -0x170e4ed751e2e6d1L    # -3.306242969581443E197
        -0x5a0b5d777156d923L    # -7.620862215259748E-126
        -0x1917a0991bb00011L    # -5.3023734605466076E187
    .end array-data
.end method

.method public final zab()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->connect(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final zac(Lcom/google/android/gms/common/internal/IAccountAccessor;Z)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/internal/IAccountAccessor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/gms/signin/internal/zaf;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zae:Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/gms/signin/internal/zaf;->zaf(Lcom/google/android/gms/common/internal/IAccountAccessor;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 p2, 0x3

    .line 26
    new-array p2, p2, [J

    .line 27
    .line 28
    fill-array-data p2, :array_0

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    const/16 p2, 0x9

    .line 40
    .line 41
    new-array p2, p2, [J

    .line 42
    .line 43
    fill-array-data p2, :array_1

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :array_0
    .array-data 8
        -0x335f695850d852baL    # -1.3328342786525945E61
        -0x2c6a3f0c1d510b34L    # -4.537662781962769E94
        -0x23158ff26006c11cL    # -3.9354265360220976E139
    .end array-data

    .line 54
    .line 55
    :array_1
    .array-data 8
        0x25f64f21e73ec47cL    # 8.239181820873114E-126
        0x1cd6ebca93525e40L    # 9.48980194186051E-170
        0x1edd9cfc7cd2752cL
        -0x16c7424e1847b051L    # -7.3976594081491E198
        -0x19de38a7f30421d6L    # -9.442936286023883E183
        -0x5a52d7094391a6f3L
        0x59d0603c1ef5e3e7L    # 4.330159169464662E124
        0x1c1b6f61af445a17L
        -0x67721ee7e81aeac9L    # -2.095669498979974E-190
    .end array-data
.end method

.method public final zad(Lcom/google/android/gms/signin/internal/zae;)V
    .locals 8

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v3, 0x6

    .line 7
    new-array v3, v3, [J

    .line 8
    .line 9
    fill-array-data v3, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    const/4 v3, 0x0

    .line 24
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zac:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 25
    .line 26
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/ClientSettings;->getAccountOrDefault()Landroid/accounts/Account;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    const/4 v6, 0x4

    .line 33
    new-array v6, v6, [J

    .line 34
    .line 35
    fill-array-data v6, :array_1

    .line 36
    .line 37
    .line 38
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    iget-object v6, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_0

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-static {v5}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/Storage;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v5}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->getSavedDefaultGoogleSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception v4

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    move-object v5, v3

    .line 69
    :goto_0
    new-instance v6, Lcom/google/android/gms/common/internal/zat;

    .line 70
    .line 71
    iget-object v7, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zae:Ljava/lang/Integer;

    .line 72
    .line 73
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    check-cast v7, Ljava/lang/Integer;

    .line 78
    .line 79
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    invoke-direct {v6, v4, v7, v5}, Lcom/google/android/gms/common/internal/zat;-><init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Lcom/google/android/gms/signin/internal/zaf;

    .line 91
    .line 92
    new-instance v5, Lcom/google/android/gms/signin/internal/zai;

    .line 93
    .line 94
    invoke-direct {v5, v2, v6}, Lcom/google/android/gms/signin/internal/zai;-><init>(ILcom/google/android/gms/common/internal/zat;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v5, p1}, Lcom/google/android/gms/signin/internal/zaf;->zag(Lcom/google/android/gms/signin/internal/zai;Lcom/google/android/gms/signin/internal/zae;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :goto_1
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 102
    .line 103
    new-array v6, v1, [J

    .line 104
    .line 105
    fill-array-data v6, :array_2

    .line 106
    .line 107
    .line 108
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 115
    .line 116
    new-array v6, v0, [J

    .line 117
    .line 118
    fill-array-data v6, :array_3

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
    :try_start_1
    new-instance v5, Lcom/google/android/gms/signin/internal/zak;

    .line 128
    .line 129
    new-instance v6, Lcom/google/android/gms/common/ConnectionResult;

    .line 130
    .line 131
    invoke-direct {v6, v0, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 132
    .line 133
    .line 134
    invoke-direct {v5, v2, v6, v3}, Lcom/google/android/gms/signin/internal/zak;-><init>(ILcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/internal/zav;)V

    .line 135
    .line 136
    .line 137
    invoke-interface {p1, v5}, Lcom/google/android/gms/signin/internal/zae;->zab(Lcom/google/android/gms/signin/internal/zak;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :catch_1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 142
    .line 143
    new-array v0, v1, [J

    .line 144
    .line 145
    fill-array-data v0, :array_4

    .line 146
    .line 147
    .line 148
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 156
    .line 157
    const/16 v1, 0xe

    .line 158
    .line 159
    new-array v1, v1, [J

    .line 160
    .line 161
    fill-array-data v1, :array_5

    .line 162
    .line 163
    .line 164
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-static {p1, v0, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :array_0
    .array-data 8
        -0xdc26d97de1f0292L
        0x3ff78d53714c9e16L    # 1.4720034051659971
        0x5c8950deb0eecb7bL    # 5.888184001495654E137
        0x415cc1d54bcce2ccL    # 7538517.184380244
        -0x6962a4ed9431d2f2L    # -9.587735970780717E-200
        0x534586ebd00c2b51L    # 1.4032430789564423E93
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
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
    :array_1
    .array-data 8
        0xb8cf53a9b9c2a7L
        -0x14d4fa1faaf76e8bL    # -1.7351612794395056E208
        0x15e11af33b0811bfL    # 2.727865595136484E-203
        0x4c787e07d416cfa6L    # 2.4598512396547273E60
    .end array-data

    .line 204
    .line 205
    .line 206
    .line 207
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
    .line 220
    .line 221
    .line 222
    .line 223
    :array_2
    .array-data 8
        -0x3b91b4ac62fd3f1bL    # -4.470641414578799E21
        0x1623362d34c8b80eL    # 4.90204248432716E-202
        0x3958f737f4b64b28L    # 1.9232873812550204E-32
    .end array-data

    .line 224
    .line 225
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
    .line 238
    :array_3
    .array-data 8
        -0x7e0b5dc8841b6da2L
        0x3e44537772d56d1dL    # 9.465050599779983E-9
        0x1917c85fc36a4852L    # 8.540515340190879E-188
        -0x1f4fe5ec841c0175L    # -5.526800474436415E157
        -0x59ace1866ae4d5a8L    # -4.519058238717E-124
        -0x16fe2987ecf16c40L    # -6.666958025854612E197
        0x33e41524e383fb32L    # 9.997943205906538E-59
        -0x499c6f7f4e4743d1L    # -1.0709239438835862E-46
    .end array-data

    :array_4
    .array-data 8
        0x6697b8cad7f6b7cfL    # 1.6127453718694476E186
        -0x1230d352c8924d46L    # -8.803727419783715E220
        -0x32f2260b2c16b232L    # -1.5350188006321752E63
    .end array-data

    :array_5
    .array-data 8
        0x90503d23af7b7d9L
        0x6f045d97138e3b5aL    # 6.030643747389485E226
        -0x38a007ad018ee04aL    # -6.639912626062492E35
        0x4b275e0e5de75b8L
        0x5d5f43e72de27d8dL    # 5.9571677980781055E141
        -0x16d2d50babf581b4L    # -4.3606446179954387E198
        0x103ce0f01864c6ffL    # 1.860117682786848E-230
        -0x5e337495d4d0a365L    # -7.14357982583447E-146
        -0x72acb3ae778326b7L
        0x660994dbf1b5ff41L    # 3.3968241287799274E183
        0x35064cb5092d6d76L    # 2.910238469632262E-53
        -0x44e2d6283f82cb97L    # -6.030859770243844E-24
        -0x44ce5746d5ab82c3L    # -1.4607244805700756E-23
        0x47144616d809be6cL    # 2.6316878930767295E34
    .end array-data
.end method
