.class public final enum Lj$/time/temporal/a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/q;


# static fields
.field public static final enum ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/a;

.field public static final enum ALIGNED_DAY_OF_WEEK_IN_YEAR:Lj$/time/temporal/a;

.field public static final enum ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/a;

.field public static final enum ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/a;

.field public static final enum AMPM_OF_DAY:Lj$/time/temporal/a;

.field public static final enum CLOCK_HOUR_OF_AMPM:Lj$/time/temporal/a;

.field public static final enum CLOCK_HOUR_OF_DAY:Lj$/time/temporal/a;

.field public static final enum DAY_OF_MONTH:Lj$/time/temporal/a;

.field public static final enum DAY_OF_WEEK:Lj$/time/temporal/a;

.field public static final enum DAY_OF_YEAR:Lj$/time/temporal/a;

.field public static final enum EPOCH_DAY:Lj$/time/temporal/a;

.field public static final enum ERA:Lj$/time/temporal/a;

.field public static final enum HOUR_OF_AMPM:Lj$/time/temporal/a;

.field public static final enum HOUR_OF_DAY:Lj$/time/temporal/a;

.field public static final enum INSTANT_SECONDS:Lj$/time/temporal/a;

.field public static final enum MICRO_OF_DAY:Lj$/time/temporal/a;

.field public static final enum MICRO_OF_SECOND:Lj$/time/temporal/a;

.field public static final enum MILLI_OF_DAY:Lj$/time/temporal/a;

.field public static final enum MILLI_OF_SECOND:Lj$/time/temporal/a;

.field public static final enum MINUTE_OF_DAY:Lj$/time/temporal/a;

.field public static final enum MINUTE_OF_HOUR:Lj$/time/temporal/a;

.field public static final enum MONTH_OF_YEAR:Lj$/time/temporal/a;

.field public static final enum NANO_OF_DAY:Lj$/time/temporal/a;

.field public static final enum NANO_OF_SECOND:Lj$/time/temporal/a;

.field public static final enum OFFSET_SECONDS:Lj$/time/temporal/a;

.field public static final enum PROLEPTIC_MONTH:Lj$/time/temporal/a;

.field public static final enum SECOND_OF_DAY:Lj$/time/temporal/a;

.field public static final enum SECOND_OF_MINUTE:Lj$/time/temporal/a;

.field public static final enum YEAR:Lj$/time/temporal/a;

.field public static final enum YEAR_OF_ERA:Lj$/time/temporal/a;

