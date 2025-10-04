package okhttp3.internal.publicsuffix;

import defpackage.AbstractC0586x968d4673;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal.platform.Platform;
import okio.BufferedSource;
import okio.FileSystem;
import okio.GzipSource;
import okio.Okio;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\f\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u001d\b\u0000\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u001d\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\f¢\u0006\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, d2 = {"Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;", "", "Lokio/Path;", "path", "Lokio/FileSystem;", "fileSystem", "<init>", "(Lokio/Path;Lokio/FileSystem;)V", "", "domain", "getEffectiveTldPlusOne", "(Ljava/lang/String;)Ljava/lang/String;", "", "publicSuffixListBytes", "publicSuffixExceptionListBytes", "", "setListBytes", "([B[B)V", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Lokio/Path;", "getPath", "()Lokio/Path;", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "Lokio/FileSystem;", "getFileSystem", "()Lokio/FileSystem;", "Companion", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PublicSuffixDatabase {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @JvmField
    @NotNull
    public static final Path PUBLIC_SUFFIX_RESOURCE = Path.Companion.get$default(Path.INSTANCE, "/okhttp3/internal/publicsuffix/PublicSuffixDatabase.gz", false, 1, (Object) null);

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    public static final byte[] f3442x34271fae = {42};

    /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두, reason: contains not printable characters */
    public static final List f3443x95f25580 = AbstractC0586x968d4673.listOf("*");

    /* renamed from: 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷, reason: contains not printable characters */
    public static final PublicSuffixDatabase f3444x3db60231 = new PublicSuffixDatabase(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
    public final Path path;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters and from kotlin metadata */
    public final FileSystem fileSystem;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final AtomicBoolean f3447x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final CountDownLatch f3448x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public byte[] f3449x9738a56c;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public byte[] f3450x9e171bf9;

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\r\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0010\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;", "", "Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;", "get", "()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;", "", "EXCEPTION_MARKER", "C", "", "", "PREVAILING_RULE", "Ljava/util/List;", "Lokio/Path;", "PUBLIC_SUFFIX_RESOURCE", "Lokio/Path;", "", "WILDCARD_LABEL", "[B", "instance", "Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static final String access$binarySearch(Companion companion, byte[] bArr, byte[][] bArr2, int i) {
            int i2;
            int and;
            boolean z;
            int and2;
            companion.getClass();
            int length = bArr.length;
            int i3 = 0;
            while (i3 < length) {
                int i4 = (i3 + length) / 2;
                while (i4 > -1 && bArr[i4] != 10) {
                    i4--;
                }
                int i5 = i4 + 1;
                int i6 = 1;
                while (true) {
                    i2 = i5 + i6;
                    if (bArr[i2] == 10) {
                        break;
                    }
                    i6++;
                }
                int i7 = i2 - i5;
                int i8 = i;
                boolean z2 = false;
                int i9 = 0;
                int i10 = 0;
                while (true) {
                    if (z2) {
                        and = 46;
                        z = false;
                    } else {
                        boolean z3 = z2;
                        and = _UtilCommonKt.and(bArr2[i8][i9], 255);
                        z = z3;
                    }
                    and2 = and - _UtilCommonKt.and(bArr[i5 + i10], 255);
                    if (and2 != 0) {
                        break;
                    }
                    i10++;
                    i9++;
                    if (i10 == i7) {
                        break;
                    }
                    if (bArr2[i8].length == i9) {
                        if (i8 == bArr2.length - 1) {
                            break;
                        }
                        i8++;
                        z2 = true;
                        i9 = -1;
                    } else {
                        z2 = z;
                    }
                }
                if (and2 >= 0) {
                    if (and2 <= 0) {
                        int i11 = i7 - i10;
                        int length2 = bArr2[i8].length - i9;
                        int length3 = bArr2.length;
                        for (int i12 = i8 + 1; i12 < length3; i12++) {
                            length2 += bArr2[i12].length;
                        }
                        if (length2 >= i11) {
                            if (length2 <= i11) {
                                return new String(bArr, i5, i7, Charsets.UTF_8);
                            }
                        }
                    }
                    i3 = i2 + 1;
                }
                length = i4;
            }
            return null;
        }

        @NotNull
        public final PublicSuffixDatabase get() {
            return PublicSuffixDatabase.f3444x3db60231;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PublicSuffixDatabase() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static List m2623x3271d0aa(String str) {
        List split$default = StringsKt__StringsKt.split$default((CharSequence) str, new char[]{'.'}, false, 0, 6, (Object) null);
        if (Intrinsics.areEqual(CollectionsKt___CollectionsKt.last(split$default), "")) {
            return CollectionsKt___CollectionsKt.dropLast(split$default, 1);
        }
        return split$default;
    }

    @Nullable
    public final String getEffectiveTldPlusOne(@NotNull String domain) {
        String str;
        String str2;
        String str3;
        List emptyList;
        List emptyList2;
        int size;
        int size2;
        Intrinsics.checkNotNullParameter(domain, "domain");
        String unicode = IDN.toUnicode(domain);
        Intrinsics.checkNotNull(unicode);
        List m2623x3271d0aa = m2623x3271d0aa(unicode);
        AtomicBoolean atomicBoolean = this.f3447x1378447b;
        if (!atomicBoolean.get() && atomicBoolean.compareAndSet(false, true)) {
            boolean z = false;
            while (true) {
                try {
                    try {
                        m2624xfbe0c504();
                        break;
                    } finally {
                        if (z) {
                            Thread.currentThread().interrupt();
                        }
                    }
                } catch (InterruptedIOException unused) {
                    Thread.interrupted();
                    z = true;
                } catch (IOException e) {
                    Platform.INSTANCE.get().log("Failed to read public suffix list", 5, e);
                    if (z) {
                    }
                }
            }
        } else {
            try {
                this.f3448x75d576dc.await();
            } catch (InterruptedException unused2) {
                Thread.currentThread().interrupt();
            }
        }
        if (this.f3449x9738a56c != null) {
            int size3 = m2623x3271d0aa.size();
            byte[][] bArr = new byte[size3];
            for (int i = 0; i < size3; i++) {
                byte[] bytes = ((String) m2623x3271d0aa.get(i)).getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                bArr[i] = bytes;
            }
            int i2 = 0;
            while (true) {
                if (i2 < size3) {
                    Companion companion = INSTANCE;
                    byte[] bArr2 = this.f3449x9738a56c;
                    if (bArr2 == null) {
                        bArr2 = null;
                    }
                    str = Companion.access$binarySearch(companion, bArr2, bArr, i2);
                    if (str != null) {
                        break;
                    }
                    i2++;
                } else {
                    str = null;
                    break;
                }
            }
            if (size3 > 1) {
                byte[][] bArr3 = (byte[][]) bArr.clone();
                int length = bArr3.length - 1;
                for (int i3 = 0; i3 < length; i3++) {
                    bArr3[i3] = f3442x34271fae;
                    Companion companion2 = INSTANCE;
                    byte[] bArr4 = this.f3449x9738a56c;
                    if (bArr4 == null) {
                        bArr4 = null;
                    }
                    String access$binarySearch = Companion.access$binarySearch(companion2, bArr4, bArr3, i3);
                    if (access$binarySearch != null) {
                        str2 = access$binarySearch;
                        break;
                    }
                }
            }
            str2 = null;
            if (str2 != null) {
                int i4 = size3 - 1;
                for (int i5 = 0; i5 < i4; i5++) {
                    Companion companion3 = INSTANCE;
                    byte[] bArr5 = this.f3450x9e171bf9;
                    if (bArr5 == null) {
                        bArr5 = null;
                    }
                    str3 = Companion.access$binarySearch(companion3, bArr5, bArr, i5);
                    if (str3 != null) {
                        break;
                    }
                }
            }
            str3 = null;
            if (str3 != null) {
                emptyList2 = StringsKt__StringsKt.split$default((CharSequence) "!".concat(str3), new char[]{'.'}, false, 0, 6, (Object) null);
            } else if (str == null && str2 == null) {
                emptyList2 = f3443x95f25580;
            } else {
                if (str == null || (emptyList = StringsKt__StringsKt.split$default((CharSequence) str, new char[]{'.'}, false, 0, 6, (Object) null)) == null) {
                    emptyList = CollectionsKt__CollectionsKt.emptyList();
                }
                if (str2 == null || (emptyList2 = StringsKt__StringsKt.split$default((CharSequence) str2, new char[]{'.'}, false, 0, 6, (Object) null)) == null) {
                    emptyList2 = CollectionsKt__CollectionsKt.emptyList();
                }
                if (emptyList.size() > emptyList2.size()) {
                    emptyList2 = emptyList;
                }
            }
            if (m2623x3271d0aa.size() == emptyList2.size() && ((String) emptyList2.get(0)).charAt(0) != '!') {
                return null;
            }
            if (((String) emptyList2.get(0)).charAt(0) == '!') {
                size = m2623x3271d0aa.size();
                size2 = emptyList2.size();
            } else {
                size = m2623x3271d0aa.size();
                size2 = emptyList2.size() + 1;
            }
            return SequencesKt___SequencesKt.joinToString$default(SequencesKt___SequencesKt.drop(CollectionsKt___CollectionsKt.asSequence(m2623x3271d0aa(domain)), size - size2), ".", null, null, 0, null, null, 62, null);
        }
        throw new IllegalStateException(("Unable to load " + PUBLIC_SUFFIX_RESOURCE + " resource from the classpath.").toString());
    }

    @NotNull
    public final FileSystem getFileSystem() {
        return this.fileSystem;
    }

    @NotNull
    public final Path getPath() {
        return this.path;
    }

    public final void setListBytes(@NotNull byte[] publicSuffixListBytes, @NotNull byte[] publicSuffixExceptionListBytes) {
        Intrinsics.checkNotNullParameter(publicSuffixListBytes, "publicSuffixListBytes");
        Intrinsics.checkNotNullParameter(publicSuffixExceptionListBytes, "publicSuffixExceptionListBytes");
        this.f3449x9738a56c = publicSuffixListBytes;
        this.f3450x9e171bf9 = publicSuffixExceptionListBytes;
        this.f3447x1378447b.set(true);
        this.f3448x75d576dc.countDown();
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final void m2624xfbe0c504() {
        try {
            BufferedSource buffer = Okio.buffer(new GzipSource(this.fileSystem.source(this.path)));
            try {
                byte[] readByteArray = buffer.readByteArray(buffer.readInt());
                byte[] readByteArray2 = buffer.readByteArray(buffer.readInt());
                CloseableKt.closeFinally(buffer, null);
                synchronized (this) {
                    Intrinsics.checkNotNull(readByteArray);
                    this.f3449x9738a56c = readByteArray;
                    Intrinsics.checkNotNull(readByteArray2);
                    this.f3450x9e171bf9 = readByteArray2;
                }
            } finally {
            }
        } finally {
            this.f3448x75d576dc.countDown();
        }
    }

    public PublicSuffixDatabase(@NotNull Path path, @NotNull FileSystem fileSystem) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        this.path = path;
        this.fileSystem = fileSystem;
        this.f3447x1378447b = new AtomicBoolean(false);
        this.f3448x75d576dc = new CountDownLatch(1);
    }

    public /* synthetic */ PublicSuffixDatabase(Path path, FileSystem fileSystem, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? PUBLIC_SUFFIX_RESOURCE : path, (i & 2) != 0 ? FileSystem.RESOURCES : fileSystem);
    }
}
