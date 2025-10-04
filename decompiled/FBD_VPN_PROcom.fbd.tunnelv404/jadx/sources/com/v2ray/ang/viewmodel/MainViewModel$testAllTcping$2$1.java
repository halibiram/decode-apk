package com.v2ray.ang.viewmodel;

import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.dto.ServersCache;
import com.v2ray.ang.handler.MmkvManager;
import com.v2ray.ang.handler.SpeedtestManager;
import defpackage.AbstractC0892xc141c517;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.v2ray.ang.viewmodel.MainViewModel$testAllTcping$2$1", f = "MainViewModel.kt", i = {0}, l = {228}, m = "invokeSuspend", n = {"$this$launch"}, s = {"L$0"})
/* loaded from: classes3.dex */
public final class MainViewModel$testAllTcping$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ ServersCache $item;
    final /* synthetic */ String $serverAddress;
    final /* synthetic */ String $serverPort;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ MainViewModel this$0;

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.v2ray.ang.viewmodel.MainViewModel$testAllTcping$2$1$1", f = "MainViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.v2ray.ang.viewmodel.MainViewModel$testAllTcping$2$1$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ ServersCache $item;
        final /* synthetic */ long $testResult;
        int label;
        final /* synthetic */ MainViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ServersCache serversCache, long j, MainViewModel mainViewModel, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$item = serversCache;
            this.$testResult = j;
            this.this$0 = mainViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$item, this.$testResult, this.this$0, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                MmkvManager.INSTANCE.encodeServerTestDelayMillis(this.$item.getGuid(), this.$testResult);
                this.this$0.getUpdateListAction().setValue(Boxing.boxInt(this.this$0.getPosition(this.$item.getGuid())));
                return Unit.INSTANCE;
            }
            throw new IllegalStateException(new ObfuscatedString(new long[]{-8165509200534515749L, 2005268052240179611L, -1132171402804478715L, -6959124849564134876L, 6300048362288885449L, 8087708754872153204L, -7909731203308178876L}).toString());
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MainViewModel$testAllTcping$2$1(String str, String str2, ServersCache serversCache, MainViewModel mainViewModel, Continuation<? super MainViewModel$testAllTcping$2$1> continuation) {
        super(2, continuation);
        this.$serverAddress = str;
        this.$serverPort = str2;
        this.$item = serversCache;
        this.this$0 = mainViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        MainViewModel$testAllTcping$2$1 mainViewModel$testAllTcping$2$1 = new MainViewModel$testAllTcping$2$1(this.$serverAddress, this.$serverPort, this.$item, this.this$0, continuation);
        mainViewModel$testAllTcping$2$1.L$0 = obj;
        return mainViewModel$testAllTcping$2$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineScope coroutineScope;
        Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                coroutineScope = (CoroutineScope) this.L$0;
                ResultKt.throwOnFailure(obj);
            } else {
                throw new IllegalStateException(new ObfuscatedString(new long[]{-6603250292825817217L, 2255589786351559857L, 7698279159844371440L, -4204141690975087500L, -872469965130544758L, -7298047922646577036L, -4455680373442999133L}).toString());
            }
        } else {
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope2 = (CoroutineScope) this.L$0;
            SpeedtestManager speedtestManager = SpeedtestManager.INSTANCE;
            String str = this.$serverAddress;
            int parseInt = Integer.parseInt(this.$serverPort);
            this.L$0 = coroutineScope2;
            this.label = 1;
            Object tcping = speedtestManager.tcping(str, parseInt, this);
            if (tcping == coroutine_suspended) {
                return coroutine_suspended;
            }
            coroutineScope = coroutineScope2;
            obj = tcping;
        }
        BuildersKt.launch$default(coroutineScope, Dispatchers.getMain(), null, new AnonymousClass1(this.$item, ((Number) obj).longValue(), this.this$0, null), 2, null);
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((MainViewModel$testAllTcping$2$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
