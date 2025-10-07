package okhttp3.internal.idn;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.BufferedSink;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0000\u0018\u00002\u00020\u0001B!\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0010\u001a\u0004\b\u0014\u0010\u0012R\u0017\u0010\u0005\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0010\u001a\u0004\b\u0016\u0010\u0012¨\u0006\u0017"}, d2 = {"Lokhttp3/internal/idn/IdnaMappingTable;", "", "", "sections", "ranges", "mappings", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "codePoint", "Lokio/BufferedSink;", "sink", "", "map", "(ILokio/BufferedSink;)Z", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Ljava/lang/String;", "getSections", "()Ljava/lang/String;", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "getRanges", "뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉", "getMappings", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nIdnaMappingTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IdnaMappingTable.kt\nokhttp3/internal/idn/IdnaMappingTable\n+ 2 IdnaMappingTable.kt\nokhttp3/internal/idn/IdnaMappingTableKt\n*L\n1#1,272:1\n258#2,13:273\n258#2,13:286\n*S KotlinDebug\n*F\n+ 1 IdnaMappingTable.kt\nokhttp3/internal/idn/IdnaMappingTable\n*L\n204#1:273,13\n227#1:286,13\n*E\n"})
/* loaded from: classes3.dex */
public final class IdnaMappingTable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
    public final String sections;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters and from kotlin metadata */
    public final String ranges;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters and from kotlin metadata */
    public final String mappings;

    public IdnaMappingTable(@NotNull String sections, @NotNull String ranges, @NotNull String mappings) {
        Intrinsics.checkNotNullParameter(sections, "sections");
        Intrinsics.checkNotNullParameter(ranges, "ranges");
        Intrinsics.checkNotNullParameter(mappings, "mappings");
        this.sections = sections;
        this.ranges = ranges;
        this.mappings = mappings;
    }

    @NotNull
    public final String getMappings() {
        return this.mappings;
    }

    @NotNull
    public final String getRanges() {
        return this.ranges;
    }

    @NotNull
    public final String getSections() {
        return this.sections;
    }

    public final boolean map(int codePoint, @NotNull BufferedSink sink) {
        int i;
        int i2;
        int length;
        int i3;
        int i4;
        Intrinsics.checkNotNullParameter(sink, "sink");
        int i5 = (2097024 & codePoint) >> 7;
        String str = this.sections;
        int length2 = (str.length() / 4) - 1;
        int i6 = 0;
        while (true) {
            if (i6 <= length2) {
                i = (i6 + length2) / 2;
                int compare = Intrinsics.compare(i5, IdnaMappingTableKt.read14BitInt(str, i * 4));
                if (compare < 0) {
                    length2 = i - 1;
                } else {
                    if (compare <= 0) {
                        break;
                    }
                    i6 = i + 1;
                }
            } else {
                i = (-i6) - 1;
                break;
            }
        }
        if (i >= 0) {
            i2 = i * 4;
        } else {
            i2 = ((-i) - 2) * 4;
        }
        int read14BitInt = IdnaMappingTableKt.read14BitInt(str, i2 + 2);
        int i7 = i2 + 4;
        int length3 = str.length();
        String str2 = this.ranges;
        if (i7 < length3) {
            length = IdnaMappingTableKt.read14BitInt(str, i2 + 6);
        } else {
            length = str2.length() / 4;
        }
        int i8 = codePoint & 127;
        int i9 = length - 1;
        while (true) {
            if (read14BitInt <= i9) {
                i3 = (read14BitInt + i9) / 2;
                int compare2 = Intrinsics.compare(i8, (int) str2.charAt(i3 * 4));
                if (compare2 < 0) {
                    i9 = i3 - 1;
                } else {
                    if (compare2 <= 0) {
                        break;
                    }
                    read14BitInt = i3 + 1;
                }
            } else {
                i3 = (-read14BitInt) - 1;
                break;
            }
        }
        if (i3 >= 0) {
            i4 = i3 * 4;
        } else {
            i4 = ((-i3) - 2) * 4;
        }
        char charAt = str2.charAt(i4 + 1);
        if (charAt >= 0 && charAt < '@') {
            int read14BitInt2 = IdnaMappingTableKt.read14BitInt(str2, i4 + 2);
            sink.writeUtf8(this.mappings, read14BitInt2, charAt + read14BitInt2);
        } else if ('@' <= charAt && charAt < 'P') {
            sink.writeUtf8CodePoint(codePoint - ((((charAt & 15) << 14) | (str2.charAt(i4 + 2) << 7)) | str2.charAt(i4 + 3)));
        } else if ('P' <= charAt && charAt < '`') {
            sink.writeUtf8CodePoint(codePoint + (((charAt & 15) << 14) | (str2.charAt(i4 + 2) << 7) | str2.charAt(i4 + 3)));
        } else if (charAt != 'w') {
            if (charAt == 'x') {
                sink.writeUtf8CodePoint(codePoint);
            } else {
                if (charAt == 'y') {
                    sink.writeUtf8CodePoint(codePoint);
                    return false;
                }
                if (charAt == 'z') {
                    sink.writeByte(str2.charAt(i4 + 2));
                } else if (charAt == '{') {
                    sink.writeByte(str2.charAt(i4 + 2) | 128);
                } else if (charAt == '|') {
                    sink.writeByte(str2.charAt(i4 + 2));
                    sink.writeByte(str2.charAt(i4 + 3));
                } else if (charAt == '}') {
                    sink.writeByte(str2.charAt(i4 + 2) | 128);
                    sink.writeByte(str2.charAt(i4 + 3));
                } else if (charAt == '~') {
                    sink.writeByte(str2.charAt(i4 + 2));
                    sink.writeByte(str2.charAt(i4 + 3) | 128);
                } else if (charAt == 127) {
                    sink.writeByte(str2.charAt(i4 + 2) | 128);
                    sink.writeByte(str2.charAt(i4 + 3) | 128);
                } else {
                    throw new IllegalStateException(("unexpected rangesIndex for " + codePoint).toString());
                }
            }
        }
        return true;
    }
}
