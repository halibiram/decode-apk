.class public final Lcom/google/android/material/datepicker/MaterialDatePicker;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;,
        Lcom/google/android/material/datepicker/MaterialDatePicker$InputMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/DialogFragment;"
    }
.end annotation


# static fields
.field private static final CALENDAR_CONSTRAINTS_KEY:Ljava/lang/String;

.field static final CANCEL_BUTTON_TAG:Ljava/lang/Object;

.field static final CONFIRM_BUTTON_TAG:Ljava/lang/Object;

.field private static final DATE_SELECTOR_KEY:Ljava/lang/String;

.field private static final DAY_VIEW_DECORATOR_KEY:Ljava/lang/String;

.field public static final INPUT_MODE_CALENDAR:I = 0x0

.field private static final INPUT_MODE_KEY:Ljava/lang/String;

.field public static final INPUT_MODE_TEXT:I = 0x1

.field private static final NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY:Ljava/lang/String;

.field private static final NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY:Ljava/lang/String;

.field private static final NEGATIVE_BUTTON_TEXT_KEY:Ljava/lang/String;

.field private static final NEGATIVE_BUTTON_TEXT_RES_ID_KEY:Ljava/lang/String;

.field private static final OVERRIDE_THEME_RES_ID:Ljava/lang/String;

.field private static final POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY:Ljava/lang/String;

.field private static final POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY:Ljava/lang/String;

.field private static final POSITIVE_BUTTON_TEXT_KEY:Ljava/lang/String;

.field private static final POSITIVE_BUTTON_TEXT_RES_ID_KEY:Ljava/lang/String;

.field private static final TITLE_TEXT_KEY:Ljava/lang/String;

.field private static final TITLE_TEXT_RES_ID_KEY:Ljava/lang/String;

.field static final TOGGLE_BUTTON_TAG:Ljava/lang/Object;


# instance fields
.field private background:Lcom/google/android/material/shape/MaterialShapeDrawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private calendar:Lcom/google/android/material/datepicker/MaterialCalendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/MaterialCalendar<",
            "TS;>;"
        }
    .end annotation
.end field

.field private calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private confirmButton:Landroid/widget/Button;

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

.field private dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private edgeToEdgeEnabled:Z

.field private fullTitleText:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fullscreen:Z

.field private headerSelectionText:Landroid/widget/TextView;

.field private headerTitleTextView:Landroid/widget/TextView;

.field private headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

.field private inputMode:I

.field private negativeButtonContentDescription:Ljava/lang/CharSequence;

.field private negativeButtonContentDescriptionResId:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private negativeButtonText:Ljava/lang/CharSequence;

.field private negativeButtonTextResId:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private final onCancelListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/content/DialogInterface$OnCancelListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onDismissListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/content/DialogInterface$OnDismissListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onNegativeButtonClickListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onPositiveButtonClickListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener<",
            "-TS;>;>;"
        }
    .end annotation
.end field

.field private overrideThemeResId:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field private pickerFragment:Lcom/google/android/material/datepicker/PickerFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/PickerFragment<",
            "TS;>;"
        }
    .end annotation
.end field

.field private positiveButtonContentDescription:Ljava/lang/CharSequence;

.field private positiveButtonContentDescriptionResId:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private positiveButtonText:Ljava/lang/CharSequence;

.field private positiveButtonTextResId:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private singleLineTitleText:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private titleText:Ljava/lang/CharSequence;

