package kotlinx.coroutines.flow;

import kotlin.Metadata;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* synthetic */ class FlowKt__ShareKt$launchSharing$1$2$WhenMappings {
    public static final /* synthetic */ int[] $EnumSwitchMapping$0;

    static {
        int[] iArr = new int[SharingCommand.values().length];
        try {
            iArr[SharingCommand.START.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[SharingCommand.STOP.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[SharingCommand.STOP_AND_RESET_REPLAY_CACHE.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        $EnumSwitchMapping$0 = iArr;
    }
}
