.class public final enum Lcom/google/j2objc/annotations/ReflectionSupport$Level;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/j2objc/annotations/ReflectionSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/j2objc/annotations/ReflectionSupport$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/j2objc/annotations/ReflectionSupport$Level;

.field public static final enum FULL:Lcom/google/j2objc/annotations/ReflectionSupport$Level;

.field public static final enum NATIVE_ONLY:Lcom/google/j2objc/annotations/ReflectionSupport$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/j2objc/annotations/ReflectionSupport$Level;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v0, v1, v2}, Lcom/google/j2objc/annotations/ReflectionSupport$Level;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/j2objc/annotations/ReflectionSupport$Level;->NATIVE_ONLY:Lcom/google/j2objc/annotations/ReflectionSupport$Level;

    .line 23
    .line 24
    new-instance v1, Lcom/google/j2objc/annotations/ReflectionSupport$Level;

    .line 25
    .line 26
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v4, 0x2

    .line 29
    new-array v5, v4, [J

    .line 30
    .line 31
    fill-array-data v5, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const/4 v5, 0x1

    .line 42
    invoke-direct {v1, v3, v5}, Lcom/google/j2objc/annotations/ReflectionSupport$Level;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    sput-object v1, Lcom/google/j2objc/annotations/ReflectionSupport$Level;->FULL:Lcom/google/j2objc/annotations/ReflectionSupport$Level;

    .line 46
    .line 47
    new-array v3, v4, [Lcom/google/j2objc/annotations/ReflectionSupport$Level;

    .line 48
    .line 49
    aput-object v0, v3, v2

    .line 50
    .line 51
    aput-object v1, v3, v5

    .line 52
    .line 53
    sput-object v3, Lcom/google/j2objc/annotations/ReflectionSupport$Level;->$VALUES:[Lcom/google/j2objc/annotations/ReflectionSupport$Level;

    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :array_0
    .array-data 8
        0x2d3ba070e4187724L    # 8.476385205295562E-91
        -0x5a62ab5d440aa13cL
        -0x2d292bb238d1b4caL    # -1.162603236230917E91
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :array_1
    .array-data 8
        -0x8a85eaca28868aeL    # -7.619442117890058E266
        -0x3e3046fed318ce43L    # -1.0644363138062054E9
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/j2objc/annotations/ReflectionSupport$Level;
    .locals 1

    .line 1
    const-class v0, Lcom/google/j2objc/annotations/ReflectionSupport$Level;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/j2objc/annotations/ReflectionSupport$Level;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/j2objc/annotations/ReflectionSupport$Level;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/j2objc/annotations/ReflectionSupport$Level;->$VALUES:[Lcom/google/j2objc/annotations/ReflectionSupport$Level;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/j2objc/annotations/ReflectionSupport$Level;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/j2objc/annotations/ReflectionSupport$Level;

    .line 8
    .line 9
    return-object v0
.end method
