.class public final synthetic Lcom/google/android/gms/internal/ads/zzedd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfws;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbze;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedd;->zza:Lcom/google/android/gms/internal/ads/zzbze;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzedd;->zza:Lcom/google/android/gms/internal/ads/zzbze;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbze;->zza:Landroid/os/Bundle;

    .line 4
    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v12, Lcom/google/android/gms/internal/ads/zzbyi;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfxt;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    iget-object v8, p1, Lcom/google/android/gms/internal/ads/zzbze;->zzh:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v9, p1, Lcom/google/android/gms/internal/ads/zzbze;->zze:Ljava/util/List;

    .line 33
    .line 34
    iget-boolean v10, p1, Lcom/google/android/gms/internal/ads/zzbze;->zzk:Z

    .line 35
    .line 36
    iget-boolean v11, p1, Lcom/google/android/gms/internal/ads/zzbze;->zzl:Z

    .line 37
    .line 38
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzbze;->zzc:Landroid/content/pm/ApplicationInfo;

    .line 39
    .line 40
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzbze;->zzd:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzbze;->zzf:Landroid/content/pm/PackageInfo;

    .line 43
    .line 44
    const/4 v7, -0x1

    .line 45
    move-object v2, v12

    .line 46
    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/zzbyi;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ZZ)V

    .line 47
    .line 48
    .line 49
    return-object v12

    .line 50
    nop

    .line 51
    :array_0
    .array-data 8
        -0x69241569908e87cL
        0xc0b900914fbc91aL
    .end array-data
.end method
