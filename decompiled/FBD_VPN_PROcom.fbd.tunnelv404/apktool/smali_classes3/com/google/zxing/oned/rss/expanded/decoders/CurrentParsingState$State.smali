.class final enum Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

.field public static final enum ALPHA:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

.field public static final enum ISO_IEC_646:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

.field public static final enum NUMERIC:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v3, v2, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-direct {v0, v1, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;->NUMERIC:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    .line 23
    .line 24
    new-instance v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    .line 25
    .line 26
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v5, v2, [J

    .line 29
    .line 30
    fill-array-data v5, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const/4 v5, 0x1

    .line 41
    invoke-direct {v1, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    sput-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;->ALPHA:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    .line 45
    .line 46
    new-instance v4, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    .line 47
    .line 48
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    const/4 v7, 0x3

    .line 51
    new-array v8, v7, [J

    .line 52
    .line 53
    fill-array-data v8, :array_2

    .line 54
    .line 55
    .line 56
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-direct {v4, v6, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;-><init>(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    sput-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;->ISO_IEC_646:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    .line 67
    .line 68
    new-array v6, v7, [Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    .line 69
    .line 70
    aput-object v0, v6, v3

    .line 71
    .line 72
    aput-object v1, v6, v5

    .line 73
    .line 74
    aput-object v4, v6, v2

    .line 75
    .line 76
    sput-object v6, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;->$VALUES:[Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    .line 77
    .line 78
    return-void

    .line 79
    :array_0
    .array-data 8
        0x29637df46dbfaf86L
        -0x3cc3ab2f744bfcecL    # -7.974554021659412E15
    .end array-data

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    :array_1
    .array-data 8
        0x781aca0845f98a51L    # 3.5381454763755067E270
        -0x1617e9154c297f10L    # -1.475146768657589E202
    .end array-data

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    :array_2
    .array-data 8
        -0x4726de8b7b12bbbcL    # -7.562490188975448E-35
        -0x3b26c98e4b49e3aL
        0x6dd6d2368e47c32fL    # 1.2889446381424935E221
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;
    .locals 1

    .line 1
    const-class v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;->$VALUES:[Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    .line 8
    .line 9
    return-object v0
.end method
