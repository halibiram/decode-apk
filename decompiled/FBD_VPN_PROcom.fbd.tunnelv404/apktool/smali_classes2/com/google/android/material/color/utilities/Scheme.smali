.class public Lcom/google/android/material/color/utilities/Scheme;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
.end annotation


# instance fields
.field private background:I

.field private error:I

.field private errorContainer:I

.field private inverseOnSurface:I

.field private inversePrimary:I

.field private inverseSurface:I

.field private onBackground:I

.field private onError:I

.field private onErrorContainer:I

.field private onPrimary:I

.field private onPrimaryContainer:I

.field private onSecondary:I

.field private onSecondaryContainer:I

.field private onSurface:I

.field private onSurfaceVariant:I

.field private onTertiary:I

.field private onTertiaryContainer:I

.field private outline:I

.field private outlineVariant:I

.field private primary:I

.field private primaryContainer:I

.field private scrim:I

.field private secondary:I

.field private secondaryContainer:I

.field private shadow:I

.field private surface:I

.field private surfaceVariant:I

.field private tertiary:I

.field private tertiaryContainer:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIIIIIIIIIIIIIIIII)V
    .locals 2

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 3
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    move v1, p2

    .line 4
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    move v1, p3

    .line 5
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    move v1, p4

    .line 6
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    move v1, p5

    .line 7
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    move v1, p6

    .line 8
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    move v1, p7

    .line 9
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    move v1, p8

    .line 10
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    move v1, p9

    .line 11
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    move v1, p10

    .line 12
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    move v1, p11

    .line 13
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    move v1, p12

    .line 14
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    move v1, p13

    .line 15
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    move/from16 v1, p14

    .line 16
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    move/from16 v1, p15

    .line 17
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    move/from16 v1, p16

    .line 18
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    move/from16 v1, p17

    .line 19
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    move/from16 v1, p18

    .line 20
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    move/from16 v1, p19

    .line 21
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    move/from16 v1, p20

    .line 22
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    move/from16 v1, p21

    .line 23
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    move/from16 v1, p22

    .line 24
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    move/from16 v1, p23

    .line 25
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    move/from16 v1, p24

    .line 26
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    move/from16 v1, p25

    .line 27
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    move/from16 v1, p26

    .line 28
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    move/from16 v1, p27

    .line 29
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    move/from16 v1, p28

    .line 30
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    move/from16 v1, p29

    .line 31
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    return-void
.end method

