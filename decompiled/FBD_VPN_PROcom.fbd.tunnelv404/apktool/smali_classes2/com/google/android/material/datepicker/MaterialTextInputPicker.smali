.class public final Lcom/google/android/material/datepicker/MaterialTextInputPicker;
.super Lcom/google/android/material/datepicker/PickerFragment;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/material/datepicker/PickerFragment<",
        "TS;>;"
    }
.end annotation


# static fields
.field private static final CALENDAR_CONSTRAINTS_KEY:Ljava/lang/String;

.field private static final DATE_SELECTOR_KEY:Ljava/lang/String;

.field private static final THEME_RES_ID_KEY:Ljava/lang/String;


# instance fields
.field private calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private dateSelector:Lcom/google/android/material/datepicker/DateSelector;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TS;>;"
        }
    .end annotation
.end field

.field private themeResId:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->THEME_RES_ID_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x4

    new-array v2, v1, [J

    fill-array-data v2, :array_1

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->DATE_SELECTOR_KEY:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_2

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->CALENDAR_CONSTRAINTS_KEY:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        0x910b2c4e462b7c7L
        -0xf952015f56ff8d6L
        -0x585fd0b89ff49613L    # -8.022614008880625E-118
    .end array-data

    :array_1
    .array-data 8
        -0xea98ce6c6c1cbc7L    # -9.13661383230202E237
        -0x2c42778b93306be7L    # -2.464146943224137E95
        -0xe4d40016fe3fbfcL    # -4.883793921889363E239
        -0x6bcecea4676c853aL
    .end array-data

    :array_2
    .array-data 8
        -0x625c99763d3762d6L    # -6.58000473951122E-166
        -0x2a62420fb9be0c2aL    # -2.664574825625859E104
        -0x6971cfec7f08b185L    # -4.929743484731683E-200
        -0xa10db416822b439L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/datepicker/PickerFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static newInstance(Lcom/google/android/material/datepicker/DateSelector;ILcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/MaterialTextInputPicker;
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/datepicker/CalendarConstraints;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TT;>;I",
            "Lcom/google/android/material/datepicker/CalendarConstraints;",
            ")",
            "Lcom/google/android/material/datepicker/MaterialTextInputPicker<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/material/datepicker/MaterialTextInputPicker;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v3, 0x3

    .line 14
    new-array v3, v3, [J

    .line 15
    .line 16
    fill-array-data v3, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/4 v2, 0x4

    .line 32
    new-array v3, v2, [J

    .line 33
    .line 34
    fill-array-data v3, :array_1

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 45
    .line 46
    .line 47
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    new-array p1, v2, [J

    .line 50
    .line 51
    fill-array-data p1, :array_2

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
    .line 66
    .line 67
    return-object v0

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        0x345d5d4c7c0345efL    # 1.8712106030824364E-56
        0x53af7b826fa335cfL    # 1.3134008668486215E95
        0x3ffe16a0d153e4e0L    # 1.8805244614471164
    .end array-data

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
    .line 82
    .line 83
    .line 84
    .line 85
    :array_1
    .array-data 8
        -0x6ba35d72e2e0ba37L
        0x7eba35ad49b96444L    # 2.8083892798529082E302
        0x695ebe13a8d67f99L    # 3.676852022616794E199
        -0x700c6706be662141L    # -7.889422289904737E-232
    .end array-data

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :array_2
    .array-data 8
        -0x38b0b1cc60a90fdbL    # -3.250946410263419E35
        0x202f62ee54c9881cL
        -0x1162e71260169765L    # -6.731480727806132E224
        -0x1bc4ec62caf227cfL    # -6.69687068723426E174
    .end array-data
.end method


# virtual methods
.method public getDateSelector()Lcom/google/android/material/datepicker/DateSelector;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/16 v2, 0x18

    .line 11
    .line 12
    new-array v2, v2, [J

    .line 13
    .line 14
    fill-array-data v2, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    nop

    .line 29
    :array_0
    .array-data 8
        0x4844c6f4a16dc329L    # 1.414020935236376E40
        -0x6b873e8a61e12b82L    # -4.706285429953488E-210
        0x339d70ed03ecafbfL    # 4.5803129548323446E-60
        0x61ba90e6fd009dcdL    # 5.975912727316288E162
        -0x15608ffcc32313a5L    # -3.9426274842529467E205
        -0x233e9cbb45bf3e0fL    # -6.47070858809526E138
        -0x2e7b591600ee6b59L    # -5.015001688223844E84
        0x5d45715a86ddf4b2L    # 2.0428158887241407E141
        -0x54363a0154c0827bL    # -9.426781080950103E-98
        -0x53bef6030ecae6b0L    # -1.595423151487432E-95
        0x43de71177f042a8bL    # 8.7742413112172984E18
        -0x5f08ba40837f80caL    # -7.109586324182213E-150
        0x12fb841277f7c374L
        -0xa28b01ad85c6db7L
        -0x595880e57374206eL
        0x10919ff201e5b3bbL    # 7.265527796142706E-229
        0x2f6c0b7848e6a543L    # 2.95653876627624E-80
        0x65b736ec640f84f6L    # 9.632911398614302E181
        0x2be0782a8a50101dL    # 2.409512387636357E-97
        -0xf7463767256d835L    # -1.371754009002616E234
        0xd31efa8a0fdcd32L
        -0x7b6352eb1b1c05b5L    # -1.883233728796448E-286
        0x3133a55f8a479ea0L    # 1.111923576675911E-71
        -0x2c420664f37d534aL    # -2.5010257275038935E95
    .end array-data
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 3
    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    new-array v2, v2, [J

    .line 15
    .line 16
    fill-array-data v2, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iput v1, p0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->themeResId:I

    .line 31
    .line 32
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    new-array v2, v0, [J

    .line 35
    .line 36
    fill-array-data v2, :array_1

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/google/android/material/datepicker/DateSelector;

    .line 51
    .line 52
    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 53
    .line 54
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v0, v0, [J

    .line 57
    .line 58
    fill-array-data v0, :array_2

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 73
    .line 74
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 75
    .line 76
    return-void

    .line 77
    :array_0
    .array-data 8
        -0x6af7bf828c6dec5aL    # -2.360581612688016E-207
        -0xcc431bdcdef2d52L
        -0x357e188fe0bc12e2L    # -8.373377635117714E50
    .end array-data

    :array_1
    .array-data 8
        0x3aa0edc8335ee8e7L    # 2.735000974606123E-26
        0x59ea1248cc6ac3c3L    # 1.3787735998857675E125
        0x3b9576ea0070b6f1L    # 1.1363215964255638E-21
        0x3e2dbd3b2b889637L    # 3.462096689426806E-9
    .end array-data

    :array_2
    .array-data 8
        0x5e40f87aa38a30c2L    # 1.0595602500732896E146
        0x11630b3a298d41dL
        -0x3197fb9b28e68cf8L    # -5.180011619549202E69
        -0x3ea51dc8e437e0d5L    # -7047388.434089462
    .end array-data
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
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
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, p0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->themeResId:I

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 17
    .line 18
    iget-object v7, p0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 19
    .line 20
    new-instance v8, Lcom/google/android/material/datepicker/MaterialTextInputPicker$1;

    .line 21
    .line 22
    invoke-direct {v8, p0}, Lcom/google/android/material/datepicker/MaterialTextInputPicker$1;-><init>(Lcom/google/android/material/datepicker/MaterialTextInputPicker;)V

    .line 23
    .line 24
    .line 25
    move-object v5, p2

    .line 26
    move-object v6, p3

    .line 27
    invoke-interface/range {v3 .. v8}, Lcom/google/android/material/datepicker/DateSelector;->onCreateTextInputView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    new-array v1, v1, [J

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget v1, p0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->themeResId:I

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/4 v1, 0x4

    .line 27
    new-array v2, v1, [J

    .line 28
    .line 29
    fill-array-data v2, :array_1

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 40
    .line 41
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v1, v1, [J

    .line 47
    .line 48
    fill-array-data v1, :array_2

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 59
    .line 60
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    nop

    .line 65
    :array_0
    .array-data 8
        -0x352b422addd17d36L    # -3.1041315879603825E52
        0x6780be6343264a23L    # 3.730085285803656E190
        -0x1545acf59cd3ed18L
    .end array-data

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
    :array_1
    .array-data 8
        0x6c04f272da21e0fbL    # 2.2036881731557284E212
        -0x3719c9dec92ec07dL    # -1.5479117499715223E43
        0x221ed7ba5b2f5deL
        0x59338c5cf221f6bcL    # 5.047857783792905E121
    .end array-data

    :array_2
    .array-data 8
        -0x757fc20b9645bcdbL    # -4.225455348920024E-258
        -0x41810d737df17a91L    # -1.1528825939615651E-7
        -0x75b84c4721af149cL
        -0x51d355f08e6e55bfL    # -2.881857919811447E-86
    .end array-data
.end method
