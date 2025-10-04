.class public final synthetic Lcom/google/android/gms/internal/ads/zzehy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeie;


# instance fields
.field public final synthetic zza:Ljava/lang/String;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:Ljava/lang/String;

.field public final synthetic zze:Lcom/google/android/gms/internal/ads/zzeih;

.field public final synthetic zzf:Landroid/webkit/WebView;

.field public final synthetic zzg:Ljava/lang/String;

.field public final synthetic zzh:Ljava/lang/String;

.field public final synthetic zzi:Lcom/google/android/gms/internal/ads/zzeii;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeih;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeii;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehy;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehy;->zzb:Ljava/lang/String;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p2, 0x3

    new-array p2, p2, [J

    fill-array-data p2, :array_0

    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehy;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzehy;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzehy;->zze:Lcom/google/android/gms/internal/ads/zzeih;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzehy;->zzf:Landroid/webkit/WebView;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzehy;->zzg:Ljava/lang/String;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p2, 0x1

    new-array p2, p2, [J

    const-wide p3, 0x576f71f7fdd6ae24L

    const/4 p5, 0x0

    aput-wide p3, p2, p5

    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehy;->zzh:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzehy;->zzi:Lcom/google/android/gms/internal/ads/zzeii;

    return-void

    nop

    :array_0
    .array-data 8
        -0x5f2db9a59ce7e739L    # -1.395710051635988E-150
        -0x11ffb25983a989caL    # -7.366529252551557E221
        0x624eaa23e39cb2b2L    # 3.531710399814467E165
    .end array-data
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehy;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehy;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehy;->zzc:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzehy;->zzd:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzehy;->zze:Lcom/google/android/gms/internal/ads/zzeih;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzehy;->zzf:Landroid/webkit/WebView;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzehy;->zzg:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzehy;->zzh:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzehy;->zzi:Lcom/google/android/gms/internal/ads/zzeii;

    invoke-static/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzeif;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeih;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeii;)Lcom/google/android/gms/internal/ads/zzfod;

    move-result-object v0

    return-object v0
.end method
