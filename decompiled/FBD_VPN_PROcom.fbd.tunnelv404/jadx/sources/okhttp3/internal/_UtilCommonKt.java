package okhttp3.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import coil3.content.UtilsKt;
import defpackage.AbstractC0586x968d4673;
import defpackage.AbstractC0720xaa9ccb5a;
import defpackage.AbstractC1197x89633db9;
import java.io.Closeable;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.FileSystem;
import okio.Options;
import okio.Path;
import okio.Sink;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000ì\u0001\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010\f\n\u0002\b\t\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\n\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a%\u0010\u0006\u001a\u0004\u0018\u00010\u0005*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003H\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001aI\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\b*\b\u0012\u0004\u0012\u00020\t0\b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u001a\u0010\r\u001a\u0016\u0012\u0006\b\u0000\u0012\u00020\t0\u000bj\n\u0012\u0006\b\u0000\u0012\u00020\t`\fH\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u001aE\u0010\u0011\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\t0\b2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b2\u001a\u0010\r\u001a\u0016\u0012\u0006\b\u0000\u0012\u00020\t0\u000bj\n\u0012\u0006\b\u0000\u0012\u00020\t`\fH\u0000¢\u0006\u0004\b\u0011\u0010\u0012\u001a9\u0010\u0014\u001a\u00020\u0003*\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0013\u001a\u00020\t2\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\t0\u000bj\b\u0012\u0004\u0012\u00020\t`\fH\u0000¢\u0006\u0004\b\u0014\u0010\u0015\u001a'\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\t0\b*\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0013\u001a\u00020\tH\u0000¢\u0006\u0004\b\u0016\u0010\u0017\u001a'\u0010\u001a\u001a\u00020\u0003*\u00020\t2\b\b\u0002\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0019\u001a\u00020\u0003H\u0000¢\u0006\u0004\b\u001a\u0010\u001b\u001a'\u0010\u001c\u001a\u00020\u0003*\u00020\t2\b\b\u0002\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0019\u001a\u00020\u0003H\u0000¢\u0006\u0004\b\u001c\u0010\u001b\u001a%\u0010\u001d\u001a\u00020\t*\u00020\t2\b\b\u0002\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0019\u001a\u00020\u0003¢\u0006\u0004\b\u001d\u0010\u001e\u001a-\u0010 \u001a\u00020\u0003*\u00020\t2\u0006\u0010\u001f\u001a\u00020\t2\b\b\u0002\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0019\u001a\u00020\u0003¢\u0006\u0004\b \u0010!\u001a-\u0010 \u001a\u00020\u0003*\u00020\t2\u0006\u0010#\u001a\u00020\"2\b\b\u0002\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0019\u001a\u00020\u0003¢\u0006\u0004\b \u0010$\u001a\u0013\u0010%\u001a\u00020\u0003*\u00020\tH\u0000¢\u0006\u0004\b%\u0010&\u001a\u0017\u0010(\u001a\u00020\u00102\u0006\u0010'\u001a\u00020\tH\u0000¢\u0006\u0004\b(\u0010)\u001a\u0013\u0010*\u001a\u00020\u0003*\u00020\"H\u0000¢\u0006\u0004\b*\u0010+\u001a\u001c\u0010.\u001a\u00020\u0003*\u00020,2\u0006\u0010-\u001a\u00020\u0003H\u0080\u0004¢\u0006\u0004\b.\u0010/\u001a\u001c\u0010.\u001a\u00020\u0003*\u0002002\u0006\u0010-\u001a\u00020\u0003H\u0080\u0004¢\u0006\u0004\b.\u00101\u001a\u001c\u0010.\u001a\u000202*\u00020\u00032\u0006\u0010-\u001a\u000202H\u0080\u0004¢\u0006\u0004\b.\u00103\u001a\u001b\u00107\u001a\u000206*\u0002042\u0006\u00105\u001a\u00020\u0003H\u0000¢\u0006\u0004\b7\u00108\u001a\u0013\u0010:\u001a\u00020\u0003*\u000209H\u0000¢\u0006\u0004\b:\u0010;\u001a!\u0010>\u001a\u0002062\f\u0010=\u001a\b\u0012\u0004\u0012\u0002060<H\u0080\bø\u0001\u0000¢\u0006\u0004\b>\u0010?\u001a\u001b\u0010B\u001a\u00020\u0003*\u00020@2\u0006\u0010A\u001a\u00020,H\u0000¢\u0006\u0004\bB\u0010C\u001a\u001d\u0010D\u001a\u00020\u0003*\u00020\t2\b\b\u0002\u0010\u0018\u001a\u00020\u0003H\u0000¢\u0006\u0004\bD\u0010E\u001a\u0019\u0010G\u001a\u000202*\u00020\t2\u0006\u0010F\u001a\u000202¢\u0006\u0004\bG\u0010H\u001a\u001d\u0010I\u001a\u00020\u0003*\u0004\u0018\u00010\t2\u0006\u0010F\u001a\u00020\u0003H\u0000¢\u0006\u0004\bI\u0010E\u001a\u0015\u0010L\u001a\u000206*\u00060Jj\u0002`K¢\u0006\u0004\bL\u0010M\u001a\u001b\u0010Q\u001a\u00020\u0010*\u00020N2\u0006\u0010P\u001a\u00020OH\u0000¢\u0006\u0004\bQ\u0010R\u001a\u001b\u0010T\u001a\u000206*\u00020N2\u0006\u0010S\u001a\u00020OH\u0000¢\u0006\u0004\bT\u0010U\u001a\u001b\u0010W\u001a\u000206*\u00020N2\u0006\u0010V\u001a\u00020OH\u0000¢\u0006\u0004\bW\u0010U\u001a'\u0010[\u001a\u000206\"\u0004\b\u0000\u0010X*\b\u0012\u0004\u0012\u00028\u00000Y2\u0006\u0010Z\u001a\u00028\u0000H\u0000¢\u0006\u0004\b[\u0010\\\u001a)\u0010b\u001a\u00020a*\u00060]j\u0002`^2\u0010\u0010`\u001a\f\u0012\b\u0012\u00060]j\u0002`^0_H\u0000¢\u0006\u0004\bb\u0010c\u001aB\u0010i\u001a\b\u0012\u0004\u0012\u00028\u00000_\"\u0004\b\u0000\u0010d*\b\u0012\u0004\u0012\u00028\u00000e2\u0017\u0010h\u001a\u0013\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00100f¢\u0006\u0002\bgH\u0080\bø\u0001\u0000¢\u0006\u0004\bi\u0010j\u001a'\u0010n\u001a\u0002062\u0006\u0010k\u001a\u0002022\u0006\u0010l\u001a\u0002022\u0006\u0010m\u001a\u000202H\u0000¢\u0006\u0004\bn\u0010o\u001a7\u0010q\u001a\b\u0012\u0004\u0012\u00028\u00000_\"\u0004\b\u0000\u0010d2\f\u0010p\u001a\b\u0012\u0004\u0012\u00028\u00000e2\f\u0010A\u001a\b\u0012\u0004\u0012\u00028\u00000eH\u0000¢\u0006\u0004\bq\u0010r\u001a#\u0010s\u001a\b\u0012\u0004\u0012\u00028\u00000_\"\u0004\b\u0000\u0010d*\b\u0012\u0004\u0012\u00028\u00000_¢\u0006\u0004\bs\u0010t\u001a#\u0010s\u001a\b\u0012\u0004\u0012\u00028\u00000u\"\u0004\b\u0000\u0010d*\b\u0012\u0004\u0012\u00028\u00000u¢\u0006\u0004\bs\u0010v\"\u0014\u0010x\u001a\u00020w8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bx\u0010y\"\u001a\u0010\u007f\u001a\u00020z8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b{\u0010|\u001a\u0004\b}\u0010~\"\u0017\u0010\u0080\u0001\u001a\u00020\t8\u0000X\u0080T¢\u0006\b\n\u0006\b\u0080\u0001\u0010\u0081\u0001\"\u001d\u0010\u0087\u0001\u001a\u00030\u0082\u00018\u0006¢\u0006\u0010\n\u0006\b\u0083\u0001\u0010\u0084\u0001\u001a\u0006\b\u0085\u0001\u0010\u0086\u0001\"\u001d\u0010\u008d\u0001\u001a\u00030\u0088\u00018\u0006¢\u0006\u0010\n\u0006\b\u0089\u0001\u0010\u008a\u0001\u001a\u0006\b\u008b\u0001\u0010\u008c\u0001\"\u001d\u0010\u0093\u0001\u001a\u00030\u008e\u00018\u0006¢\u0006\u0010\n\u0006\b\u008f\u0001\u0010\u0090\u0001\u001a\u0006\b\u0091\u0001\u0010\u0092\u0001\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0094\u0001"}, d2 = {"Lkotlin/text/Regex;", "", "input", "", "index", "Lkotlin/text/MatchResult;", "matchAtPolyfill", "(Lkotlin/text/Regex;Ljava/lang/CharSequence;I)Lkotlin/text/MatchResult;", "", "", "other", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "comparator", "intersect", "([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;", "", "hasIntersection", "([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z", "value", "indexOf", "([Ljava/lang/String;Ljava/lang/String;Ljava/util/Comparator;)I", "concat", "([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;", "startIndex", "endIndex", "indexOfFirstNonAsciiWhitespace", "(Ljava/lang/String;II)I", "indexOfLastNonAsciiWhitespace", "trimSubstring", "(Ljava/lang/String;II)Ljava/lang/String;", "delimiters", "delimiterOffset", "(Ljava/lang/String;Ljava/lang/String;II)I", "", "delimiter", "(Ljava/lang/String;CII)I", "indexOfControlOrNonAscii", "(Ljava/lang/String;)I", "name", "isSensitiveHeader", "(Ljava/lang/String;)Z", "parseHexDigit", "(C)I", "", "mask", "and", "(BI)I", "", "(SI)I", "", "(IJ)J", "Lokio/BufferedSink;", "medium", "", "writeMedium", "(Lokio/BufferedSink;I)V", "Lokio/BufferedSource;", "readMedium", "(Lokio/BufferedSource;)I", "Lkotlin/Function0;", "block", "ignoreIoExceptions", "(Lkotlin/jvm/functions/Function0;)V", "Lokio/Buffer;", "b", "skipAll", "(Lokio/Buffer;B)I", "indexOfNonWhitespace", "(Ljava/lang/String;I)I", "defaultValue", "toLongOrDefault", "(Ljava/lang/String;J)J", "toNonNegativeInt", "Ljava/io/Closeable;", "Lokio/Closeable;", "closeQuietly", "(Ljava/io/Closeable;)V", "Lokio/FileSystem;", "Lokio/Path;", UtilsKt.SCHEME_FILE, "isCivilized", "(Lokio/FileSystem;Lokio/Path;)Z", "path", "deleteIfExists", "(Lokio/FileSystem;Lokio/Path;)V", "directory", "deleteContents", ExifInterface.LONGITUDE_EAST, "", "element", "addIfAbsent", "(Ljava/util/List;Ljava/lang/Object;)V", "Ljava/lang/Exception;", "Lkotlin/Exception;", "", "suppressed", "", "withSuppressed", "(Ljava/lang/Exception;Ljava/util/List;)Ljava/lang/Throwable;", ExifInterface.GPS_DIRECTION_TRUE, "", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "predicate", "filterList", "(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Ljava/util/List;", "arrayLength", TypedValues.CycleType.S_WAVE_OFFSET, "count", "checkOffsetAndCount", "(JJJ)V", "a", "interleave", "(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;", "readOnly", "(Ljava/util/List;)Ljava/util/List;", "", "(Ljava/util/Set;)Ljava/util/Set;", "", "EMPTY_BYTE_ARRAY", "[B", "Lokio/Options;", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Lokio/Options;", "getUNICODE_BOMS", "()Lokio/Options;", "UNICODE_BOMS", "userAgent", "Ljava/lang/String;", "Lokhttp3/Headers;", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "Lokhttp3/Headers;", "getCommonEmptyHeaders", "()Lokhttp3/Headers;", "commonEmptyHeaders", "Lokhttp3/RequestBody;", "뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉", "Lokhttp3/RequestBody;", "getCommonEmptyRequestBody", "()Lokhttp3/RequestBody;", "commonEmptyRequestBody", "Lokhttp3/ResponseBody;", "뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨", "Lokhttp3/ResponseBody;", "getCommonEmptyResponse", "()Lokhttp3/ResponseBody;", "commonEmptyResponse", "okhttp"}, k = 2, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\n-UtilCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -UtilCommon.kt\nokhttp3/internal/_UtilCommonKt\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 Okio.kt\nokio/Okio__OkioKt\n*L\n1#1,400:1\n37#2,2:401\n1627#3,6:403\n66#4:409\n52#4,21:410\n*S KotlinDebug\n*F\n+ 1 -UtilCommon.kt\nokhttp3/internal/_UtilCommonKt\n*L\n73#1:401,2\n100#1:403,6\n302#1:409\n302#1:410,21\n*E\n"})
/* loaded from: classes3.dex */
public final class _UtilCommonKt {