.field private static final synthetic c:[Lj$/time/temporal/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lj$/time/temporal/v;


# direct methods
.method static constructor <clinit>()V
    .locals 58

    .line 120
    new-instance v8, Lj$/time/temporal/a;

    sget-object v9, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    const-wide/16 v9, 0x0

    const-wide/32 v11, 0x3b9ac9ff

    invoke-static {v9, v10, v11, v12}, Lj$/time/temporal/v;->j(JJ)Lj$/time/temporal/v;

    move-result-object v13

    const/4 v14, 0x0

    const-string v15, "NanoOfSecond"

    const-string v0, "NANO_OF_SECOND"

    invoke-direct {v8, v0, v14, v15, v13}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/v;)V

    sput-object v8, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    .line 136
    new-instance v0, Lj$/time/temporal/a;

    const-wide v14, 0x4e94914effffL

    invoke-static {v9, v10, v14, v15}, Lj$/time/temporal/v;->j(JJ)Lj$/time/temporal/v;

    move-result-object v14

    const/4 v15, 0x1

    const-string v13, "NanoOfDay"

    const-string v1, "NANO_OF_DAY"

    invoke-direct {v0, v1, v15, v13, v14}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/v;)V

    sput-object v0, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    .line 156
    new-instance v1, Lj$/time/temporal/a;

    const-wide/32 v13, 0xf423f

    invoke-static {v9, v10, v13, v14}, Lj$/time/temporal/v;->j(JJ)Lj$/time/temporal/v;

    move-result-object v13

    const/4 v14, 0x2

    const-string v15, "MicroOfSecond"

    const-string v2, "MICRO_OF_SECOND"

    invoke-direct {v1, v2, v14, v15, v13}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/v;)V

    sput-object v1, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    .line 175
    new-instance v2, Lj$/time/temporal/a;

    const-wide v14, 0x141dd75fffL

    invoke-static {v9, v10, v14, v15}, Lj$/time/temporal/v;->j(JJ)Lj$/time/temporal/v;

    move-result-object v14

    const/4 v15, 0x3

    const-string v13, "MicroOfDay"

    const-string v11, "MICRO_OF_DAY"

    invoke-direct {v2, v11, v15, v13, v14}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/v;)V

    sput-object v2, Lj$/time/temporal/a;->MICRO_OF_DAY:Lj$/time/temporal/a;

    .line 195
    new-instance v11, Lj$/time/temporal/a;

    const-wide/16 v12, 0x3e7

    invoke-static {v9, v10, v12, v13}, Lj$/time/temporal/v;->j(JJ)Lj$/time/temporal/v;

    move-result-object v12

    const/4 v13, 0x4

    const-string v14, "MilliOfSecond"

    const-string v15, "MILLI_OF_SECOND"

    invoke-direct {v11, v15, v13, v14, v12}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/v;)V

    sput-object v11, Lj$/time/temporal/a;->MILLI_OF_SECOND:Lj$/time/temporal/a;

    .line 214
    new-instance v12, Lj$/time/temporal/a;

    const-wide/32 v14, 0x5265bff

    invoke-static {v9, v10, v14, v15}, Lj$/time/temporal/v;->j(JJ)Lj$/time/temporal/v;

    move-result-object v14

    const/4 v15, 0x5

    const-string v13, "MilliOfDay"

    const-string v3, "MILLI_OF_DAY"

    invoke-direct {v12, v3, v15, v13, v14}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/v;)V

    sput-object v12, Lj$/time/temporal/a;->MILLI_OF_DAY:Lj$/time/temporal/a;

    .line 224
    new-instance v3, Lj$/time/temporal/a;

    const-wide/16 v13, 0x3b

    invoke-static {v9, v10, v13, v14}, Lj$/time/temporal/v;->j(JJ)Lj$/time/temporal/v;

    move-result-object v22

    const-string v21, "SecondOfMinute"

    const/16 v23, 0x0

    const-string v19, "SECOND_OF_MINUTE"

    const/16 v20, 0x6

    move-object/from16 v18, v3

    invoke-direct/range {v18 .. v23}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/v;I)V

    sput-object v3, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    .line 236
    new-instance v15, Lj$/time/temporal/a;

    const-wide/32 v4, 0x1517f

    invoke-static {v9, v10, v4, v5}, Lj$/time/temporal/v;->j(JJ)Lj$/time/temporal/v;

    move-result-object v4

    const/4 v5, 0x7

    const-string v6, "SecondOfDay"

    const-string v7, "SECOND_OF_DAY"

    invoke-direct {v15, v7, v5, v6, v4}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/v;)V

    sput-object v15, Lj$/time/temporal/a;->SECOND_OF_DAY:Lj$/time/temporal/a;

    .line 246
    new-instance v4, Lj$/time/temporal/a;

    invoke-static {v9, v10, v13, v14}, Lj$/time/temporal/v;->j(JJ)Lj$/time/temporal/v;

    move-result-object v27

    const-string v26, "MinuteOfHour"

    const/16 v28, 0x0

    const-string v24, "MINUTE_OF_HOUR"

    const/16 v25, 0x8

    move-object/from16 v23, v4

    invoke-direct/range {v23 .. v28}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/v;I)V

    sput-object v4, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    .line 257
    new-instance v6, Lj$/time/temporal/a;

    const-wide/16 v13, 0x59f

    invoke-static {v9, v10, v13, v14}, Lj$/time/temporal/v;->j(JJ)Lj$/time/temporal/v;

    move-result-object v7

    const/16 v13, 0x9

    const-string v14, "MinuteOfDay"

    const-string v5, "MINUTE_OF_DAY"

    invoke-direct {v6, v5, v13, v14, v7}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/v;)V

    sput-object v6, Lj$/time/temporal/a;->MINUTE_OF_DAY:Lj$/time/temporal/a;

    .line 273
    new-instance v5, Lj$/time/temporal/a;

    const-wide/16 v13, 0xb

    invoke-static {v9, v10, v13, v14}, Lj$/time/temporal/v;->j(JJ)Lj$/time/temporal/v;

    move-result-object v13

    const/16 v14, 0xa

    const-string v7, "HourOfAmPm"

    const-string v9, "HOUR_OF_AMPM"

    invoke-direct {v5, v9, v14, v7, v13}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/v;)V

    sput-object v5, Lj$/time/temporal/a;->HOUR_OF_AMPM:Lj$/time/temporal/a;

    .line 289
    new-instance v7, Lj$/time/temporal/a;

    const-wide/16 v9, 0x1

    move-object v13, v15

    const-wide/16 v14, 0xc

    move-object/from16 v28, v5

    invoke-static {v9, v10, v14, v15}, Lj$/time/temporal/v;->j(JJ)Lj$/time/temporal/v;

    move-result-object v5

    const/16 v14, 0xb

    const-string v15, "ClockHourOfAmPm"

    const-string v9, "CLOCK_HOUR_OF_AMPM"

    invoke-direct {v7, v9, v14, v15, v5}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/v;)V

    sput-object v7, Lj$/time/temporal/a;->CLOCK_HOUR_OF_AMPM:Lj$/time/temporal/a;

    .line 306
    new-instance v5, Lj$/time/temporal/a;

    const-wide/16 v9, 0x17

    const-wide/16 v14, 0x0

    invoke-static {v14, v15, v9, v10}, Lj$/time/temporal/v;->j(JJ)Lj$/time/temporal/v;

    move-result-object v35

    const-string v34, "HourOfDay"

    const/16 v36, 0x0

    const-string v32, "HOUR_OF_DAY"

    const/16 v33, 0xc

    move-object/from16 v31, v5

    invoke-direct/range {v31 .. v36}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/v;I)V

    sput-object v5, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    .line 322
    new-instance v9, Lj$/time/temporal/a;

    const-wide/16 v14, 0x18

    move-object v10, v6

    const-wide/16 v5, 0x1

    invoke-static {v5, v6, v14, v15}, Lj$/time/temporal/v;->j(JJ)Lj$/time/temporal/v;

    move-result-object v14

    const/16 v15, 0xd

    const-string v5, "ClockHourOfDay"

    const-string v6, "CLOCK_HOUR_OF_DAY"

    invoke-direct {v9, v6, v15, v5, v14}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/v;)V

    sput-object v9, Lj$/time/temporal/a;->CLOCK_HOUR_OF_DAY:Lj$/time/temporal/a;

    .line 335
    new-instance v5, Lj$/time/temporal/a;

    move-object/from16 v32, v7

    const-wide/16 v6, 0x1

    const-wide/16 v14, 0x0

    invoke-static {v14, v15, v6, v7}, Lj$/time/temporal/v;->j(JJ)Lj$/time/temporal/v;

    move-result-object v41

    const-string v40, "AmPmOfDay"

    const/16 v42, 0x0

    const-string v38, "AMPM_OF_DAY"

    const/16 v39, 0xe

    move-object/from16 v37, v5

    invoke-direct/range {v37 .. v42}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/v;I)V

    sput-object v5, Lj$/time/temporal/a;->AMPM_OF_DAY:Lj$/time/temporal/a;

    .line 351
    new-instance v6, Lj$/time/temporal/a;

    const-wide/16 v14, 0x7

    move-object v7, v9

    move-object/from16 v34, v10

    const-wide/16 v9, 0x1

    invoke-static {v9, v10, v14, v15}, Lj$/time/temporal/v;->j(JJ)Lj$/time/temporal/v;

    move-result-object v47

    const-string v46, "DayOfWeek"

    const/16 v48, 0x0

    const-string v44, "DAY_OF_WEEK"

    const/16 v45, 0xf

    move-object/from16 v43, v6

    invoke-direct/range {v43 .. v48}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/v;I)V

    sput-object v6, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    .line 369
    new-instance v9, Lj$/time/temporal/a;

    move-object/from16 v36, v5

    move-object/from16 v35, v6

    const-wide/16 v5, 0x1

    invoke-static {v5, v6, v14, v15}, Lj$/time/temporal/v;->j(JJ)Lj$/time/temporal/v;

    move-result-object v10

    const/16 v5, 0x10

    const-string v6, "AlignedDayOfWeekInMonth"

    const-string v14, "ALIGNED_DAY_OF_WEEK_IN_MONTH"

    invoke-direct {v9, v14, v5, v6, v10}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/v;)V

    sput-object v9, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/a;

    .line 387
    new-instance v6, Lj$/time/temporal/a;

    move-object/from16 v37, v6

    const-wide/16 v5, 0x7

    const-wide/16 v14, 0x1

    invoke-static {v14, v15, v5, v6}, Lj$/time/temporal/v;->j(JJ)Lj$/time/temporal/v;

    move-result-object v5

    const/16 v6, 0x11

    const-string v14, "AlignedDayOfWeekInYear"

    const-string v15, "ALIGNED_DAY_OF_WEEK_IN_YEAR"

    move-object/from16 v10, v37

    invoke-direct {v10, v15, v6, v14, v5}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/v;)V

    sput-object v10, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lj$/time/temporal/a;

    .line 400
    new-instance v5, Lj$/time/temporal/a;

    const-wide/16 v14, 0x1c

    move-object/from16 v37, v7

    const-wide/16 v6, 0x1f

    .line 147
    invoke-static {v14, v15, v6, v7}, Lj$/time/temporal/v;->k(JJ)Lj$/time/temporal/v;

    move-result-object v43

    .line 400
    const-string v42, "DayOfMonth"

    const/16 v44, 0x0

    const-string v40, "DAY_OF_MONTH"

    const/16 v41, 0x12

    move-object/from16 v39, v5

    invoke-direct/range {v39 .. v44}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/v;I)V

    sput-object v5, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    .line 418
    new-instance v6, Lj$/time/temporal/a;

    const-wide/16 v14, 0x16d

    move-object v7, v9

    move-object/from16 v39, v10

    const-wide/16 v9, 0x16e

    .line 147
    invoke-static {v14, v15, v9, v10}, Lj$/time/temporal/v;->k(JJ)Lj$/time/temporal/v;

    move-result-object v9

    .line 418
    const-string v10, "DayOfYear"

    const-string v14, "DAY_OF_YEAR"

    const/16 v15, 0x13

    invoke-direct {v6, v14, v15, v10, v9}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/v;)V

    sput-object v6, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    .line 431
    new-instance v9, Lj$/time/temporal/a;

    const-wide v14, -0x550a313cdaL

    move-object v10, v5

    move-object/from16 v40, v6

    const-wide v5, 0x550a1b48f7L

    invoke-static {v14, v15, v5, v6}, Lj$/time/temporal/v;->j(JJ)Lj$/time/temporal/v;

    move-result-object v5

    const-string v6, "EpochDay"

    const-string v14, "EPOCH_DAY"

    const/16 v15, 0x14

    invoke-direct {v9, v14, v15, v6, v5}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/v;)V

    sput-object v9, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    .line 447
    new-instance v5, Lj$/time/temporal/a;

    const-wide/16 v14, 0x4

    move-object v6, v9

    move-object/from16 v41, v10

    const-wide/16 v9, 0x5

    .line 147
    invoke-static {v14, v15, v9, v10}, Lj$/time/temporal/v;->k(JJ)Lj$/time/temporal/v;

    move-result-object v9

    .line 447
    const-string v10, "AlignedWeekOfMonth"

    const-string v14, "ALIGNED_WEEK_OF_MONTH"

    const/16 v15, 0x15

    invoke-direct {v5, v14, v15, v10, v9}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/v;)V

    sput-object v5, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/a;

    .line 463
    new-instance v9, Lj$/time/temporal/a;

    const-wide/16 v14, 0x35

    move-object v10, v5

    move-object/from16 v42, v6

    const-wide/16 v5, 0x1

    invoke-static {v5, v6, v14, v15}, Lj$/time/temporal/v;->j(JJ)Lj$/time/temporal/v;

    move-result-object v14

    const-string v15, "AlignedWeekOfYear"

    const-string v5, "ALIGNED_WEEK_OF_YEAR"

    const/16 v6, 0x16

    invoke-direct {v9, v5, v6, v15, v14}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/v;)V

    sput-object v9, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/a;

    .line 474
    new-instance v5, Lj$/time/temporal/a;

    move-object v6, v9

    move-object/from16 v29, v10

    const-wide/16 v9, 0xc

    const-wide/16 v14, 0x1

    invoke-static {v14, v15, v9, v10}, Lj$/time/temporal/v;->j(JJ)Lj$/time/temporal/v;

    move-result-object v50

    const-string v49, "MonthOfYear"

    const/16 v51, 0x0

    const-string v47, "MONTH_OF_YEAR"

    const/16 v48, 0x17

    move-object/from16 v46, v5

    invoke-direct/range {v46 .. v51}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/v;I)V

    sput-object v5, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    .line 494
    new-instance v9, Lj$/time/temporal/a;

    const-wide v14, -0x2cb4177f4L

    move-object v10, v5

    move-object/from16 v30, v6

    const-wide v5, 0x2cb4177ffL

    invoke-static {v14, v15, v5, v6}, Lj$/time/temporal/v;->j(JJ)Lj$/time/temporal/v;

    move-result-object v5

    const-string v6, "ProlepticMonth"

    const-string v14, "PROLEPTIC_MONTH"

    const/16 v15, 0x18

    invoke-direct {v9, v14, v15, v6, v5}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/v;)V

    sput-object v9, Lj$/time/temporal/a;->PROLEPTIC_MONTH:Lj$/time/temporal/a;

    .line 529
    new-instance v5, Lj$/time/temporal/a;

    const-wide/32 v14, 0x3b9aca00

    move-object v6, v9

    move-object/from16 v43, v10

    const-wide/32 v9, 0x3b9ac9ff

    .line 147
    invoke-static {v9, v10, v14, v15}, Lj$/time/temporal/v;->k(JJ)Lj$/time/temporal/v;

    move-result-object v14

    .line 529
    const-string v15, "YearOfEra"

    const-string v9, "YEAR_OF_ERA"

    const/16 v10, 0x19

    invoke-direct {v5, v9, v10, v15, v14}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/v;)V

    sput-object v5, Lj$/time/temporal/a;->YEAR_OF_ERA:Lj$/time/temporal/a;

    .line 553
    new-instance v9, Lj$/time/temporal/a;

    const-wide/32 v14, -0x3b9ac9ff

    move-object v10, v5

    move-object/from16 v44, v6

    const-wide/32 v5, 0x3b9ac9ff

    invoke-static {v14, v15, v5, v6}, Lj$/time/temporal/v;->j(JJ)Lj$/time/temporal/v;

    move-result-object v50

    const-string v49, "Year"

    const/16 v51, 0x0

    const-string v47, "YEAR"

    const/16 v48, 0x1a

    move-object/from16 v46, v9

    invoke-direct/range {v46 .. v51}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/v;I)V

    sput-object v9, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    .line 570
    new-instance v5, Lj$/time/temporal/a;

    move-object v6, v9

    move-object/from16 v16, v10

    const-wide/16 v9, 0x1

    const-wide/16 v14, 0x0

    invoke-static {v14, v15, v9, v10}, Lj$/time/temporal/v;->j(JJ)Lj$/time/temporal/v;

    move-result-object v56

    const-string v55, "Era"

    const/16 v57, 0x0

    const-string v53, "ERA"

    const/16 v54, 0x1b

    move-object/from16 v52, v5

    invoke-direct/range {v52 .. v57}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/v;I)V

    sput-object v5, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    .line 585
    new-instance v9, Lj$/time/temporal/a;

    const-wide/high16 v14, -0x8000000000000000L

    move-object v10, v5

    move-object/from16 v17, v6

    const-wide v5, 0x7fffffffffffffffL

    invoke-static {v14, v15, v5, v6}, Lj$/time/temporal/v;->j(JJ)Lj$/time/temporal/v;

    move-result-object v5

    const-string v6, "InstantSeconds"

    const-string v14, "INSTANT_SECONDS"

    const/16 v15, 0x1c

    invoke-direct {v9, v14, v15, v6, v5}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/v;)V

    sput-object v9, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    .line 599
    new-instance v5, Lj$/time/temporal/a;

    const-wide/32 v14, -0xfd20

    move-object v6, v9

    move-object/from16 v25, v10

    const-wide/32 v9, 0xfd20

    invoke-static {v14, v15, v9, v10}, Lj$/time/temporal/v;->j(JJ)Lj$/time/temporal/v;

    move-result-object v9

    const-string v10, "OffsetSeconds"

    const-string v14, "OFFSET_SECONDS"

    const/16 v15, 0x1d

    invoke-direct {v5, v14, v15, v10, v9}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/v;)V

    sput-object v5, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    const/16 v9, 0x1e

    .line 98
    new-array v9, v9, [Lj$/time/temporal/a;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    const/4 v8, 0x1

    aput-object v0, v9, v8

    const/4 v0, 0x2

    aput-object v1, v9, v0

    const/4 v0, 0x3

    aput-object v2, v9, v0

    const/4 v0, 0x4

    aput-object v11, v9, v0

    const/4 v0, 0x5

    aput-object v12, v9, v0

    const/4 v0, 0x6

    aput-object v3, v9, v0

    const/4 v0, 0x7

    aput-object v13, v9, v0

    const/16 v0, 0x8

    aput-object v4, v9, v0

    const/16 v0, 0x9

    aput-object v34, v9, v0

    const/16 v0, 0xa

    aput-object v28, v9, v0

    const/16 v0, 0xb

    aput-object v32, v9, v0

    const/16 v0, 0xc

    aput-object v31, v9, v0

    const/16 v0, 0xd

    aput-object v37, v9, v0

    const/16 v0, 0xe

    aput-object v36, v9, v0

    const/16 v0, 0xf

    aput-object v35, v9, v0

    const/16 v0, 0x10

    aput-object v7, v9, v0

    const/16 v0, 0x11

    aput-object v39, v9, v0

    const/16 v0, 0x12

    aput-object v41, v9, v0

    const/16 v0, 0x13

    aput-object v40, v9, v0

    const/16 v0, 0x14

    aput-object v42, v9, v0

    const/16 v0, 0x15

    aput-object v29, v9, v0

    const/16 v0, 0x16

    aput-object v30, v9, v0

    const/16 v0, 0x17

    aput-object v43, v9, v0

    const/16 v0, 0x18

    aput-object v44, v9, v0

    const/16 v0, 0x19

    aput-object v16, v9, v0

    const/16 v0, 0x1a

    aput-object v17, v9, v0

    const/16 v0, 0x1b

    aput-object v25, v9, v0

    const/16 v0, 0x1c

    aput-object v6, v9, v0

    const/16 v0, 0x1d

    aput-object v5, v9, v0

    sput-object v9, Lj$/time/temporal/a;->c:[Lj$/time/temporal/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/v;)V
    .locals 0

    .line 607
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 608
    iput-object p3, p0, Lj$/time/temporal/a;->a:Ljava/lang/String;

    .line 611
    iput-object p4, p0, Lj$/time/temporal/a;->b:Lj$/time/temporal/v;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/v;I)V
    .locals 0

    .line 616
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 617
    iput-object p3, p0, Lj$/time/temporal/a;->a:Ljava/lang/String;

    .line 620
    iput-object p4, p0, Lj$/time/temporal/a;->b:Lj$/time/temporal/v;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/temporal/a;
    .locals 1

    .line 98
    const-class v0, Lj$/time/temporal/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/temporal/a;

    return-object p0
