.class public final synthetic Lcom/google/android/gms/internal/ads/zzeib;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeie;


# instance fields
.field public final synthetic zza:Ljava/lang/String;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzeih;

.field public final synthetic zze:Ljava/lang/String;

.field public final synthetic zzf:Landroid/webkit/WebView;

.field public final synthetic zzg:Ljava/lang/String;

.field public final synthetic zzh:Ljava/lang/String;

.field public final synthetic zzi:Lcom/google/android/gms/internal/ads/zzeii;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeih;Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeii;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p3, 0x2

    new-array p3, p3, [J

    fill-array-data p3, :array_0

    invoke-direct {p1, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeib;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeib;->zzb:Ljava/lang/String;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p2, 0x3

    new-array p2, p2, [J

    fill-array-data p2, :array_1

    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeib;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeib;->zzd:Lcom/google/android/gms/internal/ads/zzeih;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeib;->zze:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeib;->zzf:Landroid/webkit/WebView;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzeib;->zzg:Ljava/lang/String;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p2, 0x1

    new-array p2, p2, [J

    const-wide p3, 0x7ed4f9b3ede13f50L    # 8.990129406577797E302

    const/4 p5, 0x0

    aput-wide p3, p2, p5

    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeib;->zzh:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzeib;->zzi:Lcom/google/android/gms/internal/ads/zzeii;

    return-void

    :array_0
    .array-data 8
        0x68869fc075e772c4L    # 3.303065456910042E195
        0x3fbab025f56fac5bL    # 0.10425030939193063
    .end array-data

    :array_1
    .array-data 8
        -0x5f65c7fbf7ca3755L
        -0x46f9f18952f36fc1L    # -5.309908830468436E-34
        -0x79f87a97ee19ef1cL
    .end array-data
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeib;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeib;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeib;->zzc:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeib;->zzd:Lcom/google/android/gms/internal/ads/zzeih;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeib;->zze:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzeib;->zzf:Landroid/webkit/WebView;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzeib;->zzg:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzeib;->zzh:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzeib;->zzi:Lcom/google/android/gms/internal/ads/zzeii;

    invoke-static/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzeif;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeih;Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeii;)Lcom/google/android/gms/internal/ads/zzfod;

    move-result-object v0

    return-object v0
.end method
