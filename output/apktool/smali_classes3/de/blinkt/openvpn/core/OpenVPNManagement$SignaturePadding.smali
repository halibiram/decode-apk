.class public final enum Lde/blinkt/openvpn/core/OpenVPNManagement$SignaturePadding;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/blinkt/openvpn/core/OpenVPNManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SignaturePadding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/blinkt/openvpn/core/OpenVPNManagement$SignaturePadding;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NO_PADDING:Lde/blinkt/openvpn/core/OpenVPNManagement$SignaturePadding;

.field public static final enum RSA_PKCS1_PADDING:Lde/blinkt/openvpn/core/OpenVPNManagement$SignaturePadding;

.field public static final enum RSA_PKCS1_PSS_PADDING:Lde/blinkt/openvpn/core/OpenVPNManagement$SignaturePadding;

.field public static final synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:[Lde/blinkt/openvpn/core/OpenVPNManagement$SignaturePadding;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    new-instance v3, Lde/blinkt/openvpn/core/OpenVPNManagement$SignaturePadding;

    .line 5
    .line 6
    const-string v4, "RSA_PKCS1_PSS_PADDING"

    .line 7
    .line 8
    invoke-direct {v3, v4, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    sput-object v3, Lde/blinkt/openvpn/core/OpenVPNManagement$SignaturePadding;->RSA_PKCS1_PSS_PADDING:Lde/blinkt/openvpn/core/OpenVPNManagement$SignaturePadding;

    .line 12
    .line 13
    new-instance v4, Lde/blinkt/openvpn/core/OpenVPNManagement$SignaturePadding;

    .line 14
    .line 15
    const-string v5, "RSA_PKCS1_PADDING"

    .line 16
    .line 17
    invoke-direct {v4, v5, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    sput-object v4, Lde/blinkt/openvpn/core/OpenVPNManagement$SignaturePadding;->RSA_PKCS1_PADDING:Lde/blinkt/openvpn/core/OpenVPNManagement$SignaturePadding;

    .line 21
    .line 22
    new-instance v5, Lde/blinkt/openvpn/core/OpenVPNManagement$SignaturePadding;

    .line 23
    .line 24
    const-string v6, "NO_PADDING"

    .line 25
    .line 26
    invoke-direct {v5, v6, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v5, Lde/blinkt/openvpn/core/OpenVPNManagement$SignaturePadding;->NO_PADDING:Lde/blinkt/openvpn/core/OpenVPNManagement$SignaturePadding;

    .line 30
    .line 31
    const/4 v6, 0x3

    .line 32
    new-array v6, v6, [Lde/blinkt/openvpn/core/OpenVPNManagement$SignaturePadding;

    .line 33
    .line 34
    aput-object v3, v6, v2

    .line 35
    .line 36
    aput-object v4, v6, v1

    .line 37
    .line 38
    aput-object v5, v6, v0

    .line 39
    .line 40
    sput-object v6, Lde/blinkt/openvpn/core/OpenVPNManagement$SignaturePadding;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:[Lde/blinkt/openvpn/core/OpenVPNManagement$SignaturePadding;

    .line 41
    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/blinkt/openvpn/core/OpenVPNManagement$SignaturePadding;
    .locals 1

    .line 1
    const-class v0, Lde/blinkt/openvpn/core/OpenVPNManagement$SignaturePadding;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lde/blinkt/openvpn/core/OpenVPNManagement$SignaturePadding;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lde/blinkt/openvpn/core/OpenVPNManagement$SignaturePadding;
    .locals 1

    .line 1
    sget-object v0, Lde/blinkt/openvpn/core/OpenVPNManagement$SignaturePadding;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:[Lde/blinkt/openvpn/core/OpenVPNManagement$SignaturePadding;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lde/blinkt/openvpn/core/OpenVPNManagement$SignaturePadding;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lde/blinkt/openvpn/core/OpenVPNManagement$SignaturePadding;

    .line 8
    .line 9
    return-object v0
.end method
