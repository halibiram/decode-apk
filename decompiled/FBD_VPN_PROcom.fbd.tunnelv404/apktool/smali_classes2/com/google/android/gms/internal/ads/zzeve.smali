.class public final Lcom/google/android/gms/internal/ads/zzeve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzexp;


# instance fields
.field public final zza:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeve;->zza:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzj(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Landroid/os/Bundle;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    new-array v2, v1, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfhv;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/4 v3, 0x3

    .line 25
    new-array v3, v3, [J

    .line 26
    .line 27
    fill-array-data v3, :array_1

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeve;->zza:Landroid/os/Bundle;

    .line 38
    .line 39
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 40
    .line 41
    .line 42
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    new-array v1, v1, [J

    .line 45
    .line 46
    fill-array-data v1, :array_2

    .line 47
    .line 48
    .line 49
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    nop

    .line 61
    :array_0
    .array-data 8
        0x143445bbb6355bebL    # 2.408730007581206E-211
        -0xd06aa189f92fbb9L    # -6.919696039888263E245
    .end array-data

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :array_1
    .array-data 8
        -0x627125ca987ef4a5L
        -0x34eaae24dfa64857L    # -5.105065872213046E53
        -0x3162b56a36df4f3L    # -5.155397075097336E293
    .end array-data

    .line 74
    .line 75
    .line 76
    .line 77
    :array_2
    .array-data 8
        -0x133ee7c003e99f17L    # -7.366294216036534E215
        -0x53a3e9a820f46d2cL    # -5.259821869109677E-95
    .end array-data
.end method
