.class final Lcom/google/android/gms/internal/ads/zzcrp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcqw;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcbx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcbx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrp;->zza:Lcom/google/android/gms/internal/ads/zzcbx;

    return-void
.end method


# virtual methods
.method public final zza(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    new-array v1, v1, [J

    .line 19
    .line 20
    fill-array-data v1, :array_1

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    const/4 p1, -0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    const/4 v3, 0x2

    .line 45
    new-array v3, v3, [J

    .line 46
    .line 47
    fill-array-data v3, :array_2

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrp;->zza:Lcom/google/android/gms/internal/ads/zzcbx;

    .line 62
    .line 63
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzcbx;->zzb(IJ)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :array_0
    .array-data 8
        0x1f2aa22d6c299183L
        -0x652ee1b77493608bL    # -1.65014871340899E-179
        -0x1320b0f5db9226c1L    # -2.6982526495288636E216
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_1
    .array-data 8
        -0x7d2aeee27e43a3fbL    # -5.153995021676506E-295
        -0x2383af3b27dd4c1aL    # -3.2929287229268052E137
        -0x159c68d74ecbe0a3L    # -3.071084812451904E204
    .end array-data

    :array_2
    .array-data 8
        -0x40dbdc3c5cc4a7ceL    # -1.5365374712556081E-4
        0x62684b788157bed4L
    .end array-data
.end method
