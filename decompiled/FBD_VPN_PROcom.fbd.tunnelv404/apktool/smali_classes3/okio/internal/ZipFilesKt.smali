.class public final Lokio/internal/ZipFilesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u001a5\u0010\t\u001a\u00020\u00082\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0014\u0008\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0000\u00a2\u0006\u0004\u0008\t\u0010\n\u001a\u0013\u0010\u000c\u001a\u00020\u0005*\u00020\u000bH\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\r\u001a\u0013\u0010\u000f\u001a\u00020\u000e*\u00020\u000bH\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u001a\u001b\u0010\u0012\u001a\u00020\u0005*\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0005H\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u001a\u0017\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u001a!\u0010\u001b\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0018H\u0000\u00a2\u0006\u0004\u0008\u001b\u0010\u001c\"\u0014\u0010\u001d\u001a\u00020\u00188\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\"\u0014\u0010\u001f\u001a\u00020\u00188\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u001e\u00a8\u0006 "
    }
    d2 = {
        "Lokio/Path;",
        "zipPath",
        "Lokio/FileSystem;",
        "fileSystem",
        "Lkotlin/Function1;",
        "Lokio/internal/ZipEntry;",
        "",
        "predicate",
        "Lokio/ZipFileSystem;",
        "openZip",
        "(Lokio/Path;Lokio/FileSystem;Lkotlin/jvm/functions/Function1;)Lokio/ZipFileSystem;",
        "Lokio/BufferedSource;",
        "readCentralDirectoryZipEntry",
        "(Lokio/BufferedSource;)Lokio/internal/ZipEntry;",
        "",
        "skipLocalHeader",
        "(Lokio/BufferedSource;)V",
        "centralDirectoryZipEntry",
        "readLocalHeader",
        "(Lokio/BufferedSource;Lokio/internal/ZipEntry;)Lokio/internal/ZipEntry;",
        "",
        "filetime",
        "filetimeToEpochMillis",
        "(J)J",
        "",
        "date",
        "time",
        "dosDateTimeToEpochMillis",
        "(II)Ljava/lang/Long;",
        "COMPRESSION_METHOD_DEFLATED",
        "I",
        "COMPRESSION_METHOD_STORED",
        "okio"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nZipFiles.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZipFiles.kt\nokio/internal/ZipFilesKt\n+ 2 Okio.kt\nokio/Okio__OkioKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,503:1\n52#2,4:504\n52#2,4:508\n52#2,22:512\n60#2,10:534\n56#2,3:544\n71#2,3:547\n52#2,22:550\n60#2,10:572\n56#2,3:582\n71#2,3:585\n1053#3:588\n*S KotlinDebug\n*F\n+ 1 ZipFiles.kt\nokio/internal/ZipFilesKt\n*L\n66#1:504,4\n101#1:508,4\n109#1:512,22\n101#1:534,10\n101#1:544,3\n101#1:547,3\n125#1:550,22\n66#1:572,10\n66#1:582,3\n66#1:585,3\n155#1:588\n*E\n"
    }
.end annotation


# static fields
.field public static final COMPRESSION_METHOD_DEFLATED:I = 0x8

.field public static final COMPRESSION_METHOD_STORED:I


# direct methods
.method public static final dosDateTimeToEpochMillis(II)Ljava/lang/Long;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :cond_0
    shr-int/lit8 v0, p0, 0x9

    .line 7
    .line 8
    and-int/lit8 v0, v0, 0x7f

    .line 9
    .line 10
    add-int/lit16 v1, v0, 0x7bc

    .line 11
    .line 12
    shr-int/lit8 v0, p0, 0x5

    .line 13
    .line 14
    and-int/lit8 v2, v0, 0xf

    .line 15
    .line 16
    and-int/lit8 v3, p0, 0x1f

    .line 17
    .line 18
    shr-int/lit8 p0, p1, 0xb

    .line 19
    .line 20
    and-int/lit8 v4, p0, 0x1f

    .line 21
    .line 22
    shr-int/lit8 p0, p1, 0x5

    .line 23
    .line 24
    and-int/lit8 v5, p0, 0x3f

    .line 25
    .line 26
    and-int/lit8 p0, p1, 0x1f

    .line 27
    .line 28
    shl-int/lit8 v6, p0, 0x1

    .line 29
    .line 30
    invoke-static/range {v1 .. v6}, Lokio/internal/_ZlibJvmKt;->datePartsToEpochMillis(IIIIII)J

    .line 31
    .line 32
    .line 33
    move-result-wide p0

    .line 34
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public static final filetimeToEpochMillis(J)J
    .locals 2

    .line 1
    const/16 v0, 0x2710

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    div-long/2addr p0, v0

    .line 5
    const-wide v0, 0xa9730b66800L

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    sub-long/2addr p0, v0

    .line 11
    return-wide p0
.end method

