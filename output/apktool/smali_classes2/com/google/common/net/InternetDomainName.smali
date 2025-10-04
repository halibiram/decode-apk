.class public final Lcom/google/common/net/InternetDomainName;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation runtime Lcom/google/common/net/ElementTypesAreNonnullByDefault;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# static fields
.field private static final DASH_MATCHER:Lcom/google/common/base/CharMatcher;

.field private static final DIGIT_MATCHER:Lcom/google/common/base/CharMatcher;

.field private static final DOTS_MATCHER:Lcom/google/common/base/CharMatcher;

.field private static final DOT_JOINER:Lcom/google/common/base/Joiner;

.field private static final DOT_SPLITTER:Lcom/google/common/base/Splitter;

.field private static final LETTER_MATCHER:Lcom/google/common/base/CharMatcher;

.field private static final MAX_DOMAIN_PART_LENGTH:I = 0x3f

.field private static final MAX_LENGTH:I = 0xfd

.field private static final MAX_PARTS:I = 0x7f

.field private static final NO_SUFFIX_FOUND:I = -0x1

.field private static final PART_CHAR_MATCHER:Lcom/google/common/base/CharMatcher;


# instance fields
.field private final name:Ljava/lang/String;

.field private final parts:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final publicSuffixIndex:I

.field private final registrySuffixIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/google/common/net/InternetDomainName;->DOTS_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 21
    .line 22
    const/16 v0, 0x2e

    .line 23
    .line 24
    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    sput-object v1, Lcom/google/common/net/InternetDomainName;->DOT_SPLITTER:Lcom/google/common/base/Splitter;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lcom/google/common/net/InternetDomainName;->DOT_JOINER:Lcom/google/common/base/Joiner;

    .line 35
    .line 36
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    new-array v1, v1, [J

    .line 40
    .line 41
    fill-array-data v1, :array_1

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/google/common/net/InternetDomainName;->DASH_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 56
    .line 57
    const/16 v1, 0x30

    .line 58
    .line 59
    const/16 v2, 0x39

    .line 60
    .line 61
    invoke-static {v1, v2}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    sput-object v1, Lcom/google/common/net/InternetDomainName;->DIGIT_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 66
    .line 67
    const/16 v2, 0x61

    .line 68
    .line 69
    const/16 v3, 0x7a

    .line 70
    .line 71
    invoke-static {v2, v3}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    const/16 v3, 0x41

    .line 76
    .line 77
    const/16 v4, 0x5a

    .line 78
    .line 79
    invoke-static {v3, v4}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v2, v3}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    sput-object v2, Lcom/google/common/net/InternetDomainName;->LETTER_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1, v0}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    sput-object v0, Lcom/google/common/net/InternetDomainName;->PART_CHAR_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 98
    .line 99
    return-void

    .line 100
    nop

    .line 101
    :array_0
    .array-data 8
        0x4f7f6ca4cf0e1156L    # 8.883534536042913E74
        -0xa1fdf36592ae6ddL    # -6.199388630931182E259
        0x14a7f65e36a56907L    # 3.644373534346397E-209
    .end array-data

    .line 102
    .line 103
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
    .line 116
    .line 117
    :array_1
    .array-data 8
        -0x789fe8b034a15c1aL    # -3.718079153861768E-273
        0x6e670d86289c1e0eL    # 6.666394526025358E223
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    sget-object v1, Lcom/google/common/net/InternetDomainName;->DOTS_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 6
    .line 7
    const/16 v2, 0x2e

    .line 8
    .line 9
    invoke-virtual {v1, p1, v2}, Lcom/google/common/base/CharMatcher;->replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    new-array v2, v2, [J

    .line 21
    .line 22
    fill-array-data v2, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x1

    .line 37
    const/4 v3, 0x0

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    sub-int/2addr v1, v2

    .line 45
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const/16 v4, 0xfd

    .line 54
    .line 55
    if-gt v1, v4, :cond_1

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 v1, 0x0

    .line 60
    :goto_0
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    new-array v5, v0, [J

    .line 63
    .line 64
    fill-array-data v5, :array_1

    .line 65
    .line 66
    .line 67
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-static {v1, v4, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Lcom/google/common/net/InternetDomainName;->name:Ljava/lang/String;

    .line 78
    .line 79
    sget-object v1, Lcom/google/common/net/InternetDomainName;->DOT_SPLITTER:Lcom/google/common/base/Splitter;

    .line 80
    .line 81
    invoke-virtual {v1, p1}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iput-object v1, p0, Lcom/google/common/net/InternetDomainName;->parts:Lcom/google/common/collect/ImmutableList;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    const/16 v5, 0x7f

    .line 96
    .line 97
    if-gt v4, v5, :cond_2

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    const/4 v2, 0x0

    .line 101
    :goto_1
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 102
    .line 103
    new-array v4, v0, [J

    .line 104
    .line 105
    fill-array-data v4, :array_2

    .line 106
    .line 107
    .line 108
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-static {v2, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-static {v1}, Lcom/google/common/net/InternetDomainName;->validateSyntax(Ljava/util/List;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 123
    .line 124
    new-array v0, v0, [J

    .line 125
    .line 126
    fill-array-data v0, :array_3

    .line 127
    .line 128
    .line 129
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v1, v0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-direct {p0, p1}, Lcom/google/common/net/InternetDomainName;->findSuffixOfType(Lcom/google/common/base/Optional;)I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    iput p1, p0, Lcom/google/common/net/InternetDomainName;->publicSuffixIndex:I

    .line 148
    .line 149
    sget-object p1, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->REGISTRY:Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    .line 150
    .line 151
    invoke-static {p1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-direct {p0, p1}, Lcom/google/common/net/InternetDomainName;->findSuffixOfType(Lcom/google/common/base/Optional;)I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    iput p1, p0, Lcom/google/common/net/InternetDomainName;->registrySuffixIndex:I

    .line 160
    .line 161
    return-void

    .line 162
    nop

    .line 163
    :array_0
    .array-data 8
        0x225017408c3b013fL    # 2.061771268446288E-143
        0x4f2e9b58f0c864aaL    # 2.7038790229898883E73
    .end array-data

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :array_1
    .array-data 8
        0x65e2a698471f9718L    # 6.191329876249212E182
        -0x585bc3e4950b9beeL
        -0x5e22cf56865675bcL
        -0x310b825764b9eb03L    # -2.262762825761991E72
        0x3ba69672af02462eL    # 2.391564432285396E-21
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    :array_2
    .array-data 8
        -0x3d2234c9e19182ebL    # -1.3103449412248433E14
        -0x5f50207ce5d8c06aL
        -0x641a8acd5827b85dL    # -2.711176535767324E-174
        -0x72ad2092823c908bL
        0x24ed354171070e2bL    # 8.229892415993707E-131
    .end array-data

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    :array_3
    .array-data 8
        -0xf1b3574ad3266a4L    # -6.610676974080529E235
        0x66cca1d4513bec0cL    # 1.557260342547099E187
        -0x2c9ba2dc5d17450fL    # -5.309676054649598E93
        -0x1baa9a2bd9a6f279L    # -2.1169274595004784E175
        0x45c5ba9b28e4d320L    # 1.3449556259719466E28
    .end array-data
.end method

.method private ancestor(I)Lcom/google/common/net/InternetDomainName;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/common/net/InternetDomainName;->DOT_JOINER:Lcom/google/common/base/Joiner;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/net/InternetDomainName;->parts:Lcom/google/common/collect/ImmutableList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {v1, p1, v2}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/google/common/net/InternetDomainName;->from(Ljava/lang/String;)Lcom/google/common/net/InternetDomainName;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method private findSuffixOfType(Lcom/google/common/base/Optional;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/thirdparty/publicsuffix/PublicSuffixType;",
            ">;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/net/InternetDomainName;->parts:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_3

    .line 9
    .line 10
    sget-object v2, Lcom/google/common/net/InternetDomainName;->DOT_JOINER:Lcom/google/common/base/Joiner;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/google/common/net/InternetDomainName;->parts:Lcom/google/common/collect/ImmutableList;

    .line 13
    .line 14
    invoke-virtual {v3, v1, v0}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v2, v3}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    sget-object v3, Lcom/google/thirdparty/publicsuffix/PublicSuffixPatterns;->EXACT:Lcom/google/common/collect/ImmutableMap;

    .line 23
    .line 24
    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    .line 29
    .line 30
    invoke-static {v3}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-static {p1, v3}, Lcom/google/common/net/InternetDomainName;->matchesType(Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    return v1

    .line 41
    :cond_0
    sget-object v3, Lcom/google/thirdparty/publicsuffix/PublicSuffixPatterns;->EXCLUDED:Lcom/google/common/collect/ImmutableMap;

    .line 42
    .line 43
    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    return v1

    .line 52
    :cond_1
    invoke-static {p1, v2}, Lcom/google/common/net/InternetDomainName;->matchesWildcardSuffixType(Lcom/google/common/base/Optional;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    return v1

    .line 59
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    const/4 p1, -0x1

    .line 63
    return p1
.end method

.method public static from(Ljava/lang/String;)Lcom/google/common/net/InternetDomainName;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/net/InternetDomainName;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/google/common/net/InternetDomainName;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/common/net/InternetDomainName;->from(Ljava/lang/String;)Lcom/google/common/net/InternetDomainName;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    return p0

    .line 6
    :catch_0
    const/4 p0, 0x0

    .line 7
    return p0
.end method

.method private static matchesType(Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/thirdparty/publicsuffix/PublicSuffixType;",
            ">;",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/thirdparty/publicsuffix/PublicSuffixType;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/base/Optional;->isPresent()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/common/base/Optional;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->isPresent()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    :goto_0
    return p0
.end method

.method private static matchesWildcardSuffixType(Lcom/google/common/base/Optional;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/thirdparty/publicsuffix/PublicSuffixType;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/net/InternetDomainName;->DOT_SPLITTER:Lcom/google/common/base/Splitter;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/common/base/Splitter;->limit(I)Lcom/google/common/base/Splitter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    sget-object v0, Lcom/google/thirdparty/publicsuffix/PublicSuffixPatterns;->UNDER:Lcom/google/common/collect/ImmutableMap;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p0, p1}, Lcom/google/common/net/InternetDomainName;->matchesType(Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v1, 0x0

    .line 43
    :goto_0
    return v1
.end method

.method private static validatePart(Ljava/lang/String;Z)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-lt v0, v2, :cond_4

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v3, 0x3f

    .line 14
    .line 15
    if-le v0, v3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {}, Lcom/google/common/base/CharMatcher;->ascii()Lcom/google/common/base/CharMatcher;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Lcom/google/common/base/CharMatcher;->retainFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v3, Lcom/google/common/net/InternetDomainName;->PART_CHAR_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 27
    .line 28
    invoke-virtual {v3, v0}, Lcom/google/common/base/CharMatcher;->matchesAllOf(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    return v1

    .line 35
    :cond_1
    sget-object v0, Lcom/google/common/net/InternetDomainName;->DASH_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {v0, v3}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_4

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    sub-int/2addr v3, v2

    .line 52
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-virtual {v0, v3}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    if-eqz p1, :cond_3

    .line 64
    .line 65
    sget-object p1, Lcom/google/common/net/InternetDomainName;->DIGIT_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 66
    .line 67
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    invoke-virtual {p1, p0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_3

    .line 76
    .line 77
    return v1

    .line 78
    :cond_3
    return v2

    .line 79
    :cond_4
    :goto_0
    return v1
.end method

.method private static validateSyntax(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v2, v1}, Lcom/google/common/net/InternetDomainName;->validatePart(Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    return v3

    .line 21
    :cond_0
    const/4 v2, 0x0

    .line 22
    :goto_0
    if-ge v2, v0, :cond_2

    .line 23
    .line 24
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v4, v3}, Lcom/google/common/net/InternetDomainName;->validatePart(Ljava/lang/String;Z)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_1

    .line 35
    .line 36
    return v3

    .line 37
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    return v1
.end method


# virtual methods
.method public child(Ljava/lang/String;)Lcom/google/common/net/InternetDomainName;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/common/net/InternetDomainName;->name:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {v1, p1}, L땸득뎸뒬둥따듔도디돨듽둘땫땍뎰땸되뒈땲돰됴뎠땍뒨돶뎸뎡듐땁뎠뒉드땣듔딨듸뒬땤들됩땄뒵딠듰뒷뒛뒙딌들딜돸딌땁뒛딨돝땯땣땁돤뒋땩돶뎸뒛뒛뒾듼딜뒀둣됨뎰땄돤딌둠뎰둔뒼두땟두땝땲딻뒉땜땯뒉되뒵딽득돳땃땥땠땫땋듬듼듟딀돛돷뒘드뒵둣뒘땫뎡땐둠뒤땲땁땹듰땫되득뒀땥뒹딠디딅뒨;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(ILjava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v1, v0}, L땸득뎸뒬둥따듔도디돨듽둘땫땍뎰땸되뒈땲돰됴뎠땍뒨돶뎸뎡듐땁뎠뒉드땣듔딨듸뒬땤들됩땄뒵딠듰뒷뒛뒙딌들딜돸딌땁뒛딨돝땯땣땁돤뒋땩돶뎸뒛뒛뒾듼딜뒀둣됨뎰땄돤딌둠뎰둔뒼두땟두땝땲딻뒉땜땯뒉되뒵딽득돳땃땥땠땫땋듬듼듟딀돛돷뒘드뒵둣뒘땫뎡땐둠뒤땲땁땹듰땫되득뒀땥뒹딠디딅뒨;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(ILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v1, p1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    new-array v2, v2, [J

    .line 26
    .line 27
    fill-array-data v2, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Lcom/google/common/net/InternetDomainName;->from(Ljava/lang/String;)Lcom/google/common/net/InternetDomainName;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    nop

    .line 53
    :array_0
    .array-data 8
        0x1a95a6a72f4de87eL
        0x98407bc34309cc7L
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/google/common/net/InternetDomainName;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p1, Lcom/google/common/net/InternetDomainName;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/common/net/InternetDomainName;->name:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/google/common/net/InternetDomainName;->name:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method public hasParent()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/net/InternetDomainName;->parts:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-le v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    return v1
.end method

.method public hasPublicSuffix()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/common/net/InternetDomainName;->publicSuffixIndex:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public hasRegistrySuffix()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/common/net/InternetDomainName;->registrySuffixIndex:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/net/InternetDomainName;->name:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isPublicSuffix()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/net/InternetDomainName;->publicSuffixIndex:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public isRegistrySuffix()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/net/InternetDomainName;->registrySuffixIndex:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public isTopDomainUnderRegistrySuffix()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/common/net/InternetDomainName;->registrySuffixIndex:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
.end method

.method public isTopPrivateDomain()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/common/net/InternetDomainName;->publicSuffixIndex:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
.end method

.method public isUnderPublicSuffix()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/net/InternetDomainName;->publicSuffixIndex:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public isUnderRegistrySuffix()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/net/InternetDomainName;->registrySuffixIndex:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public parent()Lcom/google/common/net/InternetDomainName;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/common/net/InternetDomainName;->hasParent()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x5

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/google/common/net/InternetDomainName;->name:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-direct {p0, v0}, Lcom/google/common/net/InternetDomainName;->ancestor(I)Lcom/google/common/net/InternetDomainName;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0

    .line 31
    :array_0
    .array-data 8
        0x514256f345d61cf4L    # 2.783427083736933E83
        -0x63fc59d88f7a8a34L    # -9.930562105657662E-174
        0x50769ab05c61a5dfL    # 4.187829991327084E79
        -0x4208abe0a076ab72L    # -3.394758636841564E-10
        -0x1ab2af03a9ded87dL    # -9.503800952666408E179
    .end array-data
.end method

.method public parts()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/net/InternetDomainName;->parts:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public publicSuffix()Lcom/google/common/net/InternetDomainName;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/net/InternetDomainName;->hasPublicSuffix()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/google/common/net/InternetDomainName;->publicSuffixIndex:I

    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/google/common/net/InternetDomainName;->ancestor(I)Lcom/google/common/net/InternetDomainName;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
.end method

.method public registrySuffix()Lcom/google/common/net/InternetDomainName;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/net/InternetDomainName;->hasRegistrySuffix()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/google/common/net/InternetDomainName;->registrySuffixIndex:I

    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/google/common/net/InternetDomainName;->ancestor(I)Lcom/google/common/net/InternetDomainName;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/net/InternetDomainName;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public topDomainUnderRegistrySuffix()Lcom/google/common/net/InternetDomainName;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/common/net/InternetDomainName;->isTopDomainUnderRegistrySuffix()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/net/InternetDomainName;->isUnderRegistrySuffix()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v2, 0x5

    .line 15
    new-array v2, v2, [J

    .line 16
    .line 17
    fill-array-data v2, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/google/common/net/InternetDomainName;->name:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lcom/google/common/net/InternetDomainName;->registrySuffixIndex:I

    .line 33
    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 35
    .line 36
    invoke-direct {p0, v0}, Lcom/google/common/net/InternetDomainName;->ancestor(I)Lcom/google/common/net/InternetDomainName;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0

    .line 41
    :array_0
    .array-data 8
        -0x4e6c2f18493e16fcL    # -7.177906386939966E-70
        -0x596888583a813c13L    # -8.874968553097454E-123
        -0x146101824dab530cL    # -2.5473938587667438E210
        -0x27e006c7106b95b7L    # -3.1495525776184865E116
        -0x233b55fda3bcb6b1L    # -7.689967106417572E138
    .end array-data
.end method

.method public topPrivateDomain()Lcom/google/common/net/InternetDomainName;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/common/net/InternetDomainName;->isTopPrivateDomain()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/net/InternetDomainName;->isUnderPublicSuffix()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v2, 0x5

    .line 15
    new-array v2, v2, [J

    .line 16
    .line 17
    fill-array-data v2, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/google/common/net/InternetDomainName;->name:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lcom/google/common/net/InternetDomainName;->publicSuffixIndex:I

    .line 33
    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 35
    .line 36
    invoke-direct {p0, v0}, Lcom/google/common/net/InternetDomainName;->ancestor(I)Lcom/google/common/net/InternetDomainName;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0

    .line 41
    :array_0
    .array-data 8
        -0x45be8cd05b9a5f7cL    # -4.404985590513437E-28
        -0xd5e7f7eb1670e11L    # -1.493803635520558E244
        0x42f2aeb12f94274cL    # 3.2866410071717275E14
        0x70d66944e89216c8L    # 3.562885677056322E235
        0x5951b2c93b99707cL    # 1.8280659008905292E122
    .end array-data
.end method
