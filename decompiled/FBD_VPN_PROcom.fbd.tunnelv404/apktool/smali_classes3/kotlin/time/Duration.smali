.class public final Lkotlin/time/Duration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/Duration$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lkotlin/time/Duration;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\u0006\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\'\u0008\u0087@\u0018\u0000 q2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001qB\u0011\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001a\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u00d6\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u0000H\u0086\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0005J\u0018\u0010\u0012\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0086\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0018\u0010\u0014\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0086\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0011J\u0018\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0006H\u0086\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0018\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0019H\u0086\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u001aJ\u0018\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0006H\u0086\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0017J\u0018\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0019H\u0086\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001aJ\u0018\u0010\u001c\u001a\u00020\u00192\u0006\u0010\n\u001a\u00020\u0000H\u0086\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0017\u0010#\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u001fH\u0000\u00a2\u0006\u0004\u0008!\u0010\"J\r\u0010&\u001a\u00020\u000b\u00a2\u0006\u0004\u0008$\u0010%J\r\u0010(\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\'\u0010%J\r\u0010*\u001a\u00020\u000b\u00a2\u0006\u0004\u0008)\u0010%J\r\u0010,\u001a\u00020\u000b\u00a2\u0006\u0004\u0008+\u0010%J\u0018\u0010/\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0000H\u0096\u0002\u00a2\u0006\u0004\u0008-\u0010.J\u009d\u0001\u0010<\u001a\u00028\u0000\"\u0004\u0008\u0000\u001002u\u00109\u001aq\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u00082\u0012\u0008\u00083\u0012\u0004\u0008\u0008(4\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u00082\u0012\u0008\u00083\u0012\u0004\u0008\u0008(5\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u00082\u0012\u0008\u00083\u0012\u0004\u0008\u0008(6\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u00082\u0012\u0008\u00083\u0012\u0004\u0008\u0008(7\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u00082\u0012\u0008\u00083\u0012\u0004\u0008\u0008(8\u0012\u0004\u0012\u00028\u000001H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0004\u0008:\u0010;J\u0088\u0001\u0010<\u001a\u00028\u0000\"\u0004\u0008\u0000\u001002`\u00109\u001a\\\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u00082\u0012\u0008\u00083\u0012\u0004\u0008\u0008(5\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u00082\u0012\u0008\u00083\u0012\u0004\u0008\u0008(6\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u00082\u0012\u0008\u00083\u0012\u0004\u0008\u0008(7\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u00082\u0012\u0008\u00083\u0012\u0004\u0008\u0008(8\u0012\u0004\u0012\u00028\u00000=H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0004\u0008:\u0010>Js\u0010<\u001a\u00028\u0000\"\u0004\u0008\u0000\u001002K\u00109\u001aG\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u00082\u0012\u0008\u00083\u0012\u0004\u0008\u0008(6\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u00082\u0012\u0008\u00083\u0012\u0004\u0008\u0008(7\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u00082\u0012\u0008\u00083\u0012\u0004\u0008\u0008(8\u0012\u0004\u0012\u00028\u00000?H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0004\u0008:\u0010@J^\u0010<\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010026\u00109\u001a2\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u00082\u0012\u0008\u00083\u0012\u0004\u0008\u0008(7\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u00082\u0012\u0008\u00083\u0012\u0004\u0008\u0008(8\u0012\u0004\u0012\u00028\u00000AH\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0004\u0008:\u0010BJ\u0015\u0010E\u001a\u00020\u00192\u0006\u0010 \u001a\u00020\u001f\u00a2\u0006\u0004\u0008C\u0010DJ\u0015\u0010G\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001f\u00a2\u0006\u0004\u0008F\u0010\"J\u0015\u0010J\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u001f\u00a2\u0006\u0004\u0008H\u0010IJ\u000f\u0010N\u001a\u00020KH\u0016\u00a2\u0006\u0004\u0008L\u0010MJ\u001f\u0010N\u001a\u00020K2\u0006\u0010 \u001a\u00020\u001f2\u0008\u0008\u0002\u0010O\u001a\u00020\u0006\u00a2\u0006\u0004\u0008L\u0010PJ\r\u0010R\u001a\u00020K\u00a2\u0006\u0004\u0008Q\u0010MR\u0011\u0010T\u001a\u00020\u00008F\u00a2\u0006\u0006\u001a\u0004\u0008S\u0010\u0005R\u001a\u0010Y\u001a\u00020\u00068@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008W\u0010X\u001a\u0004\u0008U\u0010VR\u001a\u0010\\\u001a\u00020\u00068@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008[\u0010X\u001a\u0004\u0008Z\u0010VR\u001a\u0010_\u001a\u00020\u00068@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008^\u0010X\u001a\u0004\u0008]\u0010VR\u001a\u0010b\u001a\u00020\u00068@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008a\u0010X\u001a\u0004\u0008`\u0010VR\u0011\u0010d\u001a\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008c\u0010\u0005R\u0011\u0010f\u001a\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008e\u0010\u0005R\u0011\u0010h\u001a\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008g\u0010\u0005R\u0011\u0010j\u001a\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008i\u0010\u0005R\u0011\u0010l\u001a\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008k\u0010\u0005R\u0011\u0010n\u001a\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008m\u0010\u0005R\u0011\u0010p\u001a\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008o\u0010\u0005\u0088\u0001\u0003\u0092\u0001\u00020\u0002\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006r"
    }
    d2 = {
        "Lkotlin/time/Duration;",
        "",
        "",
        "rawValue",
        "constructor-impl",
        "(J)J",
        "",
        "hashCode",
        "()I",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "unaryMinus-UwyO8pc",
        "unaryMinus",
        "plus-LRDsOJo",
        "(JJ)J",
        "plus",
        "minus-LRDsOJo",
        "minus",
        "scale",
        "times-UwyO8pc",
        "(JI)J",
        "times",
        "",
        "(JD)J",
        "div-UwyO8pc",
        "div",
        "div-LRDsOJo",
        "(JJ)D",
        "Lkotlin/time/DurationUnit;",
        "unit",
        "truncateTo-UwyO8pc$kotlin_stdlib",
        "(JLkotlin/time/DurationUnit;)J",
        "truncateTo",
        "isNegative-impl",
        "(J)Z",
        "isNegative",
        "isPositive-impl",
        "isPositive",
        "isInfinite-impl",
        "isInfinite",
        "isFinite-impl",
        "isFinite",
        "compareTo-LRDsOJo",
        "(JJ)I",
        "compareTo",
        "T",
        "Lkotlin/Function5;",
        "Lkotlin/ParameterName;",
        "name",
        "days",
        "hours",
        "minutes",
        "seconds",
        "nanoseconds",
        "action",
        "toComponents-impl",
        "(JLkotlin/jvm/functions/Function5;)Ljava/lang/Object;",
        "toComponents",
        "Lkotlin/Function4;",
        "(JLkotlin/jvm/functions/Function4;)Ljava/lang/Object;",
        "Lkotlin/Function3;",
        "(JLkotlin/jvm/functions/Function3;)Ljava/lang/Object;",
        "Lkotlin/Function2;",
        "(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "toDouble-impl",
        "(JLkotlin/time/DurationUnit;)D",
        "toDouble",
        "toLong-impl",
        "toLong",
        "toInt-impl",
        "(JLkotlin/time/DurationUnit;)I",
        "toInt",
        "",
        "toString-impl",
        "(J)Ljava/lang/String;",
        "toString",
        "decimals",
        "(JLkotlin/time/DurationUnit;I)Ljava/lang/String;",
        "toIsoString-impl",
        "toIsoString",
        "getAbsoluteValue-UwyO8pc",
        "absoluteValue",
        "getHoursComponent-impl",
        "(J)I",
        "getHoursComponent$annotations",
        "()V",
        "hoursComponent",
        "getMinutesComponent-impl",
        "getMinutesComponent$annotations",
        "minutesComponent",
        "getSecondsComponent-impl",
        "getSecondsComponent$annotations",
        "secondsComponent",
        "getNanosecondsComponent-impl",
        "getNanosecondsComponent$annotations",
        "nanosecondsComponent",
        "getInWholeDays-impl",
        "inWholeDays",
        "getInWholeHours-impl",
        "inWholeHours",
        "getInWholeMinutes-impl",
        "inWholeMinutes",
        "getInWholeSeconds-impl",
        "inWholeSeconds",
        "getInWholeMilliseconds-impl",
        "inWholeMilliseconds",
        "getInWholeMicroseconds-impl",
        "inWholeMicroseconds",
        "getInWholeNanoseconds-impl",
        "inWholeNanoseconds",
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
    version = "1.6"
.end annotation

.annotation build Lkotlin/WasExperimental;
    markerClass = {
        Lkotlin/time/ExperimentalTime;
    }
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/Duration\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1068:1\n38#1:1069\n38#1:1070\n38#1:1071\n38#1:1072\n38#1:1073\n501#1:1074\n518#1:1082\n170#2,6:1075\n1#3:1081\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/Duration\n*L\n39#1:1069\n40#1:1070\n275#1:1071\n295#1:1072\n479#1:1073\n728#1:1074\n819#1:1082\n770#1:1075,6\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/time/Duration$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:J

.field public static final 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:J

.field public static final 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:J


# instance fields
.field public final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/time/Duration$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lkotlin/time/Duration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/time/Duration;->constructor-impl(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    sput-wide v0, Lkotlin/time/Duration;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:J

    .line 16
    .line 17
    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    sput-wide v0, Lkotlin/time/Duration;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:J

    .line 27
    .line 28
    const-wide v0, -0x3fffffffffffffffL    # -2.0000000000000004

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    sput-wide v0, Lkotlin/time/Duration;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:J

    .line 38
    .line 39
    return-void
.end method

.method public synthetic constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lkotlin/time/Duration;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:J

    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic access$getINFINITE$cp()J
    .locals 2

    .line 1
    sget-wide v0, Lkotlin/time/Duration;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getNEG_INFINITE$cp()J
    .locals 2

    .line 1
    sget-wide v0, Lkotlin/time/Duration;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getZERO$cp()J
    .locals 2

    .line 1
    sget-wide v0, Lkotlin/time/Duration;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic box-impl(J)Lkotlin/time/Duration;
    .locals 1

    new-instance v0, Lkotlin/time/Duration;

    invoke-direct {v0, p0, p1}, Lkotlin/time/Duration;-><init>(J)V

    return-object v0
.end method

.method public static compareTo-LRDsOJo(JJ)I
    .locals 5

    xor-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    long-to-int v1, v0

    and-int/lit8 v0, v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    long-to-int v0, p0

    and-int/lit8 v0, v0, 0x1

    long-to-int p3, p2

    and-int/lit8 p2, p3, 0x1

    sub-int/2addr v0, p2

    .line 2
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isNegative-impl(J)Z

    move-result p0

    if-eqz p0, :cond_1

    neg-int v0, v0

    :cond_1
    return v0

    .line 3
    :cond_2
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static constructor-impl(J)J
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/time/DurationJvmKt;->getDurationAssertionsEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-static {p0, p1}, Lkotlin/time/Duration;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(J)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    shr-long v0, p0, v1

    .line 15
    .line 16
    const-wide v2, -0x3ffffffffffa14bfL    # -2.0000000001722644

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    cmp-long v4, v2, v0

    .line 22
    .line 23
    if-gtz v4, :cond_0

    .line 24
    .line 25
    const-wide v2, 0x3ffffffffffa14c0L    # 1.999999999913868

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    cmp-long v4, v0, v2

    .line 31
    .line 32
    if-gez v4, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 36
    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, " ns is out of nanoseconds range"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :cond_1
    shr-long v0, p0, v1

    .line 59
    .line 60
    const-wide v2, -0x3fffffffffffffffL    # -2.0000000000000004

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    cmp-long v4, v2, v0

    .line 66
    .line 67
    if-gtz v4, :cond_3

    .line 68
    .line 69
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 70
    .line 71
    cmp-long v4, v0, v2

    .line 72
    .line 73
    if-gez v4, :cond_3

    .line 74
    .line 75
    const-wide v2, -0x431bde82d7aL

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    cmp-long v4, v2, v0

    .line 81
    .line 82
    if-gtz v4, :cond_4

    .line 83
    .line 84
    const-wide v2, 0x431bde82d7bL

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    cmp-long v4, v0, v2

    .line 90
    .line 91
    if-ltz v4, :cond_2

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    .line 95
    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v0, " ms is denormalized"

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    .line 118
    .line 119
    new-instance p1, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v0, " ms is out of milliseconds range"

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    throw p0

    .line 140
    :cond_4
    :goto_0
    return-wide p0
.end method

.method public static final div-LRDsOJo(JJ)D
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(J)Lkotlin/time/DurationUnit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p2, p3}, Lkotlin/time/Duration;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(J)Lkotlin/time/DurationUnit;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, L둘딜됐땤땝돴땦돝땬돵뎽뒬뒀드땃돴따딐땄땬땣뎽뒨듨듰듟뒵땵땵딝딄됫둣딠딐뒋땬딅뎽듟뒵땬뒤됨땯든딽뒻딸돨딜땸돸둘뒐뒼됩돰땵뎬둬돠듨딸돶뎽돵됩뒼돶듸뎰됐뒼돛뒘뎨딸듸땟땧도들듐딝땹듼딝듌뒉뒘뎸뒹듟뎻땳딃듼듽돸딄땅둔둔듼듼듐뎻될딎돷둠딎둥땡돨딸뒈뒹뎡땹딃땋땍뒾듔돵땡땃땝;->maxOf(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lkotlin/time/DurationUnit;

    .line 14
    .line 15
    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(JLkotlin/time/DurationUnit;)D

    .line 16
    .line 17
    .line 18
    move-result-wide p0

    .line 19
    invoke-static {p2, p3, v0}, Lkotlin/time/Duration;->toDouble-impl(JLkotlin/time/DurationUnit;)D

    .line 20
    .line 21
    .line 22
    move-result-wide p2

    .line 23
    div-double/2addr p0, p2

    .line 24
    return-wide p0
.end method

.method public static final div-UwyO8pc(JD)J
    .locals 4

    .line 12
    invoke-static {p2, p3}, L딝뎻따될뎠둣땝땩돵둘뎬뎨따땀들딅듻뒀돛든땦땱딸됩됩뒋땐땩뎡딤땁뒉딐든땜뒷듸딝둘뒵땔땁뎸됨뎽딹뎹딸듬득땍딀땹땡듟따땮뒀돝됨땻듻둘딀듸딃뎬땀뒝돶둡땡땅듰뒐듨딠딄뒀뒬딸돳땠듰땬뒛돝땧땲땫뒀땬뒛땄돨딄땤땦뎽딀뒝돳땦둡땨돨둬땡땪땯땵땪둥돰딻딜뒼딌둡듌뒤뒉뒐뎬뒈딐땧뎠땋땩;->roundToInt(D)I

    move-result v0

    int-to-double v1, v0

    cmpg-double v3, v1, p2

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 13
    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->div-UwyO8pc(JI)J

    move-result-wide p0

    return-wide p0

    .line 14
    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(J)Lkotlin/time/DurationUnit;

    move-result-object v0

    .line 15
    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(JLkotlin/time/DurationUnit;)D

    move-result-wide p0

    div-double/2addr p0, p2

    .line 16
    invoke-static {p0, p1, v0}, Lkotlin/time/DurationKt;->toDuration(DLkotlin/time/DurationUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final div-UwyO8pc(JI)J
    .locals 6

    if-nez p2, :cond_2

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isPositive-impl(J)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-wide p0, Lkotlin/time/Duration;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:J

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isNegative-impl(J)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-wide p0, Lkotlin/time/Duration;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:J

    :goto_0
    return-wide p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Dividing zero duration by zero yields an undefined result."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_2
    invoke-static {p0, p1}, Lkotlin/time/Duration;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(J)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    shr-long/2addr p0, v1

    int-to-long v0, p2

    .line 5
    div-long/2addr p0, v0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->access$durationOfNanos(J)J

    move-result-wide p0

    return-wide p0

    .line 6
    :cond_3
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    invoke-static {p2}, L딝뎻따될뎠둣땝땩돵둘뎬뎨따땀들딅듻뒀돛든땦땱딸됩됩뒋땐땩뎡딤땁뒉딐든땜뒷듸딝둘뒵땔땁뎸됨뎽딹뎹딸듬득땍딀땹땡듟따땮뒀돝됨땻듻둘딀듸딃뎬땀뒝돶둡땡땅듰뒐듨딠딄뒀뒬딸돳땠듰땬뒛돝땧땲땫뒀땬뒛땄돨딄땤땦뎽딀뒝돳땦둡땨돨둬땡땪땯땵땪둥돰딻딜뒼딌둡듌뒤뒉뒐뎬뒈딐땧뎠땋땩;->getSign(I)I

    move-result p2

    invoke-static {p0, p1, p2}, Lkotlin/time/Duration;->times-UwyO8pc(JI)J

    move-result-wide p0

    return-wide p0

    :cond_4
    shr-long/2addr p0, v1

    int-to-long v0, p2

    .line 8
    div-long v2, p0, v0

    const-wide v4, -0x431bde82d7aL

    cmp-long p2, v4, v2

    if-gtz p2, :cond_5

    const-wide v4, 0x431bde82d7bL

    cmp-long p2, v2, v4

    if-gez p2, :cond_5

    mul-long v4, v2, v0

    sub-long/2addr p0, v4

    .line 9
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide p0

    div-long/2addr p0, v0

    .line 10
    invoke-static {v2, v3}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide v0

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfNanos(J)J

    move-result-wide p0

    return-wide p0

    .line 11
    :cond_5
    invoke-static {v2, v3}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static equals-impl(JLjava/lang/Object;)Z
    .locals 4

    instance-of v0, p2, Lkotlin/time/Duration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Lkotlin/time/Duration;

    invoke-virtual {p2}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v2

    cmp-long p2, p0, v2

    if-eqz p2, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(JJ)Z
    .locals 1

    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final getAbsoluteValue-UwyO8pc(J)J
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isNegative-impl(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    :cond_0
    return-wide p0
.end method

.method public static synthetic getHoursComponent$annotations()V
    .locals 0
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    return-void
.end method

.method public static final getHoursComponent-impl(J)I
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeHours-impl(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    const/16 v0, 0x18

    .line 14
    .line 15
    int-to-long v0, v0

    .line 16
    rem-long/2addr p0, v0

    .line 17
    long-to-int p0, p0

    .line 18
    :goto_0
    return p0
.end method

.method public static final getInWholeDays-impl(J)J
    .locals 1

    .line 1
    sget-object v0, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    .line 2
    .line 3
    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public static final getInWholeHours-impl(J)J
    .locals 1

    .line 1
    sget-object v0, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    .line 2
    .line 3
    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public static final getInWholeMicroseconds-impl(J)J
    .locals 1

    .line 1
    sget-object v0, Lkotlin/time/DurationUnit;->MICROSECONDS:Lkotlin/time/DurationUnit;

    .line 2
    .line 3
    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public static final getInWholeMilliseconds-impl(J)J
    .locals 2

    .line 1
    long-to-int v0, p0

    .line 2
    const/4 v1, 0x1

    .line 3
    and-int/2addr v0, v1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isFinite-impl(J)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    shr-long/2addr p0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 15
    .line 16
    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    .line 17
    .line 18
    .line 19
    move-result-wide p0

    .line 20
    :goto_0
    return-wide p0
.end method

.method public static final getInWholeMinutes-impl(J)J
    .locals 1

    .line 1
    sget-object v0, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    .line 2
    .line 3
    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public static final getInWholeNanoseconds-impl(J)J
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    shr-long v0, p0, v0

    .line 3
    .line 4
    invoke-static {p0, p1}, Lkotlin/time/Duration;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(J)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-wide p0, 0x8637bd05af6L

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    cmp-long v2, v0, p0

    .line 17
    .line 18
    if-lez v2, :cond_1

    .line 19
    .line 20
    const-wide v0, 0x7fffffffffffffffL

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-wide p0, -0x8637bd05af6L

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    cmp-long v2, v0, p0

    .line 32
    .line 33
    if-gez v2, :cond_2

    .line 34
    .line 35
    const-wide/high16 v0, -0x8000000000000000L

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    :goto_0
    return-wide v0
.end method

.method public static final getInWholeSeconds-impl(J)J
    .locals 1

    .line 1
    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 2
    .line 3
    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public static synthetic getMinutesComponent$annotations()V
    .locals 0
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    return-void
.end method

.method public static final getMinutesComponent-impl(J)I
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeMinutes-impl(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    const/16 v0, 0x3c

    .line 14
    .line 15
    int-to-long v0, v0

    .line 16
    rem-long/2addr p0, v0

    .line 17
    long-to-int p0, p0

    .line 18
    :goto_0
    return p0
.end method

.method public static synthetic getNanosecondsComponent$annotations()V
    .locals 0
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    return-void
.end method

.method public static final getNanosecondsComponent-impl(J)I
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    long-to-int v0, p0

    .line 10
    const/4 v2, 0x1

    .line 11
    and-int/2addr v0, v2

    .line 12
    if-ne v0, v2, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    :cond_1
    if-eqz v1, :cond_2

    .line 16
    .line 17
    shr-long/2addr p0, v2

    .line 18
    const/16 v0, 0x3e8

    .line 19
    .line 20
    int-to-long v0, v0

    .line 21
    rem-long/2addr p0, v0

    .line 22
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    .line 23
    .line 24
    .line 25
    move-result-wide p0

    .line 26
    :goto_0
    long-to-int v1, p0

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    shr-long/2addr p0, v2

    .line 29
    const v0, 0x3b9aca00

    .line 30
    .line 31
    .line 32
    int-to-long v0, v0

    .line 33
    rem-long/2addr p0, v0

    .line 34
    goto :goto_0

    .line 35
    :goto_1
    return v1
.end method

.method public static synthetic getSecondsComponent$annotations()V
    .locals 0
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    return-void
.end method

.method public static final getSecondsComponent-impl(J)I
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    const/16 v0, 0x3c

    .line 14
    .line 15
    int-to-long v0, v0

    .line 16
    rem-long/2addr p0, v0

    .line 17
    long-to-int p0, p0

    .line 18
    :goto_0
    return p0
.end method

.method public static hashCode-impl(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static final isFinite-impl(J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    xor-int/lit8 p0, p0, 0x1

    .line 6
    .line 7
    return p0
.end method

.method public static final isInfinite-impl(J)Z
    .locals 3

    .line 1
    sget-wide v0, Lkotlin/time/Duration;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:J

    .line 2
    .line 3
    cmp-long v2, p0, v0

    .line 4
    .line 5
    if-eqz v2, :cond_1

    .line 6
    .line 7
    sget-wide v0, Lkotlin/time/Duration;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:J

    .line 8
    .line 9
    cmp-long v2, p0, v0

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
.end method

.method public static final isNegative-impl(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isPositive-impl(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final minus-LRDsOJo(JJ)J
    .locals 0

    .line 1
    invoke-static {p2, p3}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p2

    .line 5
    invoke-static {p0, p1, p2, p3}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method

.method public static final plus-LRDsOJo(JJ)J
    .locals 4

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-static {p2, p3}, Lkotlin/time/Duration;->isFinite-impl(J)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    xor-long/2addr p2, p0

    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    cmp-long v2, p2, v0

    .line 17
    .line 18
    if-ltz v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string p1, "Summing infinite durations of different signs yields an undefined result."

    .line 24
    .line 25
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_1
    :goto_0
    return-wide p0

    .line 30
    :cond_2
    invoke-static {p2, p3}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    return-wide p2

    .line 37
    :cond_3
    long-to-int v0, p0

    .line 38
    const/4 v1, 0x1

    .line 39
    and-int/2addr v0, v1

    .line 40
    long-to-int v2, p2

    .line 41
    and-int/2addr v2, v1

    .line 42
    if-ne v0, v2, :cond_5

    .line 43
    .line 44
    shr-long v2, p0, v1

    .line 45
    .line 46
    shr-long/2addr p2, v1

    .line 47
    add-long/2addr v2, p2

    .line 48
    invoke-static {p0, p1}, Lkotlin/time/Duration;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(J)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_4

    .line 53
    .line 54
    invoke-static {v2, v3}, Lkotlin/time/DurationKt;->access$durationOfNanosNormalized(J)J

    .line 55
    .line 56
    .line 57
    move-result-wide p0

    .line 58
    goto :goto_1

    .line 59
    :cond_4
    invoke-static {v2, v3}, Lkotlin/time/DurationKt;->access$durationOfMillisNormalized(J)J

    .line 60
    .line 61
    .line 62
    move-result-wide p0

    .line 63
    goto :goto_1

    .line 64
    :cond_5
    if-ne v0, v1, :cond_6

    .line 65
    .line 66
    shr-long/2addr p0, v1

    .line 67
    shr-long/2addr p2, v1

    .line 68
    invoke-static {p0, p1, p2, p3}, Lkotlin/time/Duration;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(JJ)J

    .line 69
    .line 70
    .line 71
    move-result-wide p0

    .line 72
    goto :goto_1

    .line 73
    :cond_6
    shr-long/2addr p2, v1

    .line 74
    shr-long/2addr p0, v1

    .line 75
    invoke-static {p2, p3, p0, p1}, Lkotlin/time/Duration;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(JJ)J

    .line 76
    .line 77
    .line 78
    move-result-wide p0

    .line 79
    :goto_1
    return-wide p0
.end method

.method public static final times-UwyO8pc(JD)J
    .locals 4

    .line 18
    invoke-static {p2, p3}, L딝뎻따될뎠둣땝땩돵둘뎬뎨따땀들딅듻뒀돛든땦땱딸됩됩뒋땐땩뎡딤땁뒉딐든땜뒷듸딝둘뒵땔땁뎸됨뎽딹뎹딸듬득땍딀땹땡듟따땮뒀돝됨땻듻둘딀듸딃뎬땀뒝돶둡땡땅듰뒐듨딠딄뒀뒬딸돳땠듰땬뒛돝땧땲땫뒀땬뒛땄돨딄땤땦뎽딀뒝돳땦둡땨돨둬땡땪땯땵땪둥돰딻딜뒼딌둡듌뒤뒉뒐뎬뒈딐땧뎠땋땩;->roundToInt(D)I

    move-result v0

    int-to-double v1, v0

    cmpg-double v3, v1, p2

    if-nez v3, :cond_0

    .line 19
    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->times-UwyO8pc(JI)J

    move-result-wide p0

    return-wide p0

    .line 20
    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(J)Lkotlin/time/DurationUnit;

    move-result-object v0

    .line 21
    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(JLkotlin/time/DurationUnit;)D

    move-result-wide p0

    mul-double p0, p0, p2

    .line 22
    invoke-static {p0, p1, v0}, Lkotlin/time/DurationKt;->toDuration(DLkotlin/time/DurationUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final times-UwyO8pc(JI)J
    .locals 20

    move/from16 v0, p2

    .line 1
    invoke-static/range {p0 .. p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    if-lez v0, :cond_0

    move-wide/from16 v0, p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static/range {p0 .. p1}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Multiplying infinite duration by zero yields an undefined result."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez v0, :cond_3

    .line 4
    sget-wide v0, Lkotlin/time/Duration;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:J

    return-wide v0

    :cond_3
    const/4 v1, 0x1

    shr-long v1, p0, v1

    int-to-long v3, v0

    mul-long v5, v1, v3

    .line 5
    invoke-static/range {p0 .. p1}, Lkotlin/time/Duration;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(J)Z

    move-result v7

    sget-wide v8, Lkotlin/time/Duration;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:J

    sget-wide v10, Lkotlin/time/Duration;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:J

    const-wide v14, -0x3fffffffffffffffL    # -2.0000000000000004

    if-eqz v7, :cond_7

    const-wide/32 v16, -0x7fffffff

    cmp-long v7, v16, v1

    if-gtz v7, :cond_4

    const-wide v16, 0x80000000L

    cmp-long v7, v1, v16

    if-gez v7, :cond_4

    .line 6
    invoke-static {v5, v6}, Lkotlin/time/DurationKt;->access$durationOfNanos(J)J

    move-result-wide v8

    goto/16 :goto_2

    .line 7
    :cond_4
    div-long v16, v5, v3

    cmp-long v7, v16, v1

    if-nez v7, :cond_5

    .line 8
    invoke-static {v5, v6}, Lkotlin/time/DurationKt;->access$durationOfNanosNormalized(J)J

    move-result-wide v8

    goto :goto_2

    .line 9
    :cond_5
    invoke-static {v1, v2}, Lkotlin/time/DurationKt;->access$nanosToMillis(J)J

    move-result-wide v5

    .line 10
    invoke-static {v5, v6}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide v16

    sub-long v16, v1, v16

    mul-long v18, v5, v3

    mul-long v16, v16, v3

    .line 11
    invoke-static/range {v16 .. v17}, Lkotlin/time/DurationKt;->access$nanosToMillis(J)J

    move-result-wide v16

    add-long v12, v16, v18

    .line 12
    div-long v3, v18, v3

    cmp-long v7, v3, v5

    if-nez v7, :cond_6

    xor-long v3, v12, v18

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_6

    .line 13
    new-instance v0, Lkotlin/ranges/LongRange;

    const-wide v1, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-direct {v0, v14, v15, v1, v2}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    invoke-static {v12, v13, v0}, Lkotlin/ranges/뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉;->coerceIn(JLkotlin/ranges/ClosedRange;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    move-result-wide v8

    goto :goto_2

    .line 14
    :cond_6
    invoke-static {v1, v2}, L딝뎻따될뎠둣땝땩돵둘뎬뎨따땀들딅듻뒀돛든땦땱딸됩됩뒋땐땩뎡딤땁뒉딐든땜뒷듸딝둘뒵땔땁뎸됨뎽딹뎹딸듬득땍딀땹땡듟따땮뒀돝됨땻듻둘딀듸딃뎬땀뒝돶둡땡땅듰뒐듨딠딄뒀뒬딸돳땠듰땬뒛돝땧땲땫뒀땬뒛땄돨딄땤땦뎽딀뒝돳땦둡땨돨둬땡땪땯땵땪둥돰딻딜뒼딌둡듌뒤뒉뒐뎬뒈딐땧뎠땋땩;->getSign(J)I

    move-result v1

    invoke-static/range {p2 .. p2}, L딝뎻따될뎠둣땝땩돵둘뎬뎨따땀들딅듻뒀돛든땦땱딸됩됩뒋땐땩뎡딤땁뒉딐든땜뒷듸딝둘뒵땔땁뎸됨뎽딹뎹딸듬득땍딀땹땡듟따땮뒀돝됨땻듻둘딀듸딃뎬땀뒝돶둡땡땅듰뒐듨딠딄뒀뒬딸돳땠듰땬뒛돝땧땲땫뒀땬뒛땄돨딄땤땦뎽딀뒝돳땦둡땨돨둬땡땪땯땵땪둥돰딻딜뒼딌둡듌뒤뒉뒐뎬뒈딐땧뎠땋땩;->getSign(I)I

    move-result v0

    mul-int v0, v0, v1

    if-lez v0, :cond_9

    :goto_1
    move-wide v8, v10

    goto :goto_2

    .line 15
    :cond_7
    div-long v3, v5, v3

    cmp-long v7, v3, v1

    if-nez v7, :cond_8

    .line 16
    new-instance v0, Lkotlin/ranges/LongRange;

    const-wide v1, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-direct {v0, v14, v15, v1, v2}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    invoke-static {v5, v6, v0}, Lkotlin/ranges/뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉;->coerceIn(JLkotlin/ranges/ClosedRange;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    move-result-wide v8

    goto :goto_2

    .line 17
    :cond_8
    invoke-static {v1, v2}, L딝뎻따될뎠둣땝땩돵둘뎬뎨따땀들딅듻뒀돛든땦땱딸됩됩뒋땐땩뎡딤땁뒉딐든땜뒷듸딝둘뒵땔땁뎸됨뎽딹뎹딸듬득땍딀땹땡듟따땮뒀돝됨땻듻둘딀듸딃뎬땀뒝돶둡땡땅듰뒐듨딠딄뒀뒬딸돳땠듰땬뒛돝땧땲땫뒀땬뒛땄돨딄땤땦뎽딀뒝돳땦둡땨돨둬땡땪땯땵땪둥돰딻딜뒼딌둡듌뒤뒉뒐뎬뒈딐땧뎠땋땩;->getSign(J)I

    move-result v1

    invoke-static/range {p2 .. p2}, L딝뎻따될뎠둣땝땩돵둘뎬뎨따땀들딅듻뒀돛든땦땱딸됩됩뒋땐땩뎡딤땁뒉딐든땜뒷듸딝둘뒵땔땁뎸됨뎽딹뎹딸듬득땍딀땹땡듟따땮뒀돝됨땻듻둘딀듸딃뎬땀뒝돶둡땡땅듰뒐듨딠딄뒀뒬딸돳땠듰땬뒛돝땧땲땫뒀땬뒛땄돨딄땤땦뎽딀뒝돳땦둡땨돨둬땡땪땯땵땪둥돰딻딜뒼딌둡듌뒤뒉뒐뎬뒈딐땧뎠땋땩;->getSign(I)I

    move-result v0

    mul-int v0, v0, v1

    if-lez v0, :cond_9

    goto :goto_1

    :cond_9
    :goto_2
    return-wide v8
.end method

.method public static final toComponents-impl(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 2
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, v0, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final toComponents-impl(JLkotlin/jvm/functions/Function3;)Ljava/lang/Object;
    .locals 2
    .param p2    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeMinutes-impl(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getSecondsComponent-impl(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, v0, v1, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final toComponents-impl(JLkotlin/jvm/functions/Function4;)Ljava/lang/Object;
    .locals 3
    .param p2    # Lkotlin/jvm/functions/Function4;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeHours-impl(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getMinutesComponent-impl(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getSecondsComponent-impl(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, v0, v1, v2, p0}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final toComponents-impl(JLkotlin/jvm/functions/Function5;)Ljava/lang/Object;
    .locals 8
    .param p2    # Lkotlin/jvm/functions/Function5;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeDays-impl(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getHoursComponent-impl(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getMinutesComponent-impl(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getSecondsComponent-impl(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v2, p2

    invoke-interface/range {v2 .. v7}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final toDouble-impl(JLkotlin/time/DurationUnit;)D
    .locals 3
    .param p2    # Lkotlin/time/DurationUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "unit"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-wide v0, Lkotlin/time/Duration;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:J

    .line 7
    .line 8
    cmp-long v2, p0, v0

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-wide v0, Lkotlin/time/Duration;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:J

    .line 16
    .line 17
    cmp-long v2, p0, v0

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    const-wide/high16 p0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x1

    .line 25
    shr-long v0, p0, v0

    .line 26
    .line 27
    long-to-double v0, v0

    .line 28
    invoke-static {p0, p1}, Lkotlin/time/Duration;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(J)Lkotlin/time/DurationUnit;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {v0, v1, p0, p2}, L뒘따땮뒷딸뎰돝딄땩뒨땻땹땫돠둠땹뒷듟땋둔땸된뒵딞될돷듼땩득딤땡딽듻돛땐땥듸되돤둣딹딝돵드득땪땀둘되득두딨들땥땱들땡됴뒘돼땭뒹디돸돼듌땮뎹딨둠둬딹땳뎠득딟둡땜땐땍돨득땋됨두뒋듔된땐땍뎰뒈되땯땱둥땋땄듽돵둠됩됩땳땋듰듔뒼돳뎡딐땪듬듔딻땠뒵듌돝뒐돴땥뎰땟뎠듸땁듰딃됩;->convertDurationUnit(DLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)D

    .line 33
    .line 34
    .line 35
    move-result-wide p0

    .line 36
    :goto_0
    return-wide p0
.end method

.method public static final toInt-impl(JLkotlin/time/DurationUnit;)I
    .locals 7
    .param p2    # Lkotlin/time/DurationUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "unit"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, p2}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const-wide/32 v3, -0x80000000

    .line 11
    .line 12
    .line 13
    const-wide/32 v5, 0x7fffffff

    .line 14
    .line 15
    .line 16
    invoke-static/range {v1 .. v6}, Lkotlin/ranges/뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉;->coerceIn(JJJ)J

    .line 17
    .line 18
    .line 19
    move-result-wide p0

    .line 20
    long-to-int p1, p0

    .line 21
    return p1
.end method

.method public static final toIsoString-impl(J)Ljava/lang/String;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isNegative-impl(J)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/16 v0, 0x2d

    .line 13
    .line 14
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    :cond_0
    const-string v0, "PT"

    .line 18
    .line 19
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getAbsoluteValue-UwyO8pc(J)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    invoke-static {v0, v1}, Lkotlin/time/Duration;->getInWholeHours-impl(J)J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    invoke-static {v0, v1}, Lkotlin/time/Duration;->getMinutesComponent-impl(J)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-static {v0, v1}, Lkotlin/time/Duration;->getSecondsComponent-impl(J)I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    invoke-static {v0, v1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    const-wide v2, 0x9184e729fffL

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    :cond_1
    const-wide/16 p0, 0x0

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    const/4 v1, 0x1

    .line 57
    cmp-long v8, v2, p0

    .line 58
    .line 59
    if-eqz v8, :cond_2

    .line 60
    .line 61
    const/4 p0, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const/4 p0, 0x0

    .line 64
    :goto_0
    if-nez v5, :cond_4

    .line 65
    .line 66
    if-eqz v7, :cond_3

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    const/4 p1, 0x0

    .line 70
    goto :goto_2

    .line 71
    :cond_4
    :goto_1
    const/4 p1, 0x1

    .line 72
    :goto_2
    if-nez v4, :cond_5

    .line 73
    .line 74
    if-eqz p1, :cond_6

    .line 75
    .line 76
    if-eqz p0, :cond_6

    .line 77
    .line 78
    :cond_5
    const/4 v0, 0x1

    .line 79
    :cond_6
    if-eqz p0, :cond_7

    .line 80
    .line 81
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const/16 v1, 0x48

    .line 85
    .line 86
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    :cond_7
    if-eqz v0, :cond_8

    .line 90
    .line 91
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const/16 v1, 0x4d

    .line 95
    .line 96
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    :cond_8
    if-nez p1, :cond_9

    .line 100
    .line 101
    if-nez p0, :cond_a

    .line 102
    .line 103
    if-nez v0, :cond_a

    .line 104
    .line 105
    :cond_9
    const/4 p0, 0x1

    .line 106
    const/16 v3, 0x9

    .line 107
    .line 108
    const-string v4, "S"

    .line 109
    .line 110
    move-object v0, v6

    .line 111
    move v1, v5

    .line 112
    move v2, v7

    .line 113
    move v5, p0

    .line 114
    invoke-static/range {v0 .. v5}, Lkotlin/time/Duration;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Ljava/lang/StringBuilder;IIILjava/lang/String;Z)V

    .line 115
    .line 116
    .line 117
    :cond_a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    return-object p0
.end method

.method public static final toLong-impl(JLkotlin/time/DurationUnit;)J
    .locals 3
    .param p2    # Lkotlin/time/DurationUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "unit"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-wide v0, Lkotlin/time/Duration;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:J

    .line 7
    .line 8
    cmp-long v2, p0, v0

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    const-wide p0, 0x7fffffffffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-wide v0, Lkotlin/time/Duration;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:J

    .line 19
    .line 20
    cmp-long v2, p0, v0

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    const-wide/high16 p0, -0x8000000000000000L

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x1

    .line 28
    shr-long v0, p0, v0

    .line 29
    .line 30
    invoke-static {p0, p1}, Lkotlin/time/Duration;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(J)Lkotlin/time/DurationUnit;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {v0, v1, p0, p2}, L뒘따땮뒷딸뎰돝딄땩뒨땻땹땫돠둠땹뒷듟땋둔땸된뒵딞될돷듼땩득딤땡딽듻돛땐땥듸되돤둣딹딝돵드득땪땀둘되득두딨들땥땱들땡됴뒘돼땭뒹디돸돼듌땮뎹딨둠둬딹땳뎠득딟둡땜땐땍돨득땋됨두뒋듔된땐땍뎰뒈되땯땱둥땋땄듽돵둠됩됩땳땋듰듔뒼돳뎡딐땪듬듔딻땠뒵듌돝뒐돴땥뎰땟뎠듸땁듰딃됩;->convertDurationUnit(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    .line 35
    .line 36
    .line 37
    move-result-wide p0

    .line 38
    :goto_0
    return-wide p0
.end method

.method public static toString-impl(J)Ljava/lang/String;
    .locals 12
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    .line 1
    const-string p0, "0s"

    goto/16 :goto_7

    .line 2
    :cond_0
    sget-wide v2, Lkotlin/time/Duration;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:J

    cmp-long v4, p0, v2

    if-nez v4, :cond_1

    const-string p0, "Infinity"

    goto/16 :goto_7

    .line 3
    :cond_1
    sget-wide v2, Lkotlin/time/Duration;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:J

    cmp-long v4, p0, v2

    if-nez v4, :cond_2

    const-string p0, "-Infinity"

    goto/16 :goto_7

    .line 4
    :cond_2
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isNegative-impl(J)Z

    move-result v2

    .line 5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_3

    const/16 v3, 0x2d

    .line 6
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    :cond_3
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getAbsoluteValue-UwyO8pc(J)J

    move-result-wide p0

    .line 8
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeDays-impl(J)J

    move-result-wide v3

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getHoursComponent-impl(J)I

    move-result v5

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getMinutesComponent-impl(J)I

    move-result v6

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getSecondsComponent-impl(J)I

    move-result v7

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result p0

    const/4 p1, 0x1

    const/4 v8, 0x0

    cmp-long v10, v3, v0

    if-eqz v10, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-eqz v5, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-eqz v6, :cond_6

    const/4 v10, 0x1

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    :goto_2
    if-nez v7, :cond_8

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v11, 0x1

    :goto_4
    if-eqz v0, :cond_9

    .line 9
    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x64

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    :cond_9
    const/16 v3, 0x20

    if-nez v1, :cond_a

    if-eqz v0, :cond_c

    if-nez v10, :cond_a

    if-eqz v11, :cond_c

    :cond_a
    add-int/lit8 v4, v8, 0x1

    if-lez v8, :cond_b

    .line 10
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    :cond_b
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x68

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v8, v4

    :cond_c
    if-nez v10, :cond_d

    if-eqz v11, :cond_f

    if-nez v1, :cond_d

    if-eqz v0, :cond_f

    :cond_d
    add-int/lit8 v4, v8, 0x1

    if-lez v8, :cond_e

    .line 12
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    :cond_e
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x6d

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v8, v4

    :cond_f
    if-eqz v11, :cond_15

    add-int/lit8 v11, v8, 0x1

    if-lez v8, :cond_10

    .line 14
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_10
    if-nez v7, :cond_14

    if-nez v0, :cond_14

    if-nez v1, :cond_14

    if-eqz v10, :cond_11

    goto :goto_5

    :cond_11
    const v0, 0xf4240

    if-lt p0, v0, :cond_12

    .line 15
    div-int v4, p0, v0

    rem-int v5, p0, v0

    const/4 v8, 0x0

    const/4 v6, 0x6

    const-string v7, "ms"

    move-object v3, v9

    invoke-static/range {v3 .. v8}, Lkotlin/time/Duration;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Ljava/lang/StringBuilder;IIILjava/lang/String;Z)V

    goto :goto_6

    :cond_12
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_13

    .line 16
    div-int/lit16 v4, p0, 0x3e8

    rem-int/lit16 v5, p0, 0x3e8

    const/4 v8, 0x0

    const/4 v6, 0x3

    const-string v7, "us"

    move-object v3, v9

    invoke-static/range {v3 .. v8}, Lkotlin/time/Duration;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Ljava/lang/StringBuilder;IIILjava/lang/String;Z)V

    goto :goto_6

    .line 17
    :cond_13
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "ns"

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_14
    :goto_5
    const/4 v8, 0x0

    const/16 v6, 0x9

    .line 18
    const-string v0, "s"

    move-object v3, v9

    move v4, v7

    move v5, p0

    move-object v7, v0

    invoke-static/range {v3 .. v8}, Lkotlin/time/Duration;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Ljava/lang/StringBuilder;IIILjava/lang/String;Z)V

    :goto_6
    move v8, v11

    :cond_15
    if-eqz v2, :cond_16

    if-le v8, p1, :cond_16

    const/16 p0, 0x28

    .line 19
    invoke-virtual {v9, p1, p0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    :cond_16
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_7
    return-object p0
.end method

.method public static final toString-impl(JLkotlin/time/DurationUnit;I)Ljava/lang/String;
    .locals 2
    .param p2    # Lkotlin/time/DurationUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p3, :cond_1

    .line 21
    invoke-static {p0, p1, p2}, Lkotlin/time/Duration;->toDouble-impl(JLkotlin/time/DurationUnit;)D

    move-result-wide p0

    .line 22
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xc

    invoke-static {p3, v1}, Lkotlin/ranges/뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉;->coerceAtMost(II)I

    move-result p3

    invoke-static {p0, p1, p3}, Lkotlin/time/DurationJvmKt;->formatToExactDecimals(DI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, L뒘땄듟뎸됫듔돴된딸되둬딎둥듸딎땤땫듨둔뎸땧딌뎰땳딠뒾둠돠될듰땱땰딟따딞돰딹돵돛뒐둘뒘든땔도땬땍딁땅돛뒀됨둘될듟뒷뒐땋될둣돵돤돸돼땄들듻딞땟돳디둘딀뒉돰돠땀뎸득돛딽땦땍됫듼땯땠뒙듌뎨딎됐둣뒬딤뎽뒼땐둡돸땭돴뒵듼득땧땐됨딻둔뒤뒻둑땲땟듐됨뎸뒻듟땥딟됫땬땦땪둣딐든듽;->shortName(Lkotlin/time/DurationUnit;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 24
    :cond_1
    const-string p0, "decimals must be not negative, but was "

    .line 25
    invoke-static {p3, p0}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic toString-impl$default(JLkotlin/time/DurationUnit;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lkotlin/time/Duration;->toString-impl(JLkotlin/time/DurationUnit;I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final truncateTo-UwyO8pc$kotlin_stdlib(JLkotlin/time/DurationUnit;)J
    .locals 3
    .param p2    # Lkotlin/time/DurationUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "unit"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/time/Duration;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(J)Lkotlin/time/DurationUnit;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-lez v1, :cond_1

    .line 15
    .line 16
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-wide/16 v1, 0x1

    .line 24
    .line 25
    invoke-static {v1, v2, p2, v0}, L뒘따땮뒷딸뎰돝딄땩뒨땻땹땫돠둠땹뒷듟땋둔땸된뒵딞될돷듼땩득딤땡딽듻돛땐땥듸되돤둣딹딝돵드득땪땀둘되득두딨들땥땱들땡됴뒘돼땭뒹디돸돼듌땮뎹딨둠둬딹땳뎠득딟둡땜땐땍돨득땋됨두뒋듔된땐땍뎰뒈되땯땱둥땋땄듽돵둠됩됩땳땋듰듔뒼돳뎡딐땪듬듔딻땠뒵듌돝뒐돴땥뎰땟뎠듸땁듰딃됩;->convertDurationUnit(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    const/4 p2, 0x1

    .line 30
    shr-long/2addr p0, p2

    .line 31
    rem-long v1, p0, v1

    .line 32
    .line 33
    sub-long/2addr p0, v1

    .line 34
    invoke-static {p0, p1, v0}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    .line 35
    .line 36
    .line 37
    move-result-wide p0

    .line 38
    :cond_1
    :goto_0
    return-wide p0
.end method

.method public static final unaryMinus-UwyO8pc(J)J
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    shr-long v1, p0, v0

    .line 3
    .line 4
    neg-long v1, v1

    .line 5
    long-to-int p1, p0

    .line 6
    and-int/lit8 p0, p1, 0x1

    .line 7
    .line 8
    invoke-static {v1, v2, p0}, Lkotlin/time/DurationKt;->access$durationOf(JI)J

    .line 9
    .line 10
    .line 11
    move-result-wide p0

    .line 12
    return-wide p0
.end method

.method public static final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(JJ)J
    .locals 8

    .line 1
    invoke-static {p2, p3}, Lkotlin/time/DurationKt;->access$nanosToMillis(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    add-long v2, p0, v0

    .line 6
    .line 7
    const-wide p0, -0x431bde82d7aL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    cmp-long v4, p0, v2

    .line 13
    .line 14
    if-gtz v4, :cond_0

    .line 15
    .line 16
    const-wide p0, 0x431bde82d7bL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    cmp-long v4, v2, p0

    .line 22
    .line 23
    if-gez v4, :cond_0

    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide p0

    .line 29
    sub-long/2addr p2, p0

    .line 30
    invoke-static {v2, v3}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    .line 31
    .line 32
    .line 33
    move-result-wide p0

    .line 34
    add-long/2addr p0, p2

    .line 35
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->access$durationOfNanos(J)J

    .line 36
    .line 37
    .line 38
    move-result-wide p0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const-wide v4, -0x3fffffffffffffffL    # -2.0000000000000004

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    const-wide v6, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    invoke-static/range {v2 .. v7}, Lkotlin/ranges/뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉;->coerceIn(JJJ)J

    .line 51
    .line 52
    .line 53
    move-result-wide p0

    .line 54
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    .line 55
    .line 56
    .line 57
    move-result-wide p0

    .line 58
    :goto_0
    return-wide p0
.end method

.method public static final 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Ljava/lang/StringBuilder;IIILjava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_4

    .line 5
    .line 6
    const/16 p1, 0x2e

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/16 p2, 0x30

    .line 16
    .line 17
    invoke-static {p1, p3, p2}, Lkotlin/text/StringsKt__StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    const/4 v0, -0x1

    .line 26
    add-int/2addr p3, v0

    .line 27
    if-ltz p3, :cond_2

    .line 28
    .line 29
    :goto_0
    add-int/lit8 v1, p3, -0x1

    .line 30
    .line 31
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eq v2, p2, :cond_0

    .line 36
    .line 37
    move v0, p3

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    if-gez v1, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move p3, v1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_1
    add-int/lit8 p2, v0, 0x1

    .line 45
    .line 46
    const-string p3, "append(...)"

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    const/4 v2, 0x3

    .line 50
    if-nez p5, :cond_3

    .line 51
    .line 52
    if-ge p2, v2, :cond_3

    .line 53
    .line 54
    invoke-virtual {p0, p1, v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    add-int/2addr v0, v2

    .line 62
    div-int/2addr v0, v2

    .line 63
    mul-int/lit8 v0, v0, 0x3

    .line 64
    .line 65
    invoke-virtual {p0, p1, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_4
    :goto_2
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public static final 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(J)Lkotlin/time/DurationUnit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(J)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object p0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 11
    .line 12
    :goto_0
    return-object p0
.end method

.method public static final 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(J)Z
    .locals 0

    .line 1
    long-to-int p1, p0

    const/4 p0, 0x1

    and-int/2addr p1, p0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lkotlin/time/Duration;

    .line 2
    .line 3
    invoke-virtual {p1}, Lkotlin/time/Duration;->unbox-impl()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p0, v0, v1}, Lkotlin/time/Duration;->compareTo-LRDsOJo(J)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public compareTo-LRDsOJo(J)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlin/time/Duration;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:J

    invoke-static {v0, v1, p1, p2}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Lkotlin/time/Duration;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:J

    invoke-static {v0, v1, p1}, Lkotlin/time/Duration;->equals-impl(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lkotlin/time/Duration;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:J

    invoke-static {v0, v1}, Lkotlin/time/Duration;->hashCode-impl(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-wide v0, p0, Lkotlin/time/Duration;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final synthetic unbox-impl()J
    .locals 2

    iget-wide v0, p0, Lkotlin/time/Duration;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:J

    return-wide v0
.end method
