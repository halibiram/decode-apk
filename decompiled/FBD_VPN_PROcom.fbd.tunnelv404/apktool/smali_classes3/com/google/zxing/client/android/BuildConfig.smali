.class public final Lcom/google/zxing/client/android/BuildConfig;
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

    const/4 v1, 0x5

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/BuildConfig;->LIBRARY_PACKAGE_NAME:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/BuildConfig;->BUILD_TYPE:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        -0x14e5647ef9d5e17dL    # -8.542403396508218E207
        -0x4ad47f5df20b6460L
        -0x60fac85a0e3180d1L
        0x2751b220a270561fL
        0x71d02960cfaff923L    # 1.683843832126575E240
    .end array-data

    :array_1
    .array-data 8
        0x79c67178b64c1a82L    # 3.978429974392095E278
        -0x14b1280894e373cL
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
