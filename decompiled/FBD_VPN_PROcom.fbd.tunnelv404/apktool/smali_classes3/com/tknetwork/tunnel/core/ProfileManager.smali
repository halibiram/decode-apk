.class public Lcom/tknetwork/tunnel/core/ProfileManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LAST_CONNECTED_PROFILE:Ljava/lang/String;

.field private static final PREFS_NAME:Ljava/lang/String;

.field private static instance:Lcom/tknetwork/tunnel/core/ProfileManager;

.field private static mLastConnectedVpn:Lcom/tknetwork/tunnel/core/VpnProfile;

.field private static tmpprofile:Lcom/tknetwork/tunnel/core/VpnProfile;


# instance fields
.field private profiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tknetwork/tunnel/core/VpnProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
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
    sput-object v0, Lcom/tknetwork/tunnel/core/ProfileManager;->PREFS_NAME:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    new-array v1, v1, [J

    .line 22
    .line 23
    fill-array-data v1, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/tknetwork/tunnel/core/ProfileManager;->LAST_CONNECTED_PROFILE:Ljava/lang/String;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    sput-object v0, Lcom/tknetwork/tunnel/core/ProfileManager;->mLastConnectedVpn:Lcom/tknetwork/tunnel/core/VpnProfile;

    .line 37
    .line 38
    sput-object v0, Lcom/tknetwork/tunnel/core/ProfileManager;->tmpprofile:Lcom/tknetwork/tunnel/core/VpnProfile;

    .line 39
    .line 40
    return-void

    .line 41
    :array_0
    .array-data 8
        -0x16fc7b973514e54bL    # -7.294662702007913E197
        -0x48c29726a43d63fdL    # -1.3187705776082337E-42
    .end array-data

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    :array_1
    .array-data 8
        0x9f6ab54cbef219bL
        0x37776c49de6b2da6L
        0x229bd2caf8a69be4L    # 5.704169267484216E-142
        -0x2310ef2e330bae35L    # -4.6243337634872307E139
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/tknetwork/tunnel/core/ProfileManager;->profiles:Ljava/util/HashMap;

    .line 10
    .line 11
    return-void
.end method

.method private static checkInstance(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/core/ProfileManager;->instance:Lcom/tknetwork/tunnel/core/ProfileManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/tknetwork/tunnel/core/ProfileManager;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/tknetwork/tunnel/core/ProfileManager;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/tknetwork/tunnel/core/ProfileManager;->instance:Lcom/tknetwork/tunnel/core/ProfileManager;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/core/ProfileManager;->loadVPNList(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Lcom/tknetwork/tunnel/core/VpnProfile;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xa

    .line 5
    invoke-static {p0, p1, v0, v1}, Lcom/tknetwork/tunnel/core/ProfileManager;->get(Landroid/content/Context;Ljava/lang/String;II)Lcom/tknetwork/tunnel/core/VpnProfile;

    move-result-object p0

    return-object p0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;II)Lcom/tknetwork/tunnel/core/VpnProfile;
    .locals 3

    .line 6
    invoke-static {p0}, Lcom/tknetwork/tunnel/core/ProfileManager;->checkInstance(Landroid/content/Context;)V

    .line 7
    invoke-static {p1}, Lcom/tknetwork/tunnel/core/ProfileManager;->get(Ljava/lang/String;)Lcom/tknetwork/tunnel/core/VpnProfile;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 8
    iget v2, v0, Lcom/tknetwork/tunnel/core/VpnProfile;->mVersion:I

    if-ge v2, p2, :cond_1

    :cond_0
    add-int/lit8 v2, v1, 0x1

    if-ge v1, p3, :cond_1

    const-wide/16 v0, 0x64

    .line 9
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    sget-object v0, Lcom/tknetwork/tunnel/core/ProfileManager;->instance:Lcom/tknetwork/tunnel/core/ProfileManager;

    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/core/ProfileManager;->loadVPNList(Landroid/content/Context;)V

    .line 11
    invoke-static {p1}, Lcom/tknetwork/tunnel/core/ProfileManager;->get(Ljava/lang/String;)Lcom/tknetwork/tunnel/core/VpnProfile;

    move-result-object v0

    move v1, v2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static get(Ljava/lang/String;)Lcom/tknetwork/tunnel/core/VpnProfile;
    .locals 1

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/core/ProfileManager;->tmpprofile:Lcom/tknetwork/tunnel/core/VpnProfile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tknetwork/tunnel/core/VpnProfile;->getUUIDString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/tknetwork/tunnel/core/ProfileManager;->tmpprofile:Lcom/tknetwork/tunnel/core/VpnProfile;

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lcom/tknetwork/tunnel/core/ProfileManager;->instance:Lcom/tknetwork/tunnel/core/ProfileManager;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_1
    iget-object v0, v0, Lcom/tknetwork/tunnel/core/ProfileManager;->profiles:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tknetwork/tunnel/core/VpnProfile;

    return-object p0
.end method

.method public static getAlwaysOnVPN(Landroid/content/Context;)Lcom/tknetwork/tunnel/core/VpnProfile;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/tknetwork/tunnel/core/ProfileManager;->checkInstance(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    new-array v1, v1, [J

    .line 12
    .line 13
    fill-array-data v1, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Lcom/tknetwork/tunnel/core/ProfileManager;->get(Ljava/lang/String;)Lcom/tknetwork/tunnel/core/VpnProfile;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :array_0
    .array-data 8
        -0x1173a504175ebe84L
        -0x5d6228521ad2ef71L
        -0x448fbf38554cf272L
    .end array-data
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/tknetwork/tunnel/core/ProfileManager;
    .locals 1

    .line 1
    const-class v0, Lcom/tknetwork/tunnel/core/ProfileManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/tknetwork/tunnel/core/ProfileManager;->checkInstance(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lcom/tknetwork/tunnel/core/ProfileManager;->instance:Lcom/tknetwork/tunnel/core/ProfileManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-object p0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw p0
.end method

.method public static getLastConnectedProfile(Landroid/content/Context;)Lcom/tknetwork/tunnel/core/VpnProfile;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-static {p0, v0}, Lcom/tknetwork/tunnel/core/ProfileManager;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/tknetwork/tunnel/core/VpnProfile;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_0
    return-object v2

    .line 33
    :array_0
    .array-data 8
        -0x6ec7a15751114abbL
        0x66ea4fd1a8698a0dL    # 5.724238993438181E187
        0x333445492b67c0cdL    # 4.927521504226699E-62
        0x6cca438004285f34L    # 1.1317287701686862E216
    .end array-data
.end method

.method public static getLastConnectedVpn()Lcom/tknetwork/tunnel/core/VpnProfile;
    .locals 1

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/core/ProfileManager;->mLastConnectedVpn:Lcom/tknetwork/tunnel/core/VpnProfile;

    .line 2
    .line 3
    return-object v0
.end method

.method public static isTempProfile()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/core/ProfileManager;->mLastConnectedVpn:Lcom/tknetwork/tunnel/core/VpnProfile;

    .line 2
    .line 3
    sget-object v1, Lcom/tknetwork/tunnel/core/ProfileManager;->tmpprofile:Lcom/tknetwork/tunnel/core/VpnProfile;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method private loadVPNList(Landroid/content/Context;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/tknetwork/tunnel/core/ProfileManager;->profiles:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    new-array v2, v1, [J

    .line 12
    .line 13
    fill-array-data v2, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    new-array v3, v1, [J

    .line 31
    .line 32
    fill-array-data v3, :array_1

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    new-instance v0, Ljava/util/HashSet;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Ljava/lang/String;

    .line 69
    .line 70
    :try_start_0
    new-instance v3, Ljava/io/ObjectInputStream;

    .line 71
    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    new-array v5, v1, [J

    .line 83
    .line 84
    fill-array-data v5, :array_2

    .line 85
    .line 86
    .line 87
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {p1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Lcom/tknetwork/tunnel/core/VpnProfile;

    .line 113
    .line 114
    if-eqz v2, :cond_1

    .line 115
    .line 116
    iget-object v3, v2, Lcom/tknetwork/tunnel/core/VpnProfile;->mName:Ljava/lang/String;

    .line 117
    .line 118
    if-eqz v3, :cond_1

    .line 119
    .line 120
    invoke-virtual {v2}, Lcom/tknetwork/tunnel/core/VpnProfile;->getUUID()Ljava/util/UUID;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    if-nez v3, :cond_2

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {v2}, Lcom/tknetwork/tunnel/core/VpnProfile;->upgradeProfile()V

    .line 128
    .line 129
    .line 130
    iget-object v3, p0, Lcom/tknetwork/tunnel/core/ProfileManager;->profiles:Ljava/util/HashMap;

    .line 131
    .line 132
    invoke-virtual {v2}, Lcom/tknetwork/tunnel/core/VpnProfile;->getUUID()Ljava/util/UUID;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :catch_0
    nop

    .line 145
    goto :goto_0

    .line 146
    :cond_3
    return-void

    .line 147
    :array_0
    .array-data 8
        -0x76ef5d97f77f434eL
        0x4001be338f5af19dL    # 2.217871780360112
    .end array-data

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :array_1
    .array-data 8
        0x2e754a9ed6bff861L    # 6.849946957626104E-85
        0x64132018d19b8187L    # 1.182571898328203E174
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
    :array_2
    .array-data 8
        0x6316580156cadc18L    # 2.1081137509820965E169
        0x5a78aaa7fc0e6c2aL    # 6.678945864226832E127
    .end array-data
.end method

.method private saveProfile(Landroid/content/Context;Lcom/tknetwork/tunnel/core/VpnProfile;Z)V
    .locals 3

    if-eqz p3, :cond_0

    .line 2
    iget p3, p2, Lcom/tknetwork/tunnel/core/VpnProfile;->mVersion:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p2, Lcom/tknetwork/tunnel/core/VpnProfile;->mVersion:I

    .line 3
    :cond_0
    :try_start_0
    new-instance p3, Ljava/io/ObjectOutputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tknetwork/tunnel/core/VpnProfile;->getUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4
    invoke-virtual {p3, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 6
    invoke-virtual {p3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    nop

    :array_0
    .array-data 8
        -0x2c16095a1beac99aL    # -1.733051023551333E96
        0x821e16b38ec30caL
    .end array-data
.end method

.method public static setConnectedVpnProfile(Landroid/content/Context;Lcom/tknetwork/tunnel/core/VpnProfile;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    new-array v1, v1, [J

    .line 13
    .line 14
    fill-array-data v1, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1}, Lcom/tknetwork/tunnel/core/VpnProfile;->getUUIDString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 29
    .line 30
    .line 31
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 32
    .line 33
    .line 34
    sput-object p1, Lcom/tknetwork/tunnel/core/ProfileManager;->mLastConnectedVpn:Lcom/tknetwork/tunnel/core/VpnProfile;

    .line 35
    .line 36
    return-void

    .line 37
    :array_0
    .array-data 8
        -0x601e586d73ade540L    # -4.114808510556202E-155
        0x483ba89398063e2eL    # 9.411700561216281E39
        -0x7a340916a99b366aL    # -9.628554233242221E-281
        -0x630d680add062acdL
    .end array-data
.end method

.method public static setConntectedVpnProfileDisconnected(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    new-array v1, v1, [J

    .line 13
    .line 14
    fill-array-data v1, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 26
    .line 27
    .line 28
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        -0x5cd4c69b85d4626cL
        0x178df69fbda5e75bL
        -0x758993672fdce54cL    # -2.916895145988077E-258
        -0x18bedb9f37ef24caL    # -2.3867743341214114E189
    .end array-data
.end method

.method public static setTemporaryProfile(Lcom/tknetwork/tunnel/core/VpnProfile;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/tknetwork/tunnel/core/ProfileManager;->tmpprofile:Lcom/tknetwork/tunnel/core/VpnProfile;

    .line 2
    .line 3
    return-void
.end method

.method public static updateLRU(Landroid/content/Context;Lcom/tknetwork/tunnel/core/VpnProfile;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p1, Lcom/tknetwork/tunnel/core/VpnProfile;->mLastUsed:J

    .line 6
    .line 7
    invoke-static {p0}, Lcom/tknetwork/tunnel/core/ProfileManager;->getInstance(Landroid/content/Context;)Lcom/tknetwork/tunnel/core/ProfileManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, p0, p1, v1}, Lcom/tknetwork/tunnel/core/ProfileManager;->saveProfile(Landroid/content/Context;Lcom/tknetwork/tunnel/core/VpnProfile;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public addProfile(Lcom/tknetwork/tunnel/core/VpnProfile;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/core/ProfileManager;->profiles:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/tknetwork/tunnel/core/VpnProfile;->getUUID()Ljava/util/UUID;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public getProfileByName(Ljava/lang/String;)Lcom/tknetwork/tunnel/core/VpnProfile;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/core/ProfileManager;->profiles:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/tknetwork/tunnel/core/VpnProfile;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/tknetwork/tunnel/core/VpnProfile;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    return-object p1
.end method

.method public getProfiles()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/tknetwork/tunnel/core/VpnProfile;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/core/ProfileManager;->profiles:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public removeProfile(Landroid/content/Context;Lcom/tknetwork/tunnel/core/VpnProfile;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/tknetwork/tunnel/core/VpnProfile;->getUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/tknetwork/tunnel/core/ProfileManager;->profiles:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/core/ProfileManager;->saveProfileList(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    new-array v2, v2, [J

    .line 29
    .line 30
    fill-array-data v2, :array_0

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    sget-object p1, Lcom/tknetwork/tunnel/core/ProfileManager;->mLastConnectedVpn:Lcom/tknetwork/tunnel/core/VpnProfile;

    .line 51
    .line 52
    if-ne p1, p2, :cond_0

    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    sput-object p1, Lcom/tknetwork/tunnel/core/ProfileManager;->mLastConnectedVpn:Lcom/tknetwork/tunnel/core/VpnProfile;

    .line 56
    .line 57
    :cond_0
    return-void

    .line 58
    nop

    .line 59
    :array_0
    .array-data 8
        0x1027624b88031ecfL    # 7.530979874599949E-231
        0x57764ee620a6b73fL    # 2.1459662938323455E113
    .end array-data
.end method

.method public saveProfile(Landroid/content/Context;Lcom/tknetwork/tunnel/core/VpnProfile;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/tknetwork/tunnel/core/ProfileManager;->saveProfile(Landroid/content/Context;Lcom/tknetwork/tunnel/core/VpnProfile;Z)V

    return-void
.end method

.method public saveProfileList(Landroid/content/Context;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    new-array v4, v1, [J

    .line 28
    .line 29
    fill-array-data v4, :array_1

    .line 30
    .line 31
    .line 32
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iget-object v4, p0, Lcom/tknetwork/tunnel/core/ProfileManager;->profiles:Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 46
    .line 47
    .line 48
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    new-array v4, v1, [J

    .line 51
    .line 52
    fill-array-data v4, :array_2

    .line 53
    .line 54
    .line 55
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    new-array v1, v1, [J

    .line 69
    .line 70
    fill-array-data v1, :array_3

    .line 71
    .line 72
    .line 73
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    add-int/lit8 p1, p1, 0x1

    .line 81
    .line 82
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 83
    .line 84
    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :array_0
    .array-data 8
        -0x6226956fc3e25a5dL    # -6.896267301974654E-165
        -0x3278051af7cff4a2L    # -3.1567434792704815E65
    .end array-data

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
    :array_1
    .array-data 8
        0x6d740d22331272e8L    # 1.7695362445253004E219
        -0x7463c3f97fe3d6d0L
    .end array-data

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
    .line 112
    .line 113
    :array_2
    .array-data 8
        0x15abba86c7d20fffL    # 2.76376552174499E-204
        -0x696baeb1ba9e3248L    # -6.635830831679974E-200
    .end array-data

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
    :array_3
    .array-data 8
        0x6ccc177327fef1cfL    # 1.2104961097571243E216
        -0x5b4909cd3ee4a6daL    # -8.087348764711241E-132
    .end array-data
.end method