.method public static final openZip(Lokio/Path;Lokio/FileSystem;Lkotlin/jvm/functions/Function1;)Lokio/ZipFileSystem;
    .locals 25
    .param p0    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/FileSystem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            "Lokio/FileSystem;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lokio/internal/ZipEntry;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lokio/ZipFileSystem;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    const-string v0, "not a zip: size="

    .line 8
    .line 9
    const-string v4, "zipPath"

    .line 10
    .line 11
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v4, "fileSystem"

    .line 15
    .line 16
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v4, "predicate"

    .line 20
    .line 21
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v1}, Lokio/FileSystem;->openReadOnly(Lokio/Path;)Lokio/FileHandle;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    :try_start_0
    invoke-virtual {v4}, Lokio/FileHandle;->size()J

    .line 29
    .line 30
    .line 31
    move-result-wide v5

    .line 32
    const/16 v7, 0x16

    .line 33
    .line 34
    int-to-long v7, v7

    .line 35
    sub-long/2addr v5, v7

    .line 36
    const-wide/16 v7, 0x0

    .line 37
    .line 38
    cmp-long v9, v5, v7

    .line 39
    .line 40
    if-ltz v9, :cond_12

    .line 41
    .line 42
    const-wide/32 v9, 0x10000

    .line 43
    .line 44
    .line 45
    sub-long v9, v5, v9

    .line 46
    .line 47
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 48
    .line 49
    .line 50
    move-result-wide v9

    .line 51
    :goto_0
    invoke-virtual {v4, v5, v6}, Lokio/FileHandle;->source(J)Lokio/Source;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    .line 56
    .line 57
    .line 58
    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 59
    :try_start_1
    invoke-interface {v11}, Lokio/BufferedSource;->readIntLe()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const v12, 0x6054b50

    .line 64
    .line 65
    .line 66
    if-ne v0, v12, :cond_10

    .line 67
    .line 68
    invoke-interface {v11}, Lokio/BufferedSource;->readShortLe()S

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    const v9, 0xffff

    .line 73
    .line 74
    .line 75
    and-int/2addr v0, v9

    .line 76
    invoke-interface {v11}, Lokio/BufferedSource;->readShortLe()S

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    and-int/2addr v10, v9

    .line 81
    invoke-interface {v11}, Lokio/BufferedSource;->readShortLe()S

    .line 82
    .line 83
    .line 84
    move-result v12

    .line 85
    and-int/2addr v12, v9

    .line 86
    int-to-long v14, v12

    .line 87
    invoke-interface {v11}, Lokio/BufferedSource;->readShortLe()S

    .line 88
    .line 89
    .line 90
    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    .line 91
    and-int/2addr v12, v9

    .line 92
    int-to-long v12, v12

    .line 93
    const-string v7, "unsupported zip: spanned"

    .line 94
    .line 95
    cmp-long v8, v14, v12

    .line 96
    .line 97
    if-nez v8, :cond_f

    .line 98
    .line 99
    if-nez v0, :cond_f

    .line 100
    .line 101
    if-nez v10, :cond_f

    .line 102
    .line 103
    const-wide/16 v12, 0x4

    .line 104
    .line 105
    :try_start_2
    invoke-interface {v11, v12, v13}, Lokio/BufferedSource;->skip(J)V

    .line 106
    .line 107
    .line 108
    invoke-interface {v11}, Lokio/BufferedSource;->readIntLe()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    int-to-long v12, v0

    .line 113
    const-wide v16, 0xffffffffL

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    and-long v16, v12, v16

    .line 119
    .line 120
    invoke-interface {v11}, Lokio/BufferedSource;->readShortLe()S

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    and-int/2addr v0, v9

    .line 125
    new-instance v8, L뒝딀듌든뒵듟뒨뒐뒘땡땳듨듰땐땦뒬두둣뎻딀땍딅뎡될됫돶땨디뒼뒈땟땬땧뒵돴딄뎻딸듰딜드딸땄딻딁땐땭뎬땩땮땩땹둥듽되땥땋딀딅땬땵듼뒷뒛듰듼뒼돶돷땤땍땁돴땧돠듔뎻돵듼뒵땲둣돤땔듬돰둠땯뒬땪뒬딸됴되들뒤딤돴땐땀땻됴돛뒋드뎸딹뎹뒘땐땡듰뎰딹땲뒻드뒾딁돛뎡둣땀돷뒀땮둘득돠땧;

    .line 126
    .line 127
    move-object v13, v8

    .line 128
    move/from16 v18, v0

    .line 129
    .line 130
    invoke-direct/range {v13 .. v18}, L뒝딀듌든뒵듟뒨뒐뒘땡땳듨듰땐땦뒬두둣뎻딀땍딅뎡될됫돶땨디뒼뒈땟땬땧뒵돴딄뎻딸듰딜드딸땄딻딁땐땭뎬땩땮땩땹둥듽되땥땋딀딅땬땵듼뒷뒛듰듼뒼돶돷땤땍땁돴땧돠듔뎻돵듼뒵땲둣돤땔듬돰둠땯뒬땪뒬딸됴되들뒤딤돴땐땀땻됴돛뒋드뎸딹뎹뒘땐땡듰뎰딹땲뒻드뒾딁돛뎡둣땀돷뒀땮둘득돠땧;-><init>(JJI)V

    .line 131
    .line 132
    .line 133
    int-to-long v9, v0

    .line 134
    invoke-interface {v11, v9, v10}, Lokio/BufferedSource;->readUtf8(J)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    .line 138
    :try_start_3
    invoke-interface {v11}, Lokio/Source;->close()V

    .line 139
    .line 140
    .line 141
    const/16 v10, 0x14

    .line 142
    .line 143
    int-to-long v10, v10

    .line 144
    sub-long/2addr v5, v10

    .line 145
    const-wide/16 v12, 0x0

    .line 146
    .line 147
    cmp-long v11, v5, v12

    .line 148
    .line 149
    if-lez v11, :cond_8

    .line 150
    .line 151
    invoke-virtual {v4, v5, v6}, Lokio/FileHandle;->source(J)Lokio/Source;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    invoke-static {v5}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    .line 156
    .line 157
    .line 158
    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 159
    :try_start_4
    invoke-interface {v5}, Lokio/BufferedSource;->readIntLe()I

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    const v11, 0x7064b50

    .line 164
    .line 165
    .line 166
    if-ne v6, v11, :cond_5

    .line 167
    .line 168
    invoke-interface {v5}, Lokio/BufferedSource;->readIntLe()I

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    invoke-interface {v5}, Lokio/BufferedSource;->readLongLe()J

    .line 173
    .line 174
    .line 175
    move-result-wide v14

    .line 176
    invoke-interface {v5}, Lokio/BufferedSource;->readIntLe()I

    .line 177
    .line 178
    .line 179
    move-result v11

    .line 180
    const/4 v10, 0x1

    .line 181
    if-ne v11, v10, :cond_4

    .line 182
    .line 183
    if-nez v6, :cond_4

    .line 184
    .line 185
    invoke-virtual {v4, v14, v15}, Lokio/FileHandle;->source(J)Lokio/Source;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    invoke-static {v6}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    .line 190
    .line 191
    .line 192
    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 193
    :try_start_5
    invoke-interface {v6}, Lokio/BufferedSource;->readIntLe()I

    .line 194
    .line 195
    .line 196
    move-result v10

    .line 197
    const v11, 0x6064b50

    .line 198
    .line 199
    .line 200
    if-ne v10, v11, :cond_1

    .line 201
    .line 202
    const-wide/16 v10, 0xc

    .line 203
    .line 204
    invoke-interface {v6, v10, v11}, Lokio/BufferedSource;->skip(J)V

    .line 205
    .line 206
    .line 207
    invoke-interface {v6}, Lokio/BufferedSource;->readIntLe()I

    .line 208
    .line 209
    .line 210
    move-result v10

    .line 211
    invoke-interface {v6}, Lokio/BufferedSource;->readIntLe()I

    .line 212
    .line 213
    .line 214
    move-result v11

    .line 215
    invoke-interface {v6}, Lokio/BufferedSource;->readLongLe()J

    .line 216
    .line 217
    .line 218
    move-result-wide v20

    .line 219
    invoke-interface {v6}, Lokio/BufferedSource;->readLongLe()J

    .line 220
    .line 221
    .line 222
    move-result-wide v14

    .line 223
    cmp-long v17, v20, v14

    .line 224
    .line 225
    if-nez v17, :cond_0

    .line 226
    .line 227
    if-nez v10, :cond_0

    .line 228
    .line 229
    if-nez v11, :cond_0

    .line 230
    .line 231
    const-wide/16 v10, 0x8

    .line 232
    .line 233
    invoke-interface {v6, v10, v11}, Lokio/BufferedSource;->skip(J)V

    .line 234
    .line 235
    .line 236
    invoke-interface {v6}, Lokio/BufferedSource;->readLongLe()J

    .line 237
    .line 238
    .line 239
    move-result-wide v22

    .line 240
    new-instance v7, L뒝딀듌든뒵듟뒨뒐뒘땡땳듨듰땐땦뒬두둣뎻딀땍딅뎡될됫돶땨디뒼뒈땟땬땧뒵돴딄뎻딸듰딜드딸땄딻딁땐땭뎬땩땮땩땹둥듽되땥땋딀딅땬땵듼뒷뒛듰듼뒼돶돷땤땍땁돴땧돠듔뎻돵듼뒵땲둣돤땔듬돰둠땯뒬땪뒬딸됴되들뒤딤돴땐땀땻됴돛뒋드뎸딹뎹뒘땐땡듰뎰딹땲뒻드뒾딁돛뎡둣땀돷뒀땮둘득돠땧;

    .line 241
    .line 242
    move-object/from16 v19, v7

    .line 243
    .line 244
    move/from16 v24, v0

    .line 245
    .line 246
    invoke-direct/range {v19 .. v24}, L뒝딀듌든뒵듟뒨뒐뒘땡땳듨듰땐땦뒬두둣뎻딀땍딅뎡될됫돶땨디뒼뒈땟땬땧뒵돴딄뎻딸듰딜드딸땄딻딁땐땭뎬땩땮땩땹둥듽되땥땋딀딅땬땵듼뒷뒛듰듼뒼돶돷땤땍땁돴땧돠듔뎻돵듼뒵땲둣돤땔듬돰둠땯뒬땪뒬딸됴되들뒤딤돴땐땀땻됴돛뒋드뎸딹뎹뒘땐땡듰뎰딹땲뒻드뒾딁돛뎡둣땀돷뒀땮둘득돠땧;-><init>(JJI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 247
    .line 248
    .line 249
    :try_start_6
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 250
    .line 251
    .line 252
    const/4 v0, 0x0

    .line 253
    goto :goto_1

    .line 254
    :catchall_0
    move-exception v0

    .line 255
    :goto_1
    move-object v8, v7

    .line 256
    goto :goto_5

    .line 257
    :cond_0
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    .line 258
    .line 259
    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    throw v0

    .line 263
    :goto_2
    move-object v7, v0

    .line 264
    goto :goto_3

    .line 265
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 266
    .line 267
    new-instance v7, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .line 271
    .line 272
    const-string v14, "bad zip: expected "

    .line 273
    .line 274
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-static {v11}, Lokio/internal/ZipFilesKt;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(I)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v11

    .line 281
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v11, " but was "

    .line 285
    .line 286
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-static {v10}, Lokio/internal/ZipFilesKt;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(I)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v10

    .line 293
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v7

    .line 300
    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 304
    :catchall_1
    move-exception v0

    .line 305
    goto :goto_2

    .line 306
    :goto_3
    if-eqz v6, :cond_2

    .line 307
    .line 308
    :try_start_8
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 309
    .line 310
    .line 311
    goto :goto_4

    .line 312
    :catchall_2
    move-exception v0

    .line 313
    move-object v6, v0

    .line 314
    :try_start_9
    invoke-static {v7, v6}, L뒝땻뎡딸땭딐뒉뎽득된뒘땲땃딞뒬뎽돝딁뒻딌딃뒀뒤딃뒙됩딜땱된듔듔뒀땱딜듔뒹땰뎸딌뒾땦됩듸뒤딌딜땍둬땳듟뎡듰땱딃딝땪뒷딀딁도땮딞뎰뎸뒉두뒋뎨뎸땀됨듰땱돴땱드딽땵둣뎠둔돶둥딽뒻듻뎠돴딽땁뒉듻둘둥도돠뎡땰딠돳땟둠땫듌땣돝땬돠뒻땱뒤딅뒤딸됴돤땭뎽땩듼땝뒷딸땸뒨됐뒀듻뒀땸;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 315
    .line 316
    .line 317
    goto :goto_4

    .line 318
    :catchall_3
    move-exception v0

    .line 319
    move-object v6, v0

    .line 320
    goto :goto_7

    .line 321
    :cond_2
    :goto_4
    move-object v0, v7

    .line 322
    :goto_5
    if-nez v0, :cond_3

    .line 323
    .line 324
    goto :goto_6

    .line 325
    :cond_3
    throw v0

    .line 326
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 327
    .line 328
    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 332
    :cond_5
    :goto_6
    :try_start_a
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 333
    .line 334
    .line 335
    const/4 v0, 0x0

    .line 336
    goto :goto_9

    .line 337
    :catchall_4
    move-exception v0

    .line 338
    goto :goto_9

    .line 339
    :goto_7
    if-eqz v5, :cond_6

    .line 340
    .line 341
    :try_start_b
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 342
    .line 343
    .line 344
    goto :goto_8

    .line 345
    :catchall_5
    move-exception v0

    .line 346
    move-object v5, v0

    .line 347
    :try_start_c
    invoke-static {v6, v5}, L뒝땻뎡딸땭딐뒉뎽득된뒘땲땃딞뒬뎽돝딁뒻딌딃뒀뒤딃뒙됩딜땱된듔듔뒀땱딜듔뒹땰뎸딌뒾땦됩듸뒤딌딜땍둬땳듟뎡듰땱딃딝땪뒷딀딁도땮딞뎰뎸뒉두뒋뎨뎸땀됨듰땱돴땱드딽땵둣뎠둔돶둥딽뒻듻뎠돴딽땁뒉듻둘둥도돠뎡땰딠돳땟둠땫듌땣돝땬돠뒻땱뒤딅뒤딸됴돤땭뎽땩듼땝뒷딸땸뒨됐뒀듻뒀땸;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 348
    .line 349
    .line 350
    goto :goto_8

    .line 351
    :catchall_6
    move-exception v0

    .line 352
    move-object v1, v0

    .line 353
    goto/16 :goto_11

    .line 354
    .line 355
    :cond_6
    :goto_8
    move-object v0, v6

    .line 356
    :goto_9
    if-nez v0, :cond_7

    .line 357
    .line 358
    goto :goto_a

    .line 359
    :cond_7
    throw v0

    .line 360
    :cond_8
    :goto_a
    new-instance v5, Ljava/util/ArrayList;

    .line 361
    .line 362
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .line 364
    .line 365
    iget-wide v6, v8, L뒝딀듌든뒵듟뒨뒐뒘땡땳듨듰땐땦뒬두둣뎻딀땍딅뎡될됫돶땨디뒼뒈땟땬땧뒵돴딄뎻딸듰딜드딸땄딻딁땐땭뎬땩땮땩땹둥듽되땥땋딀딅땬땵듼뒷뒛듰듼뒼돶돷땤땍땁돴땧돠듔뎻돵듼뒵땲둣돤땔듬돰둠땯뒬땪뒬딸됴되들뒤딤돴땐땀땻됴돛뒋드뎸딹뎹뒘땐땡듰뎰딹땲뒻드뒾딁돛뎡둣땀돷뒀땮둘득돠땧;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:J

    .line 366
    .line 367
    invoke-virtual {v4, v6, v7}, Lokio/FileHandle;->source(J)Lokio/Source;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    .line 372
    .line 373
    .line 374
    move-result-object v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 375
    :try_start_d
    iget-wide v10, v8, L뒝딀듌든뒵듟뒨뒐뒘땡땳듨듰땐땦뒬두둣뎻딀땍딅뎡될됫돶땨디뒼뒈땟땬땧뒵돴딄뎻딸듰딜드딸땄딻딁땐땭뎬땩땮땩땹둥듽되땥땋딀딅땬땵듼뒷뒛듰듼뒼돶돷땤땍땁돴땧돠듔뎻돵듼뒵땲둣돤땔듬돰둠땯뒬땪뒬딸됴되들뒤딤돴땐땀땻됴돛뒋드뎸딹뎹뒘땐땡듰뎰딹땲뒻드뒾딁돛뎡둣땀돷뒀땮둘득돠땧;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:J

    .line 376
    .line 377
    :goto_b
    cmp-long v0, v12, v10

    .line 378
    .line 379
    if-gez v0, :cond_b

    .line 380
    .line 381
    invoke-static {v6}, Lokio/internal/ZipFilesKt;->readCentralDirectoryZipEntry(Lokio/BufferedSource;)Lokio/internal/ZipEntry;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-virtual {v0}, Lokio/internal/ZipEntry;->getOffset()J

    .line 386
    .line 387
    .line 388
    move-result-wide v14

    .line 389
    move-wide/from16 v17, v10

    .line 390
    .line 391
    iget-wide v10, v8, L뒝딀듌든뒵듟뒨뒐뒘땡땳듨듰땐땦뒬두둣뎻딀땍딅뎡될됫돶땨디뒼뒈땟땬땧뒵돴딄뎻딸듰딜드딸땄딻딁땐땭뎬땩땮땩땹둥듽되땥땋딀딅땬땵듼뒷뒛듰듼뒼돶돷땤땍땁돴땧돠듔뎻돵듼뒵땲둣돤땔듬돰둠땯뒬땪뒬딸됴되들뒤딤돴땐땀땻됴돛뒋드뎸딹뎹뒘땐땡듰뎰딹땲뒻드뒾딁돛뎡둣땀돷뒀땮둘득돠땧;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:J

    .line 392
    .line 393
    cmp-long v7, v14, v10

    .line 394
    .line 395
    if-gez v7, :cond_a

    .line 396
    .line 397
    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v7

    .line 401
    check-cast v7, Ljava/lang/Boolean;

    .line 402
    .line 403
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 404
    .line 405
    .line 406
    move-result v7

    .line 407
    if-eqz v7, :cond_9

    .line 408
    .line 409
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    goto :goto_c

    .line 413
    :catchall_7
    move-exception v0

    .line 414
    move-object v10, v0

    .line 415
    goto :goto_e

    .line 416
    :cond_9
    :goto_c
    const-wide/16 v10, 0x1

    .line 417
    .line 418
    add-long/2addr v12, v10

    .line 419
    move-wide/from16 v10, v17

    .line 420
    .line 421
    goto :goto_b

    .line 422
    :cond_a
    new-instance v0, Ljava/io/IOException;

    .line 423
    .line 424
    const-string v3, "bad zip: local file header offset >= central directory offset"

    .line 425
    .line 426
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 430
    :cond_b
    if-eqz v6, :cond_c

    .line 431
    .line 432
    :try_start_e
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 433
    .line 434
    .line 435
    goto :goto_d

    .line 436
    :catchall_8
    move-exception v0

    .line 437
    move-object v10, v0

    .line 438
    goto :goto_f

    .line 439
    :cond_c
    :goto_d
    const/4 v10, 0x0

    .line 440
    goto :goto_f

    .line 441
    :goto_e
    if-eqz v6, :cond_d

    .line 442
    .line 443
    :try_start_f
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 444
    .line 445
    .line 446
    goto :goto_f

    .line 447
    :catchall_9
    move-exception v0

    .line 448
    move-object v3, v0

    .line 449
    :try_start_10
    invoke-static {v10, v3}, L뒝땻뎡딸땭딐뒉뎽득된뒘땲땃딞뒬뎽돝딁뒻딌딃뒀뒤딃뒙됩딜땱된듔듔뒀땱딜듔뒹땰뎸딌뒾땦됩듸뒤딌딜땍둬땳듟뎡듰땱딃딝땪뒷딀딁도땮딞뎰뎸뒉두뒋뎨뎸땀됨듰땱돴땱드딽땵둣뎠둔돶둥딽뒻듻뎠돴딽땁뒉듻둘둥도돠뎡땰딠돳땟둠땫듌땣돝땬돠뒻땱뒤딅뒤딸됴돤땭뎽땩듼땝뒷딸땸뒨됐뒀듻뒀땸;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 450
    .line 451
    .line 452
    :cond_d
    :goto_f
    if-nez v10, :cond_e

    .line 453
    .line 454
    invoke-static {v5}, Lokio/internal/ZipFilesKt;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/util/ArrayList;)Ljava/util/Map;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    new-instance v3, Lokio/ZipFileSystem;

    .line 459
    .line 460
    invoke-direct {v3, v1, v2, v0, v9}, Lokio/ZipFileSystem;-><init>(Lokio/Path;Lokio/FileSystem;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 461
    .line 462
    .line 463
    :try_start_11
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    .line 464
    .line 465
    .line 466
    :catchall_a
    return-object v3

    .line 467
    :cond_e
    :try_start_12
    throw v10
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 468
    :catchall_b
    move-exception v0

    .line 469
    goto :goto_10

    .line 470
    :cond_f
    :try_start_13
    new-instance v0, Ljava/io/IOException;

    .line 471
    .line 472
    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    .line 476
    :cond_10
    move-wide v12, v7

    .line 477
    :try_start_14
    invoke-interface {v11}, Lokio/Source;->close()V

    .line 478
    .line 479
    .line 480
    const-wide/16 v7, -0x1

    .line 481
    .line 482
    add-long/2addr v5, v7

    .line 483
    cmp-long v0, v5, v9

    .line 484
    .line 485
    if-ltz v0, :cond_11

    .line 486
    .line 487
    move-wide v7, v12

    .line 488
    goto/16 :goto_0

    .line 489
    .line 490
    :cond_11
    new-instance v0, Ljava/io/IOException;

    .line 491
    .line 492
    const-string v1, "not a zip: end of central directory signature not found"

    .line 493
    .line 494
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    throw v0

    .line 498
    :goto_10
    invoke-interface {v11}, Lokio/Source;->close()V

    .line 499
    .line 500
    .line 501
    throw v0

    .line 502
    :cond_12
    new-instance v1, Ljava/io/IOException;

    .line 503
    .line 504
    new-instance v2, Ljava/lang/StringBuilder;

    .line 505
    .line 506
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v4}, Lokio/FileHandle;->size()J

    .line 510
    .line 511
    .line 512
    move-result-wide v5

    .line 513
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    throw v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 524
    :goto_11
    if-eqz v4, :cond_13

    .line 525
    .line 526
    :try_start_15
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    .line 527
    .line 528
    .line 529
    goto :goto_12

    .line 530
    :catchall_c
    move-exception v0

    .line 531
    move-object v2, v0

    .line 532
    invoke-static {v1, v2}, L뒝땻뎡딸땭딐뒉뎽득된뒘땲땃딞뒬뎽돝딁뒻딌딃뒀뒤딃뒙됩딜땱된듔듔뒀땱딜듔뒹땰뎸딌뒾땦됩듸뒤딌딜땍둬땳듟뎡듰땱딃딝땪뒷딀딁도땮딞뎰뎸뒉두뒋뎨뎸땀됨듰땱돴땱드딽땵둣뎠둔돶둥딽뒻듻뎠돴딽땁뒉듻둘둥도돠뎡땰딠돳땟둠땫듌땣돝땬돠뒻땱뒤딅뒤딸됴돤땭뎽땩듼땝뒷딸땸뒨됐뒀듻뒀땸;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 533
    .line 534
    .line 535
    :cond_13
    :goto_12
    throw v1
