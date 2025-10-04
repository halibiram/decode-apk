.class public final Lcom/google/zxing/qrcode/encoder/QRCode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NUM_MASK_PATTERNS:I = 0x8


# instance fields
.field private ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field private maskPattern:I

.field private matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

.field private mode:Lcom/google/zxing/qrcode/decoder/Mode;

.field private version:Lcom/google/zxing/qrcode/decoder/Version;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->maskPattern:I

    .line 6
    .line 7
    return-void
.end method

.method public static isValidMaskPattern(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x8

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getECLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaskPattern()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->maskPattern:I

    .line 2
    .line 3
    return v0
.end method

.method public getMatrix()Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMode()Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVersion()Lcom/google/zxing/qrcode/decoder/Version;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->version:Lcom/google/zxing/qrcode/decoder/Version;

    .line 2
    .line 3
    return-object v0
.end method

.method public setECLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 2
    .line 3
    return-void
.end method

.method public setMaskPattern(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->maskPattern:I

    .line 2
    .line 3
    return-void
.end method

.method public setMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 2
    .line 3
    return-void
.end method

.method public setMode(Lcom/google/zxing/qrcode/decoder/Mode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 2
    .line 3
    return-void
.end method

.method public setVersion(Lcom/google/zxing/qrcode/decoder/Version;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->version:Lcom/google/zxing/qrcode/decoder/Version;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0xc8

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    new-array v3, v2, [J

    .line 12
    .line 13
    fill-array-data v3, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v3, v2, [J

    .line 29
    .line 30
    fill-array-data v3, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    const/4 v3, 0x3

    .line 51
    new-array v4, v3, [J

    .line 52
    .line 53
    fill-array-data v4, :array_2

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    new-array v4, v3, [J

    .line 74
    .line 75
    fill-array-data v4, :array_3

    .line 76
    .line 77
    .line 78
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->version:Lcom/google/zxing/qrcode/decoder/Version;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 94
    .line 95
    new-array v4, v3, [J

    .line 96
    .line 97
    fill-array-data v4, :array_4

    .line 98
    .line 99
    .line 100
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->maskPattern:I

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 116
    .line 117
    if-nez v1, :cond_0

    .line 118
    .line 119
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    new-array v3, v3, [J

    .line 122
    .line 123
    fill-array-data v3, :array_5

    .line 124
    .line 125
    .line 126
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 138
    .line 139
    new-array v3, v3, [J

    .line 140
    .line 141
    fill-array-data v3, :array_6

    .line 142
    .line 143
    .line 144
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 160
    .line 161
    new-array v2, v2, [J

    .line 162
    .line 163
    fill-array-data v2, :array_7

    .line 164
    .line 165
    .line 166
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 167
    .line 168
    .line 169
    invoke-static {v1, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    return-object v0

    .line 174
    nop

    .line 175
    :array_0
    .array-data 8
        -0x263b4da0912e2855L    # -2.736344495482706E124
        -0x129a64b254f2e0bbL    # -9.533983146264124E218
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    :array_1
    .array-data 8
        0x342148918019cff4L    # 1.3767078253952976E-57
        0x28ae82a8e04f2a9bL    # 9.9114999801738E-113
    .end array-data

    :array_2
    .array-data 8
        -0x4fb745efcb00f5eaL    # -4.270897945155796E-76
        -0x1f3a6e5fc1b5844L
        -0x7d3bdebfbc12f06fL    # -2.462382955187368E-295
    .end array-data

    :array_3
    .array-data 8
        -0x14ad0756f256334bL    # -9.745290201633508E208
        -0x2c1e649d24fa3fceL    # -1.175258592765985E96
        -0x2fd0328d31f12ef4L    # -1.8412408715204792E78
    .end array-data

    :array_4
    .array-data 8
        -0x61de2781596fd54dL    # -1.549478398281369E-163
        0x68da6a9335fea94L
        -0x9fc3d810e00a7b8L    # -3.038139435855934E260
    .end array-data

    :array_5
    .array-data 8
        0x10dba4252ba7bd26L
        -0x4612d5b558bfc633L    # -1.150364367518506E-29
        -0x2656f7fb783d9d50L    # -8.273551457812379E123
    .end array-data

    :array_6
    .array-data 8
        0x39a1529c016e458eL    # 4.270373514509397E-31
        -0x73c6f4ab4323b3bdL    # -8.744839473095376E-250
        -0x468ba0fc509a8384L    # -6.277345239943005E-32
    .end array-data

    :array_7
    .array-data 8
        0x1862cbae8af3da92L    # 3.295715365835963E-191
        0x7a333f2da24346c1L    # 4.367111551473394E280
    .end array-data
.end method