    @JvmField
    @NotNull
    public static final byte[] EMPTY_BYTE_ARRAY;

    @NotNull
    public static final String userAgent = "okhttp/5.0.0-alpha.12";

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final Options f3003xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final Headers f3004x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final RequestBody f3005x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public static final ResponseBody f3006x75d576dc;

    static {
        byte[] bArr = new byte[0];
        EMPTY_BYTE_ARRAY = bArr;
        Options.Companion companion = Options.INSTANCE;
        ByteString.Companion companion2 = ByteString.INSTANCE;
        f3003xfbe0c504 = companion.of(companion2.decodeHex("efbbbf"), companion2.decodeHex("feff"), companion2.decodeHex("fffe"), companion2.decodeHex("0000ffff"), companion2.decodeHex("ffff0000"));
        f3004x3271d0aa = Headers.INSTANCE.of(new String[0]);
        f3005x1378447b = RequestBody.Companion.create$default(RequestBody.INSTANCE, bArr, (MediaType) null, 0, 0, 7, (Object) null);
        f3006x75d576dc = ResponseBody.Companion.create$default(ResponseBody.INSTANCE, bArr, (MediaType) null, 1, (Object) null);
    }

    public static final <E> void addIfAbsent(@NotNull List<E> list, E e) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (!list.contains(e)) {
            list.add(e);
        }
    }

    public static final int and(byte b, int i) {
        return b & i;
    }

    public static final void checkOffsetAndCount(long j, long j2, long j3) {
        if ((j2 | j3) >= 0 && j2 <= j && j - j2 >= j3) {
            return;
        }
        throw new ArrayIndexOutOfBoundsException("length=" + j + ", offset=" + j2 + ", count=" + j2);
    }

    public static final void closeQuietly(@NotNull Closeable closeable) {
        Intrinsics.checkNotNullParameter(closeable, "<this>");
        try {
            closeable.close();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception unused) {
        }
    }

    @NotNull
    public static final String[] concat(@NotNull String[] strArr, @NotNull String value) {
        Intrinsics.checkNotNullParameter(strArr, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        Object[] copyOf = Arrays.copyOf(strArr, strArr.length + 1);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        String[] strArr2 = (String[]) copyOf;
        strArr2[ArraysKt___ArraysKt.getLastIndex(strArr2)] = value;
        return strArr2;
    }

    public static final void deleteContents(@NotNull FileSystem fileSystem, @NotNull Path directory) {
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(directory, "directory");
        try {
            IOException iOException = null;
            for (Path path : fileSystem.list(directory)) {
                try {
                    if (fileSystem.metadata(path).getIsDirectory()) {
                        deleteContents(fileSystem, path);
                    }
                    fileSystem.delete(path);
                } catch (IOException e) {
                    if (iOException == null) {
                        iOException = e;
                    }
                }
            }
            if (iOException != null) {
                throw iOException;
            }
        } catch (FileNotFoundException unused) {
        }
    }

    public static final void deleteIfExists(@NotNull FileSystem fileSystem, @NotNull Path path) {
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(path, "path");
        try {
            fileSystem.delete(path);
        } catch (FileNotFoundException unused) {
        }
    }

    public static final int delimiterOffset(@NotNull String str, @NotNull String delimiters, int i, int i2) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(delimiters, "delimiters");
        while (i < i2) {
            if (StringsKt__StringsKt.contains$default((CharSequence) delimiters, str.charAt(i), false, 2, (Object) null)) {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static /* synthetic */ int delimiterOffset$default(String str, String str2, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = str.length();
        }
        return delimiterOffset(str, str2, i, i2);
    }

    @NotNull
    public static final <T> List<T> filterList(@NotNull Iterable<? extends T> iterable, @NotNull Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        List<T> emptyList = CollectionsKt__CollectionsKt.emptyList();
        for (T t : iterable) {
            if (predicate.invoke(t).booleanValue()) {
                if (emptyList.isEmpty()) {
                    emptyList = new ArrayList<>();
                }
                Intrinsics.checkNotNull(emptyList, "null cannot be cast to non-null type kotlin.collections.MutableList<T of okhttp3.internal._UtilCommonKt.filterList>");
                TypeIntrinsics.asMutableList(emptyList).add(t);
            }
        }
        return emptyList;
    }

    @NotNull
    public static final Headers getCommonEmptyHeaders() {
        return f3004x3271d0aa;
    }

    @NotNull
    public static final RequestBody getCommonEmptyRequestBody() {
        return f3005x1378447b;
    }

    @NotNull
    public static final ResponseBody getCommonEmptyResponse() {
        return f3006x75d576dc;
    }

    @NotNull
    public static final Options getUNICODE_BOMS() {
        return f3003xfbe0c504;
    }

    public static final boolean hasIntersection(@NotNull String[] strArr, @Nullable String[] strArr2, @NotNull Comparator<? super String> comparator) {
        Intrinsics.checkNotNullParameter(strArr, "<this>");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        if (strArr.length != 0 && strArr2 != null && strArr2.length != 0) {
            for (String str : strArr) {
                Iterator it = ArrayIteratorKt.iterator(strArr2);
                while (it.hasNext()) {
                    if (comparator.compare(str, (String) it.next()) == 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static final void ignoreIoExceptions(@NotNull Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        try {
            block.invoke();
        } catch (IOException unused) {
        }
    }

    public static final int indexOf(@NotNull String[] strArr, @NotNull String value, @NotNull Comparator<String> comparator) {
        Intrinsics.checkNotNullParameter(strArr, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            if (comparator.compare(strArr[i], value) == 0) {
                return i;
            }
        }
        return -1;
    }

    public static final int indexOfControlOrNonAscii(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (Intrinsics.compare((int) charAt, 31) <= 0 || Intrinsics.compare((int) charAt, 127) >= 0) {
                return i;
            }
        }
        return -1;
    }

    public static final int indexOfFirstNonAsciiWhitespace(@NotNull String str, int i, int i2) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        while (i < i2) {
            char charAt = str.charAt(i);
            if (charAt == '\t' || charAt == '\n' || charAt == '\f' || charAt == '\r' || charAt == ' ') {
                i++;
            } else {
                return i;
            }
        }
        return i2;
    }

    public static /* synthetic */ int indexOfFirstNonAsciiWhitespace$default(String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        return indexOfFirstNonAsciiWhitespace(str, i, i2);
    }

    public static final int indexOfLastNonAsciiWhitespace(@NotNull String str, int i, int i2) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        int i3 = i2 - 1;
        if (i <= i3) {
            while (true) {
                char charAt = str.charAt(i3);
                if (charAt == '\t' || charAt == '\n' || charAt == '\f' || charAt == '\r' || charAt == ' ') {
                    if (i3 == i) {
                        break;
                    }
                    i3--;
                } else {
                    return i3 + 1;
                }
            }
        }
        return i;
    }

    public static /* synthetic */ int indexOfLastNonAsciiWhitespace$default(String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        return indexOfLastNonAsciiWhitespace(str, i, i2);
    }

    public static final int indexOfNonWhitespace(@NotNull String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        int length = str.length();
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt != ' ' && charAt != '\t') {
                return i;
            }
            i++;
        }
        return str.length();
    }

    public static /* synthetic */ int indexOfNonWhitespace$default(String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return indexOfNonWhitespace(str, i);
    }

    @NotNull
    public static final <T> List<T> interleave(@NotNull Iterable<? extends T> a, @NotNull Iterable<? extends T> b) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        Iterator<? extends T> it = a.iterator();
        Iterator<? extends T> it2 = b.iterator();
        List createListBuilder = AbstractC0586x968d4673.createListBuilder();
        while (true) {
            if (!it.hasNext() && !it2.hasNext()) {
                return AbstractC0586x968d4673.build(createListBuilder);
            }
            if (it.hasNext()) {
                createListBuilder.add(it.next());
            }
            if (it2.hasNext()) {
                createListBuilder.add(it2.next());
            }
        }
    }

    @NotNull
    public static final String[] intersect(@NotNull String[] strArr, @NotNull String[] other, @NotNull Comparator<? super String> comparator) {
        Intrinsics.checkNotNullParameter(strArr, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            int length = other.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (comparator.compare(str, other[i]) == 0) {
                    arrayList.add(str);
                    break;
                }
                i++;
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final boolean isCivilized(@NotNull FileSystem fileSystem, @NotNull Path file) {
        Unit unit;
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(file, "file");
        Sink sink = fileSystem.sink(file);
        Throwable th = null;
        try {
            try {
                fileSystem.delete(file);
                if (sink != null) {
                    try {
                        sink.close();
                        return true;
                    } catch (Throwable unused) {
                        return true;
                    }
                }
                return true;
            } catch (Throwable th2) {
                if (sink != null) {
                    try {
                        sink.close();
                    } catch (Throwable th3) {
                        AbstractC0720xaa9ccb5a.addSuppressed(th2, th3);
                    }
                }
                unit = null;
                th = th2;
                if (th != null) {
                    Intrinsics.checkNotNull(unit);
                    fileSystem.delete(file);
                    return false;
                }
                throw th;
            }
        } catch (IOException unused2) {
            unit = Unit.INSTANCE;
            if (sink != null) {
                try {
                    sink.close();
                } catch (Throwable th4) {
                    th = th4;
                }
            }
            if (th != null) {
            }
        }
    }

    public static final boolean isSensitiveHeader(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        if (AbstractC1197x89633db9.equals(name, "Authorization", true) || AbstractC1197x89633db9.equals(name, "Cookie", true) || AbstractC1197x89633db9.equals(name, "Proxy-Authorization", true) || AbstractC1197x89633db9.equals(name, "Set-Cookie", true)) {
            return true;
        }
        return false;
    }

    @Nullable
    public static final MatchResult matchAtPolyfill(@NotNull Regex regex, @NotNull CharSequence input, int i) {
        Intrinsics.checkNotNullParameter(regex, "<this>");
        Intrinsics.checkNotNullParameter(input, "input");
        MatchResult find = regex.find(input, i);
        if (find == null || find.getRange().getFirst() != i) {
            return null;
        }
        return find;
    }

    public static final int parseHexDigit(char c) {
        if ('0' <= c && c < ':') {
            return c - '0';
        }
        if ('a' <= c && c < 'g') {
            return c - 'W';
        }
        if ('A' > c || c >= 'G') {
            return -1;
        }
        return c - '7';
    }

    public static final int readMedium(@NotNull BufferedSource bufferedSource) {
        Intrinsics.checkNotNullParameter(bufferedSource, "<this>");
        return and(bufferedSource.readByte(), 255) | (and(bufferedSource.readByte(), 255) << 16) | (and(bufferedSource.readByte(), 255) << 8);
    }

    @NotNull
    public static final <T> List<T> readOnly(@NotNull List<? extends T> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        return CollectionsKt___CollectionsKt.toList(list);
    }

    public static final int skipAll(@NotNull Buffer buffer, byte b) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        int i = 0;
        while (!buffer.exhausted() && buffer.getByte(0L) == b) {
            i++;
            buffer.readByte();
        }
        return i;
    }

    public static final long toLongOrDefault(@NotNull String str, long j) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return j;
        }
    }

    public static final int toNonNegativeInt(@Nullable String str, int i) {
        if (str != null) {
            try {
                long parseLong = Long.parseLong(str);
                if (parseLong > 2147483647L) {
                    return Integer.MAX_VALUE;
                }
                if (parseLong < 0) {
                    return 0;
                }
                return (int) parseLong;
            } catch (NumberFormatException unused) {
            }
        }
        return i;
    }

    @NotNull
    public static final String trimSubstring(@NotNull String str, int i, int i2) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        int indexOfFirstNonAsciiWhitespace = indexOfFirstNonAsciiWhitespace(str, i, i2);
        String substring = str.substring(indexOfFirstNonAsciiWhitespace, indexOfLastNonAsciiWhitespace(str, indexOfFirstNonAsciiWhitespace, i2));
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        return substring;
    }

    public static /* synthetic */ String trimSubstring$default(String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        return trimSubstring(str, i, i2);
    }

    @NotNull
    public static final Throwable withSuppressed(@NotNull Exception exc, @NotNull List<? extends Exception> suppressed) {
        Intrinsics.checkNotNullParameter(exc, "<this>");
        Intrinsics.checkNotNullParameter(suppressed, "suppressed");
        Iterator<? extends Exception> it = suppressed.iterator();
        while (it.hasNext()) {
            AbstractC0720xaa9ccb5a.addSuppressed(exc, it.next());
        }
        return exc;
    }

    public static final void writeMedium(@NotNull BufferedSink bufferedSink, int i) {
        Intrinsics.checkNotNullParameter(bufferedSink, "<this>");
        bufferedSink.writeByte((i >>> 16) & 255);
        bufferedSink.writeByte((i >>> 8) & 255);
        bufferedSink.writeByte(i & 255);
    }

    public static final int and(short s, int i) {
        return s & i;
    }

    public static final int delimiterOffset(@NotNull String str, char c, int i, int i2) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        while (i < i2) {
            if (str.charAt(i) == c) {
                return i;
            }
            i++;
        }
        return i2;
    }

    @NotNull
    public static final <T> Set<T> readOnly(@NotNull Set<? extends T> set) {
        Intrinsics.checkNotNullParameter(set, "<this>");
        return CollectionsKt___CollectionsKt.toSet(set);
    }

    public static final long and(int i, long j) {
        return i & j;
    }

    public static /* synthetic */ int delimiterOffset$default(String str, char c, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = str.length();
        }
        return delimiterOffset(str, c, i, i2);
    }
}
