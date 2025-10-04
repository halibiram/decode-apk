.class public final Lcom/google/android/gms/internal/ads/zzeoa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhhd;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhhu;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhhu;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhhu;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhhu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhhu;Lcom/google/android/gms/internal/ads/zzhhu;Lcom/google/android/gms/internal/ads/zzhhu;Lcom/google/android/gms/internal/ads/zzhhu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeoa;->zza:Lcom/google/android/gms/internal/ads/zzhhu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeoa;->zzb:Lcom/google/android/gms/internal/ads/zzhhu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeoa;->zzc:Lcom/google/android/gms/internal/ads/zzhhu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeoa;->zzd:Lcom/google/android/gms/internal/ads/zzhhu;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzenz;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoa;->zza:Lcom/google/android/gms/internal/ads/zzhhu;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhhu;->zzb()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzflm;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeoa;->zzb:Lcom/google/android/gms/internal/ads/zzhhu;

    .line 10
    .line 11
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhhu;->zzb()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/google/android/gms/internal/ads/zzgey;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeoa;->zzc:Lcom/google/android/gms/internal/ads/zzhhu;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhhu;->zzb()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/google/android/gms/internal/ads/zzeip;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeoa;->zzd:Lcom/google/android/gms/internal/ads/zzhhu;

    .line 26
    .line 27
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzhhu;->zzb()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/google/android/gms/internal/ads/zzeit;

    .line 32
    .line 33
    new-instance v4, Lcom/google/android/gms/internal/ads/zzenz;

    .line 34
    .line 35
    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzenz;-><init>(Lcom/google/android/gms/internal/ads/zzflm;Lcom/google/android/gms/internal/ads/zzgey;Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzeit;)V

    .line 36
    .line 37
    .line 38
    return-object v4
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeoa;->zza()Lcom/google/android/gms/internal/ads/zzenz;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
