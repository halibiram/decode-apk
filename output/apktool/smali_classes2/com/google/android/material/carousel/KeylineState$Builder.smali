.class final Lcom/google/android/material/carousel/KeylineState$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/carousel/KeylineState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final NO_INDEX:I = -0x1

.field private static final UNKNOWN_LOC:F = 1.4E-45f


# instance fields
.field private final availableSpace:F

.field private firstFocalKeylineIndex:I

.field private final itemSize:F

.field private lastFocalKeylineIndex:I

.field private lastKeylineMaskedSize:F

.field private latestAnchorKeylineIndex:I

.field private tmpFirstFocalKeyline:Lcom/google/android/material/carousel/KeylineState$Keyline;

.field private final tmpKeylines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState$Keyline;",
            ">;"
        }
    .end annotation
.end field

.field private tmpLastFocalKeyline:Lcom/google/android/material/carousel/KeylineState$Keyline;


# direct methods
.method public constructor <init>(FF)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpKeylines:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->firstFocalKeylineIndex:I

    .line 13
    .line 14
    iput v0, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->lastFocalKeylineIndex:I

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput v1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->lastKeylineMaskedSize:F

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->latestAnchorKeylineIndex:I

    .line 20
    .line 21
    iput p1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->itemSize:F

    .line 22
    .line 23
    iput p2, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->availableSpace:F

    .line 24
    .line 25
    return-void
.end method

.method private static calculateKeylineLocationForItemPosition(FFII)F
    .locals 0

    int-to-float p2, p2

    mul-float p2, p2, p1

    sub-float/2addr p0, p2

    int-to-float p2, p3

    mul-float p2, p2, p1

    add-float/2addr p2, p0

    return p2
.end method


