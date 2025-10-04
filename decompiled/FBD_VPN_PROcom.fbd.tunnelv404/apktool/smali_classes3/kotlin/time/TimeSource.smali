.class public interface abstract Lkotlin/time/TimeSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/TimeSource$Companion;,
        Lkotlin/time/TimeSource$Monotonic;,
        Lkotlin/time/TimeSource$WithComparableMarks;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008g\u0018\u0000 \u00062\u00020\u0001:\u0003\u0004\u0005\u0006J\u0008\u0010\u0002\u001a\u00020\u0003H&\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlin/time/TimeSource;",
        "",
        "markNow",
        "Lkotlin/time/TimeMark;",
        "WithComparableMarks",
        "Monotonic",
        "Companion",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/SinceKotlin;
    version = "1.9"
.end annotation

.annotation build Lkotlin/WasExperimental;
    markerClass = {
        Lkotlin/time/ExperimentalTime;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/time/TimeSource$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlin/time/TimeSource$Companion;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlin/time/TimeSource$Companion;

    sput-object v0, Lkotlin/time/TimeSource;->Companion:Lkotlin/time/TimeSource$Companion;

    return-void
.end method


# virtual methods
.method public abstract markNow()Lkotlin/time/TimeMark;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
