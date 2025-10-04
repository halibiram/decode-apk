.class final Lcom/google/android/gms/common/api/internal/zaj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field public final zaa:I

.field public final zab:Lcom/google/android/gms/common/api/GoogleApiClient;

.field public final zac:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final synthetic zad:Lcom/google/android/gms/common/api/internal/zak;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zak;ILcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 0
    .param p3    # Lcom/google/android/gms/common/api/GoogleApiClient;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaj;->zad:Lcom/google/android/gms/common/api/internal/zak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/common/api/internal/zaj;->zaa:I

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zaj;->zab:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/zaj;->zac:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v2, 0x5

    .line 22
    new-array v2, v2, [J

    .line 23
    .line 24
    fill-array-data v2, :array_1

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaj;->zad:Lcom/google/android/gms/common/api/internal/zak;

    .line 38
    .line 39
    iget v1, p0, Lcom/google/android/gms/common/api/internal/zaj;->zaa:I

    .line 40
    .line 41
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/zap;->zah(Lcom/google/android/gms/common/ConnectionResult;I)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :array_0
    .array-data 8
        0xee59b07747c74eL
        -0x40677d571db76978L    # -0.023935927211047786
        0x5c8b0264e6795516L    # 6.2820617715863755E137
    .end array-data

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    :array_1
    .array-data 8
        0x61b4f9f7ef87b685L    # 4.718559639651865E162
        0x51447d2ee5c1e439L    # 3.109635688381061E83
        -0x13eb7a820627c459L    # -4.317825370300741E212
        -0x6ffd7604458fe42bL    # -1.4926554971049994E-231
        0x68fa129fb6876657L    # 4.8724120148057457E197
    .end array-data
.end method
