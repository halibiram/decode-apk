.class public Lcom/google/android/gms/actions/SearchIntents;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_SEARCH:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final EXTRA_QUERY:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x7

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/actions/SearchIntents;->ACTION_SEARCH:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/actions/SearchIntents;->EXTRA_QUERY:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        0x498e82beadf2e160L    # 2.1773178815818008E46
        0x726ab7eb414afc6L
        -0xbe10ee0b213e40fL    # -2.215354101388351E251
        0x56535eae5ce5a982L    # 7.107955157154962E107
        0x5456581f96aaadd8L    # 1.9090795954318818E98
        0x1db31a954c5979b4L
        -0x268a2c49c8f1eda0L    # -9.018042535262779E122
    .end array-data

    :array_1
    .array-data 8
        0x1a72a8a10ad6a16aL
        0x774f456d5bb4000aL    # 5.041627167317979E266
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
