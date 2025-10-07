.class public final enum Lde/blinkt/openvpn/core/ConnectionStatus;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/blinkt/openvpn/core/ConnectionStatus;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final enum CONNECTED:Lde/blinkt/openvpn/core/ConnectionStatus;

.field public static final enum CONNECTING:Lde/blinkt/openvpn/core/ConnectionStatus;

.field public static final enum CONNECTING_SERVER:Lde/blinkt/openvpn/core/ConnectionStatus;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lde/blinkt/openvpn/core/ConnectionStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum LEVEL_AUTH_FAILED:Lde/blinkt/openvpn/core/ConnectionStatus;

.field public static final enum LEVEL_NONETWORK:Lde/blinkt/openvpn/core/ConnectionStatus;

.field public static final enum LEVEL_NOTCONNECTED:Lde/blinkt/openvpn/core/ConnectionStatus;

.field public static final enum LEVEL_START:Lde/blinkt/openvpn/core/ConnectionStatus;

.field public static final enum LEVEL_WAITING_FOR_USER_INPUT:Lde/blinkt/openvpn/core/ConnectionStatus;

.field public static final enum UNKNOWN_LEVEL:Lde/blinkt/openvpn/core/ConnectionStatus;

.field public static final synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:[Lde/blinkt/openvpn/core/ConnectionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const/4 v2, 0x6

    .line 5
    const/4 v3, 0x5

    .line 6
    const/4 v4, 0x4

    .line 7
    const/4 v5, 0x3

    .line 8
    const/4 v6, 0x2

    .line 9
    const/4 v7, 0x1

    .line 10
    const/4 v8, 0x0

    .line 11
    new-instance v9, Lde/blinkt/openvpn/core/ConnectionStatus;

    .line 12
    .line 13
    const-string v10, "CONNECTED"

    .line 14
    .line 15
    invoke-direct {v9, v10, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    sput-object v9, Lde/blinkt/openvpn/core/ConnectionStatus;->CONNECTED:Lde/blinkt/openvpn/core/ConnectionStatus;

    .line 19
    .line 20
    new-instance v10, Lde/blinkt/openvpn/core/ConnectionStatus;

    .line 21
    .line 22
    const-string v11, "CONNECTING_SERVER"

    .line 23
    .line 24
    invoke-direct {v10, v11, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    sput-object v10, Lde/blinkt/openvpn/core/ConnectionStatus;->CONNECTING_SERVER:Lde/blinkt/openvpn/core/ConnectionStatus;

    .line 28
    .line 29
    new-instance v11, Lde/blinkt/openvpn/core/ConnectionStatus;

    .line 30
    .line 31
    const-string v12, "CONNECTING"

    .line 32
    .line 33
    invoke-direct {v11, v12, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    sput-object v11, Lde/blinkt/openvpn/core/ConnectionStatus;->CONNECTING:Lde/blinkt/openvpn/core/ConnectionStatus;

    .line 37
    .line 38
    new-instance v12, Lde/blinkt/openvpn/core/ConnectionStatus;

    .line 39
    .line 40
    const-string v13, "LEVEL_NONETWORK"

    .line 41
    .line 42
    invoke-direct {v12, v13, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    sput-object v12, Lde/blinkt/openvpn/core/ConnectionStatus;->LEVEL_NONETWORK:Lde/blinkt/openvpn/core/ConnectionStatus;

    .line 46
    .line 47
    new-instance v13, Lde/blinkt/openvpn/core/ConnectionStatus;

    .line 48
    .line 49
    const-string v14, "LEVEL_NOTCONNECTED"

    .line 50
    .line 51
    invoke-direct {v13, v14, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    sput-object v13, Lde/blinkt/openvpn/core/ConnectionStatus;->LEVEL_NOTCONNECTED:Lde/blinkt/openvpn/core/ConnectionStatus;

    .line 55
    .line 56
    new-instance v14, Lde/blinkt/openvpn/core/ConnectionStatus;

    .line 57
    .line 58
    const-string v15, "LEVEL_START"

    .line 59
    .line 60
    invoke-direct {v14, v15, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    sput-object v14, Lde/blinkt/openvpn/core/ConnectionStatus;->LEVEL_START:Lde/blinkt/openvpn/core/ConnectionStatus;

    .line 64
    .line 65
    new-instance v15, Lde/blinkt/openvpn/core/ConnectionStatus;

    .line 66
    .line 67
    const-string v3, "LEVEL_AUTH_FAILED"

    .line 68
    .line 69
    invoke-direct {v15, v3, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    .line 71
    .line 72
    sput-object v15, Lde/blinkt/openvpn/core/ConnectionStatus;->LEVEL_AUTH_FAILED:Lde/blinkt/openvpn/core/ConnectionStatus;

    .line 73
    .line 74
    new-instance v3, Lde/blinkt/openvpn/core/ConnectionStatus;

    .line 75
    .line 76
    const-string v2, "LEVEL_WAITING_FOR_USER_INPUT"

    .line 77
    .line 78
    invoke-direct {v3, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    sput-object v3, Lde/blinkt/openvpn/core/ConnectionStatus;->LEVEL_WAITING_FOR_USER_INPUT:Lde/blinkt/openvpn/core/ConnectionStatus;

    .line 82
    .line 83
    new-instance v2, Lde/blinkt/openvpn/core/ConnectionStatus;

    .line 84
    .line 85
    const-string v1, "UNKNOWN_LEVEL"

    .line 86
    .line 87
    invoke-direct {v2, v1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v2, Lde/blinkt/openvpn/core/ConnectionStatus;->UNKNOWN_LEVEL:Lde/blinkt/openvpn/core/ConnectionStatus;

    .line 91
    .line 92
    const/16 v1, 0x9

    .line 93
    .line 94
    new-array v1, v1, [Lde/blinkt/openvpn/core/ConnectionStatus;

    .line 95
    .line 96
    aput-object v9, v1, v8

    .line 97
    .line 98
    aput-object v10, v1, v7

    .line 99
    .line 100
    aput-object v11, v1, v6

    .line 101
    .line 102
    aput-object v12, v1, v5

    .line 103
    .line 104
    aput-object v13, v1, v4

    .line 105
    .line 106
    const/4 v4, 0x5

    .line 107
    aput-object v14, v1, v4

    .line 108
    .line 109
    const/4 v4, 0x6

    .line 110
    aput-object v15, v1, v4

    .line 111
    .line 112
    const/4 v4, 0x7

    .line 113
    aput-object v3, v1, v4

    .line 114
    .line 115
    aput-object v2, v1, v0

    .line 116
    .line 117
    sput-object v1, Lde/blinkt/openvpn/core/ConnectionStatus;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:[Lde/blinkt/openvpn/core/ConnectionStatus;

    .line 118
    .line 119
    new-instance v0, L둥돤땱듔뎡딁돳될뒉땻딞땡됐땔땄둑듸두뎬딃돼땤딤땱돴듽땧땮됐뎬땹드딐뎡돛딽됫돼듰딞듼뒤뒹뎽돵뒵둣땦딌딨땅돨뎻듰됫땯도딝둑뒤땱듼뒨뎨땩둡둡딽땵듐땧들돝뎸땀됐뒛딎땲뎹드땲뒈땱됴뒵듻딻땱땩듸땤땭돠들딄땮둡둥뎹뒀딐돷듟땣땯둔뒹뒷땵둣땯땝땻뒵땋뒋땟딜땝뎹뎰드뎹돤뎸땤둣뒛땦;

    .line 120
    .line 121
    invoke-direct {v0, v8}, L둥돤땱듔뎡딁돳될뒉땻딞땡됐땔땄둑듸두뎬딃돼땤딤땱돴듽땧땮됐뎬땹드딐뎡돛딽됫돼듰딞듼뒤뒹뎽돵뒵둣땦딌딨땅돨뎻듰됫땯도딝둑뒤땱듼뒨뎨땩둡둡딽땵듐땧들돝뎸땀됐뒛딎땲뎹드땲뒈땱됴뒵듻딻땱땩듸땤땭돠들딄땮둡둥뎹뒀딐돷듟땣땯둔뒹뒷땵둣땯땝땻뒵땋뒋땟딜땝뎹뎰드뎹돤뎸땤둣뒛땦;-><init>(I)V

    .line 122
    .line 123
    .line 124
    sput-object v0, Lde/blinkt/openvpn/core/ConnectionStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 125
    .line 126
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/blinkt/openvpn/core/ConnectionStatus;
    .locals 1

    .line 1
    const-class v0, Lde/blinkt/openvpn/core/ConnectionStatus;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lde/blinkt/openvpn/core/ConnectionStatus;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lde/blinkt/openvpn/core/ConnectionStatus;
    .locals 1

    .line 1
    sget-object v0, Lde/blinkt/openvpn/core/ConnectionStatus;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:[Lde/blinkt/openvpn/core/ConnectionStatus;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lde/blinkt/openvpn/core/ConnectionStatus;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lde/blinkt/openvpn/core/ConnectionStatus;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
