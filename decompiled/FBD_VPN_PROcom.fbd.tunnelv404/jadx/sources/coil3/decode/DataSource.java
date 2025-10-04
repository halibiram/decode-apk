package coil3.decode;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcoil3/decode/DataSource;", "", "MEMORY_CACHE", "MEMORY", "DISK", "NETWORK", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DataSource {
    public static final DataSource DISK;
    public static final DataSource MEMORY;
    public static final DataSource MEMORY_CACHE;
    public static final DataSource NETWORK;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final /* synthetic */ DataSource[] f511xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final /* synthetic */ EnumEntries f512x3271d0aa;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [coil3.decode.DataSource, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r5v1, types: [coil3.decode.DataSource, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r6v1, types: [coil3.decode.DataSource, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r7v1, types: [coil3.decode.DataSource, java.lang.Enum] */
    static {
        ?? r4 = new Enum("MEMORY_CACHE", 0);
        MEMORY_CACHE = r4;
        ?? r5 = new Enum("MEMORY", 1);
        MEMORY = r5;
        ?? r6 = new Enum("DISK", 2);
        DISK = r6;
        ?? r7 = new Enum("NETWORK", 3);
        NETWORK = r7;
        DataSource[] dataSourceArr = {r4, r5, r6, r7};
        f511xfbe0c504 = dataSourceArr;
        f512x3271d0aa = EnumEntriesKt.enumEntries(dataSourceArr);
    }

    @NotNull
    public static EnumEntries<DataSource> getEntries() {
        return f512x3271d0aa;
    }

    public static DataSource valueOf(String str) {
        return (DataSource) Enum.valueOf(DataSource.class, str);
    }

    public static DataSource[] values() {
        return (DataSource[]) f511xfbe0c504.clone();
    }
}
