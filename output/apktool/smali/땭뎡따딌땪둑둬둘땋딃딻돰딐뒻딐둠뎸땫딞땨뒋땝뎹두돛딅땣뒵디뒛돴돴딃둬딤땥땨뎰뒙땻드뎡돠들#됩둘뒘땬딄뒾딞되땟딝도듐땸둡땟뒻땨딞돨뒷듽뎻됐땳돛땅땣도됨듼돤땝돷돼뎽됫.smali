.class public abstract synthetic L땭뎡따딌땪둑둬둘땋딃딻돰딐뒻딐둠뎸땫딞땨뒋땝뎹두돛딅땣뒵디뒛돴돴딃둬딤땥땨뎰뒙땻드뎡돠들둠뒤땵도둠뒷딄들땪땍뒷돨돳듐뒼땝둔뒵따듨뎽뎡뒉둘듨뒵듐뒹뒬뒀땰둣둣땯뒤뎨듸뒋땱땁돷땵뎸돠되둣뒋돷돼뎨됩둘뒘땬딄뒾딞되땟딝도듐땸둡땟뒻땨딞돨뒷듽뎻됐땳돛땅땣도됨듼돤땝돷돼뎽됫;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroid/os/Bundle;)Landroidx/browser/trusted/TrustedWebActivityDisplayMode;
    .locals 2

    .line 1
    const-string v0, "androidx.browser.trusted.displaymode.KEY_ID"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    new-instance p0, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$DefaultMode;

    .line 11
    .line 12
    invoke-direct {p0}, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$DefaultMode;-><init>()V

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-static {p0}, Landroidx/browser/trusted/TrustedWebActivityDisplayMode$ImmersiveMode;->fromBundle(Landroid/os/Bundle;)Landroidx/browser/trusted/TrustedWebActivityDisplayMode;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method
