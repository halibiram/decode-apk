package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.intrinsics.CancellableKt;
import kotlinx.coroutines.intrinsics.UndispatchedKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001J[\u0010\f\u001a\u00020\u000b\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032'\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004¢\u0006\u0002\b\u00072\u0006\u0010\t\u001a\u00028\u00002\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005H\u0087\u0002¢\u0006\u0004\b\f\u0010\rR\u001a\u0010\u000f\u001a\u00020\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u000f\u0010\u0010j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016¨\u0006\u0017"}, d2 = {"Lkotlinx/coroutines/CoroutineStart;", "", "R", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "block", "receiver", "completion", "", "invoke", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V", "", "isLazy", "()Z", "isLazy$annotations", "()V", "DEFAULT", "LAZY", "ATOMIC", "UNDISPATCHED", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CoroutineStart {

    @DelicateCoroutinesApi
    public static final CoroutineStart ATOMIC;
    public static final CoroutineStart DEFAULT;
    public static final CoroutineStart LAZY;
    public static final CoroutineStart UNDISPATCHED;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final /* synthetic */ CoroutineStart[] f1765xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final /* synthetic */ EnumEntries f1766x3271d0aa;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CoroutineStart.values().length];
            try {
                iArr[CoroutineStart.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CoroutineStart.ATOMIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CoroutineStart.UNDISPATCHED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CoroutineStart.LAZY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.Enum, kotlinx.coroutines.CoroutineStart] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, kotlinx.coroutines.CoroutineStart] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Enum, kotlinx.coroutines.CoroutineStart] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, kotlinx.coroutines.CoroutineStart] */
    static {
        ?? r4 = new Enum("DEFAULT", 0);
        DEFAULT = r4;
        ?? r5 = new Enum("LAZY", 1);
        LAZY = r5;
        ?? r6 = new Enum("ATOMIC", 2);
        ATOMIC = r6;
        ?? r7 = new Enum("UNDISPATCHED", 3);
        UNDISPATCHED = r7;
        CoroutineStart[] coroutineStartArr = {r4, r5, r6, r7};
        f1765xfbe0c504 = coroutineStartArr;
        f1766x3271d0aa = EnumEntriesKt.enumEntries(coroutineStartArr);
    }

    @NotNull
    public static EnumEntries<CoroutineStart> getEntries() {
        return f1766x3271d0aa;
    }

    @InternalCoroutinesApi
    public static /* synthetic */ void isLazy$annotations() {
    }

    public static CoroutineStart valueOf(String str) {
        return (CoroutineStart) Enum.valueOf(CoroutineStart.class, str);
    }

    public static CoroutineStart[] values() {
        return (CoroutineStart[]) f1765xfbe0c504.clone();
    }

    @InternalCoroutinesApi
    public final <R, T> void invoke(@NotNull Function2<? super R, ? super Continuation<? super T>, ? extends Object> block, R receiver, @NotNull Continuation<? super T> completion) {
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        throw new NoWhenBranchMatchedException();
                    }
                    return;
                } else {
                    UndispatchedKt.startCoroutineUndispatched(block, receiver, completion);
                    return;
                }
            }
            ContinuationKt.startCoroutine(block, receiver, completion);
            return;
        }
        CancellableKt.startCoroutineCancellable(block, receiver, completion);
    }

    public final boolean isLazy() {
        if (this == LAZY) {
            return true;
        }
        return false;
    }
}
