.class public final synthetic L돵뒋딌됴땠딟된뎸땯딄딄뒬땐땁뎽뒤됴땀딜뒐땱득땝뒼딨뒤땨땁땮땲됨딝땄딟뒋둥둬뎠돛뒵디둑딐뒬딄뒷땭땬땣됨됩됐되딤둬뒐듸땐딄딹땋딨뎸돼듬땋땔돤땲듸뎽땭땟되딄뎻도뒐돼땍뒹땦딹디듽땃뎹득뎰뒈땜뎸땱딽땐뒈땵듬둡땮둥딤되땭땦도돛듰땱돶딝돷뎽돝뒼됐돛두땫딀딠딄듰땜딜뒋도땐뒛땲;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/CameraFactory$Provider;


# virtual methods
.method public final newInstance(Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/core/CameraSelector;J)Landroidx/camera/core/impl/CameraFactory;
    .locals 7

    .line 1
    new-instance v6, Landroidx/camera/camera2/internal/Camera2CameraFactory;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/internal/Camera2CameraFactory;-><init>(Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/core/CameraSelector;J)V

    return-object v6
.end method
