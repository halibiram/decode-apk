.class public final Lcom/v2ray/ang/util/MmkvManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u001dJ\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020\u0005J\u0016\u0010!\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u001fJ\u000e\u0010#\u001a\u00020$2\u0006\u0010 \u001a\u00020\u0005J\u000e\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020\u0005J\u0010\u0010\'\u001a\u0004\u0018\u00010(2\u0006\u0010 \u001a\u00020\u0005J\u0006\u0010)\u001a\u00020$J\u000e\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u0005J\u0018\u0010-\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002000/0.J\u0006\u00101\u001a\u00020$R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0013\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0012\u001a\u0004\u0008\u0014\u0010\u0010R\u001b\u0010\u0016\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0012\u001a\u0004\u0008\u0017\u0010\u0010R\u001b\u0010\u0019\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u0012\u001a\u0004\u0008\u001a\u0010\u0010\u00a8\u00062"
    }
    d2 = {
        "Lcom/v2ray/ang/util/MmkvManager;",
        "",
        "<init>",
        "()V",
        "ID_MAIN",
        "",
        "ID_SERVER_CONFIG",
        "ID_SERVER_RAW",
        "ID_SERVER_AFF",
        "ID_SUB",
        "ID_SETTING",
        "KEY_SELECTED_SERVER",
        "KEY_ANG_CONFIGS",
        "mainStorage",
        "Lcom/tencent/mmkv/MMKV;",
        "getMainStorage",
        "()Lcom/tencent/mmkv/MMKV;",
        "mainStorage$delegate",
        "Lkotlin/Lazy;",
        "serverStorage",
        "getServerStorage",
        "serverStorage$delegate",
        "serverAffStorage",
        "getServerAffStorage",
        "serverAffStorage$delegate",
        "subStorage",
        "getSubStorage",
        "subStorage$delegate",
        "decodeServerList",
        "",
        "decodeServerConfig",
        "Lcom/v2ray/ang/dto/ServerConfig;",
        "guid",
        "encodeServerConfig",
        "config",
        "removeServer",
        "",
        "removeServerViaSubid",
        "subid",
        "decodeServerAffiliationInfo",
        "Lcom/v2ray/ang/dto/ServerAffiliationInfo;",
        "clearAllTestDelayResults",
        "importUrlAsSubscription",
        "",
        "url",
        "decodeSubscriptions",
        "",
        "Lkotlin/Pair;",
        "Lcom/v2ray/ang/dto/SubscriptionItem;",
        "removeAllServer",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMmkvManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MmkvManager.kt\ncom/v2ray/ang/util/MmkvManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,138:1\n1#2:139\n13472#3,2:140\n13472#3,2:142\n13472#3,2:146\n1869#4,2:144\n1056#4:148\n*S KotlinDebug\n*F\n+ 1 MmkvManager.kt\ncom/v2ray/ang/util/MmkvManager\n*L\n76#1:140,2\n97#1:142,2\n121#1:146,2\n107#1:144,2\n127#1:148\n*E\n"
    }
.end annotation


