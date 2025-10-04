.class public final Lcom/google/gson/internal/GsonBuildConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/GsonBuildConfig;->VERSION:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        -0x5982a6bbfb8203e3L    # -2.774792859929556E-123
        0x249dde67bfca088L    # 1.23599573255461E-297
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
