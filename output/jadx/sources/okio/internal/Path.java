package okio.internal;

import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0587xb7546d05;
import defpackage.AbstractC0590xf7db57e6;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.Buffer;
import okio.ByteString;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\f\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\n\u001a\u0016\u0010\u0001\u001a\u0004\u0018\u00010\u0000*\u00020\u0000H\u0080\b¢\u0006\u0004\b\u0001\u0010\u0002\u001a\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003*\u00020\u0000H\u0080\b¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0003*\u00020\u0000H\u0080\b¢\u0006\u0004\b\b\u0010\u0006\u001a\u0014\u0010\n\u001a\u00020\t*\u00020\u0000H\u0080\b¢\u0006\u0004\b\n\u0010\u000b\u001a\u0014\u0010\f\u001a\u00020\t*\u00020\u0000H\u0080\b¢\u0006\u0004\b\f\u0010\u000b\u001a\u0016\u0010\u000e\u001a\u0004\u0018\u00010\r*\u00020\u0000H\u0080\b¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u0014\u0010\u0010\u001a\u00020\u0007*\u00020\u0000H\u0080\b¢\u0006\u0004\b\u0010\u0010\u0011\u001a\u0014\u0010\u0012\u001a\u00020\u0004*\u00020\u0000H\u0080\b¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u0000*\u00020\u0000H\u0080\b¢\u0006\u0004\b\u0014\u0010\u0002\u001a\u0014\u0010\u0015\u001a\u00020\t*\u00020\u0000H\u0080\b¢\u0006\u0004\b\u0015\u0010\u000b\u001a$\u0010\u0018\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\tH\u0080\b¢\u0006\u0004\b\u0018\u0010\u0019\u001a$\u0010\u0018\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\tH\u0080\b¢\u0006\u0004\b\u0018\u0010\u001a\u001a$\u0010\u0018\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u001b2\u0006\u0010\u0017\u001a\u00020\tH\u0080\b¢\u0006\u0004\b\u0018\u0010\u001c\u001a#\u0010\u0018\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\tH\u0000¢\u0006\u0004\b\u0018\u0010\u001d\u001a\u001c\u0010\u001f\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0000H\u0080\b¢\u0006\u0004\b\u001f\u0010 \u001a\u0014\u0010!\u001a\u00020\u0000*\u00020\u0000H\u0080\b¢\u0006\u0004\b!\u0010\u0002\u001a\u001c\u0010#\u001a\u00020\"*\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0000H\u0080\b¢\u0006\u0004\b#\u0010$\u001a\u001e\u0010&\u001a\u00020\t*\u00020\u00002\b\u0010\u001e\u001a\u0004\u0018\u00010%H\u0080\b¢\u0006\u0004\b&\u0010'\u001a\u0014\u0010(\u001a\u00020\"*\u00020\u0000H\u0080\b¢\u0006\u0004\b(\u0010)\u001a\u0014\u0010*\u001a\u00020\u0004*\u00020\u0000H\u0080\b¢\u0006\u0004\b*\u0010\u0013\u001a\u001b\u0010+\u001a\u00020\u0000*\u00020\u00042\u0006\u0010\u0017\u001a\u00020\tH\u0000¢\u0006\u0004\b+\u0010,\u001a\u001b\u0010-\u001a\u00020\u0000*\u00020\u001b2\u0006\u0010\u0017\u001a\u00020\tH\u0000¢\u0006\u0004\b-\u0010.¨\u0006/"}, d2 = {"Lokio/Path;", "commonRoot", "(Lokio/Path;)Lokio/Path;", "", "", "commonSegments", "(Lokio/Path;)Ljava/util/List;", "Lokio/ByteString;", "commonSegmentsBytes", "", "commonIsAbsolute", "(Lokio/Path;)Z", "commonIsRelative", "", "commonVolumeLetter", "(Lokio/Path;)Ljava/lang/Character;", "commonNameBytes", "(Lokio/Path;)Lokio/ByteString;", "commonName", "(Lokio/Path;)Ljava/lang/String;", "commonParent", "commonIsRoot", "child", "normalize", "commonResolve", "(Lokio/Path;Ljava/lang/String;Z)Lokio/Path;", "(Lokio/Path;Lokio/ByteString;Z)Lokio/Path;", "Lokio/Buffer;", "(Lokio/Path;Lokio/Buffer;Z)Lokio/Path;", "(Lokio/Path;Lokio/Path;Z)Lokio/Path;", "other", "commonRelativeTo", "(Lokio/Path;Lokio/Path;)Lokio/Path;", "commonNormalized", "", "commonCompareTo", "(Lokio/Path;Lokio/Path;)I", "", "commonEquals", "(Lokio/Path;Ljava/lang/Object;)Z", "commonHashCode", "(Lokio/Path;)I", "commonToString", "commonToPath", "(Ljava/lang/String;Z)Lokio/Path;", "toPath", "(Lokio/Buffer;Z)Lokio/Path;", "okio"}, k = 2, mv = {2, 1, 0}, xi = 48)
@JvmName(name = "-Path")
@SourceDebugExtension({"SMAP\nPath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Path.kt\nokio/internal/-Path\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,405:1\n53#1,22:406\n203#1:432\n203#1:433\n1557#2:428\n1628#2,3:429\n*S KotlinDebug\n*F\n+ 1 Path.kt\nokio/internal/-Path\n*L\n47#1:406,22\n193#1:432\n198#1:433\n47#1:428\n47#1:429,3\n*E\n"})
/* renamed from: okio.internal.-Path */
/* loaded from: classes3.dex */
public final class Path {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    public static final ByteString f3679xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫 */
    public static final ByteString f3680x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉 */
    public static final ByteString f3681x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨 */
    public static final ByteString f3682x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨 */
    public static final ByteString f3683x9738a56c;

