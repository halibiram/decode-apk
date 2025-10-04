.class public Lcom/google/android/material/textfield/TextInputEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "SourceFile"


# instance fields
.field private final parentRect:Landroid/graphics/Rect;

.field private textInputLayoutFocusedRectEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->editTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/textfield/TextInputEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputEditText;->parentRect:Landroid/graphics/Rect;

    .line 5
    sget-object v4, Lcom/google/android/material/R$styleable;->TextInputEditText:[I

    sget v6, Lcom/google/android/material/R$style;->Widget_Design_TextInputEditText:I

    new-array v7, v0, [I

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    .line 6
    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    sget p2, Lcom/google/android/material/R$styleable;->TextInputEditText_textInputLayoutFocusedRectEnabled:I

    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 9
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputEditText;->setTextInputLayoutFocusedRectEnabled(Z)V

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getAccessibilityNodeInfoText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;
    .locals 7
    .param p1    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v4, v1, [J

    .line 29
    .line 30
    const-wide v5, 0x3299ffe12f318254L    # 6.172007412086165E-65

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    aput-wide v5, v4, v0

    .line 36
    .line 37
    invoke-direct {p1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :goto_0
    if-nez v3, :cond_2

    .line 45
    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_1

    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 66
    .line 67
    const/4 v2, 0x2

    .line 68
    new-array v2, v2, [J

    .line 69
    .line 70
    fill-array-data v2, :array_0

    .line 71
    .line 72
    .line 73
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-static {v1, v0, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    new-array v1, v1, [J

    .line 84
    .line 85
    const-wide v4, 0x14774835d5308588L

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    aput-wide v4, v1, v0

    .line 91
    .line 92
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    :goto_1
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    return-object p1

    .line 107
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-nez v2, :cond_3

    .line 112
    .line 113
    return-object p1

    .line 114
    :cond_3
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 115
    .line 116
    new-array v1, v1, [J

    .line 117
    .line 118
    const-wide v2, -0x3b03cf3a957752fcL    # -2.130014889096605E24

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    aput-wide v2, v1, v0

    .line 124
    .line 125
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    return-object p1

    .line 133
    :array_0
    .array-data 8
        0x79817512ad6fb063L    # 1.9341203893844255E277
        -0x34258dc691bec7cL    # -7.397803346542274E292
    .end array-data
.end method

.method private getHintFromLayout()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method private getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    instance-of v1, v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    return-object v0
.end method

.method private shouldUseTextInputLayoutFocusedRect(Lcom/google/android/material/textfield/TextInputLayout;)Z
    .locals 0
    .param p1    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputEditText;->textInputLayoutFocusedRectEnabled:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method


# virtual methods
.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputEditText;->shouldUseTextInputLayoutFocusedRect(Lcom/google/android/material/textfield/TextInputLayout;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputEditText;->parentRect:Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputEditText;->parentRect:Landroid/graphics/Rect;

    .line 22
    .line 23
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 24
    .line 25
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Point;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputEditText;->shouldUseTextInputLayoutFocusedRect(Lcom/google/android/material/textfield/TextInputLayout;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    neg-int v0, v0

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    neg-int v1, v1

    .line 29
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->offset(II)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return p1

    .line 33
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    invoke-super {p0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public isTextInputLayoutFocusedRectEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputEditText;->textInputLayoutFocusedRectEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-super {p0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lcom/google/android/material/internal/ManufacturerUtils;->isMeizuDevice()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    new-array v1, v1, [J

    .line 32
    .line 33
    const-wide v2, -0x2c535e1b7d9b4b91L    # -1.194500396696034E95

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    aput-wide v2, v1, v4

    .line 40
    .line 41
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getHintFromLayout()Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 16
    .line 17
    :cond_0
    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v2, 0x17

    .line 11
    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputEditText;->getAccessibilityNodeInfoText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .locals 5
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputEditText;->shouldUseTextInputLayoutFocusedRect(Lcom/google/android/material/textfield/TextInputLayout;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    sub-int/2addr v0, v1

    .line 22
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputEditText;->parentRect:Landroid/graphics/Rect;

    .line 23
    .line 24
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 25
    .line 26
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 27
    .line 28
    iget v4, p1, Landroid/graphics/Rect;->right:I

    .line 29
    .line 30
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 31
    .line 32
    add-int/2addr p1, v0

    .line 33
    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputEditText;->parentRect:Landroid/graphics/Rect;

    .line 37
    .line 38
    invoke-super {p0, p1}, Landroid/widget/EditText;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1

    .line 43
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    return p1
.end method

.method public setTextInputLayoutFocusedRectEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputEditText;->textInputLayoutFocusedRectEnabled:Z

    .line 2
    .line 3
    return-void
.end method
