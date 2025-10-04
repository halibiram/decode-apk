package com.v2ray.ang.service;

import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.util.MessageUtil;
import defpackage.AbstractC0892xc141c517;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.v2ray.ang.service.V2RayTestService$onStartCommand$1", f = "V2RayTestService.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class V2RayTestService$onStartCommand$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $guid;
    int label;
    final /* synthetic */ V2RayTestService this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public V2RayTestService$onStartCommand$1(V2RayTestService v2RayTestService, String str, Continuation<? super V2RayTestService$onStartCommand$1> continuation) {
        super(2, continuation);
        this.this$0 = v2RayTestService;
        this.$guid = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new V2RayTestService$onStartCommand$1(this.this$0, this.$guid, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        long startRealPing;
        AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            startRealPing = this.this$0.startRealPing(this.$guid);
            MessageUtil.INSTANCE.sendMsg2UI(this.this$0, 71, new Pair(this.$guid, Boxing.boxLong(startRealPing)));
            return Unit.INSTANCE;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{4049034240408812647L, -3988023863315823522L, 3447198845087062006L, -7543417749053858168L, 5446831263067550034L, -8848682245619349785L, -4679474260805404294L}).toString());
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((V2RayTestService$onStartCommand$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
