.class public final Lcom/v2ray/ang/handler/MigrateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u000c\u001a\u00020\rJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0019\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/v2ray/ang/handler/MigrateManager;",
        "",
        "<init>",
        "()V",
        "ID_SERVER_CONFIG",
        "",
        "serverStorage",
        "Lcom/tencent/mmkv/MMKV;",
        "getServerStorage",
        "()Lcom/tencent/mmkv/MMKV;",
        "serverStorage$delegate",
        "Lkotlin/Lazy;",
        "migrateServerConfig2Profile",
        "",
        "migrateServerConfig2ProfileSub",
        "Lcom/v2ray/ang/dto/ProfileItem;",
        "configOld",
        "Lcom/v2ray/ang/dto/ServerConfig;",
        "migrate2ProfileCommon",
        "migrate2ProfileSocks",
        "migrate2ProfileHttp",
        "migrate2ProfileWireguard",
        "migrate2ProfileHysteria2",
        "migrate2ProfileCustom",
        "decodeServerConfigOld",
        "guid",
        "com.fbd.tunnel-404_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ID_SERVER_CONFIG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/v2ray/ang/handler/MigrateManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final serverStorage$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    sput-object v0, Lcom/v2ray/ang/handler/MigrateManager;->ID_SERVER_CONFIG:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/v2ray/ang/handler/MigrateManager;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/v2ray/ang/handler/MigrateManager;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/v2ray/ang/handler/MigrateManager;->INSTANCE:Lcom/v2ray/ang/handler/MigrateManager;

    .line 24
    .line 25
    new-instance v0, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;

    .line 26
    .line 27
    const/16 v1, 0xa

    .line 28
    .line 29
    invoke-direct {v0, v1}, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, L딄뒘듰둡땨돸된땀도땡딄듽땩됨돴뒬돛땁됨듸도듽땳돝뒀땡듟둡될들뒼땟딹뒋땀듐둡딞딨둔땅딅딤땜듬뎨땔됨뒀땪뎹뒻땠딜딝딨땀딤땸됐따땄딹따돼땄딸돝둣디두뒘땡딨둘땟돳돼뒼땬둘뒉돛딅듐땦돷둘딎됴뒻땣뒨땱뒻땳돨딤딟뎨땄땲듔듸딻땔땜듔딸딸뒙땅뒹땰듽뒛딟뒈땨땧땦뎹땸디딞땍됩뎽됩돤;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lcom/v2ray/ang/handler/MigrateManager;->serverStorage$delegate:Lkotlin/Lazy;

    .line 37
    .line 38
    return-void

    .line 39
    :array_0
    .array-data 8
        -0x7c0d6db850bc0eefL    # -1.191047198359288E-289
        0x52ffb6b081cc4f3aL    # 6.460180684606362E91
        -0x5685c654f61116ddL
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final decodeServerConfigOld(Ljava/lang/String;)Lcom/v2ray/ang/dto/ServerConfig;
    .locals 2

    .line 1
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MigrateManager;->getServerStorage()Lcom/tencent/mmkv/MMKV;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/tencent/mmkv/MMKV;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    sget-object v0, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 27
    .line 28
    const-class v1, Lcom/v2ray/ang/dto/ServerConfig;

    .line 29
    .line 30
    invoke-virtual {v0, p1, v1}, Lcom/v2ray/ang/util/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/v2ray/ang/dto/ServerConfig;

    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_2
    :goto_0
    return-object v1
.end method

.method private final getServerStorage()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    sget-object v0, Lcom/v2ray/ang/handler/MigrateManager;->serverStorage$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/tencent/mmkv/MMKV;

    .line 8
    .line 9
    return-object v0
.end method

