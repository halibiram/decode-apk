.class public final Lio/github/g00fy2/quickie/QRScannerActivity$pickImageLauncher$lambda$2$lambda$1$$inlined$target$default$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/target/Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/g00fy2/quickie/QRScannerActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0005H\u0016\u00a8\u0006\n\u00b8\u0006\u0000"
    }
    d2 = {
        "coil3/request/ImageRequest$Builder$target$4",
        "Lcoil3/target/Target;",
        "onStart",
        "",
        "placeholder",
        "Lcoil3/Image;",
        "onError",
        "error",
        "onSuccess",
        "result",
        "coil-core_release"
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
        "SMAP\nImageRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageRequest.kt\ncoil3/request/ImageRequest$Builder$target$4\n+ 2 ImageRequest.kt\ncoil3/request/ImageRequest$Builder$target$1\n+ 3 ImageRequest.kt\ncoil3/request/ImageRequest$Builder$target$2\n+ 4 QRScannerActivity.kt\nio/github/g00fy2/quickie/QRScannerActivity\n*L\n1#1,417:1\n411#2:418\n412#3:419\n80#4,6:420\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lio/github/g00fy2/quickie/QRScannerActivity;


# direct methods
.method public constructor <init>(Lio/github/g00fy2/quickie/QRScannerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/github/g00fy2/quickie/QRScannerActivity$pickImageLauncher$lambda$2$lambda$1$$inlined$target$default$1;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lio/github/g00fy2/quickie/QRScannerActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(Lcoil3/Image;)V
    .locals 0

    return-void
.end method

.method public onStart(Lcoil3/Image;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcoil3/Image;)V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {p1, v2, v2, v0, v1}, Lcoil3/Image_androidKt;->toBitmap$default(Lcoil3/Image;IIILjava/lang/Object;)Landroid/graphics/Bitmap;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p0, Lio/github/g00fy2/quickie/QRScannerActivity$pickImageLauncher$lambda$2$lambda$1$$inlined$target$default$1;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lio/github/g00fy2/quickie/QRScannerActivity;

    .line 9
    .line 10
    invoke-static {v0}, Lio/github/g00fy2/quickie/QRScannerActivity;->access$getBarcodeFormats$p(Lio/github/g00fy2/quickie/QRScannerActivity;)[I

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, L딁듨듼뎬딃땟뒀뎸땸땥될땦둣됩뒀뒐딨뎸듌딀땔딻듟둣뒋뒾딞딐돵땮둣땋땸딸땪듸뒬땃뒋뒘뒋따됫돸뒀둑됫뒋뎽땃땋딜딨돵땡뒬돵뎠딝득듌뒋딟딨두돰딤뒙땣땲뒼땵딁둥됴딞뒀뒹뒙딜뒻뒉돤땳도땠듼뒈둣땬땅땁뎠딻돶땲땻돵딠딟딤땳땪둔뎠땐돴둡뒀땟뒻땯뎽된뒀뒐딸뒵딎땡땹듌땡됨딃딌땻득된듐;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-direct {v2, v0, v3}, L딁듨듼뎬딃땟뒀뎸땸땥될땦둣됩뒀뒐딨뎸듌딀땔딻듟둣뒋뒾딞딐돵땮둣땋땸딸땪듸뒬땃뒋뒘뒋따됫돸뒀둑됫뒋뎽땃땋딜딨돵땡뒬돵뎠딝득듌뒋딟딨두돰딤뒙땣땲뒼땵딁둥됴딞뒀뒹뒙딜뒻뒉돤땳도땠듼뒈둣땬땅땁뎠딻돶땲땻돵딠딟딤땳땪둔뎠땐돴둡뒀땟뒻땯뎽된뒀뒐딸뒵딎땡땹듌땡됨딃딌땻득된듐;-><init>(Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    new-instance v3, L딁듨듼뎬딃땟뒀뎸땸땥될땦둣됩뒀뒐딨뎸듌딀땔딻듟둣뒋뒾딞딐돵땮둣땋땸딸땪듸뒬땃뒋뒘뒋따됫돸뒀둑됫뒋뎽땃땋딜딨돵땡뒬돵뎠딝득듌뒋딟딨두돰딤뒙땣땲뒼땵딁둥됴딞뒀뒹뒙딜뒻뒉돤땳도땠듼뒈둣땬땅땁뎠딻돶땲땻돵딠딟딤땳땪둔뎠땐돴둡뒀땟뒻땯뎽된뒀뒐딸뒵딎땡땹듌땡됨딃딌땻득된듐;

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    invoke-direct {v3, v0, v4}, L딁듨듼뎬딃땟뒀뎸땸땥될땦둣됩뒀뒐딨뎸듌딀땔딻듟둣뒋뒾딞딐돵땮둣땋땸딸땪듸뒬땃뒋뒘뒋따됫돸뒀둑됫뒋뎽땃땋딜딨돵땡뒬돵뎠딝득듌뒋딟딨두돰딤뒙땣땲뒼땵딁둥됴딞뒀뒹뒙딜뒻뒉돤땳도땠듼뒈둣땬땅땁뎠딻돶땲땻돵딠딟딤땳땪둔뎠땐돴둡뒀땟뒻땯뎽된뒀뒐딸뒵딎땡땹듌땡됨딃딌땻득된듐;-><init>(Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v1, v2, v3}, Lio/github/g00fy2/quickie/extensions/BitmapQrReaderKt;->readQrCode(Landroid/graphics/Bitmap;[ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
