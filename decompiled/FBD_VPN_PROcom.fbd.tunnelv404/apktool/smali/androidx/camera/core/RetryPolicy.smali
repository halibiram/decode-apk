.class public interface abstract Landroidx/camera/core/RetryPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/camera/core/ExperimentalRetryPolicy;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/RetryPolicy$RetryConfig;,
        Landroidx/camera/core/RetryPolicy$ExecutionState;,
        Landroidx/camera/core/RetryPolicy$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Landroidx/camera/core/RetryPolicy;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final DEFAULT_RETRY_TIMEOUT_IN_MILLIS:J = 0x1770L
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final NEVER:Landroidx/camera/core/RetryPolicy;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final RETRY_UNAVAILABLE_CAMERA:Landroidx/camera/core/RetryPolicy;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, L땋뎠땀땸듸됩땬돴둠되땠땄될뒙땯따땮드돝뎹땃디둘땜둘딞도딟들딸돠돼딞땸딸딐딸딎듰딟듽땀됴딀듐뒝딞둑뒛땻뎡땃뒻딐땥딞땰딃돼뒀땮딹됐딃뒨딝드땦땧듸딨둥땯땡뒉딞딄땱뎠듔딠딃땱딄땝뎹뎻땳땍뒷뎬될돶땠딠땐땻땃땤딜딝뒛듼돼땥뒼땡돴땮돛돠딟두딨듼땡돠땻됴뒼땩땅딜땤땁땣땲된땣듬;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/camera/core/RetryPolicy;->NEVER:Landroidx/camera/core/RetryPolicy;

    .line 7
    .line 8
    new-instance v0, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy$Legacy;

    .line 9
    .line 10
    invoke-static {}, L땋도돛딅딄따땋돠땡딄두돼땦딅되딽땹땭도뎸돷됫돼땯돰돼뒐뎠뎰땄땬됩뒙땻땬돵돤땻딝땐땵듸듨땨땵돼둑땰딻뎹둔둥딠뎡둔뒋땔됨땁딤돰땋뎻듐땧듌둔돵뒐듸듸듻돶땲뒋딀딄땬땍딎땠돰됴듟땲뒨뒀둘땱딟뒤딐돠돠둬땨돵딝됴둣듸뒼듽둥듰듼뎽뒈딃딤땥듬땲딽딀된된듨듸돵두땲딽뒀돨듟딻두돰듸;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy$Legacy;-><init>(J)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Landroidx/camera/core/RetryPolicy;->DEFAULT:Landroidx/camera/core/RetryPolicy;

    .line 18
    .line 19
    new-instance v0, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;

    .line 20
    .line 21
    invoke-static {}, L땋도돛딅딄따땋돠땡딄두돼땦딅되딽땹땭도뎸돷됫돼땯돰돼뒐뎠뎰땄땬됩뒙땻땬돵돤땻딝땐땵듸듨땨땵돼둑땰딻뎹둔둥딠뎡둔뒋땔됨땁딤돰땋뎻듐땧듌둔돵뒐듸듸듻돶땲뒋딀딄땬땍딎땠돰됴듟땲뒨뒀둘땱딟뒤딐돠돠둬땨돵딝됴둣듸뒼듽둥듰듼뎽뒈딃딤땥듬땲딽딀된된듨듸돵두땲딽뒀돨듟딻두돰듸;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;-><init>(J)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Landroidx/camera/core/RetryPolicy;->RETRY_UNAVAILABLE_CAMERA:Landroidx/camera/core/RetryPolicy;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public abstract getTimeoutInMillis()J
.end method

.method public abstract onRetryDecisionRequested(Landroidx/camera/core/RetryPolicy$ExecutionState;)Landroidx/camera/core/RetryPolicy$RetryConfig;
    .param p1    # Landroidx/camera/core/RetryPolicy$ExecutionState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
