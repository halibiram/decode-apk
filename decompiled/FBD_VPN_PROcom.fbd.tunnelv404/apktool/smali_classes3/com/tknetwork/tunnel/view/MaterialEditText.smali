.class public Lcom/tknetwork/tunnel/view/MaterialEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "SourceFile"


# static fields
.field private static final IS_SHOWING_PASSWORD_STATE_KEY:Ljava/lang/String;

.field private static final SUPER_STATE_KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final DEFAULT_ADDITIONAL_TOUCH_TARGET_SIZE:I

.field private additionalTouchTargetSize:I

.field private drawableEnd:Landroid/graphics/drawable/Drawable;

.field private isShowingPassword:Z

.field private leftToRight:Z

.field private tintColor:I

.field private visibilityIndicatorHide:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private visibilityIndicatorShow:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x5

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
    sput-object v0, Lcom/tknetwork/tunnel/view/MaterialEditText;->IS_SHOWING_PASSWORD_STATE_KEY:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    new-array v1, v1, [J

    .line 22
    .line 23
    fill-array-data v1, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/tknetwork/tunnel/view/MaterialEditText;->SUPER_STATE_KEY:Ljava/lang/String;

    .line 34
    .line 35
    const-string v0, "MaterialEditText"

    .line 36
    .line 37
    sput-object v0, Lcom/tknetwork/tunnel/view/MaterialEditText;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        -0x166fa85f7b1fd5dfL    # -3.1273041722319946E200
        -0x4c69a5b89629a35fL    # -3.477522400798074E-60
        -0x675a4e02852c27d0L    # -6.086643773507074E-190
        0x4e95728eed16a483L    # 3.7006289770151066E70
        0x70798567e15ed165L    # 6.339519176171122E233
    .end array-data

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    :array_1
    .array-data 8
        0x775ad939fd8e2993L    # 8.657188378615994E266
        -0x4e7d7aba06f621baL    # -3.354332008831342E-70
        -0x26d91ce1d997e196L    # -2.955020733675854E121
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->isShowingPassword:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->leftToRight:Z

    .line 4
    iput p1, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->tintColor:I

    const/16 p1, 0x28

    .line 5
    iput p1, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->DEFAULT_ADDITIONAL_TOUCH_TARGET_SIZE:I

    .line 6
    iput p1, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->additionalTouchTargetSize:I

    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/view/MaterialEditText;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 8
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->isShowingPassword:Z

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->leftToRight:Z

    .line 11
    iput p1, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->tintColor:I

    const/16 p1, 0x28

    .line 12
    iput p1, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->DEFAULT_ADDITIONAL_TOUCH_TARGET_SIZE:I

    .line 13
    iput p1, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->additionalTouchTargetSize:I

    .line 14
    invoke-direct {p0, p2}, Lcom/tknetwork/tunnel/view/MaterialEditText;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->isShowingPassword:Z

    const/4 p3, 0x1

    .line 17
    iput-boolean p3, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->leftToRight:Z

    .line 18
    iput p1, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->tintColor:I

    const/16 p1, 0x28

    .line 19
    iput p1, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->DEFAULT_ADDITIONAL_TOUCH_TARGET_SIZE:I

    .line 20
    iput p1, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->additionalTouchTargetSize:I

    .line 21
    invoke-direct {p0, p2}, Lcom/tknetwork/tunnel/view/MaterialEditText;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    const v0, 0x7f08017d

    .line 2
    .line 3
    .line 4
    const v1, 0x7f08017c

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    sget-object v5, Lcom/v2ray/ang/R$styleable;->ShowHidePasswordEditText:[I

    .line 16
    .line 17
    invoke-virtual {v4, p1, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v4, 0x2

    .line 22
    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iput v1, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->visibilityIndicatorShow:I

    .line 27
    .line 28
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->visibilityIndicatorHide:I

    .line 33
    .line 34
    const/4 v0, 0x3

    .line 35
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->tintColor:I

    .line 40
    .line 41
    const/16 v0, 0x28

    .line 42
    .line 43
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput v0, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->additionalTouchTargetSize:I

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iput v1, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->visibilityIndicatorShow:I

    .line 54
    .line 55
    iput v0, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->visibilityIndicatorHide:I

    .line 56
    .line 57
    :goto_0
    invoke-direct {p0}, Lcom/tknetwork/tunnel/view/MaterialEditText;->isLeftToRight()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iput-boolean p1, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->leftToRight:Z

    .line 62
    .line 63
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 67
    .line 68
    .line 69
    iput-boolean v2, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->isShowingPassword:Z

    .line 70
    .line 71
    invoke-direct {p0}, Lcom/tknetwork/tunnel/view/MaterialEditText;->maskPassword()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v3}, Landroid/view/View;->setSaveEnabled(Z)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_1

    .line 86
    .line 87
    invoke-virtual {p0, v3}, Lcom/tknetwork/tunnel/view/MaterialEditText;->showPasswordVisibilityIndicator(Z)V

    .line 88
    .line 89
    .line 90
    :cond_1
    new-instance p1, Lcom/tknetwork/tunnel/view/MaterialEditText$1;

    .line 91
    .line 92
    invoke-direct {p1, p0}, Lcom/tknetwork/tunnel/view/MaterialEditText$1;-><init>(Lcom/tknetwork/tunnel/view/MaterialEditText;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method private isLeftToRight()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    return v1
.end method

.method private maskPassword()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private unmaskPassword()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->drawableEnd:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public getAdditionalTouchTargetSizePixels()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->additionalTouchTargetSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getVisibilityIndicatorHide()I
    .locals 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->visibilityIndicatorHide:I

    .line 2
    .line 3
    return v0
.end method

.method public getVisibilityIndicatorShow()I
    .locals 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->visibilityIndicatorShow:I

    .line 2
    .line 3
    return v0
.end method

.method public isShowingPassword()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->isShowingPassword:Z

    .line 2
    .line 3
    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Landroid/os/Bundle;

    .line 6
    .line 7
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v1, 0x5

    .line 10
    new-array v1, v1, [J

    .line 11
    .line 12
    fill-array-data v1, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->isShowingPassword:Z

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/tknetwork/tunnel/view/MaterialEditText;->unmaskPassword()V

    .line 32
    .line 33
    .line 34
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    new-array v1, v1, [J

    .line 38
    .line 39
    fill-array-data v1, :array_1

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :array_0
    .array-data 8
        -0x7e89a1d0c4496092L
        -0x5512a9b591910096L    # -6.549200156670413E-102
        -0x25911fb4d11ccb84L    # -4.180144415207472E127
        0x33f0efb4ad4de07cL    # 1.6863227027102275E-58
        0x4de4e946823f99L
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    :array_1
    .array-data 8
        0x1593a88f955504f8L
        0x25fd08408fc4f776L    # 1.072216024794638E-125
        0x34344e4c6acbfe8fL    # 3.2349091012950357E-57
    .end array-data
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-super {p0}, Landroid/widget/EditText;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v2, 0x5

    .line 31
    new-array v2, v2, [J

    .line 32
    .line 33
    fill-array-data v2, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-boolean v2, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->isShowingPassword:Z

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    return-object v0

    .line 49
    :array_0
    .array-data 8
        -0x53b54958a4f1d227L    # -2.501278396905642E-95
        -0x7016062e5a44e705L    # -5.228573370590391E-232
        0x486b3fed6cdf641dL    # 7.41807844252349E40
    .end array-data

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    :array_1
    .array-data 8
        0x50c74ad40e2e61b7L    # 1.3808967028255049E81
        0x601dbe917f70544fL    # 9.970182609091911E154
        -0x2487b2e036f38821L    # -4.312280606495224E132
        -0x6f695a5f49d955d8L    # -9.335845759472886E-229
        -0x7ea08824f289a82bL
    .end array-data
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->drawableEnd:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    float-to-int v1, v1

    .line 21
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-boolean v2, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->leftToRight:Z

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    :goto_0
    add-int/2addr v0, v2

    .line 39
    iget v2, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->additionalTouchTargetSize:I

    .line 40
    .line 41
    add-int/2addr v0, v2

    .line 42
    iget-boolean v2, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->leftToRight:Z

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    sub-int/2addr v2, v0

    .line 51
    if-ge v1, v2, :cond_2

    .line 52
    .line 53
    :cond_1
    iget-boolean v2, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->leftToRight:Z

    .line 54
    .line 55
    if-nez v2, :cond_3

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    add-int/2addr v2, v0

    .line 62
    if-gt v1, v2, :cond_3

    .line 63
    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/view/MaterialEditText;->togglePasswordVisibility()V

    .line 65
    .line 66
    .line 67
    const/4 v0, 0x3

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    return p1
.end method

.method public setAdditionalTouchTargetSizePixels(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->additionalTouchTargetSize:I

    .line 2
    .line 3
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->leftToRight:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    iput-object p3, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->drawableEnd:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-nez v0, :cond_1

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iput-object p1, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->drawableEnd:Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setTintColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->tintColor:I

    .line 2
    .line 3
    return-void
.end method

.method public setVisibilityIndicatorHide(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->visibilityIndicatorHide:I

    .line 2
    .line 3
    return-void
.end method

.method public setVisibilityIndicatorShow(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->visibilityIndicatorShow:I

    .line 2
    .line 3
    return-void
.end method

.method public showPasswordVisibilityIndicator(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    aget-object v1, v0, v1

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    aget-object v2, v0, v2

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    aget-object v3, v0, v3

    .line 13
    .line 14
    const/4 v4, 0x3

    .line 15
    aget-object v0, v0, v4

    .line 16
    .line 17
    if-eqz p1, :cond_6

    .line 18
    .line 19
    iget-boolean p1, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->isShowingPassword:Z

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget v4, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->visibilityIndicatorHide:I

    .line 28
    .line 29
    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget v4, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->visibilityIndicatorShow:I

    .line 39
    .line 40
    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    .line 47
    iget v4, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->tintColor:I

    .line 48
    .line 49
    if-nez v4, :cond_3

    .line 50
    .line 51
    iget-boolean v4, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->leftToRight:Z

    .line 52
    .line 53
    if-eqz v4, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move-object v1, p1

    .line 57
    :goto_1
    if-eqz v4, :cond_2

    .line 58
    .line 59
    move-object v3, p1

    .line 60
    :cond_2
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 61
    .line 62
    .line 63
    goto :goto_4

    .line 64
    :cond_3
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget v4, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->tintColor:I

    .line 69
    .line 70
    invoke-static {p1, v4}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 71
    .line 72
    .line 73
    iget-boolean v4, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->leftToRight:Z

    .line 74
    .line 75
    if-eqz v4, :cond_4

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    move-object v1, p1

    .line 79
    :goto_2
    if-eqz v4, :cond_5

    .line 80
    .line 81
    move-object v3, p1

    .line 82
    :cond_5
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 83
    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_6
    iget-boolean p1, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->leftToRight:Z

    .line 87
    .line 88
    const/4 v4, 0x0

    .line 89
    if-eqz p1, :cond_7

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_7
    move-object v1, v4

    .line 93
    :goto_3
    if-eqz p1, :cond_8

    .line 94
    .line 95
    move-object v3, v4

    .line 96
    :cond_8
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 97
    .line 98
    .line 99
    :goto_4
    return-void
.end method

.method public togglePasswordVisibility()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-boolean v2, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->isShowingPassword:Z

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/tknetwork/tunnel/view/MaterialEditText;->maskPassword()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/tknetwork/tunnel/view/MaterialEditText;->unmaskPassword()V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 21
    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->isShowingPassword:Z

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    xor-int/2addr v0, v1

    .line 27
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/view/MaterialEditText;->isShowingPassword:Z

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lcom/tknetwork/tunnel/view/MaterialEditText;->showPasswordVisibilityIndicator(Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
