.class public final Lapp/tunnel/vpncommons/auth/AuthService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/tunnel/vpncommons/auth/AuthService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J)\u0010\u000c\u001a\u00020\t2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0003\u00a8\u0006\u0011"
    }
    d2 = {
        "Lapp/tunnel/vpncommons/auth/AuthService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "Landroid/content/Intent;",
        "intent",
        "Landroid/os/IBinder;",
        "onBind",
        "(Landroid/content/Intent;)Landroid/os/IBinder;",
        "",
        "flags",
        "startId",
        "onStartCommand",
        "(Landroid/content/Intent;II)I",
        "",
        "onDestroy",
        "Companion",
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
.field public static final CONTINUE:Ljava/lang/String; = "CONTINUE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lapp/tunnel/vpncommons/auth/AuthService$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DISCONNECT:Ljava/lang/String; = "DISCONNECT"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lapp/tunnel/vpncommons/auth/AuthService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lapp/tunnel/vpncommons/auth/AuthService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lapp/tunnel/vpncommons/auth/AuthService;->Companion:Lapp/tunnel/vpncommons/auth/AuthService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lapp/tunnel/vpncommons/auth/AuthService;Ljava/lang/String;I)V
    .locals 1

    .line 1
    and-int/lit8 v0, p2, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    and-int/lit8 p2, p2, 0x2

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    const/4 p2, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 p2, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroid/content/Intent;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 19
    .line 20
    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    const-string p2, "CONTINUE"

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    const-string p2, "DISCONNECT"

    .line 27
    .line 28
    :goto_1
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    const-string p2, "data"

    .line 34
    .line 35
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lapp/tunnel/vpncommons/auth/AuthService;->onDestroy()V

    .line 49
    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lapp/tunnel/vpncommons/auth/AuthService;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lcom/android/volley/RequestQueue;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :cond_0
    const-string v1, ""

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lapp/tunnel/vpncommons/utils/DataHolder;->getBundle()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    const-string p2, "AUTH_URL"

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p2, Lcom/android/volley/toolbox/StringRequest;

    .line 17
    .line 18
    new-instance p3, L돝드돠땵돼딃뒾딟뒈둣딄딸뎨됩돷딠땪딜딞땧뒨딁딅돴땅됐딟뒀됴뒙땸뎽돠돷딄뒙땋땡듌땝딠땀됨뒷딻뎽된됩듻든된땯듽땰되돸땔듟땳땟돛듟뎨뎡땥딝땫딃되됨돰둘뒬둠듻땻될땠땵땠돛될돳땦땃들땦딅뒤듨땱돤도돠땤땭뒻둡딽땃돷땨뎻땍돴땤됴딃돶듸땍딹딀땄땔따뒼듟디딞듌딟두땩땝땍땤된딎딀;

    .line 19
    .line 20
    invoke-direct {p3, p0}, L돝드돠땵돼딃뒾딟뒈둣딄딸뎨됩돷딠땪딜딞땧뒨딁딅돴땅됐딟뒀됴뒙땸뎽돠돷딄뒙땋땡듌땝딠땀됨뒷딻뎽된됩듻든된땯듽땰되돸땔듟땳땟돛듟뎨뎡땥딝땫딃되됨돰둘뒬둠듻땻될땠땵땠돛될돳땦땃들땦딅뒤듨땱돤도돠땤땭뒻둡딽땃돷땨뎻땍돴땤됴딃돶듸땍딹딀땄땔따뒼듟디딞듌딟두땩땝땍땤된딎딀;-><init>(Lapp/tunnel/vpncommons/auth/AuthService;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, L돝드돠땵돼딃뒾딟뒈둣딄딸뎨됩돷딠땪딜딞땧뒨딁딅돴땅됐딟뒀됴뒙땸뎽돠돷딄뒙땋땡듌땝딠땀됨뒷딻뎽된됩듻든된땯듽땰되돸땔듟땳땟돛듟뎨뎡땥딝땫딃되됨돰둘뒬둠듻땻될땠땵땠돛될돳땦땃들땦딅뒤듨땱돤도돠땤땭뒻둡딽땃돷땨뎻땍돴땤됴딃돶듸땍딹딀땄땔따뒼듟디딞듌딟두땩땝땍땤된딎딀;

    .line 24
    .line 25
    invoke-direct {v0, p0}, L돝드돠땵돼딃뒾딟뒈둣딄딸뎨됩돷딠땪딜딞땧뒨딁딅돴땅됐딟뒀됴뒙땸뎽돠돷딄뒙땋땡듌땝딠땀됨뒷딻뎽된됩듻든된땯듽땰되돸땔듟땳땟돛듟뎨뎡땥딝땫딃되됨돰둘뒬둠듻땻될땠땵땠돛될돳땦땃들땦딅뒤듨땱돤도돠땤땭뒻둡딽땃돷땨뎻땍돴땤됴딃돶듸땍딹딀땄땔따뒼듟디딞듌딟두땩땝땍땤된딎딀;-><init>(Lapp/tunnel/vpncommons/auth/AuthService;)V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-direct {p2, v1, p1, p3, v0}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lapp/tunnel/vpncommons/auth/AuthService;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lcom/android/volley/RequestQueue;

    .line 37
    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p0}, Lapp/tunnel/vpncommons/auth/AuthService;->onDestroy()V

    .line 46
    .line 47
    .line 48
    :goto_0
    const/4 p1, 0x1

    .line 49
    return p1
.end method
