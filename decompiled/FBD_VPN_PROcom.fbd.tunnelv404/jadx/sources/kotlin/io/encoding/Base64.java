package kotlin.io.encoding;

import androidx.exifinterface.media.ExifInterface;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.collections.AbstractList;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.AbstractC0298xfbe0c504;
import kotlin.text.Charsets;
import okio.Utf8;
import org.jetbrains.annotations.NotNull;

@ExperimentalEncodingApi
@SinceKotlin(version = "1.8")
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\r\n\u0002\b\u0012\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0017\u0018\u0000 @2\u00020\u0001:\u0002A@J\u0017\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0004\u0010\u0005J)\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ;\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\b\b\u0002\u0010\u000e\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u000f\u0010\u0010J)\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u0012\u0010\u0013J?\u0010\u0017\u001a\u00028\u0000\"\f\b\u0000\u0010\u0016*\u00060\u0014j\u0002`\u00152\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00028\u00002\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u0017\u0010\u0018J)\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u0019\u0010\fJ;\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\b\b\u0002\u0010\u000e\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u001a\u0010\u0010J)\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u001b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u0019\u0010\u001cJ;\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u001b2\u0006\u0010\r\u001a\u00020\u00062\b\b\u0002\u0010\u000e\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u001a\u0010\u001dJ'\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0000¢\u0006\u0004\b\u001e\u0010\fJ7\u0010!\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0000¢\u0006\u0004\b \u0010\u0010J\u0017\u0010%\u001a\u00020\b2\u0006\u0010\"\u001a\u00020\bH\u0000¢\u0006\u0004\b#\u0010$J'\u0010(\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0000¢\u0006\u0004\b&\u0010'J'\u0010*\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u001b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0000¢\u0006\u0004\b)\u0010\u001cJ\u0017\u0010-\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u0006H\u0000¢\u0006\u0004\b+\u0010,J'\u00101\u001a\u00020.2\u0006\u0010\"\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0000¢\u0006\u0004\b/\u00100R\u001a\u00107\u001a\u0002028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b3\u00104\u001a\u0004\b5\u00106R\u001a\u0010:\u001a\u0002028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b8\u00104\u001a\u0004\b9\u00106R\u001a\u0010?\u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>¨\u0006B"}, d2 = {"Lkotlin/io/encoding/Base64;", "", "Lkotlin/io/encoding/Base64$PaddingOption;", "option", "withPadding", "(Lkotlin/io/encoding/Base64$PaddingOption;)Lkotlin/io/encoding/Base64;", "", "source", "", "startIndex", "endIndex", "encodeToByteArray", "([BII)[B", "destination", "destinationOffset", "encodeIntoByteArray", "([B[BIII)I", "", "encode", "([BII)Ljava/lang/String;", "Ljava/lang/Appendable;", "Lkotlin/text/Appendable;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "encodeToAppendable", "([BLjava/lang/Appendable;II)Ljava/lang/Appendable;", "decode", "decodeIntoByteArray", "", "(Ljava/lang/CharSequence;II)[B", "(Ljava/lang/CharSequence;[BIII)I", "encodeToByteArrayImpl$kotlin_stdlib", "encodeToByteArrayImpl", "encodeIntoByteArrayImpl$kotlin_stdlib", "encodeIntoByteArrayImpl", "sourceSize", "encodeSize$kotlin_stdlib", "(I)I", "encodeSize", "decodeSize$kotlin_stdlib", "([BII)I", "decodeSize", "charsToBytesImpl$kotlin_stdlib", "charsToBytesImpl", "bytesToStringImpl$kotlin_stdlib", "([B)Ljava/lang/String;", "bytesToStringImpl", "", "checkSourceBounds$kotlin_stdlib", "(III)V", "checkSourceBounds", "", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Z", "isUrlSafe$kotlin_stdlib", "()Z", "isUrlSafe", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "isMimeScheme$kotlin_stdlib", "isMimeScheme", "뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉", "Lkotlin/io/encoding/Base64$PaddingOption;", "getPaddingOption$kotlin_stdlib", "()Lkotlin/io/encoding/Base64$PaddingOption;", "paddingOption", "Default", "PaddingOption", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public class Base64 {
    public static final int bytesPerGroup = 3;
    public static final int mimeLineLength = 76;
    public static final byte padSymbol = 61;
    public static final int symbolsPerGroup = 4;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public static final Base64 f1403x9738a56c;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public static final Base64 f1404x9e171bf9;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
    public final boolean isUrlSafe;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters and from kotlin metadata */
    public final boolean isMimeScheme;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters and from kotlin metadata */
    public final PaddingOption paddingOption;

    /* renamed from: Default, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public static final byte[] f1402x75d576dc = {13, 10};

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0005\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\u0007\u001a\u00020\u00018\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0017\u0010\u000b\u001a\u00020\u00018\u0006¢\u0006\f\n\u0004\b\u000b\u0010\b\u001a\u0004\b\f\u0010\nR\u0014\u0010\u000e\u001a\u00020\r8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u000fR\u0014\u0010\u0011\u001a\u00020\r8\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0011\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\r8\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0012\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00138\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\r8\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0016\u0010\u000fR\u0014\u0010\u0017\u001a\u00020\r8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0017\u0010\u000f¨\u0006\u0018"}, d2 = {"Lkotlin/io/encoding/Base64$Default;", "Lkotlin/io/encoding/Base64;", "", "mimeLineSeparatorSymbols", "[B", "getMimeLineSeparatorSymbols$kotlin_stdlib", "()[B", "UrlSafe", "Lkotlin/io/encoding/Base64;", "getUrlSafe", "()Lkotlin/io/encoding/Base64;", "Mime", "getMime", "", "bitsPerByte", "I", "bitsPerSymbol", "bytesPerGroup", "symbolsPerGroup", "", "padSymbol", "B", "mimeLineLength", "mimeGroupsPerLine", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* renamed from: kotlin.io.encoding.Base64$Default, reason: from kotlin metadata */
    /* loaded from: classes3.dex */
    public static final class Companion extends Base64 {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            super(r1, r1, PaddingOption.PRESENT, null);
            boolean z = false;
        }

        @NotNull
        public final Base64 getMime() {
            return Base64.f1404x9e171bf9;
        }

        @NotNull
        public final byte[] getMimeLineSeparatorSymbols$kotlin_stdlib() {
            return Base64.f1402x75d576dc;
        }

        @NotNull
        public final Base64 getUrlSafe() {
            return Base64.f1403x9738a56c;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @SinceKotlin(version = "2.0")
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/io/encoding/Base64$PaddingOption;", "", "PRESENT", "ABSENT", "PRESENT_OPTIONAL", "ABSENT_OPTIONAL", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class PaddingOption {
        public static final PaddingOption ABSENT;
        public static final PaddingOption ABSENT_OPTIONAL;
        public static final PaddingOption PRESENT;
        public static final PaddingOption PRESENT_OPTIONAL;

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
        public static final /* synthetic */ PaddingOption[] f1408xfbe0c504;

        /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
        public static final /* synthetic */ EnumEntries f1409x3271d0aa;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v0, types: [kotlin.io.encoding.Base64$PaddingOption, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r5v1, types: [kotlin.io.encoding.Base64$PaddingOption, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r6v1, types: [kotlin.io.encoding.Base64$PaddingOption, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r7v1, types: [kotlin.io.encoding.Base64$PaddingOption, java.lang.Enum] */
        static {
            ?? r4 = new Enum("PRESENT", 0);
            PRESENT = r4;
            ?? r5 = new Enum("ABSENT", 1);
            ABSENT = r5;
            ?? r6 = new Enum("PRESENT_OPTIONAL", 2);
            PRESENT_OPTIONAL = r6;
            ?? r7 = new Enum("ABSENT_OPTIONAL", 3);
            ABSENT_OPTIONAL = r7;
            PaddingOption[] paddingOptionArr = {r4, r5, r6, r7};
            f1408xfbe0c504 = paddingOptionArr;
            f1409x3271d0aa = EnumEntriesKt.enumEntries(paddingOptionArr);
        }

        @NotNull
        public static EnumEntries<PaddingOption> getEntries() {
            return f1409x3271d0aa;
        }

        public static PaddingOption valueOf(String str) {
            return (PaddingOption) Enum.valueOf(PaddingOption.class, str);
        }

        public static PaddingOption[] values() {
            return (PaddingOption[]) f1408xfbe0c504.clone();
        }
    }

    static {
        PaddingOption paddingOption = PaddingOption.PRESENT;
        f1403x9738a56c = new Base64(true, false, paddingOption);
        f1404x9e171bf9 = new Base64(false, true, paddingOption);
    }

    public /* synthetic */ Base64(boolean z, boolean z2, PaddingOption paddingOption, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, z2, paddingOption);
    }

    public static /* synthetic */ byte[] decode$default(Base64 base64, byte[] bArr, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decode");
        }
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = bArr.length;
        }
        return base64.decode(bArr, i, i2);
    }

    public static /* synthetic */ int decodeIntoByteArray$default(Base64 base64, byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decodeIntoByteArray");
        }
        int i5 = (i4 & 4) != 0 ? 0 : i;
        int i6 = (i4 & 8) != 0 ? 0 : i2;
        if ((i4 & 16) != 0) {
            i3 = bArr.length;
        }
        return base64.decodeIntoByteArray(bArr, bArr2, i5, i6, i3);
    }

    public static /* synthetic */ String encode$default(Base64 base64, byte[] bArr, int i, int i2, int i3, Object obj) {
        if (obj == null) {
            if ((i3 & 2) != 0) {
                i = 0;
            }
            if ((i3 & 4) != 0) {
                i2 = bArr.length;
            }
            return base64.encode(bArr, i, i2);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: encode");
    }

    public static /* synthetic */ int encodeIntoByteArray$default(Base64 base64, byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4, Object obj) {
        int i5;
        int i6;
        if (obj == null) {
            if ((i4 & 4) != 0) {
                i5 = 0;
            } else {
                i5 = i;
            }
            if ((i4 & 8) != 0) {
                i6 = 0;
            } else {
                i6 = i2;
            }
            if ((i4 & 16) != 0) {
                i3 = bArr.length;
            }
            return base64.encodeIntoByteArray(bArr, bArr2, i5, i6, i3);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: encodeIntoByteArray");
    }

    public static /* synthetic */ Appendable encodeToAppendable$default(Base64 base64, byte[] bArr, Appendable appendable, int i, int i2, int i3, Object obj) {
        if (obj == null) {
            if ((i3 & 4) != 0) {
                i = 0;
            }
            if ((i3 & 8) != 0) {
                i2 = bArr.length;
            }
            return base64.encodeToAppendable(bArr, appendable, i, i2);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: encodeToAppendable");
    }

    public static /* synthetic */ byte[] encodeToByteArray$default(Base64 base64, byte[] bArr, int i, int i2, int i3, Object obj) {
        if (obj == null) {
            if ((i3 & 2) != 0) {
                i = 0;
            }
            if ((i3 & 4) != 0) {
                i2 = bArr.length;
            }
            return base64.encodeToByteArray(bArr, i, i2);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: encodeToByteArray");
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static void m1977xfbe0c504(int i, int i2, int i3) {
        if (i2 >= 0 && i2 <= i) {
            int i4 = i2 + i3;
            if (i4 >= 0 && i4 <= i) {
                return;
            }
            StringBuilder m2937x8c6fc18a = AbstractC0362x4440ab85.m2937x8c6fc18a(i2, i, "The destination array does not have enough capacity, destination offset: ", ", destination size: ", ", capacity needed: ");
            m2937x8c6fc18a.append(i3);
            throw new IndexOutOfBoundsException(m2937x8c6fc18a.toString());
        }
        throw new IndexOutOfBoundsException(AbstractC0749x8313616e.m3329x34271fae(i2, i, "destination offset: ", ", destination size: "));
    }

    @NotNull
    public final String bytesToStringImpl$kotlin_stdlib(@NotNull byte[] source) {
        Intrinsics.checkNotNullParameter(source, "source");
        StringBuilder sb = new StringBuilder(source.length);
        for (byte b : source) {
            sb.append((char) b);
        }
        return sb.toString();
    }

    @NotNull
    public final byte[] charsToBytesImpl$kotlin_stdlib(@NotNull CharSequence source, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        checkSourceBounds$kotlin_stdlib(source.length(), startIndex, endIndex);
        byte[] bArr = new byte[endIndex - startIndex];
        int i = 0;
        while (startIndex < endIndex) {
            char charAt = source.charAt(startIndex);
            if (charAt <= 255) {
                bArr[i] = (byte) charAt;
                i++;
            } else {
                bArr[i] = Utf8.REPLACEMENT_BYTE;
                i++;
            }
            startIndex++;
        }
        return bArr;
    }

    public final void checkSourceBounds$kotlin_stdlib(int sourceSize, int startIndex, int endIndex) {
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(startIndex, endIndex, sourceSize);
    }

    @NotNull
    public final byte[] decode(@NotNull byte[] source, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        checkSourceBounds$kotlin_stdlib(source.length, startIndex, endIndex);
        int decodeSize$kotlin_stdlib = decodeSize$kotlin_stdlib(source, startIndex, endIndex);
        byte[] bArr = new byte[decodeSize$kotlin_stdlib];
        if (m1978x3271d0aa(source, bArr, 0, startIndex, endIndex) == decodeSize$kotlin_stdlib) {
            return bArr;
        }
        throw new IllegalStateException("Check failed.");
    }

    public final int decodeIntoByteArray(@NotNull byte[] source, @NotNull byte[] destination, int destinationOffset, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(destination, "destination");
        checkSourceBounds$kotlin_stdlib(source.length, startIndex, endIndex);
        m1977xfbe0c504(destination.length, destinationOffset, decodeSize$kotlin_stdlib(source, startIndex, endIndex));
        return m1978x3271d0aa(source, destination, destinationOffset, startIndex, endIndex);
    }

    public final int decodeSize$kotlin_stdlib(@NotNull byte[] source, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        int i = endIndex - startIndex;
        if (i == 0) {
            return 0;
        }
        if (i != 1) {
            if (this.isMimeScheme) {
                while (true) {
                    if (startIndex >= endIndex) {
                        break;
                    }
                    int i2 = Base64Kt.access$getBase64DecodeMap$p()[source[startIndex] & 255];
                    if (i2 < 0) {
                        if (i2 == -2) {
                            i -= endIndex - startIndex;
                            break;
                        }
                        i--;
                    }
                    startIndex++;
                }
            } else if (source[endIndex - 1] == 61) {
                int i3 = i - 1;
                if (source[endIndex - 2] == 61) {
                    i -= 2;
                } else {
                    i = i3;
                }
            }
            return (int) ((i * 6) / 8);
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3329x34271fae(startIndex, endIndex, "Input should have at least 2 symbols for Base64 decoding, startIndex: ", ", endIndex: "));
    }

    @NotNull
    public final String encode(@NotNull byte[] source, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        return new String(encodeToByteArrayImpl$kotlin_stdlib(source, startIndex, endIndex), Charsets.ISO_8859_1);
    }

    public final int encodeIntoByteArray(@NotNull byte[] source, @NotNull byte[] destination, int destinationOffset, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(destination, "destination");
        return encodeIntoByteArrayImpl$kotlin_stdlib(source, destination, destinationOffset, startIndex, endIndex);
    }

    public final int encodeIntoByteArrayImpl$kotlin_stdlib(@NotNull byte[] source, @NotNull byte[] destination, int destinationOffset, int startIndex, int endIndex) {
        byte[] access$getBase64EncodeMap$p;
        int i;
        int i2;
        int i3 = startIndex;
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(destination, "destination");
        checkSourceBounds$kotlin_stdlib(source.length, i3, endIndex);
        m1977xfbe0c504(destination.length, destinationOffset, encodeSize$kotlin_stdlib(endIndex - i3));
        if (this.isUrlSafe) {
            access$getBase64EncodeMap$p = Base64Kt.access$getBase64UrlEncodeMap$p();
        } else {
            access$getBase64EncodeMap$p = Base64Kt.access$getBase64EncodeMap$p();
        }
        if (this.isMimeScheme) {
            i = 19;
        } else {
            i = Integer.MAX_VALUE;
        }
        int i4 = destinationOffset;
        while (true) {
            i2 = i3 + 2;
            if (i2 >= endIndex) {
                break;
            }
            int min = Math.min((endIndex - i3) / 3, i);
            for (int i5 = 0; i5 < min; i5++) {
                int i6 = source[i3] & 255;
                int i7 = i3 + 2;
                int i8 = source[i3 + 1] & 255;
                i3 += 3;
                int i9 = (i8 << 8) | (i6 << 16) | (source[i7] & 255);
                destination[i4] = access$getBase64EncodeMap$p[i9 >>> 18];
                destination[i4 + 1] = access$getBase64EncodeMap$p[(i9 >>> 12) & 63];
                int i10 = i4 + 3;
                destination[i4 + 2] = access$getBase64EncodeMap$p[(i9 >>> 6) & 63];
                i4 += 4;
                destination[i10] = access$getBase64EncodeMap$p[i9 & 63];
            }
            if (min == i && i3 != endIndex) {
                int i11 = i4 + 1;
                byte[] bArr = f1402x75d576dc;
                destination[i4] = bArr[0];
                i4 += 2;
                destination[i11] = bArr[1];
            }
        }
        int i12 = endIndex - i3;
        PaddingOption paddingOption = this.paddingOption;
        if (i12 != 1) {
            if (i12 == 2) {
                int i13 = i3 + 1;
                int i14 = source[i3] & 255;
                int i15 = ((source[i13] & 255) << 2) | (i14 << 10);
                destination[i4] = access$getBase64EncodeMap$p[i15 >>> 12];
                destination[i4 + 1] = access$getBase64EncodeMap$p[(i15 >>> 6) & 63];
                int i16 = i4 + 3;
                destination[i4 + 2] = access$getBase64EncodeMap$p[i15 & 63];
                if (paddingOption != PaddingOption.PRESENT && paddingOption != PaddingOption.PRESENT_OPTIONAL) {
                    i4 = i16;
                } else {
                    i4 += 4;
                    destination[i16] = padSymbol;
                }
                i3 = i2;
            }
        } else {
            int i17 = i3 + 1;
            int i18 = (source[i3] & 255) << 4;
            destination[i4] = access$getBase64EncodeMap$p[i18 >>> 6];
            int i19 = i4 + 2;
            destination[i4 + 1] = access$getBase64EncodeMap$p[i18 & 63];
            if (paddingOption != PaddingOption.PRESENT && paddingOption != PaddingOption.PRESENT_OPTIONAL) {
                i3 = i17;
                i4 = i19;
            } else {
                int i20 = i4 + 3;
                destination[i19] = padSymbol;
                i4 += 4;
                destination[i20] = padSymbol;
                i3 = i17;
            }
        }
        if (i3 == endIndex) {
            return i4 - destinationOffset;
        }
        throw new IllegalStateException("Check failed.");
    }

    public final int encodeSize$kotlin_stdlib(int sourceSize) {
        int i = sourceSize / 3;
        int i2 = sourceSize % 3;
        int i3 = 4;
        int i4 = i * 4;
        if (i2 != 0) {
            PaddingOption paddingOption = PaddingOption.PRESENT;
            PaddingOption paddingOption2 = this.paddingOption;
            if (paddingOption2 != paddingOption && paddingOption2 != PaddingOption.PRESENT_OPTIONAL) {
                i3 = i2 + 1;
            }
            i4 += i3;
        }
        if (this.isMimeScheme) {
            i4 += ((i4 - 1) / 76) * 2;
        }
        if (i4 >= 0) {
            return i4;
        }
        throw new IllegalArgumentException("Input is too big");
    }

    @NotNull
    public final <A extends Appendable> A encodeToAppendable(@NotNull byte[] source, @NotNull A destination, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(destination, "destination");
        destination.append(new String(encodeToByteArrayImpl$kotlin_stdlib(source, startIndex, endIndex), Charsets.ISO_8859_1));
        return destination;
    }

    @NotNull
    public final byte[] encodeToByteArray(@NotNull byte[] source, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        return encodeToByteArrayImpl$kotlin_stdlib(source, startIndex, endIndex);
    }

    @NotNull
    public final byte[] encodeToByteArrayImpl$kotlin_stdlib(@NotNull byte[] source, int startIndex, int endIndex) {
        Intrinsics.checkNotNullParameter(source, "source");
        checkSourceBounds$kotlin_stdlib(source.length, startIndex, endIndex);
        byte[] bArr = new byte[encodeSize$kotlin_stdlib(endIndex - startIndex)];
        encodeIntoByteArrayImpl$kotlin_stdlib(source, bArr, 0, startIndex, endIndex);
        return bArr;
    }

    @NotNull
    /* renamed from: getPaddingOption$kotlin_stdlib, reason: from getter */
    public final PaddingOption getPaddingOption() {
        return this.paddingOption;
    }

    /* renamed from: isMimeScheme$kotlin_stdlib, reason: from getter */
    public final boolean getIsMimeScheme() {
        return this.isMimeScheme;
    }

    /* renamed from: isUrlSafe$kotlin_stdlib, reason: from getter */
    public final boolean getIsUrlSafe() {
        return this.isUrlSafe;
    }

    @SinceKotlin(version = "2.0")
    @NotNull
    public final Base64 withPadding(@NotNull PaddingOption option) {
        Intrinsics.checkNotNullParameter(option, "option");
        if (this.paddingOption == option) {
            return this;
        }
        return new Base64(this.isUrlSafe, this.isMimeScheme, option);
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final int m1978x3271d0aa(byte[] bArr, byte[] bArr2, int i, int i2, int i3) {
        int[] access$getBase64DecodeMap$p;
        boolean z;
        PaddingOption paddingOption;
        int i4;
        boolean z2;
        int i5;
        if (this.isUrlSafe) {
            access$getBase64DecodeMap$p = Base64Kt.access$getBase64UrlDecodeMap$p();
        } else {
            access$getBase64DecodeMap$p = Base64Kt.access$getBase64DecodeMap$p();
        }
        int i6 = -8;
        int i7 = i;
        int i8 = i2;
        int i9 = -8;
        int i10 = 0;
        while (true) {
            z = this.isMimeScheme;
            paddingOption = this.paddingOption;
            if (i8 < i3) {
                if (i9 == i6 && (i5 = i8 + 3) < i3) {
                    int i11 = i8 + 4;
                    int i12 = (access$getBase64DecodeMap$p[bArr[i8 + 1] & 255] << 12) | (access$getBase64DecodeMap$p[bArr[i8] & 255] << 18) | (access$getBase64DecodeMap$p[bArr[i8 + 2] & 255] << 6) | access$getBase64DecodeMap$p[bArr[i5] & 255];
                    if (i12 >= 0) {
                        bArr2[i7] = (byte) (i12 >> 16);
                        int i13 = i7 + 2;
                        bArr2[i7 + 1] = (byte) (i12 >> 8);
                        i7 += 3;
                        bArr2[i13] = (byte) i12;
                        i8 = i11;
                        i6 = -8;
                    }
                }
                int i14 = bArr[i8] & 255;
                int i15 = access$getBase64DecodeMap$p[i14];
                if (i15 < 0) {
                    if (i15 == -2) {
                        if (i9 != -8) {
                            if (i9 != -6) {
                                if (i9 != -4) {
                                    if (i9 != -2) {
                                        throw new IllegalStateException("Unreachable");
                                    }
                                } else if (paddingOption != PaddingOption.ABSENT) {
                                    int i16 = i8 + 1;
                                    if (z) {
                                        while (i16 < i3) {
                                            if (Base64Kt.access$getBase64DecodeMap$p()[bArr[i16] & 255] != -1) {
                                                break;
                                            }
                                            i16++;
                                        }
                                    }
                                    if (i16 != i3 && bArr[i16] == 61) {
                                        i8 = i16 + 1;
                                        i4 = -2;
                                        z2 = true;
                                    } else {
                                        throw new IllegalArgumentException(AbstractC0362x4440ab85.m2929x9738a56c(i16, "Missing one pad character at index "));
                                    }
                                } else {
                                    throw new IllegalArgumentException(AbstractC0362x4440ab85.m2929x9738a56c(i8, "The padding option is set to ABSENT, but the input has a pad character at index "));
                                }
                            } else if (paddingOption == PaddingOption.ABSENT) {
                                throw new IllegalArgumentException(AbstractC0362x4440ab85.m2929x9738a56c(i8, "The padding option is set to ABSENT, but the input has a pad character at index "));
                            }
                            i8++;
                            i4 = -2;
                            z2 = true;
                        } else {
                            throw new IllegalArgumentException(AbstractC0362x4440ab85.m2929x9738a56c(i8, "Redundant pad character at index "));
                        }
                    } else if (z) {
                        i8++;
                    } else {
                        StringBuilder sb = new StringBuilder("Invalid symbol '");
                        sb.append((char) i14);
                        sb.append("'(");
                        String num = Integer.toString(i14, AbstractC0298xfbe0c504.checkRadix(8));
                        Intrinsics.checkNotNullExpressionValue(num, "toString(...)");
                        sb.append(num);
                        sb.append(") at index ");
                        sb.append(i8);
                        throw new IllegalArgumentException(sb.toString());
                    }
                } else {
                    i8++;
                    i10 = (i10 << 6) | i15;
                    int i17 = i9 + 6;
                    if (i17 >= 0) {
                        bArr2[i7] = (byte) (i10 >>> i17);
                        i10 &= (1 << i17) - 1;
                        i9 -= 2;
                        i7++;
                    } else {
                        i9 = i17;
                    }
                }
                i6 = -8;
            } else {
                i4 = -2;
                z2 = false;
                break;
            }
        }
        if (i9 != i4) {
            if (i9 != -8 && !z2 && paddingOption == PaddingOption.PRESENT) {
                throw new IllegalArgumentException("The padding option is set to PRESENT, but the input is not properly padded");
            }
            if (i10 == 0) {
                if (z) {
                    while (i8 < i3) {
                        if (Base64Kt.access$getBase64DecodeMap$p()[bArr[i8] & 255] != -1) {
                            break;
                        }
                        i8++;
                    }
                }
                if (i8 >= i3) {
                    return i7 - i;
                }
                int i18 = bArr[i8] & 255;
                StringBuilder sb2 = new StringBuilder("Symbol '");
                sb2.append((char) i18);
                sb2.append("'(");
                String num2 = Integer.toString(i18, AbstractC0298xfbe0c504.checkRadix(8));
                Intrinsics.checkNotNullExpressionValue(num2, "toString(...)");
                sb2.append(num2);
                sb2.append(") at index ");
                throw new IllegalArgumentException(AbstractC0362x4440ab85.m2935x1db10c9d(sb2, " is prohibited after the pad character", i8 - 1));
            }
            throw new IllegalArgumentException("The pad bits must be zeros");
        }
        throw new IllegalArgumentException("The last unit of input does not have enough bits");
    }

    public Base64(boolean z, boolean z2, PaddingOption paddingOption) {
        this.isUrlSafe = z;
        this.isMimeScheme = z2;
        this.paddingOption = paddingOption;
        if (z && z2) {
            throw new IllegalArgumentException("Failed requirement.");
        }
    }

    public static /* synthetic */ byte[] decode$default(Base64 base64, CharSequence charSequence, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decode");
        }
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = charSequence.length();
        }
        return base64.decode(charSequence, i, i2);
    }

    public static /* synthetic */ int decodeIntoByteArray$default(Base64 base64, CharSequence charSequence, byte[] bArr, int i, int i2, int i3, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decodeIntoByteArray");
        }
        int i5 = (i4 & 4) != 0 ? 0 : i;
        int i6 = (i4 & 8) != 0 ? 0 : i2;
        if ((i4 & 16) != 0) {
            i3 = charSequence.length();
        }
        return base64.decodeIntoByteArray(charSequence, bArr, i5, i6, i3);
    }

    public final int decodeIntoByteArray(@NotNull CharSequence source, @NotNull byte[] destination, int destinationOffset, int startIndex, int endIndex) {
        byte[] charsToBytesImpl$kotlin_stdlib;
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(destination, "destination");
        if (source instanceof String) {
            String str = (String) source;
            checkSourceBounds$kotlin_stdlib(str.length(), startIndex, endIndex);
            String substring = str.substring(startIndex, endIndex);
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            Charset charset = Charsets.ISO_8859_1;
            Intrinsics.checkNotNull(substring, "null cannot be cast to non-null type java.lang.String");
            charsToBytesImpl$kotlin_stdlib = substring.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(charsToBytesImpl$kotlin_stdlib, "getBytes(...)");
        } else {
            charsToBytesImpl$kotlin_stdlib = charsToBytesImpl$kotlin_stdlib(source, startIndex, endIndex);
        }
        return decodeIntoByteArray$default(this, charsToBytesImpl$kotlin_stdlib, destination, destinationOffset, 0, 0, 24, (Object) null);
    }

    @NotNull
    public final byte[] decode(@NotNull CharSequence source, int startIndex, int endIndex) {
        byte[] charsToBytesImpl$kotlin_stdlib;
        Intrinsics.checkNotNullParameter(source, "source");
        if (source instanceof String) {
            String str = (String) source;
            checkSourceBounds$kotlin_stdlib(str.length(), startIndex, endIndex);
            String substring = str.substring(startIndex, endIndex);
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            Charset charset = Charsets.ISO_8859_1;
            Intrinsics.checkNotNull(substring, "null cannot be cast to non-null type java.lang.String");
            charsToBytesImpl$kotlin_stdlib = substring.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(charsToBytesImpl$kotlin_stdlib, "getBytes(...)");
        } else {
            charsToBytesImpl$kotlin_stdlib = charsToBytesImpl$kotlin_stdlib(source, startIndex, endIndex);
        }
        return decode$default(this, charsToBytesImpl$kotlin_stdlib, 0, 0, 6, (Object) null);
    }
}
