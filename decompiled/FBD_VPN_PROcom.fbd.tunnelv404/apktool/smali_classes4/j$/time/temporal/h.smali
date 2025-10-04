.class final enum Lj$/time/temporal/h;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/t;


# static fields
.field public static final enum QUARTER_YEARS:Lj$/time/temporal/h;

.field public static final enum WEEK_BASED_YEARS:Lj$/time/temporal/h;

.field private static final synthetic b:[Lj$/time/temporal/h;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 659
    new-instance v0, Lj$/time/temporal/h;

    sget-object v1, Lj$/time/Duration;->ZERO:Lj$/time/Duration;

    const/4 v1, 0x0

    const-string v2, "WeekBasedYears"

    const-string v3, "WEEK_BASED_YEARS"

    invoke-direct {v0, v3, v1, v2}, Lj$/time/temporal/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lj$/time/temporal/h;->WEEK_BASED_YEARS:Lj$/time/temporal/h;

    .line 663
    new-instance v2, Lj$/time/temporal/h;

    const/4 v3, 0x1

    const-string v4, "QuarterYears"

    const-string v5, "QUARTER_YEARS"

    invoke-direct {v2, v5, v3, v4}, Lj$/time/temporal/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lj$/time/temporal/h;->QUARTER_YEARS:Lj$/time/temporal/h;

    const/4 v4, 0x2

    .line 654
    new-array v4, v4, [Lj$/time/temporal/h;

    aput-object v0, v4, v1

    aput-object v2, v4, v3

    sput-object v4, Lj$/time/temporal/h;->b:[Lj$/time/temporal/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 668
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 669
    iput-object p3, p0, Lj$/time/temporal/h;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/temporal/h;
    .locals 1

    .line 654
    const-class v0, Lj$/time/temporal/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/temporal/h;

    return-object p0
.end method

.method public static values()[Lj$/time/temporal/h;
    .locals 1

    .line 654
    sget-object v0, Lj$/time/temporal/h;->b:[Lj$/time/temporal/h;

    invoke-virtual {v0}, [Lj$/time/temporal/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/temporal/h;

    return-object v0
.end method


# virtual methods
.method public final j(Lj$/time/temporal/l;J)Lj$/time/temporal/l;
    .locals 5

    .line 701
    sget-object v0, Lj$/time/temporal/b;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x4

    .line 706
    div-long v2, p2, v0

    sget-object v4, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Lj$/time/temporal/l;->e(JLj$/time/temporal/t;)Lj$/time/temporal/l;

    move-result-object p1

    rem-long/2addr p2, v0

    const-wide/16 v0, 0x3

    mul-long p2, p2, v0

    sget-object v0, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    .line 707
    invoke-interface {p1, p2, p3, v0}, Lj$/time/temporal/l;->e(JLj$/time/temporal/t;)Lj$/time/temporal/l;

    move-result-object p1

    return-object p1

    .line 709
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unreachable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 703
    :cond_1
    sget-object v0, Lj$/time/temporal/i;->c:Lj$/time/temporal/q;

    .line 704
    invoke-interface {p1, v0}, Lj$/time/temporal/n;->k(Lj$/time/temporal/q;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2, p2, p3}, Lj$/com/android/tools/r8/a;->e(JJ)J

    move-result-wide p2

    .line 703
    invoke-interface {p1, p2, p3, v0}, Lj$/time/temporal/l;->d(JLj$/time/temporal/q;)Lj$/time/temporal/l;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 731
    iget-object v0, p0, Lj$/time/temporal/h;->a:Ljava/lang/String;

    return-object v0
.end method
