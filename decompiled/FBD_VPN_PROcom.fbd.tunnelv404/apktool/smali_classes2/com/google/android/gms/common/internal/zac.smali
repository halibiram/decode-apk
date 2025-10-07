.class public final Lcom/google/android/gms/common/internal/zac;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zaa:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "sCache"
    .end annotation
.end field

.field private static zab:Ljava/util/Locale;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "sCache"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/common/internal/zac;->zaa:Landroidx/collection/SimpleArrayMap;

    .line 7
    .line 8
    return-void
.end method

.method public static zaa(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object p0

    .line 18
    :catch_0
    nop

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_0
    return-object p0
.end method

.method public static zab(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget v0, Lcom/google/android/gms/base/R$string;->common_google_play_services_notification_channel_name:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static zac(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p1, v0, :cond_2

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    .line 14
    const p1, 0x104000a

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    sget p1, Lcom/google/android/gms/base/R$string;->common_google_play_services_enable_button:I

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_1
    sget p1, Lcom/google/android/gms/base/R$string;->common_google_play_services_update_button:I

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_2
    sget p1, Lcom/google/android/gms/base/R$string;->common_google_play_services_install_button:I

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public static zad(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    invoke-static {p0}, Lcom/google/android/gms/common/internal/zac;->zaa(Landroid/content/Context;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    if-eq p1, v2, :cond_7

    .line 13
    .line 14
    const/4 v5, 0x2

    .line 15
    if-eq p1, v5, :cond_5

    .line 16
    .line 17
    const/4 v5, 0x3

    .line 18
    if-eq p1, v5, :cond_4

    .line 19
    .line 20
    const/4 v5, 0x5

    .line 21
    if-eq p1, v5, :cond_3

    .line 22
    .line 23
    if-eq p1, v0, :cond_2

    .line 24
    .line 25
    const/16 v5, 0x9

    .line 26
    .line 27
    if-eq p1, v5, :cond_1

    .line 28
    .line 29
    const/16 v5, 0x14

    .line 30
    .line 31
    if-eq p1, v5, :cond_0

    .line 32
    .line 33
    packed-switch p1, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    sget p0, Lcom/google/android/gms/common/R$string;->common_google_play_services_unknown_issue:I

    .line 37
    .line 38
    new-array p1, v2, [Ljava/lang/Object;

    .line 39
    .line 40
    aput-object v4, p1, v1

    .line 41
    .line 42
    invoke-virtual {v3, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :pswitch_0
    sget p0, Lcom/google/android/gms/base/R$string;->common_google_play_services_updating_text:I

    .line 48
    .line 49
    new-array p1, v2, [Ljava/lang/Object;

    .line 50
    .line 51
    aput-object v4, p1, v1

    .line 52
    .line 53
    invoke-virtual {v3, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :pswitch_1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v0, v0, [J

    .line 61
    .line 62
    fill-array-data v0, :array_0

    .line 63
    .line 64
    .line 65
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {p0, p1, v4}, Lcom/google/android/gms/common/internal/zac;->zah(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :pswitch_2
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    new-array v0, v0, [J

    .line 80
    .line 81
    fill-array-data v0, :array_1

    .line 82
    .line 83
    .line 84
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p0, p1, v4}, Lcom/google/android/gms/common/internal/zac;->zah(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    :cond_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    const/16 v0, 0x8

    .line 99
    .line 100
    new-array v0, v0, [J

    .line 101
    .line 102
    fill-array-data v0, :array_2

    .line 103
    .line 104
    .line 105
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p0, p1, v4}, Lcom/google/android/gms/common/internal/zac;->zah(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    return-object p0

    .line 117
    :cond_1
    sget p0, Lcom/google/android/gms/base/R$string;->common_google_play_services_unsupported_text:I

    .line 118
    .line 119
    new-array p1, v2, [Ljava/lang/Object;

    .line 120
    .line 121
    aput-object v4, p1, v1

    .line 122
    .line 123
    invoke-virtual {v3, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    return-object p0

    .line 128
    :cond_2
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 129
    .line 130
    new-array v0, v0, [J

    .line 131
    .line 132
    fill-array-data v0, :array_3

    .line 133
    .line 134
    .line 135
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-static {p0, p1, v4}, Lcom/google/android/gms/common/internal/zac;->zah(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    return-object p0

    .line 147
    :cond_3
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 148
    .line 149
    new-array v0, v0, [J

    .line 150
    .line 151
    fill-array-data v0, :array_4

    .line 152
    .line 153
    .line 154
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-static {p0, p1, v4}, Lcom/google/android/gms/common/internal/zac;->zah(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    return-object p0

    .line 166
    :cond_4
    sget p0, Lcom/google/android/gms/base/R$string;->common_google_play_services_enable_text:I

    .line 167
    .line 168
    new-array p1, v2, [Ljava/lang/Object;

    .line 169
    .line 170
    aput-object v4, p1, v1

    .line 171
    .line 172
    invoke-virtual {v3, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    return-object p0

    .line 177
    :cond_5
    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isWearableWithoutPlayStore(Landroid/content/Context;)Z

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    if-eqz p0, :cond_6

    .line 182
    .line 183
    sget p0, Lcom/google/android/gms/base/R$string;->common_google_play_services_wear_update_text:I

    .line 184
    .line 185
    invoke-virtual {v3, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    return-object p0

    .line 190
    :cond_6
    sget p0, Lcom/google/android/gms/base/R$string;->common_google_play_services_update_text:I

    .line 191
    .line 192
    new-array p1, v2, [Ljava/lang/Object;

    .line 193
    .line 194
    aput-object v4, p1, v1

    .line 195
    .line 196
    invoke-virtual {v3, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    return-object p0

    .line 201
    :cond_7
    sget p0, Lcom/google/android/gms/base/R$string;->common_google_play_services_install_text:I

    .line 202
    .line 203
    new-array p1, v2, [Ljava/lang/Object;

    .line 204
    .line 205
    aput-object v4, p1, v1

    .line 206
    .line 207
    invoke-virtual {v3, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    return-object p0

    .line 212
    nop

    .line 213
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

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
    :array_0
    .array-data 8
        -0x74898cb6bfef231cL    # -1.913843906338819E-253
        0x39337c28c9ac8428L    # 3.7526739905548236E-33
        -0x4878e754c739ca5aL
        0x71bf1988a672c79cL    # 8.100528292579596E239
        -0x6d8f16d2063c62dbL    # -7.485293110212155E-220
        -0x2373cfa584f46e76L    # -6.5564064105134765E137
        0xca55d0a5c42c9d4L
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
    .line 250
    .line 251
    .line 252
    :array_1
    .array-data 8
        -0x31d6fc2b6e63f0d8L    # -3.372010246404628E68
        0x567482c115dff19L
        0x7660a008b6a0a4dfL    # 1.635955054300222E262
        0x3b4b8dc1b752cf75L    # 4.558383430342019E-23
        0x1848c543e4db5060L
        0x37a4dcb616ba23aaL    # 1.1974288833720278E-40
        0x788b5306c854f77dL    # 4.6192928026243954E272
    .end array-data

    :array_2
    .array-data 8
        -0x2527a4959ba5dc7aL    # -4.220885704844579E129
        -0x56a965d65ee0519dL
        -0x5ea21a4cb887e2fL
        0x1aee885988834c2cL    # 5.886492659144234E-179
        -0x1e4f010a9d04f193L    # -3.823161601988155E162
        -0x4cc6bc008f39496aL    # -6.141731142775748E-62
        -0x201da40ee8f8eb99L    # -7.692372603532858E153
        -0x38ca72fe674cf966L    # -1.1189818026965917E35
    .end array-data

    :array_3
    .array-data 8
        0x4c6a8aea138c7a33L    # 1.3328865226849806E60
        -0x5dbe78d6101cc2b6L
        -0x7bf5a39aec6813cfL
        -0x5ee1aff281185b2L
        0x6897c4f4a9c4dfa0L    # 6.940562278173082E195
        -0x6725a3a0c16d236bL
        -0x10453f0250b8bc71L    # -1.6224948689058372E230
    .end array-data

    :array_4
    .array-data 8
        -0x7c2bbd75e2294218L
        -0x47ffd33d5221540dL    # -5.941699872258052E-39
        0x30e691b6f187cf18L    # 3.9917853877713994E-73
        -0x1154410e04329456L    # -1.283764257892046E225
        0x4f72f38e0741e652L    # 5.357472096800538E74
        0x4a7a6d6810c19420L    # 6.179782928286702E50
        -0x5e18ce393b43fe09L
    .end array-data
.end method

.method public static zae(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x6

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/16 v0, 0x13

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zac;->zad(Landroid/content/Context;I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_1
    :goto_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/16 v0, 0x8

    .line 17
    .line 18
    new-array v0, v0, [J

    .line 19
    .line 20
    fill-array-data v0, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p0}, Lcom/google/android/gms/common/internal/zac;->zaa(Landroid/content/Context;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/zac;->zah(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :array_0
    .array-data 8
        0xa4512eb7bef2683L
        -0x5e770c501f6891eL
        0x6cef4193dc7cf7ebL    # 5.387441345799531E216
        0x3bf1d6a74ad3f3a9L    # 6.043915563969899E-20
        0x12502a25023af633L
        0x4eff1d7f538cf0dL
        -0x4fbb29f48214fef7L    # -3.598883652452761E-76
        0x18581b5f4877561fL
    .end array-data
.end method

.method public static zaf(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x6

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/16 v0, 0x8

    .line 7
    .line 8
    new-array v0, v0, [J

    .line 9
    .line 10
    fill-array-data v0, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zac;->zai(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zac;->zag(Landroid/content/Context;I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :goto_0
    if-nez p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    sget p1, Lcom/google/android/gms/base/R$string;->common_google_play_services_notification_ticker:I

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_1
    return-object p1

    .line 43
    :array_0
    .array-data 8
        -0x15c7c9258691e7dL
        -0x5f059eedbf7dec57L    # -8.058673074198304E-150
        -0x7f90a6e99c75c29L
        -0x55e84aa35001fbbL    # -5.077285009457158E282
        0x8009371f457cacbL
        -0x432849da004ae69dL    # -1.3162536236813275E-15
        0x4b9fa4db5c82cddaL    # 1.939769850990154E56
        0x52f1e8fac05b0ceeL    # 3.6483469482018836E91
    .end array-data
.end method

.method public static zag(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x7

    .line 6
    const/4 v3, 0x4

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    const/4 v5, 0x0

    .line 12
    packed-switch p1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    :pswitch_0
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    new-array p1, v3, [J

    .line 18
    .line 19
    fill-array-data p1, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    new-array p1, v3, [J

    .line 31
    .line 32
    fill-array-data p1, :array_1

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    return-object v5

    .line 42
    :pswitch_1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    new-array v0, v3, [J

    .line 45
    .line 46
    fill-array-data v0, :array_2

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    const/16 v0, 0xb

    .line 58
    .line 59
    new-array v0, v0, [J

    .line 60
    .line 61
    fill-array-data v0, :array_3

    .line 62
    .line 63
    .line 64
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array v0, v1, [J

    .line 73
    .line 74
    fill-array-data v0, :array_4

    .line 75
    .line 76
    .line 77
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zac;->zai(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0

    .line 89
    :pswitch_2
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 90
    .line 91
    new-array v0, v3, [J

    .line 92
    .line 93
    fill-array-data v0, :array_5

    .line 94
    .line 95
    .line 96
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 103
    .line 104
    new-array v0, v2, [J

    .line 105
    .line 106
    fill-array-data v0, :array_6

    .line 107
    .line 108
    .line 109
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 116
    .line 117
    new-array v0, v2, [J

    .line 118
    .line 119
    fill-array-data v0, :array_7

    .line 120
    .line 121
    .line 122
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zac;->zai(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    return-object p0

    .line 134
    :pswitch_3
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 135
    .line 136
    new-array p1, v3, [J

    .line 137
    .line 138
    fill-array-data p1, :array_8

    .line 139
    .line 140
    .line 141
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 148
    .line 149
    new-array p1, v0, [J

    .line 150
    .line 151
    fill-array-data p1, :array_9

    .line 152
    .line 153
    .line 154
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    return-object v5

    .line 161
    :pswitch_4
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 162
    .line 163
    new-array p1, v3, [J

    .line 164
    .line 165
    fill-array-data p1, :array_a

    .line 166
    .line 167
    .line 168
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 175
    .line 176
    new-array p1, v2, [J

    .line 177
    .line 178
    fill-array-data p1, :array_b

    .line 179
    .line 180
    .line 181
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    return-object v5

    .line 188
    :pswitch_5
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 189
    .line 190
    new-array p1, v3, [J

    .line 191
    .line 192
    fill-array-data p1, :array_c

    .line 193
    .line 194
    .line 195
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 202
    .line 203
    new-array p1, v0, [J

    .line 204
    .line 205
    fill-array-data p1, :array_d

    .line 206
    .line 207
    .line 208
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    return-object v5

    .line 215
    :pswitch_6
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 216
    .line 217
    new-array p1, v3, [J

    .line 218
    .line 219
    fill-array-data p1, :array_e

    .line 220
    .line 221
    .line 222
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 229
    .line 230
    new-array p1, v2, [J

    .line 231
    .line 232
    fill-array-data p1, :array_f

    .line 233
    .line 234
    .line 235
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    return-object v5

    .line 242
    :pswitch_7
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 243
    .line 244
    new-array p1, v3, [J

    .line 245
    .line 246
    fill-array-data p1, :array_10

    .line 247
    .line 248
    .line 249
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 256
    .line 257
    new-array p1, v0, [J

    .line 258
    .line 259
    fill-array-data p1, :array_11

    .line 260
    .line 261
    .line 262
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    return-object v5

    .line 269
    :pswitch_8
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 270
    .line 271
    new-array v0, v3, [J

    .line 272
    .line 273
    fill-array-data v0, :array_12

    .line 274
    .line 275
    .line 276
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 283
    .line 284
    new-array v0, v1, [J

    .line 285
    .line 286
    fill-array-data v0, :array_13

    .line 287
    .line 288
    .line 289
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 296
    .line 297
    new-array v0, v2, [J

    .line 298
    .line 299
    fill-array-data v0, :array_14

    .line 300
    .line 301
    .line 302
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zac;->zai(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p0

    .line 313
    return-object p0

    .line 314
    :pswitch_9
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 315
    .line 316
    new-array v0, v3, [J

    .line 317
    .line 318
    fill-array-data v0, :array_15

    .line 319
    .line 320
    .line 321
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 328
    .line 329
    const/16 v0, 0xc

    .line 330
    .line 331
    new-array v0, v0, [J

    .line 332
    .line 333
    fill-array-data v0, :array_16

    .line 334
    .line 335
    .line 336
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 343
    .line 344
    new-array v0, v1, [J

    .line 345
    .line 346
    fill-array-data v0, :array_17

    .line 347
    .line 348
    .line 349
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zac;->zai(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object p0

    .line 360
    return-object p0

    .line 361
    :pswitch_a
    return-object v5

    .line 362
    :pswitch_b
    sget p0, Lcom/google/android/gms/base/R$string;->common_google_play_services_enable_title:I

    .line 363
    .line 364
    invoke-virtual {v4, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object p0

    .line 368
    return-object p0

    .line 369
    :pswitch_c
    sget p0, Lcom/google/android/gms/base/R$string;->common_google_play_services_update_title:I

    .line 370
    .line 371
    invoke-virtual {v4, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object p0

    .line 375
    return-object p0

    .line 376
    :pswitch_d
    sget p0, Lcom/google/android/gms/base/R$string;->common_google_play_services_install_title:I

    .line 377
    .line 378
    invoke-virtual {v4, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object p0

    .line 382
    return-object p0

    .line 383
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_a
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 384
    .line 385
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
    .line 426
    .line 427
    :array_0
    .array-data 8
        -0x75d2cb3e2962775eL
        -0x6c5eb021cfd50303L    # -4.017537465271336E-214
        -0x344ec1e05bbac466L    # -4.22789045894889E56
        -0x3835ebbf761f25d4L    # -6.933016565127961E37
    .end array-data

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
    .line 446
    .line 447
    :array_1
    .array-data 8
        -0x7a83a2bfd0e81ce0L
        0x1af352cc448fac7fL    # 7.450866611785141E-179
        0x58b1c4b0e08221caL    # 1.792275480409085E119
        -0x67228cdc1f310f6dL    # -6.609743144871869E-189
    .end array-data

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
    :array_2
    .array-data 8
        -0x71031976b3b90b34L
        -0xc0b9302093301b2L    # -3.656069356158322E250
        0x3832b87317dc19ccL    # 5.501462315631759E-38
        -0x5685243fbe96273L    # -3.438530579792325E282
    .end array-data

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
    :array_3
    .array-data 8
        -0x754761a0e1397abcL
        -0x43aa54726b23877cL    # -4.6989602122711795E-18
        0x6f42b9be02e76508L    # 8.871998244179074E227
        0xc809f63e3a76723L
        0x4e2cb993de7540b5L    # 3.8721105520381794E68
        0x78c37789f5bce943L    # 5.26555269939163E273
        0x1fed0542fe630fe7L    # 6.763911754898355E-155
        0x7079e84bcc8e6274L    # 6.435474795791525E233
        -0x3036aa82018e5ec2L    # -2.291774558634849E76
        -0x427cc74a8a1e1aa8L
        0x4708f0cf4e8efcc9L    # 1.6187415931505587E34
    .end array-data

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
    :array_4
    .array-data 8
        0x6e889c4f3d748f02L    # 2.8467459297747242E224
        -0x47d8db615c97e7f4L    # -3.4005649246354144E-38
        -0x4200a18455584888L    # -4.564801129584358E-10
        -0x486163929fa7a18cL    # -8.784938778500198E-41
        0x1089e795490b17a4L    # 5.339376702508564E-229
        -0x3cbb6ae3db138062L    # -1.1586895290629948E16
        -0x186962735985d88dL    # -1.0076322711876493E191
        -0x1b094bfe3648a301L    # -2.2999776332250567E178
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
    .line 570
    .line 571
    :array_5
    .array-data 8
        0x5a77c9a74a51debfL    # 6.440962846961465E127
        0x4deab65907889f85L    # 2.2505064844129937E67
        0x59e2f3a2f99dafeaL
        -0x7b63152722854cf2L
    .end array-data

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
    :array_6
    .array-data 8
        -0x924968c100dd8b7L    # -3.452675397530399E264
        -0x4c655f4284e13d7eL    # -4.1426443515974043E-60
        0x569e9a307e0068c2L    # 1.796770259821012E109
        -0x38fc7c54da688709L    # -1.2665524452511804E34
        0x44886a59569b95ceL    # 1.4412323495558722E22
        -0x688f6888e21fa09eL    # -8.878358987154572E-196
        0x3abffb47d52b2df7L    # 1.033380093217702E-25
    .end array-data

    .line 592
    .line 593
    .line 594
    .line 595
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
    .line 620
    .line 621
    .line 622
    .line 623
    :array_7
    .array-data 8
        -0x1886e0fbbd13c91bL    # -2.798188358215601E190
        0x59493b7d2e8204cbL    # 1.303126145255127E122
        0x388892bc6f4443faL    # 2.3108514737762347E-36
        -0x794382113357e39eL
        -0x5d539bb9f73ae77fL    # -1.164135011864171E-141
        -0x5f508cf3ee2aacd9L
        -0x441017a9302af6a4L    # -5.405353398024793E-20
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
    :array_8
    .array-data 8
        0x7c0c908778307275L    # 3.479633449909017E289
        -0x6676158b8ea49bd8L
        0x89ddcfc7befbe16L
        -0x780e902339b996f2L
    .end array-data

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
    :array_9
    .array-data 8
        0x491e3576c810c6e8L    # 1.6841993159057722E44
        -0x143e06bc57fe010dL    # -1.1818005587928671E211
        0xc545af928ce9118L
        0x6850d7ef669673a8L    # 3.073898142264912E194
        0x64cda363db9b01f5L    # 3.7531844641260776E177
        0x410b28574a8a4131L    # 222474.91139651233
        0x6084f409edf390ddL    # 8.990000223275996E156
        0x696d4df3315c4386L    # 7.009730818724491E199
        -0x63a819644a342d56L    # -3.865406485550974E-172
        0x73c0b84d27f9fa8dL    # 3.740940560483197E249
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
        0x59bcbc2799ae5554L
        -0x601d7064b2af2252L    # -4.326062183242793E-155
        -0x6fa94f7ed2838217L    # -5.845850353050531E-230
        0x5d4002158df3f21aL    # 1.525066900483409E141
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
    .line 736
    .line 737
    .line 738
    .line 739
    :array_b
    .array-data 8
        -0xfc7cfa20b145c29L    # -3.7553757149585704E232
        0x596a71559b6a6ff6L    # 5.462535292536964E122
        0xa30c7707f720071L
        -0x644c7f0d4c0f6598L
        -0x4c7195d73e47512eL    # -2.365888071021116E-60
        0x11bd5b5d62ed479cL
        -0x3ec9e305f988f413L    # -1449210.0252540067
    .end array-data

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
    .line 768
    .line 769
    .line 770
    .line 771
    :array_c
    .array-data 8
        -0x46660a9f5a3ef24aL    # -3.1996328938144966E-31
        -0x2abb96c4158ec3e3L    # -5.714448477198386E102
        0x38ca158f8f4a4392L    # 3.924717487188975E-35
        0x10bd59fc604be808L    # 4.839870067622201E-228
    .end array-data

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
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    :array_d
    .array-data 8
        0x734b878e3a221ccfL    # 2.4060519571238812E247
        -0x2dfc7a359520fd27L    # -1.2136315636977247E87
        -0x6c836650d5af09d1L    # -8.296485041788078E-215
        0x1935e1f87ac12904L    # 3.143283605644609E-187
        0xc4633216c540873L
        0x1617fe423f14f789L
        0x5b64d5863e36e4e7L    # 1.848512678772679E132
        0x4e9a2f244b4e4710L    # 4.517908618285212E70
        0x19b57ee8b1b33f82L    # 7.904511464921633E-185
        0x208971025b05f4b1L
    .end array-data

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
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    :array_e
    .array-data 8
        -0x308dd9fcd0830c72L    # -5.13049590529739E74
        0xf7b302b363a7506L    # 4.275463359631489E-234
        0x6b758da452d27f10L    # 4.4286416917407005E209
        -0x9250fb188b0f41aL
    .end array-data

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
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    :array_f
    .array-data 8
        -0x67d7c4ab1503b6a7L    # -2.655570398101643E-192
        0x498ea11ec3e6b61aL    # 2.185785289149826E46
        -0x1e42bcc92f7cfc48L    # -6.582485652043575E162
        -0x10e2817ed5fc8558L    # -1.7467580610101201E227
        -0x68ca687de1eb6781L    # -7.221248332366851E-197
        -0x731fb33eef82290bL
        -0x6dbf05d79bcd5844L    # -9.393311187581568E-221
    .end array-data

    .line 856
    .line 857
    .line 858
    .line 859
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
    :array_10
    .array-data 8
        0x2cdbf6a71188797cL    # 1.3405797864681416E-92
        -0x58118cfecf45bdb2L
        -0x619d5072245c70f1L
        0x5120e8056b45bc8aL    # 6.414727850461272E82
    .end array-data

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
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    :array_11
    .array-data 8
        -0x7c722fbaa1b5592dL    # -1.493784764955138E-291
        -0x3bb409966fd22794L    # -1.0316359430452433E21
        0x58fd12b99226465dL    # 4.6921326734180125E120
        -0x1b3a71283b64d31cL    # -2.7299552324093793E177
        -0x1fcac907d00cd66bL    # -2.844429518884097E155
        -0x3ef9847679348cc2L    # -184177.1908177379
        -0x6d944718106e6e01L
        -0x303bb39c845b84f6L    # -1.8362447909744177E76
        0x1aaafa176a8fb1b7L
        0x774fc6eb90efa9eeL    # 5.1231787711119886E266
    .end array-data

    .line 908
    .line 909
    .line 910
    .line 911
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
    :array_12
    .array-data 8
        -0x453ecd35fd1c1731L    # -1.1114202240420138E-25
        -0x184ca875a4d94116L    # -3.447129712555783E191
        -0x37300dec0a40c79dL    # -5.5657114560049853E42
        -0x2909ff48870cdb5eL    # -8.267921875946996E110
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
    .line 968
    .line 969
    .line 970
    .line 971
    :array_13
    .array-data 8
        -0xf365f32f924194bL    # -2.0371524150715176E235
        -0x2ef91cdde7c00375L    # -2.1710120714375537E82
        -0x70a80fca83664847L    # -9.411026340823236E-235
        -0x4e7e511b6b80cc91L    # -3.202663222191754E-70
        -0x7655238bcdbb07e0L
        0xe52fd39edf357b1L    # 1.139119620995405E-239
        -0x2e19fec4314996d4L
        -0x19c475e1b7196c82L    # -2.925457564778918E184
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
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    :array_14
    .array-data 8
        -0x29d20b1cce8d9756L    # -1.3741080317251864E107
        -0x69db3dad949c14f7L    # -5.296888291996951E-202
        -0x6ca803e4665eafedL
        -0x550d7826ff5ef1eL
        0x39ac7ebeeb91bb18L    # 7.024584669124744E-31
        -0x772ebf0aad21dc35L
        -0x2a39648777695e49L    # -1.620307171418481E105
    .end array-data

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
    :array_15
    .array-data 8
        0x5c165d12a519d4bcL    # 4.063676399923071E135
        -0x2d31b3299a1892a4L    # -7.715311052081944E90
        -0x68c46f2a4def3143L    # -9.21919129834589E-197
        -0x1994d4f875e5c834L    # -2.308800239124525E185
    .end array-data

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
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    :array_16
    .array-data 8
        -0x27af83b58d6d11d4L    # -2.598248823064684E117
        -0x681c2f6f7f039d30L
        0x7c57427e1902b36L
        -0xeb8ba83396c4b79L    # -4.7355427742641376E237
        0x147b962752a23d2fL    # 5.244453381899914E-210
        -0x67ac12c8fe8b08e0L    # -1.747014130399474E-191
        -0x60c27c6e96ab6b7fL
        0x62cfae66efcc731aL    # 9.340927967078699E167
        0x165a9fbbf87f47a5L
        0x63e1cc4fa97aeeaaL    # 1.3756277750725908E173
        -0x50bb33c2dcae006dL    # -5.481365189407117E-81
        0x64d0b029b7c6a0ccL    # 4.226543120664084E177
    .end array-data

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
    :array_17
    .array-data 8
        0x54bcc1cb4d19fa14L    # 1.572469685531927E100
        -0x3847f5edc74008b0L    # -3.1953764446983915E37
        0x781f5344b42f0f07L    # 4.137241822165841E270
        -0x3f7efa8530d6db7bL    # -544.6849654402037
        0x6c27245eb17bd3cL
        -0x10d032d8778f0f9bL    # -3.766801815652113E227
        0x68058625b351db12L    # 1.2275253760792959E193
        0x58be3afc84996723L    # 3.049315900197742E119
    .end array-data
.end method

.method private static zah(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zac;->zai(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    sget p0, Lcom/google/android/gms/common/R$string;->common_google_play_services_unknown_issue:I

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    new-array v0, v0, [Ljava/lang/Object;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    aput-object p2, v0, v1

    .line 28
    .line 29
    invoke-static {p1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method private static zai(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    sget-object v1, Lcom/google/android/gms/common/internal/zac;->zaa:Landroidx/collection/SimpleArrayMap;

    .line 3
    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v2, v3}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    sget-object v3, Lcom/google/android/gms/common/internal/zac;->zab:Ljava/util/Locale;

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 31
    .line 32
    .line 33
    sput-object v2, Lcom/google/android/gms/common/internal/zac;->zab:Ljava/util/Locale;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto/16 :goto_3

    .line 38
    .line 39
    :cond_0
    :goto_0
    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/lang/String;

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    monitor-exit v1

    .line 48
    return-object v2

    .line 49
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getRemoteResource(Landroid/content/Context;)Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const/4 v2, 0x0

    .line 54
    if-nez p0, :cond_2

    .line 55
    .line 56
    monitor-exit v1

    .line 57
    return-object v2

    .line 58
    :cond_2
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    const/4 v4, 0x2

    .line 61
    new-array v4, v4, [J

    .line 62
    .line 63
    fill-array-data v4, :array_0

    .line 64
    .line 65
    .line 66
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    new-array v5, v0, [J

    .line 76
    .line 77
    fill-array-data v5, :array_1

    .line 78
    .line 79
    .line 80
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {p0, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-nez v3, :cond_4

    .line 92
    .line 93
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 94
    .line 95
    new-array v3, v0, [J

    .line 96
    .line 97
    fill-array-data v3, :array_2

    .line 98
    .line 99
    .line 100
    invoke-direct {p0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 107
    .line 108
    new-array v0, v0, [J

    .line 109
    .line 110
    fill-array-data v0, :array_3

    .line 111
    .line 112
    .line 113
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_3

    .line 125
    .line 126
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_3
    new-instance p1, Ljava/lang/String;

    .line 131
    .line 132
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :goto_1
    monitor-exit v1

    .line 136
    return-object v2

    .line 137
    :cond_4
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-eqz v3, :cond_6

    .line 146
    .line 147
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 148
    .line 149
    new-array v3, v0, [J

    .line 150
    .line 151
    fill-array-data v3, :array_4

    .line 152
    .line 153
    .line 154
    invoke-direct {p0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 161
    .line 162
    new-array v0, v0, [J

    .line 163
    .line 164
    fill-array-data v0, :array_5

    .line 165
    .line 166
    .line 167
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_5

    .line 179
    .line 180
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_5
    new-instance p1, Ljava/lang/String;

    .line 185
    .line 186
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    :goto_2
    monitor-exit v1

    .line 190
    return-object v2

    .line 191
    :cond_6
    invoke-virtual {v1, p1, p0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    monitor-exit v1

    .line 195
    return-object p0

    .line 196
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    throw p0

    .line 198
    nop

    .line 199
    :array_0
    .array-data 8
        0x6bf68d4c39557e69L    # 1.1862629204803755E212
        0x17a863274eebc4ceL    # 1.043991265394294E-194
    .end array-data

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
    .line 210
    .line 211
    :array_1
    .array-data 8
        0x3d8f836f7b1f88ecL    # 3.5826610444814292E-12
        0x632b75bfaffb24d4L    # 5.181642138263503E169
        0x2fbffc61aaaca171L    # 1.0790442339841939E-78
        0x22c45b6bc9f38664L    # 3.33878335572819E-141
    .end array-data

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
    :array_2
    .array-data 8
        -0x12562c3d72564cf5L    # -1.823408443212729E220
        -0x401b77d5579ebf8cL    # -0.6416219032926294
        -0x62367e278e13730fL
        0x64c9e20a823282caL    # 3.277642785728694E177
    .end array-data

    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
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
    .line 250
    .line 251
    :array_3
    .array-data 8
        0x5d2fc5092b7ff7fdL    # 7.566598886480951E140
        -0x105d53b3b924749eL    # -5.662154436943295E229
        0x476ffc2e8ca42fbfL    # 1.3286084628525297E36
        -0x750ec70b9b2af03dL    # -5.735078437827839E-256
    .end array-data

    .line 252
    :array_4
    .array-data 8
        0x3e7bb071eceb0371L    # 1.0315045105136395E-7
        -0x78537990c9fb9266L
        -0x59accdf28f99a7b7L    # -4.537134162533402E-124
        0x5c1d2e6066ff6eeL    # 6.13698271984984E-281
    .end array-data

    :array_5
    .array-data 8
        -0x569dfb6b3a2a5eedL    # -2.397483553310085E-109
        0xef154a320200df0L    # 1.064577709865742E-236
        -0xf67aff9443e8045L    # -2.4157283603683467E234
        0x496b967f63f0dbccL    # 4.921842495638965E45
    .end array-data
.end method
