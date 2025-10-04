.class public final Lcom/google/android/material/timepicker/MaterialTimePicker;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;
    }
.end annotation


# static fields
.field public static final INPUT_MODE_CLOCK:I = 0x0

.field static final INPUT_MODE_EXTRA:Ljava/lang/String;

.field public static final INPUT_MODE_KEYBOARD:I = 0x1

.field static final NEGATIVE_BUTTON_TEXT_EXTRA:Ljava/lang/String;

.field static final NEGATIVE_BUTTON_TEXT_RES_EXTRA:Ljava/lang/String;

.field static final OVERRIDE_THEME_RES_ID:Ljava/lang/String;

.field static final POSITIVE_BUTTON_TEXT_EXTRA:Ljava/lang/String;

.field static final POSITIVE_BUTTON_TEXT_RES_EXTRA:Ljava/lang/String;

.field static final TIME_MODEL_EXTRA:Ljava/lang/String;

.field static final TITLE_RES_EXTRA:Ljava/lang/String;

.field static final TITLE_TEXT_EXTRA:Ljava/lang/String;


# instance fields
.field private activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private cancelButton:Landroid/widget/Button;

.field private final cancelListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/DialogInterface$OnCancelListener;",
            ">;"
        }
    .end annotation
.end field

.field private clockIcon:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private final dismissListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/DialogInterface$OnDismissListener;",
            ">;"
        }
    .end annotation
.end field

.field private inputMode:I

.field private keyboardIcon:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private modeButton:Lcom/google/android/material/button/MaterialButton;

.field private final negativeButtonListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private negativeButtonText:Ljava/lang/CharSequence;

.field private negativeButtonTextResId:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private overrideThemeResId:I

.field private final positiveButtonListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private positiveButtonText:Ljava/lang/CharSequence;

.field private positiveButtonTextResId:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private textInputStub:Landroid/view/ViewStub;

.field private time:Lcom/google/android/material/timepicker/TimeModel;

.field private timePickerClockPresenter:Lcom/google/android/material/timepicker/TimePickerClockPresenter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private timePickerTextInputPresenter:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

