.class public Lcom/android/volley/toolbox/DiskBasedCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Cache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;,
        Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;,
        Lcom/android/volley/toolbox/DiskBasedCache$FileSupplier;
    }
.end annotation


# static fields
.field private static final CACHE_MAGIC:I = 0x20150306

.field private static final DEFAULT_DISK_USAGE_BYTES:I = 0x500000

.field static final HYSTERESIS_FACTOR:F = 0.9f
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxCacheSizeInBytes:I

.field private final mRootDirectorySupplier:Lcom/android/volley/toolbox/DiskBasedCache$FileSupplier;

.field private mTotalSize:J


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/DiskBasedCache$FileSupplier;)V
    .locals 1

    const/high16 v0, 0x500000

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Lcom/android/volley/toolbox/DiskBasedCache$FileSupplier;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/DiskBasedCache$FileSupplier;I)V
    .locals 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/16 v3, 0x10

    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 9
    iput-object p1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectorySupplier:Lcom/android/volley/toolbox/DiskBasedCache$FileSupplier;

    .line 10
    iput p2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mMaxCacheSizeInBytes:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/high16 v0, 0x500000

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/16 v3, 0x10

    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 4
    new-instance v0, Lcom/android/volley/toolbox/DiskBasedCache$1;

    invoke-direct {v0, p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache$1;-><init>(Lcom/android/volley/toolbox/DiskBasedCache;Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectorySupplier:Lcom/android/volley/toolbox/DiskBasedCache$FileSupplier;

    .line 5
    iput p2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mMaxCacheSizeInBytes:I

    return-void
.end method

.method private getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method

.method private initializeIfRootDirectoryDeleted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectorySupplier:Lcom/android/volley/toolbox/DiskBasedCache$FileSupplier;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/volley/toolbox/DiskBasedCache$FileSupplier;->get()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v1, 0x7

    .line 16
    new-array v1, v1, [J

    .line 17
    .line 18
    fill-array-data v1, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    new-array v1, v1, [Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 37
    .line 38
    .line 39
    const-wide/16 v0, 0x0

    .line 40
    .line 41
    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->initialize()V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void

    .line 47
    :array_0
    .array-data 8
        -0x5fb46b30590b120fL    # -4.114213697697583E-153
        0x6516d1152187b5acL    # 9.245934658353899E178
        -0x187cd7dfa7604fe3L    # -4.267651608208939E190
        0x481933bd7266a2b9L    # 2.1439583663102707E39
        0x68377aca65882502L    # 1.0712451262141394E194
        0x74707b5d66be177dL    # 7.552374031677388E252
        0x5a200460c669c86aL    # 1.3552896847026314E126
    .end array-data
.end method

.method private pruneIfNeeded()V
    .locals 15

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x5

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    iget-wide v4, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 6
    .line 7
    iget v6, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mMaxCacheSizeInBytes:I

    .line 8
    .line 9
    int-to-long v6, v6

    .line 10
    cmp-long v8, v4, v6

    .line 11
    .line 12
    if-gez v8, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    sget-boolean v4, Lcom/android/volley/VolleyLog;->DEBUG:Z

    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    new-array v5, v1, [J

    .line 22
    .line 23
    fill-array-data v5, :array_0

    .line 24
    .line 25
    .line 26
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    new-array v5, v3, [Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {v4, v5}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-wide v4, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 39
    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 41
    .line 42
    .line 43
    move-result-wide v6

    .line 44
    iget-object v8, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    .line 45
    .line 46
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    const/4 v9, 0x0

    .line 55
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    if-eqz v10, :cond_4

    .line 60
    .line 61
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    check-cast v10, Ljava/util/Map$Entry;

    .line 66
    .line 67
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    check-cast v10, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 72
    .line 73
    iget-object v11, v10, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p0, v11}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    if-eqz v11, :cond_3

    .line 84
    .line 85
    iget-wide v11, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 86
    .line 87
    iget-wide v13, v10, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    .line 88
    .line 89
    sub-long/2addr v11, v13

    .line 90
    iput-wide v11, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 94
    .line 95
    const/16 v12, 0x8

    .line 96
    .line 97
    new-array v12, v12, [J

    .line 98
    .line 99
    fill-array-data v12, :array_1

    .line 100
    .line 101
    .line 102
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    iget-object v10, v10, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    .line 110
    .line 111
    invoke-direct {p0, v10}, Lcom/android/volley/toolbox/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v12

    .line 115
    new-array v13, v0, [Ljava/lang/Object;

    .line 116
    .line 117
    aput-object v10, v13, v3

    .line 118
    .line 119
    aput-object v12, v13, v2

    .line 120
    .line 121
    invoke-static {v11, v13}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 125
    .line 126
    .line 127
    add-int/2addr v9, v2

    .line 128
    iget-wide v10, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 129
    .line 130
    long-to-float v10, v10

    .line 131
    iget v11, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mMaxCacheSizeInBytes:I

    .line 132
    .line 133
    int-to-float v11, v11

    .line 134
    const v12, 0x3f666666    # 0.9f

    .line 135
    .line 136
    .line 137
    mul-float v11, v11, v12

    .line 138
    .line 139
    cmpg-float v10, v10, v11

    .line 140
    .line 141
    if-gez v10, :cond_2

    .line 142
    .line 143
    :cond_4
    sget-boolean v8, Lcom/android/volley/VolleyLog;->DEBUG:Z

    .line 144
    .line 145
    if-eqz v8, :cond_5

    .line 146
    .line 147
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 148
    .line 149
    new-array v1, v1, [J

    .line 150
    .line 151
    fill-array-data v1, :array_2

    .line 152
    .line 153
    .line 154
    invoke-direct {v8, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v8

    .line 165
    iget-wide v9, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 166
    .line 167
    sub-long/2addr v9, v4

    .line 168
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 173
    .line 174
    .line 175
    move-result-wide v9

    .line 176
    sub-long/2addr v9, v6

    .line 177
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    const/4 v6, 0x3

    .line 182
    new-array v6, v6, [Ljava/lang/Object;

    .line 183
    .line 184
    aput-object v8, v6, v3

    .line 185
    .line 186
    aput-object v4, v6, v2

    .line 187
    .line 188
    aput-object v5, v6, v0

    .line 189
    .line 190
    invoke-static {v1, v6}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_5
    return-void

    .line 194
    nop

    .line 195
    :array_0
    .array-data 8
        -0x4057e88b98c3b5afL    # -0.047053945161810724
        -0x18dcf67043883a52L    # -6.626646161411358E188
        -0x62dfe1916d202b4bL    # -2.135537255905762E-168
        0x49278299d7796eb3L    # 2.6214704317700216E44
        0x44af5b8f77cdd255L    # 7.404117631871974E22
    .end array-data

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
        -0x14cb2dbde2cf657eL    # -2.6739008738436096E208
        0x59a5cb16d6c8035dL    # 7.203301222379963E123
        0x576f96432e6cf9adL    # 1.5192745316516187E113
        -0x1319fef79cfd5d5cL    # -3.7927062860239705E216
        0x7464f598b03c8144L    # 4.8020250276944166E252
        -0x60ea7e05f9a32b75L    # -6.119228897277532E-159
        -0x14250b157c745140L    # -3.544898083197619E211
        -0x52619045ffd1d338L    # -5.976611557010386E-89
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
    .line 253
    .line 254
    .line 255
    :array_2
    .array-data 8
        -0x10ee5b1fa8391dcfL    # -1.044948732488665E227
        0x426697fb3a66bf65L    # 7.763128369179811E11
        -0x56fe0b62f4897567L    # -3.733100032115961E-111
        0x7864eb0df029637aL    # 8.840768680199309E271
        0x138b29b8a509fd75L
    .end array-data
.end method

.method private putEntry(Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 10
    .line 11
    iget-wide v2, p2, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    .line 12
    .line 13
    add-long/2addr v0, v2

    .line 14
    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 24
    .line 25
    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 26
    .line 27
    iget-wide v3, p2, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    .line 28
    .line 29
    iget-wide v5, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    .line 30
    .line 31
    sub-long/2addr v3, v5

    .line 32
    add-long/2addr v3, v1

    .line 33
    iput-wide v3, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 34
    .line 35
    :goto_0
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    .line 36
    .line 37
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private static read(Ljava/io/InputStream;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p0, v0, :cond_0

    .line 7
    .line 8
    return p0

    .line 9
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 12
    .line 13
    .line 14
    throw p0
.end method

.method public static readHeaderList(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readInt(Ljava/io/InputStream;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    :goto_0
    const/4 v2, 0x0

    .line 20
    :goto_1
    if-ge v2, v0, :cond_1

    .line 21
    .line 22
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readString(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readString(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    new-instance v5, Lcom/android/volley/Header;

    .line 39
    .line 40
    invoke-direct {v5, v3, v4}, Lcom/android/volley/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    return-object v1

    .line 50
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    const/4 v3, 0x4

    .line 60
    new-array v3, v3, [J

    .line 61
    .line 62
    fill-array-data v3, :array_0

    .line 63
    .line 64
    .line 65
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-static {v2, v1, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    nop

    .line 77
    :array_0
    .array-data 8
        -0x780566793cbe9dddL    # -3.146884810245247E-270
        -0x82bb9112796664aL
        0x13f99e271191bdaeL
        0x77d9401ceccb86d3L    # 2.0843234498974066E269
    .end array-data
.end method

.method public static readInt(Ljava/io/InputStream;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    shl-int/lit8 v1, v1, 0x8

    .line 10
    .line 11
    or-int/2addr v0, v1

    .line 12
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    shl-int/lit8 v1, v1, 0x10

    .line 17
    .line 18
    or-int/2addr v0, v1

    .line 19
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    shl-int/lit8 p0, p0, 0x18

    .line 24
    .line 25
    or-int/2addr p0, v0

    .line 26
    return p0
.end method

.method public static readLong(Ljava/io/InputStream;)J
    .locals 7

    .line 1
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    const-wide/16 v2, 0xff

    .line 7
    .line 8
    and-long/2addr v0, v2

    .line 9
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    int-to-long v4, v4

    .line 14
    and-long/2addr v4, v2

    .line 15
    const/16 v6, 0x8

    .line 16
    .line 17
    shl-long/2addr v4, v6

    .line 18
    or-long/2addr v0, v4

    .line 19
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    int-to-long v4, v4

    .line 24
    and-long/2addr v4, v2

    .line 25
    const/16 v6, 0x10

    .line 26
    .line 27
    shl-long/2addr v4, v6

    .line 28
    or-long/2addr v0, v4

    .line 29
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    int-to-long v4, v4

    .line 34
    and-long/2addr v4, v2

    .line 35
    const/16 v6, 0x18

    .line 36
    .line 37
    shl-long/2addr v4, v6

    .line 38
    or-long/2addr v0, v4

    .line 39
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    int-to-long v4, v4

    .line 44
    and-long/2addr v4, v2

    .line 45
    const/16 v6, 0x20

    .line 46
    .line 47
    shl-long/2addr v4, v6

    .line 48
    or-long/2addr v0, v4

    .line 49
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    int-to-long v4, v4

    .line 54
    and-long/2addr v4, v2

    .line 55
    const/16 v6, 0x28

    .line 56
    .line 57
    shl-long/2addr v4, v6

    .line 58
    or-long/2addr v0, v4

    .line 59
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    int-to-long v4, v4

    .line 64
    and-long/2addr v4, v2

    .line 65
    const/16 v6, 0x30

    .line 66
    .line 67
    shl-long/2addr v4, v6

    .line 68
    or-long/2addr v0, v4

    .line 69
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    int-to-long v4, p0

    .line 74
    and-long/2addr v2, v4

    .line 75
    const/16 p0, 0x38

    .line 76
    .line 77
    shl-long/2addr v2, p0

    .line 78
    or-long/2addr v0, v2

    .line 79
    return-wide v0
.end method

.method public static readString(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {p0, v0, v1}, Lcom/android/volley/toolbox/DiskBasedCache;->streamToBytes(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;J)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Ljava/lang/String;

    .line 10
    .line 11
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    new-array v2, v2, [J

    .line 15
    .line 16
    fill-array-data v2, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        -0x28db5cb69ac3c5fbL    # -6.204011897124151E111
        0xa1efdeae51dd821L
    .end array-data
.end method

.method private removeEntry(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 12
    .line 13
    iget-wide v2, p1, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    .line 14
    .line 15
    sub-long/2addr v0, v2

    .line 16
    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public static streamToBytes(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;J)[B
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRemaining()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v4, p1, v2

    .line 8
    .line 9
    if-ltz v4, :cond_0

    .line 10
    .line 11
    cmp-long v2, p1, v0

    .line 12
    .line 13
    if-gtz v2, :cond_0

    .line 14
    .line 15
    long-to-int v2, p1

    .line 16
    int-to-long v3, v2

    .line 17
    cmp-long v5, v3, p1

    .line 18
    .line 19
    if-nez v5, :cond_0

    .line 20
    .line 21
    new-array p1, v2, [B

    .line 22
    .line 23
    new-instance p2, Ljava/io/DataInputStream;

    .line 24
    .line 25
    invoke-direct {p2, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 29
    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    const/4 v4, 0x4

    .line 42
    new-array v4, v4, [J

    .line 43
    .line 44
    fill-array-data v4, :array_0

    .line 45
    .line 46
    .line 47
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    const/4 p2, 0x3

    .line 63
    new-array p2, p2, [J

    .line 64
    .line 65
    fill-array-data p2, :array_1

    .line 66
    .line 67
    .line 68
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-static {p1, v2, v0, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;J)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p0

    .line 79
    :array_0
    .array-data 8
        0xdd67b9d81df7d6L
        -0x75249e6b556f7254L
        -0x60e0512c7e15dec3L    # -9.01420495201171E-159
        -0x7db8a58e21ee3758L
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
    :array_1
    .array-data 8
        -0x754da06eaf2cae5dL
        0x4b50aa53fbf20e92L    # 6.384891340452645E54
        -0x50e60bdf6cca6f06L    # -8.550256907936806E-82
    .end array-data
.end method

.method public static writeHeaderList(Ljava/util/List;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->writeInt(Ljava/io/OutputStream;I)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/android/volley/Header;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/android/volley/Header;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {p1, v1}, Lcom/android/volley/toolbox/DiskBasedCache;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/android/volley/Header;->getValue()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p0, 0x0

    .line 42
    invoke-static {p1, p0}, Lcom/android/volley/toolbox/DiskBasedCache;->writeInt(Ljava/io/OutputStream;I)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public static writeInt(Ljava/io/OutputStream;I)V
    .locals 1

    .line 1
    and-int/lit16 v0, p1, 0xff

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 4
    .line 5
    .line 6
    shr-int/lit8 v0, p1, 0x8

    .line 7
    .line 8
    and-int/lit16 v0, v0, 0xff

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 11
    .line 12
    .line 13
    shr-int/lit8 v0, p1, 0x10

    .line 14
    .line 15
    and-int/lit16 v0, v0, 0xff

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 18
    .line 19
    .line 20
    shr-int/lit8 p1, p1, 0x18

    .line 21
    .line 22
    and-int/lit16 p1, p1, 0xff

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static writeLong(Ljava/io/OutputStream;J)V
    .locals 2

    .line 1
    long-to-int v0, p1

    .line 2
    int-to-byte v0, v0

    .line 3
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x8

    .line 7
    .line 8
    ushr-long v0, p1, v0

    .line 9
    .line 10
    long-to-int v1, v0

    .line 11
    int-to-byte v0, v1

    .line 12
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 13
    .line 14
    .line 15
    const/16 v0, 0x10

    .line 16
    .line 17
    ushr-long v0, p1, v0

    .line 18
    .line 19
    long-to-int v1, v0

    .line 20
    int-to-byte v0, v1

    .line 21
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 22
    .line 23
    .line 24
    const/16 v0, 0x18

    .line 25
    .line 26
    ushr-long v0, p1, v0

    .line 27
    .line 28
    long-to-int v1, v0

    .line 29
    int-to-byte v0, v1

    .line 30
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 31
    .line 32
    .line 33
    const/16 v0, 0x20

    .line 34
    .line 35
    ushr-long v0, p1, v0

    .line 36
    .line 37
    long-to-int v1, v0

    .line 38
    int-to-byte v0, v1

    .line 39
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 40
    .line 41
    .line 42
    const/16 v0, 0x28

    .line 43
    .line 44
    ushr-long v0, p1, v0

    .line 45
    .line 46
    long-to-int v1, v0

    .line 47
    int-to-byte v0, v1

    .line 48
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 49
    .line 50
    .line 51
    const/16 v0, 0x30

    .line 52
    .line 53
    ushr-long v0, p1, v0

    .line 54
    .line 55
    long-to-int v1, v0

    .line 56
    int-to-byte v0, v1

    .line 57
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 58
    .line 59
    .line 60
    const/16 v0, 0x38

    .line 61
    .line 62
    ushr-long/2addr p1, v0

    .line 63
    long-to-int p2, p1

    .line 64
    int-to-byte p1, p2

    .line 65
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public static writeString(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    array-length v0, p1

    .line 21
    int-to-long v0, v0

    .line 22
    invoke-static {p0, v0, v1}, Lcom/android/volley/toolbox/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    array-length v1, p1

    .line 27
    invoke-virtual {p0, p1, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :array_0
    .array-data 8
        0x2cc90f837de082ecL    # 6.007071701832281E-93
        -0x6815ecb995f1ff3bL    # -1.786002230765519E-193
    .end array-data
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectorySupplier:Lcom/android/volley/toolbox/DiskBasedCache$FileSupplier;

    .line 3
    .line 4
    invoke-interface {v0}, Lcom/android/volley/toolbox/DiskBasedCache$FileSupplier;->get()Ljava/io/File;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    array-length v2, v0

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-ge v3, v2, :cond_0

    .line 18
    .line 19
    aget-object v4, v0, v3

    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 22
    .line 23
    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 32
    .line 33
    .line 34
    const-wide/16 v2, 0x0

    .line 35
    .line 36
    iput-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 37
    .line 38
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    const/4 v2, 0x3

    .line 41
    new-array v2, v2, [J

    .line 42
    .line 43
    fill-array-data v2, :array_0

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-array v1, v1, [Ljava/lang/Object;

    .line 54
    .line 55
    invoke-static {v0, v1}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    monitor-exit p0

    .line 59
    return-void

    .line 60
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw v0

    .line 62
    nop

    .line 63
    :array_0
    .array-data 8
        0x29dee7fd0080e422L
        0x718a40865f671172L    # 8.547316929736071E238
        -0x2f43631e71fcf2fbL    # -8.481632828783745E80
    .end array-data
.end method

.method public createInputStream(Ljava/io/File;)Ljava/io/InputStream;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public createOutputStream(Ljava/io/File;)Ljava/io/OutputStream;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v3, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    check-cast v3, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-object v4

    .line 18
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :try_start_2
    new-instance v6, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;

    .line 23
    .line 24
    new-instance v7, Ljava/io/BufferedInputStream;

    .line 25
    .line 26
    invoke-virtual {p0, v5}, Lcom/android/volley/toolbox/DiskBasedCache;->createInputStream(Ljava/io/File;)Ljava/io/InputStream;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 34
    .line 35
    .line 36
    move-result-wide v8

    .line 37
    invoke-direct {v6, v7, v8, v9}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;-><init>(Ljava/io/InputStream;J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    .line 39
    .line 40
    :try_start_3
    invoke-static {v6}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->readHeader(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    iget-object v8, v7, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {p1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    if-nez v8, :cond_1

    .line 51
    .line 52
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    const/4 v8, 0x4

    .line 55
    new-array v8, v8, [J

    .line 56
    .line 57
    fill-array-data v8, :array_0

    .line 58
    .line 59
    .line 60
    invoke-direct {v3, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    iget-object v7, v7, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    .line 72
    .line 73
    const/4 v9, 0x3

    .line 74
    new-array v9, v9, [Ljava/lang/Object;

    .line 75
    .line 76
    aput-object v8, v9, v1

    .line 77
    .line 78
    aput-object p1, v9, v0

    .line 79
    .line 80
    aput-object v7, v9, v2

    .line 81
    .line 82
    invoke-static {v3, v9}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->removeEntry(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 86
    .line 87
    .line 88
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 89
    .line 90
    .line 91
    monitor-exit p0

    .line 92
    return-object v4

    .line 93
    :catchall_0
    move-exception p1

    .line 94
    goto :goto_2

    .line 95
    :catch_0
    move-exception v3

    .line 96
    goto :goto_1

    .line 97
    :catchall_1
    move-exception v3

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    :try_start_5
    invoke-virtual {v6}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRemaining()J

    .line 100
    .line 101
    .line 102
    move-result-wide v7

    .line 103
    invoke-static {v6, v7, v8}, Lcom/android/volley/toolbox/DiskBasedCache;->streamToBytes(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;J)[B

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    invoke-virtual {v3, v7}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->toCacheEntry([B)Lcom/android/volley/Cache$Entry;

    .line 108
    .line 109
    .line 110
    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 111
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 112
    .line 113
    .line 114
    monitor-exit p0

    .line 115
    return-object v3

    .line 116
    :goto_0
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 117
    .line 118
    .line 119
    throw v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 120
    :goto_1
    :try_start_8
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 121
    .line 122
    new-array v7, v2, [J

    .line 123
    .line 124
    fill-array-data v7, :array_1

    .line 125
    .line 126
    .line 127
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    new-array v2, v2, [Ljava/lang/Object;

    .line 143
    .line 144
    aput-object v5, v2, v1

    .line 145
    .line 146
    aput-object v3, v2, v0

    .line 147
    .line 148
    invoke-static {v6, v2}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->remove(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 152
    .line 153
    .line 154
    monitor-exit p0

    .line 155
    return-object v4

    .line 156
    :goto_2
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 157
    throw p1

    .line 158
    nop

    .line 159
    :array_0
    .array-data 8
        -0x598d179d514ed693L
        -0x1f7d697f8a0f7868L    # -7.975134770440524E156
        0x753ac07acf0e3ef5L    # 5.02100359023736E256
        -0xabaf4b925593735L    # -7.899427937726788E256
    .end array-data

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_1
    .array-data 8
        0x4107e6d227cd0aa2L    # 195802.26943405444
        0xa762c2214911cddL    # 2.8841399906343653E-258
    .end array-data
.end method

.method public getFileForKey(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectorySupplier:Lcom/android/volley/toolbox/DiskBasedCache$FileSupplier;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/android/volley/toolbox/DiskBasedCache$FileSupplier;->get()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public declared-synchronized initialize()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectorySupplier:Lcom/android/volley/toolbox/DiskBasedCache$FileSupplier;

    .line 5
    .line 6
    invoke-interface {v2}, Lcom/android/volley/toolbox/DiskBasedCache$FileSupplier;->get()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_1

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/4 v4, 0x5

    .line 25
    new-array v4, v4, [J

    .line 26
    .line 27
    fill-array-data v4, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    new-array v1, v1, [Ljava/lang/Object;

    .line 42
    .line 43
    aput-object v2, v1, v0

    .line 44
    .line 45
    invoke-static {v3, v1}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    goto :goto_3

    .line 51
    :cond_0
    :goto_0
    monitor-exit p0

    .line 52
    return-void

    .line 53
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 54
    .line 55
    .line 56
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    if-nez v2, :cond_2

    .line 58
    .line 59
    monitor-exit p0

    .line 60
    return-void

    .line 61
    :cond_2
    :try_start_2
    array-length v3, v2

    .line 62
    :goto_1
    if-ge v0, v3, :cond_3

    .line 63
    .line 64
    aget-object v4, v2, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .line 66
    :try_start_3
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 67
    .line 68
    .line 69
    move-result-wide v5

    .line 70
    new-instance v7, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;

    .line 71
    .line 72
    new-instance v8, Ljava/io/BufferedInputStream;

    .line 73
    .line 74
    invoke-virtual {p0, v4}, Lcom/android/volley/toolbox/DiskBasedCache;->createInputStream(Ljava/io/File;)Ljava/io/InputStream;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {v7, v8, v5, v6}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;-><init>(Ljava/io/InputStream;J)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    .line 83
    .line 84
    :try_start_4
    invoke-static {v7}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->readHeader(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    iput-wide v5, v8, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    .line 89
    .line 90
    iget-object v5, v8, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    .line 91
    .line 92
    invoke-direct {p0, v5, v8}, Lcom/android/volley/toolbox/DiskBasedCache;->putEntry(Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 93
    .line 94
    .line 95
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :catchall_1
    move-exception v5

    .line 100
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 101
    .line 102
    .line 103
    throw v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 104
    :catch_0
    :try_start_6
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 105
    .line 106
    .line 107
    :goto_2
    add-int/2addr v0, v1

    .line 108
    goto :goto_1

    .line 109
    :cond_3
    monitor-exit p0

    .line 110
    return-void

    .line 111
    :goto_3
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 112
    throw v0

    .line 113
    :array_0
    .array-data 8
        0x79d7db4170a125fL
        0x199e95bdc4ff4a67L    # 2.811707417162268E-185
        -0x4864c519f09218c2L    # -7.814647684275466E-41
        -0x45fa38eb89ca4046L    # -3.4359082806765296E-29
        -0x1c0115ec9ff79bd4L    # -4.7787878814342803E173
    .end array-data
.end method

.method public declared-synchronized invalidate(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    :cond_1
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw p1
.end method

.method public declared-synchronized put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x5

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-wide v3, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 6
    .line 7
    iget-object v5, p2, Lcom/android/volley/Cache$Entry;->data:[B

    .line 8
    .line 9
    array-length v6, v5

    .line 10
    int-to-long v6, v6

    .line 11
    add-long/2addr v3, v6

    .line 12
    iget v6, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mMaxCacheSizeInBytes:I

    .line 13
    .line 14
    int-to-long v7, v6

    .line 15
    cmp-long v9, v3, v7

    .line 16
    .line 17
    if-lez v9, :cond_0

    .line 18
    .line 19
    array-length v3, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    int-to-float v3, v3

    .line 21
    int-to-float v4, v6

    .line 22
    const v5, 0x3f666666    # 0.9f

    .line 23
    .line 24
    .line 25
    mul-float v4, v4, v5

    .line 26
    .line 27
    cmpl-float v3, v3, v4

    .line 28
    .line 29
    if-lez v3, :cond_0

    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    .line 36
    .line 37
    .line 38
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :try_start_2
    new-instance v4, Ljava/io/BufferedOutputStream;

    .line 40
    .line 41
    invoke-virtual {p0, v3}, Lcom/android/volley/toolbox/DiskBasedCache;->createOutputStream(Ljava/io/File;)Ljava/io/OutputStream;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 46
    .line 47
    .line 48
    new-instance v5, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 49
    .line 50
    invoke-direct {v5, p1, p2}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;-><init>(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v4}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->writeHeader(Ljava/io/OutputStream;)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_1

    .line 58
    .line 59
    iget-object p2, p2, Lcom/android/volley/Cache$Entry;->data:[B

    .line 60
    .line 61
    invoke-virtual {v4, p2}, Ljava/io/OutputStream;->write([B)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 68
    .line 69
    .line 70
    move-result-wide v6

    .line 71
    iput-wide v6, v5, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    .line 72
    .line 73
    invoke-direct {p0, p1, v5}, Lcom/android/volley/toolbox/DiskBasedCache;->putEntry(Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->pruneIfNeeded()V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 81
    .line 82
    .line 83
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array p2, v2, [J

    .line 86
    .line 87
    fill-array-data p2, :array_0

    .line 88
    .line 89
    .line 90
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    new-array v4, v1, [Ljava/lang/Object;

    .line 102
    .line 103
    aput-object p2, v4, v0

    .line 104
    .line 105
    invoke-static {p1, v4}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    new-instance p1, Ljava/io/IOException;

    .line 109
    .line 110
    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    .line 111
    .line 112
    .line 113
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    :catch_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-nez p1, :cond_2

    .line 119
    .line 120
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 121
    .line 122
    new-array p2, v2, [J

    .line 123
    .line 124
    fill-array-data p2, :array_1

    .line 125
    .line 126
    .line 127
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    new-array v1, v1, [Ljava/lang/Object;

    .line 139
    .line 140
    aput-object p2, v1, v0

    .line 141
    .line 142
    invoke-static {p1, v1}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    :cond_2
    invoke-direct {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->initializeIfRootDirectoryDeleted()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    .line 147
    .line 148
    :goto_0
    monitor-exit p0

    .line 149
    return-void

    .line 150
    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 151
    throw p1

    .line 152
    nop

    .line 153
    :array_0
    .array-data 8
        0x3a8428783ed9c4aL
        -0x52c1c0ce983a9d98L    # -9.280287623566806E-91
        0x4c0bbc0c164d6c89L    # 2.1761581394794137E58
        -0x3109860858db8e32L    # -2.4820264651286267E72
        -0x756aa0314b8680ddL
    .end array-data

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :array_1
    .array-data 8
        -0x72917881b98ab9f6L    # -5.588946506954153E-244
        -0x53e7efe37da62ea9L    # -2.8163718471768943E-96
        0x401b47a466f02b46L    # 6.819963081749682
        0x61eae3ad1bca84a2L    # 4.838916537067247E163
        -0xf2d84f79fc30e32L    # -2.9380055562804424E235
    .end array-data
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->removeEntry(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    new-array v1, v1, [J

    .line 20
    .line 21
    fill-array-data v1, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x2

    .line 36
    new-array v2, v2, [Ljava/lang/Object;

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    aput-object p1, v2, v3

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    aput-object v1, v2, p1

    .line 43
    .line 44
    invoke-static {v0, v2}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :goto_0
    monitor-exit p0

    .line 51
    return-void

    .line 52
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    throw p1

    .line 54
    nop

    .line 55
    :array_0
    .array-data 8
        -0x5f128fa22b21517eL    # -4.496703156109969E-150
        0x3385232709b37004L    # 1.6442228821849884E-60
        -0x3ae6cc9b8a51b3ccL    # -7.616459833799597E24
        0x238a8eba4e042c2bL
        -0x14cc88b59fbc407dL    # -2.499846022793555E208
        0x7b92b90b03369d9dL    # 1.7818340026256975E287
        0xc269eb18de3f32cL
        -0x57cfebcab16caadL
    .end array-data
.end method
