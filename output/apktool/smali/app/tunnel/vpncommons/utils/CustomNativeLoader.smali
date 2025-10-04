.class public Lapp/tunnel/vpncommons/utils/CustomNativeLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static loadNativeBinary(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v3, ".so"

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_0
    invoke-virtual {v0, v3}, Ljava/io/File;->setReadable(Z)Z

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v3}, Ljava/io/File;->setExecutable(Z)Z

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/io/File;->setWritable(Z)Z

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v3, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    return-object v0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/io/File;->canExecute()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    return-object p2

    .line 78
    :cond_2
    invoke-virtual {p2, v3}, Ljava/io/File;->setReadable(Z)Z

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, v3}, Ljava/io/File;->setExecutable(Z)Z

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v2}, Ljava/io/File;->setWritable(Z)Z

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v3, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/io/File;->canExecute()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    return-object p2

    .line 97
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .line 101
    .line 102
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 103
    .line 104
    if-eqz v1, :cond_5

    .line 105
    .line 106
    array-length v3, v1

    .line 107
    :goto_0
    if-ge v2, v3, :cond_5

    .line 108
    .line 109
    aget-object v4, v1, v2

    .line 110
    .line 111
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-nez v5, :cond_4

    .line 116
    .line 117
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_8

    .line 132
    .line 133
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Ljava/lang/String;

    .line 138
    .line 139
    const-string v2, "os.arch"

    .line 140
    .line 141
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    if-eqz v2, :cond_7

    .line 146
    .line 147
    const-string v3, "686"

    .line 148
    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-eqz v2, :cond_7

    .line 154
    .line 155
    const-string v1, "x86"

    .line 156
    .line 157
    :cond_7
    invoke-static {p0, p1, p2, v1}, Lapp/tunnel/vpncommons/utils/CustomNativeLoader;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    if-eqz v1, :cond_6

    .line 162
    .line 163
    return-object p2

    .line 164
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    :cond_8
    const/4 p0, 0x0

    .line 168
    return-object p0
.end method

.method public static 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 8

    .line 1
    const-string v0, ".so"

    .line 2
    .line 3
    const-string v1, "/"

    .line 4
    .line 5
    const-string v2, "Unable to find file in apk:lib/"

    .line 6
    .line 7
    const-string v3, "jni/"

    .line 8
    .line 9
    const-string v4, "lib/"

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    :try_start_0
    new-instance v7, Ljava/util/zip/ZipFile;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {v7, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    .line 23
    .line 24
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v7, p0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-nez p0, :cond_1

    .line 50
    .line 51
    new-instance p0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {v7, p0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    if-eqz p0, :cond_0

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    .line 80
    .line 81
    new-instance p2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p0

    .line 103
    :catchall_0
    move-exception p0

    .line 104
    goto :goto_2

    .line 105
    :catch_0
    nop

    .line 106
    goto :goto_4

    .line 107
    :cond_1
    :goto_0
    invoke-virtual {v7, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    new-instance p0, Ljava/io/FileOutputStream;

    .line 112
    .line 113
    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 114
    .line 115
    .line 116
    const/16 p1, 0x1000

    .line 117
    .line 118
    new-array p1, p1, [B

    .line 119
    .line 120
    :goto_1
    invoke-virtual {v6, p1}, Ljava/io/InputStream;->read([B)I

    .line 121
    .line 122
    .line 123
    move-result p3

    .line 124
    if-lez p3, :cond_2

    .line 125
    .line 126
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, p1, v5, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 134
    .line 135
    .line 136
    const/4 p0, 0x1

    .line 137
    invoke-virtual {p2, p0, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, p0, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, p0}, Ljava/io/File;->setWritable(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    .line 145
    .line 146
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 147
    .line 148
    .line 149
    :catch_1
    :try_start_3
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 150
    .line 151
    .line 152
    :catch_2
    return p0

    .line 153
    :catchall_1
    move-exception p0

    .line 154
    move-object v7, v6

    .line 155
    goto :goto_2

    .line 156
    :catch_3
    nop

    .line 157
    move-object v7, v6

    .line 158
    goto :goto_4

    .line 159
    :goto_2
    if-eqz v6, :cond_3

    .line 160
    .line 161
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :catch_4
    nop

    .line 166
    :cond_3
    :goto_3
    if-eqz v7, :cond_4

    .line 167
    .line 168
    :try_start_5
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 169
    .line 170
    .line 171
    :catch_5
    :cond_4
    throw p0

    .line 172
    :goto_4
    if-eqz v6, :cond_5

    .line 173
    .line 174
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 175
    .line 176
    .line 177
    goto :goto_5

    .line 178
    :catch_6
    nop

    .line 179
    :cond_5
    :goto_5
    if-eqz v7, :cond_6

    .line 180
    .line 181
    :try_start_7
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 182
    .line 183
    .line 184
    :catch_7
    :cond_6
    return v5
.end method