# static fields
.field public static final ID_MAIN:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ID_SERVER_AFF:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ID_SERVER_CONFIG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ID_SERVER_RAW:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ID_SETTING:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ID_SUB:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/v2ray/ang/util/MmkvManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_ANG_CONFIGS:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_SELECTED_SERVER:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final mainStorage$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final serverAffStorage$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final serverStorage$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final subStorage$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

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
    sput-object v0, Lcom/v2ray/ang/util/MmkvManager;->ID_MAIN:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    new-array v3, v2, [J

    .line 22
    .line 23
    fill-array-data v3, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/v2ray/ang/util/MmkvManager;->ID_SERVER_CONFIG:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v3, v2, [J

    .line 38
    .line 39
    fill-array-data v3, :array_2

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lcom/v2ray/ang/util/MmkvManager;->ID_SERVER_RAW:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array v3, v2, [J

    .line 54
    .line 55
    fill-array-data v3, :array_3

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/v2ray/ang/util/MmkvManager;->ID_SERVER_AFF:Ljava/lang/String;

    .line 66
    .line 67
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    new-array v3, v1, [J

    .line 70
    .line 71
    fill-array-data v3, :array_4

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sput-object v0, Lcom/v2ray/ang/util/MmkvManager;->ID_SUB:Ljava/lang/String;

    .line 82
    .line 83
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v1, v1, [J

    .line 86
    .line 87
    fill-array-data v1, :array_5

    .line 88
    .line 89
    .line 90
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    sput-object v0, Lcom/v2ray/ang/util/MmkvManager;->ID_SETTING:Ljava/lang/String;

    .line 98
    .line 99
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 100
    .line 101
    new-array v1, v2, [J

    .line 102
    .line 103
    fill-array-data v1, :array_6

    .line 104
    .line 105
    .line 106
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    sput-object v0, Lcom/v2ray/ang/util/MmkvManager;->KEY_SELECTED_SERVER:Ljava/lang/String;

    .line 114
    .line 115
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 116
    .line 117
    new-array v1, v2, [J

    .line 118
    .line 119
    fill-array-data v1, :array_7

    .line 120
    .line 121
    .line 122
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    sput-object v0, Lcom/v2ray/ang/util/MmkvManager;->KEY_ANG_CONFIGS:Ljava/lang/String;

    .line 130
    .line 131
    new-instance v0, Lcom/v2ray/ang/util/MmkvManager;

    .line 132
    .line 133
    invoke-direct {v0}, Lcom/v2ray/ang/util/MmkvManager;-><init>()V

    .line 134
    .line 135
    .line 136
    sput-object v0, Lcom/v2ray/ang/util/MmkvManager;->INSTANCE:Lcom/v2ray/ang/util/MmkvManager;

    .line 137
    .line 138
    new-instance v0, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;

    .line 139
    .line 140
    const/16 v1, 0xb

    .line 141
    .line 142
    invoke-direct {v0, v1}, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;-><init>(I)V

    .line 143
    .line 144
    .line 145
    invoke-static {v0}, L딄뒘듰둡땨돸된땀도땡딄듽땩됨돴뒬돛땁됨듸도듽땳돝뒀땡듟둡될들뒼땟딹뒋땀듐둡딞딨둔땅딅딤땜듬뎨땔됨뒀땪뎹뒻땠딜딝딨땀딤땸됐따땄딹따돼땄딸돝둣디두뒘땡딨둘땟돳돼뒼땬둘뒉돛딅듐땦돷둘딎됴뒻땣뒨땱뒻땳돨딤딟뎨땄땲듔듸딻땔땜듔딸딸뒙땅뒹땰듽뒛딟뒈땨땧땦뎹땸디딞땍됩뎽됩돤;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    sput-object v0, Lcom/v2ray/ang/util/MmkvManager;->mainStorage$delegate:Lkotlin/Lazy;

    .line 150
    .line 151
    new-instance v0, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;

    .line 152
    .line 153
    const/16 v1, 0xd

    .line 154
    .line 155
    invoke-direct {v0, v1}, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;-><init>(I)V

    .line 156
    .line 157
    .line 158
    invoke-static {v0}, L딄뒘듰둡땨돸된땀도땡딄듽땩됨돴뒬돛땁됨듸도듽땳돝뒀땡듟둡될들뒼땟딹뒋땀듐둡딞딨둔땅딅딤땜듬뎨땔됨뒀땪뎹뒻땠딜딝딨땀딤땸됐따땄딹따돼땄딸돝둣디두뒘땡딨둘땟돳돼뒼땬둘뒉돛딅듐땦돷둘딎됴뒻땣뒨땱뒻땳돨딤딟뎨땄땲듔듸딻땔땜듔딸딸뒙땅뒹땰듽뒛딟뒈땨땧땦뎹땸디딞땍됩뎽됩돤;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    sput-object v0, Lcom/v2ray/ang/util/MmkvManager;->serverStorage$delegate:Lkotlin/Lazy;

    .line 163
    .line 164
    new-instance v0, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;

    .line 165
    .line 166
    const/16 v1, 0xf

    .line 167
    .line 168
    invoke-direct {v0, v1}, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;-><init>(I)V

    .line 169
    .line 170
    .line 171
    invoke-static {v0}, L딄뒘듰둡땨돸된땀도땡딄듽땩됨돴뒬돛땁됨듸도듽땳돝뒀땡듟둡될들뒼땟딹뒋땀듐둡딞딨둔땅딅딤땜듬뎨땔됨뒀땪뎹뒻땠딜딝딨땀딤땸됐따땄딹따돼땄딸돝둣디두뒘땡딨둘땟돳돼뒼땬둘뒉돛딅듐땦돷둘딎됴뒻땣뒨땱뒻땳돨딤딟뎨땄땲듔듸딻땔땜듔딸딸뒙땅뒹땰듽뒛딟뒈땨땧땦뎹땸디딞땍됩뎽됩돤;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    sput-object v0, Lcom/v2ray/ang/util/MmkvManager;->serverAffStorage$delegate:Lkotlin/Lazy;

    .line 176
    .line 177
    new-instance v0, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;

    .line 178
    .line 179
    const/16 v1, 0x11

    .line 180
    .line 181
    invoke-direct {v0, v1}, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;-><init>(I)V

    .line 182
    .line 183
    .line 184
    invoke-static {v0}, L딄뒘듰둡땨돸된땀도땡딄듽땩됨돴뒬돛땁됨듸도듽땳돝뒀땡듟둡될들뒼땟딹뒋땀듐둡딞딨둔땅딅딤땜듬뎨땔됨뒀땪뎹뒻땠딜딝딨땀딤땸됐따땄딹따돼땄딸돝둣디두뒘땡딨둘땟돳돼뒼땬둘뒉돛딅듐땦돷둘딎됴뒻땣뒨땱뒻땳돨딤딟뎨땄땲듔듸딻땔땜듔딸딸뒙땅뒹땰듽뒛딟뒈땨땧땦뎹땸디딞땍됩뎽됩돤;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    sput-object v0, Lcom/v2ray/ang/util/MmkvManager;->subStorage$delegate:Lkotlin/Lazy;

    .line 189
    .line 190
    return-void

    .line 191
    :array_0
    .array-data 8
        0x153227054ff98e9dL    # 1.413505913473057E-206
        0x7b03dfa4a6be4742L    # 3.694048543482069E284
    .end array-data

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
        0x53e696a8da2c0ebaL    # 1.5077741569796977E96
        -0x6d44c2328af837aaL    # -1.929269237024186E-218
        -0xe47c9e42a83e141L    # -6.306316901142623E239
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
    :array_2
    .array-data 8
        -0x7b71a5ffd15af92bL    # -9.966329333579403E-287
        -0xf5cc5421d6510efL    # -3.8213228067382475E234
        -0x8219838c7275210L
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
    :array_3
    .array-data 8
        0x7d0993b939a78e64L    # 2.0419079013772297E294
        0x47ba29a1903fed8L
        0xe664d9f272d9da8L
    .end array-data

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
    :array_4
    .array-data 8
        -0x1cebfef13efec377L    # -1.887371003952734E169
        0x69f7cd1efce8099aL    # 2.914989160618755E202
    .end array-data

    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    :array_5
    .array-data 8
        0x2fa3f1f82c2a7e54L
        0x3136c394d0d257a7L    # 1.2883961465208538E-71
    .end array-data

    .line 264
    .line 265
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
    :array_6
    .array-data 8
        -0x236035b72e979955L    # -1.478805071045921E138
        0x5c3445e0f63ee59dL    # 1.4735175215959075E136
        -0x11794ff9f4c67fc3L    # -2.6243103589895452E224
    .end array-data

    .line 276
    .line 277
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
    :array_7
    .array-data 8
        -0x291eb2bfccab3bcL
        0x45fc3f196d24f83bL    # 1.3986980278647205E29
        -0x35a23feb0a0dfbddL    # -1.7392056460144887E50
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

.method private final getMainStorage()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    sget-object v0, Lcom/v2ray/ang/util/MmkvManager;->mainStorage$delegate:Lkotlin/Lazy;

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

.method private final getServerAffStorage()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    sget-object v0, Lcom/v2ray/ang/util/MmkvManager;->serverAffStorage$delegate:Lkotlin/Lazy;

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

.method private final getServerStorage()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    sget-object v0, Lcom/v2ray/ang/util/MmkvManager;->serverStorage$delegate:Lkotlin/Lazy;

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

.method private final getSubStorage()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    sget-object v0, Lcom/v2ray/ang/util/MmkvManager;->subStorage$delegate:Lkotlin/Lazy;

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

.method private static final mainStorage_delegate$lambda$0()Lcom/tencent/mmkv/MMKV;
    .locals 3

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
    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :array_0
    .array-data 8
        -0x8353ffac6a48293L
        0x6d3e826e69cbabc7L    # 1.682797776783016E218
    .end array-data
.end method

.method private static final serverAffStorage_delegate$lambda$2()Lcom/tencent/mmkv/MMKV;
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
        0x1bafa1eab306de60L
        -0x26da80ab843042e4L    # -2.775580714506676E121
        0x1b5827528a271e1dL    # 5.96052461344248E-177
    .end array-data
.end method

.method private static final serverStorage_delegate$lambda$1()Lcom/tencent/mmkv/MMKV;
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
        -0x39de802a37ae1ba2L    # -6.932209030866605E29
        0xa73ed33d71bbdbaL
        -0x4d85252417749e57L    # -1.5937668344577814E-65
    .end array-data
.end method

.method private static final subStorage_delegate$lambda$3()Lcom/tencent/mmkv/MMKV;
    .locals 3

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
    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :array_0
    .array-data 8
        0x6592fb30d1aa8476L    # 1.969071040888853E181
        -0x563267ffb0e1f4aeL
    .end array-data
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    invoke-static {}, Lcom/v2ray/ang/util/MmkvManager;->serverStorage_delegate$lambda$1()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    invoke-static {}, Lcom/v2ray/ang/util/MmkvManager;->serverAffStorage_delegate$lambda$2()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    invoke-static {}, Lcom/v2ray/ang/util/MmkvManager;->subStorage_delegate$lambda$3()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    invoke-static {}, Lcom/v2ray/ang/util/MmkvManager;->mainStorage_delegate$lambda$0()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final clearAllTestDelayResults()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/v2ray/ang/util/MmkvManager;->getServerAffStorage()Lcom/tencent/mmkv/MMKV;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/tencent/mmkv/MMKV;->allKeys()[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_1

    .line 14
    .line 15
    aget-object v3, v0, v2

    .line 16
    .line 17
    sget-object v4, Lcom/v2ray/ang/util/MmkvManager;->INSTANCE:Lcom/v2ray/ang/util/MmkvManager;

    .line 18
    .line 19
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4, v3}, Lcom/v2ray/ang/util/MmkvManager;->decodeServerAffiliationInfo(Ljava/lang/String;)Lcom/v2ray/ang/dto/ServerAffiliationInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    const-wide/16 v6, 0x0

    .line 29
    .line 30
    invoke-virtual {v5, v6, v7}, Lcom/v2ray/ang/dto/ServerAffiliationInfo;->setTestDelayMillis(J)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v4}, Lcom/v2ray/ang/util/MmkvManager;->getServerAffStorage()Lcom/tencent/mmkv/MMKV;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    new-instance v6, Lcom/google/gson/Gson;

    .line 38
    .line 39
    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v4, v3, v5}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return-void
.end method

.method public final decodeServerAffiliationInfo(Ljava/lang/String;)Lcom/v2ray/ang/dto/ServerAffiliationInfo;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

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
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_0
    invoke-direct {p0}, Lcom/v2ray/ang/util/MmkvManager;->getServerAffStorage()Lcom/tencent/mmkv/MMKV;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, p1}, Lcom/tencent/mmkv/MMKV;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance v0, Lcom/google/gson/Gson;

    .line 45
    .line 46
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 47
    .line 48
    .line 49
    const-class v1, Lcom/v2ray/ang/dto/ServerAffiliationInfo;

    .line 50
    .line 51
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lcom/v2ray/ang/dto/ServerAffiliationInfo;

    .line 56
    .line 57
    return-object p1

    .line 58
    :cond_2
    :goto_0
    return-object v1

    .line 59
    :array_0
    .array-data 8
        -0x771e4ef22bddbe68L    # -6.85837728953065E-266
        0xe1490bf5a592007L    # 7.710473642825488E-241
    .end array-data
.end method

.method public final decodeServerConfig(Ljava/lang/String;)Lcom/v2ray/ang/dto/ServerConfig;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

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
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_0
    invoke-direct {p0}, Lcom/v2ray/ang/util/MmkvManager;->getServerStorage()Lcom/tencent/mmkv/MMKV;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, p1}, Lcom/tencent/mmkv/MMKV;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance v0, Lcom/google/gson/Gson;

    .line 45
    .line 46
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 47
    .line 48
    .line 49
    const-class v1, Lcom/v2ray/ang/dto/ServerConfig;

    .line 50
    .line 51
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lcom/v2ray/ang/dto/ServerConfig;

    .line 56
    .line 57
    return-object p1

    .line 58
    :cond_2
    :goto_0
    return-object v1

    .line 59
    :array_0
    .array-data 8
        -0x3693fc5b7b782e7cL    # -4.997905479105062E45
        -0x102f9351dd0d2f2fL    # -3.984278634696725E230
    .end array-data
.end method

.method public final decodeServerList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/v2ray/ang/util/MmkvManager;->getMainStorage()Lcom/tencent/mmkv/MMKV;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    new-array v3, v2, [J

    .line 9
    .line 10
    fill-array-data v3, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    .line 34
    .line 35
    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 36
    .line 37
    .line 38
    const-class v3, [Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v2, v2, [J

    .line 47
    .line 48
    fill-array-data v2, :array_1

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    check-cast v0, [Ljava/lang/Object;

    .line 62
    .line 63
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    :goto_1
    return-object v0

    .line 74
    nop

    .line 75
    :array_0
    .array-data 8
        0x469666937f774047L    # 1.1358498306249046E32
        0x71f20e042b8b8703L    # 7.524333820073515E240
        -0x6e6abdca3f12be4bL    # -5.743261136465099E-224
    .end array-data

    .line 76
    .line 77
    .line 78
    .line 79
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
    :array_1
    .array-data 8
        0x69eb5ba831405cc0L    # 1.6752977733544855E202
        -0x2173d50bfc0ccba9L    # -2.8138478315651072E147
        0x56c0c355cd5d617L
    .end array-data
.end method

.method public final decodeSubscriptions()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/v2ray/ang/dto/SubscriptionItem;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/v2ray/ang/util/MmkvManager;->getSubStorage()Lcom/tencent/mmkv/MMKV;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/tencent/mmkv/MMKV;->allKeys()[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    array-length v2, v1

    .line 17
    const/4 v3, 0x0

    .line 18
    :goto_0
    if-ge v3, v2, :cond_2

    .line 19
    .line 20
    aget-object v4, v1, v3

    .line 21
    .line 22
    sget-object v5, Lcom/v2ray/ang/util/MmkvManager;->INSTANCE:Lcom/v2ray/ang/util/MmkvManager;

    .line 23
    .line 24
    invoke-direct {v5}, Lcom/v2ray/ang/util/MmkvManager;->getSubStorage()Lcom/tencent/mmkv/MMKV;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {v5, v4}, Lcom/tencent/mmkv/MMKV;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    invoke-static {v5}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_0

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    new-instance v6, Lkotlin/Pair;

    .line 42
    .line 43
    new-instance v7, Lcom/google/gson/Gson;

    .line 44
    .line 45
    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    .line 46
    .line 47
    .line 48
    const-class v8, Lcom/v2ray/ang/dto/SubscriptionItem;

    .line 49
    .line 50
    invoke-virtual {v7, v5, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-direct {v6, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    new-instance v1, Lcom/v2ray/ang/util/MmkvManager$decodeSubscriptions$$inlined$sortedBy$1;

    .line 64
    .line 65
    invoke-direct {v1}, Lcom/v2ray/ang/util/MmkvManager$decodeSubscriptions$$inlined$sortedBy$1;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    return-object v0
.end method

.method public final encodeServerConfig(Ljava/lang/String;Lcom/v2ray/ang/dto/ServerConfig;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/v2ray/ang/dto/ServerConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    new-array v3, v2, [J

    .line 6
    .line 7
    fill-array-data v3, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    new-array v2, v2, [J

    .line 23
    .line 24
    fill-array-data v2, :array_1

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    sget-object p1, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/v2ray/ang/util/Utils;->getUuid()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/v2ray/ang/util/MmkvManager;->getServerStorage()Lcom/tencent/mmkv/MMKV;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    new-instance v2, Lcom/google/gson/Gson;

    .line 54
    .line 55
    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {v1, p1, p2}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/v2ray/ang/util/MmkvManager;->decodeServerList()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_2

    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    invoke-interface {p2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Lcom/v2ray/ang/util/MmkvManager;->getMainStorage()Lcom/tencent/mmkv/MMKV;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v3, v0, [J

    .line 86
    .line 87
    fill-array-data v3, :array_2

    .line 88
    .line 89
    .line 90
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    new-instance v3, Lcom/google/gson/Gson;

    .line 98
    .line 99
    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {v1, v2, p2}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    invoke-direct {p0}, Lcom/v2ray/ang/util/MmkvManager;->getMainStorage()Lcom/tencent/mmkv/MMKV;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 114
    .line 115
    new-array v2, v0, [J

    .line 116
    .line 117
    fill-array-data v2, :array_3

    .line 118
    .line 119
    .line 120
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {p2, v1}, Lcom/tencent/mmkv/MMKV;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    if-eqz p2, :cond_1

    .line 132
    .line 133
    invoke-static {p2}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    if-eqz p2, :cond_2

    .line 138
    .line 139
    :cond_1
    invoke-direct {p0}, Lcom/v2ray/ang/util/MmkvManager;->getMainStorage()Lcom/tencent/mmkv/MMKV;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 144
    .line 145
    new-array v0, v0, [J

    .line 146
    .line 147
    fill-array-data v0, :array_4

    .line 148
    .line 149
    .line 150
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {p2, v0, p1}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    :cond_2
    return-object p1

    .line 161
    :array_0
    .array-data 8
        -0x38a0999a283ff11aL    # -6.521523088401092E35
        -0x2f17d4d0c72f8257L    # -5.731416121580363E81
    .end array-data

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
    :array_1
    .array-data 8
        0x3a5621b80301916cL    # 1.1173660145093939E-27
        -0x35a3f1649434a506L    # -1.6402175088710173E50
    .end array-data

    .line 174
    .line 175
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
    :array_2
    .array-data 8
        0x202f685d0a88f790L
        0x6c211d430a8f728cL    # 7.201885283901349E212
        0x337b99b604ed24dbL    # 1.0734870014843107E-60
    .end array-data

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
    :array_3
    .array-data 8
        0x7b89b083ea6c64c8L    # 1.2224236804586129E287
        0x65090271c84a668eL    # 5.067261309776455E178
        -0x4283780b305f6485L    # -1.6218040895004737E-12
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
    :array_4
    .array-data 8
        -0x2d8e63d37fd0bd76L    # -1.4012622499387108E89
        -0x5d1addd4a4afe3d2L
        0x7a535fb1cd3242f7L    # 1.7583726973167416E281
    .end array-data
.end method

.method public final importUrlAsSubscription(Ljava/lang/String;)I
    .locals 19
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/v2ray/ang/util/MmkvManager;->decodeSubscriptions()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/Iterable;

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lkotlin/Pair;

    .line 42
    .line 43
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/v2ray/ang/dto/SubscriptionItem;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/SubscriptionItem;->getUrl()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    return v0

    .line 61
    :cond_1
    new-instance v15, Lcom/v2ray/ang/dto/SubscriptionItem;

    .line 62
    .line 63
    move-object v1, v15

    .line 64
    const/16 v16, 0xfff

    .line 65
    .line 66
    const/16 v17, 0x0

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    const/4 v3, 0x0

    .line 70
    const/4 v4, 0x0

    .line 71
    const-wide/16 v5, 0x0

    .line 72
    .line 73
    const-wide/16 v7, 0x0

    .line 74
    .line 75
    const/4 v9, 0x0

    .line 76
    const/4 v10, 0x0

    .line 77
    const/4 v11, 0x0

    .line 78
    const/4 v12, 0x0

    .line 79
    const/4 v13, 0x0

    .line 80
    const/4 v14, 0x0

    .line 81
    const/16 v18, 0x0

    .line 82
    .line 83
    move-object v0, v15

    .line 84
    move/from16 v15, v18

    .line 85
    .line 86
    invoke-direct/range {v1 .. v17}, Lcom/v2ray/ang/dto/SubscriptionItem;-><init>(Ljava/lang/String;Ljava/lang/String;ZJJZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 87
    .line 88
    .line 89
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 90
    .line 91
    const/4 v2, 0x3

    .line 92
    new-array v2, v2, [J

    .line 93
    .line 94
    fill-array-data v2, :array_1

    .line 95
    .line 96
    .line 97
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Lcom/v2ray/ang/dto/SubscriptionItem;->setRemarks(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    move-object v1, v0

    .line 108
    move-object/from16 v0, p1

    .line 109
    .line 110
    invoke-virtual {v1, v0}, Lcom/v2ray/ang/dto/SubscriptionItem;->setUrl(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-direct/range {p0 .. p0}, Lcom/v2ray/ang/util/MmkvManager;->getSubStorage()Lcom/tencent/mmkv/MMKV;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    sget-object v2, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 118
    .line 119
    invoke-virtual {v2}, Lcom/v2ray/ang/util/Utils;->getUuid()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    new-instance v3, Lcom/google/gson/Gson;

    .line 124
    .line 125
    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    const/4 v0, 0x1

    .line 136
    return v0

    .line 137
    :array_0
    .array-data 8
        0x683ac546646efd52L    # 1.2213929721420302E194
        0x23340df4674fde4eL
    .end array-data

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    :array_1
    .array-data 8
        -0x40f42fba668ee4d0L    # -5.3050159458714586E-5
        0x16c3d3d0161eeba9L    # 5.180581487309691E-199
        0x62617b9f5a5dff31L    # 8.054175872537644E165
    .end array-data
.end method

.method public final removeAllServer()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/v2ray/ang/util/MmkvManager;->getMainStorage()Lcom/tencent/mmkv/MMKV;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/tencent/mmkv/MMKV;->clearAll()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/v2ray/ang/util/MmkvManager;->getServerStorage()Lcom/tencent/mmkv/MMKV;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/tencent/mmkv/MMKV;->clearAll()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/v2ray/ang/util/MmkvManager;->getServerAffStorage()Lcom/tencent/mmkv/MMKV;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/tencent/mmkv/MMKV;->clearAll()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final removeServer(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x3

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    new-array v2, v2, [J

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-direct {p0}, Lcom/v2ray/ang/util/MmkvManager;->getMainStorage()Lcom/tencent/mmkv/MMKV;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    new-array v3, v0, [J

    .line 34
    .line 35
    fill-array-data v3, :array_1

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Lcom/tencent/mmkv/MMKV;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    invoke-direct {p0}, Lcom/v2ray/ang/util/MmkvManager;->getMainStorage()Lcom/tencent/mmkv/MMKV;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v3, v0, [J

    .line 62
    .line 63
    fill-array-data v3, :array_2

    .line 64
    .line 65
    .line 66
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Lcom/tencent/mmkv/MMKV;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    .line 75
    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/v2ray/ang/util/MmkvManager;->decodeServerList()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    invoke-direct {p0}, Lcom/v2ray/ang/util/MmkvManager;->getMainStorage()Lcom/tencent/mmkv/MMKV;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 88
    .line 89
    new-array v0, v0, [J

    .line 90
    .line 91
    fill-array-data v0, :array_3

    .line 92
    .line 93
    .line 94
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    new-instance v3, Lcom/google/gson/Gson;

    .line 102
    .line 103
    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v2, v0, v1}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    invoke-direct {p0}, Lcom/v2ray/ang/util/MmkvManager;->getServerStorage()Lcom/tencent/mmkv/MMKV;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0, p1}, Lcom/tencent/mmkv/MMKV;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 118
    .line 119
    .line 120
    invoke-direct {p0}, Lcom/v2ray/ang/util/MmkvManager;->getServerAffStorage()Lcom/tencent/mmkv/MMKV;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0, p1}, Lcom/tencent/mmkv/MMKV;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    nop

    .line 129
    :array_0
    .array-data 8
        0x65e8ca6ebcc86387L    # 8.229568983802995E182
        0x6d43f9953b557744L
    .end array-data

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
    .line 140
    .line 141
    :array_1
    .array-data 8
        0x18853a342f8c0b81L
        -0x64d0722a25fe3c17L    # -9.73346794786168E-178
        0x1e04fe60cc475f50L
    .end array-data

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
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
    :array_2
    .array-data 8
        0x6f33d05aad3e4da3L    # 4.693819090931337E227
        0x8a9c8b6f036d0dfL
        0x1c660a8165f3c8b4L    # 7.129260884821838E-172
    .end array-data

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
    :array_3
    .array-data 8
        0x16e46031bbcf2298L
        0x65f274497470db2aL    # 1.2252188862705687E183
        0x5e69cbf5ab85691eL    # 6.442469205909109E146
    .end array-data
.end method

.method public final removeServerViaSubid(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

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
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-direct {p0}, Lcom/v2ray/ang/util/MmkvManager;->getServerStorage()Lcom/tencent/mmkv/MMKV;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/tencent/mmkv/MMKV;->allKeys()[Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    array-length v1, v0

    .line 37
    const/4 v2, 0x0

    .line 38
    :goto_0
    if-ge v2, v1, :cond_2

    .line 39
    .line 40
    aget-object v3, v0, v2

    .line 41
    .line 42
    sget-object v4, Lcom/v2ray/ang/util/MmkvManager;->INSTANCE:Lcom/v2ray/ang/util/MmkvManager;

    .line 43
    .line 44
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v3}, Lcom/v2ray/ang/util/MmkvManager;->decodeServerConfig(Ljava/lang/String;)Lcom/v2ray/ang/dto/ServerConfig;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    if-eqz v5, :cond_1

    .line 52
    .line 53
    invoke-virtual {v5}, Lcom/v2ray/ang/dto/ServerConfig;->getSubscriptionId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_1

    .line 62
    .line 63
    invoke-virtual {v4, v3}, Lcom/v2ray/ang/util/MmkvManager;->removeServer(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    return-void

    .line 70
    nop

    .line 71
    :array_0
    .array-data 8
        0x50ff02b20e5d9066L    # 1.4707810262951649E82
        -0x1c0f585a89259140L    # -2.574534575684516E173
    .end array-data
.end method
