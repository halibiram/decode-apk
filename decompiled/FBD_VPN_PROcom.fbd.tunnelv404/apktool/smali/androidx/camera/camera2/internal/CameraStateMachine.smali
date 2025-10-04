.class Landroidx/camera/camera2/internal/CameraStateMachine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraStateMachine"


# instance fields
.field private final mCameraStateRegistry:Landroidx/camera/core/impl/CameraStateRegistry;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mCameraStates:Landroidx/lifecycle/MutableLiveData;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroidx/camera/core/CameraState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CameraStateRegistry;)V
    .locals 1
    .param p1    # Landroidx/camera/core/impl/CameraStateRegistry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/camera2/internal/CameraStateMachine;->mCameraStateRegistry:Landroidx/camera/core/impl/CameraStateRegistry;

    .line 5
    .line 6
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/camera/camera2/internal/CameraStateMachine;->mCameraStates:Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    sget-object v0, Landroidx/camera/core/CameraState$Type;->CLOSED:Landroidx/camera/core/CameraState$Type;

    .line 14
    .line 15
    invoke-static {v0}, Landroidx/camera/core/CameraState;->create(Landroidx/camera/core/CameraState$Type;)Landroidx/camera/core/CameraState;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private onCameraPendingOpen()Landroidx/camera/core/CameraState;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/CameraStateMachine;->mCameraStateRegistry:Landroidx/camera/core/impl/CameraStateRegistry;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/core/impl/CameraStateRegistry;->isCameraClosing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroidx/camera/core/CameraState$Type;->OPENING:Landroidx/camera/core/CameraState$Type;

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/camera/core/CameraState;->create(Landroidx/camera/core/CameraState$Type;)Landroidx/camera/core/CameraState;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Landroidx/camera/core/CameraState$Type;->PENDING_OPEN:Landroidx/camera/core/CameraState$Type;

    .line 17
    .line 18
    invoke-static {v0}, Landroidx/camera/core/CameraState;->create(Landroidx/camera/core/CameraState$Type;)Landroidx/camera/core/CameraState;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getStateLiveData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/camera/core/CameraState;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/CameraStateMachine;->mCameraStates:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public updateState(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;)V
    .locals 3
    .param p1    # Landroidx/camera/core/impl/CameraInternal$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/CameraState$StateError;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Landroidx/camera/camera2/internal/CameraStateMachine$1;->$SwitchMap$androidx$camera$core$impl$CameraInternal$State:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "Unknown internal camera state: "

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p2

    .line 32
    :pswitch_0
    sget-object v0, Landroidx/camera/core/CameraState$Type;->CLOSED:Landroidx/camera/core/CameraState$Type;

    .line 33
    .line 34
    invoke-static {v0, p2}, Landroidx/camera/core/CameraState;->create(Landroidx/camera/core/CameraState$Type;Landroidx/camera/core/CameraState$StateError;)Landroidx/camera/core/CameraState;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    :pswitch_1
    sget-object v0, Landroidx/camera/core/CameraState$Type;->CLOSING:Landroidx/camera/core/CameraState$Type;

    .line 40
    .line 41
    invoke-static {v0, p2}, Landroidx/camera/core/CameraState;->create(Landroidx/camera/core/CameraState$Type;Landroidx/camera/core/CameraState$StateError;)Landroidx/camera/core/CameraState;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :pswitch_2
    sget-object v0, Landroidx/camera/core/CameraState$Type;->OPEN:Landroidx/camera/core/CameraState$Type;

    .line 47
    .line 48
    invoke-static {v0, p2}, Landroidx/camera/core/CameraState;->create(Landroidx/camera/core/CameraState$Type;Landroidx/camera/core/CameraState$StateError;)Landroidx/camera/core/CameraState;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    goto :goto_0

    .line 53
    :pswitch_3
    sget-object v0, Landroidx/camera/core/CameraState$Type;->OPENING:Landroidx/camera/core/CameraState$Type;

    .line 54
    .line 55
    invoke-static {v0, p2}, Landroidx/camera/core/CameraState;->create(Landroidx/camera/core/CameraState$Type;Landroidx/camera/core/CameraState$StateError;)Landroidx/camera/core/CameraState;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    goto :goto_0

    .line 60
    :pswitch_4
    invoke-direct {p0}, Landroidx/camera/camera2/internal/CameraStateMachine;->onCameraPendingOpen()Landroidx/camera/core/CameraState;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v2, "New public camera state "

    .line 67
    .line 68
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v2, " from "

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p1, " and "

    .line 83
    .line 84
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const-string p2, "CameraStateMachine"

    .line 95
    .line 96
    invoke-static {p2, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Landroidx/camera/camera2/internal/CameraStateMachine;->mCameraStates:Landroidx/lifecycle/MutableLiveData;

    .line 100
    .line 101
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Landroidx/camera/core/CameraState;

    .line 106
    .line 107
    invoke-static {p1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-nez p1, :cond_0

    .line 112
    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v1, "Publishing new public camera state "

    .line 116
    .line 117
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {p2, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Landroidx/camera/camera2/internal/CameraStateMachine;->mCameraStates:Landroidx/lifecycle/MutableLiveData;

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    :cond_0
    return-void

    .line 136
    nop

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