.method private final migrate2ProfileCommon(Lcom/v2ray/ang/dto/ServerConfig;)Lcom/v2ray/ang/dto/ProfileItem;
    .locals 15

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    sget-object v3, Lcom/v2ray/ang/dto/ProfileItem;->Companion:Lcom/v2ray/ang/dto/ProfileItem$Companion;

    .line 5
    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ServerConfig;->getConfigType()Lcom/v2ray/ang/dto/EConfigType;

    .line 7
    .line 8
    .line 9
    move-result-object v4

    .line 10
    invoke-virtual {v3, v4}, Lcom/v2ray/ang/dto/ProfileItem$Companion;->create(Lcom/v2ray/ang/dto/EConfigType;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ServerConfig;->getProxyOutbound()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    const/4 v5, 0x0

    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    return-object v5

    .line 22
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ServerConfig;->getRemarks()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-virtual {v3, v6}, Lcom/v2ray/ang/dto/ProfileItem;->setRemarks(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getServerAddress()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-virtual {v3, v6}, Lcom/v2ray/ang/dto/ProfileItem;->setServer(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getServerPort()Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-virtual {v3, v6}, Lcom/v2ray/ang/dto/ProfileItem;->setServerPort(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getSecurityEncryption()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {v3, v6}, Lcom/v2ray/ang/dto/ProfileItem;->setMethod(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getPassword()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-virtual {v3, v6}, Lcom/v2ray/ang/dto/ProfileItem;->setPassword(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    if-eqz v6, :cond_1

    .line 66
    .line 67
    invoke-virtual {v6}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;->getVnext()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    if-eqz v6, :cond_1

    .line 72
    .line 73
    invoke-static {v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    check-cast v6, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$VnextBean;

    .line 78
    .line 79
    if-eqz v6, :cond_1

    .line 80
    .line 81
    invoke-virtual {v6}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$VnextBean;->getUsers()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    if-eqz v6, :cond_1

    .line 86
    .line 87
    invoke-static {v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    check-cast v6, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$VnextBean$UsersBean;

    .line 92
    .line 93
    if-eqz v6, :cond_1

    .line 94
    .line 95
    invoke-virtual {v6}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$VnextBean$UsersBean;->getFlow()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    if-nez v6, :cond_3

    .line 100
    .line 101
    :cond_1
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    if-eqz v6, :cond_2

    .line 106
    .line 107
    invoke-virtual {v6}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;->getServers()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    if-eqz v6, :cond_2

    .line 112
    .line 113
    invoke-static {v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    check-cast v6, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$ServersBean;

    .line 118
    .line 119
    if-eqz v6, :cond_2

    .line 120
    .line 121
    invoke-virtual {v6}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$ServersBean;->getFlow()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    goto :goto_0

    .line 126
    :cond_2
    move-object v6, v5

    .line 127
    :cond_3
    :goto_0
    invoke-virtual {v3, v6}, Lcom/v2ray/ang/dto/ProfileItem;->setFlow(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getStreamSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    if-eqz v6, :cond_4

    .line 135
    .line 136
    invoke-virtual {v6}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->getNetwork()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    if-nez v6, :cond_5

    .line 141
    .line 142
    :cond_4
    sget-object v6, Lcom/v2ray/ang/dto/NetworkType;->TCP:Lcom/v2ray/ang/dto/NetworkType;

    .line 143
    .line 144
    invoke-virtual {v6}, Lcom/v2ray/ang/dto/NetworkType;->getType()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    :cond_5
    invoke-virtual {v3, v6}, Lcom/v2ray/ang/dto/ProfileItem;->setNetwork(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getTransportSettingDetails()Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    if-eqz v6, :cond_9

    .line 156
    .line 157
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    check-cast v7, Ljava/lang/String;

    .line 162
    .line 163
    if-nez v7, :cond_6

    .line 164
    .line 165
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 166
    .line 167
    new-array v8, v1, [J

    .line 168
    .line 169
    const-wide v9, 0x6dac02b7cc866e41L    # 1.9775593384633756E220

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    aput-wide v9, v8, v2

    .line 175
    .line 176
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    :cond_6
    invoke-virtual {v3, v7}, Lcom/v2ray/ang/dto/ProfileItem;->setHeaderType(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    check-cast v7, Ljava/lang/String;

    .line 191
    .line 192
    if-nez v7, :cond_7

    .line 193
    .line 194
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 195
    .line 196
    new-array v8, v1, [J

    .line 197
    .line 198
    const-wide v9, 0x6b9e8f6ac916c648L    # 2.5117332350402383E210

    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    aput-wide v9, v8, v2

    .line 204
    .line 205
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    :cond_7
    invoke-virtual {v3, v7}, Lcom/v2ray/ang/dto/ProfileItem;->setHost(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    check-cast v6, Ljava/lang/String;

    .line 220
    .line 221
    if-nez v6, :cond_8

    .line 222
    .line 223
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 224
    .line 225
    new-array v1, v1, [J

    .line 226
    .line 227
    const-wide v7, 0x3367f2c886011f5L

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    aput-wide v7, v1, v2

    .line 233
    .line 234
    invoke-direct {v6, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    :cond_8
    invoke-virtual {v3, v6}, Lcom/v2ray/ang/dto/ProfileItem;->setPath(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    :cond_9
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getStreamSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    if-eqz v1, :cond_a

    .line 249
    .line 250
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->getKcpSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    if-eqz v1, :cond_a

    .line 255
    .line 256
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;->getSeed()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    goto :goto_1

    .line 261
    :cond_a
    move-object v1, v5

    .line 262
    :goto_1
    invoke-virtual {v3, v1}, Lcom/v2ray/ang/dto/ProfileItem;->setSeed(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getStreamSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    if-eqz v1, :cond_b

    .line 270
    .line 271
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->getQuicSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    if-eqz v1, :cond_b

    .line 276
    .line 277
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;->getSecurity()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    goto :goto_2

    .line 282
    :cond_b
    move-object v1, v5

    .line 283
    :goto_2
    invoke-virtual {v3, v1}, Lcom/v2ray/ang/dto/ProfileItem;->setQuicSecurity(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getStreamSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    if-eqz v1, :cond_c

    .line 291
    .line 292
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->getQuicSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    if-eqz v1, :cond_c

    .line 297
    .line 298
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;->getKey()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    goto :goto_3

    .line 303
    :cond_c
    move-object v1, v5

    .line 304
    :goto_3
    invoke-virtual {v3, v1}, Lcom/v2ray/ang/dto/ProfileItem;->setQuicKey(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getStreamSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    if-eqz v1, :cond_d

    .line 312
    .line 313
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->getGrpcSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    if-eqz v1, :cond_d

    .line 318
    .line 319
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;->getMultiMode()Ljava/lang/Boolean;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 324
    .line 325
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    :cond_d
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 330
    .line 331
    if-eqz v2, :cond_e

    .line 332
    .line 333
    new-array v2, v0, [J

    .line 334
    .line 335
    fill-array-data v2, :array_0

    .line 336
    .line 337
    .line 338
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 339
    .line 340
    .line 341
    :goto_4
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    goto :goto_5

    .line 346
    :cond_e
    new-array v2, v0, [J

    .line 347
    .line 348
    fill-array-data v2, :array_1

    .line 349
    .line 350
    .line 351
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 352
    .line 353
    .line 354
    goto :goto_4

    .line 355
    :goto_5
    invoke-virtual {v3, v1}, Lcom/v2ray/ang/dto/ProfileItem;->setMode(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getStreamSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    if-eqz v1, :cond_f

    .line 363
    .line 364
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->getGrpcSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    if-eqz v1, :cond_f

    .line 369
    .line 370
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;->getServiceName()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    goto :goto_6

    .line 375
    :cond_f
    move-object v1, v5

    .line 376
    :goto_6
    invoke-virtual {v3, v1}, Lcom/v2ray/ang/dto/ProfileItem;->setServiceName(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getStreamSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    if-eqz v1, :cond_10

    .line 384
    .line 385
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->getGrpcSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    if-eqz v1, :cond_10

    .line 390
    .line 391
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;->getAuthority()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    goto :goto_7

    .line 396
    :cond_10
    move-object v1, v5

    .line 397
    :goto_7
    invoke-virtual {v3, v1}, Lcom/v2ray/ang/dto/ProfileItem;->setAuthority(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getStreamSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    if-eqz v1, :cond_11

    .line 405
    .line 406
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->getSecurity()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    goto :goto_8

    .line 411
    :cond_11
    move-object v1, v5

    .line 412
    :goto_8
    invoke-virtual {v3, v1}, Lcom/v2ray/ang/dto/ProfileItem;->setSecurity(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getStreamSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    if-eqz v1, :cond_12

    .line 420
    .line 421
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->getRealitySettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    if-nez v1, :cond_14

    .line 426
    .line 427
    :cond_12
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getStreamSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    if-eqz v1, :cond_13

    .line 432
    .line 433
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->getTlsSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    goto :goto_9

    .line 438
    :cond_13
    move-object v1, v5

    .line 439
    :cond_14
    :goto_9
    if-eqz v1, :cond_15

    .line 440
    .line 441
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;->getAllowInsecure()Z

    .line 442
    .line 443
    .line 444
    move-result v2

    .line 445
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    goto :goto_a

    .line 450
    :cond_15
    move-object v2, v5

    .line 451
    :goto_a
    invoke-virtual {v3, v2}, Lcom/v2ray/ang/dto/ProfileItem;->setInsecure(Ljava/lang/Boolean;)V

    .line 452
    .line 453
    .line 454
    if-eqz v1, :cond_16

    .line 455
    .line 456
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;->getServerName()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    goto :goto_b

    .line 461
    :cond_16
    move-object v2, v5

    .line 462
    :goto_b
    invoke-virtual {v3, v2}, Lcom/v2ray/ang/dto/ProfileItem;->setSni(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    if-eqz v1, :cond_17

    .line 466
    .line 467
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;->getFingerprint()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    goto :goto_c

    .line 472
    :cond_17
    move-object v2, v5

    .line 473
    :goto_c
    invoke-virtual {v3, v2}, Lcom/v2ray/ang/dto/ProfileItem;->setFingerPrint(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    if-eqz v1, :cond_18

    .line 477
    .line 478
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;->getAlpn()Ljava/util/List;

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    if-eqz v2, :cond_18

    .line 483
    .line 484
    move-object v6, v2

    .line 485
    check-cast v6, Ljava/lang/Iterable;

    .line 486
    .line 487
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 488
    .line 489
    new-array v0, v0, [J

    .line 490
    .line 491
    fill-array-data v0, :array_2

    .line 492
    .line 493
    .line 494
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v7

    .line 501
    const/16 v13, 0x3e

    .line 502
    .line 503
    const/4 v14, 0x0

    .line 504
    const/4 v8, 0x0

    .line 505
    const/4 v9, 0x0

    .line 506
    const/4 v10, 0x0

    .line 507
    const/4 v11, 0x0

    .line 508
    const/4 v12, 0x0

    .line 509
    invoke-static/range {v6 .. v14}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    goto :goto_d

    .line 514
    :cond_18
    move-object v0, v5

    .line 515
    :goto_d
    invoke-static {v0}, Lcom/v2ray/ang/extension/_ExtKt;->removeWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    invoke-virtual {v3, v0}, Lcom/v2ray/ang/dto/ProfileItem;->setAlpn(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    if-eqz v1, :cond_19

    .line 527
    .line 528
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;->getPublicKey()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    goto :goto_e

    .line 533
    :cond_19
    move-object v0, v5

    .line 534
    :goto_e
    invoke-virtual {v3, v0}, Lcom/v2ray/ang/dto/ProfileItem;->setPublicKey(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    if-eqz v1, :cond_1a

    .line 538
    .line 539
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;->getShortId()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    goto :goto_f

    .line 544
    :cond_1a
    move-object v0, v5

    .line 545
    :goto_f
    invoke-virtual {v3, v0}, Lcom/v2ray/ang/dto/ProfileItem;->setShortId(Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    if-eqz v1, :cond_1b

    .line 549
    .line 550
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;->getSpiderX()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v5

    .line 554
    :cond_1b
    invoke-virtual {v3, v5}, Lcom/v2ray/ang/dto/ProfileItem;->setSpiderX(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    return-object v3

    .line 558
    nop

    .line 559
    :array_0
    .array-data 8
        -0x37c94d90bcba798L
        0x61287bf45bb0110dL    # 1.075705988761591E160
    .end array-data

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
    :array_1
    .array-data 8
        -0x5b92e1147cf5e03eL
        0x11ba6efea8d2be2cL    # 2.856532049594407E-223
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
    :array_2
    .array-data 8
        0x5c8f282171c02c7eL    # 7.246700775760381E137
        0x53e69723386550bdL    # 1.5078987910511924E96
    .end array-data
.end method

.method private final migrate2ProfileCustom(Lcom/v2ray/ang/dto/ServerConfig;)Lcom/v2ray/ang/dto/ProfileItem;
    .locals 2

    .line 1
    sget-object v0, Lcom/v2ray/ang/dto/ProfileItem;->Companion:Lcom/v2ray/ang/dto/ProfileItem$Companion;

    .line 2
    .line 3
    sget-object v1, Lcom/v2ray/ang/dto/EConfigType;->CUSTOM:Lcom/v2ray/ang/dto/EConfigType;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/v2ray/ang/dto/ProfileItem$Companion;->create(Lcom/v2ray/ang/dto/EConfigType;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ServerConfig;->getProxyOutbound()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ServerConfig;->getRemarks()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setRemarks(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getServerAddress()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setServer(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getServerPort()Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setServerPort(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method private final migrate2ProfileHttp(Lcom/v2ray/ang/dto/ServerConfig;)Lcom/v2ray/ang/dto/ProfileItem;
    .locals 3

    .line 1
    sget-object v0, Lcom/v2ray/ang/dto/ProfileItem;->Companion:Lcom/v2ray/ang/dto/ProfileItem$Companion;

    .line 2
    .line 3
    sget-object v1, Lcom/v2ray/ang/dto/EConfigType;->HTTP:Lcom/v2ray/ang/dto/EConfigType;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/v2ray/ang/dto/ProfileItem$Companion;->create(Lcom/v2ray/ang/dto/EConfigType;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ServerConfig;->getProxyOutbound()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    return-object v2

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ServerConfig;->getRemarks()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setRemarks(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getServerAddress()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setServer(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getServerPort()Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setServerPort(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;->getServers()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$ServersBean;

    .line 59
    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$ServersBean;->getUsers()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$ServersBean$SocksUsersBean;

    .line 73
    .line 74
    if-eqz p1, :cond_1

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$ServersBean$SocksUsersBean;->getUser()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    :cond_1
    invoke-virtual {v0, v2}, Lcom/v2ray/ang/dto/ProfileItem;->setUsername(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getPassword()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v0, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setPassword(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-object v0
.end method

.method private final migrate2ProfileHysteria2(Lcom/v2ray/ang/dto/ServerConfig;)Lcom/v2ray/ang/dto/ProfileItem;
    .locals 13

    .line 1
    const/4 v0, 0x2

    .line 2
    sget-object v1, Lcom/v2ray/ang/dto/ProfileItem;->Companion:Lcom/v2ray/ang/dto/ProfileItem$Companion;

    .line 3
    .line 4
    sget-object v2, Lcom/v2ray/ang/dto/EConfigType;->HYSTERIA2:Lcom/v2ray/ang/dto/EConfigType;

    .line 5
    .line 6
    invoke-virtual {v1, v2}, Lcom/v2ray/ang/dto/ProfileItem$Companion;->create(Lcom/v2ray/ang/dto/EConfigType;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ServerConfig;->getProxyOutbound()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    return-object v3

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ServerConfig;->getRemarks()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v1, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setRemarks(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getServerAddress()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v1, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setServer(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getServerPort()Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v1, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setServerPort(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getPassword()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v1, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setPassword(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    new-array v4, v0, [J

    .line 53
    .line 54
    fill-array-data v4, :array_0

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v1, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setSecurity(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getStreamSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->getTlsSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;->getAllowInsecure()Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v1, v4}, Lcom/v2ray/ang/dto/ProfileItem;->setInsecure(Ljava/lang/Boolean;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;->getServerName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v1, v4}, Lcom/v2ray/ang/dto/ProfileItem;->setSni(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;->getAlpn()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    if-eqz p1, :cond_1

    .line 102
    .line 103
    move-object v4, p1

    .line 104
    check-cast v4, Ljava/lang/Iterable;

    .line 105
    .line 106
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 107
    .line 108
    new-array v0, v0, [J

    .line 109
    .line 110
    fill-array-data v0, :array_1

    .line 111
    .line 112
    .line 113
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    const/16 v11, 0x3e

    .line 121
    .line 122
    const/4 v12, 0x0

    .line 123
    const/4 v6, 0x0

    .line 124
    const/4 v7, 0x0

    .line 125
    const/4 v8, 0x0

    .line 126
    const/4 v9, 0x0

    .line 127
    const/4 v10, 0x0

    .line 128
    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    goto :goto_0

    .line 133
    :cond_1
    move-object p1, v3

    .line 134
    :goto_0
    invoke-static {p1}, Lcom/v2ray/ang/extension/_ExtKt;->removeWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    if-nez p1, :cond_2

    .line 139
    .line 140
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 141
    .line 142
    const/4 v0, 0x1

    .line 143
    new-array v0, v0, [J

    .line 144
    .line 145
    const-wide v4, 0x737edd222bdfc4d9L    # 2.157972360964377E248

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    const/4 v6, 0x0

    .line 151
    aput-wide v4, v0, v6

    .line 152
    .line 153
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    :cond_2
    invoke-virtual {v1, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setAlpn(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    :cond_3
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    if-eqz p1, :cond_4

    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;->getObfsPassword()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    :cond_4
    invoke-virtual {v1, v3}, Lcom/v2ray/ang/dto/ProfileItem;->setObfsPassword(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    return-object v1

    .line 177
    :array_0
    .array-data 8
        -0x2414a7bafad18612L    # -6.211019327741749E134
        0x545c13f09d875228L    # 2.3989603826988248E98
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
    :array_1
    .array-data 8
        0x4de846c301eda015L    # 2.0452837558566254E67
        -0x2056e08636711aa8L    # -6.578978829791641E152
    .end array-data
.end method

.method private final migrate2ProfileSocks(Lcom/v2ray/ang/dto/ServerConfig;)Lcom/v2ray/ang/dto/ProfileItem;
    .locals 3

    .line 1
    sget-object v0, Lcom/v2ray/ang/dto/ProfileItem;->Companion:Lcom/v2ray/ang/dto/ProfileItem$Companion;

    .line 2
    .line 3
    sget-object v1, Lcom/v2ray/ang/dto/EConfigType;->SOCKS:Lcom/v2ray/ang/dto/EConfigType;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/v2ray/ang/dto/ProfileItem$Companion;->create(Lcom/v2ray/ang/dto/EConfigType;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ServerConfig;->getProxyOutbound()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    return-object v2

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ServerConfig;->getRemarks()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setRemarks(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getServerAddress()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setServer(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getServerPort()Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setServerPort(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;->getServers()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$ServersBean;

    .line 59
    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$ServersBean;->getUsers()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$ServersBean$SocksUsersBean;

    .line 73
    .line 74
    if-eqz p1, :cond_1

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$ServersBean$SocksUsersBean;->getUser()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    :cond_1
    invoke-virtual {v0, v2}, Lcom/v2ray/ang/dto/ProfileItem;->setUsername(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getPassword()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v0, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setPassword(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-object v0
.end method

.method private final migrate2ProfileWireguard(Lcom/v2ray/ang/dto/ServerConfig;)Lcom/v2ray/ang/dto/ProfileItem;
    .locals 13

    .line 1
    const/4 v0, 0x2

    .line 2
    sget-object v1, Lcom/v2ray/ang/dto/ProfileItem;->Companion:Lcom/v2ray/ang/dto/ProfileItem$Companion;

    .line 3
    .line 4
    sget-object v2, Lcom/v2ray/ang/dto/EConfigType;->WIREGUARD:Lcom/v2ray/ang/dto/EConfigType;

    .line 5
    .line 6
    invoke-virtual {v1, v2}, Lcom/v2ray/ang/dto/ProfileItem$Companion;->create(Lcom/v2ray/ang/dto/EConfigType;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ServerConfig;->getProxyOutbound()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    return-object v3

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ServerConfig;->getRemarks()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v1, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setRemarks(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getServerAddress()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v1, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setServer(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getServerPort()Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v1, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setServerPort(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;->getSecretKey()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Lcom/v2ray/ang/dto/ProfileItem;->setSecretKey(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;->getAddress()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    const/16 v5, 0x9

    .line 63
    .line 64
    new-array v5, v5, [J

    .line 65
    .line 66
    fill-array-data v5, :array_0

    .line 67
    .line 68
    .line 69
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    check-cast v2, Ljava/util/List;

    .line 80
    .line 81
    move-object v4, v2

    .line 82
    check-cast v4, Ljava/lang/Iterable;

    .line 83
    .line 84
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v5, v0, [J

    .line 87
    .line 88
    fill-array-data v5, :array_1

    .line 89
    .line 90
    .line 91
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    const/16 v11, 0x3e

    .line 99
    .line 100
    const/4 v12, 0x0

    .line 101
    const/4 v6, 0x0

    .line 102
    const/4 v7, 0x0

    .line 103
    const/4 v8, 0x0

    .line 104
    const/4 v9, 0x0

    .line 105
    const/4 v10, 0x0

    .line 106
    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-static {v2}, Lcom/v2ray/ang/extension/_ExtKt;->removeWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v1, v2}, Lcom/v2ray/ang/dto/ProfileItem;->setLocalAddress(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;->getPeers()Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    if-eqz v2, :cond_1

    .line 126
    .line 127
    const/4 v4, 0x0

    .line 128
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    check-cast v2, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$WireGuardBean;

    .line 133
    .line 134
    if-eqz v2, :cond_1

    .line 135
    .line 136
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$WireGuardBean;->getPublicKey()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    goto :goto_0

    .line 141
    :cond_1
    move-object v2, v3

    .line 142
    :goto_0
    invoke-virtual {v1, v2}, Lcom/v2ray/ang/dto/ProfileItem;->setPublicKey(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;->getMtu()Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v1, v2}, Lcom/v2ray/ang/dto/ProfileItem;->setMtu(Ljava/lang/Integer;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;->getReserved()Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    if-eqz p1, :cond_2

    .line 157
    .line 158
    move-object v4, p1

    .line 159
    check-cast v4, Ljava/lang/Iterable;

    .line 160
    .line 161
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 162
    .line 163
    new-array v0, v0, [J

    .line 164
    .line 165
    fill-array-data v0, :array_2

    .line 166
    .line 167
    .line 168
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    const/16 v11, 0x3e

    .line 176
    .line 177
    const/4 v12, 0x0

    .line 178
    const/4 v6, 0x0

    .line 179
    const/4 v7, 0x0

    .line 180
    const/4 v8, 0x0

    .line 181
    const/4 v9, 0x0

    .line 182
    const/4 v10, 0x0

    .line 183
    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    :cond_2
    invoke-static {v3}, Lcom/v2ray/ang/extension/_ExtKt;->removeWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {v1, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setReserved(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :cond_3
    return-object v1

    .line 199
    :array_0
    .array-data 8
        -0x1db4b8895288fcc0L    # -3.141800065338625E165
        0xa3af7e32134df9cL
        -0x7a1203229be7d978L
        0x56e8500cd6e7e83eL    # 4.567952132646003E110
        -0x7ed2b5d26423801cL    # -5.338880066926223E-303
        0x3b7446bfde64fd56L    # 2.683554587780292E-22
        -0x7bc64ed111eed856L
        0x3c7a3e0f52441e26L    # 2.2761672135021484E-17
        0x765992a9b19af588L    # 1.2582190500146587E262
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
    .line 239
    :array_1
    .array-data 8
        0x2ea5df9099778dc2L    # 5.629703613030792E-84
        0x35f9273ff62672edL    # 1.0756624848596818E-48
    .end array-data

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
    :array_2
    .array-data 8
        -0x694d2369146626c5L
        0x5e66111b71f84dd2L    # 5.510966323908798E146
    .end array-data
.end method

.method private final migrateServerConfig2ProfileSub(Lcom/v2ray/ang/dto/ServerConfig;)Lcom/v2ray/ang/dto/ProfileItem;
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ServerConfig;->getProxyOutbound()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getProtocol()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v2, v3

    .line 16
    :goto_0
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    new-array v5, v0, [J

    .line 19
    .line 20
    fill-array-data v5, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 31
    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    new-array v7, v1, [J

    .line 39
    .line 40
    fill-array-data v7, :array_1

    .line 41
    .line 42
    .line 43
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    invoke-direct {p0, p1}, Lcom/v2ray/ang/handler/MigrateManager;->migrate2ProfileCommon(Lcom/v2ray/ang/dto/ServerConfig;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    goto/16 :goto_1

    .line 64
    .line 65
    :cond_1
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 66
    .line 67
    new-array v6, v0, [J

    .line 68
    .line 69
    fill-array-data v6, :array_2

    .line 70
    .line 71
    .line 72
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v7, v1, [J

    .line 86
    .line 87
    fill-array-data v7, :array_3

    .line 88
    .line 89
    .line 90
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-eqz v4, :cond_2

    .line 105
    .line 106
    invoke-direct {p0, p1}, Lcom/v2ray/ang/handler/MigrateManager;->migrate2ProfileCommon(Lcom/v2ray/ang/dto/ServerConfig;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    goto/16 :goto_1

    .line 111
    .line 112
    :cond_2
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 113
    .line 114
    new-array v6, v0, [J

    .line 115
    .line 116
    fill-array-data v6, :array_4

    .line 117
    .line 118
    .line 119
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 131
    .line 132
    new-array v7, v1, [J

    .line 133
    .line 134
    fill-array-data v7, :array_5

    .line 135
    .line 136
    .line 137
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-eqz v4, :cond_3

    .line 152
    .line 153
    invoke-direct {p0, p1}, Lcom/v2ray/ang/handler/MigrateManager;->migrate2ProfileCommon(Lcom/v2ray/ang/dto/ServerConfig;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    goto/16 :goto_1

    .line 158
    .line 159
    :cond_3
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 160
    .line 161
    new-array v6, v1, [J

    .line 162
    .line 163
    fill-array-data v6, :array_6

    .line 164
    .line 165
    .line 166
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 178
    .line 179
    new-array v7, v1, [J

    .line 180
    .line 181
    fill-array-data v7, :array_7

    .line 182
    .line 183
    .line 184
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    if-eqz v4, :cond_4

    .line 199
    .line 200
    invoke-direct {p0, p1}, Lcom/v2ray/ang/handler/MigrateManager;->migrate2ProfileCommon(Lcom/v2ray/ang/dto/ServerConfig;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    goto/16 :goto_1

    .line 205
    .line 206
    :cond_4
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 207
    .line 208
    new-array v6, v0, [J

    .line 209
    .line 210
    fill-array-data v6, :array_8

    .line 211
    .line 212
    .line 213
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 225
    .line 226
    new-array v7, v1, [J

    .line 227
    .line 228
    fill-array-data v7, :array_9

    .line 229
    .line 230
    .line 231
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    if-eqz v4, :cond_5

    .line 246
    .line 247
    invoke-direct {p0, p1}, Lcom/v2ray/ang/handler/MigrateManager;->migrate2ProfileSocks(Lcom/v2ray/ang/dto/ServerConfig;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    goto/16 :goto_1

    .line 252
    .line 253
    :cond_5
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 254
    .line 255
    new-array v6, v0, [J

    .line 256
    .line 257
    fill-array-data v6, :array_a

    .line 258
    .line 259
    .line 260
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 272
    .line 273
    new-array v7, v1, [J

    .line 274
    .line 275
    fill-array-data v7, :array_b

    .line 276
    .line 277
    .line 278
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    if-eqz v4, :cond_6

    .line 293
    .line 294
    invoke-direct {p0, p1}, Lcom/v2ray/ang/handler/MigrateManager;->migrate2ProfileHttp(Lcom/v2ray/ang/dto/ServerConfig;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    goto/16 :goto_1

    .line 299
    .line 300
    :cond_6
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 301
    .line 302
    new-array v6, v1, [J

    .line 303
    .line 304
    fill-array-data v6, :array_c

    .line 305
    .line 306
    .line 307
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 319
    .line 320
    new-array v7, v1, [J

    .line 321
    .line 322
    fill-array-data v7, :array_d

    .line 323
    .line 324
    .line 325
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v6

    .line 332
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v4

    .line 339
    if-eqz v4, :cond_7

    .line 340
    .line 341
    invoke-direct {p0, p1}, Lcom/v2ray/ang/handler/MigrateManager;->migrate2ProfileWireguard(Lcom/v2ray/ang/dto/ServerConfig;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    goto :goto_1

    .line 346
    :cond_7
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 347
    .line 348
    new-array v6, v1, [J

    .line 349
    .line 350
    fill-array-data v6, :array_e

    .line 351
    .line 352
    .line 353
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v4

    .line 360
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v4

    .line 364
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 365
    .line 366
    new-array v7, v1, [J

    .line 367
    .line 368
    fill-array-data v7, :array_f

    .line 369
    .line 370
    .line 371
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v6

    .line 378
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result v4

    .line 385
    if-eqz v4, :cond_8

    .line 386
    .line 387
    invoke-direct {p0, p1}, Lcom/v2ray/ang/handler/MigrateManager;->migrate2ProfileHysteria2(Lcom/v2ray/ang/dto/ServerConfig;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    goto :goto_1

    .line 392
    :cond_8
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 393
    .line 394
    new-array v0, v0, [J

    .line 395
    .line 396
    fill-array-data v0, :array_10

    .line 397
    .line 398
    .line 399
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 411
    .line 412
    new-array v1, v1, [J

    .line 413
    .line 414
    fill-array-data v1, :array_11

    .line 415
    .line 416
    .line 417
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    if-eqz v0, :cond_9

    .line 432
    .line 433
    invoke-direct {p0, p1}, Lcom/v2ray/ang/handler/MigrateManager;->migrate2ProfileCustom(Lcom/v2ray/ang/dto/ServerConfig;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 434
    .line 435
    .line 436
    move-result-object v3

    .line 437
    :cond_9
    :goto_1
    return-object v3

    .line 438
    nop

    .line 439
    :array_0
    .array-data 8
        0xd7f4afe4c02ee72L
        -0x5cb369419bf496aL
    .end array-data

    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    :array_1
    .array-data 8
        0x252a87822a7169f3L
        -0x7007854d58d09323L    # -9.8546711995134E-232
        -0x22c1fa054c7dc731L    # -1.4301356519747927E141
    .end array-data

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
        -0x20e4b199c6163dcdL    # -1.396625212610322E150
        0x463506d0d0c50fa3L    # 1.6659007653163228E30
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
    :array_3
    .array-data 8
        0x1682144ff9daf371L    # 2.952402691044307E-200
        -0x40e9c469a61f025L    # -1.059166266784754E289
        0x7e43dae5ece4b660L    # 1.6620999489879007E300
    .end array-data

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
    :array_4
    .array-data 8
        -0x22044df83159f94dL    # -5.40363584608644E144
        -0x21db72faa1c3748L    # -2.391592162450053E298
    .end array-data

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
    :array_5
    .array-data 8
        -0x6136c8163db14271L
        -0x528b5a8d30479798L    # -1.0135453361114434E-89
        0x25cc7c684bff001cL
    .end array-data

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
    :array_6
    .array-data 8
        -0x6d599ec52f8ff579L    # -7.924820489858871E-219
        0x72fade2df21c5bdfL    # 7.338208002403291E245
        -0xc982e37531092f0L    # -8.32719072849608E247
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
    :array_7
    .array-data 8
        0x66e6249ea11442e5L    # 4.817310816775926E187
        0x5ace1b78bfb975e2L    # 2.608675919544231E129
        -0xa52d3b3ab823b29L    # -7.0085467688154E258
    .end array-data

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
    :array_8
    .array-data 8
        -0x40bb7a81cd20c82aL    # -6.262651638679849E-4
        -0xbb95d4ede282d6dL    # -1.296512696953537E252
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
    :array_9
    .array-data 8
        0x7750d583155d3f51L    # 5.428055870773231E266
        0x69aaa422c22d668L
        0xdf06598190647e0L
    .end array-data

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
    .line 580
    .line 581
    .line 582
    .line 583
    :array_a
    .array-data 8
        0x13e1ab5f311dcd6L
        -0x35a39a05bf5b7cc2L    # -1.6601693892234072E50
    .end array-data

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
    :array_b
    .array-data 8
        0xe7486eabe9f06dfL    # 4.925488899323578E-239
        0xcc9c8391ca97a48L    # 4.60927074051877E-247
        -0xc0bbee9a736b4efL
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
    :array_c
    .array-data 8
        -0x114370a48b4d9b3cL    # -2.642863990965186E225
        -0x7a5dfd41a864fc5L    # -5.520819392248517E271
        -0x2678fb3c02272530L
    .end array-data

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
    .line 624
    .line 625
    .line 626
    .line 627
    :array_d
    .array-data 8
        0x6d4d9f02d2827a73L    # 3.2675978061787625E218
        0x3a69fe7432eccd91L    # 2.624719264462911E-27
        -0x595cdce4c4f696abL
    .end array-data

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
    :array_e
    .array-data 8
        -0x41d559628ba032bL    # -5.684465266044451E288
        -0xde0911bcf882c23L    # -5.239920679563482E241
        -0x48fa7b7caea10745L    # -1.206104805013057E-43
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
    :array_f
    .array-data 8
        -0x1e4513102c99cdb0L    # -6.056782918343706E162
        0x6e7e687077fe663dL    # 1.7586692265077017E224
        0x65f9ab797628c75aL    # 1.7042772236892308E183
    .end array-data

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
    :array_10
    .array-data 8
        0x4ac2f0f53c3dee54L    # 1.417351996791746E52
        -0x76b5d05e45984521L    # -6.496867285209864E-264
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
    :array_11
    .array-data 8
        0x7f3caa4bf0a70444L    # 7.863048012718642E304
        -0x1b4f75c34709bb09L    # -1.0472555859395695E177
        0x49866d987003eea9L    # 1.6005232171134739E46
    .end array-data
.end method

.method private static final serverStorage_delegate$lambda$0()Lcom/tencent/mmkv/MMKV;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    const/4 v1, 0x2

    .line 17
    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        -0x2c1f27024912e1e3L    # -1.1245719014729178E96
        0x43f7670fa5cd7fe2L    # 2.6981340644244333E19
        0x68e9c40f34b49418L    # 2.4075303450838816E197
    .end array-data
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    invoke-static {}, Lcom/v2ray/ang/handler/MigrateManager;->serverStorage_delegate$lambda$0()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final migrateServerConfig2Profile()Z
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MigrateManager;->getServerStorage()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lcom/tencent/mmkv/MMKV;->count()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    long-to-int v3, v2

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    return v2

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MigrateManager;->getServerStorage()Lcom/tencent/mmkv/MMKV;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Lcom/tencent/mmkv/MMKV;->allKeys()[Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    return v2

    .line 27
    :cond_1
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    new-array v5, v1, [J

    .line 30
    .line 31
    fill-array-data v5, :array_0

    .line 32
    .line 33
    .line 34
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    array-length v4, v3

    .line 41
    :goto_0
    if-ge v2, v4, :cond_6

    .line 42
    .line 43
    aget-object v5, v3, v2

    .line 44
    .line 45
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v5}, Lcom/v2ray/ang/handler/MigrateManager;->decodeServerConfigOld(Ljava/lang/String;)Lcom/v2ray/ang/dto/ServerConfig;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    if-nez v6, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    sget-object v7, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 56
    .line 57
    invoke-virtual {v7, v5}, Lcom/v2ray/ang/handler/MmkvManager;->decodeServerConfig(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    if-eqz v8, :cond_3

    .line 62
    .line 63
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MigrateManager;->getServerStorage()Lcom/tencent/mmkv/MMKV;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v6, v5}, Lcom/tencent/mmkv/MMKV;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    invoke-direct {p0, v6}, Lcom/v2ray/ang/handler/MigrateManager;->migrateServerConfig2ProfileSub(Lcom/v2ray/ang/dto/ServerConfig;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    if-nez v8, :cond_4

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    invoke-virtual {v6}, Lcom/v2ray/ang/dto/ServerConfig;->getSubscriptionId()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v8, v6}, Lcom/v2ray/ang/dto/ProfileItem;->setSubscriptionId(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7, v5, v8}, Lcom/v2ray/ang/handler/MmkvManager;->encodeServerConfig(Ljava/lang/String;Lcom/v2ray/ang/dto/ProfileItem;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v7, v5}, Lcom/v2ray/ang/handler/MmkvManager;->decodeServerConfig(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    if-nez v6, :cond_5

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MigrateManager;->getServerStorage()Lcom/tencent/mmkv/MMKV;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v6, v5}, Lcom/tencent/mmkv/MMKV;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 100
    .line 101
    .line 102
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 103
    .line 104
    new-array v6, v1, [J

    .line 105
    .line 106
    fill-array-data v6, :array_1

    .line 107
    .line 108
    .line 109
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v8}, Lcom/v2ray/ang/dto/ProfileItem;->getRemarks()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    :goto_1
    add-int/2addr v2, v0

    .line 119
    goto :goto_0

    .line 120
    :cond_6
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 121
    .line 122
    new-array v1, v1, [J

    .line 123
    .line 124
    fill-array-data v1, :array_2

    .line 125
    .line 126
    .line 127
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 134
    .line 135
    const/4 v2, 0x5

    .line 136
    new-array v2, v2, [J

    .line 137
    .line 138
    fill-array-data v2, :array_3

    .line 139
    .line 140
    .line 141
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    return v0

    .line 148
    nop

    .line 149
    :array_0
    .array-data 8
        -0x731edc5fabc86d6bL
        -0x534fb2beef8fc75fL    # -1.9537825309320158E-93
        0x42315cd1c4130a2bL    # 7.457169512303972E10
    .end array-data

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
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :array_1
    .array-data 8
        0x7b2923cbe855de6L
        0x24bb1bc09f1c3f9cL    # 9.547857311202903E-132
        -0x5ad6f68ea5507aceL
    .end array-data

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
    :array_2
    .array-data 8
        0x338bfd1ef6788ebaL    # 2.177180523891205E-60
        0x7c97d7f2b755eea6L    # 1.4871222760262531E292
        0x3cc814822fde5b0fL    # 6.683573554535541E-16
    .end array-data

    :array_3
    .array-data 8
        0x7d352d8130b6c8f8L
        -0x4b52205dcd08e4fL    # -7.990365814772832E285
        -0x61130400dde78e3eL
        -0x13c871aa789ef067L    # -1.9825235551132928E213
        -0x40e05fd0415cd425L    # -1.2064258013137713E-4
    .end array-data
.end method
