.class public final Lcom/google/android/gms/internal/ads/zzgno;
.super Lcom/google/android/gms/internal/ads/zzggc;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgox;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgox;Lcom/google/android/gms/internal/ads/zzghc;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/internal/ads/zzghc;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzggc;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzgno;->zzc(Lcom/google/android/gms/internal/ads/zzgox;Lcom/google/android/gms/internal/ads/zzghc;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgno;->zza:Lcom/google/android/gms/internal/ads/zzgox;

    .line 8
    .line 9
    return-void
.end method

.method private static zzc(Lcom/google/android/gms/internal/ads/zzgox;Lcom/google/android/gms/internal/ads/zzghc;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/ads/zzghc;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgnn;->zzb:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgox;->zzb()Lcom/google/android/gms/internal/ads/zzgus;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    aget p0, p1, p0

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzghc;)Lcom/google/android/gms/internal/ads/zzgox;
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/ads/zzghc;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgno;->zza:Lcom/google/android/gms/internal/ads/zzgox;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgno;->zzc(Lcom/google/android/gms/internal/ads/zzgox;Lcom/google/android/gms/internal/ads/zzghc;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgno;->zza:Lcom/google/android/gms/internal/ads/zzgox;

    .line 7
    .line 8
    return-object p1
.end method

.method public final zzb()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgno;->zza:Lcom/google/android/gms/internal/ads/zzgox;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgox;->zzf()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
