.class final Lcom/google/android/gms/internal/ads/zzfpq;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v1, 0x6

    .line 8
    new-array v2, v1, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-ne p1, v0, :cond_1

    .line 21
    .line 22
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    new-array v0, v1, [J

    .line 25
    .line 26
    fill-array-data v0, :array_1

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 v0, -0x1

    .line 37
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    const/4 p2, 0x1

    .line 42
    if-nez p1, :cond_0

    .line 43
    .line 44
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfpr;->zzc(I)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    if-ne p1, p2, :cond_1

    .line 49
    .line 50
    const/4 p1, 0x2

    .line 51
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfpr;->zzc(I)V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void

    .line 55
    :array_0
    .array-data 8
        -0x74303fce65159915L    # -8.661392527434758E-252
        -0x76f4eb546a7cb784L
        -0x2cfb8b17a5565880L    # -8.334194729674226E91
        -0x331d25226d09df44L    # -2.423898076425424E62
        0x4e1c4e78a96bbfebL    # 1.9078562570399255E68
        -0x78315c4d109dccb8L
    .end array-data

    :array_1
    .array-data 8
        0x7dd6804d861ee202L    # 1.471570506084761E298
        -0x424d31ca17bda8a1L    # -1.7103511763292942E-11
        -0x511073b8820e1d03L    # -1.2991597696209751E-82
        -0x15b7711cde6b7fd3L    # -9.624602166444752E203
        0x279bdd35576ffed6L    # 6.906001260734711E-118
        -0x27c7139d1be42072L    # -9.820313291355033E116
    .end array-data
.end method
