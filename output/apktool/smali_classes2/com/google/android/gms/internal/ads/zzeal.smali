.class public final synthetic Lcom/google/android/gms/internal/ads/zzeal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfkp;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzeal;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeal;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeal;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeal;->zza:Lcom/google/android/gms/internal/ads/zzeal;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Ljava/lang/Exception;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x1

    new-array v0, v0, [J

    const-wide v1, -0x438ad9668ab17f7eL    # -1.8345376508490237E-17

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