# virtual methods
.method public addAnchorKeyline(FFF)Lcom/google/android/material/carousel/KeylineState$Builder;
    .locals 6
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    const/4 v4, 0x0

    .line 2
    const/4 v5, 0x1

    .line 3
    move-object v0, p0

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public addKeyline(FFF)Lcom/google/android/material/carousel/KeylineState$Builder;
    .locals 1
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addKeyline(FFFZ)Lcom/google/android/material/carousel/KeylineState$Builder;
    .locals 6
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addKeyline(FFFZZ)Lcom/google/android/material/carousel/KeylineState$Builder;
    .locals 8
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p3, v0

    sub-float v1, p1, v0

    add-float/2addr v0, p1

    .line 24
    iget v2, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->availableSpace:F

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    sub-float v1, v0, p3

    .line 25
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    add-float v2, v1, p3

    .line 26
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_1
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 27
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZZF)Lcom/google/android/material/carousel/KeylineState$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addKeyline(FFFZZF)Lcom/google/android/material/carousel/KeylineState$Builder;
    .locals 9
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 23
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZZFFF)Lcom/google/android/material/carousel/KeylineState$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addKeyline(FFFZZFFF)Lcom/google/android/material/carousel/KeylineState$Builder;
    .locals 12
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    move-object v0, p0

    const/4 v1, 0x0

    cmpg-float v1, p3, v1

    if-gtz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v10, -0x1

    if-eqz p5, :cond_4

    if-nez p4, :cond_3

    .line 3
    iget v1, v0, Lcom/google/android/material/carousel/KeylineState$Builder;->latestAnchorKeylineIndex:I

    if-eq v1, v10, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v3, 0x9

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpKeylines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/google/android/material/carousel/KeylineState$Builder;->latestAnchorKeylineIndex:I

    goto :goto_1

    .line 6
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x5

    new-array v3, v3, [J

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_4
    :goto_1
    new-instance v11, Lcom/google/android/material/carousel/KeylineState$Keyline;

    const/4 v2, 0x1

    move-object v1, v11

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/google/android/material/carousel/KeylineState$Keyline;-><init>(FFFFZFFF)V

    if-eqz p4, :cond_9

    .line 8
    iget-object v1, v0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpFirstFocalKeyline:Lcom/google/android/material/carousel/KeylineState$Keyline;

    if-nez v1, :cond_5

    .line 9
    iput-object v11, v0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpFirstFocalKeyline:Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 10
    iget-object v1, v0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpKeylines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/google/android/material/carousel/KeylineState$Builder;->firstFocalKeylineIndex:I

    .line 11
    :cond_5
    iget v1, v0, Lcom/google/android/material/carousel/KeylineState$Builder;->lastFocalKeylineIndex:I

    if-eq v1, v10, :cond_7

    iget-object v1, v0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpKeylines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, v0, Lcom/google/android/material/carousel/KeylineState$Builder;->lastFocalKeylineIndex:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    if-gt v1, v2, :cond_6

    goto :goto_2

    .line 12
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v3, 0x10

    new-array v3, v3, [J

    fill-array-data v3, :array_2

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_7
    :goto_2
    iget-object v1, v0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpFirstFocalKeyline:Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    cmpl-float v1, p3, v1

    if-nez v1, :cond_8

    .line 14
    iput-object v11, v0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpLastFocalKeyline:Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 15
    iget-object v1, v0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpKeylines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/google/android/material/carousel/KeylineState$Builder;->lastFocalKeylineIndex:I

    goto :goto_4

    .line 16
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v3, 0xb

    new-array v3, v3, [J

    fill-array-data v3, :array_3

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_9
    iget-object v1, v0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpFirstFocalKeyline:Lcom/google/android/material/carousel/KeylineState$Keyline;

    if-nez v1, :cond_b

    iget v1, v11, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    iget v2, v0, Lcom/google/android/material/carousel/KeylineState$Builder;->lastKeylineMaskedSize:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_a

    goto :goto_3

    .line 18
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v3, 0xd

    new-array v3, v3, [J

    fill-array-data v3, :array_4

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 19
    :cond_b
    :goto_3
    iget-object v1, v0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpLastFocalKeyline:Lcom/google/android/material/carousel/KeylineState$Keyline;

    if-eqz v1, :cond_d

    iget v1, v11, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    iget v2, v0, Lcom/google/android/material/carousel/KeylineState$Builder;->lastKeylineMaskedSize:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_c

    goto :goto_4

    .line 20
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v3, 0xc

    new-array v3, v3, [J

    fill-array-data v3, :array_5

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_d
    :goto_4
    iget v1, v11, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    iput v1, v0, Lcom/google/android/material/carousel/KeylineState$Builder;->lastKeylineMaskedSize:F

    .line 22
    iget-object v1, v0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpKeylines:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    nop

    :array_0
    .array-data 8
        -0x108c7a901d4209a9L    # -7.399188462051615E228
        0x137bb6e08a5e378eL    # 8.039481067804983E-215
        -0x4c04e4df2df3ccbfL    # -2.6988938022003607E-58
        0x17d0fcb37d2c610dL    # 5.817580438247149E-194
        -0x647104e25a76541fL
        -0x1a02adfbc08bcfafL    # -1.9466457946177012E183
        -0x6092d08af64abf9aL    # -2.657159490700101E-157
        0x23a5e7c93a1ce9b5L    # 5.886314355391316E-137
        -0x6bf963d785c5a130L    # -3.358098930940895E-212
    .end array-data

    :array_1
    .array-data 8
        0x15c11f5292a6c0cfL    # 6.82647349868898E-204
        0x429c41f04521469bL    # 7.767382378577651E12
        -0x4e9bc32c02e7c46L    # -8.27705232882659E284
        0x7ea21c8c3fe0b78eL    # 9.70332212613724E301
        0x3dd5b3acd4c57bf7L    # 7.895089199840668E-11
    .end array-data

    :array_2
    .array-data 8
        -0x3674e5754b21c296L    # -1.9341831653637198E46
        0x30b8a8bfe554b73L
        0x952765109432b80L
        -0xda46e4e1f495322L    # -7.353251722399277E242
        0x4cf29abccbf2e115L    # 4.783390039185181E62
        0x43de75a785b21aadL    # 8.7793783442942659E18
        0x6fa89f6386a1c472L    # 7.466220941922046E229
        0x5e6643a4ffbc8f4aL    # 5.560267825061719E146
        -0x58018724ce6c0057L
        0x597187f8f0872bf6L    # 7.243166396769797E122
        0x3e2e1dac6e936c5dL    # 3.5059536286343746E-9
        -0x4e3a98f7e383050dL    # -6.202044074915713E-69
        0x7652e4987f8abaeL
        -0x31a9587ec1bebd44L    # -2.4430365877909737E69
        0x56fe5abb801af182L    # 1.1406184997428951E111
        -0x1f4ad90a3e70b64aL    # -7.260274342367746E157
    .end array-data

    :array_3
    .array-data 8
        0x81653f5f1a59b02L
        0x3e14632696448893L    # 1.1866974842640215E-9
        -0x45913f29601a8e9aL    # -3.1052872044970008E-27
        -0x1367aeb46d6a21c8L    # -1.3098359523203539E215
        0x63a25b91d8bd7527L    # 8.867999755677821E171
        -0x33baa30fa370ea55L    # -2.6819598388558574E59
        0x66ec0642d67c694aL    # 6.096836212460391E187
        0x1db9a254be27c48dL
        -0x74b4dfbf064cce2fL
        -0x668d922a0458bb4fL    # -4.235508436799821E-186
        -0x30203b31de5b7bc7L    # -5.747769199011644E76
    .end array-data

    :array_4
    .array-data 8
        -0x12e1eaf053f56c36L    # -4.1480835683857006E217
        0x18092faeb1755aa7L    # 6.900434840554961E-193
        -0x6b926b486bbde9b1L
        -0x1a7409daa7246065L    # -1.450333877094778E181
        -0x7b7cb148502e0fL
        0x7a39f8708d0c72e4L    # 5.892719136394287E280
        0x421f595d92667972L    # 3.36608226816186E10
        0x2a06e04df0d2da59L    # 3.116988648024844E-106
        -0x1ede5011af75bd82L    # -7.770832390109536E159
        0x362a21273e0bdd24L    # 8.939266427625499E-48
        0x60f3725ed93384d3L    # 1.0679845678601734E159
        0x1580ab9d2c12c0b5L    # 4.153919946591317E-205
        0x53d9fa155a57c277L    # 8.669733856851497E95
    .end array-data

    :array_5
    .array-data 8
        0x5b364b48acdbb3e9L    # 2.4725645423300037E131
        -0x1bcc3785515ded04L    # -4.892967502003981E174
        -0x7157b39706b73e03L    # -4.664364569385492E-238
        -0x73ffebfc25e5fa31L    # -7.017632300981057E-251
        0x1a8acbcfed81dc8bL    # 8.072069206351552E-181
        0x1703496a9c39542cL    # 8.062925582321157E-198
        -0x4c0e3fcfdf717b5aL    # -1.7674094580881393E-58
        -0x57c27d19985ba2a0L    # -7.489803451107624E-115
        -0x384aba94d5249b57L    # -2.827423000803146E37
        -0x39194b36860e2fcbL    # -3.684291475534669E33
        -0x4a1e45b0c94f2c51L    # -3.790572901044858E-49
        0x7533ebf88078723aL    # 3.7390738216815906E256
    .end array-data
.end method

.method public addKeylineRange(FFFI)Lcom/google/android/material/carousel/KeylineState$Builder;
    .locals 6
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeylineRange(FFFIZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addKeylineRange(FFFIZ)Lcom/google/android/material/carousel/KeylineState$Builder;
    .locals 2
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    if-lez p4, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    int-to-float v1, v0

    mul-float v1, v1, p3

    add-float/2addr v1, p1

    .line 2
    invoke-virtual {p0, v1, p2, p3, p5}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public build()Lcom/google/android/material/carousel/KeylineState;
    .locals 13
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpFirstFocalKeyline:Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    new-instance v3, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpKeylines:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ge v0, v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpKeylines:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 26
    .line 27
    new-instance v2, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 28
    .line 29
    iget-object v4, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->tmpFirstFocalKeyline:Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 30
    .line 31
    iget v4, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    .line 32
    .line 33
    iget v5, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->itemSize:F

    .line 34
    .line 35
    iget v6, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->firstFocalKeylineIndex:I

    .line 36
    .line 37
    invoke-static {v4, v5, v6, v0}, Lcom/google/android/material/carousel/KeylineState$Builder;->calculateKeylineLocationForItemPosition(FFII)F

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    iget v6, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    .line 42
    .line 43
    iget v7, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    .line 44
    .line 45
    iget v8, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    .line 46
    .line 47
    iget-boolean v9, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    .line 48
    .line 49
    iget v10, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    .line 50
    .line 51
    iget v11, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->leftOrTopPaddingShift:F

    .line 52
    .line 53
    iget v12, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->rightOrBottomPaddingShift:F

    .line 54
    .line 55
    move-object v4, v2

    .line 56
    invoke-direct/range {v4 .. v12}, Lcom/google/android/material/carousel/KeylineState$Keyline;-><init>(FFFFZFFF)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    add-int/lit8 v0, v0, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    new-instance v0, Lcom/google/android/material/carousel/KeylineState;

    .line 66
    .line 67
    iget v2, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->itemSize:F

    .line 68
    .line 69
    iget v4, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->firstFocalKeylineIndex:I

    .line 70
    .line 71
    iget v5, p0, Lcom/google/android/material/carousel/KeylineState$Builder;->lastFocalKeylineIndex:I

    .line 72
    .line 73
    const/4 v6, 0x0

    .line 74
    move-object v1, v0

    .line 75
    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/carousel/KeylineState;-><init>(FLjava/util/List;IILcom/google/android/material/carousel/KeylineState$1;)V

    .line 76
    .line 77
    .line 78
    return-object v0

    .line 79
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 80
    .line 81
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    const/4 v2, 0x6

    .line 84
    new-array v2, v2, [J

    .line 85
    .line 86
    fill-array-data v2, :array_0

    .line 87
    .line 88
    .line 89
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v0

    .line 100
    nop

    .line 101
    :array_0
    .array-data 8
        -0x75bbd83092ec430aL    # -3.277234425790707E-259
        0x416a2066a7263fc0L    # 1.369784522341907E7
        0x34ce32237de4bd8eL    # 2.4629642677780928E-54
        -0x35a83eaa85eda682L    # -1.3887311629865826E50
        -0x5c29570ce7e0f1a1L    # -4.871257578805712E-136
        0x7f7b0aff44c9e1d6L    # 1.18688816426535E306
    .end array-data
.end method
