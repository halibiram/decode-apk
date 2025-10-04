.class public Lcom/trilead/ssh2/DHGexParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_ALLOWED:I = 0x2000

.field private static final MIN_ALLOWED:I = 0x400


# instance fields
.field private final max_group_len:I

.field private final min_group_len:I

.field private final pref_group_len:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x800

    const/16 v1, 0x1000

    const/16 v2, 0x400

    .line 1
    invoke-direct {p0, v2, v0, v1}, Lcom/trilead/ssh2/DHGexParameters;-><init>(III)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    if-lt p1, v0, :cond_0

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_0

    .line 3
    iput p1, p0, Lcom/trilead/ssh2/DHGexParameters;->pref_group_len:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/trilead/ssh2/DHGexParameters;->min_group_len:I

    .line 5
    iput p1, p0, Lcom/trilead/ssh2/DHGexParameters;->max_group_len:I

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x5

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 8
        -0x4fd53e66d6c9c9abL    # -1.1553571352487766E-76
        -0x55693a7cdf5cb381L
        0x38ccfdf8c0339e44L
        -0x5ce0bbebe5382084L
        0x1eb74c4f0fc9854L
    .end array-data
.end method

.method public constructor <init>(III)V
    .locals 3

    const/4 v0, 0x5

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x400

    if-lt p1, v1, :cond_3

    const/16 v2, 0x2000

    if-gt p1, v2, :cond_3

    if-lt p2, v1, :cond_2

    if-gt p2, v2, :cond_2

    if-lt p3, v1, :cond_1

    if-gt p3, v2, :cond_1

    if-lt p2, p1, :cond_0

    if-gt p2, p3, :cond_0

    .line 8
    iput p1, p0, Lcom/trilead/ssh2/DHGexParameters;->min_group_len:I

    .line 9
    iput p2, p0, Lcom/trilead/ssh2/DHGexParameters;->pref_group_len:I

    .line 10
    iput p3, p0, Lcom/trilead/ssh2/DHGexParameters;->max_group_len:I

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p3, 0x7

    new-array p3, p3, [J

    fill-array-data p3, :array_0

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v0, [J

    fill-array-data p3, :array_1

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v0, [J

    fill-array-data p3, :array_2

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v0, [J

    fill-array-data p3, :array_3

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 8
        0x26a82b8fc6329267L    # 1.828147971688568E-122
        -0x2687808f54ba8e3dL    # -1.0121515917647622E123
        -0x667db548e459b0d9L    # -8.407956765078542E-186
        -0x49ec9cf31e3923e0L    # -3.316266437480741E-48
        0x72decbb7b46beaadL    # 2.1027497087989474E245
        0xc91aa2ee2c09939L
        -0x513fcf2cf70d0d72L    # -1.6668532864954814E-83
    .end array-data

    :array_1
    .array-data 8
        0xdcb70beafec1eaeL
        0x32ac18ca774a3d06L    # 1.3339772091398292E-64
        -0x19bd788113fb1727L    # -3.9366419253648855E184
        0x19f256048b88f248L
        0x3fc549e275b1e40cL    # 0.1663172793085156
    .end array-data

    :array_2
    .array-data 8
        -0x3848c5481904d204L    # -3.087712710201926E37
        0x1e1cdee4cddbc34L
        -0x2133a43c8a11ea5bL    # -4.532631247727584E148
        0x2c15a56bf7bdcdc4L    # 2.5335100755464723E-96
        -0x50c43f1af9ab5a82L    # -3.657285426394989E-81
    .end array-data

    :array_3
    .array-data 8
        -0x239bc69c4541f71bL    # -1.1759772590438715E137
        0xbde7c9bfd9263eeL
        0x1f9b5a8f2b56445bL
        0x1313fdbd46e77c00L
        0x510e7fb9bbbec27dL    # 2.8930331208630136E82
    .end array-data
.end method


# virtual methods
.method public getMax_group_len()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/DHGexParameters;->max_group_len:I

    .line 2
    .line 3
    return v0
.end method

.method public getMin_group_len()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/DHGexParameters;->min_group_len:I

    .line 2
    .line 3
    return v0
.end method

.method public getPref_group_len()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/DHGexParameters;->pref_group_len:I

    .line 2
    .line 3
    return v0
.end method
