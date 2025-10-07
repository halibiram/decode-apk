.class public final enum Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/blinkt/openvpn/core/TkLogStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEBUG:Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;

.field public static final enum ERROR:Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;

.field public static final enum INFO:Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;

.field public static final enum VERBOSE:Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;

.field public static final enum WARNING:Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;

.field public static final synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:[Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;


# instance fields
.field protected mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;

    .line 2
    .line 3
    const-string v1, "INFO"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;->INFO:Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;

    .line 11
    .line 12
    new-instance v1, Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;

    .line 13
    .line 14
    const-string v4, "ERROR"

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    const/4 v6, -0x2

    .line 18
    invoke-direct {v1, v4, v5, v6}, Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;->ERROR:Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;

    .line 22
    .line 23
    new-instance v4, Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;

    .line 24
    .line 25
    const-string v6, "WARNING"

    .line 26
    .line 27
    invoke-direct {v4, v6, v3, v5}, Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v4, Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;->WARNING:Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;

    .line 31
    .line 32
    new-instance v6, Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;

    .line 33
    .line 34
    const-string v7, "VERBOSE"

    .line 35
    .line 36
    const/4 v8, 0x3

    .line 37
    invoke-direct {v6, v7, v8, v8}, Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v6, Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;->VERBOSE:Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;

    .line 41
    .line 42
    new-instance v7, Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;

    .line 43
    .line 44
    const-string v9, "DEBUG"

    .line 45
    .line 46
    const/4 v10, 0x4

    .line 47
    invoke-direct {v7, v9, v10, v10}, Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v7, Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;->DEBUG:Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;

    .line 51
    .line 52
    const/4 v9, 0x5

    .line 53
    new-array v9, v9, [Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;

    .line 54
    .line 55
    aput-object v0, v9, v2

    .line 56
    .line 57
    aput-object v1, v9, v5

    .line 58
    .line 59
    aput-object v4, v9, v3

    .line 60
    .line 61
    aput-object v6, v9, v8

    .line 62
    .line 63
    aput-object v7, v9, v10

    .line 64
    .line 65
    sput-object v9, Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:[Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;

    .line 66
    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;->mValue:I

    .line 5
    .line 6
    return-void
.end method

.method public static getEnumByValue(I)Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;
    .locals 1

    .line 1
    const/4 v0, -0x2

    .line 2
    if-eq p0, v0, :cond_4

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-eq p0, v0, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    if-eq p0, v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    if-eq p0, v0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return-object p0

    .line 18
    :cond_0
    sget-object p0, Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;->DEBUG:Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    sget-object p0, Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;->VERBOSE:Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_2
    sget-object p0, Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;->INFO:Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_3
    sget-object p0, Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;->WARNING:Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_4
    sget-object p0, Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;->ERROR:Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;

    .line 31
    .line 32
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;
    .locals 1

    .line 1
    const-class v0, Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;
    .locals 1

    .line 1
    sget-object v0, Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:[Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .line 1
    iget v0, p0, Lde/blinkt/openvpn/core/TkLogStatus$LogLevel;->mValue:I

    .line 2
    .line 3
    return v0
.end method
