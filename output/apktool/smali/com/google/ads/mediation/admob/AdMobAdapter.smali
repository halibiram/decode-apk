.class public final Lcom/google/ads/mediation/admob/AdMobAdapter;
.super Lcom/google/ads/mediation/AbstractAdViewAdapter;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field static final AD_JSON_PARAMETER:Ljava/lang/String;

.field static final AD_PARAMETER:Ljava/lang/String;

.field static final HOUSE_ADS_PARAMETER:Ljava/lang/String;

.field public static final NEW_BUNDLE:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/ads/mediation/admob/AdMobAdapter;->AD_JSON_PARAMETER:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_1

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/ads/mediation/admob/AdMobAdapter;->AD_PARAMETER:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_2

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/ads/mediation/admob/AdMobAdapter;->HOUSE_ADS_PARAMETER:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_3

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/ads/mediation/admob/AdMobAdapter;->NEW_BUNDLE:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        -0x30d7ecf8af991cd6L    # -2.1267829961102826E73
        -0x69a5b1656783ce01L    # -5.370008790596845E-201
    .end array-data

    :array_1
    .array-data 8
        0x52c26fccded69d5dL    # 4.694532696183505E90
        -0x7c892c2ca1a4785bL    # -5.718755120233392E-292
    .end array-data

    :array_2
    .array-data 8
        0x365cc9d06f90e59L
        0x2ba9b68a0a39d2d1L    # 2.3511747904393576E-98
    .end array-data

    :array_3
    .array-data 8
        0x71e76b10ccbe2f0dL    # 4.879783216278412E240
        0x402c67e9685a365fL    # 14.202952633869414
        -0x3682973ba79e3aeeL    # -1.0493569621086738E46
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/ads/mediation/AbstractAdViewAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public buildExtrasBundle(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    new-array v3, v0, [J

    .line 13
    .line 14
    fill-array-data v3, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    new-instance v2, Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-direct {v2, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 33
    .line 34
    .line 35
    move-object p1, v2

    .line 36
    :cond_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    new-array v3, v1, [J

    .line 39
    .line 40
    fill-array-data v3, :array_1

    .line 41
    .line 42
    .line 43
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const/4 v3, 0x1

    .line 51
    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v4, v1, [J

    .line 57
    .line 58
    fill-array-data v4, :array_2

    .line 59
    .line 60
    .line 61
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    new-array v5, v1, [J

    .line 75
    .line 76
    fill-array-data v5, :array_3

    .line 77
    .line 78
    .line 79
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {p1, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 90
    .line 91
    new-array v4, v1, [J

    .line 92
    .line 93
    fill-array-data v4, :array_4

    .line 94
    .line 95
    .line 96
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-nez v2, :cond_2

    .line 112
    .line 113
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 114
    .line 115
    new-array v4, v1, [J

    .line 116
    .line 117
    fill-array-data v4, :array_5

    .line 118
    .line 119
    .line 120
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 132
    .line 133
    new-array v1, v1, [J

    .line 134
    .line 135
    fill-array-data v1, :array_6

    .line 136
    .line 137
    .line 138
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :cond_2
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 149
    .line 150
    new-array v0, v0, [J

    .line 151
    .line 152
    fill-array-data v0, :array_7

    .line 153
    .line 154
    .line 155
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 163
    .line 164
    .line 165
    return-object p1

    .line 166
    nop

    .line 167
    :array_0
    .array-data 8
        0x21c8f33b3b70073dL    # 6.244027325343742E-146
        0x56cbbebb4a20ce0cL    # 1.303208407521442E110
        -0x1a5a267c424e20L
    .end array-data

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    :array_1
    .array-data 8
        0x57b51045e4d0689bL    # 3.241979599794489E114
        -0x61b9acfed726e043L    # -7.753342481316472E-163
    .end array-data

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
    :array_2
    .array-data 8
        0x1f138d4f171c7b2fL    # 5.562797127243E-159
        0x3ea33cfbf9ba4fafL    # 5.733436298665466E-7
    .end array-data

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    :array_3
    .array-data 8
        -0x60127c924562caaL
        -0x310e3639afb87d58L    # -1.964312352548658E72
    .end array-data

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
    :array_4
    .array-data 8
        0x2b7cbf64565f2377L    # 3.285817264948992E-99
        -0x1e7f6607156d46c3L    # -4.668032016290006E161
    .end array-data

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    :array_5
    .array-data 8
        -0x1b4059820b0c1fa2L    # -2.0039926039747552E177
        -0x4e052e5a1038dbdcL    # -6.217310667649876E-68
    .end array-data

    :array_6
    .array-data 8
        0x3e2c3e5e6d276c91L    # 3.2879910818600668E-9
        -0x1654eb27d9eb0a38L    # -1.0364744686562915E201
    .end array-data

    :array_7
    .array-data 8
        0x67b5d2f7423ca0a5L    # 3.889495841000748E191
        0x3c08f2c062ad5d01L    # 1.6905590472654142E-19
        0x7b65159105d1224eL    # 2.508210200847499E286
    .end array-data
.end method
