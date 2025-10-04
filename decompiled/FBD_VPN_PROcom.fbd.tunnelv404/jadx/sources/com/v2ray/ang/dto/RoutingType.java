package com.v2ray.ang.dto;

import com.panda912.muddy.ObfuscatedString;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\fB\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/v2ray/ang/dto/RoutingType;", "", "fileName", "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getFileName", "()Ljava/lang/String;", "WHITE", "BLACK", "GLOBAL", "WHITE_IRAN", "Companion", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class RoutingType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ RoutingType[] $VALUES;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;

    @NotNull
    private final String fileName;
    public static final RoutingType WHITE = new RoutingType(new ObfuscatedString(new long[]{7882202050681934800L, 1517841392463586740L}).toString(), 0, new ObfuscatedString(new long[]{5719247594476679716L, 4691353753532359718L, -522009869312436924L, -7531995890399322735L}).toString());
    public static final RoutingType BLACK = new RoutingType(new ObfuscatedString(new long[]{5573491552348408716L, -520424031792413314L}).toString(), 1, new ObfuscatedString(new long[]{1540437953458741785L, -1877443309590994236L, -6386027873150257557L, 907994510166361714L}).toString());
    public static final RoutingType GLOBAL = new RoutingType(new ObfuscatedString(new long[]{-6027814030815012955L, -3286008295360744144L}).toString(), 2, new ObfuscatedString(new long[]{7298553342408153461L, 275676782035373338L, 408399639750364606L, 2491834393544701412L}).toString());
    public static final RoutingType WHITE_IRAN = new RoutingType(new ObfuscatedString(new long[]{-4250890131085122546L, -1571416360122005343L, -8184316275099971488L}).toString(), 3, new ObfuscatedString(new long[]{-3586920976608658158L, 4099048193088236924L, 7173571707631708118L, -4650734379320917404L, 4771140760455452102L}).toString());

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lcom/v2ray/ang/dto/RoutingType$Companion;", "", "<init>", "()V", "fromIndex", "Lcom/v2ray/ang/dto/RoutingType;", "index", "", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final RoutingType fromIndex(int index) {
            if (index != 0) {
                if (index != 1) {
                    if (index != 2) {
                        if (index != 3) {
                            return RoutingType.WHITE;
                        }
                        return RoutingType.WHITE_IRAN;
                    }
                    return RoutingType.GLOBAL;
                }
                return RoutingType.BLACK;
            }
            return RoutingType.WHITE;
        }

        private Companion() {
        }
    }

    private static final /* synthetic */ RoutingType[] $values() {
        return new RoutingType[]{WHITE, BLACK, GLOBAL, WHITE_IRAN};
    }

    static {
        RoutingType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
    }

    private RoutingType(String str, int i, String str2) {
        this.fileName = str2;
    }

    @NotNull
    public static EnumEntries<RoutingType> getEntries() {
        return $ENTRIES;
    }

    public static RoutingType valueOf(String str) {
        return (RoutingType) Enum.valueOf(RoutingType.class, str);
    }

    public static RoutingType[] values() {
        return (RoutingType[]) $VALUES.clone();
    }

    @NotNull
    public final String getFileName() {
        return this.fileName;
    }
}
