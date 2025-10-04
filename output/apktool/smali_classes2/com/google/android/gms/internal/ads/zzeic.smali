.class public final synthetic Lcom/google/android/gms/internal/ads/zzeic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeie;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzeic;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeic;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeic;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeic;->zza:Lcom/google/android/gms/internal/ads/zzeic;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 8
        -0x6547020f30577827L    # -6.022861059782743E-180
        0x421bdde0d379a6eaL    # 2.9921653982413002E10
        0x478cfc10f2211fe6L    # 4.815898299043622E36
        0x216c016b189f52cbL
    .end array-data
.end method