.end method

.method public static values()[Lj$/time/temporal/a;
    .locals 1

    .line 98
    sget-object v0, Lj$/time/temporal/a;->c:[Lj$/time/temporal/a;

    invoke-virtual {v0}, [Lj$/time/temporal/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/temporal/a;

    return-object v0
.end method


# virtual methods
.method public final C(J)V
    .locals 1

    .line 713
    iget-object v0, p0, Lj$/time/temporal/a;->b:Lj$/time/temporal/v;

    invoke-virtual {v0, p1, p2, p0}, Lj$/time/temporal/v;->b(JLj$/time/temporal/q;)V

    return-void
.end method

.method public final D()Z
    .locals 2

    .line 694
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j()Lj$/time/temporal/v;
    .locals 1

    .line 669
    iget-object v0, p0, Lj$/time/temporal/a;->b:Lj$/time/temporal/v;

    return-object v0
.end method

.method public final k(Lj$/time/temporal/n;)J
    .locals 2

    .line 748
    invoke-interface {p1, p0}, Lj$/time/temporal/n;->s(Lj$/time/temporal/q;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final m(Lj$/time/temporal/n;)Z
    .locals 0

    .line 738
    invoke-interface {p1, p0}, Lj$/time/temporal/n;->f(Lj$/time/temporal/q;)Z

    move-result p1

    return p1
.end method

.method public final n(Lj$/time/temporal/l;J)Lj$/time/temporal/l;
    .locals 0

    .line 754
    invoke-interface {p1, p2, p3, p0}, Lj$/time/temporal/l;->d(JLj$/time/temporal/q;)Lj$/time/temporal/l;

    move-result-object p1

    return-object p1
.end method

.method public final s(Lj$/time/temporal/n;)Lj$/time/temporal/v;
    .locals 0

    .line 743
    invoke-interface {p1, p0}, Lj$/time/temporal/n;->n(Lj$/time/temporal/q;)Lj$/time/temporal/v;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 760
    iget-object v0, p0, Lj$/time/temporal/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final v()Z
    .locals 2

    .line 682
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final w(J)I
    .locals 1

    .line 732
    iget-object v0, p0, Lj$/time/temporal/a;->b:Lj$/time/temporal/v;

    invoke-virtual {v0, p1, p2, p0}, Lj$/time/temporal/v;->a(JLj$/time/temporal/q;)I

    move-result p1

    return p1
.end method
