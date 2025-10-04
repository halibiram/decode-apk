package kotlin.io.path;

import kotlin.Metadata;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* synthetic */ class PathsKt__PathRecursiveFunctionsKt$WhenMappings {
    public static final /* synthetic */ int[] $EnumSwitchMapping$0;
    public static final /* synthetic */ int[] $EnumSwitchMapping$1;

    static {
        int[] iArr = new int[CopyActionResult.values().length];
        try {
            iArr[CopyActionResult.CONTINUE.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[CopyActionResult.TERMINATE.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[CopyActionResult.SKIP_SUBTREE.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        $EnumSwitchMapping$0 = iArr;
        int[] iArr2 = new int[OnErrorResult.values().length];
        try {
            iArr2[OnErrorResult.TERMINATE.ordinal()] = 1;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr2[OnErrorResult.SKIP_SUBTREE.ordinal()] = 2;
        } catch (NoSuchFieldError unused5) {
        }
        $EnumSwitchMapping$1 = iArr2;
    }
}
