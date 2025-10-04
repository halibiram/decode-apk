.class public final Lcom/google/common/net/HttpHeaders$ReferrerPolicyValues;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/net/HttpHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReferrerPolicyValues"
.end annotation


# static fields
.field public static final NO_REFERRER:Ljava/lang/String;

.field public static final NO_REFFERER_WHEN_DOWNGRADE:Ljava/lang/String;

.field public static final ORIGIN:Ljava/lang/String;

.field public static final ORIGIN_WHEN_CROSS_ORIGIN:Ljava/lang/String;

.field public static final SAME_ORIGIN:Ljava/lang/String;

.field public static final STRICT_ORIGIN:Ljava/lang/String;

.field public static final STRICT_ORIGIN_WHEN_CROSS_ORIGIN:Ljava/lang/String;

.field public static final UNSAFE_URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/HttpHeaders$ReferrerPolicyValues;->NO_REFERRER:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x5

    new-array v3, v2, [J

    fill-array-data v3, :array_1

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/HttpHeaders$ReferrerPolicyValues;->NO_REFFERER_WHEN_DOWNGRADE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_2

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/HttpHeaders$ReferrerPolicyValues;->SAME_ORIGIN:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x2

    new-array v3, v3, [J

    fill-array-data v3, :array_3

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/HttpHeaders$ReferrerPolicyValues;->ORIGIN:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_4

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/HttpHeaders$ReferrerPolicyValues;->STRICT_ORIGIN:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x4

    new-array v3, v3, [J

    fill-array-data v3, :array_5

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/HttpHeaders$ReferrerPolicyValues;->ORIGIN_WHEN_CROSS_ORIGIN:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_6

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/HttpHeaders$ReferrerPolicyValues;->STRICT_ORIGIN_WHEN_CROSS_ORIGIN:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_7

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/HttpHeaders$ReferrerPolicyValues;->UNSAFE_URL:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        -0x3b08f2d814565138L    # -1.7417138137330434E24
        -0x6219627a8bdef4dfL
        -0x7a104ea4fbeb7823L    # -4.364902905812574E-280
    .end array-data

    :array_1
    .array-data 8
        0x22c4b360c850009L
        -0x6ee041de993c2a8dL
        -0x779a96f1025b54f2L    # -3.242189154649969E-268
        0x6738ce994ad53a15L    # 1.7269986809920314E189
        -0x1729743bf2610857L    # -1.053333554846029E197
    .end array-data

    :array_2
    .array-data 8
        -0x155c10893bc3ea1eL    # -5.000254856411293E205
        0x62c9c0b0f093fe76L    # 7.59294700852797E167
        -0x2f8ba4e5f5a68d04L    # -3.7712772214721494E79
    .end array-data

    :array_3
    .array-data 8
        -0x5e8d43db5f9c11bcL
        0xfb3166e1f0784e6L    # 4.802585391091665E-233
    .end array-data

    :array_4
    .array-data 8
        0x2299f765c0e64e16L    # 5.323456844395652E-142
        -0x79edd2d7742370ceL
        0x78731ecd7ba8e051L    # 1.6161859253564063E272
    .end array-data

    :array_5
    .array-data 8
        0x367c7fc584efa96L
        -0x1f7dcbe5aef0f67eL    # -7.810220408447817E156
        0x884618800115005L
        -0x1b6c19ba1bba841eL    # -3.1499214746600854E176
    .end array-data

    :array_6
    .array-data 8
        -0x4d79daa89e6e5396L
        -0x4cc9e2d15919399aL    # -5.375613942607319E-62
        -0x14f1614740bd354fL    # -4.915325793057395E207
        -0x65e49f5768999b15L    # -6.443140217552921E-183
        -0x7e2b0c4aa2ec406dL    # -7.821490559434423E-300
    .end array-data

    :array_7
    .array-data 8
        0x915346a36b537b1L
        0x7b51bafc7884abc2L    # 1.0546170699234032E286
        -0x64200eb832e1fe2L    # -2.658674923136918E278
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
