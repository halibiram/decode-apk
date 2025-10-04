package com.v2ray.ang.service;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0892xc141c517;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.v2ray.ang.service.ProcessService$runProcess$1", f = "ProcessService.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class ProcessService$runProcess$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ ProcessService this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProcessService$runProcess$1(ProcessService processService, Continuation<? super ProcessService$runProcess$1> continuation) {
        super(2, continuation);
        this.this$0 = processService;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ProcessService$runProcess$1(this.this$0, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Process process;
        AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            Thread.sleep(50L);
            new ObfuscatedString(new long[]{5036659200139914558L, -1058990479107404678L, 932413046463880439L}).toString();
            new ObfuscatedString(new long[]{-6026880849616456499L, -828263531467793715L, -171932881832052029L}).toString();
            process = this.this$0.process;
            if (process != null) {
                Boxing.boxInt(process.waitFor());
            }
            new ObfuscatedString(new long[]{4662048491488954133L, 4927358539769995377L, 8944326643123188923L}).toString();
            new ObfuscatedString(new long[]{-7674024951896025303L, 7131494772518165192L, 2285821541845194207L, 1967962308686003855L}).toString();
            return Unit.INSTANCE;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-5022076441812001839L, -3553883549031717608L, 8065772231041168909L, -3160614545174871140L, 8021689096888708924L, 8473266854194462595L, 266037388832875978L}).toString());
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((ProcessService$runProcess$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
