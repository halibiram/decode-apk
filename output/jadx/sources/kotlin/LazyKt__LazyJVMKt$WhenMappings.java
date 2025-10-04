package kotlin;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* synthetic */ class LazyKt__LazyJVMKt$WhenMappings {
    public static final /* synthetic */ int[] $EnumSwitchMapping$0;

    static {
        int[] iArr = new int[LazyThreadSafetyMode.values().length];
        try {
            iArr[LazyThreadSafetyMode.SYNCHRONIZED.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[LazyThreadSafetyMode.PUBLICATION.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[LazyThreadSafetyMode.NONE.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        $EnumSwitchMapping$0 = iArr;
    }
}
