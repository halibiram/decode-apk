.class public final synthetic Lcom/google/android/gms/ads/internal/client/zzj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcee;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/ads/internal/client/zzj;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzj;->zza:Lcom/google/android/gms/ads/internal/client/zzj;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/16 v1, 0x9

    .line 8
    .line 9
    new-array v1, v1, [J

    .line 10
    .line 11
    fill-array-data v1, :array_0

    .line 12
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
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v1, v0, Lcom/google/android/gms/ads/internal/client/zzbv;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    move-object p1, v0

    .line 30
    check-cast p1, Lcom/google/android/gms/ads/internal/client/zzbv;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzbv;

    .line 34
    .line 35
    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzbv;-><init>(Landroid/os/IBinder;)V

    .line 36
    .line 37
    .line 38
    move-object p1, v0

    .line 39
    :goto_0
    return-object p1

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        -0x508af8b687279c19L    # -4.433724776668355E-80
        0x3f8fd4ea906887d3L    # 0.015542824298851265
        -0x2923bc8001148e15L    # -2.6551374717104346E110
        0x5ee53fff50c2739cL    # 1.3585843013038945E149
        -0x430f2902d8ffdfdaL    # -3.739186804239835E-15
        -0x26133e314faabb05L    # -1.5208020963739014E125
        -0x4fa7f658280e732L
        0x59e5cf15f7217254L    # 1.1533538105590364E125
        0x5ba4d9490555448bL    # 2.95970580544897E133
    .end array-data
.end method
