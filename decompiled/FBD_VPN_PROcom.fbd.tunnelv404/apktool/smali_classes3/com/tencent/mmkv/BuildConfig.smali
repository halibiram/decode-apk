.class public final Lcom/tencent/mmkv/BuildConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BUILD_TYPE:Ljava/lang/String;

.field public static final DEBUG:Z = false

.field public static final FLAVOR:Ljava/lang/String;

.field public static final LIBRARY_PACKAGE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mmkv/BuildConfig;->LIBRARY_PACKAGE_NAME:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mmkv/BuildConfig;->BUILD_TYPE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_2

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mmkv/BuildConfig;->FLAVOR:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        -0x5c524cc06d880965L    # -7.980887544869184E-137
        0x7e72837f72960dd2L
        -0x20bfec1a426bc83fL    # -6.578583970103089E150
    .end array-data

    :array_1
    .array-data 8
        -0x32c2adc3cd9988f9L    # -1.206205482212273E64
        0x1e7d5c3ddfd97703L    # 8.157613278846519E-162
    .end array-data

    :array_2
    .array-data 8
        -0x7447c175f3ca139fL    # -3.3068400060091334E-252
        -0x2c0fece972f035bcL    # -2.1459411161533007E96
        -0x3c342c1499feb378L    # -4.010410164901974E18
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
