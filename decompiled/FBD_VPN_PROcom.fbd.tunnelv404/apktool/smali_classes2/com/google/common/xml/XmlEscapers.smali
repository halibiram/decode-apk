.class public Lcom/google/common/xml/XmlEscapers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Lcom/google/common/xml/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field private static final MAX_ASCII_CONTROL_CHAR:C = '\u001f'

.field private static final MIN_ASCII_CONTROL_CHAR:C

.field private static final XML_ATTRIBUTE_ESCAPER:Lcom/google/common/escape/Escaper;

.field private static final XML_CONTENT_ESCAPER:Lcom/google/common/escape/Escaper;

.field private static final XML_ESCAPER:Lcom/google/common/escape/Escaper;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/google/common/escape/Escapers;->builder()Lcom/google/common/escape/Escapers$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0xfffd

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/google/common/escape/Escapers$Builder;->setSafeRange(CC)Lcom/google/common/escape/Escapers$Builder;

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    new-array v4, v3, [J

    .line 16
    .line 17
    fill-array-data v4, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/google/common/escape/Escapers$Builder;->setUnsafeReplacement(Ljava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 28
    .line 29
    .line 30
    :goto_0
    const/16 v1, 0x1f

    .line 31
    .line 32
    const/16 v4, 0xd

    .line 33
    .line 34
    const/16 v5, 0xa

    .line 35
    .line 36
    const/16 v6, 0x9

    .line 37
    .line 38
    if-gt v2, v1, :cond_1

    .line 39
    .line 40
    if-eq v2, v6, :cond_0

    .line 41
    .line 42
    if-eq v2, v5, :cond_0

    .line 43
    .line 44
    if-eq v2, v4, :cond_0

    .line 45
    .line 46
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    new-array v4, v3, [J

    .line 49
    .line 50
    fill-array-data v4, :array_1

    .line 51
    .line 52
    .line 53
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v2, v1}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 61
    .line 62
    .line 63
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 64
    .line 65
    int-to-char v2, v2

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    new-array v2, v3, [J

    .line 70
    .line 71
    fill-array-data v2, :array_2

    .line 72
    .line 73
    .line 74
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const/16 v2, 0x26

    .line 82
    .line 83
    invoke-virtual {v0, v2, v1}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 84
    .line 85
    .line 86
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    new-array v2, v3, [J

    .line 89
    .line 90
    fill-array-data v2, :array_3

    .line 91
    .line 92
    .line 93
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const/16 v2, 0x3c

    .line 101
    .line 102
    invoke-virtual {v0, v2, v1}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 103
    .line 104
    .line 105
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 106
    .line 107
    new-array v2, v3, [J

    .line 108
    .line 109
    fill-array-data v2, :array_4

    .line 110
    .line 111
    .line 112
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const/16 v2, 0x3e

    .line 120
    .line 121
    invoke-virtual {v0, v2, v1}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/google/common/escape/Escapers$Builder;->build()Lcom/google/common/escape/Escaper;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    sput-object v1, Lcom/google/common/xml/XmlEscapers;->XML_CONTENT_ESCAPER:Lcom/google/common/escape/Escaper;

    .line 129
    .line 130
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 131
    .line 132
    new-array v2, v3, [J

    .line 133
    .line 134
    fill-array-data v2, :array_5

    .line 135
    .line 136
    .line 137
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    const/16 v2, 0x27

    .line 145
    .line 146
    invoke-virtual {v0, v2, v1}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 147
    .line 148
    .line 149
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 150
    .line 151
    new-array v2, v3, [J

    .line 152
    .line 153
    fill-array-data v2, :array_6

    .line 154
    .line 155
    .line 156
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    const/16 v2, 0x22

    .line 164
    .line 165
    invoke-virtual {v0, v2, v1}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Lcom/google/common/escape/Escapers$Builder;->build()Lcom/google/common/escape/Escaper;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    sput-object v1, Lcom/google/common/xml/XmlEscapers;->XML_ESCAPER:Lcom/google/common/escape/Escaper;

    .line 173
    .line 174
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 175
    .line 176
    new-array v2, v3, [J

    .line 177
    .line 178
    fill-array-data v2, :array_7

    .line 179
    .line 180
    .line 181
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v0, v6, v1}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 189
    .line 190
    .line 191
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 192
    .line 193
    new-array v2, v3, [J

    .line 194
    .line 195
    fill-array-data v2, :array_8

    .line 196
    .line 197
    .line 198
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v0, v5, v1}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 206
    .line 207
    .line 208
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 209
    .line 210
    new-array v2, v3, [J

    .line 211
    .line 212
    fill-array-data v2, :array_9

    .line 213
    .line 214
    .line 215
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {v0, v4, v1}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0}, Lcom/google/common/escape/Escapers$Builder;->build()Lcom/google/common/escape/Escaper;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    sput-object v0, Lcom/google/common/xml/XmlEscapers;->XML_ATTRIBUTE_ESCAPER:Lcom/google/common/escape/Escaper;

    .line 230
    .line 231
    return-void

    .line 232
    nop

    .line 233
    :array_0
    .array-data 8
        0x472c53ed6875a95aL    # 7.354328071963961E34
        -0x5dc2cada25a796d8L    # -9.356169585355019E-144
    .end array-data

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    :array_1
    .array-data 8
        0x2da7c54fe9298a29L    # 9.335426911669495E-89
        0x69ebe503c03a2c0eL    # 1.708154174774224E202
    .end array-data

    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    :array_2
    .array-data 8
        0x3e1e549b8581b461L    # 1.765467346990577E-9
        -0x244cf969f671361L
    .end array-data

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    :array_3
    .array-data 8
        -0x1ae47715128bfd70L    # -1.115783450346788E179
        -0x29542af00fd3ea6dL    # -3.2682640857366067E109
    .end array-data

    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    :array_4
    .array-data 8
        -0xc2b454d3052add9L    # -9.276002681465668E249
        0x61cfc12bc5debbcdL    # 1.4286109178182362E163
    .end array-data

    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    :array_5
    .array-data 8
        -0x2243a7a31e7cd924L    # -3.4565033113944565E143
        -0xb6d4e6ce7553234L
    .end array-data

    :array_6
    .array-data 8
        -0xf47a2a17be579a9L    # -9.683628536391152E234
        0x37542da6f6e6119bL    # 3.6193102509639153E-42
    .end array-data

    :array_7
    .array-data 8
        -0x786598ac07684c2dL
        -0x7efaff70aee73185L    # -9.5705941832655E-304
    .end array-data

    :array_8
    .array-data 8
        -0x2d710c17d01315e3L    # -4.925928831178008E89
        0x17da3f4a5e7df489L    # 8.988893888001687E-194
    .end array-data

    :array_9
    .array-data 8
        -0x469f5b7490a48297L    # -2.5642220485510823E-32
        0x593100195869b52cL    # 4.38992465856263E121
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

.method public static xmlAttributeEscaper()Lcom/google/common/escape/Escaper;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/xml/XmlEscapers;->XML_ATTRIBUTE_ESCAPER:Lcom/google/common/escape/Escaper;

    .line 2
    .line 3
    return-object v0
.end method

.method public static xmlContentEscaper()Lcom/google/common/escape/Escaper;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/xml/XmlEscapers;->XML_CONTENT_ESCAPER:Lcom/google/common/escape/Escaper;

    .line 2
    .line 3
    return-object v0
.end method