.field private titleTextResId:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/google/android/material/datepicker/MaterialDatePicker;->OVERRIDE_THEME_RES_ID:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    new-array v2, v1, [J

    .line 21
    .line 22
    fill-array-data v2, :array_1

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lcom/google/android/material/datepicker/MaterialDatePicker;->DATE_SELECTOR_KEY:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array v2, v1, [J

    .line 37
    .line 38
    fill-array-data v2, :array_2

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Lcom/google/android/material/datepicker/MaterialDatePicker;->CALENDAR_CONSTRAINTS_KEY:Ljava/lang/String;

    .line 49
    .line 50
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    new-array v2, v1, [J

    .line 53
    .line 54
    fill-array-data v2, :array_3

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sput-object v0, Lcom/google/android/material/datepicker/MaterialDatePicker;->DAY_VIEW_DECORATOR_KEY:Ljava/lang/String;

    .line 65
    .line 66
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    new-array v2, v1, [J

    .line 69
    .line 70
    fill-array-data v2, :array_4

    .line 71
    .line 72
    .line 73
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    sput-object v0, Lcom/google/android/material/datepicker/MaterialDatePicker;->TITLE_TEXT_RES_ID_KEY:Ljava/lang/String;

    .line 81
    .line 82
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 83
    .line 84
    const/4 v2, 0x3

    .line 85
    new-array v3, v2, [J

    .line 86
    .line 87
    fill-array-data v3, :array_5

    .line 88
    .line 89
    .line 90
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    sput-object v0, Lcom/google/android/material/datepicker/MaterialDatePicker;->TITLE_TEXT_KEY:Ljava/lang/String;

    .line 98
    .line 99
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 100
    .line 101
    const/4 v3, 0x5

    .line 102
    new-array v4, v3, [J

    .line 103
    .line 104
    fill-array-data v4, :array_6

    .line 105
    .line 106
    .line 107
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    sput-object v0, Lcom/google/android/material/datepicker/MaterialDatePicker;->POSITIVE_BUTTON_TEXT_RES_ID_KEY:Ljava/lang/String;

    .line 115
    .line 116
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 117
    .line 118
    new-array v4, v1, [J

    .line 119
    .line 120
    fill-array-data v4, :array_7

    .line 121
    .line 122
    .line 123
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    sput-object v0, Lcom/google/android/material/datepicker/MaterialDatePicker;->POSITIVE_BUTTON_TEXT_KEY:Ljava/lang/String;

    .line 131
    .line 132
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 133
    .line 134
    const/4 v4, 0x7

    .line 135
    new-array v5, v4, [J

    .line 136
    .line 137
    fill-array-data v5, :array_8

    .line 138
    .line 139
    .line 140
    invoke-direct {v0, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    sput-object v0, Lcom/google/android/material/datepicker/MaterialDatePicker;->POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY:Ljava/lang/String;

    .line 148
    .line 149
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 150
    .line 151
    const/4 v5, 0x6

    .line 152
    new-array v6, v5, [J

    .line 153
    .line 154
    fill-array-data v6, :array_9

    .line 155
    .line 156
    .line 157
    invoke-direct {v0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    sput-object v0, Lcom/google/android/material/datepicker/MaterialDatePicker;->POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY:Ljava/lang/String;

    .line 165
    .line 166
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 167
    .line 168
    new-array v3, v3, [J

    .line 169
    .line 170
    fill-array-data v3, :array_a

    .line 171
    .line 172
    .line 173
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    sput-object v0, Lcom/google/android/material/datepicker/MaterialDatePicker;->NEGATIVE_BUTTON_TEXT_RES_ID_KEY:Ljava/lang/String;

    .line 181
    .line 182
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 183
    .line 184
    new-array v3, v1, [J

    .line 185
    .line 186
    fill-array-data v3, :array_b

    .line 187
    .line 188
    .line 189
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    sput-object v0, Lcom/google/android/material/datepicker/MaterialDatePicker;->NEGATIVE_BUTTON_TEXT_KEY:Ljava/lang/String;

    .line 197
    .line 198
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 199
    .line 200
    new-array v3, v4, [J

    .line 201
    .line 202
    fill-array-data v3, :array_c

    .line 203
    .line 204
    .line 205
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    sput-object v0, Lcom/google/android/material/datepicker/MaterialDatePicker;->NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY:Ljava/lang/String;

    .line 213
    .line 214
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 215
    .line 216
    new-array v3, v5, [J

    .line 217
    .line 218
    fill-array-data v3, :array_d

    .line 219
    .line 220
    .line 221
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    sput-object v0, Lcom/google/android/material/datepicker/MaterialDatePicker;->NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY:Ljava/lang/String;

    .line 229
    .line 230
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 231
    .line 232
    new-array v2, v2, [J

    .line 233
    .line 234
    fill-array-data v2, :array_e

    .line 235
    .line 236
    .line 237
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    sput-object v0, Lcom/google/android/material/datepicker/MaterialDatePicker;->INPUT_MODE_KEY:Ljava/lang/String;

    .line 245
    .line 246
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 247
    .line 248
    new-array v2, v1, [J

    .line 249
    .line 250
    fill-array-data v2, :array_f

    .line 251
    .line 252
    .line 253
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    sput-object v0, Lcom/google/android/material/datepicker/MaterialDatePicker;->CONFIRM_BUTTON_TAG:Ljava/lang/Object;

    .line 261
    .line 262
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 263
    .line 264
    new-array v2, v1, [J

    .line 265
    .line 266
    fill-array-data v2, :array_10

    .line 267
    .line 268
    .line 269
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    sput-object v0, Lcom/google/android/material/datepicker/MaterialDatePicker;->CANCEL_BUTTON_TAG:Ljava/lang/Object;

    .line 277
    .line 278
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 279
    .line 280
    new-array v1, v1, [J

    .line 281
    .line 282
    fill-array-data v1, :array_11

    .line 283
    .line 284
    .line 285
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    sput-object v0, Lcom/google/android/material/datepicker/MaterialDatePicker;->TOGGLE_BUTTON_TAG:Ljava/lang/Object;

    .line 293
    .line 294
    return-void

    .line 295
    :array_0
    .array-data 8
        0x55eeb0ae07a68655L    # 8.798478641257372E105
        0xa39d3eeb180463eL
        0x3fe844f398675956L    # 0.7584169365534688
        -0x6b027bd57906bc7L
    .end array-data

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    :array_1
    .array-data 8
        0x2f83a177c9a08892L    # 8.278043370863768E-80
        0x60705f0709de4b39L    # 3.51203072956686E156
        -0x4ecb4be7c7ea4567L    # -1.1717762655622715E-71
        -0x206592d76fa5997aL
    .end array-data

    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    :array_2
    .array-data 8
        0x17e2692ca8f91916L
        -0x5e4481fbf39297f3L
        -0x344ed8ef2c8e378eL    # -4.205805403335204E56
        -0x47107c8926985c40L    # -1.8966517314037688E-34
    .end array-data

    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    :array_3
    .array-data 8
        -0x25540d4ee4e1994L
        0x13b8fed37fd4b6f6L
        -0xf004faaec9588bfL    # -2.0151268334751393E236
        -0x4d861e74432ba897L    # -1.5359697136687449E-65
    .end array-data

    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    :array_4
    .array-data 8
        0x79df8c03f99eb34cL    # 1.1184412653317059E279
        0x17b9c3d1d6781092L
        -0x22bedd21eb68d339L    # -1.632535131432795E141
        0x70650182c5ff9dcaL    # 2.608963394027901E233
    .end array-data

    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    :array_5
    .array-data 8
        0xfeb71ef65ab827eL
        -0x52803c6b06f0a7d6L    # -1.559324050479839E-89
        0x79f50f6687d63db1L    # 2.986603870634916E279
    .end array-data

    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    :array_6
    .array-data 8
        -0x6d95ac7813df630dL
        0x56a92db5ae1b3546L
        0x3a073ba68b3785eL
        0x2c4987556fd96202L
        0x8a60c247771e2abL
    .end array-data

    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    :array_7
    .array-data 8
        0x3e6c6a5a4f906ba7L    # 5.2927882472813286E-8
        0x4b76f2f68f9a1eddL    # 3.516935467763181E55
        -0x27a8897a93e727c1L    # -3.697952887186424E117
        0x15b72274ff874df2L
    .end array-data

    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    :array_8
    .array-data 8
        -0x1eaecc9a7dcf3c29L    # -6.045685222403043E160
        -0x968d1b2be10811eL
        -0x1b77e4b13198fffcL    # -1.907940056158647E176
        -0x749e28ec2f76a894L    # -7.604174430954052E-254
        0x2bf99471f831b708L    # 7.484790288551138E-97
        -0x25ac38e371b61a3L
        0x3960fba2de2a5b14L    # 2.6166383592656557E-32
    .end array-data

    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    :array_9
    .array-data 8
        0x4bccaff8d7868677L    # 1.4068255501858904E57
        0x564df1ce2f4ea500L
        -0x12e1d1b78bfd9a57L    # -4.1616689868677007E217
        0x4196e427c33ab4b9L    # 9.601278480733003E7
        0x42356f4defc2d387L    # 9.206169184282628E10
        -0x1332966d155361c6L    # -1.2674106227119335E216
    .end array-data

    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    :array_a
    .array-data 8
        0x42320fd8d404e98dL    # 7.757527962091231E10
        -0x4954b339bc3e2b4bL    # -2.3909567710630416E-45
        0x735dfa1d078367ceL    # 5.2399205256578214E247
        0x6bcd7a9f306c530eL    # 1.9382937713485366E211
        0x4b7b8cc80121709eL    # 4.22201400108051E55
    .end array-data

    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    :array_b
    .array-data 8
        -0x42ffaee26ec1994fL    # -7.246140315369055E-15
        0x407ce661b625c843L    # 462.3988553501005
        0x68bf2c373d280a3fL    # 3.640926059802161E196
        0x17d2152901cb2ca6L    # 6.192771343086805E-194
    .end array-data

    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    :array_c
    .array-data 8
        0x38f9791af745d7b2L    # 3.0662089932383523E-34
        -0x16eeadc023b47c98L    # -1.2947839886721935E198
        0x325a786b9ed7e89L
        0x22ff25092753375aL
        -0x345efde63d68d526L    # -2.085199935314699E56
        -0x299b14d58dd6eff4L    # -1.53525817011278E108
        0x17a30ebceb30e8dbL    # 8.158312591756514E-195
    .end array-data

    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    :array_d
    .array-data 8
        -0x3249c6e4ea4a3698L    # -2.3403623802538147E66
        -0xe4cd578a14c27caL    # -4.992188229222188E239
        -0x79f959265a2ac960L
        -0x6c9c23b6130654fdL
        -0x36bed6edf8d27cbdL    # -7.65380813443478E44
        0x13ef8ff9dc675fd4L
    .end array-data

    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    :array_e
    .array-data 8
        -0x26002be626f222ebL    # -3.3664692370977498E125
        0x72ddc7a7d40506a8L    # 2.0333858172598373E245
        -0x4089e47e0a2435d1L    # -0.005397327096704304
    .end array-data

    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    :array_f
    .array-data 8
        -0x48d01361b25eea1fL    # -7.157673483897439E-43
        -0xbd303b9587b7f97L
        0x1e36461542034c20L    # 3.867906178032072E-163
        -0x688d29ec4112a1b9L
    .end array-data

    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    :array_10
    .array-data 8
        -0x4d266fba89eb4829L    # -9.709620592085038E-64
        0x759ce2dbfe7b43bbL    # 3.4698144394065163E258
        0x476332fbddf500dbL    # 7.975017260281074E35
        -0xe8c56f31debf3f2L    # -3.20057413162089E238
    .end array-data

    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    :array_11
    .array-data 8
        -0x239be9f37e4d7980L    # -1.1679500716640698E137
        0x370303f384ba11d8L    # 1.06585196916037E-43
        0x45179931ea45f6e8L    # 7.132184173661348E24
        0x254ea760647d5443L
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
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onPositiveButtonClickListeners:Ljava/util/LinkedHashSet;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onNegativeButtonClickListeners:Ljava/util/LinkedHashSet;

    .line 17
    .line 18
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onCancelListeners:Ljava/util/LinkedHashSet;

    .line 24
    .line 25
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onDismissListeners:Ljava/util/LinkedHashSet;

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/material/datepicker/MaterialDatePicker;)Ljava/util/LinkedHashSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onPositiveButtonClickListeners:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/google/android/material/datepicker/MaterialDatePicker;)Ljava/util/LinkedHashSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onNegativeButtonClickListeners:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/google/android/material/datepicker/MaterialDatePicker;)Lcom/google/android/material/datepicker/DateSelector;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getDateSelector()Lcom/google/android/material/datepicker/DateSelector;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$300(Lcom/google/android/material/datepicker/MaterialDatePicker;)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Landroid/widget/Button;

    .line 2
    .line 3
    return-object p0
.end method

.method private static createHeaderToggleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    const v1, 0x10100a0

    .line 7
    .line 8
    .line 9
    filled-new-array {v1}, [I

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget v2, Lcom/google/android/material/R$drawable;->material_ic_calendar_black_24dp:I

    .line 14
    .line 15
    invoke-static {p0, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    new-array v1, v1, [I

    .line 24
    .line 25
    sget v2, Lcom/google/android/material/R$drawable;->material_ic_edit_black_24dp:I

    .line 26
    .line 27
    invoke-static {p0, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method private enableEdgeToEdgeIfNeeded(Landroid/view/Window;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->edgeToEdgeEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget v1, Lcom/google/android/material/R$id;->fullscreen_header:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/google/android/material/internal/ViewUtils;->getBackgroundColor(Landroid/view/View;)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/material/internal/EdgeToEdgeUtils;->applyEdgeToEdge(Landroid/view/Window;ZLjava/lang/Integer;Ljava/lang/Integer;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 34
    .line 35
    new-instance v2, Lcom/google/android/material/datepicker/MaterialDatePicker$3;

    .line 36
    .line 37
    invoke-direct {v2, p0, v1, v0, p1}, Lcom/google/android/material/datepicker/MaterialDatePicker$3;-><init>(Lcom/google/android/material/datepicker/MaterialDatePicker;ILandroid/view/View;I)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 41
    .line 42
    .line 43
    iput-boolean v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->edgeToEdgeEnabled:Z

    .line 44
    .line 45
    return-void
.end method

.method private getDateSelector()Lcom/google/android/material/datepicker/DateSelector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v2, 0x4

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
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/google/android/material/datepicker/DateSelector;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 33
    .line 34
    return-object v0

    .line 35
    :array_0
    .array-data 8
        -0x452c4f3a15cc44f8L    # -2.544940054103856E-25
        0x7972b34013614615L    # 1.0359104104054004E277
        0x7ee6afffd14b99dbL    # 1.9447878834124443E303
        0x55fbf52e1e67e93aL    # 1.6030256613045722E106
    .end array-data
.end method

.method private static getFirstLineBySeparator(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    new-array v2, v2, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    array-length v1, v0

    .line 27
    const/4 v2, 0x1

    .line 28
    if-le v1, v2, :cond_0

    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    aget-object p0, v0, p0

    .line 32
    .line 33
    :cond_0
    return-object p0

    .line 34
    :cond_1
    const/4 p0, 0x0

    .line 35
    return-object p0

    .line 36
    nop

    .line 37
    :array_0
    .array-data 8
        -0x27ec42c11fde0696L    # -1.9444142064294227E116
        0x2dc9b3a9b29de82fL    # 4.0375225070681605E-88
    .end array-data
.end method

.method private getHeaderContentDescription()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getDateSelector()Lcom/google/android/material/datepicker/DateSelector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Lcom/google/android/material/datepicker/DateSelector;->getSelectionContentDescription(Landroid/content/Context;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private static getPaddedPickerWidth(Landroid/content/Context;)I
    .locals 4
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
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_calendar_content_padding:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {}, Lcom/google/android/material/datepicker/Month;->current()Lcom/google/android/material/datepicker/Month;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget v1, v1, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    .line 16
    .line 17
    sget v2, Lcom/google/android/material/R$dimen;->mtrl_calendar_day_width:I

    .line 18
    .line 19
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    sget v3, Lcom/google/android/material/R$dimen;->mtrl_calendar_month_horizontal_padding:I

    .line 24
    .line 25
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    mul-int/lit8 v0, v0, 0x2

    .line 30
    .line 31
    mul-int v2, v2, v1

    .line 32
    .line 33
    add-int/2addr v2, v0

    .line 34
    add-int/lit8 v1, v1, -0x1

    .line 35
    .line 36
    mul-int v1, v1, p0

    .line 37
    .line 38
    add-int/2addr v1, v2

    .line 39
    return v1
.end method

.method private getThemeResId(Landroid/content/Context;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->overrideThemeResId:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getDateSelector()Lcom/google/android/material/datepicker/DateSelector;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0, p1}, Lcom/google/android/material/datepicker/DateSelector;->getDefaultThemeResId(Landroid/content/Context;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method private initHeaderToggle(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/material/datepicker/MaterialDatePicker;->TOGGLE_BUTTON_TAG:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->createHeaderToggleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 18
    .line 19
    iget v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->inputMode:I

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 36
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->updateToggleContentDescription(Lcom/google/android/material/internal/CheckableImageButton;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 41
    .line 42
    new-instance v0, L딁득돨둠땐듟듔뎬따뎠돝둡땩땭돷땹땀돸됫된듸땡둘둑땹뎡돼뒬땦됫듼땠딨땫땨뒉둥돠뎽든땠된땥돵뒈듔뎰뒻딤땹땁땠둔듬땋됴뒀듻득뎨땡땀딻땪뒛된돵딅딝땁뒹땨딸땁뒀들뒼둠땲땣돸될뒋딄돛든땰땃듬뎹듐둘땭땫둔딞듸뒹도딻듔땣둑둘딨땸땜둬땄땋땩뒤둔딽될딠돠됐땸둡딝딄됫돼듼된딀듌됩땥;

    .line 43
    .line 44
    const/4 v1, 0x2

    .line 45
    invoke-direct {v0, p0, v1}, L딁득돨둠땐듟듔뎬따뎠돝둡땩땭돷땹땀돸됫된듸땡둘둑땹뎡돼뒬땦됫듼땠딨땫땨뒉둥돠뎽든땠된땥돵뒈듔뎰뒻딤땹땁땠둔듬땋됴뒀듻득뎨땡땀딻땪뒛된돵딅딝땁뒹땨딸땁뒀들뒼둠땲땣돸될뒋딄돛든땰땃듬뎹듐둘땭땫둔딞듸뒹도딻듔땣둑둘딨땸땜둬땄땋땩뒤둔딽될딠돠됐땸둡딝딄됫돼듼된딀듌됩땥;-><init>(Ljava/lang/Object;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public static isFullscreen(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const v0, 0x101020d

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->readMaterialCalendarStyleBoolean(Landroid/content/Context;I)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method private isLandscape()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

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
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public static isNestedScrollable(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/google/android/material/R$attr;->nestedScrollable:I

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->readMaterialCalendarStyleBoolean(Landroid/content/Context;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private synthetic lambda$initHeaderToggle$0(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Landroid/widget/Button;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getDateSelector()Lcom/google/android/material/datepicker/DateSelector;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->isSelectionComplete()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->toggle()V

    .line 17
    .line 18
    .line 19
    iget p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->inputMode:I

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    if-ne p1, v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    :cond_0
    iput v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->inputMode:I

    .line 26
    .line 27
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 28
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->updateToggleContentDescription(Lcom/google/android/material/internal/CheckableImageButton;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->startPickerFragment()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static newInstance(Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;)Lcom/google/android/material/datepicker/MaterialDatePicker;
    .locals 8
    .param p0    # Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "TS;>;)",
            "Lcom/google/android/material/datepicker/MaterialDatePicker<",
            "TS;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/datepicker/MaterialDatePicker;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;-><init>()V

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
    const/4 v3, 0x4

    .line 14
    new-array v4, v3, [J

    .line 15
    .line 16
    fill-array-data v4, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget v4, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->overrideThemeResId:I

    .line 27
    .line 28
    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    new-array v4, v3, [J

    .line 34
    .line 35
    fill-array-data v4, :array_1

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iget-object v4, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 46
    .line 47
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 48
    .line 49
    .line 50
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    new-array v4, v3, [J

    .line 53
    .line 54
    fill-array-data v4, :array_2

    .line 55
    .line 56
    .line 57
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    iget-object v4, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 65
    .line 66
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 67
    .line 68
    .line 69
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v4, v3, [J

    .line 72
    .line 73
    fill-array-data v4, :array_3

    .line 74
    .line 75
    .line 76
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget-object v4, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    .line 84
    .line 85
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 86
    .line 87
    .line 88
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 89
    .line 90
    new-array v4, v3, [J

    .line 91
    .line 92
    fill-array-data v4, :array_4

    .line 93
    .line 94
    .line 95
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    iget v4, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->titleTextResId:I

    .line 103
    .line 104
    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 105
    .line 106
    .line 107
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 108
    .line 109
    const/4 v4, 0x3

    .line 110
    new-array v5, v4, [J

    .line 111
    .line 112
    fill-array-data v5, :array_5

    .line 113
    .line 114
    .line 115
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    iget-object v5, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->titleText:Ljava/lang/CharSequence;

    .line 123
    .line 124
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 128
    .line 129
    new-array v4, v4, [J

    .line 130
    .line 131
    fill-array-data v4, :array_6

    .line 132
    .line 133
    .line 134
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    iget v4, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->inputMode:I

    .line 142
    .line 143
    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 144
    .line 145
    .line 146
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 147
    .line 148
    const/4 v4, 0x5

    .line 149
    new-array v5, v4, [J

    .line 150
    .line 151
    fill-array-data v5, :array_7

    .line 152
    .line 153
    .line 154
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    iget v5, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->positiveButtonTextResId:I

    .line 162
    .line 163
    invoke-virtual {v1, v2, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 164
    .line 165
    .line 166
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 167
    .line 168
    new-array v5, v3, [J

    .line 169
    .line 170
    fill-array-data v5, :array_8

    .line 171
    .line 172
    .line 173
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    iget-object v5, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->positiveButtonText:Ljava/lang/CharSequence;

    .line 181
    .line 182
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 183
    .line 184
    .line 185
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 186
    .line 187
    const/4 v5, 0x7

    .line 188
    new-array v6, v5, [J

    .line 189
    .line 190
    fill-array-data v6, :array_9

    .line 191
    .line 192
    .line 193
    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    iget v6, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->positiveButtonContentDescriptionResId:I

    .line 201
    .line 202
    invoke-virtual {v1, v2, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 203
    .line 204
    .line 205
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 206
    .line 207
    const/4 v6, 0x6

    .line 208
    new-array v7, v6, [J

    .line 209
    .line 210
    fill-array-data v7, :array_a

    .line 211
    .line 212
    .line 213
    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    iget-object v7, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->positiveButtonContentDescription:Ljava/lang/CharSequence;

    .line 221
    .line 222
    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 223
    .line 224
    .line 225
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 226
    .line 227
    new-array v4, v4, [J

    .line 228
    .line 229
    fill-array-data v4, :array_b

    .line 230
    .line 231
    .line 232
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    iget v4, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->negativeButtonTextResId:I

    .line 240
    .line 241
    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 242
    .line 243
    .line 244
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 245
    .line 246
    new-array v3, v3, [J

    .line 247
    .line 248
    fill-array-data v3, :array_c

    .line 249
    .line 250
    .line 251
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->negativeButtonText:Ljava/lang/CharSequence;

    .line 259
    .line 260
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 261
    .line 262
    .line 263
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 264
    .line 265
    new-array v3, v5, [J

    .line 266
    .line 267
    fill-array-data v3, :array_d

    .line 268
    .line 269
    .line 270
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    iget v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->negativeButtonContentDescriptionResId:I

    .line 278
    .line 279
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 280
    .line 281
    .line 282
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 283
    .line 284
    new-array v3, v6, [J

    .line 285
    .line 286
    fill-array-data v3, :array_e

    .line 287
    .line 288
    .line 289
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->negativeButtonContentDescription:Ljava/lang/CharSequence;

    .line 297
    .line 298
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 302
    .line 303
    .line 304
    return-object v0

    .line 305
    :array_0
    .array-data 8
        -0x66321c0b99c3b419L    # -2.198290539053146E-184
        -0x4e3d6556da990dfdL    # -5.391140888086539E-69
        -0x4de5d4a8b0a5881fL    # -2.426683305197814E-67
        0x7258c182bfe124aaL    # 6.60290829455836E242
    .end array-data

    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    :array_1
    .array-data 8
        0x514d9a14d8106ba9L    # 4.492707226878209E83
        0x5258dacab7310989L    # 4.944319123927513E88
        0x7db9805df1785f90L    # 4.1694649426446347E297
        0x77d57ad131958635L    # 1.7730682585723228E269
    .end array-data

    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    :array_2
    .array-data 8
        0x38390064103ddd9cL    # 7.347288392640594E-38
        0x2490f537562c3f5L
        -0x5400af20d73595f5L    # -9.163183289105678E-97
        0x27031bba2d0bb9f7L    # 9.249835643259637E-121
    .end array-data

    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    :array_3
    .array-data 8
        0x9a2783a63cb6982L
        -0x5eb0b1d48214041dL
        -0x7cfcc07f39053c44L
        0x718ecdc115edcda0L    # 1.0029282205999306E239
    .end array-data

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    :array_4
    .array-data 8
        -0x51a595eaa351f81eL    # -2.1245247778410487E-85
        0x3e4821b6e0fd8958L    # 1.1237196978219259E-8
        0x3544579b9d1a7d25L    # 4.247653359415604E-52
        0xded84c1418f24L    # 1.936899944019588E-308
    .end array-data

    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    :array_5
    .array-data 8
        0x7e9a16659bc58d4eL    # 6.988241962182904E301
        -0x734d679d4706efd2L
        0x722bafbffd0b4d12L    # 9.230706835136378E241
    .end array-data

    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    :array_6
    .array-data 8
        0x4eef04cc278be228L    # 1.7126678121050391E72
        -0x66a424e66ab7b2d0L
        -0x767203a02c97b7b7L
    .end array-data

    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    :array_7
    .array-data 8
        -0x65432948f0e6f0f4L    # -6.94990301387869E-180
        0x3596d198fe6f4ad8L    # 1.524728125229089E-50
        0x391887f00a98983fL    # 1.1811249991719647E-33
        -0x37ec2907c7a6c2d5L    # -1.6877771487754736E39
        -0x1f37d0fe64ebde7L
    .end array-data

    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    :array_8
    .array-data 8
        -0x15d84410758cd85aL    # -2.3254140647148975E203
        -0x5bb0f7ef7b9a5fcaL    # -8.538758597974518E-134
        -0x1c495a255cb9ba90L
        -0x9715428038862b2L
    .end array-data

    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    :array_9
    .array-data 8
        0x730478b5ab9b0662L
        -0x316ff181043ab217L    # -2.7704688430801546E70
        0x5a12b265665b7a2bL    # 7.910189265843471E125
        0x74f0649a5bde4c32L    # 1.922977745257096E255
        0x6a96a288b170d527L    # 2.838674569758592E205
        -0x3685c9217b8f7cdaL    # -9.353586517277766E45
        -0x358246698dc70c9fL    # -6.950890533945326E50
    .end array-data

    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    :array_a
    .array-data 8
        0x7672813a28c4fc91L    # 3.6418368317646994E262
        -0x6890ace31da82L
        0xb3b627e3bc1379dL    # 1.45905706472817E-254
        0xe90d3d6b94592a3L    # 1.615113017482748E-238
        -0x5175bfe7a3e6e850L
        0x697f713791678a46L    # 1.5042181065015592E200
    .end array-data

    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    :array_b
    .array-data 8
        0x7cbeadc2ed7b6caeL    # 7.65373713662923E292
        -0x1caa955f00057751L    # -3.233005543780993E170
        0x6e6b781a3e70d988L    # 7.943502264877316E223
        0x23823d93acdb4baL
        0x1a61cb3209257cdeL
    .end array-data

    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    :array_c
    .array-data 8
        -0x3a5cc4b15d71a53cL    # -2.975956576589375E27
        0x4f846c021fa74225L    # 1.1546363889408496E75
        0x24f14d7ccc67143dL    # 9.75069125158054E-131
        -0x41e794b204374b20L    # -1.4213821084852263E-9
    .end array-data

    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    :array_d
    .array-data 8
        -0x2d05ae3d12942f94L    # -5.3613525170242725E91
        -0x2335a4a98c7c49afL    # -9.808452652681248E138
        0x45fc6e1e558189aaL    # 1.4077928581531491E29
        -0x46b474e7590ed1d4L    # -1.0609310546714367E-32
        0x1ecf8e2b919515fcL
        -0x19b54a95ee62b0bdL    # -5.674391443703789E184
        0x7b55a5167b910e95L    # 1.2874517631448955E286
    .end array-data

    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    :array_e
    .array-data 8
        -0x81318ca333ac5fcL    # -4.771682446327966E269
        -0x4339200e8cc29fe5L    # -6.349026301085772E-16
        -0x1df0e96b629a5fc4L    # -2.2378104822810105E164
        0x204d4450b23b9c9aL    # 4.36564373230196E-153
        -0x3700f8fd030214aaL    # -4.3245869000286544E43
        -0x4671f31be42185deL    # -1.8519961540726427E-31
    .end array-data
.end method

.method public static readMaterialCalendarStyleBoolean(Landroid/content/Context;I)Z
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/google/android/material/R$attr;->materialCalendarStyle:I

    .line 2
    .line 3
    const-class v1, Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {p0, v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Landroid/content/Context;ILjava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    filled-new-array {p1}, [I

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 27
    .line 28
    .line 29
    return p1
.end method

.method private startPickerFragment()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getThemeResId(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getDateSelector()Lcom/google/android/material/datepicker/DateSelector;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    .line 16
    .line 17
    invoke-static {v1, v0, v2, v3}, Lcom/google/android/material/datepicker/MaterialCalendar;->newInstance(Lcom/google/android/material/datepicker/DateSelector;ILcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/DayViewDecorator;)Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->calendar:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 22
    .line 23
    iget v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->inputMode:I

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    if-ne v2, v3, :cond_0

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getDateSelector()Lcom/google/android/material/datepicker/DateSelector;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 33
    .line 34
    invoke-static {v1, v0, v2}, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->newInstance(Lcom/google/android/material/datepicker/DateSelector;ILcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/MaterialTextInputPicker;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :cond_0
    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->pickerFragment:Lcom/google/android/material/datepicker/PickerFragment;

    .line 39
    .line 40
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->updateTitle()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getHeaderText()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->updateHeader(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sget v1, Lcom/google/android/material/R$id;->mtrl_calendar_frame:I

    .line 59
    .line 60
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->pickerFragment:Lcom/google/android/material/datepicker/PickerFragment;

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->pickerFragment:Lcom/google/android/material/datepicker/PickerFragment;

    .line 69
    .line 70
    new-instance v1, Lcom/google/android/material/datepicker/MaterialDatePicker$4;

    .line 71
    .line 72
    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/MaterialDatePicker$4;-><init>(Lcom/google/android/material/datepicker/MaterialDatePicker;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/PickerFragment;->addOnSelectionChangedListener(Lcom/google/android/material/datepicker/OnSelectionChangedListener;)Z

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public static thisMonthInUtcMilliseconds()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/material/datepicker/Month;->current()Lcom/google/android/material/datepicker/Month;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-wide v0, v0, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    .line 6
    .line 7
    return-wide v0
.end method

.method public static todayInUtcMilliseconds()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method private updateTitle()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerTitleTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->inputMode:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->isLandscape()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->singleLineTitleText:Ljava/lang/CharSequence;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->fullTitleText:Ljava/lang/CharSequence;

    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private updateToggleContentDescription(Lcom/google/android/material/internal/CheckableImageButton;)V
    .locals 2
    .param p1    # Lcom/google/android/material/internal/CheckableImageButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->inputMode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_toggle_to_calendar_input_mode:I

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_toggle_to_text_input_mode:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/google/android/material/datepicker/MaterialDatePicker;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->lambda$initHeaderToggle$0(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onCancelListeners:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public addOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onDismissListeners:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public addOnNegativeButtonClickListener(Landroid/view/View$OnClickListener;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onNegativeButtonClickListeners:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public addOnPositiveButtonClickListener(Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener<",
            "-TS;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onPositiveButtonClickListeners:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onCancelListeners:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public clearOnDismissListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onDismissListeners:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public clearOnNegativeButtonClickListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onNegativeButtonClickListeners:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public clearOnPositiveButtonClickListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onPositiveButtonClickListeners:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getHeaderText()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getDateSelector()Lcom/google/android/material/datepicker/DateSelector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Lcom/google/android/material/datepicker/DateSelector;->getSelectionDisplayString(Landroid/content/Context;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getInputMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->inputMode:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSelection()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getDateSelector()Lcom/google/android/material/datepicker/DateSelector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->getSelection()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onCancelListeners:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

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

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x7

    .line 3
    const/4 v2, 0x5

    .line 4
    const/4 v3, 0x3

    .line 5
    const/4 v4, 0x4

    .line 6
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :cond_0
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    new-array v6, v4, [J

    .line 18
    .line 19
    fill-array-data v6, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    iput v5, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->overrideThemeResId:I

    .line 34
    .line 35
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v6, v4, [J

    .line 38
    .line 39
    fill-array-data v6, :array_1

    .line 40
    .line 41
    .line 42
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Lcom/google/android/material/datepicker/DateSelector;

    .line 54
    .line 55
    iput-object v5, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 56
    .line 57
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    new-array v6, v4, [J

    .line 60
    .line 61
    fill-array-data v6, :array_2

    .line 62
    .line 63
    .line 64
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    check-cast v5, Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 76
    .line 77
    iput-object v5, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 78
    .line 79
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    new-array v6, v4, [J

    .line 82
    .line 83
    fill-array-data v6, :array_3

    .line 84
    .line 85
    .line 86
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    check-cast v5, Lcom/google/android/material/datepicker/DayViewDecorator;

    .line 98
    .line 99
    iput-object v5, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    .line 100
    .line 101
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 102
    .line 103
    new-array v6, v4, [J

    .line 104
    .line 105
    fill-array-data v6, :array_4

    .line 106
    .line 107
    .line 108
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    iput v5, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->titleTextResId:I

    .line 120
    .line 121
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 122
    .line 123
    new-array v6, v3, [J

    .line 124
    .line 125
    fill-array-data v6, :array_5

    .line 126
    .line 127
    .line 128
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    iput-object v5, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->titleText:Ljava/lang/CharSequence;

    .line 140
    .line 141
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 142
    .line 143
    new-array v3, v3, [J

    .line 144
    .line 145
    fill-array-data v3, :array_6

    .line 146
    .line 147
    .line 148
    invoke-direct {v5, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    iput v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->inputMode:I

    .line 160
    .line 161
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 162
    .line 163
    new-array v5, v2, [J

    .line 164
    .line 165
    fill-array-data v5, :array_7

    .line 166
    .line 167
    .line 168
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    iput v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->positiveButtonTextResId:I

    .line 180
    .line 181
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 182
    .line 183
    new-array v5, v4, [J

    .line 184
    .line 185
    fill-array-data v5, :array_8

    .line 186
    .line 187
    .line 188
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    iput-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->positiveButtonText:Ljava/lang/CharSequence;

    .line 200
    .line 201
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 202
    .line 203
    new-array v5, v1, [J

    .line 204
    .line 205
    fill-array-data v5, :array_9

    .line 206
    .line 207
    .line 208
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    iput v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->positiveButtonContentDescriptionResId:I

    .line 220
    .line 221
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 222
    .line 223
    new-array v5, v0, [J

    .line 224
    .line 225
    fill-array-data v5, :array_a

    .line 226
    .line 227
    .line 228
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    iput-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->positiveButtonContentDescription:Ljava/lang/CharSequence;

    .line 240
    .line 241
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 242
    .line 243
    new-array v2, v2, [J

    .line 244
    .line 245
    fill-array-data v2, :array_b

    .line 246
    .line 247
    .line 248
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    iput v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->negativeButtonTextResId:I

    .line 260
    .line 261
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 262
    .line 263
    new-array v3, v4, [J

    .line 264
    .line 265
    fill-array-data v3, :array_c

    .line 266
    .line 267
    .line 268
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    iput-object v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->negativeButtonText:Ljava/lang/CharSequence;

    .line 280
    .line 281
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 282
    .line 283
    new-array v1, v1, [J

    .line 284
    .line 285
    fill-array-data v1, :array_d

    .line 286
    .line 287
    .line 288
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    iput v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->negativeButtonContentDescriptionResId:I

    .line 300
    .line 301
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 302
    .line 303
    new-array v0, v0, [J

    .line 304
    .line 305
    fill-array-data v0, :array_e

    .line 306
    .line 307
    .line 308
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->negativeButtonContentDescription:Ljava/lang/CharSequence;

    .line 320
    .line 321
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->titleText:Ljava/lang/CharSequence;

    .line 322
    .line 323
    if-eqz p1, :cond_1

    .line 324
    .line 325
    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    iget v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->titleTextResId:I

    .line 335
    .line 336
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    :goto_0
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->fullTitleText:Ljava/lang/CharSequence;

    .line 341
    .line 342
    invoke-static {p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getFirstLineBySeparator(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->singleLineTitleText:Ljava/lang/CharSequence;

    .line 347
    .line 348
    return-void

    .line 349
    :array_0
    .array-data 8
        -0x2fd2220ab3277526L    # -1.729182567660318E78
        0x45b30de033d95ec2L    # 5.896989988799827E27
        -0x5078a73834bf5acL
        0x1f529cf733e079c5L    # 8.473095245536887E-158
    .end array-data

    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    :array_1
    .array-data 8
        -0x52957c1e474b7fc1L    # -6.508270667495075E-90
        0x12433c767b12486bL    # 1.064319659113903E-220
        0x5065b70b1e3182f1L    # 2.0115414151834464E79
        -0x1bc67fc46aa48c24L    # -6.3071501031776945E174
    .end array-data

    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    :array_2
    .array-data 8
        0x15ffae5eddb80e45L
        0x6c5e2cd404853351L    # 1.0158411529104617E214
        -0x76a8e109cf0a11d0L
        0x74e671b2ac969391L    # 1.3164039313575531E255
    .end array-data

    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    :array_3
    .array-data 8
        -0x2c6ca455a1f259d7L    # -4.037947562148661E94
        0x497f3f02bf3467d7L    # 1.1148993758200589E46
        0x5e48cd24c5f3051cL
        0x252bf3f57f11fe9fL
    .end array-data

    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    :array_4
    .array-data 8
        -0x6a5e48f400ebfb63L    # -1.7656912568475E-204
        0x7d23375941125f74L    # 6.136396456663417E294
        -0x6dcc58dce3f80966L    # -5.436875425192412E-221
        -0x4057af3b7620be4dL    # -0.04749120886811244
    .end array-data

    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    :array_5
    .array-data 8
        0x48dcac57233ccf7dL    # 9.99115359599638E42
        0x79648e0005773f7dL    # 5.693206255404077E276
        -0x5a6434302bd9a734L
    .end array-data

    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    :array_6
    .array-data 8
        -0x6e79c3e493aab595L    # -3.003491023576045E-224
        0x1f57ec7704779304L
        0x3803a6c1e0a8d6b3L    # 7.218782747566719E-39
    .end array-data

    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    :array_7
    .array-data 8
        -0x4815f86a8d60cb9aL    # -2.3904434478468816E-39
        -0x2021e81907ee6adL    # -7.816790144536065E298
        0x66550d3b9a225b14L    # 8.945082197446765E184
        0x76d5fade14a4bb63L    # 2.7684898385711776E264
        -0x550c22f0e77d2935L    # -8.868649725457806E-102
    .end array-data

    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    :array_8
    .array-data 8
        -0x77218f00d6d9bf21L    # -5.900493957329422E-266
        0x4703d270230284dfL    # 1.2865228839768854E34
        -0x1ecd2b81c8243d0eL    # -1.6545854670258005E160
        0x266bbd428b612a50L
    .end array-data

    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    :array_9
    .array-data 8
        -0x16a0a401e6a52583L    # -3.750629314492781E199
        -0xaaeb7e77e48d2ebL
        0x46c4799757ae5bb7L    # 8.305632759473447E32
        -0x1d5b00e026c93dcL    # -5.506609604069047E299
        -0x50f06bb546f16a0eL    # -5.2017947568146345E-82
        -0x268e428e7216616bL    # -7.329463818292563E122
        -0x3650d4dd0da5c3a8L    # -8.897034511253708E46
    .end array-data

    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    :array_a
    .array-data 8
        -0x3abaf991e8ac4407L    # -5.0835614467092605E25
        0x13cd39a89535bb83L
        0x3b8a275c5e2bfcfcL    # 6.922840822113431E-22
        -0x4f3f51d26d7d4d76L    # -7.37559542270912E-74
        0x16a4311a7f07d68cL
        -0x75b7660396052c5dL    # -4.0001425389615737E-259
    .end array-data

    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    :array_b
    .array-data 8
        -0x4d25352c5817fcb6L    # -1.0176320992732464E-63
        0x125fb7bdc680878dL    # 3.509824574672811E-220
        0x4342de81cdd938aL
        -0x7a30f6027af6ab6eL
        -0x2b80c1c30531f693L    # -1.0677583193520259E99
    .end array-data

    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    :array_c
    .array-data 8
        -0x2658f2540b4c1943L    # -7.61979551729648E123
        -0x793b32459a32839dL    # -4.694323458096629E-276
        -0x36bd2e93238de482L    # -8.393138497031102E44
        0x3973d631438c9f3L
    .end array-data

    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    :array_d
    .array-data 8
        -0x612a3906245910fbL
        0x2c29e98ce4730fa7L    # 6.0656515375210785E-96
        0x1d34a9be7b297f52L
        -0x210b533dc9de598bL    # -2.643625857095741E149
        0x43d1aa2cd419a641L    # 5.0915165366424054E18
        0x296fb956194b23daL
        0x758a6dc9a7a6c73aL
    .end array-data

    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    :array_e
    .array-data 8
        -0x6bb3ffe77be1b2c1L    # -6.653909378454365E-211
        0x484083827cc90669L    # 1.1238648535440169E40
        -0x4f0018946020a62eL    # -1.1285635088899463E-72
        -0x5b932805c3931d2aL
        0x194225d01d92260L
        0x57f4f08391df027dL    # 5.156616300285186E115
    .end array-data
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getThemeResId(Landroid/content/Context;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->isFullscreen(Landroid/content/Context;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iput-boolean v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->fullscreen:Z

    .line 27
    .line 28
    new-instance v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 29
    .line 30
    sget v2, Lcom/google/android/material/R$attr;->materialCalendarStyle:I

    .line 31
    .line 32
    sget v3, Lcom/google/android/material/R$style;->Widget_MaterialComponents_MaterialCalendar:I

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-direct {v1, v0, v4, v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 39
    .line 40
    sget-object v1, Lcom/google/android/material/R$styleable;->MaterialCalendar:[I

    .line 41
    .line 42
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    sget v2, Lcom/google/android/material/R$styleable;->MaterialCalendar_backgroundTint:I

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 62
    .line 63
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 85
    .line 86
    .line 87
    return-object p1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
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
    iget-boolean p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->fullscreen:Z

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    sget p3, Lcom/google/android/material/R$layout;->mtrl_picker_fullscreen:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget p3, Lcom/google/android/material/R$layout;->mtrl_picker_dialog:I

    .line 9
    .line 10
    :goto_0
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iget-object p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    .line 19
    .line 20
    if-eqz p3, :cond_1

    .line 21
    .line 22
    invoke-virtual {p3, p2}, Lcom/google/android/material/datepicker/DayViewDecorator;->initialize(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-boolean p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->fullscreen:Z

    .line 26
    .line 27
    if-eqz p3, :cond_2

    .line 28
    .line 29
    sget p3, Lcom/google/android/material/R$id;->mtrl_calendar_frame:I

    .line 30
    .line 31
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 36
    .line 37
    invoke-static {p2}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getPaddedPickerWidth(Landroid/content/Context;)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v2, -0x2

    .line 42
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    sget p3, Lcom/google/android/material/R$id;->mtrl_calendar_main_pane:I

    .line 50
    .line 51
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 56
    .line 57
    invoke-static {p2}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getPaddedPickerWidth(Landroid/content/Context;)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    const/4 v2, -0x1

    .line 62
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    .line 67
    .line 68
    :goto_1
    sget p3, Lcom/google/android/material/R$id;->mtrl_picker_header_selection_text:I

    .line 69
    .line 70
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    check-cast p3, Landroid/widget/TextView;

    .line 75
    .line 76
    iput-object p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerSelectionText:Landroid/widget/TextView;

    .line 77
    .line 78
    const/4 v0, 0x1

    .line 79
    invoke-static {p3, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 80
    .line 81
    .line 82
    sget p3, Lcom/google/android/material/R$id;->mtrl_picker_header_toggle:I

    .line 83
    .line 84
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    check-cast p3, Lcom/google/android/material/internal/CheckableImageButton;

    .line 89
    .line 90
    iput-object p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lcom/google/android/material/internal/CheckableImageButton;

    .line 91
    .line 92
    sget p3, Lcom/google/android/material/R$id;->mtrl_picker_title_text:I

    .line 93
    .line 94
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    check-cast p3, Landroid/widget/TextView;

    .line 99
    .line 100
    iput-object p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerTitleTextView:Landroid/widget/TextView;

    .line 101
    .line 102
    invoke-direct {p0, p2}, Lcom/google/android/material/datepicker/MaterialDatePicker;->initHeaderToggle(Landroid/content/Context;)V

    .line 103
    .line 104
    .line 105
    sget p2, Lcom/google/android/material/R$id;->confirm_button:I

    .line 106
    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    check-cast p2, Landroid/widget/Button;

    .line 112
    .line 113
    iput-object p2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Landroid/widget/Button;

    .line 114
    .line 115
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getDateSelector()Lcom/google/android/material/datepicker/DateSelector;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-interface {p2}, Lcom/google/android/material/datepicker/DateSelector;->isSelectionComplete()Z

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    if-eqz p2, :cond_3

    .line 124
    .line 125
    iget-object p2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Landroid/widget/Button;

    .line 126
    .line 127
    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_3
    iget-object p2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Landroid/widget/Button;

    .line 132
    .line 133
    const/4 p3, 0x0

    .line 134
    invoke-virtual {p2, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 135
    .line 136
    .line 137
    :goto_2
    iget-object p2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Landroid/widget/Button;

    .line 138
    .line 139
    sget-object p3, Lcom/google/android/material/datepicker/MaterialDatePicker;->CONFIRM_BUTTON_TAG:Ljava/lang/Object;

    .line 140
    .line 141
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    iget-object p2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->positiveButtonText:Ljava/lang/CharSequence;

    .line 145
    .line 146
    if-eqz p2, :cond_4

    .line 147
    .line 148
    iget-object p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Landroid/widget/Button;

    .line 149
    .line 150
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_4
    iget p2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->positiveButtonTextResId:I

    .line 155
    .line 156
    if-eqz p2, :cond_5

    .line 157
    .line 158
    iget-object p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Landroid/widget/Button;

    .line 159
    .line 160
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(I)V

    .line 161
    .line 162
    .line 163
    :cond_5
    :goto_3
    iget-object p2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->positiveButtonContentDescription:Ljava/lang/CharSequence;

    .line 164
    .line 165
    if-eqz p2, :cond_6

    .line 166
    .line 167
    iget-object p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Landroid/widget/Button;

    .line 168
    .line 169
    invoke-virtual {p3, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_6
    iget p2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->positiveButtonContentDescriptionResId:I

    .line 174
    .line 175
    if-eqz p2, :cond_7

    .line 176
    .line 177
    iget-object p2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Landroid/widget/Button;

    .line 178
    .line 179
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 180
    .line 181
    .line 182
    move-result-object p3

    .line 183
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 184
    .line 185
    .line 186
    move-result-object p3

    .line 187
    iget v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->positiveButtonContentDescriptionResId:I

    .line 188
    .line 189
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 190
    .line 191
    .line 192
    move-result-object p3

    .line 193
    invoke-virtual {p2, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 194
    .line 195
    .line 196
    :cond_7
    :goto_4
    iget-object p2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Landroid/widget/Button;

    .line 197
    .line 198
    new-instance p3, Lcom/google/android/material/datepicker/MaterialDatePicker$1;

    .line 199
    .line 200
    invoke-direct {p3, p0}, Lcom/google/android/material/datepicker/MaterialDatePicker$1;-><init>(Lcom/google/android/material/datepicker/MaterialDatePicker;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    .line 205
    .line 206
    sget p2, Lcom/google/android/material/R$id;->cancel_button:I

    .line 207
    .line 208
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 209
    .line 210
    .line 211
    move-result-object p2

    .line 212
    check-cast p2, Landroid/widget/Button;

    .line 213
    .line 214
    sget-object p3, Lcom/google/android/material/datepicker/MaterialDatePicker;->CANCEL_BUTTON_TAG:Ljava/lang/Object;

    .line 215
    .line 216
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    iget-object p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->negativeButtonText:Ljava/lang/CharSequence;

    .line 220
    .line 221
    if-eqz p3, :cond_8

    .line 222
    .line 223
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_8
    iget p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->negativeButtonTextResId:I

    .line 228
    .line 229
    if-eqz p3, :cond_9

    .line 230
    .line 231
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 232
    .line 233
    .line 234
    :cond_9
    :goto_5
    iget-object p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->negativeButtonContentDescription:Ljava/lang/CharSequence;

    .line 235
    .line 236
    if-eqz p3, :cond_a

    .line 237
    .line 238
    invoke-virtual {p2, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 239
    .line 240
    .line 241
    goto :goto_6

    .line 242
    :cond_a
    iget p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->negativeButtonContentDescriptionResId:I

    .line 243
    .line 244
    if-eqz p3, :cond_b

    .line 245
    .line 246
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 247
    .line 248
    .line 249
    move-result-object p3

    .line 250
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 251
    .line 252
    .line 253
    move-result-object p3

    .line 254
    iget v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->negativeButtonContentDescriptionResId:I

    .line 255
    .line 256
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 257
    .line 258
    .line 259
    move-result-object p3

    .line 260
    invoke-virtual {p2, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 261
    .line 262
    .line 263
    :cond_b
    :goto_6
    new-instance p3, Lcom/google/android/material/datepicker/MaterialDatePicker$2;

    .line 264
    .line 265
    invoke-direct {p3, p0}, Lcom/google/android/material/datepicker/MaterialDatePicker$2;-><init>(Lcom/google/android/material/datepicker/MaterialDatePicker;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    .line 270
    .line 271
    return-object p1
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onDismissListeners:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/view/ViewGroup;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x7

    .line 3
    const/4 v2, 0x5

    .line 4
    const/4 v3, 0x3

    .line 5
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v5, 0x4

    .line 11
    new-array v6, v5, [J

    .line 12
    .line 13
    fill-array-data v6, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    iget v6, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->overrideThemeResId:I

    .line 24
    .line 25
    invoke-virtual {p1, v4, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    new-array v6, v5, [J

    .line 31
    .line 32
    fill-array-data v6, :array_1

    .line 33
    .line 34
    .line 35
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    iget-object v6, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 43
    .line 44
    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 45
    .line 46
    .line 47
    new-instance v4, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;

    .line 48
    .line 49
    iget-object v6, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 50
    .line 51
    invoke-direct {v4, v6}, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;-><init>(Lcom/google/android/material/datepicker/CalendarConstraints;)V

    .line 52
    .line 53
    .line 54
    iget-object v6, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->calendar:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 55
    .line 56
    if-nez v6, :cond_0

    .line 57
    .line 58
    const/4 v6, 0x0

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v6}, Lcom/google/android/material/datepicker/MaterialCalendar;->getCurrentMonth()Lcom/google/android/material/datepicker/Month;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    :goto_0
    if-eqz v6, :cond_1

    .line 65
    .line 66
    iget-wide v6, v6, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    .line 67
    .line 68
    invoke-virtual {v4, v6, v7}, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->setOpenAt(J)Lcom/google/android/material/datepicker/CalendarConstraints$Builder;

    .line 69
    .line 70
    .line 71
    :cond_1
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    new-array v7, v5, [J

    .line 74
    .line 75
    fill-array-data v7, :array_2

    .line 76
    .line 77
    .line 78
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-virtual {v4}, Lcom/google/android/material/datepicker/CalendarConstraints$Builder;->build()Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {p1, v6, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 90
    .line 91
    .line 92
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array v6, v5, [J

    .line 95
    .line 96
    fill-array-data v6, :array_3

    .line 97
    .line 98
    .line 99
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    iget-object v6, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    .line 107
    .line 108
    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 109
    .line 110
    .line 111
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 112
    .line 113
    new-array v6, v5, [J

    .line 114
    .line 115
    fill-array-data v6, :array_4

    .line 116
    .line 117
    .line 118
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    iget v6, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->titleTextResId:I

    .line 126
    .line 127
    invoke-virtual {p1, v4, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 128
    .line 129
    .line 130
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 131
    .line 132
    new-array v6, v3, [J

    .line 133
    .line 134
    fill-array-data v6, :array_5

    .line 135
    .line 136
    .line 137
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    iget-object v6, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->titleText:Ljava/lang/CharSequence;

    .line 145
    .line 146
    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 150
    .line 151
    new-array v3, v3, [J

    .line 152
    .line 153
    fill-array-data v3, :array_6

    .line 154
    .line 155
    .line 156
    invoke-direct {v4, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    iget v4, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->inputMode:I

    .line 164
    .line 165
    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 166
    .line 167
    .line 168
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 169
    .line 170
    new-array v4, v2, [J

    .line 171
    .line 172
    fill-array-data v4, :array_7

    .line 173
    .line 174
    .line 175
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    iget v4, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->positiveButtonTextResId:I

    .line 183
    .line 184
    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 185
    .line 186
    .line 187
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 188
    .line 189
    new-array v4, v5, [J

    .line 190
    .line 191
    fill-array-data v4, :array_8

    .line 192
    .line 193
    .line 194
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    iget-object v4, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->positiveButtonText:Ljava/lang/CharSequence;

    .line 202
    .line 203
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 204
    .line 205
    .line 206
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 207
    .line 208
    new-array v4, v1, [J

    .line 209
    .line 210
    fill-array-data v4, :array_9

    .line 211
    .line 212
    .line 213
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    iget v4, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->positiveButtonContentDescriptionResId:I

    .line 221
    .line 222
    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 223
    .line 224
    .line 225
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 226
    .line 227
    new-array v4, v0, [J

    .line 228
    .line 229
    fill-array-data v4, :array_a

    .line 230
    .line 231
    .line 232
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    iget-object v4, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->positiveButtonContentDescription:Ljava/lang/CharSequence;

    .line 240
    .line 241
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 242
    .line 243
    .line 244
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 245
    .line 246
    new-array v2, v2, [J

    .line 247
    .line 248
    fill-array-data v2, :array_b

    .line 249
    .line 250
    .line 251
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    iget v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->negativeButtonTextResId:I

    .line 259
    .line 260
    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 261
    .line 262
    .line 263
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 264
    .line 265
    new-array v3, v5, [J

    .line 266
    .line 267
    fill-array-data v3, :array_c

    .line 268
    .line 269
    .line 270
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->negativeButtonText:Ljava/lang/CharSequence;

    .line 278
    .line 279
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 280
    .line 281
    .line 282
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 283
    .line 284
    new-array v1, v1, [J

    .line 285
    .line 286
    fill-array-data v1, :array_d

    .line 287
    .line 288
    .line 289
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    iget v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->negativeButtonContentDescriptionResId:I

    .line 297
    .line 298
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 299
    .line 300
    .line 301
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 302
    .line 303
    new-array v0, v0, [J

    .line 304
    .line 305
    fill-array-data v0, :array_e

    .line 306
    .line 307
    .line 308
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->negativeButtonContentDescription:Ljava/lang/CharSequence;

    .line 316
    .line 317
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 318
    .line 319
    .line 320
    return-void

    .line 321
    :array_0
    .array-data 8
        -0x7fcdc991db80301L    # -1.263831652572835E270
        0x4827e003392e926aL    # 4.0621291234575686E39
        0x381d481e7c533d4aL    # 2.1512806730911107E-38
        0x6610eb24b0c65089L    # 4.493036661804563E183
    .end array-data

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    :array_1
    .array-data 8
        0x2c981aacbf4409f5L    # 7.222275568287472E-94
        -0xeeda0ef4af14a70L    # -4.673020102169598E236
        0x7ba7134df1f23443L    # 4.392130817479357E287
        0x5a1c3676da249d04L
    .end array-data

    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    :array_2
    .array-data 8
        0x3f9b59cf2426f20aL    # 0.026709782201338718
        0x3cfc331ceb01293fL    # 6.261582364487509E-15
        0x1419678017c73829L    # 7.54623394236271E-212
        0x422a6b11f9b86bedL    # 5.673274492421079E10
    .end array-data

    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    :array_3
    .array-data 8
        0x3aceb1454db23fa5L    # 1.9834539808711505E-25
        -0x72a09dc5df97bb2dL
        -0x2edce35bf3e96de3L    # -7.25157249553998E82
        -0x521c219961811774L    # -1.248480860192182E-87
    .end array-data

    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    :array_4
    .array-data 8
        -0x5dd70c0a3c2e44b8L
        -0x2e39285184aa5f78L    # -8.875085216080286E85
        -0xb515cc86f73f464L
        0x51db957af2dd3323L    # 2.1434559453616435E86
    .end array-data

    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    :array_5
    .array-data 8
        -0x78e351e1608e6e8fL
        -0x4625de6497e14842L    # -5.153485819285509E-30
        -0x441f3c579623109bL    # -2.839980945537035E-20
    .end array-data

    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    :array_6
    .array-data 8
        0x3032d42604ec89d5L    # 1.6260787115505673E-76
        0x5e4d9b79826009f1L    # 1.8485323427430857E146
        0x6a95810f03697a5L
    .end array-data

    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    :array_7
    .array-data 8
        0x7fc7a4aa3f8389f2L    # 3.3205671310448266E307
        -0x7da755e4def4bc72L
        0x7688879026d89cb4L    # 9.655075962127263E262
        -0x612c5e377e69df59L
        -0x3f8403526f2adbe8L    # -447.79237445123863
    .end array-data

    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    :array_8
    .array-data 8
        0x277c877735babe01L
        0x3c96bb97baf2dddcL    # 7.887018805468868E-17
        -0xb6fb4ef01ee3841L    # -2.986369230063338E253
        0x7b7af2c48158538aL    # 6.411615041780572E286
    .end array-data

    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    :array_9
    .array-data 8
        0x47801645facaa26fL    # 2.6729122274327554E36
        -0x4abd8597b8cf7fe9L    # -3.858418515847769E-52
        -0x3422e12aed411645L    # -2.8561243210365057E57
        0x2ab24ef896c32cccL    # 5.108975233050658E-103
        0x7fdb54f07a948154L    # 7.677215497594505E307
        0x5776f20796beacbbL    # 2.2072654002005673E113
        0x554984f555b398aeL    # 7.144608930924828E102
    .end array-data

    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    :array_a
    .array-data 8
        -0x6a03529066ec5020L
        -0x3978a16a41167d0eL    # -5.924865152817816E31
        -0x1e5b183490d59ae1L    # -2.351295199603764E162
        0x100ac9956bf30aa5L    # 2.15677327503459E-231
        -0x56da7d864dcdf52aL
        -0x3a0a01ba5e525457L    # -1.0890529904252413E29
    .end array-data

    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    :array_b
    .array-data 8
        -0x33c43644f51a0bf6L    # -1.7442816763402023E59
        0x4e43fe0ce3427c70L    # 1.0779872209312472E69
        -0x5db2437ea4974d48L
        -0x577c9d72c4fd4331L
        0xe059231d4fe9748L    # 4.043758658079452E-241
    .end array-data

    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    :array_c
    .array-data 8
        0x5124aebea1a71fe4L    # 7.847546182136468E82
        -0x4ce6fb7dd48a13c8L    # -1.5203611027222688E-62
        -0x7088d4c7cb131657L    # -3.643404727507098E-234
        0x41403e702e782c73L    # 2129120.363042408
    .end array-data

    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    :array_d
    .array-data 8
        -0x513b6fcf2a93dfb9L    # -2.117009771982291E-83
        0x711afbc1c6126e32L    # 6.8636272696637755E236
        -0x338d7d1dc97a2bb4L    # -1.8591534217738622E60
        -0x21474a6e0cbd9a55L    # -1.9746839346079982E148
        -0x2bfc4599249acfe2L    # -5.267379267281251E96
        0x4b6984df6b860515L    # 1.9553902997180136E55
        -0x3f95f292a7cb5c0dL    # -208.41959772378286
    .end array-data

    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    :array_e
    .array-data 8
        0x16f12688ce2606fL    # 9.06196284933889E-302
        -0x5141f4c7b88fccb0L    # -1.5465233226553373E-83
        -0x4bc69deb9124fd6fL    # -4.0437649974970135E-57
        -0x1653e52f456bef3aL    # -1.0756396736598034E201
        -0x58ac18cc8201c345L
        -0x69a2f41b52ad2370L
    .end array-data
.end method

.method public onStart()V
    .locals 9

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->requireDialog()Landroid/app/Dialog;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-boolean v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->fullscreen:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->enableEdgeToEdgeIfNeeded(Landroid/view/Window;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, -0x2

    .line 30
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sget v2, Lcom/google/android/material/R$dimen;->mtrl_calendar_dialog_background_inset:I

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    new-instance v1, Landroid/graphics/Rect;

    .line 44
    .line 45
    invoke-direct {v1, v8, v8, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    .line 49
    .line 50
    iget-object v4, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 51
    .line 52
    move-object v3, v2

    .line 53
    move v5, v8

    .line 54
    move v6, v8

    .line 55
    move v7, v8

    .line 56
    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-instance v2, Lcom/google/android/material/dialog/InsetDialogOnTouchListener;

    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->requireDialog()Landroid/app/Dialog;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-direct {v2, v3, v1}, Lcom/google/android/material/dialog/InsetDialogOnTouchListener;-><init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->startPickerFragment()V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->pickerFragment:Lcom/google/android/material/datepicker/PickerFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/PickerFragment;->clearOnSelectionChangedListeners()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public removeOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onCancelListeners:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public removeOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onDismissListeners:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public removeOnNegativeButtonClickListener(Landroid/view/View$OnClickListener;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onNegativeButtonClickListeners:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public removeOnPositiveButtonClickListener(Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener<",
            "-TS;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->onPositiveButtonClickListeners:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public updateHeader(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerSelectionText:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getHeaderContentDescription()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->headerSelectionText:Landroid/widget/TextView;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
