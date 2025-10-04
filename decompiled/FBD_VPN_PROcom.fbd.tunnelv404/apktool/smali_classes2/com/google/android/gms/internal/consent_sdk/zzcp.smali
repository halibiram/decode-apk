.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzcp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/consent_sdk/zzcq;

.field public final synthetic zzb:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzcq;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzcp;->zza:Lcom/google/android/gms/internal/consent_sdk/zzcq;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p2, 0x4

    new-array p2, p2, [J

    fill-array-data p2, :array_0

    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzcp;->zzb:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        0xd9b82be80150338L
        -0x23db8e5e9df69f3bL    # -7.429697744039386E135
        -0x38bb0f7265f1fd84L    # -2.1744986864823134E35
        -0xff8a4695914f2e0L    # -4.532919583325832E231
    .end array-data
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzcp;->zza:Lcom/google/android/gms/internal/consent_sdk/zzcq;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzcp;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/consent_sdk/zzcq;->zza(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
