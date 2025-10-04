.class public final Lcom/github/mikephil/charting/BuildConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String;

.field public static final BUILD_TYPE:Ljava/lang/String;

.field public static final DEBUG:Z = false

.field public static final FLAVOR:Ljava/lang/String; = ""

.field public static final VERSION_CODE:I = 0x3

.field public static final VERSION_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x5

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/mikephil/charting/BuildConfig;->APPLICATION_ID:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v2, v1, [J

    fill-array-data v2, :array_1

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/mikephil/charting/BuildConfig;->BUILD_TYPE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_2

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/mikephil/charting/BuildConfig;->VERSION_NAME:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        0x3d430187ebf0db43L    # 1.3504561202419816E-13
        0x2d502f03947baf05L    # 1.9861760622624578E-90
        0x5393b28e92363935L    # 4.1087479422919096E94
        -0x147da59bac134f72L    # -7.542169171790775E209
        0x687830f498ea7990L    # 1.7659369703829065E195
    .end array-data

    :array_1
    .array-data 8
        -0x3c4d1c96c1b67c7bL    # -1.36104722863826662E18
        0x2bf412bb2230e18dL    # 5.873504729289961E-97
    .end array-data

    :array_2
    .array-data 8
        -0x23fd29ebf443e63L    # -5.289941074911427E297
        0xec4aa0ead48894fL
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
