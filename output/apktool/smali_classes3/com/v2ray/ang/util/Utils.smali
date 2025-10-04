.class public final Lcom/v2ray/ang/util/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ#\u0010\u000b\u001a\u00020\u000c2\u000e\u0010\r\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\n0\u000e2\u0006\u0010\u000f\u001a\u00020\n\u00a2\u0006\u0002\u0010\u0010J\u001a\u0010\u0011\u001a\u00020\u000c2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000cJ\u000e\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0016J\u0016\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\nJ\u0010\u0010\u001a\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u0012\u0010\u001b\u001a\u0004\u0018\u00010\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u000e\u0010\u001c\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\nJ\u000e\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u000f\u001a\u00020\nJ\u0010\u0010 \u001a\u00020\u001e2\u0008\u0010!\u001a\u0004\u0018\u00010\nJ\u0010\u0010\"\u001a\u00020\u001e2\u0006\u0010\u000f\u001a\u00020\nH\u0002J\u0010\u0010#\u001a\u00020\u001e2\u0006\u0010\u000f\u001a\u00020\nH\u0002J\u000e\u0010$\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020\nJ\u0010\u0010&\u001a\u00020\u001e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\nJ\u0016\u0010\'\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010(\u001a\u00020\nJ\u0006\u0010)\u001a\u00020\nJ\u000e\u0010*\u001a\u00020\n2\u0006\u0010+\u001a\u00020\nJ\u000e\u0010,\u001a\u00020\n2\u0006\u0010+\u001a\u00020\nJ\u0018\u0010-\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010.\u001a\u00020\nJ\u0010\u0010/\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0010\u00100\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0006\u00101\u001a\u00020\nJ\u000e\u00102\u001a\u00020\u001e2\u0006\u0010\u0015\u001a\u00020\u0016J\u0010\u00103\u001a\u00020\n2\u0008\u00104\u001a\u0004\u0018\u00010\nJ\u0006\u00105\u001a\u000206J\u000e\u00107\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\nJ\u0014\u00108\u001a\u00020\u000c2\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u00020\u000c0:J\u0010\u0010;\u001a\u00020\u001e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\nJ\u0006\u0010<\u001a\u00020\u000cJ\u0006\u0010=\u001a\u00020\u001eJ\u0010\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020AH\u0002J\u0016\u0010B\u001a\u00020\u001e2\u0006\u0010@\u001a\u00020\n2\u0006\u0010C\u001a\u00020\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006D"
    }
    d2 = {
        "Lcom/v2ray/ang/util/Utils;",
        "",
        "<init>",
        "()V",
        "IPV4_REGEX",
        "Lkotlin/text/Regex;",
        "IPV6_REGEX",
        "getEditable",
        "Landroid/text/Editable;",
        "text",
        "",
        "arrayFind",
        "",
        "array",
        "",
        "value",
        "([Ljava/lang/String;Ljava/lang/String;)I",
        "parseInt",
        "str",
        "default",
        "getClipboard",
        "context",
        "Landroid/content/Context;",
        "setClipboard",
        "",
        "content",
        "decode",
        "tryDecodeBase64",
        "encode",
        "isIpAddress",
        "",
        "isPureIpAddress",
        "isDomainName",
        "input",
        "isIpv4Address",
        "isIpv6Address",
        "isCoreDNSAddress",
        "s",
        "isValidUrl",
        "openUri",
        "uriString",
        "getUuid",
        "urlDecode",
        "url",
        "urlEncode",
        "readTextFromAssets",
        "fileName",
        "userAssetPath",
        "backupPath",
        "getDeviceIdForXUDPBaseKey",
        "getDarkModeStatus",
        "getIpv6Address",
        "address",
        "getSysLocale",
        "Ljava/util/Locale;",
        "fixIllegalUrl",
        "findFreePort",
        "ports",
        "",
        "isValidSubUrl",
        "receiverFlags",
        "isXray",
        "inetAddressToLong",
        "",
        "ip",
        "Ljava/net/InetAddress;",
        "isIpInCidr",
        "cidr",
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
        "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/v2ray/ang/util/Utils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Uri.kt\nandroidx/core/net/UriKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,571:1\n1#2:572\n29#3:573\n1869#4,2:574\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/v2ray/ang/util/Utils\n*L\n280#1:573\n489#1:574,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/v2ray/ang/util/Utils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final IPV4_REGEX:Lkotlin/text/Regex;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final IPV6_REGEX:Lkotlin/text/Regex;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/v2ray/ang/util/Utils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/v2ray/ang/util/Utils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 7
    .line 8
    new-instance v0, Lkotlin/text/Regex;

    .line 9
    .line 10
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/16 v2, 0x15

    .line 13
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
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/v2ray/ang/util/Utils;->IPV4_REGEX:Lkotlin/text/Regex;

    .line 30
    .line 31
    new-instance v0, Lkotlin/text/Regex;

    .line 32
    .line 33
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    const/16 v2, 0x14

    .line 36
    .line 37
    new-array v2, v2, [J

    .line 38
    .line 39
    fill-array-data v2, :array_1

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lcom/v2ray/ang/util/Utils;->IPV6_REGEX:Lkotlin/text/Regex;

    .line 53
    .line 54
    return-void

    .line 55
    :array_0
    .array-data 8
        -0x16ab4aeea9e04e92L    # -2.476626604471875E199
        -0x2160624557702924L    # -6.316646798107984E147
        -0x2341b0d64da8e075L    # -5.63966004748931E138
        -0x399a847018c87a74L    # -1.3616256298325064E31
        0x364030ef764d242fL    # 2.2156874119503983E-47
        -0x6e7052049dbd308cL
        0x4432df009e400ffeL    # 3.4811041079521326E20
        -0x3ba5f5a43811734aL    # -1.9214470236283407E21
        -0x86b577f7bf52913L
        0x55e2115b63e48ec2L    # 5.179809502875946E105
        -0x2d8ee92c185d333eL    # -1.359814685608524E89
        -0x2177ee4c2599a364L    # -2.4044107508621117E147
        -0x33fdc14947499b6cL    # -1.4315696007427148E58
        0x75e2d5b3684e50b0L    # 7.239799995405767E259
        0x5ad10b1a8f92ddbbL    # 2.9534779172292076E129
        -0x198ec77bc4d25eacL    # -2.926913274969078E185
        0x3856db4fcec1154dL    # 2.6867905880246793E-37
        -0x49f293241c0d49ceL    # -2.5166949449427404E-48
        0x58503a030a90a1b1L    # 2.557443778656645E117
        0x2e0f1aac5a89c752L    # 7.817901449960224E-87
        -0x679ed5d74932dbd0L
    .end array-data

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
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
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
    .line 140
    .line 141
    .line 142
    .line 143
    :array_1
    .array-data 8
        -0x48c921dcf21c561cL
        -0xc251b8150e23252L
        0x523aaa013951c1e1L    # 1.3260667145988206E88
        -0x65c747bb7a851bbcL    # -2.327059623676255E-182
        -0x36978050fe364611L    # -4.370725574951444E45
        0x2d6806c783559488L    # 5.897412246589697E-90
        0x771c637e76d98f13L    # 5.721118056464196E265
        0x3e6a033cb5fc9c6eL    # 4.8452327260002584E-8
        0x66d96228935b48baL    # 2.76113508951156E187
        -0x670434e1897ca8c8L
        0x393e28005959b02eL    # 5.807883514234411E-33
        0xa782d186f24662bL
        -0x5c5883c35528d1e6L
        -0x23d2024dc55639fcL    # -1.0899310384926408E136
        -0x561ad31e2ae777a8L    # -7.213093289211028E-107
        -0x3bedae137a13e843L    # -8.448615844685121E19
        0x67be9610da01bcdbL    # 5.451081903925856E191
        0x56f21832dbf1f7a6L    # 6.799322390667964E110
        -0x1cac78d4b27a6a50L    # -2.94791820837698E170
        0x52bf310a18355517L    # 3.971145653127197E90
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

.method private final inetAddressToLong(Ljava/net/InetAddress;)J
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    array-length v0, p1

    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v0, :cond_0

    .line 10
    .line 11
    const/16 v4, 0x8

    .line 12
    .line 13
    shl-long/2addr v1, v4

    .line 14
    aget-byte v4, p1, v3

    .line 15
    .line 16
    and-int/lit16 v4, v4, 0xff

    .line 17
    .line 18
    int-to-long v4, v4

    .line 19
    or-long/2addr v1, v4

    .line 20
    add-int/lit8 v3, v3, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-wide v1
.end method

.method private final isIpv4Address(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/v2ray/ang/util/Utils;->IPV4_REGEX:Lkotlin/text/Regex;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method private final isIpv6Address(Ljava/lang/String;)Z
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
    const/4 v3, 0x0

    .line 18
    invoke-static {p1, v0, v2, v1, v3}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    new-array v4, v1, [J

    .line 27
    .line 28
    fill-array-data v4, :array_1

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {p1, v0, v2, v1, v3}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    invoke-static {p1, v0}, Lkotlin/text/StringsKt___StringsKt;->drop(Ljava/lang/String;I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1, v0}, Lkotlin/text/StringsKt___StringsKt;->dropLast(Ljava/lang/String;I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :cond_0
    sget-object v0, Lcom/v2ray/ang/util/Utils;->IPV6_REGEX:Lkotlin/text/Regex;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    return p1

    .line 60
    nop

    .line 61
    :array_0
    .array-data 8
        0x10a5d193cbff959bL
        -0x5bdd51c166c99055L
    .end array-data

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :array_1
    .array-data 8
        -0x6bd56dd5bf6b9cbL
        0xcadc2f3ca18f5fdL
    .end array-data
.end method

.method public static synthetic parseInt$default(Lcom/v2ray/ang/util/Utils;Ljava/lang/String;IILjava/lang/Object;)I
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/v2ray/ang/util/Utils;->parseInt(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method


# virtual methods
.method public final arrayFind([Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

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
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
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
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1

    .line 41
    :array_0
    .array-data 8
        0x4f5c0899f6a827aeL    # 1.9812433052963146E74
        0x7ee3a567dc37ff73L    # 1.6840785940282996E303
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
        0x440d14b0cfe2121fL    # 6.705581227301378E19
        -0x996178ec4796516L
    .end array-data
.end method

.method public final backupPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    new-array v0, v1, [J

    .line 9
    .line 10
    const-wide v3, 0x7acf394b893c7314L    # 3.6273696633441927E283

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    aput-wide v3, v0, v2

    .line 16
    .line 17
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_0
    :try_start_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    new-array v4, v0, [J

    .line 28
    .line 29
    fill-array-data v4, :array_0

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
    invoke-virtual {p1, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-nez v3, :cond_2

    .line 50
    .line 51
    :cond_1
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array v0, v0, [J

    .line 54
    .line 55
    fill-array-data v0, :array_1

    .line 56
    .line 57
    .line 58
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    const/4 v0, 0x3

    .line 80
    new-array v0, v0, [J

    .line 81
    .line 82
    fill-array-data v0, :array_2

    .line 83
    .line 84
    .line 85
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    const/4 v0, 0x5

    .line 94
    new-array v0, v0, [J

    .line 95
    .line 96
    fill-array-data v0, :array_3

    .line 97
    .line 98
    .line 99
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 106
    .line 107
    new-array v0, v1, [J

    .line 108
    .line 109
    const-wide v3, 0x70a19a3d4b5e0422L

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    aput-wide v3, v0, v2

    .line 115
    .line 116
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    :goto_0
    return-object v3

    .line 124
    nop

    .line 125
    :array_0
    .array-data 8
        0x66dcb3e79be98b3bL    # 3.1222010926940766E187
        0x59aad2a4a509f08fL    # 8.865694209816872E123
    .end array-data

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
    :array_1
    .array-data 8
        -0xb344f730b0e04acL
        0xafb05473adc67c1L
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
    :array_2
    .array-data 8
        0x6c3cd1339db005cbL    # 2.4253176949967724E213
        -0x3c726985e65b7cf8L
        0x59dbe9a73593da86L    # 7.380744801825181E124
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
    :array_3
    .array-data 8
        0x6553581c2a18775aL
        -0x19480cd7dfbe2471L    # -6.512980571401281E186
        0x789b2bf918b82036L    # 9.1870062807281E272
        0x271b07a94f81cd0L
        -0x6eecd711c0c71bd3L    # -2.021976834261961E-226
    .end array-data
.end method

.method public final decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/v2ray/ang/util/Utils;->tryDecodeBase64(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    if-nez v2, :cond_1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-array v2, v1, [C

    .line 12
    .line 13
    const/16 v3, 0x3d

    .line 14
    .line 15
    aput-char v3, v2, v0

    .line 16
    .line 17
    invoke-static {p1, v2}, Lkotlin/text/StringsKt__StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    sget-object v2, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 24
    .line 25
    invoke-virtual {v2, p1}, Lcom/v2ray/ang/util/Utils;->tryDecodeBase64(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :goto_0
    move-object v2, p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    goto :goto_0

    .line 33
    :goto_1
    if-nez v2, :cond_1

    .line 34
    .line 35
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v1, v1, [J

    .line 38
    .line 39
    const-wide v2, -0x35b9966e4601050eL    # -6.551145972561667E49

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    aput-wide v2, v1, v0

    .line 45
    .line 46
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    :cond_1
    return-object v2
.end method

.method public final encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
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
    :try_start_0
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v3, v0, [J

    .line 29
    .line 30
    fill-array-data v3, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array v0, v0, [J

    .line 54
    .line 55
    fill-array-data v0, :array_2

    .line 56
    .line 57
    .line 58
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    const/4 v0, 0x5

    .line 67
    new-array v0, v0, [J

    .line 68
    .line 69
    fill-array-data v0, :array_3

    .line 70
    .line 71
    .line 72
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    const/4 v0, 0x1

    .line 81
    new-array v0, v0, [J

    .line 82
    .line 83
    const-wide v1, -0x5c15bab6d82c93f7L    # -1.129490913754097E-135

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    const/4 v3, 0x0

    .line 89
    aput-wide v1, v0, v3

    .line 90
    .line 91
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    :goto_0
    return-object p1

    .line 99
    :array_0
    .array-data 8
        0x27c53a7b1d1d5559L    # 4.209105369019896E-117
        -0x77bf1f264a8dbc5cL    # -6.389739426599194E-269
    .end array-data

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
        0x53e859e83cffa183L    # 1.625432729644343E96
        -0x1a9c3bbe6befabeL    # -3.722724624315657E300
        -0x60e48b9b13f24c73L    # -7.81121238132606E-159
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
    :array_2
    .array-data 8
        -0x55cf557f829c06cdL    # -1.816659380418133E-105
        0x3b7caa398837338L
        0x71ee404b8d2cf665L    # 6.303597613782531E240
    .end array-data

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
    .line 140
    .line 141
    .line 142
    .line 143
    :array_3
    .array-data 8
        0x58f3cf853c01f23dL    # 3.1972492811781285E120
        0x215ddc958643a970L    # 5.838429472425525E-148
        -0x39d3b406d204f25dL    # -1.1209505829013467E30
        -0x615e29bdc47446cfL    # -3.964723251847762E-161
        -0x3560241b1734f988L    # -2.9799631734470356E51
    .end array-data
.end method

.method public final findFreePort(Ljava/util/List;)I
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
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
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Number;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    .line 40
    .line 41
    invoke-direct {v1, v0}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    :try_start_1
    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    .line 45
    .line 46
    .line 47
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    const/4 v2, 0x0

    .line 49
    :try_start_2
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 50
    .line 51
    .line 52
    return v0

    .line 53
    :catch_0
    nop

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 57
    :catchall_1
    move-exception v2

    .line 58
    :try_start_4
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 62
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 63
    .line 64
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    const/4 v1, 0x4

    .line 67
    new-array v1, v1, [J

    .line 68
    .line 69
    fill-array-data v1, :array_1

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :array_0
    .array-data 8
        0x4b27810b6bb7ee14L    # 1.125621830773865E54
        0x75d4be998ce4a949L    # 3.986941741541587E259
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
    :array_1
    .array-data 8
        0x572e867ae92b3080L    # 9.176319662466785E111
        0x5be196d8eb6bef04L    # 3.995170676193805E134
        0x54ec4548165c03f8L    # 1.2366991723252059E101
        -0x5d91e8fee049df01L    # -7.711027435798429E-143
    .end array-data
.end method

.method public final fixIllegalUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    new-array v3, v1, [J

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
    move-result-object v3

    .line 33
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    new-array v4, v1, [J

    .line 36
    .line 37
    fill-array-data v4, :array_2

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    const/4 v6, 0x4

    .line 48
    const/4 v7, 0x0

    .line 49
    const/4 v5, 0x0

    .line 50
    move-object v2, p1

    .line 51
    invoke-static/range {v2 .. v7}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    new-array v2, v1, [J

    .line 58
    .line 59
    fill-array-data v2, :array_3

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v1, v1, [J

    .line 72
    .line 73
    fill-array-data v1, :array_4

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    const/4 v12, 0x4

    .line 84
    const/4 v13, 0x0

    .line 85
    const/4 v11, 0x0

    .line 86
    invoke-static/range {v8 .. v13}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    return-object v0

    .line 91
    :array_0
    .array-data 8
        0x5cd8ece44241b4caL
        -0x16748dfe16688c94L    # -2.626006373455338E200
    .end array-data

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
    :array_1
    .array-data 8
        0x551eded77f3b1b79L    # 1.0803435263994603E102
        -0x70f063399397a2f9L
    .end array-data

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
    .line 114
    .line 115
    :array_2
    .array-data 8
        -0x17f9fa0b5524c697L    # -1.255997960562043E193
        0x6833bdd68925ed6bL    # 9.006967149974816E193
    .end array-data

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
    :array_3
    .array-data 8
        0x110faeee21753ceeL
        -0x2bfde66900418673L    # -4.832660072110582E96
    .end array-data

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
    :array_4
    .array-data 8
        0xb32b3edaff92f3eL
        -0x7d23b4549ba763c1L    # -6.922499285737338E-295
    .end array-data
.end method

.method public final getClipboard(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v3, 0x2

    .line 6
    new-array v3, v3, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    new-array v3, v1, [J

    .line 24
    .line 25
    fill-array-data v3, :array_1

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    const/16 v3, 0xa

    .line 42
    .line 43
    new-array v3, v3, [J

    .line 44
    .line 45
    fill-array-data v3, :array_2

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    check-cast p1, Landroid/content/ClipboardManager;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_0

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_0

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    const/4 p1, 0x0

    .line 78
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_1

    .line 83
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v1, v1, [J

    .line 86
    .line 87
    fill-array-data v1, :array_3

    .line 88
    .line 89
    .line 90
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    const/4 v1, 0x5

    .line 99
    new-array v1, v1, [J

    .line 100
    .line 101
    fill-array-data v1, :array_4

    .line 102
    .line 103
    .line 104
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 111
    .line 112
    const/4 v1, 0x1

    .line 113
    new-array v1, v1, [J

    .line 114
    .line 115
    const-wide v2, 0x408d49b0d658306fL    # 937.2113463296681

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    aput-wide v2, v1, v0

    .line 121
    .line 122
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    :goto_1
    return-object p1

    .line 130
    nop

    .line 131
    :array_0
    .array-data 8
        0x697ea9301a053d38L    # 1.4668371426020333E200
        -0x8ca5d66c318ee17L
    .end array-data

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
    .line 142
    .line 143
    :array_1
    .array-data 8
        -0x5b7c2a3ec8aaa98dL    # -8.732602193648373E-133
        -0x50cc276c0dca46e5L    # -2.6152567403075285E-81
        -0x6c15396589a5e708L    # -9.942038462812492E-213
    .end array-data

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
    .line 158
    .line 159
    :array_2
    .array-data 8
        -0x47d171ff9c6147a5L    # -4.4896086909072564E-38
        0x24b77b3e4b8f796aL    # 8.270394985196368E-132
        0x34f8070a5d98abf5L    # 1.567867656116849E-53
        -0x1e1ad890e14b4420L    # -3.806807969727924E163
        -0x73ad2f45628e713bL
        0x612622fef1b68a4dL    # 9.725695006951875E159
        -0x736efd4949c8b5b0L    # -3.801396982834546E-248
        0x7ea07fa053607a28L    # 8.839163875454047E301
        0xc6e125a2769234fL
        0x1a6076f9f566493L
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
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_3
    .array-data 8
        -0x6de7808bebfbc83cL
        -0x5de4fad2fb21c9a1L
        -0x7a4e9293fe3e61a0L    # -3.000249611395738E-281
    .end array-data

    :array_4
    .array-data 8
        0x263908cc6dbc71aaL
        0x69e95b45d6a47d8fL    # 1.552733789861793E202
        0x758a8930735bfbcaL    # 1.5937494591416436E258
        -0x2335ceda55dff91cL    # -9.747121168228616E138
        -0x4652c9c70b6a699bL    # -7.201266304495212E-31
    .end array-data
.end method

.method public final getDarkModeStatus(Landroid/content/Context;)Z
    .locals 2
    .param p1    # Landroid/content/Context;
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
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 28
    .line 29
    and-int/lit8 p1, p1, 0x30

    .line 30
    .line 31
    const/16 v0, 0x10

    .line 32
    .line 33
    if-eq p1, v0, :cond_0

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    :goto_0
    return p1

    .line 39
    :array_0
    .array-data 8
        0x566ee7927a558776L    # 2.268147480404051E108
        0x5c45e76a9063a742L    # 3.1841306915310694E136
    .end array-data
.end method

.method public final getDeviceIdForXUDPBaseKey()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    :try_start_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    new-array v2, v0, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    new-array v3, v0, [J

    .line 25
    .line 26
    fill-array-data v3, :array_1

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/16 v2, 0x20

    .line 40
    .line 41
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v3, v0, [J

    .line 48
    .line 49
    fill-array-data v3, :array_2

    .line 50
    .line 51
    .line 52
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/16 v2, 0x9

    .line 63
    .line 64
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    new-array v0, v0, [J

    .line 75
    .line 76
    fill-array-data v0, :array_3

    .line 77
    .line 78
    .line 79
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 86
    .line 87
    const/4 v1, 0x5

    .line 88
    new-array v1, v1, [J

    .line 89
    .line 90
    fill-array-data v1, :array_4

    .line 91
    .line 92
    .line 93
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 100
    .line 101
    const/4 v1, 0x1

    .line 102
    new-array v1, v1, [J

    .line 103
    .line 104
    const-wide v2, 0x5ce5a646779f8307L    # 3.222672225368982E139

    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    const/4 v4, 0x0

    .line 110
    aput-wide v2, v1, v4

    .line 111
    .line 112
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    :goto_0
    return-object v1

    .line 120
    nop

    .line 121
    :array_0
    .array-data 8
        -0x3355f5fbd3e31defL    # -2.0921631236485703E61
        0x6dcfd7e65d57192dL    # 8.992608984218194E220
        -0x59a76bb7c6548b3aL
    .end array-data

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
    :array_1
    .array-data 8
        0xfd5e51bc7a69240L
        -0x32564309dd5a8bbaL    # -1.355270765072649E66
        0x47b2f98cdd988ba7L    # 2.5221842935882635E37
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
    .line 150
    .line 151
    .line 152
    .line 153
    :array_2
    .array-data 8
        0x10c0a131931ce721L    # 5.484243529434059E-228
        -0x73f073d954a648b8L
        0x1c458f54915106eL
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
    :array_3
    .array-data 8
        -0x58b26f0357d1dc50L    # -2.289968565015198E-119
        0x353bfe0bf59213c8L    # 2.9225397908055464E-52
        0x78de23464e402e68L    # 1.6303749576148088E274
    .end array-data

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
    :array_4
    .array-data 8
        0x2d81103e311e2676L    # 1.67532131693363E-89
        0x4e20a1bd0ad9e119L    # 2.2419609658020613E68
        0xd64237c566a29beL
        0x42a54bbe4840a1fdL    # 1.1707529568336994E13
        0x699c53bbe433a178L    # 5.4207456092918205E200
    .end array-data
.end method

.method public final getEditable(Ljava/lang/String;)Landroid/text/Editable;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v1, v1, [J

    .line 11
    .line 12
    const-wide v2, -0x52234331272bcf3L    # -6.923015330583379E283

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    aput-wide v2, v1, v4

    .line 19
    .line 20
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    const/4 v1, 0x3

    .line 34
    new-array v1, v1, [J

    .line 35
    .line 36
    fill-array-data v1, :array_0

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object p1

    .line 50
    nop

    .line 51
    :array_0
    .array-data 8
        -0x7dcf6546fe9f1571L    # -3.967044827057107E-298
        0x3a80b7ef9d301c8eL    # 6.75254836226479E-27
        -0x2a5526d5dfa71a2dL    # -4.8106669301884225E104
    .end array-data
.end method

.method public final getIpv6Address(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p0, p1}, Lcom/v2ray/ang/util/Utils;->isIpv6Address(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const/16 v1, 0x5b

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static {p1, v1, v0, v2, v3}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    const/16 v1, 0x5d

    .line 28
    .line 29
    invoke-static {p1, v1, v0, v2, v3}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    const-string v0, "["

    .line 36
    .line 37
    const-string v1, "]"

    .line 38
    .line 39
    invoke-static {v0, p1, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :cond_1
    return-object p1

    .line 44
    :cond_2
    :goto_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    new-array v1, v1, [J

    .line 48
    .line 49
    const-wide v2, -0x4563c12e3e5f4fcaL    # -2.281644282571937E-26

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    aput-wide v2, v1, v0

    .line 55
    .line 56
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    return-object p1
.end method

.method public final getSysLocale()Ljava/util/Locale;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, L딻땔땫듨뎬딜땋뒀돸딃딝듌딽딜딻뒤땫땄듽딀돨땻뒤뒼땝땸듬뎠돠딄뒈된딄둠둣뒬듼따뒵된돸땁땨돰돠뒻딄뒈둥뒐됨딁둠뎡땲땋뎻딐땩둬딝땻딠딄됨땩땃돤딀땳땫딅디둬둑돠든뎰땠뒐뎻뒉돸돳됐딌땵듽둠뎬땐돼뎰둔딄땟땧됨뎻듰드뒙딸되듼뒬듽따딻딽딀뒾둠뒤돠땡듼되땋땩딝딄돰돝딞됴돴땩돸뎨;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두()Landroid/os/LocaleList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, L딻땔땫듨뎬딜땋뒀돸딃딝듌딽딜딻뒤땫땄듽딀돨땻뒤뒼땝땸듬뎠돠딄뒈된딄둠둣뒬듼따뒵된돸땁땨돰돠뒻딄뒈둥뒐됨딁둠뎡땲땋뎻딐땩둬딝땻딠딄됨땩땃돤딀땳땫딅디둬둑돠든뎰땠뒐뎻뒉돸돳됐딌땵듽둠뎬땐돼뎰둔딄땟땧됨뎻듰드뒙딸되듼뒬듽따딻딽딀뒾둠뒤돠땡듼되땋땩딝딄돰돝딞됴돴땩돸뎨;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Landroid/os/LocaleList;)Ljava/util/Locale;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-object v0
.end method

.method public final getUuid()Ljava/lang/String;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x3

    .line 4
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    new-array v5, v2, [J

    .line 15
    .line 16
    fill-array-data v5, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/4 v5, 0x2

    .line 32
    new-array v5, v5, [J

    .line 33
    .line 34
    fill-array-data v5, :array_1

    .line 35
    .line 36
    .line 37
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v6, v1, [J

    .line 47
    .line 48
    const-wide v7, 0x2f43555f4f97227fL    # 5.095435797638309E-81

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    aput-wide v7, v6, v0

    .line 54
    .line 55
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    const/4 v8, 0x4

    .line 63
    const/4 v9, 0x0

    .line 64
    const/4 v7, 0x0

    .line 65
    invoke-static/range {v4 .. v9}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array v2, v2, [J

    .line 73
    .line 74
    fill-array-data v2, :array_2

    .line 75
    .line 76
    .line 77
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    const/4 v3, 0x4

    .line 86
    new-array v3, v3, [J

    .line 87
    .line 88
    fill-array-data v3, :array_3

    .line 89
    .line 90
    .line 91
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 98
    .line 99
    new-array v1, v1, [J

    .line 100
    .line 101
    const-wide v3, -0x2819834a606befb8L    # -2.7688708747430557E115

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    aput-wide v3, v1, v0

    .line 107
    .line 108
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    .line 116
    nop

    .line 117
    :array_0
    .array-data 8
        0x50ca09b2b13c0decL    # 1.5436701992003417E81
        -0x5379def82e460efbL    # -3.315229943259854E-94
        -0x606a388a4a6008e3L
    .end array-data

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
    :array_1
    .array-data 8
        0x6b343bfe23ea902fL    # 2.5985208280531645E208
        0x1b6acad6de505d1fL
    .end array-data

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :array_2
    .array-data 8
        -0x3d0d4b2ab70dc85cL    # -3.2908610785369025E14
        -0x4b69d37c8349cb00L    # -2.260801983540954E-55
        0x367fcbeae3752c42L    # 3.480973492140101E-46
    .end array-data

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
    .line 158
    .line 159
    .line 160
    .line 161
    :array_3
    .array-data 8
        -0x743e741778af3e76L    # -4.786571557205692E-252
        0xa603f8f3af07fcfL
        0x7b518b874b5f58a9L    # 1.043590439883312E286
        0x79380f4885221c25L    # 8.330024123664527E275
    .end array-data
.end method

.method public final isCoreDNSAddress(Ljava/lang/String;)Z
    .locals 5
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
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    new-array v2, v1, [J

    .line 22
    .line 23
    fill-array-data v2, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-static {p1, v0, v2, v1, v3}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    new-array v4, v1, [J

    .line 44
    .line 45
    fill-array-data v4, :array_2

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {p1, v0, v2, v1, v3}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_0

    .line 60
    .line 61
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    new-array v4, v1, [J

    .line 64
    .line 65
    fill-array-data v4, :array_3

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {p1, v0, v2, v1, v3}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_0

    .line 80
    .line 81
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    const/4 v1, 0x3

    .line 84
    new-array v1, v1, [J

    .line 85
    .line 86
    fill-array-data v1, :array_4

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_1

    .line 101
    .line 102
    :cond_0
    const/4 v2, 0x1

    .line 103
    :cond_1
    return v2

    .line 104
    nop

    .line 105
    :array_0
    .array-data 8
        0x371ac6bbeec594eeL    # 3.0017276202083484E-43
        0x1251e94b279300b5L
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :array_1
    .array-data 8
        0x1c99d71fc74ca82bL    # 6.686525489202224E-171
        0x3429cc6f0caf9854L    # 2.054974618006278E-57
    .end array-data

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
    :array_2
    .array-data 8
        0x3115c77b14922487L    # 3.0816506761305126E-72
        0x435eb6cf237056fcL    # 3.4581000281480176E16
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
    :array_3
    .array-data 8
        -0xe9d72c161bf7c09L    # -1.5100494171606868E238
        0x7960a2a684024deaL    # 4.607634931103852E276
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
    :array_4
    .array-data 8
        -0x38f58f3cf5241fd1L    # -1.716085013123354E34
        0x53ada3882803ead2L    # 1.236486029727671E95
        0x4aab78942320b862L    # 5.139062613860704E51
    .end array-data
.end method

.method public final isDomainName(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/v2ray/ang/util/Utils;->isPureIpAddress(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/v2ray/ang/util/Utils;->isValidUrl(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    :cond_1
    :goto_0
    return v0
.end method

.method public final isIpAddress(Ljava/lang/String;)Z
    .locals 19
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x0

    .line 7
    if-eqz p1, :cond_7

    .line 8
    .line 9
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    if-nez v5, :cond_0

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-nez v6, :cond_1

    .line 30
    .line 31
    return v4

    .line 32
    :cond_1
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    new-array v7, v3, [J

    .line 35
    .line 36
    fill-array-data v7, :array_0

    .line 37
    .line 38
    .line 39
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    const/4 v12, 0x0

    .line 47
    invoke-static {v5, v6, v4, v3, v12}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_2

    .line 52
    .line 53
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    new-array v7, v3, [J

    .line 56
    .line 57
    fill-array-data v7, :array_1

    .line 58
    .line 59
    .line 60
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    filled-new-array {v6}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    const/4 v10, 0x6

    .line 72
    const/4 v11, 0x0

    .line 73
    const/4 v8, 0x0

    .line 74
    const/4 v9, 0x0

    .line 75
    move-object v6, v5

    .line 76
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-ne v7, v3, :cond_2

    .line 85
    .line 86
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    check-cast v7, Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v7}, L땦되뒷듸땟땃돷딀땃땪됫딜뒛들둑듟땣뒋둘듬됩뒬드딐땵땫둣뎻뒈땔딸뎸둥뒐둥딤듟땣돼딞땧뎽됨땣돛딞땫뎰듔땮됩돛돛따딽땅둡딽뎡땯땟딄뒐둔땵둔딐딝듰뒘디될됨뒹둣둘땁땅돝듐뒉땀돴득돸딹딽돵땲듽돨땃딁되땡뒹땜득듨땱돝뒋땸듌땥땹뎻뒼딹둡되뎰둘돴뒛뎽뎽듔뒷돤됩됐딸땅땋땃돶땫뎨둠;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    if-eqz v7, :cond_2

    .line 97
    .line 98
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    check-cast v7, Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    const/4 v8, -0x1

    .line 109
    if-le v7, v8, :cond_2

    .line 110
    .line 111
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    check-cast v5, Ljava/lang/String;

    .line 116
    .line 117
    :cond_2
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 118
    .line 119
    new-array v7, v3, [J

    .line 120
    .line 121
    fill-array-data v7, :array_2

    .line 122
    .line 123
    .line 124
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-static {v5, v6, v4, v3, v12}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    const/16 v7, 0x2e

    .line 136
    .line 137
    if-eqz v6, :cond_3

    .line 138
    .line 139
    invoke-static {v5, v7, v4, v3, v12}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    if-eqz v6, :cond_3

    .line 144
    .line 145
    const/4 v6, 0x7

    .line 146
    invoke-static {v5, v6}, Lkotlin/text/StringsKt___StringsKt;->drop(Ljava/lang/String;I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    goto :goto_0

    .line 151
    :cond_3
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 152
    .line 153
    new-array v8, v3, [J

    .line 154
    .line 155
    fill-array-data v8, :array_3

    .line 156
    .line 157
    .line 158
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    invoke-static {v5, v6, v4, v3, v12}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    if-eqz v6, :cond_4

    .line 170
    .line 171
    invoke-static {v5, v7, v4, v3, v12}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v6

    .line 175
    if-eqz v6, :cond_4

    .line 176
    .line 177
    const/16 v6, 0x8

    .line 178
    .line 179
    invoke-static {v5, v6}, Lkotlin/text/StringsKt___StringsKt;->drop(Ljava/lang/String;I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v13

    .line 183
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 184
    .line 185
    new-array v6, v3, [J

    .line 186
    .line 187
    fill-array-data v6, :array_4

    .line 188
    .line 189
    .line 190
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v14

    .line 197
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 198
    .line 199
    new-array v6, v2, [J

    .line 200
    .line 201
    const-wide v8, -0x4cfd7f2a9d231fa9L    # -5.622365472166967E-63

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    aput-wide v8, v6, v4

    .line 207
    .line 208
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v15

    .line 215
    const/16 v17, 0x4

    .line 216
    .line 217
    const/16 v18, 0x0

    .line 218
    .line 219
    const/16 v16, 0x0

    .line 220
    .line 221
    invoke-static/range {v13 .. v18}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    :cond_4
    :goto_0
    new-array v14, v2, [C

    .line 226
    .line 227
    aput-char v7, v14, v4

    .line 228
    .line 229
    const/16 v17, 0x6

    .line 230
    .line 231
    const/16 v18, 0x0

    .line 232
    .line 233
    const/4 v15, 0x0

    .line 234
    const/16 v16, 0x0

    .line 235
    .line 236
    move-object v13, v5

    .line 237
    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    const/4 v7, 0x4

    .line 246
    if-ne v6, v7, :cond_6

    .line 247
    .line 248
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    check-cast v2, Ljava/lang/CharSequence;

    .line 253
    .line 254
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 255
    .line 256
    new-array v7, v3, [J

    .line 257
    .line 258
    fill-array-data v7, :array_5

    .line 259
    .line 260
    .line 261
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    invoke-static {v2, v6, v4, v3, v12}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    if-eqz v2, :cond_5

    .line 273
    .line 274
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 275
    .line 276
    new-array v3, v3, [J

    .line 277
    .line 278
    fill-array-data v3, :array_6

    .line 279
    .line 280
    .line 281
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v14

    .line 288
    const/16 v17, 0x6

    .line 289
    .line 290
    const/16 v18, 0x0

    .line 291
    .line 292
    const/4 v15, 0x0

    .line 293
    const/16 v16, 0x0

    .line 294
    .line 295
    move-object v13, v5

    .line 296
    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    invoke-virtual {v5, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 305
    .line 306
    new-array v3, v1, [J

    .line 307
    .line 308
    fill-array-data v3, :array_7

    .line 309
    .line 310
    .line 311
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    :cond_5
    invoke-direct {v0, v5}, Lcom/v2ray/ang/util/Utils;->isIpv4Address(Ljava/lang/String;)Z

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    return v1

    .line 326
    :cond_6
    invoke-direct {v0, v5}, Lcom/v2ray/ang/util/Utils;->isIpv6Address(Ljava/lang/String;)Z

    .line 327
    .line 328
    .line 329
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    return v1

    .line 331
    :catch_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 332
    .line 333
    new-array v1, v1, [J

    .line 334
    .line 335
    fill-array-data v1, :array_8

    .line 336
    .line 337
    .line 338
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 345
    .line 346
    const/4 v2, 0x5

    .line 347
    new-array v2, v2, [J

    .line 348
    .line 349
    fill-array-data v2, :array_9

    .line 350
    .line 351
    .line 352
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    :cond_7
    :goto_1
    return v4

    .line 359
    :array_0
    .array-data 8
        0x247905e97a920230L
        0x466036ee0f84082aL    # 1.0277204706997648E31
    .end array-data

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
    .line 370
    .line 371
    :array_1
    .array-data 8
        -0x13b8d28cbe11d95aL    # -3.901344318417865E213
        -0x53f10d79c4eb1027L    # -1.811069085324558E-96
    .end array-data

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
    :array_2
    .array-data 8
        0x4bccafec00dfbd88L    # 1.406815943292783E57
        0x30826bef1b3c088fL    # 5.090950124893956E-75
    .end array-data

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
    :array_3
    .array-data 8
        -0x5f751350f3fb13ecL
        0x23f5bda6c9351d79L    # 1.869467864325254E-135
    .end array-data

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
    :array_4
    .array-data 8
        0x6e3b90d350caa80eL    # 9.964286789647447E222
        0x3a4a0e0024a9624eL    # 6.57712834890348E-28
    .end array-data

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
    :array_5
    .array-data 8
        -0x75c2e00a6a603432L    # -2.367812508580997E-259
        -0x2ef5f8b276964097L    # -2.4689848366895052E82
    .end array-data

    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    :array_6
    .array-data 8
        -0x4da5c8f8bb71bc58L    # -3.8894668407789383E-66
        -0x21a4fb7574799139L    # -3.3737035058933697E146
    .end array-data

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
    :array_7
    .array-data 8
        0x3587e9e4fa5b92e3L    # 7.989445035117691E-51
        0x7cbb79cfb4e52e49L    # 6.854670034160528E292
        0x737b0be5bcf22afbL    # 1.8910678175980115E248
    .end array-data

    .line 444
    .line 445
    .line 446
    .line 447
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
    :array_8
    .array-data 8
        0x2360aacbb5668d5dL
        0x5d64f41a12096540L    # 7.984818046400166E141
        -0x5e05648126123b78L    # -5.327023444980883E-145
    .end array-data

    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
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
    :array_9
    .array-data 8
        -0x66fd7c98ebb9314fL    # -3.324117454041964E-188
        -0x68620663a02cc2a9L    # -6.415974416188876E-195
        -0xe807cef66a7879cL
        -0x70041676fc61e6c7L
        -0x4d7a354a40b4122eL    # -2.5865731575249243E-65
    .end array-data
.end method

.method public final isIpInCidr(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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
    new-array v3, v2, [J

    .line 23
    .line 24
    fill-array-data v3, :array_1

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

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
    const/4 v1, 0x0

    .line 38
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/v2ray/ang/util/Utils;->isIpAddress(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_0

    .line 43
    .line 44
    return v1

    .line 45
    :cond_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v2, v2, [J

    .line 48
    .line 49
    fill-array-data v2, :array_2

    .line 50
    .line 51
    .line 52
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    filled-new-array {v2}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    const/4 v7, 0x6

    .line 64
    const/4 v8, 0x0

    .line 65
    const/4 v5, 0x0

    .line 66
    const/4 v6, 0x0

    .line 67
    move-object v3, p2

    .line 68
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Ljava/lang/String;

    .line 77
    .line 78
    const/4 v3, 0x1

    .line 79
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    check-cast p2, Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 94
    .line 95
    new-array v5, v0, [J

    .line 96
    .line 97
    fill-array-data v5, :array_3

    .line 98
    .line 99
    .line 100
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-direct {p0, p1}, Lcom/v2ray/ang/util/Utils;->inetAddressToLong(Ljava/net/InetAddress;)J

    .line 111
    .line 112
    .line 113
    move-result-wide v4

    .line 114
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 119
    .line 120
    new-array v6, v0, [J

    .line 121
    .line 122
    fill-array-data v6, :array_4

    .line 123
    .line 124
    .line 125
    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-direct {p0, p1}, Lcom/v2ray/ang/util/Utils;->inetAddressToLong(Ljava/net/InetAddress;)J

    .line 136
    .line 137
    .line 138
    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    if-nez p2, :cond_1

    .line 140
    .line 141
    const-wide/16 p1, 0x0

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_1
    rsub-int/lit8 p1, p2, 0x20

    .line 145
    .line 146
    const-wide/16 v8, -0x1

    .line 147
    .line 148
    shl-long p1, v8, p1

    .line 149
    .line 150
    :goto_0
    and-long/2addr v4, p1

    .line 151
    and-long/2addr p1, v6

    .line 152
    cmp-long v0, v4, p1

    .line 153
    .line 154
    if-nez v0, :cond_2

    .line 155
    .line 156
    const/4 v1, 0x1

    .line 157
    :cond_2
    return v1

    .line 158
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 159
    .line 160
    new-array p2, v0, [J

    .line 161
    .line 162
    fill-array-data p2, :array_5

    .line 163
    .line 164
    .line 165
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 172
    .line 173
    const/4 p2, 0x5

    .line 174
    new-array p2, p2, [J

    .line 175
    .line 176
    fill-array-data p2, :array_6

    .line 177
    .line 178
    .line 179
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    return v1

    .line 186
    nop

    .line 187
    :array_0
    .array-data 8
        0x76b6d6710a92b8ffL    # 7.19130762563658E263
        -0x65fc32a3776545e3L
    .end array-data

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
    :array_1
    .array-data 8
        0x445e1ada9c9ed6adL    # 2.221349413628864E21
        0x420d536b39e0fb88L    # 1.5744198460122818E10
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
    :array_2
    .array-data 8
        -0x730532b6f85d7f77L    # -3.833266967076173E-246
        -0x371676fdc47e550cL    # -1.779543039994925E43
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
    :array_3
    .array-data 8
        0x378c323dcdc4402fL    # 4.0459642473487925E-41
        -0x7e999f0331ef5d81L    # -6.526679226835468E-302
        -0x6381e13bd538c719L
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
    :array_4
    .array-data 8
        -0x760ce227078b2736L    # -9.713466214143238E-261
        0x56a68569780820d5L    # 2.6445928829214052E109
        -0x1f133dbe13003f4fL    # -7.896938783469629E158
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
    .line 252
    .line 253
    .line 254
    .line 255
    :array_5
    .array-data 8
        0x32013a80f8656ae7L    # 7.98802138004465E-68
        0x36d45a6d906912b6L    # 1.4260477995205313E-44
        0x245f2ee96e6d2eb2L    # 1.716102807263263E-133
    .end array-data

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    :array_6
    .array-data 8
        0x60f4e4e0c499770cL    # 1.147467661807215E159
        0xe8b6c7d1ec6df32L
        -0x1cfecb1f698835a3L    # -8.117110059031555E168
        -0x6dad2ebd8f6bb2d8L    # -2.082299821666677E-220
        -0x24d5db4d85d363ceL    # -1.4497373932695813E131
    .end array-data
.end method

.method public final isPureIpAddress(Ljava/lang/String;)Z
    .locals 2
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
    invoke-direct {p0, p1}, Lcom/v2ray/ang/util/Utils;->isIpv4Address(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/v2ray/ang/util/Utils;->isIpv6Address(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 35
    :goto_1
    return p1

    .line 36
    nop

    .line 37
    :array_0
    .array-data 8
        -0x54a6d6d42429e383L    # -7.189626569815934E-100
        -0x452c621c9ad593abL    # -2.5354056451894445E-25
    .end array-data
.end method

.method public final isValidSubUrl(Ljava/lang/String;)Z
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    return v3

    .line 21
    :cond_1
    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_4

    .line 26
    .line 27
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    new-array v4, v0, [J

    .line 30
    .line 31
    fill-array-data v4, :array_0

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const/4 v4, 0x2

    .line 42
    const/4 v5, 0x0

    .line 43
    invoke-static {p1, v2, v1, v4, v5}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    return v3

    .line 50
    :cond_2
    new-instance v2, Ljava/net/URI;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/v2ray/ang/util/Utils;->fixIllegalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Lcom/v2ray/ang/util/Utils;->isIpAddress(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    sget-object p1, Lcom/v2ray/ang/AppConfig;->INSTANCE:Lcom/v2ray/ang/AppConfig;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/v2ray/ang/AppConfig;->getPRIVATE_IP_LIST()Ljava/util/ArrayList;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_4

    .line 84
    .line 85
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Ljava/lang/String;

    .line 90
    .line 91
    sget-object v5, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 98
    .line 99
    new-array v8, v0, [J

    .line 100
    .line 101
    fill-array-data v8, :array_1

    .line 102
    .line 103
    .line 104
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5, v6, v4}, Lcom/v2ray/ang/util/Utils;->isIpInCidr(Ljava/lang/String;Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    if-eqz v4, :cond_3

    .line 119
    .line 120
    return v3

    .line 121
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 122
    .line 123
    new-array v0, v0, [J

    .line 124
    .line 125
    fill-array-data v0, :array_2

    .line 126
    .line 127
    .line 128
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 135
    .line 136
    const/4 v0, 0x6

    .line 137
    new-array v0, v0, [J

    .line 138
    .line 139
    fill-array-data v0, :array_3

    .line 140
    .line 141
    .line 142
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    :cond_4
    :goto_0
    return v1

    .line 149
    :array_0
    .array-data 8
        -0x4ad9ba4e9f875814L    # -1.1626650629322225E-52
        -0x4be2492b16530026L    # -1.183435745669518E-57
        0x541b6150e04b5929L    # 1.4620906192429952E97
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
        0x32798df25751fd2dL    # 1.5165892957961156E-65
        0x70285990e448c8a9L    # 1.8901804626345632E232
        0x1ca2d05ea79f1b5eL    # 9.736711937786246E-171
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
    .line 180
    .line 181
    :array_2
    .array-data 8
        0x150fbbb55e874792L
        0x4f52b81515a0ef24L    # 1.3229494772185193E74
        -0x49048cfe50eac658L    # -7.692916817403143E-44
    .end array-data

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_3
    .array-data 8
        -0x4adf3ebacaed0edaL    # -8.746498412874933E-53
        -0x7c4ddcda34b45ad8L    # -7.270038732419014E-291
        0x408169dbaf026842L    # 557.2322673976962
        -0x615346299e33e4abL    # -6.385080659886028E-161
        -0x6dd292fbf37be528L
        0x46668f767325747L
    .end array-data
.end method

.method public final isValidUrl(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    sget-object v1, Landroid/util/Patterns;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    :cond_1
    const/4 v0, 0x1

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    const/4 v1, 0x3

    .line 46
    new-array v1, v1, [J

    .line 47
    .line 48
    fill-array-data v1, :array_0

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    const/4 v1, 0x4

    .line 60
    new-array v1, v1, [J

    .line 61
    .line 62
    fill-array-data v1, :array_1

    .line 63
    .line 64
    .line 65
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    :cond_2
    :goto_0
    return v0

    .line 72
    nop

    .line 73
    :array_0
    .array-data 8
        0xc981b07bcc81130L
        0x2ffccdd3fc170283L    # 1.5547271012824845E-77
        -0x63acbecb513e58cL
    .end array-data

    .line 74
    .line 75
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
    :array_1
    .array-data 8
        0x2951c087c2298a90L
        -0x336be4ac879e44f1L    # -8.077572329098867E60
        -0x7e8948abf2e9295fL
        -0x24c43e24243a3c27L    # -3.0784686573515123E131
    .end array-data
.end method

.method public final isXray()Z
    .locals 5

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    new-array v1, v1, [J

    .line 19
    .line 20
    fill-array-data v1, :array_1

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/4 v2, 0x2

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-static {v0, v1, v4, v2, v3}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    return v0

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        0x6d36e5b31fe1bb2eL
        0x4fa72a5b91db320eL    # 5.2390175426648135E75
        -0x5b2aba5cc6b7ed4dL    # -2.996889081865766E-131
    .end array-data

    .line 40
    .line 41
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
    .line 54
    .line 55
    :array_1
    .array-data 8
        0x1e9f29f342fae3c4L
        -0x1932c9cbd54ef853L    # -1.5887832574731964E187
        0x30e789a9d173ab19L    # 4.1630915492899843E-73
    .end array-data
.end method

.method public final openUri(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    new-array v2, v1, [J

    .line 23
    .line 24
    fill-array-data v2, :array_1

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    new-instance v0, Landroid/content/Intent;

    .line 42
    .line 43
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    const/4 v3, 0x5

    .line 46
    new-array v3, v3, [J

    .line 47
    .line 48
    fill-array-data v3, :array_2

    .line 49
    .line 50
    .line 51
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-direct {v0, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 66
    .line 67
    new-array p2, v1, [J

    .line 68
    .line 69
    fill-array-data p2, :array_3

    .line 70
    .line 71
    .line 72
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    const/4 p2, 0x4

    .line 81
    new-array p2, p2, [J

    .line 82
    .line 83
    fill-array-data p2, :array_4

    .line 84
    .line 85
    .line 86
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    :goto_0
    return-void

    .line 93
    :array_0
    .array-data 8
        -0x30340d1039abe056L    # -2.5283357531460286E76
        -0x2c6d0b04398818f3L    # -3.954280790490233E94
    .end array-data

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
    :array_1
    .array-data 8
        -0x52d0bdbeeee41e4fL    # -4.79538740727531E-91
        0x4f95f67a6f2a5b3bL    # 2.483514802063278E75
        -0x1063c56d20f8737fL    # -4.279856277048784E229
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
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
    :array_2
    .array-data 8
        -0x5c0047e9671c183cL    # -2.727487349159566E-135
        0x7cdd0cc3c9b437a7L    # 2.898944326835981E293
        -0x2dc5a458837715fcL    # -1.310845799531481E88
        0x7fe250b1b50f5c24L    # 1.0289103172719329E308
        -0x7c9cd01ea98b7a46L
    .end array-data

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
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :array_3
    .array-data 8
        -0x541815ad5ba3795cL    # -3.49886889457069E-97
        0x7f8a593f555306ceL    # 2.312829005468431E306
        -0x5ddeda6cf0f1947bL    # -2.746341499491308E-144
    .end array-data

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
    .line 158
    .line 159
    .line 160
    .line 161
    :array_4
    .array-data 8
        -0x2d8611d155cf9498L    # -2.0633264359662858E89
        0x46145b50fc49e743L    # 4.032060729110571E29
        -0x525292fda815410cL    # -1.1556326878738041E-88
        -0x5f53152569baf3f6L
    .end array-data
.end method

.method public final parseInt(Ljava/lang/String;I)I
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, L땦되뒷듸땟땃돷딀땃땪됫딜뒛들둑듟땣뒋둘듬됩뒬드딐땵땫둣뎻뒈땔딸뎸둥뒐둥딤듟땣돼딞땧뎽됨땣돛딞땫뎰듔땮됩돛돛따딽땅둡딽뎡땯땟딄뒐둔땵둔딐딝듰뒘디될됨뒹둣둘땁땅돝듐뒉땀돴득돸딹딽돵땲듽돨땃딁되땡뒹땜득듨땱돝뒋땸듌땥땹뎻뒼딹둡되뎰둘돴뒛뎽뎽듔뒷돤됩됐딸땅땋땃돶땫뎨둠;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    :cond_0
    return p2
.end method

.method public final readTextFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v3, 0x2

    .line 6
    new-array v3, v3, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    new-array p2, v1, [J

    .line 26
    .line 27
    const-wide v1, -0x37e6b979acf54872L    # -2.150200646199134E39

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    aput-wide v1, p2, v0

    .line 33
    .line 34
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 47
    .line 48
    .line 49
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :try_start_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    sget-object p2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 54
    .line 55
    new-instance v2, Ljava/io/InputStreamReader;

    .line 56
    .line 57
    invoke-direct {v2, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 58
    .line 59
    .line 60
    new-instance p2, Ljava/io/BufferedReader;

    .line 61
    .line 62
    const/16 v3, 0x2000

    .line 63
    .line 64
    invoke-direct {p2, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .line 66
    .line 67
    :try_start_2
    invoke-static {p2}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 71
    const/4 v3, 0x0

    .line 72
    :try_start_3
    invoke-static {p2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    .line 74
    .line 75
    :try_start_4
    invoke-static {p1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catchall_0
    move-exception p2

    .line 80
    goto :goto_0

    .line 81
    :catchall_1
    move-exception v2

    .line 82
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 83
    :catchall_2
    move-exception v3

    .line 84
    :try_start_6
    invoke-static {p2, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 88
    :goto_0
    :try_start_7
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 89
    :catchall_3
    move-exception v2

    .line 90
    :try_start_8
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 94
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    const/4 p2, 0x3

    .line 97
    new-array p2, p2, [J

    .line 98
    .line 99
    fill-array-data p2, :array_1

    .line 100
    .line 101
    .line 102
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    new-array p2, v1, [J

    .line 111
    .line 112
    const-wide v1, 0x19de9cf8625edbb9L

    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    aput-wide v1, p2, v0

    .line 118
    .line 119
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    :goto_1
    return-object v2

    .line 127
    :array_0
    .array-data 8
        -0x29f5c940655da6cbL    # -3.006072712862449E106
        -0x3f7e143e72f0da6bL    # -573.4695073302597
    .end array-data

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
    :array_1
    .array-data 8
        -0x2f0aec836042fe32L    # -9.996075047387315E81
        -0x2e7bd7a605ed9a6fL    # -4.8949483777786784E84
        0x2f64f788528ab15aL    # 2.2103746164742745E-80
    .end array-data
.end method

.method public final receiverFlags()I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x4

    .line 10
    :goto_0
    return v0
.end method

.method public final setClipboard(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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
    :try_start_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    new-array v2, v0, [J

    .line 40
    .line 41
    fill-array-data v2, :array_2

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    const/16 v2, 0xa

    .line 58
    .line 59
    new-array v2, v2, [J

    .line 60
    .line 61
    fill-array-data v2, :array_3

    .line 62
    .line 63
    .line 64
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    check-cast p1, Landroid/content/ClipboardManager;

    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    invoke-static {v1, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p1, p2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 86
    .line 87
    new-array p2, v0, [J

    .line 88
    .line 89
    fill-array-data p2, :array_4

    .line 90
    .line 91
    .line 92
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    const/4 p2, 0x5

    .line 101
    new-array p2, p2, [J

    .line 102
    .line 103
    fill-array-data p2, :array_5

    .line 104
    .line 105
    .line 106
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    :goto_0
    return-void

    .line 113
    :array_0
    .array-data 8
        -0x24f39725370e08a3L    # -3.938520238024937E130
        0x20a7875dff795a6L    # 7.905279998767143E-299
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
    :array_1
    .array-data 8
        -0xda5beb287b661aaL
        -0x76170f461f146643L    # -6.336304985339514E-261
    .end array-data

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
    :array_2
    .array-data 8
        -0x5f41c9bf16837b50L    # -5.768469837226281E-151
        -0x2512bb95928eeac0L
        -0x1c03d148f2eb8d9dL    # -4.3564901566933437E173
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
    .line 150
    .line 151
    .line 152
    .line 153
    :array_3
    .array-data 8
        -0x36cee65be89e7ef3L    # -3.813463129100038E44
        -0x2646f44b70a183a7L    # -1.6556625261890272E124
        0x4d14674ecf49db6bL    # 2.0983830254498507E63
        0x2279dc323c15a7a0L
        0x7af1089d4045cd86L
        -0x77ffa4226bc13614L    # -3.870674598723145E-270
        0xed9a8f6f0fcf183L    # 3.94058212129508E-237
        -0x2178a5db06310f4bL    # -2.332782966134496E147
        -0x57abd90fad1ecb9L    # -1.54361551183852E282
        0x4ff7f098973ea7b3L    # 1.7325267129531116E77
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
    :array_4
    .array-data 8
        0x5d08fbe5aef1b385L    # 1.4876114438631425E140
        0x72381bedda7a63f2L
        0x217fdd842ac2110cL    # 2.492069311178042E-147
    .end array-data

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
    :array_5
    .array-data 8
        -0x6231ece0f4dcadL
        -0x410dff969914278cL    # -1.7167671496808428E-5
        0x3dd27aefee532f6dL    # 6.723066164653381E-11
        -0x3153f1bc471641a7L    # -9.681673447791936E70
        -0x54f4c7f37218aa6fL    # -2.430539610252119E-101
    .end array-data
.end method

.method public final tryDecodeBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v3, 0x2

    .line 14
    :try_start_0
    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    new-array v5, v1, [J

    .line 21
    .line 22
    fill-array-data v5, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 36
    .line 37
    new-instance v5, Ljava/lang/String;

    .line 38
    .line 39
    invoke-direct {v5, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    return-object v5

    .line 43
    :catch_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    new-array v4, v1, [J

    .line 46
    .line 47
    fill-array-data v4, :array_1

    .line 48
    .line 49
    .line 50
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    new-array v4, v0, [J

    .line 59
    .line 60
    fill-array-data v4, :array_2

    .line 61
    .line 62
    .line 63
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    const/16 v3, 0xa

    .line 70
    .line 71
    :try_start_1
    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 76
    .line 77
    new-array v4, v1, [J

    .line 78
    .line 79
    fill-array-data v4, :array_3

    .line 80
    .line 81
    .line 82
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 93
    .line 94
    new-instance v4, Ljava/lang/String;

    .line 95
    .line 96
    invoke-direct {v4, p1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    .line 98
    .line 99
    return-object v4

    .line 100
    :catch_1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    new-array v1, v1, [J

    .line 103
    .line 104
    fill-array-data v1, :array_4

    .line 105
    .line 106
    .line 107
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 114
    .line 115
    new-array v0, v0, [J

    .line 116
    .line 117
    fill-array-data v0, :array_5

    .line 118
    .line 119
    .line 120
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    :cond_1
    :goto_0
    return-object v2

    .line 127
    :array_0
    .array-data 8
        0x3fff82c41a65a78fL    # 1.9694252997528314
        0x6c00d29dd4104ca8L    # 1.769795949665546E212
        0x2151cc9df79bff03L    # 3.480043787378617E-148
    .end array-data

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
    .line 140
    .line 141
    .line 142
    .line 143
    :array_1
    .array-data 8
        -0x4f29c0d43eed8dcfL    # -1.9673782388099042E-73
        -0x511d78e6a7216779L    # -7.629804786974308E-83
        -0x7f2207e1edc5da02L
    .end array-data

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
    .line 158
    .line 159
    :array_2
    .array-data 8
        0x138e487ac6534eadL    # 1.756927199836236E-214
        0x2b3fa85279b61e27L
        0x21ed87e18d1e5971L
        0x40d63dc658399a88L    # 22775.099134827527
        -0x57defc3f0663fd46L    # -2.159111293797212E-115
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
    .line 180
    .line 181
    .line 182
    .line 183
    :array_3
    .array-data 8
        -0x4bd03101c849127L    # -5.647105942563853E285
        -0x2f03e6dd8ab10cb8L    # -1.3326529340589902E82
        -0x49d9dfdd6ea220afL    # -7.569450111518577E-48
    .end array-data

    .line 184
    .line 185
    .line 186
    .line 187
    :array_4
    .array-data 8
        0x3642077c2add8074L    # 2.467221101132325E-47
        -0x6379ba57f8ad1752L
        0x7fe530519b85e4fL
    .end array-data

    :array_5
    .array-data 8
        0x2e92c56b2ec65532L
        -0x2018c773a4b24eebL    # -9.729414234623813E153
        -0x3ce368145138e3efL    # -2.0120844633228842E15
        0x769ebdea2b26202aL    # 2.4200608648567833E263
        -0x65f0a5276ee072a6L
    .end array-data
.end method

.method public final urlDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
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
    :try_start_0
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    move-object p1, v0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    new-array v1, v1, [J

    .line 38
    .line 39
    fill-array-data v1, :array_1

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    const/4 v1, 0x4

    .line 51
    new-array v1, v1, [J

    .line 52
    .line 53
    fill-array-data v1, :array_2

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    :goto_0
    return-object p1

    .line 63
    :array_0
    .array-data 8
        -0x2652c91b6f4d86f1L    # -9.656185052994978E123
        0x34b34bd2bdea6582L    # 7.86959239888431E-55
    .end array-data

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :array_1
    .array-data 8
        -0x41fcd00809b22be7L    # -5.584261773550509E-10
        0x1b5f588390fb6aa7L
        -0xa9986f58d941aaaL    # -3.374300834852445E257
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
    :array_2
    .array-data 8
        -0x23aee477d4458f7fL    # -4.973770924592254E136
        0xf0d6f60914f7e51L    # 3.616249985353739E-236
        -0x5e50a7d627c55a87L
        -0x540beaf4d87fe6c0L    # -5.876147980232203E-97
    .end array-data
.end method

.method public final urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1    # Ljava/lang/String;
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
    :try_start_0
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array v4, v0, [J

    .line 33
    .line 34
    fill-array-data v4, :array_1

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    new-array v4, v2, [J

    .line 50
    .line 51
    fill-array-data v4, :array_2

    .line 52
    .line 53
    .line 54
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    new-array v2, v2, [J

    .line 64
    .line 65
    fill-array-data v2, :array_3

    .line 66
    .line 67
    .line 68
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    const/4 v7, 0x4

    .line 76
    const/4 v8, 0x0

    .line 77
    const/4 v6, 0x0

    .line 78
    invoke-static/range {v3 .. v8}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_0

    .line 83
    :catch_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v0, v0, [J

    .line 86
    .line 87
    fill-array-data v0, :array_4

    .line 88
    .line 89
    .line 90
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    const/4 v1, 0x4

    .line 99
    new-array v1, v1, [J

    .line 100
    .line 101
    fill-array-data v1, :array_5

    .line 102
    .line 103
    .line 104
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    :goto_0
    return-object p1

    .line 111
    :array_0
    .array-data 8
        -0x4ac46e5e650f838aL    # -2.8783245539045394E-52
        0x32ab2d84cad21a7bL    # 1.2903435614499793E-64
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
    :array_1
    .array-data 8
        0x2649e1e59de2021aL
        -0xb3f24d61168934dL
        0x4177ec65cfd62dd0L    # 2.5085532989789784E7
    .end array-data

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
        0x1ba9076b4f1e02f7L    # 1.976494944799102E-175
        0x265ea7c4f35fef50L    # 7.245828650064434E-124
    .end array-data

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
    .line 150
    .line 151
    :array_3
    .array-data 8
        0x40a7e2c0beae8c8fL    # 3057.376454786928
        0x4eda2ca5f776967dL    # 7.225964839940173E71
    .end array-data

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
    :array_4
    .array-data 8
        0x68ed67664b050f5bL    # 2.7474650879160637E197
        0x3660af83ba08cf19L    # 9.133402694152044E-47
        0x1f380f3c71cb1054L
    .end array-data

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
    :array_5
    .array-data 8
        -0x5161ca38767da2f4L
        -0x4c1b0a730351a2f4L    # -1.0434345053347134E-58
        -0x2d94b45c0257ac5L    # -7.250797453965544E294
        -0x589fce0ed71054dfL    # -5.017356746327074E-119
    .end array-data
.end method

.method public final userAssetPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    new-array v0, v1, [J

    .line 9
    .line 10
    const-wide v3, 0xd3654d36da82c39L

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    aput-wide v3, v0, v2

    .line 16
    .line 17
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_0
    :try_start_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    new-array v4, v0, [J

    .line 28
    .line 29
    fill-array-data v4, :array_0

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
    invoke-virtual {p1, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-nez v3, :cond_2

    .line 50
    .line 51
    :cond_1
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array v0, v0, [J

    .line 54
    .line 55
    fill-array-data v0, :array_1

    .line 56
    .line 57
    .line 58
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    const/4 v0, 0x3

    .line 80
    new-array v0, v0, [J

    .line 81
    .line 82
    fill-array-data v0, :array_2

    .line 83
    .line 84
    .line 85
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    const/4 v0, 0x5

    .line 94
    new-array v0, v0, [J

    .line 95
    .line 96
    fill-array-data v0, :array_3

    .line 97
    .line 98
    .line 99
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 106
    .line 107
    new-array v0, v1, [J

    .line 108
    .line 109
    const-wide v3, 0x7ac86a2890012095L    # 2.8363315709988844E283

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    aput-wide v3, v0, v2

    .line 115
    .line 116
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    :goto_0
    return-object v3

    .line 124
    nop

    .line 125
    :array_0
    .array-data 8
        0x7468d6d57be9be72L    # 5.6909385539399245E252
        0x670c5c71ea6e2311L    # 2.4680308322716204E188
    .end array-data

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
    :array_1
    .array-data 8
        0x60f8174dfabf77bfL    # 1.3230405699348481E159
        -0x770c9aa4faed9879L
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
    :array_2
    .array-data 8
        -0x1fd2f46fef3058d2L    # -1.9471601033285938E155
        0x4907d701e5567933L    # 6.645586577076331E43
        0x3dbd78b537fee0a3L    # 2.6804186907992575E-11
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
    :array_3
    .array-data 8
        0x42f1467b84b625bbL    # 3.039106828457877E14
        0x298845ba367e7608L
        -0x24d6874d93a09ad1L    # -1.4124795986366142E131
        0x682023271ec72912L    # 3.681277225271468E193
        0x2ceb7a6e2a73f1feL    # 2.634634093552798E-92
    .end array-data
.end method
