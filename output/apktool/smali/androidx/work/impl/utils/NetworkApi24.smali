.class public final Landroidx/work/impl/utils/NetworkApi24;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "registerDefaultNetworkCallbackCompat",
        "",
        "Landroid/net/ConnectivityManager;",
        "networkCallback",
        "Landroid/net/ConnectivityManager$NetworkCallback;",
        "work-runtime_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "NetworkApi24"
.end annotation


# direct methods
.method public static final registerDefaultNetworkCallbackCompat(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 1
    .param p0    # Landroid/net/ConnectivityManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/net/ConnectivityManager$NetworkCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "networkCallback"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1}, L딻땔땫듨뎬딜땋뒀돸딃딝듌딽딜딻뒤땫땄듽딀돨땻뒤뒼땝땸듬뎠돠딄뒈된딄둠둣뒬듼따뒵된돸땁땨돰돠뒻딄뒈둥뒐됨딁둠뎡땲땋뎻딐땩둬딝땻딠딄됨땩땃돤딀땳땫딅디둬둑돠든뎰땠뒐뎻뒉돸돳됐딌땵듽둠뎬땐돼뎰둔딄땟땧됨뎻듰드뒙딸되듼뒬듽따딻딽딀뒾둠뒤돠땡듼되땋땩딝딄돰돝딞됴돴땩돸뎨;->뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
