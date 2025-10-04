.class public Lcom/tknetwork/tunnel/activities/ExportActivity;
.super Lcom/tknetwork/tunnel/activities/MainBaseActivity;
.source "SourceFile"


# static fields
.field private static final REQUEST_IMPORT_PKCS12:I = 0x3

.field private static final S_BIND_CALLED:I = 0x1

.field private static final S_START_CALLED:I = 0x2


# instance fields
.field private config:Lconfig/ConfigUtil;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private final launcherReadFile:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final launcherReadPermission:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private prefs:Lnet/openvpn/openvpn/PrefUtil;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, L뒨뎻땭뎡돤뎽딌된둬딎돛듟땸둣땄뒋뒈뎡땁둘땬뒛드땥들뎬둔됩땟뒝듻땤뒈뒋따땍땧뎻땧돛될든뎬듔됩듰돴둠땦듐땭땄듽딝되뒙둑뎨뒹돴두딎뎸뒵둬돸땸디돛뒤뒵되듌돼뒷땻들뒐땭돰딽듐뒤뒾딀뎡땄뒤들딻둬도뎰뎰돠딝듔땻도뎡땥딸듸땬뒛듰뎽딁듸된땍뒹들땅듟됨돸뎽둘뒤땃뒨따뒤딟땝드됐땹돳;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, p0, v2}, L뒨뎻땭뎡돤뎽딌된둬딎돛듟땸둣땄뒋뒈뎡땁둘땬뒛드땥들뎬둔됩땟뒝듻땤뒈뒋따땍땧뎻땧돛될든뎬듔됩듰돴둠땦듐땭땄듽딝되뒙둑뎨뒹돴두딎뎸뒵둬돸땸디돛뒤뒵되듌돼뒷땻들뒐땭돰딽듐뒤뒾딀뎡땄뒤들딻둬도뎰뎰돠딝듔땻도뎡땥딸듸땬뒛듰뎽딁듸된땍뒹들땅듟됨돸뎽둘뒤땃뒨따뒤딟땝드됐땹돳;-><init>(Lcom/tknetwork/tunnel/activities/ExportActivity;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/ExportActivity;->launcherReadFile:Landroidx/activity/result/ActivityResultLauncher;

    .line 20
    .line 21
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    .line 22
    .line 23
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v1, L뒨뎻땭뎡돤뎽딌된둬딎돛듟땸둣땄뒋뒈뎡땁둘땬뒛드땥들뎬둔됩땟뒝듻땤뒈뒋따땍땧뎻땧돛될든뎬듔됩듰돴둠땦듐땭땄듽딝되뒙둑뎨뒹돴두딎뎸뒵둬돸땸디돛뒤뒵되듌돼뒷땻들뒐땭돰딽듐뒤뒾딀뎡땄뒤들딻둬도뎰뎰돠딝듔땻도뎡땥딸듸땬뒛듰뎽딁듸된땍뒹들땅듟됨돸뎽둘뒤땃뒨따뒤딟땝드됐땹돳;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-direct {v1, p0, v2}, L뒨뎻땭뎡돤뎽딌된둬딎돛듟땸둣땄뒋뒈뎡땁둘땬뒛드땥들뎬둔됩땟뒝듻땤뒈뒋따땍땧뎻땧돛될든뎬듔됩듰돴둠땦듐땭땄듽딝되뒙둑뎨뒹돴두딎뎸뒵둬돸땸디돛뒤뒵되듌돼뒷땻들뒐땭돰딽듐뒤뒾딀뎡땄뒤들딻둬도뎰뎰돠딝듔땻도뎡땥딸듸땬뒛듰뎽딁듸된땍뒹들땅듟됨돸뎽둘뒤땃뒨따뒤딟땝드됐땹돳;-><init>(Lcom/tknetwork/tunnel/activities/ExportActivity;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/tknetwork/tunnel/activities/ExportActivity;->launcherReadPermission:Landroidx/activity/result/ActivityResultLauncher;

    .line 37
    .line 38
    return-void
.end method

.method private attemptImport()V
    .locals 4

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x6

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
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v3, 0x20

    .line 19
    .line 20
    if-gt v2, v3, :cond_0

    .line 21
    .line 22
    invoke-direct {p0, v0}, Lcom/tknetwork/tunnel/activities/ExportActivity;->hasPermission(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/tknetwork/tunnel/activities/ExportActivity;->launcherReadPermission:Landroidx/activity/result/ActivityResultLauncher;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v2, Landroid/content/Intent;

    .line 41
    .line 42
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    new-array v1, v1, [J

    .line 45
    .line 46
    fill-array-data v1, :array_1

    .line 47
    .line 48
    .line 49
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    const/4 v3, 0x2

    .line 62
    new-array v3, v3, [J

    .line 63
    .line 64
    fill-array-data v3, :array_2

    .line 65
    .line 66
    .line 67
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ExportActivity;->launcherReadFile:Landroidx/activity/result/ActivityResultLauncher;

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :goto_0
    return-void

    .line 83
    :array_0
    .array-data 8
        0x62aae6270b8d97fdL    # 1.9827332200780675E167
        -0x673261d326d82c0cL    # -3.323736492808428E-189
        0x9beffadd7035851L
        -0xb860ba50d4571c5L
        -0x40aec8695c768239L    # -0.001050850971431193
        0x433b0909cf61f6f7L    # 7.609762109847287E15
    .end array-data

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
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    :array_1
    .array-data 8
        0x4e224d61ac5f4582L    # 2.4671413347203903E68
        -0x3dda08899debb87eL    # -4.717302196213966E10
        0x665ca5479c9a6ff5L    # 1.2171823369758736E185
        0x7921778b247a3e59L    # 3.023733747429016E275
        -0x4e2c3a5be65663b5L    # -1.1459149164592088E-68
        0x76bbee650efb6b25L    # 8.795211201288041E263
    .end array-data

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    :array_2
    .array-data 8
        -0x2f7f1820e8eed047L    # -6.26416595814E79
        -0x7a3e142d13a3c673L    # -6.170506727818812E-281
    .end array-data
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method private import_config(Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v5, 0x2

    .line 15
    new-array v5, v5, [J

    .line 16
    .line 17
    fill-array-data v5, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    new-instance v3, Lcom/tknetwork/tunnel/core/ConfigParser;

    .line 34
    .line 35
    invoke-direct {v3}, Lcom/tknetwork/tunnel/core/ConfigParser;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v4, Ljava/io/InputStreamReader;

    .line 39
    .line 40
    new-instance v5, Ljava/io/FileInputStream;

    .line 41
    .line 42
    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v4}, Lcom/tknetwork/tunnel/core/ConfigParser;->parseConfig(Ljava/io/Reader;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/tknetwork/tunnel/core/ConfigParser;->convertProfile()Lcom/tknetwork/tunnel/core/VpnProfile;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iput-object v2, p1, Lcom/tknetwork/tunnel/core/VpnProfile;->mName:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v2, p1, Lcom/tknetwork/tunnel/core/VpnProfile;->mConnections:[Lcom/tknetwork/tunnel/core/Connection;

    .line 62
    .line 63
    aget-object v2, v2, v1

    .line 64
    .line 65
    iget-boolean v3, v2, Lcom/tknetwork/tunnel/core/Connection;->mUseCustomConfig:Z

    .line 66
    .line 67
    if-eqz v3, :cond_0

    .line 68
    .line 69
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    const/4 v4, 0x7

    .line 72
    new-array v4, v4, [J

    .line 73
    .line 74
    fill-array-data v4, :array_1

    .line 75
    .line 76
    .line 77
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    iput-object v3, v2, Lcom/tknetwork/tunnel/core/Connection;->mCustomConfiguration:Ljava/lang/String;

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catch_0
    move-exception p1

    .line 88
    goto :goto_1

    .line 89
    :cond_0
    :goto_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 90
    .line 91
    new-array v3, v0, [J

    .line 92
    .line 93
    fill-array-data v3, :array_2

    .line 94
    .line 95
    .line 96
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {p1, p0, v1}, Lcom/tknetwork/tunnel/core/VpnProfile;->getConfigFile(Landroid/content/Context;Z)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    const/4 v3, 0x1

    .line 108
    new-array v3, v3, [Ljava/lang/Object;

    .line 109
    .line 110
    aput-object p1, v3, v1

    .line 111
    .line 112
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 116
    .line 117
    new-array v0, v0, [J

    .line 118
    .line 119
    fill-array-data v0, :array_3

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
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/activities/ExportActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 134
    .line 135
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 142
    .line 143
    const/4 v2, 0x4

    .line 144
    new-array v2, v2, [J

    .line 145
    .line 146
    fill-array-data v2, :array_4

    .line 147
    .line 148
    .line 149
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/activities/ExportActivity;->showToast(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    :cond_1
    :goto_2
    return-void

    .line 174
    nop

    .line 175
    :array_0
    .array-data 8
        0x6a56eef4d3fab3dbL    # 1.7975706329615612E204
        0x69dd7b25c17382deL    # 9.026512414047001E201
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
    :array_1
    .array-data 8
        0x10c68ebde333cb4L
        -0x260fe4286251d87dL    # -1.7038065834709045E125
        0x1cb163fe81ec685cL    # 1.800018980060123E-170
        0x7cae5143628168e8L    # 3.781797361090613E292
        0x81fe11bc12da0cfL
        0x2b39d1fc41f35e15L
        -0x26dfe27ec7e128c4L    # -2.0806805019961527E121
    .end array-data

    :array_2
    .array-data 8
        -0x293c8de32164dfd0L    # -9.133835801704363E109
        0x533426808afa5484L    # 6.567534002330404E92
        0x1809c57e0b4b645bL    # 7.060764372221527E-193
    .end array-data

    :array_3
    .array-data 8
        -0x4f758401a30ed121L    # -7.31914594764394E-75
        0x20d6fd67e976ebb5L
        -0x18c1ed746998fd5cL    # -2.0935628180352155E189
    .end array-data

    :array_4
    .array-data 8
        0x45b65ab6e703b875L    # 6.918337272000764E27
        0x273833e1e982b741L    # 9.372704826609107E-120
        0x58ec96e996ee1bc6L
        -0x500ed35a26b063faL    # -9.27006637827162E-78
    .end array-data
.end method

.method private synthetic lambda$new$1(Landroidx/activity/result/ActivityResult;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_4

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const v0, 0x7f13012e

    .line 13
    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/activities/ExportActivity;->showToast(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/activities/ExportActivity;->showToast(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    invoke-static {p0, p1}, Lcom/tknetwork/tunnel/core/FileUtilKt;->readFromFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    const p1, 0x7f130130

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/activities/ExportActivity;->showToast(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    invoke-static {p1}, Lcom/tknetwork/tunnel/utils/c_12$Parser;->d_01(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    const p1, 0x7f130131

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/activities/ExportActivity;->showToast(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_3
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/ExportActivity;->processImportData(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/ExportActivity;->attemptImport()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$new$3(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const p1, 0x7f13030d

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/activities/ExportActivity;->showToast(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/ExportActivity;->attemptImport()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const p1, 0x7f130132

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/activities/ExportActivity;->showToast(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 32
    .line 33
    const v0, 0x7f140002

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 37
    .line 38
    .line 39
    const v0, 0x7f1302b5

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const v0, 0x7f13009c

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const v0, 0x7f130090

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const/4 v1, 0x0

    .line 69
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const v0, 0x7f130199

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    new-instance v1, L돷땀땃듟딁둬땅듰땯듬뒙땬뒐땜뒘땝딄땡땟딜뎰듬돠땋뒛딄땻땟돳땦됨뎹듻뒬땯딀득뎻딌뒘딀뎻뒐듌돰땃둔듬듌둑땲땍딜돛딐땄땤뒤땩돠땦돼듐드땀둔딃둘뒈뎡땧땲둠땦됫딽뒘딟뒤듰뒘땍땭딨땀둠뎸땡딌뒹둘땬딌땹둡둔돵땪뒹땍땧딐뒛딎땵땵땧뒹뎽땫딽땄듨딻딨둔땅둑딄뒹둑돠뒘든딨땠뎽뒬뒤둡;

    .line 81
    .line 82
    const/4 v2, 0x1

    .line 83
    invoke-direct {v1, p0, v2}, L돷땀땃듟딁둬땅듰땯듬뒙땬뒐땜뒘땝딄땡땟딜뎰듬돠땋뒛딄땻땟돳땦됨뎹듻뒬땯딀득뎻딌뒘딀뎻뒐듌돰땃둔듬듌둑땲땍딜돛딐땄땤뒤땩돠땦돼듐드땀둔딃둘뒈뎡땧땲둠땦됫딽뒘딟뒤듰뒘땍땭딨땀둠뎸땡딌뒹둘땬딌땹둡둔돵땪뒹땍땧딐뒛딎땵땵땧뒹뎽땫딽땄듨딻딨둔땅둑딄뒹둑돠뒘든딨땠뎽뒬뒤둡;-><init>(Ljava/lang/Object;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 95
    .line 96
    .line 97
    :goto_0
    return-void
.end method

.method private synthetic lambda$processImportData$0()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tknetwork/tunnel/utils/c_12;->restart_app(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private processImportData(Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    new-array v3, v0, [J

    .line 11
    .line 12
    fill-array-data v3, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    invoke-static {p1}, Lcom/tknetwork/tunnel/utils/c_12$Parser;->parse(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object v3, p0, Lcom/tknetwork/tunnel/activities/ExportActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    .line 37
    .line 38
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    new-array v5, v1, [J

    .line 41
    .line 42
    fill-array-data v5, :array_1

    .line 43
    .line 44
    .line 45
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v3, v4, p1}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p1

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    :goto_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v0, v0, [J

    .line 61
    .line 62
    fill-array-data v0, :array_2

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
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_1

    .line 81
    .line 82
    invoke-static {p1}, Lcom/tknetwork/tunnel/utils/c_12$Parser;->parse(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ExportActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    .line 87
    .line 88
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 89
    .line 90
    new-array v3, v1, [J

    .line 91
    .line 92
    fill-array-data v3, :array_3

    .line 93
    .line 94
    .line 95
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v0, v2, p1}, Lnet/openvpn/openvpn/PrefUtil;->set_string(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    .line 108
    .line 109
    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ExportActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    .line 110
    .line 111
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 112
    .line 113
    new-array v2, v1, [J

    .line 114
    .line 115
    fill-array-data v2, :array_4

    .line 116
    .line 117
    .line 118
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {p1, v0}, Lnet/openvpn/openvpn/PrefUtil;->get_string(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    const/4 v0, 0x1

    .line 134
    xor-int/2addr p1, v0

    .line 135
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ExportActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    .line 136
    .line 137
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 138
    .line 139
    new-array v4, v1, [J

    .line 140
    .line 141
    fill-array-data v4, :array_5

    .line 142
    .line 143
    .line 144
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-virtual {v2, v3}, Lnet/openvpn/openvpn/PrefUtil;->get_string(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-nez v2, :cond_2

    .line 160
    .line 161
    const/4 p1, 0x1

    .line 162
    :cond_2
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ExportActivity;->config:Lconfig/ConfigUtil;

    .line 163
    .line 164
    invoke-virtual {v2, p1}, Lconfig/ConfigUtil;->setNetworkSelectedPosition(I)V

    .line 165
    .line 166
    .line 167
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ExportActivity;->config:Lconfig/ConfigUtil;

    .line 168
    .line 169
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 170
    .line 171
    new-array v4, v1, [J

    .line 172
    .line 173
    fill-array-data v4, :array_6

    .line 174
    .line 175
    .line 176
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {v2, v3}, Lconfig/ConfigUtil;->setNetworkSelectedName(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ExportActivity;->config:Lconfig/ConfigUtil;

    .line 187
    .line 188
    invoke-virtual {v2, p1}, Lconfig/ConfigUtil;->setServerSelectedPosition(I)V

    .line 189
    .line 190
    .line 191
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ExportActivity;->config:Lconfig/ConfigUtil;

    .line 192
    .line 193
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 194
    .line 195
    new-array v3, v1, [J

    .line 196
    .line 197
    fill-array-data v3, :array_7

    .line 198
    .line 199
    .line 200
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {p1, v2}, Lconfig/ConfigUtil;->setServerSelectedName(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ExportActivity;->config:Lconfig/ConfigUtil;

    .line 211
    .line 212
    invoke-virtual {p1, v0}, Lconfig/ConfigUtil;->setCustomI(Z)V

    .line 213
    .line 214
    .line 215
    const p1, 0x7f13012f

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/activities/ExportActivity;->showToast(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ExportActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 226
    .line 227
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 228
    .line 229
    new-array v1, v1, [J

    .line 230
    .line 231
    fill-array-data v1, :array_8

    .line 232
    .line 233
    .line 234
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    const/4 v1, 0x0

    .line 242
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 247
    .line 248
    .line 249
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/ExportActivity;->mHandler:Landroid/os/Handler;

    .line 250
    .line 251
    new-instance v0, L돨뎠뒤땹땃땅땍딐땯딁딨뎬뒨땣땹땧딸되땠듌뎹듸둡땦땫뒙뎻땱돝디딀뒵땩딀돨땅든뒻됐둥딝땅땱뎽돴둔드뎨땵둬땡둥딐땵땻뒨듌땳땵됨딠뎠땜뒉땦듻딅땁땤듌땁듌땳돳땧뒤따땪땲딅돷땯뒵땄듨둔돤뎬땤따돨땠땜듼땍둬뎸땅딎듐딄돠땍땭됐뎸딞듬뒐둡땄땠둡뒈땤뒨돤땤듸됨디둘땣땩땳땀뒨땳땟뒋;

    .line 252
    .line 253
    const/16 v1, 0x11

    .line 254
    .line 255
    invoke-direct {v0, p0, v1}, L돨뎠뒤땹땃땅땍딐땯딁딨뎬뒨땣땹땧딸되땠듌뎹듸둡땦땫뒙뎻땱돝디딀뒵땩딀돨땅든뒻됐둥딝땅땱뎽돴둔드뎨땵둬땡둥딐땵땻뒨듌땳땵됨딠뎠땜뒉땦듻딅땁땤듌땁듌땳돳땧뒤따땪땲딅돷땯뒵땄듨둔돤뎬땤따돨땠땜듼땍둬뎸땅딎듐딄돠땍땭됐뎸딞듬뒐둡땄땠둡뒈땤뒨돤땤듸됨디둘땣땩땳땀뒨땳땟뒋;-><init>(Ljava/lang/Object;I)V

    .line 256
    .line 257
    .line 258
    const-wide/16 v1, 0x1f4

    .line 259
    .line 260
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 261
    .line 262
    .line 263
    return-void

    .line 264
    nop

    .line 265
    :array_0
    .array-data 8
        -0x335675816eed4dbfL    # -2.052139727610223E61
        -0x4f50c2e3938f49c5L    # -3.453219940300614E-74
    .end array-data

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    :array_1
    .array-data 8
        0x5aa289b96ee7b04dL    # 4.015602440738136E128
        -0x62dec23e6edb94a8L
        -0x3a1ffa18a7fd9c58L    # -3.967117821106225E28
    .end array-data

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
    :array_2
    .array-data 8
        0x350809edb76aba59L    # 3.137207629579786E-53
        -0x600d316a3ae1a5f3L    # -8.766800708130684E-155
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
    :array_3
    .array-data 8
        -0x21e8502982dc293L
        0x55448f75e7f4eeaL
        0x16118905cb61dd78L    # 2.23714818695606E-202
    .end array-data

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
    :array_4
    .array-data 8
        0x1d737af50d0eb651L    # 8.258821679191382E-167
        -0x44f81852cd9a1340L    # -2.471717674548002E-24
        0x8dad77dc1725896L
    .end array-data

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
    :array_5
    .array-data 8
        -0x5bf99c8df92ddd84L    # -3.850314022585249E-135
        -0x382b661b2aecb969L    # -1.0953449042403179E38
        0x67407c749490c2ecL    # 2.2954436665774033E189
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
    :array_6
    .array-data 8
        -0x5dc1ea98d78af84cL    # -9.636780423478461E-144
        0x51c1d608616b6c37L    # 6.929913873510486E85
        -0x6d8b17f67b752ec8L    # -9.253847331724394E-220
    .end array-data

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
    :array_7
    .array-data 8
        0x4ad9a18b7e18680bL    # 3.835883441706077E52
        0x4f268e6a1bef2905L    # 1.992677205126606E73
        0x5288594ea3229b42L    # 3.874960623344168E89
    .end array-data

    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    :array_8
    .array-data 8
        0x1c8e8ef8bd2b04dL
        0x744d3b1eecd2af7aL
        0x1e9f5090e6e58d2aL
    .end array-data
.end method

.method public static synthetic 뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Lcom/tknetwork/tunnel/activities/ExportActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/ExportActivity;->lambda$processImportData$0()V

    return-void
.end method

.method public static synthetic 뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬(Lcom/tknetwork/tunnel/activities/ExportActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/ExportActivity;->lambda$new$3(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic 뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Lcom/tknetwork/tunnel/activities/ExportActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/ExportActivity;->lambda$new$1(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic 뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Lcom/tknetwork/tunnel/activities/ExportActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tknetwork/tunnel/activities/ExportActivity;->lambda$new$2(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v3, 0x2

    .line 6
    new-array v4, v3, [J

    .line 7
    .line 8
    fill-array-data v4, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    new-array v5, v3, [Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    aput-object v2, v5, v6

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    aput-object v4, v5, v2

    .line 32
    .line 33
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    const/4 v7, 0x7

    .line 36
    new-array v7, v7, [J

    .line 37
    .line 38
    fill-array-data v7, :array_1

    .line 39
    .line 40
    .line 41
    invoke-direct {v4, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    const/4 v4, -0x1

    .line 52
    if-eq p1, v3, :cond_1

    .line 53
    .line 54
    if-eq p1, v1, :cond_0

    .line 55
    .line 56
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    if-ne p2, v4, :cond_2

    .line 61
    .line 62
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 63
    .line 64
    new-array p2, v1, [J

    .line 65
    .line 66
    fill-array-data p2, :array_2

    .line 67
    .line 68
    .line 69
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    new-array p3, v3, [J

    .line 83
    .line 84
    fill-array-data p3, :array_3

    .line 85
    .line 86
    .line 87
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    new-array p2, v2, [Ljava/lang/Object;

    .line 94
    .line 95
    aput-object p1, p2, v6

    .line 96
    .line 97
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 98
    .line 99
    new-array v0, v0, [J

    .line 100
    .line 101
    fill-array-data v0, :array_4

    .line 102
    .line 103
    .line 104
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->import_pkcs12(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_1
    if-ne p2, v4, :cond_2

    .line 119
    .line 120
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 121
    .line 122
    new-array p2, v1, [J

    .line 123
    .line 124
    fill-array-data p2, :array_5

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
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 139
    .line 140
    new-array p3, v3, [J

    .line 141
    .line 142
    fill-array-data p3, :array_6

    .line 143
    .line 144
    .line 145
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    new-array p2, v2, [Ljava/lang/Object;

    .line 152
    .line 153
    aput-object p1, p2, v6

    .line 154
    .line 155
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 156
    .line 157
    new-array v0, v0, [J

    .line 158
    .line 159
    fill-array-data v0, :array_7

    .line 160
    .line 161
    .line 162
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p3

    .line 169
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/ExportActivity;->import_config(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :cond_2
    :goto_0
    return-void

    .line 176
    nop

    .line 177
    :array_0
    .array-data 8
        0xfa23376ed93b88bL    # 2.289757113236716E-233
        0x30864c865787ba34L    # 6.162472767682981E-75
    .end array-data

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
    :array_1
    .array-data 8
        -0x651e3cccd46d70b9L    # -3.424496040660581E-179
        0x3ded1725c1b260a1L    # 2.1166066195600064E-10
        0x1585b8bf4d4a370bL    # 5.412602748513188E-205
        0x3875a2f0f390c195L    # 1.0173428296169997E-36
        0x8b192cefecac338L
        -0x7ba97b89eb50ef5eL
        -0x1496a68e9bf4f66eL    # -2.6043206597748672E209
    .end array-data

    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    :array_2
    .array-data 8
        -0x1f47f22d5741667cL    # -8.256290654002157E157
        -0x3832d36503939acfL    # -7.755843285932145E37
        0x38962aaaa9be6383L    # 4.169086620569632E-36
    .end array-data

    :array_3
    .array-data 8
        0x3f447bebefb5dfc7L    # 6.251241715480243E-4
        -0x3caa3e7c3b99cb6dL    # -2.4494984763331148E16
    .end array-data

    :array_4
    .array-data 8
        -0x17bb9112911ea81cL    # -1.8645153102599738E194
        -0x44320d7ebb1e89a8L    # -1.2683168533417736E-20
        0x26a9151361f13e54L
        -0x1b18d98c316d6156L    # -1.1726334753449108E178
    .end array-data

    :array_5
    .array-data 8
        -0x632afeec0cfeb232L
        0x7f8afee67e00e92fL    # 2.3696285501823845E306
        -0xdb72fe0c14853fdL
    .end array-data

    :array_6
    .array-data 8
        0x5f9d8f8617bf3621L    # 3.8705408330401594E152
        -0x24a00c1d0136449bL    # -1.4175077471964595E132
    .end array-data

    :array_7
    .array-data 8
        -0x5692a916de345b95L    # -3.903949707392374E-109
        0x2df8b3afef18f25fL    # 3.104357171671849E-87
        0x5426998798c34ba7L    # 2.4136360119436392E97
        0x392ad541ba861416L    # 2.583927202165244E-33
    .end array-data
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lconfig/ConfigUtil;->getInstance(Landroid/content/Context;)Lconfig/ConfigUtil;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/ExportActivity;->config:Lconfig/ConfigUtil;

    .line 9
    .line 10
    new-instance p1, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/ExportActivity;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/ExportActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 30
    .line 31
    new-instance p1, Lnet/openvpn/openvpn/PrefUtil;

    .line 32
    .line 33
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {p1, v0}, Lnet/openvpn/openvpn/PrefUtil;-><init>(Landroid/content/SharedPreferences;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/ExportActivity;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const v0, 0x7f13012e

    .line 47
    .line 48
    .line 49
    if-nez p1, :cond_0

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/activities/ExportActivity;->showToast(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-nez p1, :cond_1

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/activities/ExportActivity;->showToast(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    invoke-static {p0, p1}, Lcom/tknetwork/tunnel/core/FileUtilKt;->readFromFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    const p1, 0x7f130130

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/activities/ExportActivity;->showToast(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_2
    invoke-static {p1}, Lcom/tknetwork/tunnel/utils/c_12$Parser;->d_01(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    const p1, 0x7f130131

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/activities/ExportActivity;->showToast(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_3
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/activities/ExportActivity;->processImportData(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->showToast(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
