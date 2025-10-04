.class public final synthetic Lcom/google/android/gms/internal/ads/zzcjv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdt;


# instance fields
.field public final synthetic zza:Landroid/content/Context;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzavi;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcei;

.field public final synthetic zzd:Lcom/google/android/gms/ads/internal/zza;

.field public final synthetic zze:Lcom/google/android/gms/internal/ads/zzehs;

.field public final synthetic zzf:Lcom/google/android/gms/internal/ads/zzfhl;

.field public final synthetic zzg:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavi;Lcom/google/android/gms/internal/ads/zzcei;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzehs;Lcom/google/android/gms/internal/ads/zzfhl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjv;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjv;->zzb:Lcom/google/android/gms/internal/ads/zzavi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcjv;->zzc:Lcom/google/android/gms/internal/ads/zzcei;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcjv;->zzd:Lcom/google/android/gms/ads/internal/zza;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcjv;->zze:Lcom/google/android/gms/internal/ads/zzehs;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcjv;->zzf:Lcom/google/android/gms/internal/ads/zzfhl;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcjv;->zzg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzz()Lcom/google/android/gms/internal/ads/zzcjx;

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcjv;->zza:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcla;->zza()Lcom/google/android/gms/internal/ads/zzcla;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzcjv;->zzb:Lcom/google/android/gms/internal/ads/zzavi;

    .line 13
    .line 14
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzcjv;->zze:Lcom/google/android/gms/internal/ads/zzehs;

    .line 15
    .line 16
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzcjv;->zzd:Lcom/google/android/gms/ads/internal/zza;

    .line 17
    .line 18
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    new-array v4, v4, [J

    .line 22
    .line 23
    const-wide v7, 0x3aa34ecf92ea28ecL    # 3.119352184016831E-26

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    aput-wide v7, v4, v5

    .line 30
    .line 31
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzcjv;->zzc:Lcom/google/android/gms/internal/ads/zzcei;

    .line 39
    .line 40
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzcjv;->zzf:Lcom/google/android/gms/internal/ads/zzfhl;

    .line 41
    .line 42
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbp;->zza()Lcom/google/android/gms/internal/ads/zzbbp;

    .line 43
    .line 44
    .line 45
    move-result-object v12

    .line 46
    const/4 v13, 0x0

    .line 47
    const/16 v16, 0x0

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v9, 0x0

    .line 52
    const/4 v10, 0x0

    .line 53
    move-object/from16 v17, v14

    .line 54
    .line 55
    move-object/from16 v14, v16

    .line 56
    .line 57
    move-object/from16 v16, v17

    .line 58
    .line 59
    invoke-static/range {v1 .. v16}, Lcom/google/android/gms/internal/ads/zzcjx;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcla;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzavi;Lcom/google/android/gms/internal/ads/zzbhj;Lcom/google/android/gms/internal/ads/zzcei;Lcom/google/android/gms/internal/ads/zzbgu;Lcom/google/android/gms/ads/internal/zzl;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbbp;Lcom/google/android/gms/internal/ads/zzfgm;Lcom/google/android/gms/internal/ads/zzfgp;Lcom/google/android/gms/internal/ads/zzehs;Lcom/google/android/gms/internal/ads/zzfhl;)Lcom/google/android/gms/internal/ads/zzcjk;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcet;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzcet;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcjk;->zzN()Lcom/google/android/gms/internal/ads/zzcky;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    new-instance v4, Lcom/google/android/gms/internal/ads/zzcju;

    .line 72
    .line 73
    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzcju;-><init>(Lcom/google/android/gms/internal/ads/zzcet;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzcky;->zzB(Lcom/google/android/gms/internal/ads/zzckw;)V

    .line 77
    .line 78
    .line 79
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzcjv;->zzg:Ljava/lang/String;

    .line 80
    .line 81
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzcjk;->loadUrl(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-object v2
.end method
