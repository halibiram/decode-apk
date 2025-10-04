package com.v2ray.ang.service;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0892xc141c517;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.v2ray.ang.service.V2RayServiceManager$stopCoreLoop$1", f = "V2RayServiceManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class V2RayServiceManager$stopCoreLoop$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;

    public V2RayServiceManager$stopCoreLoop$1(Continuation<? super V2RayServiceManager$stopCoreLoop$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new V2RayServiceManager$stopCoreLoop$1(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            try {
                V2RayServiceManager.INSTANCE.getCoreController().stopLoop();
            } catch (Exception unused) {
                new ObfuscatedString(new long[]{3134569228490417779L, -1771696764972017348L, -2301324870751048842L}).toString();
                new ObfuscatedString(new long[]{-4250034357458298782L, -8244568301741142206L, 4685234799931181836L, 4874819995716366166L, -156265562818327821L}).toString();
            }
            return Unit.INSTANCE;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{487912719082162903L, -4568011533750342299L, 4081700182775876149L, 6586205371714060646L, 6057141391784111216L, 8231926486173796109L, 7715308070119691745L}).toString());
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((V2RayServiceManager$stopCoreLoop$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
