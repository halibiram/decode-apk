.class final Lcom/google/android/gms/internal/ads/zzbfr;
.super Lcom/google/android/gms/internal/ads/zzbfu;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Float;)V
    .locals 1

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzbfu;-><init>(ILjava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbft;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbfu;->zzn()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbfu;->zzm()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Float;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    float-to-double v1, v1

    .line 16
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    double-to-float p1, v0

    .line 21
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public final bridge synthetic zzb(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x5

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbfu;->zzn()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbfu;->zzn()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array v1, v1, [J

    .line 37
    .line 38
    fill-array-data v1, :array_1

    .line 39
    .line 40
    .line 41
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbfu;->zzm()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Ljava/lang/Float;

    .line 66
    .line 67
    :goto_0
    return-object p1

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        -0xad85fab39454302L    # -2.217184958503142E256
        0x520584cf59852d21L    # 1.3377242177414513E87
        -0x22ab2ce3865799f3L    # -3.9678546805483624E141
        0x5b3e83447c82bf0eL    # 3.384072615455158E131
        0x5457b9d4324e1d58L    # 2.027128089529021E98
    .end array-data

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
        0x2cfba402c7b2abb9L    # 5.300414836345955E-92
        -0x7ff28e1a272f7afbL
        -0x46939e495ecb94cbL    # -4.3728921872422653E-32
        0x3e4ac8d524500432L    # 1.2472505814613677E-8
        -0xa6fa2d2972f8b27L
    .end array-data
.end method

.method public final bridge synthetic zzc(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbfu;->zzn()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbfu;->zzm()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Float;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public final bridge synthetic zzd(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Ljava/lang/Float;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbfu;->zzn()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 12
    .line 13
    .line 14
    return-void
.end method
