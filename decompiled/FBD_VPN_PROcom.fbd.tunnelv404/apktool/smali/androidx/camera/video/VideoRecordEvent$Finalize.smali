.class public final Landroidx/camera/video/VideoRecordEvent$Finalize;
.super Landroidx/camera/video/VideoRecordEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/VideoRecordEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Finalize"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/VideoRecordEvent$Finalize$VideoRecordError;
    }
.end annotation


# static fields
.field public static final ERROR_DURATION_LIMIT_REACHED:I = 0x9

.field public static final ERROR_ENCODING_FAILED:I = 0x6

.field public static final ERROR_FILE_SIZE_LIMIT_REACHED:I = 0x2

.field public static final ERROR_INSUFFICIENT_STORAGE:I = 0x3

.field public static final ERROR_INVALID_OUTPUT_OPTIONS:I = 0x5

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NO_VALID_DATA:I = 0x8

.field public static final ERROR_RECORDER_ERROR:I = 0x7

.field public static final ERROR_RECORDING_GARBAGE_COLLECTED:I = 0xa

.field public static final ERROR_SOURCE_INACTIVE:I = 0x4

.field public static final ERROR_UNKNOWN:I = 0x1


# instance fields
.field private final mCause:Ljava/lang/Throwable;

.field private final mError:I

.field private final mOutputResults:Landroidx/camera/video/OutputResults;


# direct methods
.method public constructor <init>(Landroidx/camera/video/OutputOptions;Landroidx/camera/video/RecordingStats;Landroidx/camera/video/OutputResults;ILjava/lang/Throwable;)V
    .locals 0
    .param p1    # Landroidx/camera/video/OutputOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/video/RecordingStats;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/video/OutputResults;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/video/VideoRecordEvent;-><init>(Landroidx/camera/video/OutputOptions;Landroidx/camera/video/RecordingStats;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Landroidx/camera/video/VideoRecordEvent$Finalize;->mOutputResults:Landroidx/camera/video/OutputResults;

    .line 5
    .line 6
    iput p4, p0, Landroidx/camera/video/VideoRecordEvent$Finalize;->mError:I

    .line 7
    .line 8
    iput-object p5, p0, Landroidx/camera/video/VideoRecordEvent$Finalize;->mCause:Ljava/lang/Throwable;

    .line 9
    .line 10
    return-void
.end method

.method public static errorToString(I)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string v0, "Unknown("

    .line 5
    .line 6
    const-string v1, ")"

    .line 7
    .line 8
    invoke-static {p0, v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :pswitch_0
    const-string p0, "ERROR_RECORDING_GARBAGE_COLLECTED"

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_1
    const-string p0, "ERROR_DURATION_LIMIT_REACHED"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_2
    const-string p0, "ERROR_NO_VALID_DATA"

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_3
    const-string p0, "ERROR_RECORDER_ERROR"

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_4
    const-string p0, "ERROR_ENCODING_FAILED"

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_5
    const-string p0, "ERROR_INVALID_OUTPUT_OPTIONS"

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_6
    const-string p0, "ERROR_SOURCE_INACTIVE"

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_7
    const-string p0, "ERROR_INSUFFICIENT_STORAGE"

    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_8
    const-string p0, "ERROR_FILE_SIZE_LIMIT_REACHED"

    .line 38
    .line 39
    return-object p0

    .line 40
    :pswitch_9
    const-string p0, "ERROR_UNKNOWN"

    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_a
    const-string p0, "ERROR_NONE"

    .line 44
    .line 45
    return-object p0

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/VideoRecordEvent$Finalize;->mCause:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getError()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/video/VideoRecordEvent$Finalize;->mError:I

    .line 2
    .line 3
    return v0
.end method

.method public getOutputResults()Landroidx/camera/video/OutputResults;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/VideoRecordEvent$Finalize;->mOutputResults:Landroidx/camera/video/OutputResults;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/video/VideoRecordEvent$Finalize;->mError:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method