.field private titleResId:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private titleText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x4

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/MaterialTimePicker;->TIME_MODEL_EXTRA:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_1

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/MaterialTimePicker;->INPUT_MODE_EXTRA:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_2

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/MaterialTimePicker;->TITLE_RES_EXTRA:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_3

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/MaterialTimePicker;->TITLE_TEXT_EXTRA:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x6

    new-array v2, v1, [J

    fill-array-data v2, :array_4

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/MaterialTimePicker;->POSITIVE_BUTTON_TEXT_RES_EXTRA:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x5

    new-array v3, v2, [J

    fill-array-data v3, :array_5

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/MaterialTimePicker;->POSITIVE_BUTTON_TEXT_EXTRA:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_6

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/MaterialTimePicker;->NEGATIVE_BUTTON_TEXT_RES_EXTRA:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_7

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/MaterialTimePicker;->NEGATIVE_BUTTON_TEXT_EXTRA:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_8

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/MaterialTimePicker;->OVERRIDE_THEME_RES_ID:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        -0x5bc48d17abccd0faL    # -3.77647153904341E-134
        0x1cb1f8bd6a4b42a1L
        0x47a5febefa8a5688L    # 1.4618252410614972E37
        0x4008f267c7b7a0a5L    # 3.1183620074189826
    .end array-data

    :array_1
    .array-data 8
        0x4b743bf9cc8f70c8L    # 3.1008944456852014E55
        0x7cd1385ff0dcd9dL    # 4.29984211837861E-271
        -0x6ca6f6c90bc98212L
        -0x78a62d6430561334L
    .end array-data

    :array_2
    .array-data 8
        -0x4c636bf27613abffL    # -4.4460848517493635E-60
        -0x6d876089e0fb9445L    # -1.089889094738481E-219
        0x2d5f5dcb1d101eddL    # 3.8495123405858436E-90
        -0x641c5118d4d63afdL    # -2.486958580476359E-174
    .end array-data

    :array_3
    .array-data 8
        -0x309007ac7acb095dL    # -4.5188915044824023E74
        -0xda7f3a0916b6320L    # -6.4141847747493E242
        0x276527aec6442589L    # 6.553977839683311E-119
        -0x27800986822e66ffL    # -2.0150369621812662E118
    .end array-data

    :array_4
    .array-data 8
        -0x27839888c4261ae6L    # -1.790689617590155E118
        -0x21ba33c23b371706L    # -1.360946104576374E146
        -0x6e0547b98473f8b4L
        0x25cd37f92023cc7eL
        -0x7ae057af399f9662L    # -5.322313812776233E-284
        0x1ef79ba5efcb990cL    # 1.67919648670708E-159
    .end array-data

    :array_5
    .array-data 8
        -0x672733ce8f35595dL    # -5.565611618302483E-189
        0x129b636dd1fecf2L
        -0x684fedad1988a178L
        0x43d5d09ead46ccf5L    # 6.2877229480266844E18
        -0x6afe2c9775d47925L
    .end array-data

    :array_6
    .array-data 8
        -0x11742a49aa4e2e0cL    # -3.219697735342257E224
        -0xe7daa109430785fL    # -5.96985395801345E238
        -0x2d6de67093814358L    # -5.760942948146008E89
        0x545f233a80a5ceadL    # 2.6603813735699684E98
        -0x27d6551d86c681f0L    # -5.0567585581520596E116
        0x669f267ad7df7434L    # 2.117774612358565E186
    .end array-data

    :array_7
    .array-data 8
        -0x2409c0489c6e47dbL    # -1.0107097693537582E135
        -0x48a004d408f79be4L    # -5.736335591931314E-42
        0x3c1a65bf6fb27e3fL    # 3.577521896398921E-19
        0x149e16157107aa35L
        0x35b1759b3c2ca8eeL    # 4.66648680430234E-50
    .end array-data

    :array_8
    .array-data 8
        -0x6c141b5104b92731L
        -0x99498bac2bfa499L    # -2.696563767354955E262
        0x13d10fbcc1f47662L    # 3.167521900346185E-213
        0x4fd4ca97f93d845eL    # 3.76168358478166E76
        0x3746b47d4b1fc290L    # 2.0362581271832916E-42
        0x17bab5e135a92dfcL
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonListeners:Ljava/util/Set;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonListeners:Ljava/util/Set;

    .line 17
    .line 18
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelListeners:Ljava/util/Set;

    .line 24
    .line 25
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->dismissListeners:Ljava/util/Set;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleResId:I

    .line 34
    .line 35
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonTextResId:I

    .line 36
    .line 37
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonTextResId:I

    .line 38
    .line 39
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    .line 40
    .line 41
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->overrideThemeResId:I

    .line 42
    .line 43
    return-void
.end method

.method public static synthetic access$1000(Lcom/google/android/material/timepicker/MaterialTimePicker;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonListeners:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Lcom/google/android/material/timepicker/MaterialTimePicker;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1102(Lcom/google/android/material/timepicker/MaterialTimePicker;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$1200(Lcom/google/android/material/timepicker/MaterialTimePicker;)Lcom/google/android/material/button/MaterialButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->modeButton:Lcom/google/android/material/button/MaterialButton;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1300(Lcom/google/android/material/timepicker/MaterialTimePicker;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/timepicker/MaterialTimePicker;->updateInputMode(Lcom/google/android/material/button/MaterialButton;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1400(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Lcom/google/android/material/timepicker/MaterialTimePicker;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->newInstance(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Lcom/google/android/material/timepicker/MaterialTimePicker;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$900(Lcom/google/android/material/timepicker/MaterialTimePicker;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonListeners:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method private dataForMode(I)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    new-instance p1, Landroid/util/Pair;

    .line 7
    .line 8
    iget v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->clockIcon:I

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget v1, Lcom/google/android/material/R$string;->material_timepicker_clock_mode_description:I

    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    const/4 v3, 0x4

    .line 34
    new-array v3, v3, [J

    .line 35
    .line 36
    fill-array-data v3, :array_0

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v1, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :cond_1
    new-instance p1, Landroid/util/Pair;

    .line 51
    .line 52
    iget v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->keyboardIcon:I

    .line 53
    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sget v1, Lcom/google/android/material/R$string;->material_timepicker_text_input_mode_description:I

    .line 59
    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    return-object p1

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        -0x11e121665ecf055bL    # -2.7896316296506972E222
        -0x6cdbba6e45e89905L    # -1.837657080191453E-216
        0x12a867abefafe516L
        -0x3e0d01c377124d8cL    # -5.098424462856068E9
    .end array-data
.end method

.method private getThemeResId()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->overrideThemeResId:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget v1, Lcom/google/android/material/R$attr;->materialTimePickerTheme:I

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 21
    .line 22
    :goto_0
    return v0
.end method

.method private initializeOrRetrieveActivePresenterForMode(ILcom/google/android/material/timepicker/TimePickerView;Landroid/view/ViewStub;)Lcom/google/android/material/timepicker/TimePickerPresenter;
    .locals 0
    .param p2    # Lcom/google/android/material/timepicker/TimePickerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewStub;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerClockPresenter:Lcom/google/android/material/timepicker/TimePickerClockPresenter;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Lcom/google/android/material/timepicker/TimePickerClockPresenter;

    .line 8
    .line 9
    iget-object p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    .line 10
    .line 11
    invoke-direct {p1, p2, p3}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;-><init>(Lcom/google/android/material/timepicker/TimePickerView;Lcom/google/android/material/timepicker/TimeModel;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerClockPresenter:Lcom/google/android/material/timepicker/TimePickerClockPresenter;

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerTextInputPresenter:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    .line 18
    .line 19
    if-nez p1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/widget/LinearLayout;

    .line 26
    .line 27
    new-instance p2, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    .line 28
    .line 29
    iget-object p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    .line 30
    .line 31
    invoke-direct {p2, p1, p3}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;-><init>(Landroid/widget/LinearLayout;Lcom/google/android/material/timepicker/TimeModel;)V

    .line 32
    .line 33
    .line 34
    iput-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerTextInputPresenter:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    .line 35
    .line 36
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerTextInputPresenter:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->clearCheck()V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerTextInputPresenter:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    .line 42
    .line 43
    return-object p1
.end method

.method private synthetic lambda$onViewCreated$0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->resetChecked()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private static newInstance(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Lcom/google/android/material/timepicker/MaterialTimePicker;
    .locals 7
    .param p0    # Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x6

    .line 3
    new-instance v2, Lcom/google/android/material/timepicker/MaterialTimePicker;

    .line 4
    .line 5
    invoke-direct {v2}, Lcom/google/android/material/timepicker/MaterialTimePicker;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v3, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v5, 0x4

    .line 16
    new-array v6, v5, [J

    .line 17
    .line 18
    fill-array-data v6, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$000(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Lcom/google/android/material/timepicker/TimeModel;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$100(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    new-array v6, v5, [J

    .line 44
    .line 45
    fill-array-data v6, :array_1

    .line 46
    .line 47
    .line 48
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$100(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    invoke-virtual {v3, v4, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    :cond_0
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    new-array v6, v5, [J

    .line 69
    .line 70
    fill-array-data v6, :array_2

    .line 71
    .line 72
    .line 73
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$200(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    invoke-virtual {v3, v4, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$300(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Ljava/lang/CharSequence;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    if-eqz v4, :cond_1

    .line 92
    .line 93
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 94
    .line 95
    new-array v5, v5, [J

    .line 96
    .line 97
    fill-array-data v5, :array_3

    .line 98
    .line 99
    .line 100
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$300(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Ljava/lang/CharSequence;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    :cond_1
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 115
    .line 116
    new-array v5, v1, [J

    .line 117
    .line 118
    fill-array-data v5, :array_4

    .line 119
    .line 120
    .line 121
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$400(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 133
    .line 134
    .line 135
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$500(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Ljava/lang/CharSequence;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    if-eqz v4, :cond_2

    .line 140
    .line 141
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 142
    .line 143
    new-array v5, v0, [J

    .line 144
    .line 145
    fill-array-data v5, :array_5

    .line 146
    .line 147
    .line 148
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$500(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Ljava/lang/CharSequence;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    :cond_2
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 163
    .line 164
    new-array v5, v1, [J

    .line 165
    .line 166
    fill-array-data v5, :array_6

    .line 167
    .line 168
    .line 169
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$600(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)I

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 181
    .line 182
    .line 183
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$700(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Ljava/lang/CharSequence;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    if-eqz v4, :cond_3

    .line 188
    .line 189
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 190
    .line 191
    new-array v0, v0, [J

    .line 192
    .line 193
    fill-array-data v0, :array_7

    .line 194
    .line 195
    .line 196
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$700(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Ljava/lang/CharSequence;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 208
    .line 209
    .line 210
    :cond_3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 211
    .line 212
    new-array v1, v1, [J

    .line 213
    .line 214
    fill-array-data v1, :array_8

    .line 215
    .line 216
    .line 217
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$800(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)I

    .line 225
    .line 226
    .line 227
    move-result p0

    .line 228
    invoke-virtual {v3, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 232
    .line 233
    .line 234
    return-object v2

    .line 235
    :array_0
    .array-data 8
        0x67581cdc1cdc70c0L    # 6.714655482435714E189
        0x454c13d5c2bc0d8aL    # 6.788718220195453E25
        0x1c6a2692a8a3f4eeL    # 8.458539727976404E-172
        -0x658c903d8ad295ebL    # -2.927534644820738E-181
    .end array-data

    .line 236
    .line 237
    .line 238
    :array_1
    .array-data 8
        -0x4cd49e067f3ce356L    # -3.3281844454902928E-62
        -0x761f588f6a11baedL    # -4.231106300950743E-261
        0x3301149b93f5b73L
        0x56a38afb3eb7c13dL    # 2.2948661951552144E109
    .end array-data

    :array_2
    .array-data 8
        0x24dc4962c4db8793L    # 3.985140347785076E-131
        -0x42c42a650b496353L    # -9.888763830746904E-14
        0x1ca6d73d7f55ed3cL    # 1.182070661231205E-170
        0x56e5b339a5bccae4L    # 4.077088407608485E110
    .end array-data

    :array_3
    .array-data 8
        0x665707621f8a3278L    # 9.785193904790635E184
        -0x46b8db0e7e198129L    # -8.914863976926216E-33
        -0x338d20985fc7105dL    # -1.895451211410133E60
        0x4de5eff1bba8c086L    # 1.8482123778912976E67
    .end array-data

    :array_4
    .array-data 8
        0x9c3148e91069c7aL
        0xed07fe6816431eaL
        -0x49e7aada29e6c82eL    # -4.162261602200246E-48
        0x7fe29f249f3aaaf8L    # 1.0461255300586786E308
        0x7e4fa173eecc6eafL    # 2.6478547480721033E300
        -0x18b7c567fdd392fdL    # -3.373499609342275E189
    .end array-data

    :array_5
    .array-data 8
        -0x30d4f5ce5c63c8eeL    # -2.3887613240018844E73
        0x517c580bca670216L    # 3.4414294325712647E84
        0x7b19183d2ccef59fL    # 9.329054653335806E284
        -0x674b6195cbb2a5b0L
        -0x58db1b90313a1a36L
    .end array-data

    :array_6
    .array-data 8
        0x4b5c0a48e50bbc71L    # 1.0742860705781483E55
        0x21e2e61952afe342L
        0xb1645bbd4bc8c29L
        -0x6ccf2c3d3bc4e199L    # -3.050807021305871E-216
        0x1efb448719655724L
        -0x6f0fa967207fe4acL    # -4.310516888493006E-227
    .end array-data

    :array_7
    .array-data 8
        0x2eaaa892df8672a9L    # 6.861305910910964E-84
        0x55e128e60c02a560L    # 4.919485794387233E105
        0x7da73779557883f6L
        0x19283917e372a856L
        0x7e25ace38cb1ad45L    # 4.5361955106957936E299
    .end array-data

    :array_8
    .array-data 8
        0x25c04bf62fb2d376L    # 7.523365791042834E-127
        -0x7c93681571759eb0L
        0x339c48ef54f55b14L    # 4.400434418668814E-60
        -0x3cd25296b6b52acdL    # -4.1767210187106815E15
        -0x40e4b476dbe7ec11L    # -1.0412239591779648E-4
        -0x2ce688a9082404a1L    # -2.0750202422866842E92
    .end array-data
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x6

    .line 3
    const/4 v2, 0x4

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    new-array v4, v2, [J

    .line 10
    .line 11
    fill-array-data v4, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/google/android/material/timepicker/TimeModel;

    .line 26
    .line 27
    iput-object v3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    .line 28
    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    new-instance v3, Lcom/google/android/material/timepicker/TimeModel;

    .line 32
    .line 33
    invoke-direct {v3}, Lcom/google/android/material/timepicker/TimeModel;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    .line 37
    .line 38
    :cond_1
    iget-object v3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    .line 39
    .line 40
    iget v3, v3, Lcom/google/android/material/timepicker/TimeModel;->format:I

    .line 41
    .line 42
    const/4 v4, 0x1

    .line 43
    const/4 v5, 0x0

    .line 44
    if-ne v3, v4, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v4, 0x0

    .line 48
    :goto_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    new-array v6, v2, [J

    .line 51
    .line 52
    fill-array-data v6, :array_1

    .line 53
    .line 54
    .line 55
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    iput v3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    .line 67
    .line 68
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v4, v2, [J

    .line 71
    .line 72
    fill-array-data v4, :array_2

    .line 73
    .line 74
    .line 75
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {p1, v3, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    iput v3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleResId:I

    .line 87
    .line 88
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 89
    .line 90
    new-array v2, v2, [J

    .line 91
    .line 92
    fill-array-data v2, :array_3

    .line 93
    .line 94
    .line 95
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    iput-object v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleText:Ljava/lang/CharSequence;

    .line 107
    .line 108
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    new-array v3, v1, [J

    .line 111
    .line 112
    fill-array-data v3, :array_4

    .line 113
    .line 114
    .line 115
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {p1, v2, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    iput v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonTextResId:I

    .line 127
    .line 128
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 129
    .line 130
    new-array v3, v0, [J

    .line 131
    .line 132
    fill-array-data v3, :array_5

    .line 133
    .line 134
    .line 135
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    iput-object v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonText:Ljava/lang/CharSequence;

    .line 147
    .line 148
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 149
    .line 150
    new-array v3, v1, [J

    .line 151
    .line 152
    fill-array-data v3, :array_6

    .line 153
    .line 154
    .line 155
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {p1, v2, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    iput v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonTextResId:I

    .line 167
    .line 168
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 169
    .line 170
    new-array v0, v0, [J

    .line 171
    .line 172
    fill-array-data v0, :array_7

    .line 173
    .line 174
    .line 175
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonText:Ljava/lang/CharSequence;

    .line 187
    .line 188
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 189
    .line 190
    new-array v1, v1, [J

    .line 191
    .line 192
    fill-array-data v1, :array_8

    .line 193
    .line 194
    .line 195
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {p1, v0, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    iput p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->overrideThemeResId:I

    .line 207
    .line 208
    return-void

    .line 209
    :array_0
    .array-data 8
        -0x70b32c065a779ad6L
        -0x28f6c091bd32f284L    # -1.8974552807166088E111
        -0x4517a40ce1ed39e9L    # -6.2967000417407875E-25
        -0x4af7439e9c420aafL    # -3.2281804922774227E-53
    .end array-data

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
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    :array_1
    .array-data 8
        0x2b79ae9c88976bf0L    # 2.935428906433309E-99
        -0x1742932f1bfe9e9L
        -0x3e4e32800103e737L    # -2.986803189847532E8
        0x2c50674c29391aefL    # 3.0718362235719874E-95
    .end array-data

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    :array_2
    .array-data 8
        -0x23bc87939df17aa2L    # -2.830368691009163E136
        -0x1bc7d12895b642a4L    # -5.981184785693241E174
        -0x7bcf0de4828179d6L
        -0x27f4f0320588b662L    # -1.3328583979349426E116
    .end array-data

    :array_3
    .array-data 8
        -0x7b7e7f10e13a9e90L    # -5.747549614661863E-287
        -0x252b7a6edb8ca5f7L    # -3.5562514411125514E129
        0x1f0de46abffd16edL
        0x64ca2d43e41f6c70L    # 3.3148532244029293E177
    .end array-data

    :array_4
    .array-data 8
        -0x5dabdb2ba0880ad6L    # -2.581100332582944E-143
        0x7efc8993779ebb7dL    # 4.8924922572546205E303
        0xc26922b1456a927L
        0x2913257b69e42244L
        0x72359c1d19d86380L
        -0x5b0f64e264b3467L
    .end array-data

    :array_5
    .array-data 8
        -0x1a5207e8b4d49fffL    # -6.217863478899617E181
        0x4e51cc17e5dd6f90L    # 1.919250527487753E69
        0x5bf2b6d2d9a6fa3dL    # 8.501357759224207E134
        -0x42d74ab4af0d675eL    # -4.389054539195155E-14
        0x61f0625de1944e38L    # 5.896904472157772E163
    .end array-data

    :array_6
    .array-data 8
        0x3a0c26851d939645L    # 4.4413608413508485E-29
        0x42b480babf14a580L    # 2.25431214542455E13
        0x8af4d997f41ddf1L
        -0x4daa8eaf1e86fb46L    # -3.181406945210864E-66
        -0x39f7081c08a21cd3L    # -2.472742865107134E29
        0x58dbdf108be845b9L    # 1.1245434438108107E120
    .end array-data

    :array_7
    .array-data 8
        -0x89a0a8f9f6c008aL
        -0x2209742e4a1fa5c2L    # -4.3989668365280776E144
        0x60e783f0f5a6761L
        0x7dcf0b53e62ad34fL    # 1.0151422104487546E298
        0x411ef3a97e89662fL    # 507114.3735710112
    .end array-data

    :array_8
    .array-data 8
        -0x77373b84f0a31270L    # -2.400358258315019E-266
        -0x73b24a56ff356e12L
        -0x717536653425e5d1L
        0x79313ee94834ac8L
        -0x4f2a74f596fb38feL    # -1.905152830830961E-73
        -0x76012b3c5df7033aL
    .end array-data
.end method

.method private updateCancelButtonVisibility()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelButton:Landroid/widget/Button;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->isCancelable()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 v1, 0x8

    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method private updateInputMode(Lcom/google/android/material/button/MaterialButton;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->textInputStub:Landroid/view/ViewStub;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/google/android/material/timepicker/TimePickerPresenter;->hide()V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->textInputStub:Landroid/view/ViewStub;

    .line 24
    .line 25
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/timepicker/MaterialTimePicker;->initializeOrRetrieveActivePresenterForMode(ILcom/google/android/material/timepicker/TimePickerView;Landroid/view/ViewStub;)Lcom/google/android/material/timepicker/TimePickerPresenter;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/google/android/material/timepicker/TimePickerPresenter;->show()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    .line 35
    .line 36
    invoke-interface {v0}, Lcom/google/android/material/timepicker/TimePickerPresenter;->invalidate()V

    .line 37
    .line 38
    .line 39
    iget v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    .line 40
    .line 41
    invoke-direct {p0, v0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->dataForMode(I)Landroid/util/Pair;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v0, Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    const/4 v0, 0x4

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/google/android/material/timepicker/MaterialTimePicker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->lambda$onViewCreated$0()V

    return-void
.end method


# virtual methods
.method public addOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Z
    .locals 1
    .param p1    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public addOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Z
    .locals 1
    .param p1    # Landroid/content/DialogInterface$OnDismissListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->dismissListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public addOnNegativeButtonClickListener(Landroid/view/View$OnClickListener;)Z
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public addOnPositiveButtonClickListener(Landroid/view/View$OnClickListener;)Z
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public clearOnCancelListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public clearOnDismissListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->dismissListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public clearOnNegativeButtonClickListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public clearOnPositiveButtonClickListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getHour()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
        to = 0x17L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    .line 4
    .line 5
    rem-int/lit8 v0, v0, 0x18

    .line 6
    .line 7
    return v0
.end method

.method public getInputMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    .line 2
    .line 3
    return v0
.end method

.method public getMinute()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
        to = 0x3bL
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    .line 4
    .line 5
    return v0
.end method

.method public getTimePickerClockPresenter()Lcom/google/android/material/timepicker/TimePickerClockPresenter;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerClockPresenter:Lcom/google/android/material/timepicker/TimePickerClockPresenter;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/content/DialogInterface$OnCancelListener;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/timepicker/MaterialTimePicker;->restoreState(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance p1, Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->getThemeResId()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 19
    .line 20
    sget v2, Lcom/google/android/material/R$attr;->materialTimePickerStyle:I

    .line 21
    .line 22
    sget v3, Lcom/google/android/material/R$style;->Widget_MaterialComponents_TimePicker:I

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-direct {v1, v0, v4, v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    .line 27
    .line 28
    sget-object v5, Lcom/google/android/material/R$styleable;->MaterialTimePicker:[I

    .line 29
    .line 30
    invoke-virtual {v0, v4, v5, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    sget v3, Lcom/google/android/material/R$styleable;->MaterialTimePicker_clockIcon:I

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    iput v3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->clockIcon:I

    .line 42
    .line 43
    sget v3, Lcom/google/android/material/R$styleable;->MaterialTimePicker_keyboardIcon:I

    .line 44
    .line 45
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    iput v3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->keyboardIcon:I

    .line 50
    .line 51
    sget v3, Lcom/google/android/material/R$styleable;->MaterialTimePicker_backgroundTint:I

    .line 52
    .line 53
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    .line 76
    .line 77
    const/4 v2, 0x1

    .line 78
    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 79
    .line 80
    .line 81
    const/4 v2, -0x2

    .line 82
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-virtual {v1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 94
    .line 95
    .line 96
    return-object p1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget p3, Lcom/google/android/material/R$layout;->material_timepicker_dialog:I

    .line 2
    .line 3
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/view/ViewGroup;

    .line 8
    .line 9
    sget p2, Lcom/google/android/material/R$id;->material_timepicker_view:I

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Lcom/google/android/material/timepicker/TimePickerView;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    .line 18
    .line 19
    invoke-virtual {p2, p0}, Lcom/google/android/material/timepicker/TimePickerView;->setOnDoubleTapListener(Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;)V

    .line 20
    .line 21
    .line 22
    sget p2, Lcom/google/android/material/R$id;->material_textinput_timepicker:I

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    check-cast p2, Landroid/view/ViewStub;

    .line 29
    .line 30
    iput-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->textInputStub:Landroid/view/ViewStub;

    .line 31
    .line 32
    sget p2, Lcom/google/android/material/R$id;->material_timepicker_mode_button:I

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    .line 39
    .line 40
    iput-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->modeButton:Lcom/google/android/material/button/MaterialButton;

    .line 41
    .line 42
    sget p2, Lcom/google/android/material/R$id;->header_title:I

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    check-cast p2, Landroid/widget/TextView;

    .line 49
    .line 50
    iget p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleResId:I

    .line 51
    .line 52
    if-eqz p3, :cond_0

    .line 53
    .line 54
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleText:Ljava/lang/CharSequence;

    .line 59
    .line 60
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    if-nez p3, :cond_1

    .line 65
    .line 66
    iget-object p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleText:Ljava/lang/CharSequence;

    .line 67
    .line 68
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->modeButton:Lcom/google/android/material/button/MaterialButton;

    .line 72
    .line 73
    invoke-direct {p0, p2}, Lcom/google/android/material/timepicker/MaterialTimePicker;->updateInputMode(Lcom/google/android/material/button/MaterialButton;)V

    .line 74
    .line 75
    .line 76
    sget p2, Lcom/google/android/material/R$id;->material_timepicker_ok_button:I

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    check-cast p2, Landroid/widget/Button;

    .line 83
    .line 84
    new-instance p3, Lcom/google/android/material/timepicker/MaterialTimePicker$1;

    .line 85
    .line 86
    invoke-direct {p3, p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$1;-><init>(Lcom/google/android/material/timepicker/MaterialTimePicker;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    .line 91
    .line 92
    iget p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonTextResId:I

    .line 93
    .line 94
    if-eqz p3, :cond_2

    .line 95
    .line 96
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    iget-object p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonText:Ljava/lang/CharSequence;

    .line 101
    .line 102
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result p3

    .line 106
    if-nez p3, :cond_3

    .line 107
    .line 108
    iget-object p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonText:Ljava/lang/CharSequence;

    .line 109
    .line 110
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    :cond_3
    :goto_1
    sget p2, Lcom/google/android/material/R$id;->material_timepicker_cancel_button:I

    .line 114
    .line 115
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    check-cast p2, Landroid/widget/Button;

    .line 120
    .line 121
    iput-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelButton:Landroid/widget/Button;

    .line 122
    .line 123
    new-instance p3, Lcom/google/android/material/timepicker/MaterialTimePicker$2;

    .line 124
    .line 125
    invoke-direct {p3, p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$2;-><init>(Lcom/google/android/material/timepicker/MaterialTimePicker;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    .line 130
    .line 131
    iget p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonTextResId:I

    .line 132
    .line 133
    if-eqz p2, :cond_4

    .line 134
    .line 135
    iget-object p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelButton:Landroid/widget/Button;

    .line 136
    .line 137
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(I)V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_4
    iget-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonText:Ljava/lang/CharSequence;

    .line 142
    .line 143
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    if-nez p2, :cond_5

    .line 148
    .line 149
    iget-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelButton:Landroid/widget/Button;

    .line 150
    .line 151
    iget-object p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonText:Ljava/lang/CharSequence;

    .line 152
    .line 153
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->updateCancelButtonVisibility()V

    .line 157
    .line 158
    .line 159
    iget-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->modeButton:Lcom/google/android/material/button/MaterialButton;

    .line 160
    .line 161
    new-instance p3, Lcom/google/android/material/timepicker/MaterialTimePicker$3;

    .line 162
    .line 163
    invoke-direct {p3, p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$3;-><init>(Lcom/google/android/material/timepicker/MaterialTimePicker;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    .line 168
    .line 169
    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerClockPresenter:Lcom/google/android/material/timepicker/TimePickerClockPresenter;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerTextInputPresenter:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/google/android/material/timepicker/TimePickerView;->setOnDoubleTapListener(Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->dismissListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onDoubleTap()V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->modeButton:Lcom/google/android/material/button/MaterialButton;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->updateInputMode(Lcom/google/android/material/button/MaterialButton;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerTextInputPresenter:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->resetChecked()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    new-array v2, v1, [J

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    .line 20
    .line 21
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    new-array v2, v1, [J

    .line 27
    .line 28
    fill-array-data v2, :array_1

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    .line 39
    .line 40
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    new-array v2, v1, [J

    .line 46
    .line 47
    fill-array-data v2, :array_2

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleResId:I

    .line 58
    .line 59
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 63
    .line 64
    new-array v1, v1, [J

    .line 65
    .line 66
    fill-array-data v1, :array_3

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleText:Ljava/lang/CharSequence;

    .line 77
    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    const/4 v1, 0x6

    .line 84
    new-array v2, v1, [J

    .line 85
    .line 86
    fill-array-data v2, :array_4

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonTextResId:I

    .line 97
    .line 98
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 102
    .line 103
    const/4 v2, 0x5

    .line 104
    new-array v3, v2, [J

    .line 105
    .line 106
    fill-array-data v3, :array_5

    .line 107
    .line 108
    .line 109
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iget-object v3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonText:Ljava/lang/CharSequence;

    .line 117
    .line 118
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 122
    .line 123
    new-array v3, v1, [J

    .line 124
    .line 125
    fill-array-data v3, :array_6

    .line 126
    .line 127
    .line 128
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iget v3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonTextResId:I

    .line 136
    .line 137
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 138
    .line 139
    .line 140
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 141
    .line 142
    new-array v2, v2, [J

    .line 143
    .line 144
    fill-array-data v2, :array_7

    .line 145
    .line 146
    .line 147
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iget-object v2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonText:Ljava/lang/CharSequence;

    .line 155
    .line 156
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 157
    .line 158
    .line 159
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 160
    .line 161
    new-array v1, v1, [J

    .line 162
    .line 163
    fill-array-data v1, :array_8

    .line 164
    .line 165
    .line 166
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    iget v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->overrideThemeResId:I

    .line 174
    .line 175
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :array_0
    .array-data 8
        0x4367be73f20ea98eL    # 5.346663724727E16
        0x36b2bf3a3bae2c6bL    # 3.2837646914407783E-45
        0x2a60420c1c70ef3eL    # 1.417746423507221E-104
        0x59ec640a65bd0500L
    .end array-data

    .line 180
    .line 181
    .line 182
    .line 183
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
    .line 196
    .line 197
    .line 198
    .line 199
    :array_1
    .array-data 8
        0x30e5b9af88e93a1dL    # 3.842532400601589E-73
        -0x7b26946a3719379bL    # -2.67106225172468E-285
        0x593ca1d12bec0f7dL    # 7.393523145335073E121
        -0x13dc9aee58f67b74L    # -8.161542957513522E212
    .end array-data

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
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
    :array_2
    .array-data 8
        -0x630267d3e5d6766dL    # -4.901085983174256E-169
        0x5ee0fc8974d7df9cL    # 1.086003110859616E149
        -0x56a735246b81a1adL
        -0x2ad98069d9a08255L    # -1.5747074746172996E102
    .end array-data

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    :array_3
    .array-data 8
        0x3592bd5ba797057bL    # 1.2521688704578555E-50
        0x1da624523ed29648L    # 7.50977438701569E-166
        -0x35ae9935a8327ab9L    # -1.017294291699336E50
        -0x17005c406bb747ecL    # -5.912739342990454E197
    .end array-data

    :array_4
    .array-data 8
        -0x274b4a23670f5d65L    # -2.089039878977931E119
        0x6262769acbbf0de3L    # 8.50583478304492E165
        0x745b95e3333488cfL    # 3.1600737124665187E252
        0x3447f439b8bbd15dL    # 7.632186563720028E-57
        -0x876e37bc4d32e0aL    # -6.477642297794267E267
        0x76b04e568ee947bbL    # 5.134567615881513E263
    .end array-data

    :array_5
    .array-data 8
        0x39cda56361ea5fadL    # 2.9233260037308E-30
        0xf2e4de1eab69065L
        0x14a7c4961dfc8a6eL
        -0x69d073f610a86f75L    # -8.049545323515357E-202
        -0x73e43a8c6449a3dL    # -4.797274348672189E273
    .end array-data

    :array_6
    .array-data 8
        -0x25552b21b0ff9737L    # -5.81210425600853E128
        0x1ad83150cace3012L
        0x3ecb01659124e8d2L    # 3.2193012283995696E-6
        0x52ccb2d78eafd31bL    # 7.307510502528405E90
        -0x529a5033c223cacfL    # -5.323104373725158E-90
        -0x26dcdbc110601e01L    # -2.4714178189366986E121
    .end array-data

    :array_7
    .array-data 8
        0x6aa1365f2d536249L    # 4.317260239975765E205
        0x7ad9b22dff03af30L    # 5.970376220675095E283
        0xbb84c07954862feL
        -0x3087fccd1abf568dL    # -6.788225109467218E74
        0x4e70901f98f657c5L    # 7.144593842174457E69
    .end array-data

    :array_8
    .array-data 8
        -0xf2632f124d4970eL    # -4.1017888380027946E235
        0x1cea4cf2beb04f6dL
        0xe1a7e83c2f4150dL    # 9.933316089890156E-241
        -0x647d7177654fa450L
        0x37897f8100be17a9L    # 3.658792486231852E-41
        0x15ffc153ce2c12f3L
    .end array-data
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    .line 5
    .line 6
    instance-of p2, p2, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    new-instance p2, L돨뎠뒤땹땃땅땍딐땯딁딨뎬뒨땣땹땧딸되땠듌뎹듸둡땦땫뒙뎻땱돝디딀뒵땩딀돨땅든뒻됐둥딝땅땱뎽돴둔드뎨땵둬땡둥딐땵땻뒨듌땳땵됨딠뎠땜뒉땦듻딅땁땤듌땁듌땳돳땧뒤따땪땲딅돷땯뒵땄듨둔돤뎬땤따돨땠땜듼땍둬뎸땅딎듐딄돠땍땭됐뎸딞듬뒐둡땄땠둡뒈땤뒨돤땤듸됨디둘땣땩땳땀뒨땳땟뒋;

    .line 11
    .line 12
    const/16 v0, 0x1a

    .line 13
    .line 14
    invoke-direct {p2, p0, v0}, L돨뎠뒤땹땃땅땍딐땯딁딨뎬뒨땣땹땧딸되땠듌뎹듸둡땦땫뒙뎻땱돝디딀뒵땩딀돨땅든뒻됐둥딝땅땱뎽돴둔드뎨땵둬땡둥딐땵땻뒨듌땳땵됨딠뎠땜뒉땦듻딅땁땤듌땁듌땳돳땧뒤따땪땲딅돷땯뒵땄듨둔돤뎬땤따돨땠땜듼땍둬뎸땅딎듐딄돠땍땭됐뎸딞듬뒐둡땄땠둡뒈땤뒨돤땤듸됨디둘땣땩땳땀뒨땳땟뒋;-><init>(Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    const-wide/16 v0, 0x64

    .line 18
    .line 19
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public removeOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Z
    .locals 1
    .param p1    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public removeOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Z
    .locals 1
    .param p1    # Landroid/content/DialogInterface$OnDismissListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->dismissListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public removeOnNegativeButtonClickListener(Landroid/view/View$OnClickListener;)Z
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public removeOnPositiveButtonClickListener(Landroid/view/View$OnClickListener;)Z
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setActivePresenter(Lcom/google/android/material/timepicker/TimePickerPresenter;)V
    .locals 0
    .param p1    # Lcom/google/android/material/timepicker/TimePickerPresenter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    .line 2
    .line 3
    return-void
.end method

.method public setCancelable(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->updateCancelButtonVisibility()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setHour(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x17L
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/TimeModel;->setHour(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/google/android/material/timepicker/TimePickerPresenter;->invalidate()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setMinute(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x3bL
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/TimeModel;->setMinute(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/google/android/material/timepicker/TimePickerPresenter;->invalidate()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
