.class abstract Lcom/google/android/gms/internal/ads/zzfwn;
.super Lcom/google/android/gms/internal/ads/zzfwl;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfwl;-><init>()V

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zza:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        -0x172b6e5375a7ca72L    # -9.609729949099475E196
        0x5260d7d2e04f1bfcL    # 6.701156671282056E88
        0x23ece7510aa87b04L    # 1.242692299760125E-135
        0xacec785f11d516L
    .end array-data
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zza:Ljava/lang/String;

    return-object v0
.end method
