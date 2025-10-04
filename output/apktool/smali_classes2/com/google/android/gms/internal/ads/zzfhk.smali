.class public final Lcom/google/android/gms/internal/ads/zzfhk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zza:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfhk;->zzb()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    new-array v1, v1, [J

    .line 14
    .line 15
    fill-array-data v1, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    return-object v0

    .line 28
    nop

    .line 29
    :array_0
    .array-data 8
        -0x7d44e265ddffe17cL
        -0x77b581dfb04820edL
        0xdc954862406329bL
    .end array-data
.end method

.method public final zzb()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zza:Lorg/json/JSONObject;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v3, v2, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v3, -0x1

    .line 19
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    if-eq v0, v1, :cond_0

    .line 27
    .line 28
    return v2

    .line 29
    :cond_0
    return v1

    .line 30
    :cond_1
    const/4 v0, 0x2

    .line 31
    return v0

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        -0x3816d19b297cf8ddL    # -2.6777272629163045E38
        0x66842c97a1e4db73L    # 6.857777988511506E185
        0x6bbe56f3c75be646L    # 9.974420027407376E210
    .end array-data
.end method
