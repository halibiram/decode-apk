.class public Lcom/tknetwork/tunnel/view/MDToast;
.super Landroid/widget/Toast;
.source "SourceFile"


# static fields
.field public static LENGTH_LONG:I = 0x1

.field public static LENGTH_SHORT:I = 0x0

.field public static final TYPE_ERROR:I = 0x3

.field public static final TYPE_INFO:I = 0x0

.field public static final TYPE_SUCCESS:I = 0x1

.field public static final TYPE_WARNING:I = 0x2


# instance fields
.field private TK:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mType:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tknetwork/tunnel/view/MDToast;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/String;)Lcom/tknetwork/tunnel/view/MDToast;
    .locals 2

    .line 1
    sget v0, Lcom/tknetwork/tunnel/view/MDToast;->LENGTH_SHORT:I

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/tknetwork/tunnel/view/MDToast;->makeText(Landroid/content/Context;Ljava/lang/String;II)Lcom/tknetwork/tunnel/view/MDToast;

    move-result-object p0

    return-object p0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/String;I)Lcom/tknetwork/tunnel/view/MDToast;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, v0}, Lcom/tknetwork/tunnel/view/MDToast;->makeText(Landroid/content/Context;Ljava/lang/String;II)Lcom/tknetwork/tunnel/view/MDToast;

    move-result-object p0

    return-object p0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/String;II)Lcom/tknetwork/tunnel/view/MDToast;
    .locals 6

    .line 3
    new-instance v0, Lcom/tknetwork/tunnel/view/MDToast;

    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/view/MDToast;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v3, v2, [J

    fill-array-data v3, :array_0

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v3, 0x7f0d002e

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0a01d6

    .line 6
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0a03c0

    .line 7
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x1

    if-eq p3, v5, :cond_2

    const/4 v5, 0x2

    if-eq p3, v5, :cond_1

    if-eq p3, v2, :cond_0

    const v2, 0x7f080125

    .line 8
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f0800c1

    .line 9
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const v2, 0x7f08010f

    .line 10
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f0800c0

    .line 11
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const v2, 0x7f080181

    .line 12
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f0800c3

    .line 13
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    const v2, 0x7f0800f3

    .line 14
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f0800c2

    .line 15
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 16
    :goto_0
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 19
    iput-object v1, v0, Lcom/tknetwork/tunnel/view/MDToast;->mView:Landroid/view/View;

    .line 20
    iput p3, v0, Lcom/tknetwork/tunnel/view/MDToast;->mType:I

    return-object v0

    nop

    :array_0
    .array-data 8
        0x55deacec51be53cbL    # 4.3971358184780137E105
        -0x4a9935fb79a4f0e2L    # -1.9034370800873414E-51
        0x191ec622f5986a5dL    # 1.105111895356581E-187
    .end array-data
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/view/MDToast;->mType:I

    .line 2
    .line 3
    return v0
.end method

.method public setIcon(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/MDToast;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/view/MDToast;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v0, 0x7

    .line 2
    iget-object v1, p0, Lcom/tknetwork/tunnel/view/MDToast;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    const v2, 0x7f0a01d6

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 8
        0x7b76b6106b2753b6L    # 5.4035072973566E286
        -0x4bc956dd2872d05eL    # -3.610055858892855E-57
        0x5251ed7f8e95591fL    # 3.566350207554793E88
        0x96247efda0d64cfL
        -0x7af3c28af2b31ceeL    # -2.373885861693975E-284
        -0x4a2e1c3fe3a30a75L    # -1.9125930215284785E-49
        -0x520e592341d3131fL    # -2.2183517273853347E-87
    .end array-data

    :array_1
    .array-data 8
        0x4516a50abd5c9e82L    # 6.843939153397831E24
        0x638e93e04e3a9bcL
        0xd26b9ec20d0502L
        -0x17e8086e9cb7d789L    # -2.733707450754949E193
        -0x7823ce661ca93e9cL    # -8.338670693366777E-271
        0x5e1b429b203ca6b1L    # 2.1274856485228763E145
        0x84ab4a33a27d85fL
    .end array-data
.end method

.method public setText(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/view/MDToast;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/view/MDToast;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v0, 0x7

    .line 2
    iget-object v1, p0, Lcom/tknetwork/tunnel/view/MDToast;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    const v2, 0x7f0a03c0

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 8
        0x771d3d815e045d5fL    # 5.892740986273657E265
        -0x10874281c351721aL    # -9.377348562302103E228
        0xb24914117e5bf3bL    # 5.47914842275822E-255
        0x295a4755b3cdb14aL
        0x76d9502f13f6ef7cL    # 3.188332276670683E264
        0x798638df6cfce545L    # 2.4620239796058814E277
        0x526578893169541cL    # 8.542359462211314E88
    .end array-data

    :array_1
    .array-data 8
        -0x36d18604e86b7495L    # -3.398241923856452E44
        0x4444fbe149586d40L    # 7.741695001832194E20
        -0x491126b9271587ceL    # -4.322828819704354E-44
        -0x10044274eab1dcd0L    # -2.6917173942740134E231
        0x368b909eb0a2e0d0L    # 6.035419070452143E-46
        -0x1e128528e0a5a816L    # -5.30509125477633E163
        0x615c10e8c74b7ebfL    # 9.864589697819961E160
    .end array-data
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tknetwork/tunnel/view/MDToast;->mType:I

    .line 2
    .line 3
    return-void
.end method
