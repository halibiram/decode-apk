package com.v2ray.ang.viewmodel;

import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.dto.ServersCache;
import com.v2ray.ang.util.MessageUtil;
import defpackage.AbstractC0892xc141c517;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.v2ray.ang.viewmodel.MainViewModel$testAllRealPing$2", f = "MainViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class MainViewModel$testAllRealPing$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ List<ServersCache> $serversCopy;
    int label;
    final /* synthetic */ MainViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MainViewModel$testAllRealPing$2(List<ServersCache> list, MainViewModel mainViewModel, Continuation<? super MainViewModel$testAllRealPing$2> continuation) {
        super(2, continuation);
        this.$serversCopy = list;
        this.this$0 = mainViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainViewModel$testAllRealPing$2(this.$serversCopy, this.this$0, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            Iterator<ServersCache> it = this.$serversCopy.iterator();
            while (it.hasNext()) {
                MessageUtil.INSTANCE.sendMsg2TestService(this.this$0.getApplication(), 7, it.next().getGuid());
            }
            return Unit.INSTANCE;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{8697820867274838836L, 5966775137158265447L, -1069698209307796966L, -2209589638527592279L, 5367526190812565685L, -903708971602316359L, 6688615902740515568L}).toString());
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((MainViewModel$testAllRealPing$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