.end method

.method public static synthetic openZip$default(Lokio/Path;Lokio/FileSystem;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lokio/ZipFileSystem;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x4

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    new-instance p2, L땰듌듟뎡땥뒈뎠땳듨땬땐딨땃땣땍뎻둡둣듽땅땬딹딸될뒤딸둬땡뒛둣딸돶되뒈둘뒋도딟뎡돼딝듨듟돸땤딸디딟돴땻드뎽둑따뒬됩듔땸뒷뒘땸됫뒾땣따딜뒬듰땃딸딽땳땯뒋땤땨돤든딐듐딻된듔됨돰됴땃땬딹뒈땥땣돝땐뒀땐든뒵뒵디땁땔땳둡두딐뒬뎹땻딹뒀뒘뒝땔땋돶뒝딌땔뒙돸딞땟득땃땥둠듰땔뒘;

    .line 6
    .line 7
    const/4 p3, 0x5

    .line 8
    invoke-direct {p2, p3}, L땰듌듟뎡땥뒈뎠땳듨땬땐딨땃땣땍뎻둡둣듽땅땬딹딸될뒤딸둬땡뒛둣딸돶되뒈둘뒋도딟뎡돼딝듨듟돸땤딸디딟돴땻드뎽둑따뒬됩듔땸뒷뒘땸됫뒾땣따딜뒬듰땃딸딽땳땯뒋땤땨돤든딐듐딻된듔됨돰됴땃땬딹뒈땥땣돝땐뒀땐든뒵뒵디땁땔땳둡두딐뒬뎹땻딹뒀뒘뒝땔땋돶뒝딌땔뒙돸딞땟득땃땥둠듰땔뒘;-><init>(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {p0, p1, p2}, Lokio/internal/ZipFilesKt;->openZip(Lokio/Path;Lokio/FileSystem;Lkotlin/jvm/functions/Function1;)Lokio/ZipFileSystem;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static final readCentralDirectoryZipEntry(Lokio/BufferedSource;)Lokio/internal/ZipEntry;
    .locals 39
    .param p0    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    const-string v0, "<this>"

    .line 4
    .line 5
    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface/range {p0 .. p0}, Lokio/BufferedSource;->readIntLe()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, 0x2014b50

    .line 13
    .line 14
    .line 15
    if-ne v0, v1, :cond_7

    .line 16
    .line 17
    const-wide/16 v0, 0x4

    .line 18
    .line 19
    invoke-interface {v11, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 20
    .line 21
    .line 22
    invoke-interface/range {p0 .. p0}, Lokio/BufferedSource;->readShortLe()S

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const v1, 0xffff

    .line 27
    .line 28
    .line 29
    and-int v2, v0, v1

    .line 30
    .line 31
    const/4 v12, 0x1

    .line 32
    and-int/2addr v0, v12

    .line 33
    if-nez v0, :cond_6

    .line 34
    .line 35
    invoke-interface/range {p0 .. p0}, Lokio/BufferedSource;->readShortLe()S

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    and-int v23, v0, v1

    .line 40
    .line 41
    invoke-interface/range {p0 .. p0}, Lokio/BufferedSource;->readShortLe()S

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    and-int v27, v0, v1

    .line 46
    .line 47
    invoke-interface/range {p0 .. p0}, Lokio/BufferedSource;->readShortLe()S

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    and-int v26, v0, v1

    .line 52
    .line 53
    invoke-interface/range {p0 .. p0}, Lokio/BufferedSource;->readIntLe()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    int-to-long v2, v0

    .line 58
    const-wide v4, 0xffffffffL

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    and-long v17, v2, v4

    .line 64
    .line 65
    new-instance v13, Lkotlin/jvm/internal/Ref$LongRef;

    .line 66
    .line 67
    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-interface/range {p0 .. p0}, Lokio/BufferedSource;->readIntLe()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    int-to-long v2, v0

    .line 75
    and-long/2addr v2, v4

    .line 76
    iput-wide v2, v13, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 77
    .line 78
    new-instance v15, Lkotlin/jvm/internal/Ref$LongRef;

    .line 79
    .line 80
    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-interface/range {p0 .. p0}, Lokio/BufferedSource;->readIntLe()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    int-to-long v2, v0

    .line 88
    and-long/2addr v2, v4

    .line 89
    iput-wide v2, v15, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 90
    .line 91
    invoke-interface/range {p0 .. p0}, Lokio/BufferedSource;->readShortLe()S

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    and-int/2addr v0, v1

    .line 96
    invoke-interface/range {p0 .. p0}, Lokio/BufferedSource;->readShortLe()S

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    and-int v14, v2, v1

    .line 101
    .line 102
    invoke-interface/range {p0 .. p0}, Lokio/BufferedSource;->readShortLe()S

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    and-int v10, v2, v1

    .line 107
    .line 108
    const-wide/16 v1, 0x8

    .line 109
    .line 110
    invoke-interface {v11, v1, v2}, Lokio/BufferedSource;->skip(J)V

    .line 111
    .line 112
    .line 113
    new-instance v9, Lkotlin/jvm/internal/Ref$LongRef;

    .line 114
    .line 115
    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-interface/range {p0 .. p0}, Lokio/BufferedSource;->readIntLe()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    int-to-long v1, v1

    .line 123
    and-long/2addr v1, v4

    .line 124
    iput-wide v1, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 125
    .line 126
    int-to-long v0, v0

    .line 127
    invoke-interface {v11, v0, v1}, Lokio/BufferedSource;->readUtf8(J)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    const/4 v7, 0x0

    .line 132
    const/4 v6, 0x2

    .line 133
    const/4 v2, 0x0

    .line 134
    invoke-static {v8, v7, v7, v6, v2}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-nez v0, :cond_5

    .line 139
    .line 140
    iget-wide v0, v15, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 141
    .line 142
    const-wide/16 v19, 0x0

    .line 143
    .line 144
    const/16 v3, 0x8

    .line 145
    .line 146
    cmp-long v16, v0, v4

    .line 147
    .line 148
    if-nez v16, :cond_0

    .line 149
    .line 150
    int-to-long v0, v3

    .line 151
    goto :goto_0

    .line 152
    :cond_0
    move-wide/from16 v0, v19

    .line 153
    .line 154
    :goto_0
    iget-wide v6, v13, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 155
    .line 156
    cmp-long v22, v6, v4

    .line 157
    .line 158
    if-nez v22, :cond_1

    .line 159
    .line 160
    int-to-long v6, v3

    .line 161
    add-long/2addr v0, v6

    .line 162
    :cond_1
    iget-wide v6, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 163
    .line 164
    cmp-long v22, v6, v4

    .line 165
    .line 166
    if-nez v22, :cond_2

    .line 167
    .line 168
    int-to-long v3, v3

    .line 169
    add-long/2addr v0, v3

    .line 170
    :cond_2
    move-wide/from16 v24, v0

    .line 171
    .line 172
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 173
    .line 174
    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 175
    .line 176
    .line 177
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 178
    .line 179
    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 180
    .line 181
    .line 182
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 183
    .line 184
    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 185
    .line 186
    .line 187
    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 188
    .line 189
    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 190
    .line 191
    .line 192
    new-instance v3, L땵딨뒻듻뒷듻둣도땭듟땀도돼득딄돤뒋둔땨땋뎨돶딽돰돳디돼딹땧땃돼뒘땜땡돸딌돸딨돵땱뎠땝땅땯뒐땜땟뒈땵뒹돼딎돼딨뒀듰되돳딹될뒝둘딸듌땃듻뎨듟땀둬땜땤뒻듐뒷땀둬뒙땅땀둬딎딐돰딃듸뒈뒬땄두듟돷뒻두땜땐딝땄뒈딝든뒤뒾돼둠땔딌든딹딄뒼듬돼뎸됩딀땧돸땔땔땟뒝뎹둣됨뎰뒼듔딄되;

    .line 193
    .line 194
    move-object v0, v3

    .line 195
    move-object v1, v4

    .line 196
    move-object v12, v3

    .line 197
    move-wide/from16 v2, v24

    .line 198
    .line 199
    move-object/from16 v36, v4

    .line 200
    .line 201
    move-object v4, v15

    .line 202
    move-object/from16 v30, v5

    .line 203
    .line 204
    move-object/from16 v5, p0

    .line 205
    .line 206
    move-object/from16 v29, v6

    .line 207
    .line 208
    move-object/from16 v28, v15

    .line 209
    .line 210
    const/4 v15, 0x2

    .line 211
    move-object v6, v13

    .line 212
    move-object/from16 v31, v7

    .line 213
    .line 214
    const/4 v15, 0x0

    .line 215
    move-object v7, v9

    .line 216
    move-object/from16 v37, v8

    .line 217
    .line 218
    move-object/from16 v8, v31

    .line 219
    .line 220
    move-object/from16 v38, v9

    .line 221
    .line 222
    move-object/from16 v9, v29

    .line 223
    .line 224
    move v15, v10

    .line 225
    move-object/from16 v10, v30

    .line 226
    .line 227
    invoke-direct/range {v0 .. v10}, L땵딨뒻듻뒷듻둣도땭듟땀도돼득딄돤뒋둔땨땋뎨돶딽돰돳디돼딹땧땃돼뒘땜땡돸딌돸딨돵땱뎠땝땅땯뒐땜땟뒈땵뒹돼딎돼딨뒀듰되돳딹될뒝둘딸듌땃듻뎨듟땀둬땜땤뒻듐뒷땀둬뒙땅땀둬딎딐돰딃듸뒈뒬땄두듟돷뒻두땜땐딝땄뒈딝든뒤뒾돼둠땔딌든딹딄뒼듬돼뎸됩딀땧돸땔땔땟뒝뎹둣됨뎰뒼듔딄되;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;JLkotlin/jvm/internal/Ref$LongRef;Lokio/BufferedSource;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 228
    .line 229
    .line 230
    invoke-static {v11, v14, v12}, Lokio/internal/ZipFilesKt;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lokio/BufferedSource;ILkotlin/jvm/functions/Function2;)V

    .line 231
    .line 232
    .line 233
    cmp-long v0, v24, v19

    .line 234
    .line 235
    if-lez v0, :cond_4

    .line 236
    .line 237
    move-object/from16 v0, v36

    .line 238
    .line 239
    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 240
    .line 241
    if-eqz v0, :cond_3

    .line 242
    .line 243
    goto :goto_1

    .line 244
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 245
    .line 246
    const-string v1, "bad zip: zip64 extra required but absent"

    .line 247
    .line 248
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    throw v0

    .line 252
    :cond_4
    :goto_1
    int-to-long v0, v15

    .line 253
    invoke-interface {v11, v0, v1}, Lokio/BufferedSource;->readUtf8(J)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v16

    .line 257
    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    .line 258
    .line 259
    const-string v1, "/"

    .line 260
    .line 261
    const/4 v2, 0x1

    .line 262
    const/4 v3, 0x0

    .line 263
    const/4 v4, 0x0

    .line 264
    invoke-static {v0, v1, v3, v2, v4}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/lang/String;ZILjava/lang/Object;)Lokio/Path;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    move-object/from16 v2, v37

    .line 269
    .line 270
    invoke-virtual {v0, v2}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    .line 271
    .line 272
    .line 273
    move-result-object v14

    .line 274
    const/4 v0, 0x2

    .line 275
    invoke-static {v2, v1, v3, v0, v4}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v15

    .line 279
    move-object/from16 v0, v28

    .line 280
    .line 281
    new-instance v1, Lokio/internal/ZipEntry;

    .line 282
    .line 283
    move-object v2, v13

    .line 284
    move-object v13, v1

    .line 285
    iget-wide v2, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 286
    .line 287
    move-wide/from16 v19, v2

    .line 288
    .line 289
    iget-wide v2, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 290
    .line 291
    move-wide/from16 v21, v2

    .line 292
    .line 293
    move-object/from16 v0, v38

    .line 294
    .line 295
    iget-wide v2, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 296
    .line 297
    move-wide/from16 v24, v2

    .line 298
    .line 299
    move-object/from16 v0, v31

    .line 300
    .line 301
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 302
    .line 303
    move-object/from16 v28, v0

    .line 304
    .line 305
    check-cast v28, Ljava/lang/Long;

    .line 306
    .line 307
    move-object/from16 v0, v29

    .line 308
    .line 309
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 310
    .line 311
    move-object/from16 v29, v0

    .line 312
    .line 313
    check-cast v29, Ljava/lang/Long;

    .line 314
    .line 315
    move-object/from16 v0, v30

    .line 316
    .line 317
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 318
    .line 319
    move-object/from16 v30, v0

    .line 320
    .line 321
    check-cast v30, Ljava/lang/Long;

    .line 322
    .line 323
    const/16 v32, 0x0

    .line 324
    .line 325
    const/16 v33, 0x0

    .line 326
    .line 327
    const/16 v31, 0x0

    .line 328
    .line 329
    const v34, 0xe000

    .line 330
    .line 331
    .line 332
    const/16 v35, 0x0

    .line 333
    .line 334
    invoke-direct/range {v13 .. v35}, Lokio/internal/ZipEntry;-><init>(Lokio/Path;ZLjava/lang/String;JJJIJIILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 335
    .line 336
    .line 337
    return-object v1

    .line 338
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .line 339
    .line 340
    const-string v1, "bad zip: filename contains 0x00"

    .line 341
    .line 342
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    throw v0

    .line 346
    :cond_6
    new-instance v0, Ljava/io/IOException;

    .line 347
    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    const-string v3, "unsupported zip: general purpose bit flag="

    .line 351
    .line 352
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-static {v2}, Lokio/internal/ZipFilesKt;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(I)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    throw v0

    .line 370
    :cond_7
    new-instance v2, Ljava/io/IOException;

    .line 371
    .line 372
    new-instance v3, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    const-string v4, "bad zip: expected "

    .line 375
    .line 376
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-static {v1}, Lokio/internal/ZipFilesKt;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(I)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    const-string v1, " but was "

    .line 387
    .line 388
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-static {v0}, Lokio/internal/ZipFilesKt;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(I)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    throw v2
.end method

.method public static final readLocalHeader(Lokio/BufferedSource;Lokio/internal/ZipEntry;)Lokio/internal/ZipEntry;
    .locals 1
    .param p0    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/internal/ZipEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "centralDirectoryZipEntry"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1}, Lokio/internal/ZipFilesKt;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lokio/BufferedSource;Lokio/internal/ZipEntry;)Lokio/internal/ZipEntry;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public static final skipLocalHeader(Lokio/BufferedSource;)V
    .locals 1
    .param p0    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p0, v0}, Lokio/internal/ZipFilesKt;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lokio/BufferedSource;Lokio/internal/ZipEntry;)Lokio/internal/ZipEntry;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/util/ArrayList;)Ljava/util/Map;
    .locals 28

    .line 1
    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    .line 2
    .line 3
    const-string v1, "/"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-static {v0, v1, v2, v3, v4}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/lang/String;ZILjava/lang/Object;)Lokio/Path;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    move-object v6, v0

    .line 13
    new-instance v1, Lokio/internal/ZipEntry;

    .line 14
    .line 15
    move-object v5, v1

    .line 16
    const/16 v24, 0x0

    .line 17
    .line 18
    const/16 v25, 0x0

    .line 19
    .line 20
    const/4 v7, 0x1

    .line 21
    const/4 v8, 0x0

    .line 22
    const-wide/16 v9, 0x0

    .line 23
    .line 24
    const-wide/16 v11, 0x0

    .line 25
    .line 26
    const-wide/16 v13, 0x0

    .line 27
    .line 28
    const/4 v15, 0x0

    .line 29
    const-wide/16 v16, 0x0

    .line 30
    .line 31
    const/16 v18, 0x0

    .line 32
    .line 33
    const/16 v19, 0x0

    .line 34
    .line 35
    const/16 v20, 0x0

    .line 36
    .line 37
    const/16 v21, 0x0

    .line 38
    .line 39
    const/16 v22, 0x0

    .line 40
    .line 41
    const/16 v23, 0x0

    .line 42
    .line 43
    const v26, 0xfffc

    .line 44
    .line 45
    .line 46
    const/16 v27, 0x0

    .line 47
    .line 48
    invoke-direct/range {v5 .. v27}, Lokio/internal/ZipEntry;-><init>(Lokio/Path;ZLjava/lang/String;JJJIJIILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-array v1, v3, [Lkotlin/Pair;

    .line 56
    .line 57
    aput-object v0, v1, v2

    .line 58
    .line 59
    invoke-static {v1}, L디듰듟드딄되뒝딌땄딻땰딜둡딟돼뎻뒻됫땁딐뒹둘땔땤돷땐땲땤뒛뒼뒙뎰도땝둠땳들뒷땟딤땨뒤돳딟둔둘땡됨땵돳땤땠땳땋땮뎬뒷됩뎬돤땐됩땬뒉땟뎬딌된둡땃땰뒹딠땹뒉됩딃뎸둡땪뒹둠땭딻뒷뒹듻뎸돛땳땯땫땜땻돵뒻뎠될듸딠땸딄듌됩뎸따둑땲뎬땄돼땥듽돼땲뎠딎든듰돵뒐들둘둣딹돷땄땪딀든;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    new-instance v1, Lokio/internal/ZipFilesKt$buildIndex$$inlined$sortedBy$1;

    .line 64
    .line 65
    invoke-direct {v1}, Lokio/internal/ZipFilesKt$buildIndex$$inlined$sortedBy$1;-><init>()V

    .line 66
    .line 67
    .line 68
    move-object/from16 v2, p0

    .line 69
    .line 70
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_3

    .line 83
    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Lokio/internal/ZipEntry;

    .line 89
    .line 90
    invoke-virtual {v2}, Lokio/internal/ZipEntry;->getCanonicalPath()Lokio/Path;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v3, Lokio/internal/ZipEntry;

    .line 99
    .line 100
    if-nez v3, :cond_0

    .line 101
    .line 102
    :goto_1
    invoke-virtual {v2}, Lokio/internal/ZipEntry;->getCanonicalPath()Lokio/Path;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v3}, Lokio/Path;->parent()Lokio/Path;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    if-nez v3, :cond_1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    check-cast v4, Lokio/internal/ZipEntry;

    .line 118
    .line 119
    if-eqz v4, :cond_2

    .line 120
    .line 121
    invoke-virtual {v4}, Lokio/internal/ZipEntry;->getChildren()Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    check-cast v3, Ljava/util/Collection;

    .line 126
    .line 127
    invoke-virtual {v2}, Lokio/internal/ZipEntry;->getCanonicalPath()Lokio/Path;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_2
    new-instance v5, Lokio/internal/ZipEntry;

    .line 136
    .line 137
    move-object v4, v5

    .line 138
    const/16 v23, 0x0

    .line 139
    .line 140
    const/16 v24, 0x0

    .line 141
    .line 142
    const/4 v6, 0x1

    .line 143
    const/4 v7, 0x0

    .line 144
    const-wide/16 v8, 0x0

    .line 145
    .line 146
    const-wide/16 v10, 0x0

    .line 147
    .line 148
    const-wide/16 v12, 0x0

    .line 149
    .line 150
    const/4 v14, 0x0

    .line 151
    const-wide/16 v15, 0x0

    .line 152
    .line 153
    const/16 v17, 0x0

    .line 154
    .line 155
    const/16 v18, 0x0

    .line 156
    .line 157
    const/16 v19, 0x0

    .line 158
    .line 159
    const/16 v20, 0x0

    .line 160
    .line 161
    const/16 v21, 0x0

    .line 162
    .line 163
    const/16 v22, 0x0

    .line 164
    .line 165
    const v25, 0xfffc

    .line 166
    .line 167
    .line 168
    const/16 v26, 0x0

    .line 169
    .line 170
    move-object/from16 p0, v1

    .line 171
    .line 172
    move-object v1, v5

    .line 173
    move-object v5, v3

    .line 174
    invoke-direct/range {v4 .. v26}, Lokio/internal/ZipEntry;-><init>(Lokio/Path;ZLjava/lang/String;JJJIJIILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 175
    .line 176
    .line 177
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Lokio/internal/ZipEntry;->getChildren()Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    check-cast v3, Ljava/util/Collection;

    .line 185
    .line 186
    invoke-virtual {v2}, Lokio/internal/ZipEntry;->getCanonicalPath()Lokio/Path;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-object v2, v1

    .line 194
    move-object/from16 v1, p0

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_3
    return-object v0
.end method

.method public static final 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "0x"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x10

    .line 9
    .line 10
    invoke-static {v1}, Lkotlin/text/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;->checkRadix(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {p0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v1, "toString(...)"

    .line 19
    .line 20
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public static final 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lokio/BufferedSource;ILkotlin/jvm/functions/Function2;)V
    .locals 10

    .line 1
    int-to-long v0, p1

    .line 2
    :goto_0
    const-wide/16 v2, 0x0

    .line 3
    .line 4
    cmp-long p1, v0, v2

    .line 5
    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    const-wide/16 v4, 0x4

    .line 9
    .line 10
    cmp-long p1, v0, v4

    .line 11
    .line 12
    if-ltz p1, :cond_3

    .line 13
    .line 14
    invoke-interface {p0}, Lokio/BufferedSource;->readShortLe()S

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const v4, 0xffff

    .line 19
    .line 20
    .line 21
    and-int/2addr p1, v4

    .line 22
    invoke-interface {p0}, Lokio/BufferedSource;->readShortLe()S

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    int-to-long v4, v4

    .line 27
    const-wide/32 v6, 0xffff

    .line 28
    .line 29
    .line 30
    and-long/2addr v4, v6

    .line 31
    const/4 v6, 0x4

    .line 32
    int-to-long v6, v6

    .line 33
    sub-long/2addr v0, v6

    .line 34
    cmp-long v6, v0, v4

    .line 35
    .line 36
    if-ltz v6, :cond_2

    .line 37
    .line 38
    invoke-interface {p0, v4, v5}, Lokio/BufferedSource;->require(J)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p0}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {v6}, Lokio/Buffer;->size()J

    .line 46
    .line 47
    .line 48
    move-result-wide v6

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    invoke-interface {p2, v8, v9}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    invoke-interface {p0}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-virtual {v8}, Lokio/Buffer;->size()J

    .line 65
    .line 66
    .line 67
    move-result-wide v8

    .line 68
    add-long/2addr v8, v4

    .line 69
    sub-long/2addr v8, v6

    .line 70
    cmp-long v6, v8, v2

    .line 71
    .line 72
    if-ltz v6, :cond_1

    .line 73
    .line 74
    if-lez v6, :cond_0

    .line 75
    .line 76
    invoke-interface {p0}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1, v8, v9}, Lokio/Buffer;->skip(J)V

    .line 81
    .line 82
    .line 83
    :cond_0
    sub-long/2addr v0, v4

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 86
    .line 87
    const-string p2, "unsupported zip: too many bytes processed for "

    .line 88
    .line 89
    invoke-static {p1, p2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(ILjava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p0

    .line 97
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 98
    .line 99
    const-string p1, "bad zip: truncated value in extra field"

    .line 100
    .line 101
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p0

    .line 105
    :cond_3
    new-instance p0, Ljava/io/IOException;

    .line 106
    .line 107
    const-string p1, "bad zip: truncated header in extra field"

    .line 108
    .line 109
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :cond_4
    return-void
.end method

.method public static final 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lokio/BufferedSource;Lokio/internal/ZipEntry;)Lokio/internal/ZipEntry;
    .locals 6

    .line 1
    invoke-interface {p0}, Lokio/BufferedSource;->readIntLe()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x4034b50

    .line 6
    .line 7
    .line 8
    if-ne v0, v1, :cond_2

    .line 9
    .line 10
    const-wide/16 v0, 0x2

    .line 11
    .line 12
    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Lokio/BufferedSource;->readShortLe()S

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const v1, 0xffff

    .line 20
    .line 21
    .line 22
    and-int v2, v0, v1

    .line 23
    .line 24
    and-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    const-wide/16 v2, 0x12

    .line 29
    .line 30
    invoke-interface {p0, v2, v3}, Lokio/BufferedSource;->skip(J)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p0}, Lokio/BufferedSource;->readShortLe()S

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    int-to-long v2, v0

    .line 38
    const-wide/32 v4, 0xffff

    .line 39
    .line 40
    .line 41
    and-long/2addr v2, v4

    .line 42
    invoke-interface {p0}, Lokio/BufferedSource;->readShortLe()S

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    and-int/2addr v0, v1

    .line 47
    invoke-interface {p0, v2, v3}, Lokio/BufferedSource;->skip(J)V

    .line 48
    .line 49
    .line 50
    if-nez p1, :cond_0

    .line 51
    .line 52
    int-to-long v0, v0

    .line 53
    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x0

    .line 57
    return-object p0

    .line 58
    :cond_0
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 59
    .line 60
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 61
    .line 62
    .line 63
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 64
    .line 65
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 66
    .line 67
    .line 68
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 69
    .line 70
    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 71
    .line 72
    .line 73
    new-instance v4, L땵뒈뒨듸두돛될둥듐둑듸뒾뎻든땲듸뒛딌땄돵땪땃돠돸든돷땧된디뒈둔뒨땜땝땔뒉돼둣됐딽돝땱땰땯뒵뒷땸뒝땵땯땱땲딎뒝딄돛땹뒛뎸돵딁둑딟듔돼땮돷뒘되뒉듰땤듽땫뒻땍땰땔딤둥뎸뎻딟뒻듔될땸땡두땵돝딤돼땲돨뒹딎뎬땪됫딌딤돳땃둘딐듐둔뒾듰땯뒻뒉됫됐듟딎돷딐땜됴든뎽딅따땝돸땹딄딠;

    .line 74
    .line 75
    invoke-direct {v4, p0, v1, v2, v3}, L땵뒈뒨듸두돛될둥듐둑듸뒾뎻든땲듸뒛딌땄돵땪땃돠돸든돷땧된디뒈둔뒨땜땝땔뒉돼둣됐딽돝땱땰땯뒵뒷땸뒝땵땯땱땲딎뒝딄돛땹뒛뎸돵딁둑딟듔돼땮돷뒘되뒉듰땤듽땫뒻땍땰땔딤둥뎸뎻딟뒻듔될땸땡두땵돝딤돼땲돨뒹딎뎬땪됫딌딤돳땃둘딐듐둔뒾듰땯뒻뒉됫됐듟딎돷딐땜됴든뎽딅따땝돸땹딄딠;-><init>(Lokio/BufferedSource;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p0, v0, v4}, Lokio/internal/ZipFilesKt;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lokio/BufferedSource;ILkotlin/jvm/functions/Function2;)V

    .line 79
    .line 80
    .line 81
    iget-object p0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p0, Ljava/lang/Integer;

    .line 84
    .line 85
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v0, Ljava/lang/Integer;

    .line 88
    .line 89
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v1, Ljava/lang/Integer;

    .line 92
    .line 93
    invoke-virtual {p1, p0, v0, v1}, Lokio/internal/ZipEntry;->copy$okio(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lokio/internal/ZipEntry;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 99
    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v0, "unsupported zip: general purpose bit flag="

    .line 103
    .line 104
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v2}, Lokio/internal/ZipFilesKt;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p0

    .line 122
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 123
    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v2, "bad zip: expected "

    .line 127
    .line 128
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-static {v1}, Lokio/internal/ZipFilesKt;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v1, " but was "

    .line 139
    .line 140
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-static {v0}, Lokio/internal/ZipFilesKt;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p0
.end method
