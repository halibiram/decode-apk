.class public final Lcom/google/android/material/datepicker/MaterialCalendar;
.super Lcom/google/android/material/datepicker/PickerFragment;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/MaterialCalendar$OnDayClickListener;,
        Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;
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

.field private static final CURRENT_MONTH_KEY:Ljava/lang/String;

.field private static final DAY_VIEW_DECORATOR_KEY:Ljava/lang/String;

.field private static final GRID_SELECTOR_KEY:Ljava/lang/String;

.field static final MONTHS_VIEW_GROUP_TAG:Ljava/lang/Object;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final NAVIGATION_NEXT_TAG:Ljava/lang/Object;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final NAVIGATION_PREV_TAG:Ljava/lang/Object;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final SELECTOR_TOGGLE_TAG:Ljava/lang/Object;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final SMOOTH_SCROLL_MAX:I = 0x3

.field private static final THEME_RES_ID_KEY:Ljava/lang/String;


# instance fields
.field private calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private calendarSelector:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

.field private calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

.field private current:Lcom/google/android/material/datepicker/Month;
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

.field private dayFrame:Landroid/view/View;

.field private dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private monthNext:Landroid/view/View;

.field private monthPrev:Landroid/view/View;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private themeResId:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field private yearFrame:Landroid/view/View;

