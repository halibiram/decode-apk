.class final Lcom/google/common/base/CharMatcher$Digit;
.super Lcom/google/common/base/CharMatcher$RangesMatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Digit"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/base/CharMatcher$Digit;

.field private static final ZEROES:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    new-array v1, v1, [J

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/google/common/base/CharMatcher$Digit;->ZEROES:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v0, Lcom/google/common/base/CharMatcher$Digit;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$Digit;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/google/common/base/CharMatcher$Digit;->INSTANCE:Lcom/google/common/base/CharMatcher$Digit;

    .line 25
    .line 26
    return-void

    .line 27
    :array_0
    .array-data 8
        -0x4daf11d9ca1300c0L    # -2.5119145460090134E-66
        0x2babe959127d423L
        -0x381edc3effc80f81L    # -1.822601667260657E38
        -0x5e19340b6b81b9dfL
        -0x1f5b775573d12a9cL    # -3.5240185390913725E157
        0x18f64e04191fa72fL
        -0x56283d89ddfdb72cL
        -0x53496c773d0ba79cL    # -2.705790872123623E-93
        -0x1ec6af5bd4902ac2L    # -2.2244145574295988E160
        0x50c886e170251bb9L    # 1.4540894095315712E81
        0x2a4a7efdfad285a2L
        -0x66a67238c7586757L
        0x1f2165529940e117L    # 9.898661886705491E-159
        -0x4d5329cf03141fb0L    # -1.3691034797685629E-64
        0x15fcd88886f9ae84L    # 9.200385389907185E-203
    .end array-data
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

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
    invoke-static {}, Lcom/google/common/base/CharMatcher$Digit;->zeroes()[C

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {}, Lcom/google/common/base/CharMatcher$Digit;->nines()[C

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-direct {p0, v0, v1, v2}, Lcom/google/common/base/CharMatcher$RangesMatcher;-><init>(Ljava/lang/String;[C[C)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :array_0
    .array-data 8
        -0x55041a211928adc1L
        -0x695473b7d554d7cbL
        -0x3242f75d108de92aL    # -3.0576092944907447E66
        0x4052dbe612c5370aL    # 75.4359175611427
    .end array-data
.end method

.method private static nines()[C
    .locals 5

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    new-array v2, v1, [J

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    new-array v0, v0, [C

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    new-array v4, v1, [J

    .line 27
    .line 28
    fill-array-data v4, :array_1

    .line 29
    .line 30
    .line 31
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-ge v2, v3, :cond_0

    .line 43
    .line 44
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v4, v1, [J

    .line 47
    .line 48
    fill-array-data v4, :array_2

    .line 49
    .line 50
    .line 51
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    add-int/lit8 v3, v3, 0x9

    .line 63
    .line 64
    int-to-char v3, v3

    .line 65
    aput-char v3, v0, v2

    .line 66
    .line 67
    add-int/lit8 v2, v2, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    return-object v0

    .line 71
    :array_0
    .array-data 8
        -0x6272d90a5e39794dL
        0x668ed70ac43c16a8L
        -0x85c414080642ef6L
        0x6077cef7883fb3ffL    # 5.107509114967639E156
        -0x564387ca1121c209L
        -0x5ee728de9e6c4c3fL
        0x6d2d263c9b78aba3L    # 8.038887305288021E217
        0x7c79318a6231297cL    # 3.9282998746359456E291
        0x49ea7633e73485bdL    # 1.2085581550117599E48
        -0x6b0827d58b4e23f7L
        -0x7e00b596765d4ed5L
        -0x7c7789f4c69df1f5L
        -0x2e6767ec2d65c571L    # -1.194452516674924E85
        0xb528d6503a492b8L
        0x39f8a816c5b0b48cL    # 1.945062580507404E-29
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    :array_1
    .array-data 8
        0x381f800b521d5cc3L    # 2.3142671941928595E-38
        0x2c74f2bc82c2f4eeL    # 1.5691622538192322E-94
        0x6c72e56a26adaa5L
        0x3685e92811037d0cL    # 4.797425783123975E-46
        -0x1b034313c9b88086L    # -2.9113450332768187E178
        0x362c7cec7ee95cb1L    # 9.7461346984067E-48
        0x7163261a7f4b6a04L    # 1.5586517773573726E238
        -0x37c831b75b7e107fL    # -8.100692588296823E39
        0x211d81ad1ad5450fL    # 3.605625011412692E-149
        0x50d81a7c963c2439L    # 2.8579741713184252E81
        0x1763e56c94764074L    # 5.3233216520702E-196
        -0x34aa35a0e41ca470L    # -8.34846628769871E54
        0x722054de39457782L    # 5.444939174868181E241
        -0x6afb59b42e01909bL
        0x4c11b0ce8b0f3e03L    # 2.7761504963272844E58
    .end array-data

    :array_2
    .array-data 8
        -0x1775709315aaeb99L    # -3.8777468565547885E195
        -0x35d36f9625ff656aL    # -2.0873250542596787E49
        -0x81bd02338736dfeL    # -3.332706853128537E269
        -0x400e856f35de661dL    # -1.0924232383491634
        0x2e719fd0b4bc5fffL    # 5.670124236478955E-85
        -0x1fb2b2455f1152e2L    # -7.85794857949976E155
        0x652d45af901063b2L    # 2.3723728837719132E179
        0x5ff2dc421c430150L    # 1.5804775187555344E154
        -0x39fc5b13cfa2fafdL    # -1.9454702053308145E29
        -0x36ecba41c7d3b964L    # -1.074474087044373E44
        0x21f791f2287df301L    # 4.718930134539088E-145
        -0x15c1e7cb16efee97L    # -5.8971889894777735E203
        0x8407dd68c72cc9fL
        -0x3d1e0a2bcfc01ce9L    # -1.5798019673269672E14
        -0x23e8ab5fb3febea1L    # -4.2393906041425995E135
    .end array-data
.end method

.method private static zeroes()[C
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    new-array v1, v1, [J

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        -0x6dd8ed600fbe5bedL
        -0x1a1139e5709523d9L    # -1.0215723177350151E183
        0x6bba7a0771c17e3fL    # 8.70443215404173E210
        0x28effecffae84ddcL
        -0x6b9174bc1310dc2cL
        -0x71526dac15b23a90L    # -5.676598236360305E-238
        -0x4512cd3686161ebeL    # -7.547606082782027E-25
        0x27141adcf5e3bc62L
        0x627ee83e8692773cL    # 2.8477203808971957E166
        -0x57ed58d2f8b98f32L
        0x4400817d19e0a625L    # 3.805981845437315E19
        0x53d3e20a3ab01687L    # 6.635900489879766E95
        0x7ef26484409438a5L    # 3.1532600469500516E303
        0x5ba70ab7ef88b487L    # 3.271039603126153E133
        0x1024b58c0666c986L    # 6.66954155469431E-231
    .end array-data
.end method
