package coil3.content;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001:\u0001\u0010J,\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00032\b\u0010\r\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH&R\u0018\u0010\u0002\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0011À\u0006\u0001"}, d2 = {"Lcoil3/util/Logger;", "", "minLevel", "Lcoil3/util/Logger$Level;", "getMinLevel", "()Lcoil3/util/Logger$Level;", "setMinLevel", "(Lcoil3/util/Logger$Level;)V", "log", "", "tag", "", "level", "message", "throwable", "", "Level", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public interface Logger {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcoil3/util/Logger$Level;", "", "Verbose", "Debug", "Info", "Warn", "Error", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Level {
        public static final Level Debug;
        public static final Level Error;
        public static final Level Info;
        public static final Level Verbose;
        public static final Level Warn;

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
        public static final /* synthetic */ Level[] f888xfbe0c504;

        /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
        public static final /* synthetic */ EnumEntries f889x3271d0aa;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v0, types: [coil3.util.Logger$Level, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r6v1, types: [coil3.util.Logger$Level, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r7v1, types: [coil3.util.Logger$Level, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r8v1, types: [coil3.util.Logger$Level, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r9v1, types: [coil3.util.Logger$Level, java.lang.Enum] */
        static {
            ?? r5 = new Enum("Verbose", 0);
            Verbose = r5;
            ?? r6 = new Enum("Debug", 1);
            Debug = r6;
            ?? r7 = new Enum("Info", 2);
            Info = r7;
            ?? r8 = new Enum("Warn", 3);
            Warn = r8;
            ?? r9 = new Enum("Error", 4);
            Error = r9;
            Level[] levelArr = {r5, r6, r7, r8, r9};
            f888xfbe0c504 = levelArr;
            f889x3271d0aa = EnumEntriesKt.enumEntries(levelArr);
        }

        @NotNull
        public static EnumEntries<Level> getEntries() {
            return f889x3271d0aa;
        }

        public static Level valueOf(String str) {
            return (Level) Enum.valueOf(Level.class, str);
        }

        public static Level[] values() {
            return (Level[]) f888xfbe0c504.clone();
        }
    }

    @NotNull
    Level getMinLevel();

    void log(@NotNull String tag, @NotNull Level level, @Nullable String message, @Nullable Throwable throwable);

    void setMinLevel(@NotNull Level level);
}