.method public static dark(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/CorePalette;->of(I)Lcom/google/android/material/color/utilities/CorePalette;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/android/material/color/utilities/Scheme;->darkFromCorePalette(Lcom/google/android/material/color/utilities/CorePalette;)Lcom/google/android/material/color/utilities/Scheme;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static darkContent(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/CorePalette;->contentOf(I)Lcom/google/android/material/color/utilities/CorePalette;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/android/material/color/utilities/Scheme;->darkFromCorePalette(Lcom/google/android/material/color/utilities/CorePalette;)Lcom/google/android/material/color/utilities/Scheme;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static darkFromCorePalette(Lcom/google/android/material/color/utilities/CorePalette;)Lcom/google/android/material/color/utilities/Scheme;
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/material/color/utilities/Scheme;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/material/color/utilities/Scheme;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 7
    .line 8
    const/16 v2, 0x50

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withPrimary(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 19
    .line 20
    const/16 v3, 0x14

    .line 21
    .line 22
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnPrimary(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 31
    .line 32
    const/16 v4, 0x1e

    .line 33
    .line 34
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withPrimaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 43
    .line 44
    const/16 v5, 0x5a

    .line 45
    .line 46
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnPrimaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSecondary(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 65
    .line 66
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSecondary(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 75
    .line 76
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSecondaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 85
    .line 86
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSecondaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withTertiary(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 105
    .line 106
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnTertiary(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 115
    .line 116
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withTertiaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 125
    .line 126
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnTertiaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withError(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 145
    .line 146
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnError(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 155
    .line 156
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withErrorContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 165
    .line 166
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnErrorContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 175
    .line 176
    const/16 v6, 0xa

    .line 177
    .line 178
    invoke-virtual {v1, v6}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withBackground(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 187
    .line 188
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnBackground(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 197
    .line 198
    invoke-virtual {v1, v6}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 207
    .line 208
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 217
    .line 218
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSurfaceVariant(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 227
    .line 228
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSurfaceVariant(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 237
    .line 238
    const/16 v2, 0x3c

    .line 239
    .line 240
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOutline(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 249
    .line 250
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOutlineVariant(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 259
    .line 260
    const/4 v2, 0x0

    .line 261
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withShadow(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 270
    .line 271
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withScrim(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 280
    .line 281
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withInverseSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 290
    .line 291
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withInverseOnSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    iget-object p0, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 300
    .line 301
    const/16 v1, 0x28

    .line 302
    .line 303
    invoke-virtual {p0, v1}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 304
    .line 305
    .line 306
    move-result p0

    .line 307
    invoke-virtual {v0, p0}, Lcom/google/android/material/color/utilities/Scheme;->withInversePrimary(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 308
    .line 309
    .line 310
    move-result-object p0

    .line 311
    return-object p0
.end method

.method public static light(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/CorePalette;->of(I)Lcom/google/android/material/color/utilities/CorePalette;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/android/material/color/utilities/Scheme;->lightFromCorePalette(Lcom/google/android/material/color/utilities/CorePalette;)Lcom/google/android/material/color/utilities/Scheme;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static lightContent(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/CorePalette;->contentOf(I)Lcom/google/android/material/color/utilities/CorePalette;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/android/material/color/utilities/Scheme;->lightFromCorePalette(Lcom/google/android/material/color/utilities/CorePalette;)Lcom/google/android/material/color/utilities/Scheme;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static lightFromCorePalette(Lcom/google/android/material/color/utilities/CorePalette;)Lcom/google/android/material/color/utilities/Scheme;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/material/color/utilities/Scheme;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/material/color/utilities/Scheme;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 7
    .line 8
    const/16 v2, 0x28

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withPrimary(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 19
    .line 20
    const/16 v3, 0x64

    .line 21
    .line 22
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnPrimary(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 31
    .line 32
    const/16 v4, 0x5a

    .line 33
    .line 34
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withPrimaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 43
    .line 44
    const/16 v5, 0xa

    .line 45
    .line 46
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnPrimaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSecondary(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 65
    .line 66
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSecondary(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 75
    .line 76
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSecondaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 85
    .line 86
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSecondaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withTertiary(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 105
    .line 106
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnTertiary(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 115
    .line 116
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withTertiaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 125
    .line 126
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnTertiaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withError(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 145
    .line 146
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnError(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 155
    .line 156
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withErrorContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 165
    .line 166
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnErrorContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 175
    .line 176
    const/16 v2, 0x63

    .line 177
    .line 178
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withBackground(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 187
    .line 188
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnBackground(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 197
    .line 198
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 207
    .line 208
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 217
    .line 218
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSurfaceVariant(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 227
    .line 228
    const/16 v2, 0x1e

    .line 229
    .line 230
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSurfaceVariant(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 239
    .line 240
    const/16 v2, 0x32

    .line 241
    .line 242
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOutline(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 251
    .line 252
    const/16 v2, 0x50

    .line 253
    .line 254
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOutlineVariant(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 263
    .line 264
    const/4 v3, 0x0

    .line 265
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withShadow(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 274
    .line 275
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withScrim(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 284
    .line 285
    const/16 v3, 0x14

    .line 286
    .line 287
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withInverseSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 296
    .line 297
    const/16 v3, 0x5f

    .line 298
    .line 299
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withInverseOnSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    iget-object p0, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 308
    .line 309
    invoke-virtual {p0, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    .line 310
    .line 311
    .line 312
    move-result p0

    .line 313
    invoke-virtual {v0, p0}, Lcom/google/android/material/color/utilities/Scheme;->withInversePrimary(I)Lcom/google/android/material/color/utilities/Scheme;

    .line 314
    .line 315
    .line 316
    move-result-object p0

    .line 317
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/material/color/utilities/Scheme;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    return v2

    .line 18
    :cond_2
    check-cast p1, Lcom/google/android/material/color/utilities/Scheme;

    .line 19
    .line 20
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    .line 21
    .line 22
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    .line 28
    .line 29
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    .line 35
    .line 36
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    .line 37
    .line 38
    if-eq v1, v3, :cond_5

    .line 39
    .line 40
    return v2

    .line 41
    :cond_5
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    .line 42
    .line 43
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    .line 44
    .line 45
    if-eq v1, v3, :cond_6

    .line 46
    .line 47
    return v2

    .line 48
    :cond_6
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    .line 49
    .line 50
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    .line 51
    .line 52
    if-eq v1, v3, :cond_7

    .line 53
    .line 54
    return v2

    .line 55
    :cond_7
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    .line 56
    .line 57
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    .line 58
    .line 59
    if-eq v1, v3, :cond_8

    .line 60
    .line 61
    return v2

    .line 62
    :cond_8
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    .line 63
    .line 64
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    .line 65
    .line 66
    if-eq v1, v3, :cond_9

    .line 67
    .line 68
    return v2

    .line 69
    :cond_9
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    .line 70
    .line 71
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    .line 72
    .line 73
    if-eq v1, v3, :cond_a

    .line 74
    .line 75
    return v2

    .line 76
    :cond_a
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    .line 77
    .line 78
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    .line 79
    .line 80
    if-eq v1, v3, :cond_b

    .line 81
    .line 82
    return v2

    .line 83
    :cond_b
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    .line 84
    .line 85
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    .line 86
    .line 87
    if-eq v1, v3, :cond_c

    .line 88
    .line 89
    return v2

    .line 90
    :cond_c
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    .line 91
    .line 92
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    .line 93
    .line 94
    if-eq v1, v3, :cond_d

    .line 95
    .line 96
    return v2

    .line 97
    :cond_d
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    .line 98
    .line 99
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    .line 100
    .line 101
    if-eq v1, v3, :cond_e

    .line 102
    .line 103
    return v2

    .line 104
    :cond_e
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    .line 105
    .line 106
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->error:I

    .line 107
    .line 108
    if-eq v1, v3, :cond_f

    .line 109
    .line 110
    return v2

    .line 111
    :cond_f
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    .line 112
    .line 113
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    .line 114
    .line 115
    if-eq v1, v3, :cond_10

    .line 116
    .line 117
    return v2

    .line 118
    :cond_10
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    .line 119
    .line 120
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    .line 121
    .line 122
    if-eq v1, v3, :cond_11

    .line 123
    .line 124
    return v2

    .line 125
    :cond_11
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    .line 126
    .line 127
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    .line 128
    .line 129
    if-eq v1, v3, :cond_12

    .line 130
    .line 131
    return v2

    .line 132
    :cond_12
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    .line 133
    .line 134
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->background:I

    .line 135
    .line 136
    if-eq v1, v3, :cond_13

    .line 137
    .line 138
    return v2

    .line 139
    :cond_13
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    .line 140
    .line 141
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    .line 142
    .line 143
    if-eq v1, v3, :cond_14

    .line 144
    .line 145
    return v2

    .line 146
    :cond_14
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    .line 147
    .line 148
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    .line 149
    .line 150
    if-eq v1, v3, :cond_15

    .line 151
    .line 152
    return v2

    .line 153
    :cond_15
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    .line 154
    .line 155
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    .line 156
    .line 157
    if-eq v1, v3, :cond_16

    .line 158
    .line 159
    return v2

    .line 160
    :cond_16
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    .line 161
    .line 162
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    .line 163
    .line 164
    if-eq v1, v3, :cond_17

    .line 165
    .line 166
    return v2

    .line 167
    :cond_17
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    .line 168
    .line 169
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    .line 170
    .line 171
    if-eq v1, v3, :cond_18

    .line 172
    .line 173
    return v2

    .line 174
    :cond_18
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    .line 175
    .line 176
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    .line 177
    .line 178
    if-eq v1, v3, :cond_19

    .line 179
    .line 180
    return v2

    .line 181
    :cond_19
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    .line 182
    .line 183
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    .line 184
    .line 185
    if-eq v1, v3, :cond_1a

    .line 186
    .line 187
    return v2

    .line 188
    :cond_1a
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    .line 189
    .line 190
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    .line 191
    .line 192
    if-eq v1, v3, :cond_1b

    .line 193
    .line 194
    return v2

    .line 195
    :cond_1b
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    .line 196
    .line 197
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    .line 198
    .line 199
    if-eq v1, v3, :cond_1c

    .line 200
    .line 201
    return v2

    .line 202
    :cond_1c
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    .line 203
    .line 204
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    .line 205
    .line 206
    if-eq v1, v3, :cond_1d

    .line 207
    .line 208
    return v2

    .line 209
    :cond_1d
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    .line 210
    .line 211
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    .line 212
    .line 213
    if-eq v1, v3, :cond_1e

    .line 214
    .line 215
    return v2

    .line 216
    :cond_1e
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    .line 217
    .line 218
    iget p1, p1, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    .line 219
    .line 220
    if-eq v1, p1, :cond_1f

    .line 221
    .line 222
    return v2

    .line 223
    :cond_1f
    return v0
.end method

.method public getBackground()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    .line 2
    .line 3
    return v0
.end method

.method public getError()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    .line 2
    .line 3
    return v0
.end method

.method public getErrorContainer()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    .line 2
    .line 3
    return v0
.end method

.method public getInverseOnSurface()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    .line 2
    .line 3
    return v0
.end method

.method public getInversePrimary()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    .line 2
    .line 3
    return v0
.end method

.method public getInverseSurface()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    .line 2
    .line 3
    return v0
.end method

.method public getOnBackground()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    .line 2
    .line 3
    return v0
.end method

.method public getOnError()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    .line 2
    .line 3
    return v0
.end method

.method public getOnErrorContainer()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    .line 2
    .line 3
    return v0
.end method

.method public getOnPrimary()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    .line 2
    .line 3
    return v0
.end method

.method public getOnPrimaryContainer()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    .line 2
    .line 3
    return v0
.end method

.method public getOnSecondary()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    .line 2
    .line 3
    return v0
.end method

.method public getOnSecondaryContainer()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    .line 2
    .line 3
    return v0
.end method

.method public getOnSurface()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    .line 2
    .line 3
    return v0
.end method

.method public getOnSurfaceVariant()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    .line 2
    .line 3
    return v0
.end method

.method public getOnTertiary()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    .line 2
    .line 3
    return v0
.end method

.method public getOnTertiaryContainer()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    .line 2
    .line 3
    return v0
.end method

.method public getOutline()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    .line 2
    .line 3
    return v0
.end method

.method public getOutlineVariant()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    .line 2
    .line 3
    return v0
.end method

.method public getPrimary()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    .line 2
    .line 3
    return v0
.end method

.method public getPrimaryContainer()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    .line 2
    .line 3
    return v0
.end method

.method public getScrim()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    .line 2
    .line 3
    return v0
.end method

.method public getSecondary()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    .line 2
    .line 3
    return v0
.end method

.method public getSecondaryContainer()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    .line 2
    .line 3
    return v0
.end method

.method public getShadow()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    .line 2
    .line 3
    return v0
.end method

.method public getSurface()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    .line 2
    .line 3
    return v0
.end method

.method public getSurfaceVariant()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    .line 2
    .line 3
    return v0
.end method

.method public getTertiary()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    .line 2
    .line 3
    return v0
.end method

.method public getTertiaryContainer()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    mul-int/lit8 v0, v0, 0x1f

    .line 11
    .line 12
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    .line 13
    .line 14
    add-int/2addr v0, v1

    .line 15
    mul-int/lit8 v0, v0, 0x1f

    .line 16
    .line 17
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    .line 18
    .line 19
    add-int/2addr v0, v1

    .line 20
    mul-int/lit8 v0, v0, 0x1f

    .line 21
    .line 22
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    .line 23
    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    .line 28
    .line 29
    add-int/2addr v0, v1

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    .line 33
    .line 34
    add-int/2addr v0, v1

    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    .line 37
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    .line 38
    .line 39
    add-int/2addr v0, v1

    .line 40
    mul-int/lit8 v0, v0, 0x1f

    .line 41
    .line 42
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    .line 43
    .line 44
    add-int/2addr v0, v1

    .line 45
    mul-int/lit8 v0, v0, 0x1f

    .line 46
    .line 47
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    .line 48
    .line 49
    add-int/2addr v0, v1

    .line 50
    mul-int/lit8 v0, v0, 0x1f

    .line 51
    .line 52
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    .line 53
    .line 54
    add-int/2addr v0, v1

    .line 55
    mul-int/lit8 v0, v0, 0x1f

    .line 56
    .line 57
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    .line 58
    .line 59
    add-int/2addr v0, v1

    .line 60
    mul-int/lit8 v0, v0, 0x1f

    .line 61
    .line 62
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    .line 63
    .line 64
    add-int/2addr v0, v1

    .line 65
    mul-int/lit8 v0, v0, 0x1f

    .line 66
    .line 67
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    .line 68
    .line 69
    add-int/2addr v0, v1

    .line 70
    mul-int/lit8 v0, v0, 0x1f

    .line 71
    .line 72
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    .line 73
    .line 74
    add-int/2addr v0, v1

    .line 75
    mul-int/lit8 v0, v0, 0x1f

    .line 76
    .line 77
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    .line 78
    .line 79
    add-int/2addr v0, v1

    .line 80
    mul-int/lit8 v0, v0, 0x1f

    .line 81
    .line 82
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    .line 83
    .line 84
    add-int/2addr v0, v1

    .line 85
    mul-int/lit8 v0, v0, 0x1f

    .line 86
    .line 87
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    .line 88
    .line 89
    add-int/2addr v0, v1

    .line 90
    mul-int/lit8 v0, v0, 0x1f

    .line 91
    .line 92
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    .line 93
    .line 94
    add-int/2addr v0, v1

    .line 95
    mul-int/lit8 v0, v0, 0x1f

    .line 96
    .line 97
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    .line 98
    .line 99
    add-int/2addr v0, v1

    .line 100
    mul-int/lit8 v0, v0, 0x1f

    .line 101
    .line 102
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    .line 103
    .line 104
    add-int/2addr v0, v1

    .line 105
    mul-int/lit8 v0, v0, 0x1f

    .line 106
    .line 107
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    .line 108
    .line 109
    add-int/2addr v0, v1

    .line 110
    mul-int/lit8 v0, v0, 0x1f

    .line 111
    .line 112
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    .line 113
    .line 114
    add-int/2addr v0, v1

    .line 115
    mul-int/lit8 v0, v0, 0x1f

    .line 116
    .line 117
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    .line 118
    .line 119
    add-int/2addr v0, v1

    .line 120
    mul-int/lit8 v0, v0, 0x1f

    .line 121
    .line 122
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    .line 123
    .line 124
    add-int/2addr v0, v1

    .line 125
    mul-int/lit8 v0, v0, 0x1f

    .line 126
    .line 127
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    .line 128
    .line 129
    add-int/2addr v0, v1

    .line 130
    mul-int/lit8 v0, v0, 0x1f

    .line 131
    .line 132
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    .line 133
    .line 134
    add-int/2addr v0, v1

    .line 135
    mul-int/lit8 v0, v0, 0x1f

    .line 136
    .line 137
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    .line 138
    .line 139
    add-int/2addr v0, v1

    .line 140
    mul-int/lit8 v0, v0, 0x1f

    .line 141
    .line 142
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    .line 143
    .line 144
    add-int/2addr v0, v1

    .line 145
    mul-int/lit8 v0, v0, 0x1f

    .line 146
    .line 147
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    .line 148
    .line 149
    add-int/2addr v0, v1

    .line 150
    return v0
.end method

.method public setBackground(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    .line 2
    .line 3
    return-void
.end method

.method public setError(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    .line 2
    .line 3
    return-void
.end method

.method public setErrorContainer(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    .line 2
    .line 3
    return-void
.end method

.method public setInverseOnSurface(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    .line 2
    .line 3
    return-void
.end method

.method public setInversePrimary(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    .line 2
    .line 3
    return-void
.end method

.method public setInverseSurface(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    .line 2
    .line 3
    return-void
.end method

.method public setOnBackground(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    .line 2
    .line 3
    return-void
.end method

.method public setOnError(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    .line 2
    .line 3
    return-void
.end method

.method public setOnErrorContainer(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    .line 2
    .line 3
    return-void
.end method

.method public setOnPrimary(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    .line 2
    .line 3
    return-void
.end method

.method public setOnPrimaryContainer(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    .line 2
    .line 3
    return-void
.end method

.method public setOnSecondary(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    .line 2
    .line 3
    return-void
.end method

.method public setOnSecondaryContainer(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    .line 2
    .line 3
    return-void
.end method

.method public setOnSurface(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    .line 2
    .line 3
    return-void
.end method

.method public setOnSurfaceVariant(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    .line 2
    .line 3
    return-void
.end method

.method public setOnTertiary(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    .line 2
    .line 3
    return-void
.end method

.method public setOnTertiaryContainer(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    .line 2
    .line 3
    return-void
.end method

.method public setOutline(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    .line 2
    .line 3
    return-void
.end method

.method public setOutlineVariant(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    .line 2
    .line 3
    return-void
.end method

.method public setPrimary(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    .line 2
    .line 3
    return-void
.end method

.method public setPrimaryContainer(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    .line 2
    .line 3
    return-void
.end method

.method public setScrim(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    .line 2
    .line 3
    return-void
.end method

.method public setSecondary(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    .line 2
    .line 3
    return-void
.end method

.method public setSecondaryContainer(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    .line 2
    .line 3
    return-void
.end method

.method public setShadow(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    .line 2
    .line 3
    return-void
.end method

.method public setSurface(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    .line 2
    .line 3
    return-void
.end method

.method public setSurfaceVariant(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    .line 2
    .line 3
    return-void
.end method

.method public setTertiary(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    .line 2
    .line 3
    return-void
.end method

.method public setTertiaryContainer(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    new-array v3, v2, [J

    .line 10
    .line 11
    fill-array-data v3, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    new-array v3, v2, [J

    .line 32
    .line 33
    fill-array-data v3, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    const/4 v3, 0x4

    .line 54
    new-array v4, v3, [J

    .line 55
    .line 56
    fill-array-data v4, :array_2

    .line 57
    .line 58
    .line 59
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    new-array v4, v3, [J

    .line 77
    .line 78
    fill-array-data v4, :array_3

    .line 79
    .line 80
    .line 81
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    new-array v4, v2, [J

    .line 99
    .line 100
    fill-array-data v4, :array_4

    .line 101
    .line 102
    .line 103
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 119
    .line 120
    new-array v4, v2, [J

    .line 121
    .line 122
    fill-array-data v4, :array_5

    .line 123
    .line 124
    .line 125
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 141
    .line 142
    new-array v4, v3, [J

    .line 143
    .line 144
    fill-array-data v4, :array_6

    .line 145
    .line 146
    .line 147
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 163
    .line 164
    new-array v4, v3, [J

    .line 165
    .line 166
    fill-array-data v4, :array_7

    .line 167
    .line 168
    .line 169
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 185
    .line 186
    new-array v4, v2, [J

    .line 187
    .line 188
    fill-array-data v4, :array_8

    .line 189
    .line 190
    .line 191
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 207
    .line 208
    new-array v4, v2, [J

    .line 209
    .line 210
    fill-array-data v4, :array_9

    .line 211
    .line 212
    .line 213
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 229
    .line 230
    new-array v4, v3, [J

    .line 231
    .line 232
    fill-array-data v4, :array_a

    .line 233
    .line 234
    .line 235
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    .line 246
    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 251
    .line 252
    new-array v4, v3, [J

    .line 253
    .line 254
    fill-array-data v4, :array_b

    .line 255
    .line 256
    .line 257
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    .line 268
    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 273
    .line 274
    const/4 v4, 0x2

    .line 275
    new-array v5, v4, [J

    .line 276
    .line 277
    fill-array-data v5, :array_c

    .line 278
    .line 279
    .line 280
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    .line 291
    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 296
    .line 297
    new-array v5, v2, [J

    .line 298
    .line 299
    fill-array-data v5, :array_d

    .line 300
    .line 301
    .line 302
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    .line 313
    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 318
    .line 319
    new-array v5, v3, [J

    .line 320
    .line 321
    fill-array-data v5, :array_e

    .line 322
    .line 323
    .line 324
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    .line 335
    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 340
    .line 341
    new-array v5, v3, [J

    .line 342
    .line 343
    fill-array-data v5, :array_f

    .line 344
    .line 345
    .line 346
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    .line 357
    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 362
    .line 363
    new-array v5, v2, [J

    .line 364
    .line 365
    fill-array-data v5, :array_10

    .line 366
    .line 367
    .line 368
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    .line 379
    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 384
    .line 385
    new-array v5, v2, [J

    .line 386
    .line 387
    fill-array-data v5, :array_11

    .line 388
    .line 389
    .line 390
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    .line 401
    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 406
    .line 407
    new-array v5, v2, [J

    .line 408
    .line 409
    fill-array-data v5, :array_12

    .line 410
    .line 411
    .line 412
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    .line 423
    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 428
    .line 429
    new-array v5, v2, [J

    .line 430
    .line 431
    fill-array-data v5, :array_13

    .line 432
    .line 433
    .line 434
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    .line 445
    .line 446
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 450
    .line 451
    new-array v5, v3, [J

    .line 452
    .line 453
    fill-array-data v5, :array_14

    .line 454
    .line 455
    .line 456
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    .line 467
    .line 468
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 472
    .line 473
    new-array v5, v3, [J

    .line 474
    .line 475
    fill-array-data v5, :array_15

    .line 476
    .line 477
    .line 478
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    .line 489
    .line 490
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 494
    .line 495
    new-array v5, v2, [J

    .line 496
    .line 497
    fill-array-data v5, :array_16

    .line 498
    .line 499
    .line 500
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    .line 511
    .line 512
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 516
    .line 517
    new-array v5, v3, [J

    .line 518
    .line 519
    fill-array-data v5, :array_17

    .line 520
    .line 521
    .line 522
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    .line 533
    .line 534
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 538
    .line 539
    new-array v2, v2, [J

    .line 540
    .line 541
    fill-array-data v2, :array_18

    .line 542
    .line 543
    .line 544
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v1

    .line 551
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    .line 555
    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 560
    .line 561
    new-array v2, v4, [J

    .line 562
    .line 563
    fill-array-data v2, :array_19

    .line 564
    .line 565
    .line 566
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    .line 577
    .line 578
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 582
    .line 583
    new-array v2, v3, [J

    .line 584
    .line 585
    fill-array-data v2, :array_1a

    .line 586
    .line 587
    .line 588
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v1

    .line 595
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    .line 599
    .line 600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 604
    .line 605
    new-array v2, v3, [J

    .line 606
    .line 607
    fill-array-data v2, :array_1b

    .line 608
    .line 609
    .line 610
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v1

    .line 617
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    .line 621
    .line 622
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 626
    .line 627
    new-array v2, v3, [J

    .line 628
    .line 629
    fill-array-data v2, :array_1c

    .line 630
    .line 631
    .line 632
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 633
    .line 634
    .line 635
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v1

    .line 639
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    .line 643
    .line 644
    const/16 v2, 0x7d

    .line 645
    .line 646
    invoke-static {v0, v1, v2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    return-object v0

    .line 651
    :array_0
    .array-data 8
        0x7793f69b4c33251fL    # 1.0299322258718067E268
        -0x33fc0164ec0a9efcL    # -1.5688481046042971E58
        0x34cf33e8375bbab2L    # 2.545094035889103E-54
    .end array-data

    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    :array_1
    .array-data 8
        0x44e10ecdb3376743L    # 6.444264550202492E23
        -0x16c67b42bc342053L    # -7.630140210809023E198
        0x16bc11333835b851L
    .end array-data

    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    :array_2
    .array-data 8
        -0x7c3803e6f64dd51dL
        0x7335fb654def0b61L    # 9.606030306129836E246
        -0x436c9cf6a75aa5e8L    # -6.726168706314601E-17
        -0x1db2443406e81712L    # -3.424481748807404E165
    .end array-data

    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    :array_3
    .array-data 8
        0x7771ea56bf6b00dcL    # 2.31069348981702E267
        -0x617d44e4311d059eL
        0x21746b83b77f3bb3L
        0x6ea05b06af77abe4L
    .end array-data

    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    :array_4
    .array-data 8
        0x4f57e4df27845b48L    # 1.6886838754682229E74
        -0x40c2f3fd93f36b6L    # -1.206922544286538E289
        -0x7bdd6f61c9b21ad9L    # -9.52504665511135E-289
    .end array-data

    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    :array_5
    .array-data 8
        -0xd90d3365a47e321L    # -1.6630002334007556E243
        0x7c7531d2d73c86bfL    # 3.3047721700478877E291
        0x15bff13fd37a6667L    # 6.367518604894508E-204
    .end array-data

    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    :array_6
    .array-data 8
        0x1f11889379f16df2L    # 4.988510876667674E-159
        -0x7124db04683eb1b4L
        -0x404963dc69abe642L    # -0.0883199922574027
        -0x264020d7db79ad07L    # -2.1068981671001134E124
    .end array-data

    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    :array_7
    .array-data 8
        -0x502af0557e8c551eL    # -2.842000530702513E-78
        0x68fd0e234333670dL    # 5.429769882142559E197
        -0xe13cba7700817c5L    # -5.8771204813887074E240
        -0x1ae49dbe84d8729bL    # -1.1096636018186701E179
    .end array-data

    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    :array_8
    .array-data 8
        0x1095d02aa1b0dcaaL    # 8.992111843011667E-229
        -0x4411530b0af4be3fL    # -5.1966509353419736E-20
        0x5ce7344a3641c49aL    # 3.4541061807044513E139
    .end array-data

    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    :array_9
    .array-data 8
        0x15de304d2126705bL    # 2.407171424036135E-203
        -0x1b75a355af156bb1L    # -2.086437621700512E176
        -0x7703fa658db917a9L
    .end array-data

    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    :array_a
    .array-data 8
        -0x5ef200d8b6e6d303L
        -0x79c7afe9d5726835L
        -0x4082a65df63c0490L    # -0.007165558778296041
        -0x43fb19c62139d340L    # -1.4161930450869342E-19
    .end array-data

    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    :array_b
    .array-data 8
        -0x142fbc2d0333d261L    # -2.1388946292720664E211
        0x7a66bb1e34aa5e75L    # 4.1261324144413644E281
        -0x48ffa3ab9d4ff1b0L    # -9.170468562192732E-44
        0x57dadea1d120473aL    # 1.6542474641051625E115
    .end array-data

    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    :array_c
    .array-data 8
        0x6fc55ee2d0d32bcbL    # 2.592056120065314E230
        0x47e183876cbce08dL    # 1.862385084576346E38
    .end array-data

    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    :array_d
    .array-data 8
        0x62115b57e09e4987L    # 2.498777292060342E164
        0x548acaddcb300bfbL    # 1.831306209039234E99
        -0x151714c901dae870L    # -1.0000329278231406E207
    .end array-data

    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    :array_e
    .array-data 8
        -0x4abfe381158263f0L    # -3.364198830892796E-52
        -0x68fbf7b493be7a52L    # -8.374634455077919E-198
        0x473d9cba2ced7831L    # 1.5375541513833075E35
        -0x65cd9b3706b5bdb7L
    .end array-data

    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    :array_f
    .array-data 8
        -0x2f5baa4a23bca8ddL    # -3.013900411384724E80
        -0x7a179bbb22493fbaL    # -3.359353332156674E-280
        0x7f5520262170ccd1L    # 2.3179512585895552E305
        -0x2248c79e4cc571aaL    # -2.8315528519462325E143
    .end array-data

    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    :array_10
    .array-data 8
        0x6fb64b36a3ed17c1L    # 1.3520129578218348E230
        -0x616d7f1f6df5a23aL
        -0x1e9b5faf80067db5L    # -1.449931611996415E161
    .end array-data

    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    :array_11
    .array-data 8
        0x3c28f3630da1769fL    # 6.762908967260832E-19
        -0x7c11bdea157e16b5L    # -9.702787307863027E-290
        -0x271feb02bbc121d6L    # -1.297741110394984E120
    .end array-data

    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    :array_12
    .array-data 8
        -0x519114dc49f98518L    # -4.973588425970095E-85
        -0x40a48c92724e23b7L    # -0.0016754693849898741
        0x16d47035cae0082fL
    .end array-data

    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    :array_13
    .array-data 8
        0x6e696a9f6ca587c4L    # 7.349917389787885E223
        0x20dd19948e95255bL
        -0x1127d970d0564171L    # -8.939332517443647E225
    .end array-data

    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    :array_14
    .array-data 8
        0xa350edad5abca9fL
        -0x24f5934af03b2134L    # -3.6633396176371416E130
        0x13ca5617091c82a1L    # 2.444711762516629E-213
        0x356a93b989e0a6cbL    # 2.2198187788038012E-51
    .end array-data

    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    :array_15
    .array-data 8
        -0x493fd27bb88aca8bL    # -5.667481458212722E-45
        -0x77098eeaf6144058L
        0x5697d8fcff094f10L    # 1.4001782139959016E109
        -0x752a83027fc00103L
    .end array-data

    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    :array_16
    .array-data 8
        -0x752fce20df7e50f9L
        -0x2dc68dbf564d9c4dL    # -1.2655035861466491E88
        -0xc4dfc139e9b09e8L
    .end array-data

    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    :array_17
    .array-data 8
        0x394c3ade155731b3L    # 1.0873781677859176E-32
        0x183d6be02f3aa5c4L    # 6.448607664105177E-192
        -0x1c0118980d48551cL    # -4.777175864017307E173
        -0x4d4980bcb18a9affL    # -2.136229343120394E-64
    .end array-data

    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    :array_18
    .array-data 8
        0x1727f9211d201143L    # 4.008834805150079E-197
        0x58aa22dec210ce0bL    # 1.3181685352930663E119
        0x2b5e4f442ead623eL    # 8.66088241119621E-100
    .end array-data

    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    :array_19
    .array-data 8
        -0x291a1cb8839183f6L    # -4.112356220002615E110
        -0x753da7c5bcd477b5L    # -7.63594650856631E-257
    .end array-data

    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    :array_1a
    .array-data 8
        0x54d9952f85607be0L    # 5.595590239684918E100
        -0x77c64eef2bc30832L
        -0x39a569429d52f955L    # -8.426335719230657E30
        -0x460c1c828d558fecL
    .end array-data

    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    :array_1b
    .array-data 8
        0xc7a772d1c6647fL
        -0x2b2ab004c3c43ba3L    # -4.6615622050605814E100
        -0x2b4b7a2f6f9a446fL    # -1.1222080095442187E100
        -0x1b88b322ce807b21L    # -9.220576355548698E175
    .end array-data

    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    :array_1c
    .array-data 8
        -0x46b19bae2f65dfefL    # -1.1706523807708982E-32
        0x1a10442ac8de50aL
        0x6684aa7a4fdf6efaL    # 7.024934374453019E185
        -0x6adfc78cbac5c405L    # -6.315350557927851E-207
    .end array-data
.end method

.method public withBackground(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    .line 2
    .line 3
    return-object p0
.end method

.method public withError(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    .line 2
    .line 3
    return-object p0
.end method

.method public withErrorContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    .line 2
    .line 3
    return-object p0
.end method

.method public withInverseOnSurface(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    .line 2
    .line 3
    return-object p0
.end method

.method public withInversePrimary(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    .line 2
    .line 3
    return-object p0
.end method

.method public withInverseSurface(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    .line 2
    .line 3
    return-object p0
.end method

.method public withOnBackground(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    .line 2
    .line 3
    return-object p0
.end method

.method public withOnError(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    .line 2
    .line 3
    return-object p0
.end method

.method public withOnErrorContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    .line 2
    .line 3
    return-object p0
.end method

.method public withOnPrimary(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    .line 2
    .line 3
    return-object p0
.end method

.method public withOnPrimaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    .line 2
    .line 3
    return-object p0
.end method

.method public withOnSecondary(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    .line 2
    .line 3
    return-object p0
.end method

.method public withOnSecondaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    .line 2
    .line 3
    return-object p0
.end method

.method public withOnSurface(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    .line 2
    .line 3
    return-object p0
.end method

.method public withOnSurfaceVariant(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    .line 2
    .line 3
    return-object p0
.end method

.method public withOnTertiary(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    .line 2
    .line 3
    return-object p0
.end method

.method public withOnTertiaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    .line 2
    .line 3
    return-object p0
.end method

.method public withOutline(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    .line 2
    .line 3
    return-object p0
.end method

.method public withOutlineVariant(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    .line 2
    .line 3
    return-object p0
.end method

.method public withPrimary(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    .line 2
    .line 3
    return-object p0
.end method

.method public withPrimaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    .line 2
    .line 3
    return-object p0
.end method

.method public withScrim(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    .line 2
    .line 3
    return-object p0
.end method

.method public withSecondary(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    .line 2
    .line 3
    return-object p0
.end method

.method public withSecondaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    .line 2
    .line 3
    return-object p0
.end method

.method public withShadow(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    .line 2
    .line 3
    return-object p0
.end method

.method public withSurface(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    .line 2
    .line 3
    return-object p0
.end method

.method public withSurfaceVariant(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    .line 2
    .line 3
    return-object p0
.end method

.method public withTertiary(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    .line 2
    .line 3
    return-object p0
.end method

.method public withTertiaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    .line 2
    .line 3
    return-object p0
.end method
