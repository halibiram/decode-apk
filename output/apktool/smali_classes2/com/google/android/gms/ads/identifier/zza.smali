.class final Lcom/google/android/gms/ads/identifier/zza;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic zza:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/ads/identifier/zza;->zza:Ljava/util/Map;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/identifier/zza;->zza:Ljava/util/Map;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    new-array v2, v2, [J

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Ljava/lang/String;

    .line 46
    .line 47
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/zzc;->zza(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :array_0
    .array-data 8
        0x264ec04f8d971a6dL    # 3.634243843325768E-124
        0x22547a42b1da5d88L
        0x7d367b87b3f130f4L    # 1.4358898694078754E295
        0x5422f55ad6ce0d03L    # 2.0247466834591767E97
        -0x1c98358cfe0eee8cL    # -7.182852066768611E170
        -0x2b9b4a752dc7cf47L    # -3.538757987350948E98
        -0x13e8cad36283fbc7L    # -4.8830287683091295E212
        0x3f82d28b401b3ee9L    # 0.009190643209336229
        -0x57f3a01922a73eedL    # -9.001640780467422E-116
        -0x4d8c67a593d84f34L    # -1.162918011937117E-65
    .end array-data
.end method