    static {
        ByteString.Companion companion = ByteString.INSTANCE;
        f3679xfbe0c504 = companion.encodeUtf8("/");
        f3680x3271d0aa = companion.encodeUtf8("\\");
        f3681x1378447b = companion.encodeUtf8("/\\");
        f3682x75d576dc = companion.encodeUtf8(".");
        f3683x9738a56c = companion.encodeUtf8("..");
    }

    public static final int access$getIndexOfLastSlash(okio.Path path) {
        int lastIndexOf$default = ByteString.lastIndexOf$default(path.getBytes(), f3679xfbe0c504, 0, 2, (Object) null);
        if (lastIndexOf$default == -1) {
            return ByteString.lastIndexOf$default(path.getBytes(), f3680x3271d0aa, 0, 2, (Object) null);
        }
        return lastIndexOf$default;
    }

    public static final boolean access$lastSegmentIsDotDot(okio.Path path) {
        if (!path.getBytes().endsWith(f3683x9738a56c)) {
            return false;
        }
        if (path.getBytes().size() != 2 && !path.getBytes().rangeEquals(path.getBytes().size() - 3, f3679xfbe0c504, 0, 1) && !path.getBytes().rangeEquals(path.getBytes().size() - 3, f3680x3271d0aa, 0, 1)) {
            return false;
        }
        return true;
    }

    public static final int access$rootLength(okio.Path path) {
        if (path.getBytes().size() == 0) {
            return -1;
        }
        if (path.getBytes().getByte(0) != 47) {
            if (path.getBytes().getByte(0) == 92) {
                if (path.getBytes().size() > 2 && path.getBytes().getByte(1) == 92) {
                    int indexOf = path.getBytes().indexOf(f3680x3271d0aa, 2);
                    if (indexOf == -1) {
                        return path.getBytes().size();
                    }
                    return indexOf;
                }
            } else {
                if (path.getBytes().size() <= 2 || path.getBytes().getByte(1) != 58 || path.getBytes().getByte(2) != 92) {
                    return -1;
                }
                char c = (char) path.getBytes().getByte(0);
                if (('a' > c || c >= '{') && ('A' > c || c >= '[')) {
                    return -1;
                }
                return 3;
            }
        }
        return 1;
    }

