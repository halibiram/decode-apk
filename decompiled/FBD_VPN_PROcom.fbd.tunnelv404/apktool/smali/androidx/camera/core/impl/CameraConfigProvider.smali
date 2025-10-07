.class public interface abstract Landroidx/camera/core/impl/CameraConfigProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Landroidx/camera/core/impl/CameraConfigProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, L돵딄땻뒝땨땀드뎰딠딀뒝뎸딌뒻땤들땳됫딹듐듽땰뒝뒹땱땤뒷땹뒈뎹뒤둬뒼땍드둑딸딐둑뒘듟딤도뒋땰둡딸땻땬둔둥땹뎰돤땅도땔땋뒉땣둥뎠딸뎰땤뒈딐듌땧뒐땐땜딝됐따뒨뒨됩땹듨딸딸돳듸됴뒉드땅뒹듰딤딁돶듐뒻뒨딄뒹돛뎻돝땪듻됴돛디드딤뒙땨뎽뒙딸뒹뒋땪땱딄땝땄됴땄딽도땫땲듸뒈뒾뎬;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/camera/core/impl/CameraConfigProvider;->EMPTY:Landroidx/camera/core/impl/CameraConfigProvider;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract getConfig(Landroidx/camera/core/CameraInfo;Landroid/content/Context;)Landroidx/camera/core/impl/CameraConfig;
    .param p1    # Landroidx/camera/core/CameraInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
