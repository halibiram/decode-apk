.class public final Lcom/google/android/gms/common/AccountPicker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 4
    .param p0    # Landroid/accounts/Account;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/ArrayList<",
            "Landroid/accounts/Account;",
            ">;[",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v2, 0xb

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 2
    invoke-static {v2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v2, 0x8

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x4

    new-array v3, v2, [J

    fill-array-data v3, :array_2

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_3

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v2, [J

    fill-array-data v1, :array_4

    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array p2, v2, [J

    fill-array-data p2, :array_5

    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {v0, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p2, 0x3

    new-array p7, p2, [J

    fill-array-data p7, :array_6

    invoke-direct {p1, p7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    new-array p1, v2, [J

    fill-array-data p1, :array_7

    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    new-array p1, v2, [J

    fill-array-data p1, :array_8

    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    new-array p1, p2, [J

    fill-array-data p1, :array_9

    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-virtual {v0, p0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p1, 0x5

    new-array p1, p1, [J

    fill-array-data p1, :array_a

    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-virtual {v0, p0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    new-array p1, v2, [J

    fill-array-data p1, :array_b

    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 13
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    new-array p2, p2, [J

    fill-array-data p2, :array_c

    invoke-direct {p0, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p0

    .line 14
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    new-array p2, v2, [J

    fill-array-data p2, :array_d

    invoke-direct {p0, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    new-array p1, v2, [J

    fill-array-data p1, :array_e

    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 16
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    nop

    :array_0
    .array-data 8
        -0x696906498da067f2L    # -7.50389465021593E-200
        0x33d24552ea1e088bL    # 4.547977811704105E-59
        0x517090b898c830e9L    # 2.011307843062914E84
        -0x4317211c5bc4423dL    # -2.761198051780381E-15
        0x167f9049ef06a5e1L    # 2.5772100404999636E-200
        0x3e707f00fe34d5b9L    # 6.14527944545498E-8
        0x3dda820639a1dff7L    # 9.643520566128629E-11
        0x13fe744d3e67098aL
        0x6823201579df9201L    # 4.3629085959138844E193
        -0x3ae2925417d2a336L    # -8.894189459705964E24
        0x3f0fab2c517282c4L    # 6.040314672728844E-5
    .end array-data

    :array_1
    .array-data 8
        -0x7af28f119c779ffcL
        0x22a0843d94c6046aL    # 6.772231144186059E-142
        -0x2d5b63f2ca9ca4ceL    # -1.3119515275659984E90
        0x3f8a43fd19dd7aa7L    # 0.01282499060806448
        -0x27054e349fdb50a9L    # -4.30824337125605E120
        -0x4f647784e13e2481L    # -1.5217967359632387E-74
        -0x18a42f1f2a9c66feL    # -7.745882079263748E189
        -0x667859fb011f94d0L
    .end array-data

    :array_2
    .array-data 8
        -0x1b429966cd095879L    # -1.8615566123811506E177
        0x4b0a1794d2ade25L
        0x2d8dd61459189f5dL    # 2.9293786003736567E-89
        -0x73c5766531e5d23eL    # -9.266247920559664E-250
    .end array-data

    :array_3
    .array-data 8
        -0x68d474cce60932c9L    # -4.6059147231962E-197
        -0x33d287e7995ec6L
        -0x4cdbcc121e9e128bL    # -2.4555202143885385E-62
        -0x4a279909b4182143L    # -2.6088530991796814E-49
    .end array-data

    :array_4
    .array-data 8
        -0x1f4f31d80736136aL    # -5.768248320927806E157
        -0x60ffd18e632fd674L    # -2.301913299635219E-159
        0x51f910da09e50a14L    # 7.791136381127959E86
        -0x7d13cc5209bc4288L
    .end array-data

    :array_5
    .array-data 8
        -0x4bb053f07e4147ecL    # -1.0091316964544719E-56
        -0x32d700e16d30fd9aL    # -5.141494229001241E63
        0x1da8a6ed0a22a179L    # 8.361140395032507E-166
        -0x1295f026f8f12c2cL    # -1.1499872568211523E219
    .end array-data

    :array_6
    .array-data 8
        0x3e5ed0adb59e7db5L    # 2.86988453900908E-8
        -0x3fd9396cd786ebcbL    # -11.387841477184432
        -0x44430b9c152fd3e9L    # -6.131385550254464E-21
    .end array-data

    :array_7
    .array-data 8
        -0x550ab531b184365dL    # -9.506534422233916E-102
        0x603f6840fa04e32fL    # 4.2110226116935584E155
        0x44be2c919ac44c9bL    # 1.4249314313944779E23
        -0x299a3a7a8f870500L    # -1.5978579084009024E108
    .end array-data

    :array_8
    .array-data 8
        0x43bea941b41fb18aL    # 2.20936933408358656E18
        -0x6bc5130494e1cc91L    # -3.199265171653826E-211
        0x230d43cb495e3729L    # 7.679587479906609E-140
        -0x2988efd3b47472c7L    # -3.385303166914507E108
    .end array-data

    :array_9
    .array-data 8
        0x46604f70e9a68083L    # 1.0337891352629782E31
        -0x3f803a257808906aL    # -508.3658523240532
        0x43131e6672db5aa1L    # 1.3453624799945362E15
    .end array-data

    :array_a
    .array-data 8
        -0x50e29a125cf57181L    # -9.685037294800317E-82
        0x59734a51003e821eL    # 7.969979342259091E122
        -0x5d659019984c1a5aL    # -5.419959287874826E-142
        0x71c32643ed94dbecL    # 9.975700704133096E239
        -0x5c5e642e2e1b5e12L    # -4.73171463254451E-137
    .end array-data

    :array_b
    .array-data 8
        0x3eac616143f50481L    # 8.458015442817767E-7
        -0x28173e607e095a6L
        0x34cb3df309875730L    # 2.2220284641336694E-54
        -0x464e8c6bfeef7463L    # -8.604242521113555E-31
    .end array-data

    :array_c
    .array-data 8
        -0x54a8e54bdc00881L
        0x5d9dd6b980034245L    # 9.096594801401474E142
        0x19b7c32babda1662L    # 8.73801329735831E-185
    .end array-data

    :array_d
    .array-data 8
        -0x1992c3ae69c42180L    # -2.4845037569968554E185
        0x2adf08319963afe2L
        0x607fa33fe5af6ea8L    # 6.787073937058794E156
        0x7f6d032c73e0ba13L    # 6.366624388566489E305
    .end array-data

    :array_e
    .array-data 8
        0x79b46b01bef80f71L    # 1.8097105255290456E278
        -0x52937bbcef8778ccL    # -6.9995445961435605E-90
        -0x5c489a1e094432ecL    # -1.25747780260477E-136
        0x373f72b93fe074a9L    # 1.4101833325911208E-42
    .end array-data
.end method

.method public static newChooseAccountIntent(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Landroid/content/Intent;
    .locals 8
    .param p0    # Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x3

    .line 17
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 18
    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzD(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Z

    .line 19
    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zze(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Ljava/lang/String;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v4, 0xb

    new-array v4, v4, [J

    fill-array-data v4, :array_0

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 20
    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzd(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Lcom/google/android/gms/common/zza;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v5, 0x9

    new-array v5, v5, [J

    fill-array-data v5, :array_1

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 21
    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzB(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Z

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v5, 0x1b

    new-array v5, v5, [J

    fill-array-data v5, :array_2

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 22
    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzD(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Z

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v4, 0x8

    new-array v4, v4, [J

    fill-array-data v4, :array_3

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x4

    new-array v5, v4, [J

    fill-array-data v5, :array_4

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_5

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzi(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 26
    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzh(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 27
    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzh(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Ljava/util/ArrayList;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/String;

    .line 28
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v4, [J

    fill-array-data v7, :array_6

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    .line 29
    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzc(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Landroid/os/Bundle;

    move-result-object v3

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v4, [J

    fill-array-data v7, :array_7

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 31
    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzb(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Landroid/accounts/Account;

    move-result-object v3

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v1, [J

    fill-array-data v7, :array_8

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 32
    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzB(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Z

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v0, [J

    fill-array-data v6, :array_9

    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 33
    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzy(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Z

    move-result v3

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v4, [J

    fill-array-data v7, :array_a

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 34
    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzg(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v4, [J

    fill-array-data v7, :array_b

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzC(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Z

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_c

    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 36
    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzf(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Ljava/lang/String;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v4, [J

    fill-array-data v6, :array_d

    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zza(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)I

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_e

    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzD(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Z

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v4, [J

    fill-array-data v3, :array_f

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {v2, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zze(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Ljava/lang/String;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v4, [J

    fill-array-data v3, :array_10

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    .line 41
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 42
    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzD(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Z

    .line 43
    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzd(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Lcom/google/android/gms/common/zza;

    .line 44
    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzz(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Z

    .line 45
    invoke-static {p0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzA(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Z

    .line 46
    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_11

    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p0

    .line 47
    invoke-virtual {v2, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    return-object v2

    :array_0
    .array-data 8
        0x4910649d3709c7d9L    # 9.13941623148991E43
        0x1241f0a8af1accaeL
        -0x4205dbb4e7fbf0e2L    # -3.8041283319233093E-10
        0x5797bc51b02ddfeL
        0x31280958240b077aL    # 6.802088774669229E-72
        0x402d32ef9a6e1dfeL    # 14.59948427766994
        -0x3e238afc2bd1a51fL    # -1.9097229607242968E9
        0x5f6103829bcf0f67L    # 2.784626200857722E151
        -0x36af5db93f12df92L    # -1.4837927588245076E45
        -0x4d8cc773fd12f3cdL    # -1.1407076811937285E-65
        0x1b68b9d3e37d4595L
    .end array-data

    :array_1
    .array-data 8
        -0x2a17a6a3376849e0L
        0x6f8747c4f891b187L    # 1.764802903589983E229
        -0x172b0d6a8b70c06cL    # -9.78658807570811E196
        -0x5ff38eb6a35baf3aL
        0x6ab31dc690e60ff3L    # 9.589614340172872E205
        0x4dcbac78b275b2caL    # 5.828765047582464E66
        0x482dbe32ccfb08e7L    # 5.0605028661249296E39
        -0x472e52e946c72605L    # -5.319216278774683E-35
        -0x186aa020dbcd44aL
    .end array-data

    :array_2
    .array-data 8
        0x6750d6e247cb4591L    # 4.689252815167263E189
        0x2cc1e0eb7b8fc115L    # 4.285531491698572E-93
        -0x67df92368123207L    # -1.997214674528005E277
        -0x1ac2c0a9d720b148L    # -4.740725651549142E179
        0x4dd311b5355cb689L    # 8.032872507267685E66
        -0x16706d0281c8f952L    # -3.021059099269968E200
        -0x2203c9d05539d150L    # -5.5043577389107395E144
        -0x61920b5edd3217ebL
        0x50206a93611437fdL    # 9.504394931399493E77
        0x4dc79ce15b201e27L    # 4.9734390383521685E66
        0x1238e80b0ee4770cL    # 6.890242017466E-221
        0x2341e35968035c6dL    # 7.510620329639429E-139
        -0x1f874a0d1a969ac0L
        0x593be1853e02a875L    # 7.199555227635443E121
        -0x7321a98b98025361L
        -0x5570b21d6e7934f3L
        0x2f80b9ec2ab67719L    # 7.053261696019171E-80
        0x7f74ef38954c66b1L    # 9.187922335099488E305
        -0x543960d71d4b82L
        0x568281c36b8317feL    # 5.433026853669018E108
        0x3ad48dbd794b01afL    # 2.6564998935003127E-25
        -0x36196119bd241622L    # -1.0331309862096645E48
        0x7552b7af8bf08f3aL    # 1.40522114254931E257
        -0x74c5952e7287c87aL
        0x5d9400b7ec863433L    # 6.09802070872413E142
        -0x39a68dbdbdae52cL
        0x36083ad6d87d7674L    # 2.0723412281737543E-48
    .end array-data

    :array_3
    .array-data 8
        -0x6521999c9d6c613cL
        -0xa1b02e10d166211L    # -8.06775910705892E259
        0x4476ca07e70ef762L    # 6.726179647897192E21
        0x22ddbc86db54cc22L    # 9.754183159253569E-141
        0x6d4527ee7a9c4908L    # 2.3337808716270317E218
        0x1ba6f590f8b1c844L
        -0x268f45b0b7483dfbL    # -6.91124606835552E122
        -0x8ea50d97cc3d501L    # -4.36997774087909E265
    .end array-data

    :array_4
    .array-data 8
        -0x32dfbc62c89948aL
        0x73464b1f189b7757L    # 1.948424618342762E247
        -0x594b233824e3199bL    # -3.155924088749744E-122
        0x6213fefa2794ec12L    # 2.878729623522505E164
    .end array-data

    :array_5
    .array-data 8
        0xf5bb3e51982911eL
        -0x17109fd56495cbdaL    # -2.931702590857685E197
        -0x599ff0cadaa713a9L    # -7.591738374893859E-124
        -0xe7fab906624bf1eL    # -5.31677383290734E238
    .end array-data

    :array_6
    .array-data 8
        -0x294f7871597e3b28L    # -3.882028258538119E109
        0x36b029f51171e84dL    # 2.83130527653452E-45
        0x1abd7174f0544c64L    # 7.095572990514949E-180
        -0x65caf34d38a00b65L
    .end array-data

    :array_7
    .array-data 8
        -0x1e22bd51966667faL    # -2.6328069863924177E163
        0x5096625d2c486a0fL    # 1.65882703666449E80
        0x5495872c1badc7b1L    # 2.9429481449640597E99
        0x1d92b28e869b91d9L    # 3.170776628543641E-166
    .end array-data

    :array_8
    .array-data 8
        0x689ca0a602487b60L    # 8.359130865617251E195
        -0x4ca96eb77c4f1039L    # -2.1943433830611514E-61
        0x3dfe7605a2555976L    # 4.432662313013823E-10
    .end array-data

    :array_9
    .array-data 8
        0x4634270e5ea94a8cL    # 1.5966505376551146E30
        0x65cac004e0a59491L    # 2.219997005917609E182
        -0x5679aa3d8debbd87L
        0x30526b848057026eL    # 6.363125730310449E-76
        0x51e4f03282f8ae11L    # 3.254090178813694E86
    .end array-data

    :array_a
    .array-data 8
        0x2f891b4d152d923aL    # 1.0587168825521508E-79
        -0x6e53ce9111c2122dL
        -0x47b6d7343753a72eL    # -1.4787342478478672E-37
        0x763077ca853bd225L    # 2.0256078461488155E261
    .end array-data

    :array_b
    .array-data 8
        -0x1e796d1ef4f6049fL    # -6.347333688019357E161
        -0x18b18f3878c20c53L    # -4.238378202008774E189
        -0x7a307f9bb421af46L
        -0x4520eb2f95a9552aL    # -4.017164538513618E-25
    .end array-data

    :array_c
    .array-data 8
        0x10eea41c06734638L    # 4.04200608666622E-227
        0x36385933acfce8baL    # 1.665988195784229E-47
        -0x515128a07defbef5L    # -7.937868674062649E-84
        0x350d87a2322f410bL    # 3.853821153486379E-53
    .end array-data

    :array_d
    .array-data 8
        0x74cecd1749abbeb1L    # 4.5164072523500816E254
        0x709c5a46e7e4091bL    # 2.817151580992837E234
        -0x543d5afcf8b208dbL    # -6.81936542546199E-98
        0x14181f4e1359bbe4L    # 7.165417615988811E-212
    .end array-data

    :array_e
    .array-data 8
        -0x677b2c8c074d785L    # -2.692410811356417E277
        0x96025d38de4a061L
        -0x658688cc3a8e0141L
    .end array-data

    :array_f
    .array-data 8
        -0x1c05fb883cc7dbd6L    # -4.0218168470519913E173
        0x5207ece4441e90c7L    # 1.487329563090055E87
        -0x65bfc0d08667428fL
        -0x7e9e4dca04575cfL
    .end array-data

    :array_10
    .array-data 8
        0x63148e397cc4bc68L
        0x2999faccbff29f77L
        -0x353c824acd5c6325L    # -1.4584932250526663E52
        0x5343f4aada2f49a8L    # 1.3008174085112762E93
    .end array-data

    :array_11
    .array-data 8
        -0x719f2841655d2d69L
        -0x738a5bd72803da8bL
        -0x407dac7c2c16d81bL    # -0.00894835462999661
        0x7406555762c9d93dL    # 7.995038555883408E250
        -0x6526519cca30092bL    # -2.47558548956203E-179
    .end array-data
.end method
