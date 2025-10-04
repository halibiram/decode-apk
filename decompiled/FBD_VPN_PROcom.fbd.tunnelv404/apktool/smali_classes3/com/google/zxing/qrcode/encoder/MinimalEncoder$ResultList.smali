.class final Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/encoder/MinimalEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ResultList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;
    }
.end annotation


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

.field private final version:Lcom/google/zxing/qrcode/decoder/Version;


# direct methods
.method public constructor <init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V
    .locals 12

    .line 1
    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->this$0:Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->list:Ljava/util/List;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    const/4 v3, 0x1

    .line 17
    if-eqz p3, :cond_7

    .line 18
    .line 19
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$000(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    add-int v10, v1, v4

    .line 24
    .line 25
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$700(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$200(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)Lcom/google/zxing/qrcode/decoder/Mode;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 34
    .line 35
    if-ne v4, v5, :cond_0

    .line 36
    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$100(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-nez v4, :cond_1

    .line 44
    .line 45
    :cond_0
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$100(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-static {v1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$100(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eq v4, v5, :cond_2

    .line 56
    .line 57
    :cond_1
    const/4 v4, 0x1

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    const/4 v4, 0x0

    .line 60
    :goto_1
    if-eqz v4, :cond_3

    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    :cond_3
    if-eqz v1, :cond_4

    .line 64
    .line 65
    invoke-static {v1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$200(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)Lcom/google/zxing/qrcode/decoder/Mode;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$200(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)Lcom/google/zxing/qrcode/decoder/Mode;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    if-ne v3, v5, :cond_4

    .line 74
    .line 75
    if-eqz v4, :cond_5

    .line 76
    .line 77
    :cond_4
    iget-object v3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->list:Ljava/util/List;

    .line 78
    .line 79
    new-instance v11, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;

    .line 80
    .line 81
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$200(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)Lcom/google/zxing/qrcode/decoder/Mode;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$800(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$100(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    move-object v5, v11

    .line 94
    move-object v6, p0

    .line 95
    invoke-direct/range {v5 .. v10}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;Lcom/google/zxing/qrcode/decoder/Mode;III)V

    .line 96
    .line 97
    .line 98
    invoke-interface {v3, v0, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    const/4 v10, 0x0

    .line 102
    :cond_5
    if-eqz v4, :cond_6

    .line 103
    .line 104
    iget-object v3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->list:Ljava/util/List;

    .line 105
    .line 106
    new-instance v11, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;

    .line 107
    .line 108
    sget-object v6, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 109
    .line 110
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$800(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$100(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    const/4 v9, 0x0

    .line 119
    move-object v4, v11

    .line 120
    move-object v5, p0

    .line 121
    invoke-direct/range {v4 .. v9}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;Lcom/google/zxing/qrcode/decoder/Mode;III)V

    .line 122
    .line 123
    .line 124
    invoke-interface {v3, v0, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_6
    move-object p3, v1

    .line 128
    move v1, v10

    .line 129
    goto :goto_0

    .line 130
    :cond_7
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->access$900(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Z

    .line 131
    .line 132
    .line 133
    move-result p3

    .line 134
    if-eqz p3, :cond_a

    .line 135
    .line 136
    iget-object p3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->list:Ljava/util/List;

    .line 137
    .line 138
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    check-cast p3, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;

    .line 143
    .line 144
    if-eqz p3, :cond_8

    .line 145
    .line 146
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;->access$1000(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;)Lcom/google/zxing/qrcode/decoder/Mode;

    .line 147
    .line 148
    .line 149
    move-result-object p3

    .line 150
    sget-object v6, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 151
    .line 152
    if-eq p3, v6, :cond_8

    .line 153
    .line 154
    if-eqz v2, :cond_8

    .line 155
    .line 156
    iget-object p3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->list:Ljava/util/List;

    .line 157
    .line 158
    new-instance v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;

    .line 159
    .line 160
    const/4 v8, 0x0

    .line 161
    const/4 v9, 0x0

    .line 162
    const/4 v7, 0x0

    .line 163
    move-object v4, v1

    .line 164
    move-object v5, p0

    .line 165
    invoke-direct/range {v4 .. v9}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;Lcom/google/zxing/qrcode/decoder/Mode;III)V

    .line 166
    .line 167
    .line 168
    invoke-interface {p3, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    :cond_8
    iget-object p3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->list:Ljava/util/List;

    .line 172
    .line 173
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object p3

    .line 177
    check-cast p3, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;

    .line 178
    .line 179
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->list:Ljava/util/List;

    .line 180
    .line 181
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;->access$1000(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;)Lcom/google/zxing/qrcode/decoder/Mode;

    .line 182
    .line 183
    .line 184
    move-result-object p3

    .line 185
    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 186
    .line 187
    if-eq p3, v2, :cond_9

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_9
    const/4 v0, 0x1

    .line 191
    :goto_2
    new-instance p3, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;

    .line 192
    .line 193
    sget-object v6, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 194
    .line 195
    const/4 v8, 0x0

    .line 196
    const/4 v9, 0x0

    .line 197
    const/4 v7, 0x0

    .line 198
    move-object v4, p3

    .line 199
    move-object v5, p0

    .line 200
    invoke-direct/range {v4 .. v9}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;Lcom/google/zxing/qrcode/decoder/Mode;III)V

    .line 201
    .line 202
    .line 203
    invoke-interface {v1, v0, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    :cond_a
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    .line 207
    .line 208
    .line 209
    move-result p3

    .line 210
    sget-object v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$qrcode$encoder$MinimalEncoder$VersionSize:[I

    .line 211
    .line 212
    invoke-static {p2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->getVersionSize(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    aget v0, v0, v1

    .line 221
    .line 222
    if-eq v0, v3, :cond_c

    .line 223
    .line 224
    const/4 v1, 0x2

    .line 225
    if-eq v0, v1, :cond_b

    .line 226
    .line 227
    const/16 v3, 0x1b

    .line 228
    .line 229
    const/16 v0, 0x28

    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_b
    const/16 v3, 0xa

    .line 233
    .line 234
    const/16 v0, 0x1a

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_c
    const/16 v0, 0x9

    .line 238
    .line 239
    :goto_3
    invoke-direct {p0, p2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->getSize(Lcom/google/zxing/qrcode/decoder/Version;)I

    .line 240
    .line 241
    .line 242
    move-result p2

    .line 243
    :goto_4
    if-ge p3, v0, :cond_d

    .line 244
    .line 245
    invoke-static {p3}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->access$1100(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    invoke-static {p2, v1, v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    if-nez v1, :cond_d

    .line 258
    .line 259
    add-int/lit8 p3, p3, 0x1

    .line 260
    .line 261
    goto :goto_4

    .line 262
    :cond_d
    :goto_5
    if-le p3, v3, :cond_e

    .line 263
    .line 264
    add-int/lit8 v0, p3, -0x1

    .line 265
    .line 266
    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->access$1100(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-static {p2, v0, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-eqz v0, :cond_e

    .line 279
    .line 280
    add-int/lit8 p3, p3, -0x1

    .line 281
    .line 282
    goto :goto_5

    .line 283
    :cond_e
    invoke-static {p3}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->version:Lcom/google/zxing/qrcode/decoder/Version;

    .line 288
    .line 289
    return-void
.end method

.method public static synthetic access$1400(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->version:Lcom/google/zxing/qrcode/decoder/Version;

    .line 2
    .line 3
    return-object p0
.end method

.method private getSize(Lcom/google/zxing/qrcode/decoder/Version;)I
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;

    .line 3
    invoke-static {v2, p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;->access$1200(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method public getBits(Lcom/google/zxing/common/BitArray;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->list:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;

    .line 18
    .line 19
    invoke-static {v1, p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;->access$1300(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;Lcom/google/zxing/common/BitArray;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->version:Lcom/google/zxing/qrcode/decoder/Version;

    invoke-direct {p0, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->getSize(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v0

    return v0
.end method

.method public getVersion()Lcom/google/zxing/qrcode/decoder/Version;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->version:Lcom/google/zxing/qrcode/decoder/Version;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->list:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 v4, 0x2

    .line 30
    new-array v4, v4, [J

    .line 31
    .line 32
    fill-array-data v4, :array_0

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    move-object v2, v3

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    return-object v0

    .line 59
    :array_0
    .array-data 8
        -0x4fbcd05a2fed1ba6L    # -3.313891990157989E-76
        0x37c754d8762c273eL    # 5.3566331528350866E-40
    .end array-data
.end method
