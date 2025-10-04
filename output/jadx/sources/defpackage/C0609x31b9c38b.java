package defpackage;

import java.io.Serializable;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: 둘뎰땜딽땣딽딸뒝땧됩땁됴땲됴땫땜땩땟뎬뎻뒙땡땜뒘땮딎뎸돵득됨딽땦땐딎땵뒼듸땅땐뒀듰뎻딤땹드둠땻땬돴뎨됩땡됨딹땃딸돷딹됴돷둑뒨땳디뒼뒘뎽땮딻돝뒘딀땋땧따뒷땮뎽땟됩땟딠된둘뒤딤땤뎠뒈딠듌땋땦디둡뎠땹듼디딁뒀딄딁듻뒘딤땠딅돨둣딤땻돰땥돼뒾땯뒨듽뎽뒾둠뎬돴뒋됐땸딄뒾돝, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0609x31b9c38b implements Serializable {
    private static final long serialVersionUID = 0;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final CoroutineContext[] f4364xfbe0c504;

    static {
        final DefaultConstructorMarker defaultConstructorMarker = null;
        new Object(defaultConstructorMarker) { // from class: kotlin.coroutines.CombinedContext$Serialized$Companion
        };
    }

    public C0609x31b9c38b(CoroutineContext[] elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        this.f4364xfbe0c504 = elements;
    }

    private final Object readResolve() {
        CoroutineContext coroutineContext = EmptyCoroutineContext.INSTANCE;
        for (CoroutineContext coroutineContext2 : this.f4364xfbe0c504) {
            coroutineContext = coroutineContext.plus(coroutineContext2);
        }
        return coroutineContext;
    }
}
