.class public final Lcom/android/volley/BuildConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BUILD_TYPE:Ljava/lang/String;

.field public static final DEBUG:Z = false

.field public static final LIBRARY_PACKAGE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/volley/BuildConfig;->LIBRARY_PACKAGE_NAME:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/volley/BuildConfig;->BUILD_TYPE:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        -0x6f0f5f051bbad3fbL    # -4.387174685294256E-227
        0x53112062865a23daL    # 1.395492140486203E92
        0x56bb12179ac91468L    # 6.357662752880598E109
        0x88b241869252a5aL
    .end array-data

    :array_1
    .array-data 8
        -0x4bf05806d3d03700L    # -6.3038937308733745E-58
        -0x3b6574ac0135a87cL    # -3.1337919619570715E22
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
