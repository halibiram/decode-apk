.class public Landroidx/camera/view/video/AudioConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUDIO_DISABLED:Landroidx/camera/view/video/AudioConfig;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private final mIsAudioEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/camera/view/video/AudioConfig;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/camera/view/video/AudioConfig;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/camera/view/video/AudioConfig;->AUDIO_DISABLED:Landroidx/camera/view/video/AudioConfig;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/camera/view/video/AudioConfig;->mIsAudioEnabled:Z

    .line 5
    .line 6
    return-void
.end method

.method public static create(Z)Landroidx/camera/view/video/AudioConfig;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.RECORD_AUDIO"
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/view/video/AudioConfig;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/camera/view/video/AudioConfig;-><init>(Z)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public getAudioEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/view/video/AudioConfig;->mIsAudioEnabled:Z

    .line 2
    .line 3
    return v0
.end method
