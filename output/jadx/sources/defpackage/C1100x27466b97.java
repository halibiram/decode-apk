package defpackage;

import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: 땋땫둔둘뒻뒀둣뒙될돳뎨땧뒝딌땅땦뒝뒬땡된뎸듸땄땔땤듼뒵땫돸딁딀된땮될땫땥듔뎨돠땅됫땨딟듽딅땍됨뒾땜둣뒘둔드땡둑될됫듰드땣뒵돴뎨뒙뒨딀땅디듨돼돼딁딸뒙딎뒾돵딟둥듻뒵뒋됐뒨땩둠듌뒉딄돝땠뒙땸땡딤땦둘뎬땣둡듨딝뒨땫딄뒾땻든뎠듔땃됩땔됩딅돴땪뒹돳땀됩뎰듌딠돨땸땰둬딟돝, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1100x27466b97 implements Continuation {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public Result f5395xfbe0c504;

    @Override // kotlin.coroutines.Continuation
    public final CoroutineContext getContext() {
        return EmptyCoroutineContext.INSTANCE;
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(Object obj) {
        synchronized (this) {
            this.f5395xfbe0c504 = Result.m1763boximpl(obj);
            Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
            notifyAll();
        }
    }
}
