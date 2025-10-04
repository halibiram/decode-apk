.class public final synthetic Lcom/google/android/gms/internal/ads/zzcsk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfws;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzcsk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcsk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcsk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcsk;->zza:Lcom/google/android/gms/internal/ads/zzcsk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Throwable;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :array_0
    .array-data 8
        -0x55d702664d2e0b01L
        -0x8022cd324e642eL
        0x28897e0cfd8430acL
        0x3e78f328be4356faL    # 9.294539854721638E-8
    .end array-data
.end method