.field private yearSelector:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar;->THEME_RES_ID_KEY:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    new-array v2, v1, [J

    .line 22
    .line 23
    fill-array-data v2, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar;->GRID_SELECTOR_KEY:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v2, v1, [J

    .line 38
    .line 39
    fill-array-data v2, :array_2

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar;->CALENDAR_CONSTRAINTS_KEY:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array v2, v1, [J

    .line 54
    .line 55
    fill-array-data v2, :array_3

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar;->DAY_VIEW_DECORATOR_KEY:Ljava/lang/String;

    .line 66
    .line 67
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    new-array v2, v1, [J

    .line 70
    .line 71
    fill-array-data v2, :array_4

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar;->CURRENT_MONTH_KEY:Ljava/lang/String;

    .line 82
    .line 83
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v2, v1, [J

    .line 86
    .line 87
    fill-array-data v2, :array_5

    .line 88
    .line 89
    .line 90
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar;->MONTHS_VIEW_GROUP_TAG:Ljava/lang/Object;

    .line 98
    .line 99
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 100
    .line 101
    new-array v2, v1, [J

    .line 102
    .line 103
    fill-array-data v2, :array_6

    .line 104
    .line 105
    .line 106
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar;->NAVIGATION_PREV_TAG:Ljava/lang/Object;

    .line 114
    .line 115
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 116
    .line 117
    new-array v2, v1, [J

    .line 118
    .line 119
    fill-array-data v2, :array_7

    .line 120
    .line 121
    .line 122
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar;->NAVIGATION_NEXT_TAG:Ljava/lang/Object;

    .line 130
    .line 131
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 132
    .line 133
    new-array v1, v1, [J

    .line 134
    .line 135
    fill-array-data v1, :array_8

    .line 136
    .line 137
    .line 138
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar;->SELECTOR_TOGGLE_TAG:Ljava/lang/Object;

    .line 146
    .line 147
    return-void

    .line 148
    nop

    .line 149
    :array_0
    .array-data 8
        0x5e3869aedcd48c6fL    # 7.621069931032841E145
        -0x1165b7a089d16d9fL    # -6.0803260738239915E224
        0x5aaefe32b27cf061L    # 6.713534680664578E128
    .end array-data

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :array_1
    .array-data 8
        0x3549506755e1ddecL    # 5.285825864906135E-52
        -0x258e7da34bb188f7L    # -4.740947580548482E127
        -0x1461f6ec431c755dL    # -2.4686029363134056E210
        0x218d7decccd601b8L    # 4.612908085174238E-147
    .end array-data

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    :array_2
    .array-data 8
        -0x5d446471b0fa6959L
        -0x6bc4ba4078f961aaL
        0x6a3296cbafd14e87L    # 3.642622593129593E203
        -0x38a64cfef06f8413L    # -5.337522273101302E35
    .end array-data

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
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    :array_3
    .array-data 8
        -0x51561e059c350ec5L    # -6.661641363321216E-84
        -0x71616fde825f634eL
        0x6350f33ac6f966e2L
        0x7228c9a0e8c1347cL    # 8.264207571770134E241
    .end array-data

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
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    :array_4
    .array-data 8
        0x3db739419c61900L
        0x4f132300c3790ae9L    # 8.452918984654473E72
        -0x6a842432464f8498L
        0x1eb5048186c777b6L    # 9.343411488678097E-161
    .end array-data

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
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    :array_5
    .array-data 8
        -0x7272551fb81ac242L    # -2.172472283298448E-243
        -0x51b7098255b8365eL
        0x7e512396c283660aL    # 2.8694697736071274E300
        -0x7e320ca7e86c1e40L    # -5.590354147023525E-300
    .end array-data

    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    :array_6
    .array-data 8
        0x573cc0bc1f93d9d1L    # 1.7286999251784789E112
        -0x5a84c17814a1beeeL    # -3.930401305763772E-128
        -0x2e6063c425cf6f9fL    # -1.5352080925888765E85
        -0x25c4d4578f9f87f8L    # -4.5980792144510864E126
    .end array-data

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
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
    :array_7
    .array-data 8
        -0x176b80a40d7ad8dfL    # -5.985191152332022E195
        0xdce4787d5f898d5L
        -0x179efbb319608326L    # -6.211050581336099E194
        0x4d3a4bc39e30555dL    # 1.0817527889523816E64
    .end array-data

    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    :array_8
    .array-data 8
        -0x4c0e23ea3aff27c5L    # -1.778259689917807E-58
        -0x52c88563afaca06fL    # -7.203771782766336E-91
        -0x13066cd4df9d01ffL    # -8.816382946650119E216
        -0x73bc4da21a8749ccL
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

.method public static synthetic access$000(Lcom/google/android/material/datepicker/MaterialCalendar;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/CalendarConstraints;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/DateSelector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/google/android/material/datepicker/MaterialCalendar;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/CalendarStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/google/android/material/datepicker/MaterialCalendar;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dayFrame:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$602(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/Month;)Lcom/google/android/material/datepicker/Month;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 2
    .line 3
    return-object p1
.end method

.method private addActionsToMonthNavigation(Landroid/view/View;Lcom/google/android/material/datepicker/MonthsPagerAdapter;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/datepicker/MonthsPagerAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/google/android/material/R$id;->month_navigation_fragment_toggle:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 8
    .line 9
    sget-object v1, Lcom/google/android/material/datepicker/MaterialCalendar;->SELECTOR_TOGGLE_TAG:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/google/android/material/datepicker/MaterialCalendar$6;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/MaterialCalendar$6;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 20
    .line 21
    .line 22
    sget v1, Lcom/google/android/material/R$id;->month_navigation_previous:I

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->monthPrev:Landroid/view/View;

    .line 29
    .line 30
    sget-object v2, Lcom/google/android/material/datepicker/MaterialCalendar;->NAVIGATION_PREV_TAG:Ljava/lang/Object;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    sget v1, Lcom/google/android/material/R$id;->month_navigation_next:I

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->monthNext:Landroid/view/View;

    .line 42
    .line 43
    sget-object v2, Lcom/google/android/material/datepicker/MaterialCalendar;->NAVIGATION_NEXT_TAG:Ljava/lang/Object;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    sget v1, Lcom/google/android/material/R$id;->mtrl_calendar_year_selector_frame:I

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearFrame:Landroid/view/View;

    .line 55
    .line 56
    sget v1, Lcom/google/android/material/R$id;->mtrl_calendar_day_selector_frame:I

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dayFrame:Landroid/view/View;

    .line 63
    .line 64
    sget-object p1, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->setSelector(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/Month;->getLongName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 79
    .line 80
    new-instance v1, Lcom/google/android/material/datepicker/MaterialCalendar$7;

    .line 81
    .line 82
    invoke-direct {v1, p0, p2, v0}, Lcom/google/android/material/datepicker/MaterialCalendar$7;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/MonthsPagerAdapter;Lcom/google/android/material/button/MaterialButton;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 86
    .line 87
    .line 88
    new-instance p1, Lcom/google/android/material/datepicker/MaterialCalendar$8;

    .line 89
    .line 90
    invoke-direct {p1, p0}, Lcom/google/android/material/datepicker/MaterialCalendar$8;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->monthNext:Landroid/view/View;

    .line 97
    .line 98
    new-instance v0, Lcom/google/android/material/datepicker/MaterialCalendar$9;

    .line 99
    .line 100
    invoke-direct {v0, p0, p2}, Lcom/google/android/material/datepicker/MaterialCalendar$9;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/MonthsPagerAdapter;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->monthPrev:Landroid/view/View;

    .line 107
    .line 108
    new-instance v0, Lcom/google/android/material/datepicker/MaterialCalendar$10;

    .line 109
    .line 110
    invoke-direct {v0, p0, p2}, Lcom/google/android/material/datepicker/MaterialCalendar$10;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/MonthsPagerAdapter;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method private createItemDecoration()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/datepicker/MaterialCalendar$5;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/MaterialCalendar$5;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static getDayHeight(Landroid/content/Context;)I
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_calendar_day_height:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static getDialogPickerHeight(Landroid/content/Context;)I
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_calendar_navigation_height:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_calendar_navigation_top_padding:I

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v1, v0

    .line 18
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_calendar_navigation_bottom_padding:I

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, v1

    .line 25
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_calendar_days_of_week_height:I

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    sget v2, Lcom/google/android/material/datepicker/MonthAdapter;->MAXIMUM_WEEKS:I

    .line 32
    .line 33
    sget v3, Lcom/google/android/material/R$dimen;->mtrl_calendar_day_height:I

    .line 34
    .line 35
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    mul-int v3, v3, v2

    .line 40
    .line 41
    add-int/lit8 v2, v2, -0x1

    .line 42
    .line 43
    sget v4, Lcom/google/android/material/R$dimen;->mtrl_calendar_month_vertical_padding:I

    .line 44
    .line 45
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    mul-int v4, v4, v2

    .line 50
    .line 51
    add-int/2addr v4, v3

    .line 52
    sget v2, Lcom/google/android/material/R$dimen;->mtrl_calendar_bottom_padding:I

    .line 53
    .line 54
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    invoke-static {v0, v1, v4, p0}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    return p0
.end method

.method public static newInstance(Lcom/google/android/material/datepicker/DateSelector;ILcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/MaterialCalendar;
    .locals 1
    .param p0    # Lcom/google/android/material/datepicker/DateSelector;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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
            "Lcom/google/android/material/datepicker/MaterialCalendar<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->newInstance(Lcom/google/android/material/datepicker/DateSelector;ILcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/DayViewDecorator;)Lcom/google/android/material/datepicker/MaterialCalendar;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Lcom/google/android/material/datepicker/DateSelector;ILcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/DayViewDecorator;)Lcom/google/android/material/datepicker/MaterialCalendar;
    .locals 4
    .param p0    # Lcom/google/android/material/datepicker/DateSelector;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/datepicker/CalendarConstraints;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/datepicker/DayViewDecorator;
        .annotation build Landroidx/annotation/Nullable;
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
            "Lcom/google/android/material/datepicker/DayViewDecorator;",
            ")",
            "Lcom/google/android/material/datepicker/MaterialCalendar<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/MaterialCalendar;-><init>()V

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x3

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 5
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x4

    new-array v3, v2, [J

    fill-array-data v3, :array_1

    invoke-direct {p1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    new-array p1, v2, [J

    fill-array-data p1, :array_2

    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    new-array p1, v2, [J

    fill-array-data p1, :array_3

    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    new-array p1, v2, [J

    fill-array-data p1, :array_4

    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/CalendarConstraints;->getOpenAt()Lcom/google/android/material/datepicker/Month;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    nop

    :array_0
    .array-data 8
        -0x31bd93eab37af3e0L    # -9.933230587405697E68
        0x9bf1bd1ac9f8df2L
        -0x48f44435bec22a58L    # -1.5545195164552654E-43
    .end array-data

    :array_1
    .array-data 8
        0x119442e107fd9dedL    # 5.473805839630275E-224
        -0x769657c6ba4a3695L
        0x6c8dc6a17b65787L
        0x483e87f75197b220L    # 1.0389200939276933E40
    .end array-data

    :array_2
    .array-data 8
        -0x751540f54e196eb8L    # -4.453246251639489E-256
        -0x51b8212b598d84bdL    # -9.599564442888092E-86
        0x22be860d6dd62056L
        -0xd7884235dd7836bL    # -5.010897697482378E243
    .end array-data

    :array_3
    .array-data 8
        -0x348c11451c733fbbL    # -3.0546527438749475E55
        0x7a56284e5fa1b05fL    # 2.0110166431042265E281
        0x38c80e4057e8186fL    # 3.6194948313495357E-35
        0x3704955e47fc0476L    # 1.1537433885917443E-43
    .end array-data

    :array_4
    .array-data 8
        0x7fad22c1f1392adL
        -0x63a8c13a77a4239L
        0x5ca93d8630273c43L    # 2.3482429931855198E138
        0x6b2ef2dac0ba5290L    # 1.9872327525862074E208
    .end array-data
.end method

.method private postSmoothRecyclerViewScroll(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/material/datepicker/MaterialCalendar$11;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendar$11;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private setUpForAccessibility()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/material/datepicker/MaterialCalendar$4;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/MaterialCalendar$4;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public addOnSelectionChangedListener(Lcom/google/android/material/datepicker/OnSelectionChangedListener;)Z
    .locals 0
    .param p1    # Lcom/google/android/material/datepicker/OnSelectionChangedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/OnSelectionChangedListener<",
            "TS;>;)Z"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/datepicker/PickerFragment;->addOnSelectionChangedListener(Lcom/google/android/material/datepicker/OnSelectionChangedListener;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getCalendarConstraints()Lcom/google/android/material/datepicker/CalendarConstraints;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCalendarStyle()Lcom/google/android/material/datepicker/CalendarStyle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrentMonth()Lcom/google/android/material/datepicker/Month;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDateSelector()Lcom/google/android/material/datepicker/DateSelector;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 8
    .line 9
    return-object v0
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
    iput v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->themeResId:I

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
    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 53
    .line 54
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v2, v0, [J

    .line 57
    .line 58
    fill-array-data v2, :array_2

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 73
    .line 74
    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 75
    .line 76
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    new-array v2, v0, [J

    .line 79
    .line 80
    fill-array-data v2, :array_3

    .line 81
    .line 82
    .line 83
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Lcom/google/android/material/datepicker/DayViewDecorator;

    .line 95
    .line 96
    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    .line 97
    .line 98
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    new-array v0, v0, [J

    .line 101
    .line 102
    fill-array-data v0, :array_4

    .line 103
    .line 104
    .line 105
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Lcom/google/android/material/datepicker/Month;

    .line 117
    .line 118
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 119
    .line 120
    return-void

    .line 121
    :array_0
    .array-data 8
        -0x30bcc9ddd57be15eL    # -6.78874192983396E73
        0x6c7f1e4bc61b8ec0L    # 4.1903799547948573E214
        0x47fe47457f03c0f5L    # 6.4395043999847146E38
    .end array-data

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :array_1
    .array-data 8
        0x64955bfc4d605254L    # 3.3809976568312404E176
        -0x414a63fe5d4becf7L    # -1.2880206082265582E-6
        0x443120ad7380ac8cL    # 3.159493144297349E20
        -0x64456309ce69db4L
    .end array-data

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    :array_2
    .array-data 8
        0x6f3a54197b79909bL    # 6.237105417409647E227
        0x70f68c021ba5a822L    # 1.4337835540407137E236
        -0x22c7b20625d00abfL    # -1.1577275105066382E141
        -0x616e49688ea17740L
    .end array-data

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :array_3
    .array-data 8
        0x411e6bd67656cd16L    # 498421.615565495
        -0x41cb6f1153cc66e8L    # -4.788428045764886E-9
        0x5ea5f9481f472037L    # 8.780357538599425E147
        0x7329f02985381a3L
    .end array-data

    .line 178
    .line 179
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
    :array_4
    .array-data 8
        0x30b69fa2f94d1076L    # 5.001755003022609E-74
        -0x53a31c4c902ec5e5L    # -5.4100434604214346E-95
        -0x3b8846fbb2bcb9cdL    # -7.001711671097265E21
        0x5aaf711b7c8da076L    # 6.810765401468268E128
    .end array-data
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
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
    new-instance v6, Landroid/view/ContextThemeWrapper;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->themeResId:I

    .line 8
    .line 9
    invoke-direct {v6, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/google/android/material/datepicker/CalendarStyle;

    .line 13
    .line 14
    invoke-direct {v0, v6}, Lcom/google/android/material/datepicker/CalendarStyle;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    .line 18
    .line 19
    invoke-virtual {p1, v6}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/CalendarConstraints;->getStart()Lcom/google/android/material/datepicker/Month;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v6}, Lcom/google/android/material/datepicker/MaterialDatePicker;->isFullscreen(Landroid/content/Context;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v7, 0x1

    .line 34
    const/4 v8, 0x0

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    sget v2, Lcom/google/android/material/R$layout;->mtrl_calendar_vertical:I

    .line 38
    .line 39
    const/4 v5, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    sget v2, Lcom/google/android/material/R$layout;->mtrl_calendar_horizontal:I

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    :goto_0
    invoke-virtual {v0, v2, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->getDialogPickerHeight(Landroid/content/Context;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-virtual {v9, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 57
    .line 58
    .line 59
    sget v0, Lcom/google/android/material/R$id;->mtrl_calendar_days_of_week:I

    .line 60
    .line 61
    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Landroid/widget/GridView;

    .line 66
    .line 67
    new-instance v2, Lcom/google/android/material/datepicker/MaterialCalendar$1;

    .line 68
    .line 69
    invoke-direct {v2, p0}, Lcom/google/android/material/datepicker/MaterialCalendar$1;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/google/android/material/datepicker/CalendarConstraints;->getFirstDayOfWeek()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    new-instance v3, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;

    .line 82
    .line 83
    if-lez v2, :cond_1

    .line 84
    .line 85
    invoke-direct {v3, v2}, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;-><init>(I)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    invoke-direct {v3}, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;-><init>()V

    .line 90
    .line 91
    .line 92
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    .line 94
    .line 95
    iget v1, v1, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 101
    .line 102
    .line 103
    sget v0, Lcom/google/android/material/R$id;->mtrl_calendar_months:I

    .line 104
    .line 105
    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 110
    .line 111
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 112
    .line 113
    new-instance v10, Lcom/google/android/material/datepicker/MaterialCalendar$2;

    .line 114
    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    const/4 v4, 0x0

    .line 120
    move-object v0, v10

    .line 121
    move-object v1, p0

    .line 122
    move v3, v5

    .line 123
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/datepicker/MaterialCalendar$2;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;Landroid/content/Context;IZI)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 127
    .line 128
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 132
    .line 133
    sget-object v1, Lcom/google/android/material/datepicker/MaterialCalendar;->MONTHS_VIEW_GROUP_TAG:Ljava/lang/Object;

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    new-instance v10, Lcom/google/android/material/datepicker/MonthsPagerAdapter;

    .line 139
    .line 140
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 141
    .line 142
    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 143
    .line 144
    iget-object v4, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    .line 145
    .line 146
    new-instance v5, Lcom/google/android/material/datepicker/MaterialCalendar$3;

    .line 147
    .line 148
    invoke-direct {v5, p0}, Lcom/google/android/material/datepicker/MaterialCalendar$3;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    .line 149
    .line 150
    .line 151
    move-object v0, v10

    .line 152
    move-object v1, v6

    .line 153
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/datepicker/MonthsPagerAdapter;-><init>(Landroid/content/Context;Lcom/google/android/material/datepicker/DateSelector;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/DayViewDecorator;Lcom/google/android/material/datepicker/MaterialCalendar$OnDayClickListener;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 157
    .line 158
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    sget v1, Lcom/google/android/material/R$integer;->mtrl_calendar_year_selector_span:I

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    sget v1, Lcom/google/android/material/R$id;->mtrl_calendar_year_selector_frame:I

    .line 172
    .line 173
    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 178
    .line 179
    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 180
    .line 181
    if-eqz v1, :cond_2

    .line 182
    .line 183
    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 184
    .line 185
    .line 186
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 187
    .line 188
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 189
    .line 190
    invoke-direct {v2, v6, v0, v7, v8}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 197
    .line 198
    new-instance v1, Lcom/google/android/material/datepicker/YearGridAdapter;

    .line 199
    .line 200
    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/YearGridAdapter;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 207
    .line 208
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialCalendar;->createItemDecoration()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 213
    .line 214
    .line 215
    :cond_2
    sget v0, Lcom/google/android/material/R$id;->month_navigation_fragment_toggle:I

    .line 216
    .line 217
    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    if-eqz v0, :cond_3

    .line 222
    .line 223
    invoke-direct {p0, v9, v10}, Lcom/google/android/material/datepicker/MaterialCalendar;->addActionsToMonthNavigation(Landroid/view/View;Lcom/google/android/material/datepicker/MonthsPagerAdapter;)V

    .line 224
    .line 225
    .line 226
    :cond_3
    invoke-static {v6}, Lcom/google/android/material/datepicker/MaterialDatePicker;->isFullscreen(Landroid/content/Context;)Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-nez v0, :cond_4

    .line 231
    .line 232
    new-instance v0, Landroidx/recyclerview/widget/PagerSnapHelper;

    .line 233
    .line 234
    invoke-direct {v0}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    .line 235
    .line 236
    .line 237
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 240
    .line 241
    .line 242
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 243
    .line 244
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 245
    .line 246
    invoke-virtual {v10, v1}, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->getPosition(Lcom/google/android/material/datepicker/Month;)I

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 251
    .line 252
    .line 253
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialCalendar;->setUpForAccessibility()V

    .line 254
    .line 255
    .line 256
    return-object v9
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
    iget v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->themeResId:I

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
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 40
    .line 41
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v2, v1, [J

    .line 47
    .line 48
    fill-array-data v2, :array_2

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 59
    .line 60
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    new-array v2, v1, [J

    .line 66
    .line 67
    fill-array-data v2, :array_3

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    .line 78
    .line 79
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 80
    .line 81
    .line 82
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 83
    .line 84
    new-array v1, v1, [J

    .line 85
    .line 86
    fill-array-data v1, :array_4

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 97
    .line 98
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    nop

    .line 103
    :array_0
    .array-data 8
        0x43be839ed64b3d93L    # 2.1987756863094505E18
        0x6f16ce0315cb8e8bL    # 1.3505845267683262E227
        0x5dea5e09c1486c66L
    .end array-data

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    :array_1
    .array-data 8
        0x6bee05cee32c8e67L    # 7.8961709770990685E211
        -0x5374113daa22da51L    # -4.1846924878429156E-94
        0x7aee031316a389aL
        -0x105c5eb8ac0929e4L    # -5.952328479060835E229
    .end array-data

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    :array_2
    .array-data 8
        0x668f0af73d2edeb6L    # 1.0552338629886224E186
        0x30ed88e442b8a26cL    # 5.223770772519067E-73
        0x6709a3e520f87a38L    # 2.2312537815041106E188
        -0x5353d73a0f115e6eL
    .end array-data

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :array_3
    .array-data 8
        0x229b37c5f63afa5cL    # 5.580024444731601E-142
        0x170e72ffd3bff63dL
        -0x3ab0c59f93bf867fL    # -7.550475270371834E25
        0x4ec2d33a786f3549L    # 2.5985228129151406E71
    .end array-data

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_4
    .array-data 8
        0x7c8d41f3f4c1cd7dL    # 9.123992932743101E291
        0x7b5452ee03475f20L    # 1.2088819520827571E286
        -0x4cb99962651e6aceL    # -1.089068626974237E-61
        0x10f3224c0ae5a5a7L    # 5.048105593685711E-227
    .end array-data
.end method

.method public setCurrentMonth(Lcom/google/android/material/datepicker/Month;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/material/datepicker/MonthsPagerAdapter;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->getPosition(Lcom/google/android/material/datepicker/Month;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->getPosition(Lcom/google/android/material/datepicker/Month;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sub-int v0, v1, v0

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x3

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x1

    .line 28
    if-le v2, v3, :cond_0

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v2, 0x0

    .line 33
    :goto_0
    if-lez v0, :cond_1

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 37
    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    .line 44
    add-int/lit8 v0, v1, -0x3

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->postSmoothRecyclerViewScroll(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    if-eqz v2, :cond_3

    .line 54
    .line 55
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 56
    .line 57
    add-int/lit8 v0, v1, 0x3

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->postSmoothRecyclerViewScroll(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->postSmoothRecyclerViewScroll(I)V

    .line 67
    .line 68
    .line 69
    :goto_1
    return-void
.end method

.method public setSelector(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarSelector:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->YEAR:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/google/android/material/datepicker/YearGridAdapter;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 25
    .line 26
    iget v3, v3, Lcom/google/android/material/datepicker/Month;->year:I

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Lcom/google/android/material/datepicker/YearGridAdapter;->getPositionForYear(I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearFrame:Landroid/view/View;

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dayFrame:Landroid/view/View;

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->monthPrev:Landroid/view/View;

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->monthNext:Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 57
    .line 58
    if-ne p1, v0, :cond_1

    .line 59
    .line 60
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearFrame:Landroid/view/View;

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dayFrame:Landroid/view/View;

    .line 66
    .line 67
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->monthPrev:Landroid/view/View;

    .line 71
    .line 72
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->monthNext:Landroid/view/View;

    .line 76
    .line 77
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->setCurrentMonth(Lcom/google/android/material/datepicker/Month;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    :goto_0
    return-void
.end method

.method public toggleVisibleSelector()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarSelector:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->YEAR:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->setSelector(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v2, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 14
    .line 15
    if-ne v0, v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->setSelector(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method
