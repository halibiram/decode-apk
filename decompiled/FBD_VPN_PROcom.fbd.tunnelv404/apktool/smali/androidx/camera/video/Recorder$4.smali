.class Landroidx/camera/video/Recorder$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/video/Recorder;->updateEncoderCallbacks(Landroidx/camera/video/Recorder$RecordingRecord;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/video/Recorder;

.field final synthetic val$audioErrorConsumer:Landroidx/core/util/Consumer;


# direct methods
.method public constructor <init>(Landroidx/camera/video/Recorder;Landroidx/core/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/camera/video/Recorder$4;->this$0:Landroidx/camera/video/Recorder;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/camera/video/Recorder$4;->val$audioErrorConsumer:Landroidx/core/util/Consumer;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAmplitudeValue(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder$4;->this$0:Landroidx/camera/video/Recorder;

    .line 2
    .line 3
    iput-wide p1, v0, Landroidx/camera/video/Recorder;->mAudioAmplitude:D

    .line 4
    .line 5
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "Recorder"

    .line 2
    .line 3
    const-string v1, "Error occurred after audio source started."

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    instance-of v0, p1, Landroidx/camera/video/internal/audio/AudioSourceAccessException;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/camera/video/Recorder$4;->val$audioErrorConsumer:Landroidx/core/util/Consumer;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onSilenceStateChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/video/Recorder$4;->this$0:Landroidx/camera/video/Recorder;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/camera/video/Recorder;->mIsAudioSourceSilenced:Z

    .line 4
    .line 5
    if-eq v1, p1, :cond_0

    .line 6
    .line 7
    iput-boolean p1, v0, Landroidx/camera/video/Recorder;->mIsAudioSourceSilenced:Z

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/camera/video/Recorder;->updateInProgressStatusEvent()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "Audio source silenced transitions to the same state "

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, "Recorder"

    .line 28
    .line 29
    invoke-static {v0, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public final synthetic onSuspendStateChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, L돝뒉딁든땁됫딤돨땪듻땡득둥돠땜돛땠땨들뒛딜돤됐됩땟디땔뒀드땍뒨딃돴땁딅땱뒘됴듼뒻돝될뒝딄딌뒵도돠드딤드딅땋뎡둔딄뒝뒼뒋듼뒻둡됨뒐돳뒈들돴듔듻됴뒷듔땣드든뎡뒈듬땠딄땵딜따될딝땋듔듨듰드뎻뒷뒤딁돛디돛듽뎸딠둣돸땋될둘뎬뒹뎽땰도둑돳딹뎰땁뎠돼땯됐땅뒨돤땯듸딠돰땨딠듻;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;Z)V

    return-void
.end method
