package kotlinx.coroutines.channels;

import kotlin.Metadata;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* synthetic */ class TickerChannelsKt$ticker$3$WhenMappings {
    public static final /* synthetic */ int[] $EnumSwitchMapping$0;

    static {
        int[] iArr = new int[TickerMode.values().length];
        try {
            iArr[TickerMode.FIXED_PERIOD.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[TickerMode.FIXED_DELAY.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        $EnumSwitchMapping$0 = iArr;
    }
}
