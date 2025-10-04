.class final Lcom/google/android/gms/internal/ads/zzefo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzflg;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzflg;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzflg;Lcom/google/android/gms/internal/ads/zzflg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefo;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzefo;->zzb:Lcom/google/android/gms/internal/ads/zzflg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzefo;->zzc:Lcom/google/android/gms/internal/ads/zzflg;

    return-void

    nop

    :array_0
    .array-data 8
        0x46ed7226009f35a3L    # 4.777869201717948E33
        0x7a9bad8407a0e941L    # 4.0192725039486406E282
    .end array-data
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzefo;)Lcom/google/android/gms/internal/ads/zzflg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzefo;->zzc:Lcom/google/android/gms/internal/ads/zzflg;

    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzefo;)Lcom/google/android/gms/internal/ads/zzflg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzefo;->zzb:Lcom/google/android/gms/internal/ads/zzflg;

    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzefo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzefo;->zza:Ljava/lang/String;

    return-object p0
.end method
