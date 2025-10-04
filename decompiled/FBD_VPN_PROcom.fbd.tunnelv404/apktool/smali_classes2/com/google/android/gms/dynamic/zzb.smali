.class public final Lcom/google/android/gms/dynamic/zzb;
.super Lcom/google/android/gms/internal/common/zza;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/dynamic/IObjectWrapper;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/common/zza;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        -0x754d984f6886ceb5L
        0x65af504716de6c29L    # 6.496810369206106E181
        -0x70e012e211e70c85L    # -7.844606333450041E-236
        0x156f5bde32ba233fL
        0x65f998286aa4ea73L    # 1.6992675700913983E183
        -0x797434f27c6964bL
        0x4c8ad51bce3bceceL    # 5.3897617014627024E60
    .end array-data
.end method
