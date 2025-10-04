.class abstract Lcom/google/android/gms/common/internal/zza;
.super Lcom/google/android/gms/common/internal/zzc;
.source "SourceFile"


# instance fields
.field public final zza:I

.field public final zzb:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final synthetic zzc:Lcom/google/android/gms/common/internal/BaseGmsClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/Bundle;)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zza;->zzc:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 2
    .line 3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/zzc;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iput p2, p0, Lcom/google/android/gms/common/internal/zza;->zza:I

    .line 9
    .line 10
    iput-object p3, p0, Lcom/google/android/gms/common/internal/zza;->zzb:Landroid/os/Bundle;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/google/android/gms/common/internal/zza;->zza:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zza;->zzd()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zza;->zzc:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 14
    .line 15
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzi(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IInterface;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 19
    .line 20
    const/16 v0, 0x8

    .line 21
    .line 22
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zza;->zzb(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void

    .line 29
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zza;->zzc:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 30
    .line 31
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzi(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IInterface;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zza;->zzb:Landroid/os/Bundle;

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    const/4 v1, 0x3

    .line 41
    new-array v1, v1, [J

    .line 42
    .line 43
    fill-array-data v1, :array_0

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    move-object v1, p1

    .line 58
    check-cast v1, Landroid/app/PendingIntent;

    .line 59
    .line 60
    :cond_2
    iget p1, p0, Lcom/google/android/gms/common/internal/zza;->zza:I

    .line 61
    .line 62
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    .line 63
    .line 64
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zza;->zzb(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :array_0
    .array-data 8
        0x20491ea6a2fc18e2L
        0x4b2fabaad00d47c7L    # 1.5167192245740231E54
        -0x2b426c472439b362L    # -1.6173100252659763E100
    .end array-data
.end method

.method public abstract zzb(Lcom/google/android/gms/common/ConnectionResult;)V
.end method

.method public final zzc()V
    .locals 0

    return-void
.end method

.method public abstract zzd()Z
.end method
