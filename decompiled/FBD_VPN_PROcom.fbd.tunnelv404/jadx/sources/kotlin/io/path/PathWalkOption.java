package kotlin.io.path;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@SinceKotlin(version = "2.1")
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/io/path/PathWalkOption;", "", "INCLUDE_DIRECTORIES", "BREADTH_FIRST", "FOLLOW_LINKS", "kotlin-stdlib-jdk7"}, k = 1, mv = {2, 1, 0}, xi = 48)
@WasExperimental(markerClass = {ExperimentalPathApi.class})
/* loaded from: classes3.dex */
public final class PathWalkOption {
    public static final PathWalkOption BREADTH_FIRST;
    public static final PathWalkOption FOLLOW_LINKS;
    public static final PathWalkOption INCLUDE_DIRECTORIES;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final /* synthetic */ PathWalkOption[] f1436xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final /* synthetic */ EnumEntries f1437x3271d0aa;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Enum, kotlin.io.path.PathWalkOption] */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Enum, kotlin.io.path.PathWalkOption] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, kotlin.io.path.PathWalkOption] */
    static {
        ?? r3 = new Enum("INCLUDE_DIRECTORIES", 0);
        INCLUDE_DIRECTORIES = r3;
        ?? r4 = new Enum("BREADTH_FIRST", 1);
        BREADTH_FIRST = r4;
        ?? r5 = new Enum("FOLLOW_LINKS", 2);
        FOLLOW_LINKS = r5;
        PathWalkOption[] pathWalkOptionArr = {r3, r4, r5};
        f1436xfbe0c504 = pathWalkOptionArr;
        f1437x3271d0aa = EnumEntriesKt.enumEntries(pathWalkOptionArr);
    }

    @NotNull
    public static EnumEntries<PathWalkOption> getEntries() {
        return f1437x3271d0aa;
    }

    public static PathWalkOption valueOf(String str) {
        return (PathWalkOption) Enum.valueOf(PathWalkOption.class, str);
    }

    public static PathWalkOption[] values() {
        return (PathWalkOption[]) f1436xfbe0c504.clone();
    }
}
