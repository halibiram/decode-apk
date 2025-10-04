.class public final Lcom/google/android/gms/internal/ads/zzeuo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzexp;


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeuo;->zza:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzeuo;->zzb:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzj(Ljava/lang/Object;)V
    .locals 3

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
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeuo;->zza:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzeuo;->zzb:Z

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    new-array v2, v1, [J

    .line 30
    .line 31
    fill-array-data v2, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    new-array v1, v1, [J

    .line 44
    .line 45
    fill-array-data v1, :array_2

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void

    .line 59
    :array_0
    .array-data 8
        0x2246886c6c0abb3fL
        -0x705eb87b4b530798L
    .end array-data

    .line 60
    .line 61
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
    :array_1
    .array-data 8
        -0x793f195635d878f4L
        0x42c877812981a0a2L    # 5.3803094311745266E13
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_2
    .array-data 8
        -0x50aaf916b36f17adL    # -1.1083538416858863E-80
        0x6442b8c54f4a70efL    # 9.260921184160715E174
    .end array-data
.end method
