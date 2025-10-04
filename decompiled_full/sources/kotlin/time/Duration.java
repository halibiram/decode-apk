package kotlin.time;

import androidx.exifinterface.media.ExifInterface;
import com.google.common.primitives.Longs;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0614x40cbcac5;
import defpackage.AbstractC0690xd52c7705;
import defpackage.AbstractC0691xdc9a9f41;
import defpackage.AbstractC0975x7c3950e5;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmInline;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.AbstractC0296x1378447b;
import kotlin.ranges.LongRange;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@SinceKotlin(version = "1.6")
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b'\b\u0087@\u0018\u0000 q2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001qB\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u001a\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tHÖ\u0003¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\u000e\u0010\u0005J\u0018\u0010\u0012\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\u0014\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\u0013\u0010\u0011J\u0018\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0006H\u0086\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0018\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0019H\u0086\u0002¢\u0006\u0004\b\u0016\u0010\u001aJ\u0018\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0006H\u0086\u0002¢\u0006\u0004\b\u001b\u0010\u0017J\u0018\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0019H\u0086\u0002¢\u0006\u0004\b\u001b\u0010\u001aJ\u0018\u0010\u001c\u001a\u00020\u00192\u0006\u0010\n\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010#\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u001fH\u0000¢\u0006\u0004\b!\u0010\"J\r\u0010&\u001a\u00020\u000b¢\u0006\u0004\b$\u0010%J\r\u0010(\u001a\u00020\u000b¢\u0006\u0004\b'\u0010%J\r\u0010*\u001a\u00020\u000b¢\u0006\u0004\b)\u0010%J\r\u0010,\u001a\u00020\u000b¢\u0006\u0004\b+\u0010%J\u0018\u0010/\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0000H\u0096\u0002¢\u0006\u0004\b-\u0010.J\u009d\u0001\u0010<\u001a\u00028\u0000\"\u0004\b\u0000\u001002u\u00109\u001aq\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(4\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(5\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(6\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(7\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(8\u0012\u0004\u0012\u00028\u000001H\u0086\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b:\u0010;J\u0088\u0001\u0010<\u001a\u00028\u0000\"\u0004\b\u0000\u001002`\u00109\u001a\\\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(5\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(6\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(7\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(8\u0012\u0004\u0012\u00028\u00000=H\u0086\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b:\u0010>Js\u0010<\u001a\u00028\u0000\"\u0004\b\u0000\u001002K\u00109\u001aG\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(6\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(7\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(8\u0012\u0004\u0012\u00028\u00000?H\u0086\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b:\u0010@J^\u0010<\u001a\u00028\u0000\"\u0004\b\u0000\u0010026\u00109\u001a2\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(7\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(8\u0012\u0004\u0012\u00028\u00000AH\u0086\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b:\u0010BJ\u0015\u0010E\u001a\u00020\u00192\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\bC\u0010DJ\u0015\u0010G\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\bF\u0010\"J\u0015\u0010J\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\bH\u0010IJ\u000f\u0010N\u001a\u00020KH\u0016¢\u0006\u0004\bL\u0010MJ\u001f\u0010N\u001a\u00020K2\u0006\u0010 \u001a\u00020\u001f2\b\b\u0002\u0010O\u001a\u00020\u0006¢\u0006\u0004\bL\u0010PJ\r\u0010R\u001a\u00020K¢\u0006\u0004\bQ\u0010MR\u0011\u0010T\u001a\u00020\u00008F¢\u0006\u0006\u001a\u0004\bS\u0010\u0005R\u001a\u0010Y\u001a\u00020\u00068@X\u0081\u0004¢\u0006\f\u0012\u0004\bW\u0010X\u001a\u0004\bU\u0010VR\u001a\u0010\\\u001a\u00020\u00068@X\u0081\u0004¢\u0006\f\u0012\u0004\b[\u0010X\u001a\u0004\bZ\u0010VR\u001a\u0010_\u001a\u00020\u00068@X\u0081\u0004¢\u0006\f\u0012\u0004\b^\u0010X\u001a\u0004\b]\u0010VR\u001a\u0010b\u001a\u00020\u00068@X\u0081\u0004¢\u0006\f\u0012\u0004\ba\u0010X\u001a\u0004\b`\u0010VR\u0011\u0010d\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\bc\u0010\u0005R\u0011\u0010f\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\be\u0010\u0005R\u0011\u0010h\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\bg\u0010\u0005R\u0011\u0010j\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\bi\u0010\u0005R\u0011\u0010l\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\bk\u0010\u0005R\u0011\u0010n\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\bm\u0010\u0005R\u0011\u0010p\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\bo\u0010\u0005\u0088\u0001\u0003\u0092\u0001\u00020\u0002\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006r"}, d2 = {"Lkotlin/time/Duration;", "", "", "rawValue", "constructor-impl", "(J)J", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "unaryMinus-UwyO8pc", "unaryMinus", "plus-LRDsOJo", "(JJ)J", "plus", "minus-LRDsOJo", "minus", "scale", "times-UwyO8pc", "(JI)J", "times", "", "(JD)J", "div-UwyO8pc", "div", "div-LRDsOJo", "(JJ)D", "Lkotlin/time/DurationUnit;", "unit", "truncateTo-UwyO8pc$kotlin_stdlib", "(JLkotlin/time/DurationUnit;)J", "truncateTo", "isNegative-impl", "(J)Z", "isNegative", "isPositive-impl", "isPositive", "isInfinite-impl", "isInfinite", "isFinite-impl", "isFinite", "compareTo-LRDsOJo", "(JJ)I", "compareTo", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/Function5;", "Lkotlin/ParameterName;", "name", "days", "hours", "minutes", "seconds", "nanoseconds", "action", "toComponents-impl", "(JLkotlin/jvm/functions/Function5;)Ljava/lang/Object;", "toComponents", "Lkotlin/Function4;", "(JLkotlin/jvm/functions/Function4;)Ljava/lang/Object;", "Lkotlin/Function3;", "(JLkotlin/jvm/functions/Function3;)Ljava/lang/Object;", "Lkotlin/Function2;", "(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "toDouble-impl", "(JLkotlin/time/DurationUnit;)D", "toDouble", "toLong-impl", "toLong", "toInt-impl", "(JLkotlin/time/DurationUnit;)I", "toInt", "", "toString-impl", "(J)Ljava/lang/String;", "toString", "decimals", "(JLkotlin/time/DurationUnit;I)Ljava/lang/String;", "toIsoString-impl", "toIsoString", "getAbsoluteValue-UwyO8pc", "absoluteValue", "getHoursComponent-impl", "(J)I", "getHoursComponent$annotations", "()V", "hoursComponent", "getMinutesComponent-impl", "getMinutesComponent$annotations", "minutesComponent", "getSecondsComponent-impl", "getSecondsComponent$annotations", "secondsComponent", "getNanosecondsComponent-impl", "getNanosecondsComponent$annotations", "nanosecondsComponent", "getInWholeDays-impl", "inWholeDays", "getInWholeHours-impl", "inWholeHours", "getInWholeMinutes-impl", "inWholeMinutes", "getInWholeSeconds-impl", "inWholeSeconds", "getInWholeMilliseconds-impl", "inWholeMilliseconds", "getInWholeMicroseconds-impl", "inWholeMicroseconds", "getInWholeNanoseconds-impl", "inWholeNanoseconds", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
@WasExperimental(markerClass = {ExperimentalTime.class})
@SourceDebugExtension({"SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/Duration\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1068:1\n38#1:1069\n38#1:1070\n38#1:1071\n38#1:1072\n38#1:1073\n501#1:1074\n518#1:1082\n170#2,6:1075\n1#3:1081\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/Duration\n*L\n39#1:1069\n40#1:1070\n275#1:1071\n295#1:1072\n479#1:1073\n728#1:1074\n819#1:1082\n770#1:1075,6\n*E\n"})
/* loaded from: classes3.dex */
public final class Duration implements Comparable<Duration> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final long f1701x3271d0aa = m2089constructorimpl(0);

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final long f1702x1378447b = DurationKt.access$durationOfMillis(DurationKt.MAX_MILLIS);

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public static final long f1703x75d576dc = DurationKt.access$durationOfMillis(-4611686018427387903L);

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final long f1704xfbe0c504;

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0017\b\u0086\u0003\u0018\u00002\u00020\u0001J'\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\r\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\t¢\u0006\u0004\b\u000e\u0010\fJ\u0017\u0010\u0012\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0003\u001a\u00020\t¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0003\u001a\u00020\t¢\u0006\u0004\b\u0013\u0010\u0011R\u0017\u0010\u0015\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\u0019\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u0016\u001a\u0004\b\u001a\u0010\u0018R\u001a\u0010\u001b\u001a\u00020\n8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u0016\u001a\u0004\b\u001c\u0010\u0018R\u001f\u0010\"\u001a\u00020\n*\u00020\u001d8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b \u0010!\u001a\u0004\b\u001e\u0010\u001fR\u001f\u0010\"\u001a\u00020\n*\u00020#8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b \u0010%\u001a\u0004\b\u001e\u0010$R\u001f\u0010\"\u001a\u00020\n*\u00020\u00028Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b \u0010'\u001a\u0004\b\u001e\u0010&R\u001f\u0010*\u001a\u00020\n*\u00020\u001d8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b)\u0010!\u001a\u0004\b(\u0010\u001fR\u001f\u0010*\u001a\u00020\n*\u00020#8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b)\u0010%\u001a\u0004\b(\u0010$R\u001f\u0010*\u001a\u00020\n*\u00020\u00028Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b)\u0010'\u001a\u0004\b(\u0010&R\u001f\u0010-\u001a\u00020\n*\u00020\u001d8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b,\u0010!\u001a\u0004\b+\u0010\u001fR\u001f\u0010-\u001a\u00020\n*\u00020#8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b,\u0010%\u001a\u0004\b+\u0010$R\u001f\u0010-\u001a\u00020\n*\u00020\u00028Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b,\u0010'\u001a\u0004\b+\u0010&R\u001f\u00100\u001a\u00020\n*\u00020\u001d8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b/\u0010!\u001a\u0004\b.\u0010\u001fR\u001f\u00100\u001a\u00020\n*\u00020#8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b/\u0010%\u001a\u0004\b.\u0010$R\u001f\u00100\u001a\u00020\n*\u00020\u00028Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b/\u0010'\u001a\u0004\b.\u0010&R\u001f\u00103\u001a\u00020\n*\u00020\u001d8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b2\u0010!\u001a\u0004\b1\u0010\u001fR\u001f\u00103\u001a\u00020\n*\u00020#8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b2\u0010%\u001a\u0004\b1\u0010$R\u001f\u00103\u001a\u00020\n*\u00020\u00028Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b2\u0010'\u001a\u0004\b1\u0010&R\u001f\u00106\u001a\u00020\n*\u00020\u001d8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b5\u0010!\u001a\u0004\b4\u0010\u001fR\u001f\u00106\u001a\u00020\n*\u00020#8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b5\u0010%\u001a\u0004\b4\u0010$R\u001f\u00106\u001a\u00020\n*\u00020\u00028Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b5\u0010'\u001a\u0004\b4\u0010&R\u001f\u00109\u001a\u00020\n*\u00020\u001d8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b8\u0010!\u001a\u0004\b7\u0010\u001fR\u001f\u00109\u001a\u00020\n*\u00020#8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b8\u0010%\u001a\u0004\b7\u0010$R\u001f\u00109\u001a\u00020\n*\u00020\u00028Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b8\u0010'\u001a\u0004\b7\u0010&¨\u0006:"}, d2 = {"Lkotlin/time/Duration$Companion;", "", "", "value", "Lkotlin/time/DurationUnit;", "sourceUnit", "targetUnit", "convert", "(DLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)D", "", "Lkotlin/time/Duration;", "parse-UwyO8pc", "(Ljava/lang/String;)J", "parse", "parseIsoString-UwyO8pc", "parseIsoString", "parseOrNull-FghU774", "(Ljava/lang/String;)Lkotlin/time/Duration;", "parseOrNull", "parseIsoStringOrNull-FghU774", "parseIsoStringOrNull", "ZERO", "J", "getZERO-UwyO8pc", "()J", "INFINITE", "getINFINITE-UwyO8pc", "NEG_INFINITE", "getNEG_INFINITE-UwyO8pc$kotlin_stdlib", "", "getNanoseconds-UwyO8pc", "(I)J", "getNanoseconds-UwyO8pc$annotations", "(I)V", "nanoseconds", "", "(J)J", "(J)V", "(D)J", "(D)V", "getMicroseconds-UwyO8pc", "getMicroseconds-UwyO8pc$annotations", "microseconds", "getMilliseconds-UwyO8pc", "getMilliseconds-UwyO8pc$annotations", "milliseconds", "getSeconds-UwyO8pc", "getSeconds-UwyO8pc$annotations", "seconds", "getMinutes-UwyO8pc", "getMinutes-UwyO8pc$annotations", "minutes", "getHours-UwyO8pc", "getHours-UwyO8pc$annotations", "hours", "getDays-UwyO8pc", "getDays-UwyO8pc$annotations", "days", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        @InlineOnly
        /* renamed from: getDays-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m2135getDaysUwyO8pc$annotations(double d) {
        }

        @InlineOnly
        /* renamed from: getHours-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m2138getHoursUwyO8pc$annotations(double d) {
        }

        @InlineOnly
        /* renamed from: getMicroseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m2141getMicrosecondsUwyO8pc$annotations(double d) {
        }

        @InlineOnly
        /* renamed from: getMilliseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m2144getMillisecondsUwyO8pc$annotations(double d) {
        }

        @InlineOnly
        /* renamed from: getMinutes-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m2147getMinutesUwyO8pc$annotations(double d) {
        }

        @InlineOnly
        /* renamed from: getNanoseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m2150getNanosecondsUwyO8pc$annotations(double d) {
        }

        @InlineOnly
        /* renamed from: getSeconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m2153getSecondsUwyO8pc$annotations(double d) {
        }

        @ExperimentalTime
        public final double convert(double value, @NotNull DurationUnit sourceUnit, @NotNull DurationUnit targetUnit) {
            Intrinsics.checkNotNullParameter(sourceUnit, "sourceUnit");
            Intrinsics.checkNotNullParameter(targetUnit, "targetUnit");
            return AbstractC0690xd52c7705.convertDurationUnit(value, sourceUnit, targetUnit);
        }

        /* renamed from: getINFINITE-UwyO8pc, reason: not valid java name */
        public final long m2156getINFINITEUwyO8pc() {
            return Duration.f1702x1378447b;
        }

        /* renamed from: getNEG_INFINITE-UwyO8pc$kotlin_stdlib, reason: not valid java name */
        public final long m2157getNEG_INFINITEUwyO8pc$kotlin_stdlib() {
            return Duration.f1703x75d576dc;
        }

        /* renamed from: getZERO-UwyO8pc, reason: not valid java name */
        public final long m2158getZEROUwyO8pc() {
            return Duration.f1701x3271d0aa;
        }

        /* renamed from: parse-UwyO8pc, reason: not valid java name */
        public final long m2159parseUwyO8pc(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                return DurationKt.access$parseDuration(value, false);
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException(AbstractC0362x4440ab85.m2932x95f25580("Invalid duration string format: '", value, "'."), e);
            }
        }

        /* renamed from: parseIsoString-UwyO8pc, reason: not valid java name */
        public final long m2160parseIsoStringUwyO8pc(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                return DurationKt.access$parseDuration(value, true);
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException(AbstractC0362x4440ab85.m2932x95f25580("Invalid ISO duration string format: '", value, "'."), e);
            }
        }

        @Nullable
        /* renamed from: parseIsoStringOrNull-FghU774, reason: not valid java name */
        public final Duration m2161parseIsoStringOrNullFghU774(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                return Duration.m2087boximpl(DurationKt.access$parseDuration(value, true));
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        @Nullable
        /* renamed from: parseOrNull-FghU774, reason: not valid java name */
        public final Duration m2162parseOrNullFghU774(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                return Duration.m2087boximpl(DurationKt.access$parseDuration(value, false));
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        @InlineOnly
        /* renamed from: getDays-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m2136getDaysUwyO8pc$annotations(int i) {
        }

        @InlineOnly
        /* renamed from: getHours-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m2139getHoursUwyO8pc$annotations(int i) {
        }

        @InlineOnly
        /* renamed from: getMicroseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m2142getMicrosecondsUwyO8pc$annotations(int i) {
        }

        @InlineOnly
        /* renamed from: getMilliseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m2145getMillisecondsUwyO8pc$annotations(int i) {
        }

        @InlineOnly
        /* renamed from: getMinutes-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m2148getMinutesUwyO8pc$annotations(int i) {
        }

        @InlineOnly
        /* renamed from: getNanoseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m2151getNanosecondsUwyO8pc$annotations(int i) {
        }

        @InlineOnly
        /* renamed from: getSeconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m2154getSecondsUwyO8pc$annotations(int i) {
        }

        @InlineOnly
        /* renamed from: getDays-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m2137getDaysUwyO8pc$annotations(long j) {
        }

        @InlineOnly
        /* renamed from: getHours-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m2140getHoursUwyO8pc$annotations(long j) {
        }

        @InlineOnly
        /* renamed from: getMicroseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m2143getMicrosecondsUwyO8pc$annotations(long j) {
        }

        @InlineOnly
        /* renamed from: getMilliseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m2146getMillisecondsUwyO8pc$annotations(long j) {
        }

        @InlineOnly
        /* renamed from: getMinutes-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m2149getMinutesUwyO8pc$annotations(long j) {
        }

        @InlineOnly
        /* renamed from: getNanoseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m2152getNanosecondsUwyO8pc$annotations(long j) {
        }

        @InlineOnly
        /* renamed from: getSeconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m2155getSecondsUwyO8pc$annotations(long j) {
        }
    }

    public /* synthetic */ Duration(long j) {
        this.f1704xfbe0c504 = j;
    }

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Duration m2087boximpl(long j) {
        return new Duration(j);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m2089constructorimpl(long j) {
        if (DurationJvmKt.getDurationAssertionsEnabled()) {
            if (m2132x75d576dc(j)) {
                long j2 = j >> 1;
                if (-4611686018426999999L > j2 || j2 >= 4611686018427000000L) {
                    throw new AssertionError(j2 + " ns is out of nanoseconds range");
                }
            } else {
                long j3 = j >> 1;
                if (-4611686018427387903L <= j3 && j3 < Longs.MAX_POWER_OF_TWO) {
                    if (-4611686018426L <= j3 && j3 < 4611686018427L) {
                        throw new AssertionError(j3 + " ms is denormalized");
                    }
                } else {
                    throw new AssertionError(j3 + " ms is out of milliseconds range");
                }
            }
        }
        return j;
    }

    /* renamed from: div-LRDsOJo, reason: not valid java name */
    public static final double m2090divLRDsOJo(long j, long j2) {
        DurationUnit durationUnit = (DurationUnit) AbstractC0614x40cbcac5.maxOf(m2131x1378447b(j), m2131x1378447b(j2));
        return m2120toDoubleimpl(j, durationUnit) / m2120toDoubleimpl(j2, durationUnit);
    }

    /* renamed from: div-UwyO8pc, reason: not valid java name */
    public static final long m2092divUwyO8pc(long j, int i) {
        if (i == 0) {
            if (m2111isPositiveimpl(j)) {
                return f1702x1378447b;
            }
            if (m2110isNegativeimpl(j)) {
                return f1703x75d576dc;
            }
            throw new IllegalArgumentException("Dividing zero duration by zero yields an undefined result.");
        }
        if (m2132x75d576dc(j)) {
            return DurationKt.access$durationOfNanos((j >> 1) / i);
        }
        if (m2109isInfiniteimpl(j)) {
            return m2115timesUwyO8pc(j, AbstractC0975x7c3950e5.getSign(i));
        }
        long j2 = j >> 1;
        long j3 = i;
        long j4 = j2 / j3;
        if (-4611686018426L <= j4 && j4 < 4611686018427L) {
            return DurationKt.access$durationOfNanos(DurationKt.access$millisToNanos(j4) + (DurationKt.access$millisToNanos(j2 - (j4 * j3)) / j3));
        }
        return DurationKt.access$durationOfMillis(j4);
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m2093equalsimpl(long j, Object obj) {
        return (obj instanceof Duration) && j == ((Duration) obj).getF1704xfbe0c504();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2094equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: getAbsoluteValue-UwyO8pc, reason: not valid java name */
    public static final long m2095getAbsoluteValueUwyO8pc(long j) {
        if (m2110isNegativeimpl(j)) {
            return m2128unaryMinusUwyO8pc(j);
        }
        return j;
    }

    @PublishedApi
    public static /* synthetic */ void getHoursComponent$annotations() {
    }

    /* renamed from: getHoursComponent-impl, reason: not valid java name */
    public static final int m2096getHoursComponentimpl(long j) {
        if (m2109isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m2098getInWholeHoursimpl(j) % 24);
    }

    /* renamed from: getInWholeDays-impl, reason: not valid java name */
    public static final long m2097getInWholeDaysimpl(long j) {
        return m2123toLongimpl(j, DurationUnit.DAYS);
    }

    /* renamed from: getInWholeHours-impl, reason: not valid java name */
    public static final long m2098getInWholeHoursimpl(long j) {
        return m2123toLongimpl(j, DurationUnit.HOURS);
    }

    /* renamed from: getInWholeMicroseconds-impl, reason: not valid java name */
    public static final long m2099getInWholeMicrosecondsimpl(long j) {
        return m2123toLongimpl(j, DurationUnit.MICROSECONDS);
    }

    /* renamed from: getInWholeMilliseconds-impl, reason: not valid java name */
    public static final long m2100getInWholeMillisecondsimpl(long j) {
        if ((((int) j) & 1) == 1 && m2108isFiniteimpl(j)) {
            return j >> 1;
        }
        return m2123toLongimpl(j, DurationUnit.MILLISECONDS);
    }

    /* renamed from: getInWholeMinutes-impl, reason: not valid java name */
    public static final long m2101getInWholeMinutesimpl(long j) {
        return m2123toLongimpl(j, DurationUnit.MINUTES);
    }

    /* renamed from: getInWholeNanoseconds-impl, reason: not valid java name */
    public static final long m2102getInWholeNanosecondsimpl(long j) {
        long j2 = j >> 1;
        if (!m2132x75d576dc(j)) {
            if (j2 > 9223372036854L) {
                return Long.MAX_VALUE;
            }
            if (j2 < -9223372036854L) {
                return Long.MIN_VALUE;
            }
            return DurationKt.access$millisToNanos(j2);
        }
        return j2;
    }

    /* renamed from: getInWholeSeconds-impl, reason: not valid java name */
    public static final long m2103getInWholeSecondsimpl(long j) {
        return m2123toLongimpl(j, DurationUnit.SECONDS);
    }

    @PublishedApi
    public static /* synthetic */ void getMinutesComponent$annotations() {
    }

    /* renamed from: getMinutesComponent-impl, reason: not valid java name */
    public static final int m2104getMinutesComponentimpl(long j) {
        if (m2109isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m2101getInWholeMinutesimpl(j) % 60);
    }

    @PublishedApi
    public static /* synthetic */ void getNanosecondsComponent$annotations() {
    }

    /* renamed from: getNanosecondsComponent-impl, reason: not valid java name */
    public static final int m2105getNanosecondsComponentimpl(long j) {
        long j2;
        boolean z = false;
        if (m2109isInfiniteimpl(j)) {
            return 0;
        }
        if ((((int) j) & 1) == 1) {
            z = true;
        }
        if (z) {
            j2 = DurationKt.access$millisToNanos((j >> 1) % 1000);
        } else {
            j2 = (j >> 1) % 1000000000;
        }
        return (int) j2;
    }

    @PublishedApi
    public static /* synthetic */ void getSecondsComponent$annotations() {
    }

    /* renamed from: getSecondsComponent-impl, reason: not valid java name */
    public static final int m2106getSecondsComponentimpl(long j) {
        if (m2109isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m2103getInWholeSecondsimpl(j) % 60);
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m2107hashCodeimpl(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: isFinite-impl, reason: not valid java name */
    public static final boolean m2108isFiniteimpl(long j) {
        return !m2109isInfiniteimpl(j);
    }

    /* renamed from: isInfinite-impl, reason: not valid java name */
    public static final boolean m2109isInfiniteimpl(long j) {
        if (j != f1702x1378447b && j != f1703x75d576dc) {
            return false;
        }
        return true;
    }

    /* renamed from: isNegative-impl, reason: not valid java name */
    public static final boolean m2110isNegativeimpl(long j) {
        return j < 0;
    }

    /* renamed from: isPositive-impl, reason: not valid java name */
    public static final boolean m2111isPositiveimpl(long j) {
        return j > 0;
    }

    /* renamed from: minus-LRDsOJo, reason: not valid java name */
    public static final long m2112minusLRDsOJo(long j, long j2) {
        return m2113plusLRDsOJo(j, m2128unaryMinusUwyO8pc(j2));
    }

    /* renamed from: plus-LRDsOJo, reason: not valid java name */
    public static final long m2113plusLRDsOJo(long j, long j2) {
        if (m2109isInfiniteimpl(j)) {
            if (!m2108isFiniteimpl(j2) && (j2 ^ j) < 0) {
                throw new IllegalArgumentException("Summing infinite durations of different signs yields an undefined result.");
            }
            return j;
        }
        if (m2109isInfiniteimpl(j2)) {
            return j2;
        }
        int i = ((int) j) & 1;
        if (i == (((int) j2) & 1)) {
            long j3 = (j >> 1) + (j2 >> 1);
            if (m2132x75d576dc(j)) {
                return DurationKt.access$durationOfNanosNormalized(j3);
            }
            return DurationKt.access$durationOfMillisNormalized(j3);
        }
        if (i == 1) {
            return m2129xfbe0c504(j >> 1, j2 >> 1);
        }
        return m2129xfbe0c504(j2 >> 1, j >> 1);
    }

    /* renamed from: times-UwyO8pc, reason: not valid java name */
    public static final long m2115timesUwyO8pc(long j, int i) {
        if (m2109isInfiniteimpl(j)) {
            if (i != 0) {
                return i > 0 ? j : m2128unaryMinusUwyO8pc(j);
            }
            throw new IllegalArgumentException("Multiplying infinite duration by zero yields an undefined result.");
        }
        if (i == 0) {
            return f1701x3271d0aa;
        }
        long j2 = j >> 1;
        long j3 = i;
        long j4 = j2 * j3;
        boolean m2132x75d576dc = m2132x75d576dc(j);
        long j5 = f1703x75d576dc;
        long j6 = f1702x1378447b;
        if (m2132x75d576dc) {
            if (-2147483647L <= j2 && j2 < 2147483648L) {
                return DurationKt.access$durationOfNanos(j4);
            }
            if (j4 / j3 == j2) {
                return DurationKt.access$durationOfNanosNormalized(j4);
            }
            long access$nanosToMillis = DurationKt.access$nanosToMillis(j2);
            long j7 = access$nanosToMillis * j3;
            long access$nanosToMillis2 = DurationKt.access$nanosToMillis((j2 - DurationKt.access$millisToNanos(access$nanosToMillis)) * j3) + j7;
            if (j7 / j3 == access$nanosToMillis && (access$nanosToMillis2 ^ j7) >= 0) {
                return DurationKt.access$durationOfMillis(AbstractC0296x1378447b.coerceIn(access$nanosToMillis2, new LongRange(-4611686018427387903L, DurationKt.MAX_MILLIS)));
            }
            if (AbstractC0975x7c3950e5.getSign(i) * AbstractC0975x7c3950e5.getSign(j2) <= 0) {
                return j5;
            }
        } else {
            if (j4 / j3 == j2) {
                return DurationKt.access$durationOfMillis(AbstractC0296x1378447b.coerceIn(j4, new LongRange(-4611686018427387903L, DurationKt.MAX_MILLIS)));
            }
            if (AbstractC0975x7c3950e5.getSign(i) * AbstractC0975x7c3950e5.getSign(j2) <= 0) {
                return j5;
            }
        }
        return j6;
    }

    /* renamed from: toComponents-impl, reason: not valid java name */
    public static final <T> T m2119toComponentsimpl(long j, @NotNull Function5<? super Long, ? super Integer, ? super Integer, ? super Integer, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Long.valueOf(m2097getInWholeDaysimpl(j)), Integer.valueOf(m2096getHoursComponentimpl(j)), Integer.valueOf(m2104getMinutesComponentimpl(j)), Integer.valueOf(m2106getSecondsComponentimpl(j)), Integer.valueOf(m2105getNanosecondsComponentimpl(j)));
    }

    /* renamed from: toDouble-impl, reason: not valid java name */
    public static final double m2120toDoubleimpl(long j, @NotNull DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (j == f1702x1378447b) {
            return Double.POSITIVE_INFINITY;
        }
        if (j == f1703x75d576dc) {
            return Double.NEGATIVE_INFINITY;
        }
        return AbstractC0690xd52c7705.convertDurationUnit(j >> 1, m2131x1378447b(j), unit);
    }

    /* renamed from: toInt-impl, reason: not valid java name */
    public static final int m2121toIntimpl(long j, @NotNull DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        return (int) AbstractC0296x1378447b.coerceIn(m2123toLongimpl(j, unit), -2147483648L, 2147483647L);
    }

    @NotNull
    /* renamed from: toIsoString-impl, reason: not valid java name */
    public static final String m2122toIsoStringimpl(long j) {
        boolean z;
        boolean z2;
        StringBuilder sb = new StringBuilder();
        if (m2110isNegativeimpl(j)) {
            sb.append('-');
        }
        sb.append("PT");
        long m2095getAbsoluteValueUwyO8pc = m2095getAbsoluteValueUwyO8pc(j);
        long m2098getInWholeHoursimpl = m2098getInWholeHoursimpl(m2095getAbsoluteValueUwyO8pc);
        int m2104getMinutesComponentimpl = m2104getMinutesComponentimpl(m2095getAbsoluteValueUwyO8pc);
        int m2106getSecondsComponentimpl = m2106getSecondsComponentimpl(m2095getAbsoluteValueUwyO8pc);
        int m2105getNanosecondsComponentimpl = m2105getNanosecondsComponentimpl(m2095getAbsoluteValueUwyO8pc);
        if (m2109isInfiniteimpl(j)) {
            m2098getInWholeHoursimpl = 9999999999999L;
        }
        boolean z3 = false;
        if (m2098getInWholeHoursimpl != 0) {
            z = true;
        } else {
            z = false;
        }
        if (m2106getSecondsComponentimpl == 0 && m2105getNanosecondsComponentimpl == 0) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (m2104getMinutesComponentimpl != 0 || (z2 && z)) {
            z3 = true;
        }
        if (z) {
            sb.append(m2098getInWholeHoursimpl);
            sb.append('H');
        }
        if (z3) {
            sb.append(m2104getMinutesComponentimpl);
            sb.append('M');
        }
        if (z2 || (!z && !z3)) {
            m2130x3271d0aa(sb, m2106getSecondsComponentimpl, m2105getNanosecondsComponentimpl, 9, ExifInterface.LATITUDE_SOUTH, true);
        }
        return sb.toString();
    }

    /* renamed from: toLong-impl, reason: not valid java name */
    public static final long m2123toLongimpl(long j, @NotNull DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (j == f1702x1378447b) {
            return Long.MAX_VALUE;
        }
        if (j == f1703x75d576dc) {
            return Long.MIN_VALUE;
        }
        return AbstractC0690xd52c7705.convertDurationUnit(j >> 1, m2131x1378447b(j), unit);
    }

    @NotNull
    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2124toStringimpl(long j) {
        if (j == 0) {
            return "0s";
        }
        if (j == f1702x1378447b) {
            return "Infinity";
        }
        if (j == f1703x75d576dc) {
            return "-Infinity";
        }
        boolean m2110isNegativeimpl = m2110isNegativeimpl(j);
        StringBuilder sb = new StringBuilder();
        if (m2110isNegativeimpl) {
            sb.append('-');
        }
        long m2095getAbsoluteValueUwyO8pc = m2095getAbsoluteValueUwyO8pc(j);
        long m2097getInWholeDaysimpl = m2097getInWholeDaysimpl(m2095getAbsoluteValueUwyO8pc);
        int m2096getHoursComponentimpl = m2096getHoursComponentimpl(m2095getAbsoluteValueUwyO8pc);
        int m2104getMinutesComponentimpl = m2104getMinutesComponentimpl(m2095getAbsoluteValueUwyO8pc);
        int m2106getSecondsComponentimpl = m2106getSecondsComponentimpl(m2095getAbsoluteValueUwyO8pc);
        int m2105getNanosecondsComponentimpl = m2105getNanosecondsComponentimpl(m2095getAbsoluteValueUwyO8pc);
        int i = 0;
        boolean z = m2097getInWholeDaysimpl != 0;
        boolean z2 = m2096getHoursComponentimpl != 0;
        boolean z3 = m2104getMinutesComponentimpl != 0;
        boolean z4 = (m2106getSecondsComponentimpl == 0 && m2105getNanosecondsComponentimpl == 0) ? false : true;
        if (z) {
            sb.append(m2097getInWholeDaysimpl);
            sb.append('d');
            i = 1;
        }
        if (z2 || (z && (z3 || z4))) {
            int i2 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(m2096getHoursComponentimpl);
            sb.append('h');
            i = i2;
        }
        if (z3 || (z4 && (z2 || z))) {
            int i3 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(m2104getMinutesComponentimpl);
            sb.append('m');
            i = i3;
        }
        if (z4) {
            int i4 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            if (m2106getSecondsComponentimpl != 0 || z || z2 || z3) {
                m2130x3271d0aa(sb, m2106getSecondsComponentimpl, m2105getNanosecondsComponentimpl, 9, "s", false);
            } else if (m2105getNanosecondsComponentimpl >= 1000000) {
                m2130x3271d0aa(sb, m2105getNanosecondsComponentimpl / DurationKt.NANOS_IN_MILLIS, m2105getNanosecondsComponentimpl % DurationKt.NANOS_IN_MILLIS, 6, "ms", false);
            } else if (m2105getNanosecondsComponentimpl >= 1000) {
                m2130x3271d0aa(sb, m2105getNanosecondsComponentimpl / 1000, m2105getNanosecondsComponentimpl % 1000, 3, "us", false);
            } else {
                sb.append(m2105getNanosecondsComponentimpl);
                sb.append("ns");
            }
            i = i4;
        }
        if (m2110isNegativeimpl && i > 1) {
            sb.insert(1, '(').append(')');
        }
        return sb.toString();
    }

    /* renamed from: toString-impl$default, reason: not valid java name */
    public static /* synthetic */ String m2126toStringimpl$default(long j, DurationUnit durationUnit, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return m2125toStringimpl(j, durationUnit, i);
    }

    /* renamed from: truncateTo-UwyO8pc$kotlin_stdlib, reason: not valid java name */
    public static final long m2127truncateToUwyO8pc$kotlin_stdlib(long j, @NotNull DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        DurationUnit m2131x1378447b = m2131x1378447b(j);
        if (unit.compareTo(m2131x1378447b) > 0 && !m2109isInfiniteimpl(j)) {
            long j2 = j >> 1;
            return DurationKt.toDuration(j2 - (j2 % AbstractC0690xd52c7705.convertDurationUnit(1L, unit, m2131x1378447b)), m2131x1378447b);
        }
        return j;
    }

    /* renamed from: unaryMinus-UwyO8pc, reason: not valid java name */
    public static final long m2128unaryMinusUwyO8pc(long j) {
        return DurationKt.access$durationOf(-(j >> 1), ((int) j) & 1);
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final long m2129xfbe0c504(long j, long j2) {
        long access$nanosToMillis = DurationKt.access$nanosToMillis(j2);
        long j3 = j + access$nanosToMillis;
        if (-4611686018426L <= j3 && j3 < 4611686018427L) {
            return DurationKt.access$durationOfNanos(DurationKt.access$millisToNanos(j3) + (j2 - DurationKt.access$millisToNanos(access$nanosToMillis)));
        }
        return DurationKt.access$durationOfMillis(AbstractC0296x1378447b.coerceIn(j3, -4611686018427387903L, DurationKt.MAX_MILLIS));
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final void m2130x3271d0aa(StringBuilder sb, int i, int i2, int i3, String str, boolean z) {
        sb.append(i);
        if (i2 != 0) {
            sb.append('.');
            String padStart = StringsKt__StringsKt.padStart(String.valueOf(i2), i3, '0');
            int i4 = -1;
            int length = padStart.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i5 = length - 1;
                    if (padStart.charAt(length) != '0') {
                        i4 = length;
                        break;
                    } else if (i5 < 0) {
                        break;
                    } else {
                        length = i5;
                    }
                }
            }
            int i6 = i4 + 1;
            if (!z && i6 < 3) {
                sb.append((CharSequence) padStart, 0, i6);
                Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            } else {
                sb.append((CharSequence) padStart, 0, ((i4 + 3) / 3) * 3);
                Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            }
        }
        sb.append(str);
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final DurationUnit m2131x1378447b(long j) {
        if (m2132x75d576dc(j)) {
            return DurationUnit.NANOSECONDS;
        }
        return DurationUnit.MILLISECONDS;
    }

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public static final boolean m2132x75d576dc(long j) {
        return (((int) j) & 1) == 0;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Duration duration) {
        return m2133compareToLRDsOJo(duration.getF1704xfbe0c504());
    }

    /* renamed from: compareTo-LRDsOJo, reason: not valid java name */
    public int m2133compareToLRDsOJo(long j) {
        return m2088compareToLRDsOJo(this.f1704xfbe0c504, j);
    }

    public boolean equals(Object other) {
        return m2093equalsimpl(this.f1704xfbe0c504, other);
    }

    public int hashCode() {
        return m2107hashCodeimpl(this.f1704xfbe0c504);
    }

    @NotNull
    public String toString() {
        return m2124toStringimpl(this.f1704xfbe0c504);
    }

    /* renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ long getF1704xfbe0c504() {
        return this.f1704xfbe0c504;
    }

    /* renamed from: compareTo-LRDsOJo, reason: not valid java name */
    public static int m2088compareToLRDsOJo(long j, long j2) {
        long j3 = j ^ j2;
        if (j3 < 0 || (((int) j3) & 1) == 0) {
            return Intrinsics.compare(j, j2);
        }
        int i = (((int) j) & 1) - (((int) j2) & 1);
        return m2110isNegativeimpl(j) ? -i : i;
    }

    /* renamed from: toComponents-impl, reason: not valid java name */
    public static final <T> T m2118toComponentsimpl(long j, @NotNull Function4<? super Long, ? super Integer, ? super Integer, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Long.valueOf(m2098getInWholeHoursimpl(j)), Integer.valueOf(m2104getMinutesComponentimpl(j)), Integer.valueOf(m2106getSecondsComponentimpl(j)), Integer.valueOf(m2105getNanosecondsComponentimpl(j)));
    }

    /* renamed from: toComponents-impl, reason: not valid java name */
    public static final <T> T m2117toComponentsimpl(long j, @NotNull Function3<? super Long, ? super Integer, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Long.valueOf(m2101getInWholeMinutesimpl(j)), Integer.valueOf(m2106getSecondsComponentimpl(j)), Integer.valueOf(m2105getNanosecondsComponentimpl(j)));
    }

    /* renamed from: toComponents-impl, reason: not valid java name */
    public static final <T> T m2116toComponentsimpl(long j, @NotNull Function2<? super Long, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Long.valueOf(m2103getInWholeSecondsimpl(j)), Integer.valueOf(m2105getNanosecondsComponentimpl(j)));
    }

    /* renamed from: div-UwyO8pc, reason: not valid java name */
    public static final long m2091divUwyO8pc(long j, double d) {
        int roundToInt = AbstractC0975x7c3950e5.roundToInt(d);
        if (roundToInt == d && roundToInt != 0) {
            return m2092divUwyO8pc(j, roundToInt);
        }
        DurationUnit m2131x1378447b = m2131x1378447b(j);
        return DurationKt.toDuration(m2120toDoubleimpl(j, m2131x1378447b) / d, m2131x1378447b);
    }

    /* renamed from: times-UwyO8pc, reason: not valid java name */
    public static final long m2114timesUwyO8pc(long j, double d) {
        int roundToInt = AbstractC0975x7c3950e5.roundToInt(d);
        if (roundToInt == d) {
            return m2115timesUwyO8pc(j, roundToInt);
        }
        DurationUnit m2131x1378447b = m2131x1378447b(j);
        return DurationKt.toDuration(m2120toDoubleimpl(j, m2131x1378447b) * d, m2131x1378447b);
    }

    @NotNull
    /* renamed from: toString-impl, reason: not valid java name */
    public static final String m2125toStringimpl(long j, @NotNull DurationUnit unit, int i) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (i >= 0) {
            double m2120toDoubleimpl = m2120toDoubleimpl(j, unit);
            if (Double.isInfinite(m2120toDoubleimpl)) {
                return String.valueOf(m2120toDoubleimpl);
            }
            return DurationJvmKt.formatToExactDecimals(m2120toDoubleimpl, AbstractC0296x1378447b.coerceAtMost(i, 12)) + AbstractC0691xdc9a9f41.shortName(unit);
        }
        throw new IllegalArgumentException(AbstractC0362x4440ab85.m2929x9738a56c(i, "decimals must be not negative, but was ").toString());
    }
}
