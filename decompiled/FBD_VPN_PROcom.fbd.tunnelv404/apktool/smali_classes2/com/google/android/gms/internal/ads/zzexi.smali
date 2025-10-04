.class public final synthetic Lcom/google/android/gms/internal/ads/zzexi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzexp;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzexi;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzexi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzexi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzexi;->zza:Lcom/google/android/gms/internal/ads/zzexi;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzj(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/os/Bundle;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :array_0
    .array-data 8
        0x54e1fcea22a3b6a3L    # 7.868830294416477E100
        0x2271a0364bb22b6dL    # 9.033823552332911E-143
        -0x666c4fb43a89c2f8L    # -1.8100007493030227E-185
    .end array-data
.end method