    public static final int commonCompareTo(@NotNull okio.Path path, @NotNull okio.Path other) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        return path.getBytes().compareTo(other.getBytes());
    }

    public static final boolean commonEquals(@NotNull okio.Path path, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        if ((obj instanceof okio.Path) && Intrinsics.areEqual(((okio.Path) obj).getBytes(), path.getBytes())) {
            return true;
        }
        return false;
    }

    public static final int commonHashCode(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return path.getBytes().hashCode();
    }

    public static final boolean commonIsAbsolute(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        if (access$rootLength(path) != -1) {
            return true;
        }
        return false;
    }

    public static final boolean commonIsRelative(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        if (access$rootLength(path) == -1) {
            return true;
        }
        return false;
    }

    public static final boolean commonIsRoot(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        if (access$rootLength(path) == path.getBytes().size()) {
            return true;
        }
        return false;
    }

    @NotNull
    public static final String commonName(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return path.nameBytes().utf8();
    }

    @NotNull
    public static final ByteString commonNameBytes(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        int access$getIndexOfLastSlash = access$getIndexOfLastSlash(path);
        if (access$getIndexOfLastSlash != -1) {
            return ByteString.substring$default(path.getBytes(), access$getIndexOfLastSlash + 1, 0, 2, null);
        }
        if (path.volumeLetter() != null && path.getBytes().size() == 2) {
            return ByteString.EMPTY;
        }
        return path.getBytes();
    }

    @NotNull
    public static final okio.Path commonNormalized(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return okio.Path.INSTANCE.get(path.toString(), true);
    }

    @Nullable
    public static final okio.Path commonParent(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        if (Intrinsics.areEqual(path.getBytes(), f3682x75d576dc) || Intrinsics.areEqual(path.getBytes(), f3679xfbe0c504) || Intrinsics.areEqual(path.getBytes(), f3680x3271d0aa) || access$lastSegmentIsDotDot(path)) {
            return null;
        }
        int access$getIndexOfLastSlash = access$getIndexOfLastSlash(path);
        if (access$getIndexOfLastSlash == 2 && path.volumeLetter() != null) {
            if (path.getBytes().size() == 3) {
                return null;
            }
            return new okio.Path(ByteString.substring$default(path.getBytes(), 0, 3, 1, null));
        }
        if (access$getIndexOfLastSlash == 1 && path.getBytes().startsWith(f3680x3271d0aa)) {
            return null;
        }
        if (access$getIndexOfLastSlash == -1 && path.volumeLetter() != null) {
            if (path.getBytes().size() == 2) {
                return null;
            }
            return new okio.Path(ByteString.substring$default(path.getBytes(), 0, 2, 1, null));
        }
        if (access$getIndexOfLastSlash == -1) {
            return new okio.Path(f3682x75d576dc);
        }
        if (access$getIndexOfLastSlash == 0) {
            return new okio.Path(ByteString.substring$default(path.getBytes(), 0, 1, 1, null));
        }
        return new okio.Path(ByteString.substring$default(path.getBytes(), 0, access$getIndexOfLastSlash, 1, null));
    }

    @NotNull
    public static final okio.Path commonRelativeTo(@NotNull okio.Path path, @NotNull okio.Path other) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (Intrinsics.areEqual(path.getRoot(), other.getRoot())) {
            List<ByteString> segmentsBytes = path.getSegmentsBytes();
            List<ByteString> segmentsBytes2 = other.getSegmentsBytes();
            int min = Math.min(segmentsBytes.size(), segmentsBytes2.size());
            int i = 0;
            while (i < min && Intrinsics.areEqual(segmentsBytes.get(i), segmentsBytes2.get(i))) {
                i++;
            }
            if (i == min && path.getBytes().size() == other.getBytes().size()) {
                return Path.Companion.get$default(okio.Path.INSTANCE, ".", false, 1, (Object) null);
            }
            if (segmentsBytes2.subList(i, segmentsBytes2.size()).indexOf(f3683x9738a56c) == -1) {
                if (Intrinsics.areEqual(other.getBytes(), f3682x75d576dc)) {
                    return path;
                }
                Buffer buffer = new Buffer();
                ByteString m2675xfbe0c504 = m2675xfbe0c504(other);
                if (m2675xfbe0c504 == null && (m2675xfbe0c504 = m2675xfbe0c504(path)) == null) {
                    m2675xfbe0c504 = m2677x1378447b(okio.Path.DIRECTORY_SEPARATOR);
                }
                int size = segmentsBytes2.size();
                for (int i2 = i; i2 < size; i2++) {
                    buffer.write(f3683x9738a56c);
                    buffer.write(m2675xfbe0c504);
                }
                int size2 = segmentsBytes.size();
                while (i < size2) {
                    buffer.write(segmentsBytes.get(i));
                    buffer.write(m2675xfbe0c504);
                    i++;
                }
                return toPath(buffer, false);
            }
            throw new IllegalArgumentException(("Impossible relative path to resolve: " + path + " and " + other).toString());
        }
        throw new IllegalArgumentException(("Paths of different roots cannot be relative to each other: " + path + " and " + other).toString());
    }

    @NotNull
    public static final okio.Path commonResolve(@NotNull okio.Path path, @NotNull String child, boolean z) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(child, "child");
        return commonResolve(path, toPath(new Buffer().writeUtf8(child), false), z);
    }

    @Nullable
    public static final okio.Path commonRoot(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        int access$rootLength = access$rootLength(path);
        if (access$rootLength == -1) {
            return null;
        }
        return new okio.Path(path.getBytes().substring(0, access$rootLength));
    }

    @NotNull
    public static final List<String> commonSegments(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        ArrayList arrayList = new ArrayList();
        int access$rootLength = access$rootLength(path);
        if (access$rootLength == -1) {
            access$rootLength = 0;
        } else if (access$rootLength < path.getBytes().size() && path.getBytes().getByte(access$rootLength) == 92) {
            access$rootLength++;
        }
        int size = path.getBytes().size();
        int i = access$rootLength;
        while (access$rootLength < size) {
            if (path.getBytes().getByte(access$rootLength) == 47 || path.getBytes().getByte(access$rootLength) == 92) {
                arrayList.add(path.getBytes().substring(i, access$rootLength));
                i = access$rootLength + 1;
            }
            access$rootLength++;
        }
        if (i < path.getBytes().size()) {
            arrayList.add(path.getBytes().substring(i, path.getBytes().size()));
        }
        ArrayList arrayList2 = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((ByteString) it.next()).utf8());
        }
        return arrayList2;
    }

    @NotNull
    public static final List<ByteString> commonSegmentsBytes(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        ArrayList arrayList = new ArrayList();
        int access$rootLength = access$rootLength(path);
        if (access$rootLength == -1) {
            access$rootLength = 0;
        } else if (access$rootLength < path.getBytes().size() && path.getBytes().getByte(access$rootLength) == 92) {
            access$rootLength++;
        }
        int size = path.getBytes().size();
        int i = access$rootLength;
        while (access$rootLength < size) {
            if (path.getBytes().getByte(access$rootLength) == 47 || path.getBytes().getByte(access$rootLength) == 92) {
                arrayList.add(path.getBytes().substring(i, access$rootLength));
                i = access$rootLength + 1;
            }
            access$rootLength++;
        }
        if (i < path.getBytes().size()) {
            arrayList.add(path.getBytes().substring(i, path.getBytes().size()));
        }
        return arrayList;
    }

    @NotNull
    public static final okio.Path commonToPath(@NotNull String str, boolean z) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toPath(new Buffer().writeUtf8(str), z);
    }

    @NotNull
    public static final String commonToString(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return path.getBytes().utf8();
    }

    @Nullable
    public static final Character commonVolumeLetter(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        if (ByteString.indexOf$default(path.getBytes(), f3679xfbe0c504, 0, 2, (Object) null) != -1 || path.getBytes().size() < 2 || path.getBytes().getByte(1) != 58) {
            return null;
        }
        char c = (char) path.getBytes().getByte(0);
        if (('a' > c || c >= '{') && ('A' > c || c >= '[')) {
            return null;
        }
        return Character.valueOf(c);
    }

    @NotNull
    public static final okio.Path toPath(@NotNull Buffer buffer, boolean z) {
        ByteString byteString;
        boolean z2;
        char c;
        boolean z3;
        ByteString byteString2;
        ByteString readByteString;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Buffer buffer2 = new Buffer();
        ByteString byteString3 = null;
        int i = 0;
        while (true) {
            if (!buffer.rangeEquals(0L, f3679xfbe0c504)) {
                byteString = f3680x3271d0aa;
                if (!buffer.rangeEquals(0L, byteString)) {
                    break;
                }
            }
            byte readByte = buffer.readByte();
            if (byteString3 == null) {
                byteString3 = m2676x3271d0aa(readByte);
            }
            i++;
        }
        if (i >= 2 && Intrinsics.areEqual(byteString3, byteString)) {
            z2 = true;
        } else {
            z2 = false;
        }
        ByteString byteString4 = f3681x1378447b;
        if (z2) {
            Intrinsics.checkNotNull(byteString3);
            buffer2.write(byteString3);
            buffer2.write(byteString3);
        } else if (i > 0) {
            Intrinsics.checkNotNull(byteString3);
            buffer2.write(byteString3);
        } else {
            long indexOfElement = buffer.indexOfElement(byteString4);
            if (byteString3 == null) {
                if (indexOfElement == -1) {
                    byteString3 = m2677x1378447b(okio.Path.DIRECTORY_SEPARATOR);
                } else {
                    byteString3 = m2676x3271d0aa(buffer.getByte(indexOfElement));
                }
            }
            if (Intrinsics.areEqual(byteString3, byteString) && buffer.size() >= 2 && buffer.getByte(1L) == 58 && (('a' <= (c = (char) buffer.getByte(0L)) && c < '{') || ('A' <= c && c < '['))) {
                if (indexOfElement == 2) {
                    buffer2.write(buffer, 3L);
                } else {
                    buffer2.write(buffer, 2L);
                }
            }
        }
        if (buffer2.size() > 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        ArrayList arrayList = new ArrayList();
        while (true) {
            boolean exhausted = buffer.exhausted();
            byteString2 = f3682x75d576dc;
            if (exhausted) {
                break;
            }
            long indexOfElement2 = buffer.indexOfElement(byteString4);
            if (indexOfElement2 == -1) {
                readByteString = buffer.readByteString();
            } else {
                readByteString = buffer.readByteString(indexOfElement2);
                buffer.readByte();
            }
            ByteString byteString5 = f3683x9738a56c;
            if (Intrinsics.areEqual(readByteString, byteString5)) {
                if (!z3 || !arrayList.isEmpty()) {
                    if (z && (z3 || (!arrayList.isEmpty() && !Intrinsics.areEqual(CollectionsKt___CollectionsKt.last((List) arrayList), byteString5)))) {
                        if (z2 && arrayList.size() == 1) {
                        }
                        AbstractC0590xf7db57e6.removeLastOrNull(arrayList);
                    } else {
                        arrayList.add(readByteString);
                    }
                }
            } else if (!Intrinsics.areEqual(readByteString, byteString2) && !Intrinsics.areEqual(readByteString, ByteString.EMPTY)) {
                arrayList.add(readByteString);
            }
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (i2 > 0) {
                buffer2.write(byteString3);
            }
            buffer2.write((ByteString) arrayList.get(i2));
        }
        if (buffer2.size() == 0) {
            buffer2.write(byteString2);
        }
        return new okio.Path(buffer2.readByteString());
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    public static final ByteString m2675xfbe0c504(okio.Path path) {
        ByteString bytes = path.getBytes();
        ByteString byteString = f3679xfbe0c504;
        if (ByteString.indexOf$default(bytes, byteString, 0, 2, (Object) null) == -1) {
            ByteString bytes2 = path.getBytes();
            ByteString byteString2 = f3680x3271d0aa;
            if (ByteString.indexOf$default(bytes2, byteString2, 0, 2, (Object) null) == -1) {
                return null;
            }
            return byteString2;
        }
        return byteString;
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫 */
    public static final ByteString m2676x3271d0aa(byte b) {
        if (b != 47) {
            if (b == 92) {
                return f3680x3271d0aa;
            }
            throw new IllegalArgumentException(AbstractC0362x4440ab85.m2929x9738a56c(b, "not a directory separator: "));
        }
        return f3679xfbe0c504;
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉 */
    public static final ByteString m2677x1378447b(String str) {
        if (Intrinsics.areEqual(str, "/")) {
            return f3679xfbe0c504;
        }
        if (Intrinsics.areEqual(str, "\\")) {
            return f3680x3271d0aa;
        }
        throw new IllegalArgumentException(AbstractC0362x4440ab85.m2952x5ac5058d("not a directory separator: ", str));
    }

    @NotNull
    public static final okio.Path commonResolve(@NotNull okio.Path path, @NotNull ByteString child, boolean z) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(child, "child");
        return commonResolve(path, toPath(new Buffer().write(child), false), z);
    }

    @NotNull
    public static final okio.Path commonResolve(@NotNull okio.Path path, @NotNull Buffer child, boolean z) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(child, "child");
        return commonResolve(path, toPath(child, false), z);
    }

    @NotNull
    public static final okio.Path commonResolve(@NotNull okio.Path path, @NotNull okio.Path child, boolean z) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(child, "child");
        if (child.isAbsolute() || child.volumeLetter() != null) {
            return child;
        }
        ByteString m2675xfbe0c504 = m2675xfbe0c504(path);
        if (m2675xfbe0c504 == null && (m2675xfbe0c504 = m2675xfbe0c504(child)) == null) {
            m2675xfbe0c504 = m2677x1378447b(okio.Path.DIRECTORY_SEPARATOR);
        }
        Buffer buffer = new Buffer();
        buffer.write(path.getBytes());
        if (buffer.size() > 0) {
            buffer.write(m2675xfbe0c504);
        }
        buffer.write(child.getBytes());
        return toPath(buffer, z);
    }
}
