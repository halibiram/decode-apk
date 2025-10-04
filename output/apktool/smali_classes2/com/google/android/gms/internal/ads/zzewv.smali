.class public final synthetic Lcom/google/android/gms/internal/ads/zzewv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfws;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzewv;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzewv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzewv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzewv;->zza:Lcom/google/android/gms/internal/ads/zzewv;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    const-wide v2, -0x55dc4c24ad7162a7L

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    aput-wide v2, v1, v4

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast p1, Ljava/lang/Exception;

    .line 22
    .line 23
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Lcom/google/android/gms/internal/ads/zzewy;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzewy;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object p1
.end method
