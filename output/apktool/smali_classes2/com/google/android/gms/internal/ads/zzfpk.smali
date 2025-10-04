.class final Lcom/google/android/gms/internal/ads/zzfpk;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final zza:Ljava/lang/String;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfpm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfpm;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpk;->zzb:Lcom/google/android/gms/internal/ads/zzfpm;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v0, 0x5

    .line 9
    new-array v0, v0, [J

    .line 10
    .line 11
    fill-array-data v0, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpk;->zza:Ljava/lang/String;

    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        -0x6462c74fbdca69bL
        0x72df955577d4fe96L    # 2.1565249148563023E245
        -0x6f8de34feb5b2943L    # -1.866599750912458E-229
        -0x340f9da737b923c6L    # -6.427817777011599E57
        -0x19a20cac136ba9b9L    # -1.2726278478705285E185
    .end array-data
.end method


# virtual methods
.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    new-array v2, v2, [J

    .line 13
    .line 14
    fill-array-data v2, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpk;->zzb:Lcom/google/android/gms/internal/ads/zzfpm;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpi;->zza()Landroid/webkit/WebView;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-ne v0, p1, :cond_0

    .line 34
    .line 35
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    const/16 v0, 0xe

    .line 38
    .line 39
    new-array v0, v0, [J

    .line 40
    .line 41
    fill-array-data v0, :array_1

    .line 42
    .line 43
    .line 44
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfpk;->zzb:Lcom/google/android/gms/internal/ads/zzfpm;

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzfpi;->zzj(Landroid/webkit/WebView;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    return p1

    .line 61
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    return p1

    .line 66
    nop

    .line 67
    :array_0
    .array-data 8
        0x31b3acc68a9a84c7L    # 2.850713937176381E-69
        -0x5e9929554332fb00L    # -8.930597725289806E-148
        -0x404f81aaef5d63fcL    # -0.06442767768986363
        -0x3ca009a050a2e3bbL    # -3.5986460409884948E16
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
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    :array_1
    .array-data 8
        -0x434af071ea4d7ff7L    # -2.9227678321065316E-16
        -0x119d13ccc1f3f9dfL    # -5.472035554472572E223
        0x2bb34c7916f97b4cL    # 3.529311471099E-98
        -0x425255af14753258L    # -1.3490215334301954E-11
        -0xaa058924cfa8850L
        0x5789ebf62de92d8aL    # 4.987148315071973E113
        0x1978903bdcbf1e70L    # 5.645356938384317E-186
        0x464bc35002def937L    # 4.399213384847473E30
        -0x74763dda5d96009eL
        -0x2ff682a103585f20L    # -3.6893864554865437E77
        0x191f611be9c1d1d2L
        -0x7a586c624063adadL
        -0x2090af6b818ed737L    # -5.12527301901644E151
        -0x6393d75b4524274L
    .end array-data
.end method
