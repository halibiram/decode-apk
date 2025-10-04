.class public Lcom/google/android/play/core/review/testing/FakeReviewManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/review/ReviewManager;


# instance fields
.field private final zza:Landroid/content/Context;

.field private zzb:Lcom/google/android/play/core/review/ReviewInfo;

.field private zzc:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/core/review/testing/FakeReviewManager;->zzc:I

    iput-object p1, p0, Lcom/google/android/play/core/review/testing/FakeReviewManager;->zza:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public launchReviewFlow(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/play/core/review/ReviewInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/play/core/review/ReviewInfo;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/review/testing/FakeReviewManager;->zzb:Lcom/google/android/play/core/review/ReviewInfo;

    .line 2
    .line 3
    if-eq p2, p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/google/android/play/core/review/ReviewException;

    .line 6
    .line 7
    const/4 p2, -0x2

    .line 8
    invoke-direct {p1, p2}, Lcom/google/android/play/core/review/ReviewException;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    iget p1, p0, Lcom/google/android/play/core/review/testing/FakeReviewManager;->zzc:I

    .line 17
    .line 18
    add-int/lit8 p1, p1, 0x1

    .line 19
    .line 20
    iput p1, p0, Lcom/google/android/play/core/review/testing/FakeReviewManager;->zzc:I

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public requestReviewFlow()Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/play/core/review/ReviewInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v2, 0x17

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-lt v1, v2, :cond_0

    .line 12
    .line 13
    const/high16 v1, 0x4000000

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    iget-object v2, p0, Lcom/google/android/play/core/review/testing/FakeReviewManager;->zza:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v2, v3, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0, v3}, Lcom/google/android/play/core/review/ReviewInfo;->zzc(Landroid/app/PendingIntent;Z)Lcom/google/android/play/core/review/ReviewInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/google/android/play/core/review/testing/FakeReviewManager;->zzb:Lcom/google/android/play/core/review/ReviewInfo;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method
