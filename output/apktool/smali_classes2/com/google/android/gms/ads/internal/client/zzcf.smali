.class public final Lcom/google/android/gms/ads/internal/client/zzcf;
.super Lcom/google/android/gms/internal/ads/zzayg;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    new-array v1, v1, [J

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzayg;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :array_0
    .array-data 8
        -0x15b8c8387de9c2c5L    # -9.099337923652307E203
        -0x7fff2fbd2237ab80L    # -1.131339219652063E-309
        -0x1f82ab652277fe0aL    # -6.292120805929223E156
        -0x5e9b510a71261795L    # -8.087881718444717E-148
        0x36dbc7fec81a5ffdL    # 1.9464898455586566E-44
        -0x5b8d8eb984e4c4deL
        0x4af6d6f3f8ff8682L    # 1.367253025510077E53
        -0x6b31bdecc9db852bL
        0x7590da22ac5cd605L    # 2.0242777772906703E258
        -0x30a97f4b413adeaaL    # -1.5903572735337528E74
    .end array-data
.end method
