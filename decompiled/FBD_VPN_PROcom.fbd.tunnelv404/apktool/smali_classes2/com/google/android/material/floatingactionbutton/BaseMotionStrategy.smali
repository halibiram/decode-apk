.class abstract Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/floatingactionbutton/MotionStrategy;


# instance fields
.field private final context:Landroid/content/Context;

.field private defaultMotionSpec:Lcom/google/android/material/animation/MotionSpec;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final fab:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private motionSpec:Lcom/google/android/material/animation/MotionSpec;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final tracker:Lcom/google/android/material/floatingactionbutton/AnimatorTracker;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/AnimatorTracker;)V
    .locals 1
    .param p1    # Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

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
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->listeners:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->fab:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->context:Landroid/content/Context;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->tracker:Lcom/google/android/material/floatingactionbutton/AnimatorTracker;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;)Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->fab:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final addAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->listeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public createAnimator()Landroid/animation/AnimatorSet;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->getCurrentMotionSpec()Lcom/google/android/material/animation/MotionSpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->createAnimator(Lcom/google/android/material/animation/MotionSpec;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator(Lcom/google/android/material/animation/MotionSpec;)Landroid/animation/AnimatorSet;
    .locals 6
    .param p1    # Lcom/google/android/material/animation/MotionSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x3

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x2

    new-array v4, v3, [J

    fill-array-data v4, :array_0

    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v3, [J

    fill-array-data v4, :array_1

    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->fab:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/android/material/animation/MotionSpec;->getAnimator(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v3, [J

    fill-array-data v4, :array_2

    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v3, [J

    fill-array-data v4, :array_3

    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->fab:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/android/material/animation/MotionSpec;->getAnimator(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v3, [J

    fill-array-data v4, :array_4

    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->fab:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/android/material/animation/MotionSpec;->getAnimator(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v3, [J

    fill-array-data v4, :array_5

    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v3, [J

    fill-array-data v4, :array_6

    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->fab:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v5, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->WIDTH:Landroid/util/Property;

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/android/material/animation/MotionSpec;->getAnimator(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_2
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v3, [J

    fill-array-data v4, :array_7

    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v3, [J

    fill-array-data v3, :array_8

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->fab:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v4, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->HEIGHT:Landroid/util/Property;

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/android/material/animation/MotionSpec;->getAnimator(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_3
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_9

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 13
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_a

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->fab:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v4, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->PADDING_START:Landroid/util/Property;

    .line 14
    invoke-virtual {p1, v2, v3, v4}, Lcom/google/android/material/animation/MotionSpec;->getAnimator(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_b

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 17
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_c

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->fab:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v4, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->PADDING_END:Landroid/util/Property;

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/android/material/animation/MotionSpec;->getAnimator(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_5
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_d

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 19
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_e

    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->fab:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    new-instance v3, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy$1;

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v5, 0x4

    new-array v5, v5, [J

    fill-array-data v5, :array_f

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Ljava/lang/Float;

    invoke-direct {v3, p0, v5, v4}, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy$1;-><init>(Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;Ljava/lang/Class;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/material/animation/MotionSpec;->getAnimator(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 21
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_6
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 23
    invoke-static {p1, v1}, Lcom/google/android/material/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    return-object p1

    :array_0
    .array-data 8
        -0x247e71dcd68ef786L    # -6.230379217302425E132
        0x69e8b5322908b38eL    # 1.513007657245468E202
    .end array-data

    :array_1
    .array-data 8
        -0x31874ecdc3cd421dL    # -1.0651194578859364E70
        0x6cbf9dbf15ea0e5bL    # 6.8118729863462285E215
    .end array-data

    :array_2
    .array-data 8
        0x1a2edaee670d1268L
        0x11617169d040c830L    # 5.890537800017225E-225
    .end array-data

    :array_3
    .array-data 8
        0x27b73a06665c7cL
        -0xdb0e47280411635L    # -4.148522229995621E242
    .end array-data

    :array_4
    .array-data 8
        0xd8678a4b40eb716L
        -0x3a8b616f94b5d0ddL    # -3.988370297404182E26
    .end array-data

    :array_5
    .array-data 8
        0x4de234deef6b322bL    # 1.5338968419046262E67
        0x87e847b896c6c19L
    .end array-data

    :array_6
    .array-data 8
        0x41523ee7108e361bL    # 4783004.258679892
        -0x6dd4d7b44c23ad93L    # -3.756483336805128E-221
    .end array-data

    :array_7
    .array-data 8
        -0x8d8f67b2578343eL    # -9.285292069846618E265
        -0x21418796e7115b1cL
    .end array-data

    :array_8
    .array-data 8
        -0x1602de1d7813c34bL    # -3.567901152672216E202
        0x5a40cd7369b96a7cL    # 5.686999493869053E126
    .end array-data

    :array_9
    .array-data 8
        -0x2b34e94c49024b5dL    # -2.9624867186820185E100
        0x7391b7c41dfdb4b4L    # 4.955267678719721E248
        0x5e6c7dfefbf7a979L    # 7.115631731120845E146
    .end array-data

    :array_a
    .array-data 8
        0x302c15662771a721L    # 1.2126730842540545E-76
        -0x3703b3813ff9836L
        0x43eddf730fd08ef5L    # 1.7220525269336959E19
    .end array-data

    :array_b
    .array-data 8
        0x71b8b9750e300134L    # 6.439958538847144E239
        -0x4b28486290cbabbeL    # -3.8690562836452883E-54
        -0x28651fe84e92f508L    # -1.0341241810929928E114
    .end array-data

    :array_c
    .array-data 8
        0x297e4d239b29c455L    # 8.063863941172733E-109
        0x691d83247ccd7b2fL    # 2.2060729054575483E198
        -0x26a6baed8526bcc0L    # -2.6101188853552047E122
    .end array-data

    :array_d
    .array-data 8
        0x39567a9b366db49dL    # 1.7317138421736126E-32
        0x77118bbf2830b91aL    # 3.535993725892507E265
        -0xb31d762e6ae25ffL    # -4.422198260360338E254
    .end array-data

    :array_e
    .array-data 8
        -0x5fd552904f87f9eaL    # -9.948488833275987E-154
        -0x7d74c2e5cdd9f4b2L
        -0x7bd9ecc2fba05b86L
    .end array-data

    :array_f
    .array-data 8
        -0x1101044f2dfb5dd5L    # -4.5873572384785213E226
        0x2c2f8f8f649c8510L    # 7.387868283604982E-96
        0x4ec6fedecfbb85ceL    # 3.174194217355945E71
        0x6648701a9dd2559dL    # 5.19196016536401E184
    .end array-data
.end method

.method public final getCurrentMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->motionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->defaultMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->context:Landroid/content/Context;

    .line 11
    .line 12
    invoke-interface {p0}, Lcom/google/android/material/floatingactionbutton/MotionStrategy;->getDefaultMotionSpecResource()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v0, v1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->defaultMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->defaultMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 23
    .line 24
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/google/android/material/animation/MotionSpec;

    .line 29
    .line 30
    return-object v0
.end method

.method public final getListeners()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->listeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->motionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 2
    .line 3
    return-object v0
.end method

.method public onAnimationCancel()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->tracker:Lcom/google/android/material/floatingactionbutton/AnimatorTracker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/AnimatorTracker;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAnimationEnd()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->tracker:Lcom/google/android/material/floatingactionbutton/AnimatorTracker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/AnimatorTracker;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->tracker:Lcom/google/android/material/floatingactionbutton/AnimatorTracker;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/AnimatorTracker;->onNextAnimationStart(Landroid/animation/Animator;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final removeAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->listeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 0
    .param p1    # Lcom/google/android/material/animation/MotionSpec;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->motionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 2
    .line 3
    return-void
.end method
