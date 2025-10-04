.class public final Lcom/google/android/gms/internal/ads/zzbil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbhm;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x1

    new-array v2, v2, [J

    const-wide v3, -0xd57dcc9f1782541L

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbhm;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbhm;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbil;->zza:Lcom/google/android/gms/internal/ads/zzbhm;

    return-void

    :array_0
    .array-data 8
        0xcc243ba41fe0f5cL
        -0xa80a07ea6a6e8f4L    # -9.421353276890409E257
        -0x4e7a1d85031d793fL    # -3.963614432808583E-70
        -0x61c12e2ad7a6177fL
    .end array-data
.end method
