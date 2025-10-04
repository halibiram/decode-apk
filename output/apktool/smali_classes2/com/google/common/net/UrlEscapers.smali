.class public final Lcom/google/common/net/UrlEscapers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Lcom/google/common/net/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field private static final URL_FORM_PARAMETER_ESCAPER:Lcom/google/common/escape/Escaper;

.field static final URL_FORM_PARAMETER_OTHER_SAFE_CHARS:Ljava/lang/String;

.field private static final URL_FRAGMENT_ESCAPER:Lcom/google/common/escape/Escaper;

.field static final URL_PATH_OTHER_SAFE_CHARS_LACKING_PLUS:Ljava/lang/String;

.field private static final URL_PATH_SEGMENT_ESCAPER:Lcom/google/common/escape/Escaper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/google/common/net/UrlEscapers;->URL_FORM_PARAMETER_OTHER_SAFE_CHARS:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    new-array v2, v2, [J

    .line 22
    .line 23
    fill-array-data v2, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/google/common/net/UrlEscapers;->URL_PATH_OTHER_SAFE_CHARS_LACKING_PLUS:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v0, Lcom/google/common/net/PercentEscaper;

    .line 36
    .line 37
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    new-array v1, v1, [J

    .line 40
    .line 41
    fill-array-data v1, :array_2

    .line 42
    .line 43
    .line 44
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const/4 v2, 0x1

    .line 52
    invoke-direct {v0, v1, v2}, Lcom/google/common/net/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lcom/google/common/net/UrlEscapers;->URL_FORM_PARAMETER_ESCAPER:Lcom/google/common/escape/Escaper;

    .line 56
    .line 57
    new-instance v0, Lcom/google/common/net/PercentEscaper;

    .line 58
    .line 59
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    const/4 v2, 0x4

    .line 62
    new-array v3, v2, [J

    .line 63
    .line 64
    fill-array-data v3, :array_3

    .line 65
    .line 66
    .line 67
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const/4 v3, 0x0

    .line 75
    invoke-direct {v0, v1, v3}, Lcom/google/common/net/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    .line 76
    .line 77
    .line 78
    sput-object v0, Lcom/google/common/net/UrlEscapers;->URL_PATH_SEGMENT_ESCAPER:Lcom/google/common/escape/Escaper;

    .line 79
    .line 80
    new-instance v0, Lcom/google/common/net/PercentEscaper;

    .line 81
    .line 82
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 83
    .line 84
    new-array v2, v2, [J

    .line 85
    .line 86
    fill-array-data v2, :array_4

    .line 87
    .line 88
    .line 89
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-direct {v0, v1, v3}, Lcom/google/common/net/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    .line 97
    .line 98
    .line 99
    sput-object v0, Lcom/google/common/net/UrlEscapers;->URL_FRAGMENT_ESCAPER:Lcom/google/common/escape/Escaper;

    .line 100
    .line 101
    return-void

    .line 102
    nop

    .line 103
    :array_0
    .array-data 8
        -0xb7e29b366fca091L
        -0x1bb2b4df0a889ba9L    # -1.4490332213498986E175
    .end array-data

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    :array_1
    .array-data 8
        -0x5e0c953853f7edcaL
        0x4ce4e8c806d56decL    # 2.687996250244762E62
        0x673ba8f794127263L    # 1.9256169750368291E189
    .end array-data

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    :array_2
    .array-data 8
        -0x9712aca41d0b51cL
        0x7f37dc9efd9eafa0L    # 6.545440041077727E304
    .end array-data

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :array_3
    .array-data 8
        0x59c4c7db2d55a6aaL    # 2.747439584378568E124
        0x299a5ba7b344d07cL
        -0x5fa42c7f41cad09aL    # -8.301486225835209E-153
        0x21357bf5471993b3L
    .end array-data

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    :array_4
    .array-data 8
        -0x5d5de7b499d245bbL    # -7.419390852929472E-142
        -0x37aed3de87b049c5L    # -2.3373840221885587E40
        0x6a5c1c0537e0c287L    # 2.203279010108776E204
        0x6d73a0c57e3e072bL    # 1.732180753839449E219
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

.method public static urlFormParameterEscaper()Lcom/google/common/escape/Escaper;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/net/UrlEscapers;->URL_FORM_PARAMETER_ESCAPER:Lcom/google/common/escape/Escaper;

    .line 2
    .line 3
    return-object v0
.end method

.method public static urlFragmentEscaper()Lcom/google/common/escape/Escaper;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/net/UrlEscapers;->URL_FRAGMENT_ESCAPER:Lcom/google/common/escape/Escaper;

    .line 2
    .line 3
    return-object v0
.end method

.method public static urlPathSegmentEscaper()Lcom/google/common/escape/Escaper;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/net/UrlEscapers;->URL_PATH_SEGMENT_ESCAPER:Lcom/google/common/escape/Escaper;

    .line 2
    .line 3
    return-object v0
.end method
