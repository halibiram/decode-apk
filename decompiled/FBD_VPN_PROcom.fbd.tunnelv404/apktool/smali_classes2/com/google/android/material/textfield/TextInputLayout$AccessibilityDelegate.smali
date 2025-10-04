.class public Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/TextInputLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityDelegate"
.end annotation


# instance fields
.field private final layout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0
    .param p1    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 18
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-super/range {p0 .. p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 9
    .line 10
    .line 11
    iget-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 12
    .line 13
    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    if-eqz v5, :cond_0

    .line 18
    .line 19
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v5, 0x0

    .line 25
    :goto_0
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 26
    .line 27
    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    iget-object v7, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 32
    .line 33
    invoke-virtual {v7}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    iget-object v8, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 38
    .line 39
    invoke-virtual {v8}, Lcom/google/android/material/textfield/TextInputLayout;->getPlaceholderText()Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    iget-object v9, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 44
    .line 45
    invoke-virtual {v9}, Lcom/google/android/material/textfield/TextInputLayout;->getCounterMaxLength()I

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    iget-object v10, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 50
    .line 51
    invoke-virtual {v10}, Lcom/google/android/material/textfield/TextInputLayout;->getCounterOverflowDescription()Ljava/lang/CharSequence;

    .line 52
    .line 53
    .line 54
    move-result-object v10

    .line 55
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v11

    .line 59
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v12

    .line 63
    iget-object v13, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 64
    .line 65
    invoke-virtual {v13}, Lcom/google/android/material/textfield/TextInputLayout;->isHintExpanded()Z

    .line 66
    .line 67
    .line 68
    move-result v13

    .line 69
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v14

    .line 73
    if-eqz v14, :cond_2

    .line 74
    .line 75
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v15

    .line 79
    if-nez v15, :cond_1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    const/4 v15, 0x0

    .line 83
    goto :goto_2

    .line 84
    :cond_2
    :goto_1
    const/4 v15, 0x1

    .line 85
    :goto_2
    if-nez v12, :cond_3

    .line 86
    .line 87
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    goto :goto_3

    .line 92
    :cond_3
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array v3, v3, [J

    .line 95
    .line 96
    const-wide v16, 0x7cc4382a25031fe6L    # 1.0088669933472786E293

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    aput-wide v16, v3, v4

    .line 102
    .line 103
    invoke-direct {v6, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    :goto_3
    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 111
    .line 112
    invoke-static {v4}, Lcom/google/android/material/textfield/TextInputLayout;->access$400(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/google/android/material/textfield/StartCompoundLayout;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v4, v1}, Lcom/google/android/material/textfield/StartCompoundLayout;->setupAccessibilityNodeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 117
    .line 118
    .line 119
    if-nez v11, :cond_4

    .line 120
    .line 121
    invoke-virtual {v1, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-nez v4, :cond_5

    .line 130
    .line 131
    invoke-virtual {v1, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    if-nez v13, :cond_6

    .line 135
    .line 136
    if-eqz v8, :cond_6

    .line 137
    .line 138
    invoke-static {v3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 143
    .line 144
    new-array v12, v2, [J

    .line 145
    .line 146
    fill-array-data v12, :array_0

    .line 147
    .line 148
    .line 149
    invoke-direct {v6, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-virtual {v1, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_5
    if-eqz v8, :cond_6

    .line 171
    .line 172
    invoke-virtual {v1, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    :cond_6
    :goto_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-nez v4, :cond_9

    .line 180
    .line 181
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 182
    .line 183
    const/16 v6, 0x1a

    .line 184
    .line 185
    if-lt v4, v6, :cond_7

    .line 186
    .line 187
    invoke-virtual {v1, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setHintText(Ljava/lang/CharSequence;)V

    .line 188
    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_7
    if-nez v11, :cond_8

    .line 192
    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 202
    .line 203
    new-array v2, v2, [J

    .line 204
    .line 205
    fill-array-data v2, :array_1

    .line 206
    .line 207
    .line 208
    invoke-direct {v6, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 209
    .line 210
    .line 211
    invoke-static {v6, v4, v3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    :cond_8
    invoke-virtual {v1, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 216
    .line 217
    .line 218
    :goto_5
    invoke-virtual {v1, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setShowingHintText(Z)V

    .line 219
    .line 220
    .line 221
    :cond_9
    if-eqz v5, :cond_a

    .line 222
    .line 223
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-ne v2, v9, :cond_a

    .line 228
    .line 229
    goto :goto_6

    .line 230
    :cond_a
    const/4 v9, -0x1

    .line 231
    :goto_6
    invoke-virtual {v1, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setMaxTextLength(I)V

    .line 232
    .line 233
    .line 234
    if-eqz v15, :cond_c

    .line 235
    .line 236
    if-nez v14, :cond_b

    .line 237
    .line 238
    goto :goto_7

    .line 239
    :cond_b
    move-object v7, v10

    .line 240
    :goto_7
    invoke-virtual {v1, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setError(Ljava/lang/CharSequence;)V

    .line 241
    .line 242
    .line 243
    :cond_c
    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 244
    .line 245
    invoke-static {v2}, Lcom/google/android/material/textfield/TextInputLayout;->access$500(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/google/android/material/textfield/IndicatorViewController;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-virtual {v2}, Lcom/google/android/material/textfield/IndicatorViewController;->getHelperTextView()Landroid/view/View;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    if-eqz v2, :cond_d

    .line 254
    .line 255
    invoke-virtual {v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setLabelFor(Landroid/view/View;)V

    .line 256
    .line 257
    .line 258
    :cond_d
    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 259
    .line 260
    invoke-static {v2}, Lcom/google/android/material/textfield/TextInputLayout;->access$300(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    invoke-virtual {v2}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    move-object/from16 v3, p1

    .line 269
    .line 270
    invoke-virtual {v2, v3, v1}, Lcom/google/android/material/textfield/EndIconDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 271
    .line 272
    .line 273
    return-void

    .line 274
    nop

    .line 275
    :array_0
    .array-data 8
        0xfca60195f837dcfL
        -0x518ea84fa977941bL    # -5.579480928286268E-85
    .end array-data

    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    :array_1
    .array-data 8
        -0x6bc6757f98546ea4L
        0x3a9977af7611a3a9L    # 2.0572499690891737E-26
    .end array-data
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/material/textfield/TextInputLayout;->access$300(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/textfield/EndIconDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
