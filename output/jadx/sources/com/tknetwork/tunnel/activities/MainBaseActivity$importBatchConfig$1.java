package com.tknetwork.tunnel.activities;

import com.fbd.tunnel.R;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.extension._ExtKt;
import com.v2ray.ang.handler.AngConfigManager;
import defpackage.AbstractC0892xc141c517;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;

@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.tknetwork.tunnel.activities.MainBaseActivity$importBatchConfig$1", f = "MainBaseActivity.kt", i = {0, 0, 2}, l = {755, 756, 769}, m = "invokeSuspend", n = {"count", "countSub", "e"}, s = {"I$0", "I$1", "L$0"})
/* loaded from: classes3.dex */
public final class MainBaseActivity$importBatchConfig$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $server;
    int I$0;
    int I$1;
    Object L$0;
    int label;
    final /* synthetic */ MainBaseActivity this$0;

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.tknetwork.tunnel.activities.MainBaseActivity$importBatchConfig$1$1", f = "MainBaseActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.tknetwork.tunnel.activities.MainBaseActivity$importBatchConfig$1$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $count;
        final /* synthetic */ int $countSub;
        int label;
        final /* synthetic */ MainBaseActivity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(int i, MainBaseActivity mainBaseActivity, int i2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$count = i;
            this.this$0 = mainBaseActivity;
            this.$countSub = i2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$count, this.this$0, this.$countSub, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                if (this.$count > 0) {
                    this.this$0.getMainViewModel().reloadServerList();
                } else if (this.$countSub > 0) {
                    this.this$0.initGroupTab();
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException(new ObfuscatedString(new long[]{-4541990338011269656L, -8974961140340129166L, 4383332993450006015L, 8518307073731004411L, 8272443922438315337L, 511319481861306692L, -6243607660103257184L}).toString());
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.tknetwork.tunnel.activities.MainBaseActivity$importBatchConfig$1$2", f = "MainBaseActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.tknetwork.tunnel.activities.MainBaseActivity$importBatchConfig$1$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;
        final /* synthetic */ MainBaseActivity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(MainBaseActivity mainBaseActivity, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.this$0 = mainBaseActivity;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.this$0, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                _ExtKt.toastError(this.this$0, R.string.toast_failure);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException(new ObfuscatedString(new long[]{6556793166386064814L, -6155840483502365003L, 2992994170387047870L, -7476230452945581295L, 6722720708298929299L, -2368430934904915889L, 724970807555641772L}).toString());
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MainBaseActivity$importBatchConfig$1(String str, MainBaseActivity mainBaseActivity, Continuation<? super MainBaseActivity$importBatchConfig$1> continuation) {
        super(2, continuation);
        this.$server = str;
        this.this$0 = mainBaseActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainBaseActivity$importBatchConfig$1(this.$server, this.this$0, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i;
        int i2;
        Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        int i3 = this.label;
        try {
        } catch (Exception e) {
            MainCoroutineDispatcher main = Dispatchers.getMain();
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0, null);
            this.L$0 = e;
            this.label = 3;
            if (BuildersKt.withContext(main, anonymousClass2, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        if (i3 != 0) {
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 == 3) {
                        ResultKt.throwOnFailure(obj);
                        new ObfuscatedString(new long[]{6280466180745743111L, 7791487532755911664L, -8934804056623945010L}).toString();
                        new ObfuscatedString(new long[]{2711271290931383759L, 1428724021671387602L, 80992406324740624L, -4041243403221935544L, 1375490644322676369L}).toString();
                        return Unit.INSTANCE;
                    }
                    throw new IllegalStateException(new ObfuscatedString(new long[]{1786705544811343846L, 5556687965353038271L, 2569498072779774764L, 7477009628150899345L, 4412458117745647176L, 9183686853053376759L, 7188639572821220135L}).toString());
                }
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            i2 = this.I$1;
            i = this.I$0;
            ResultKt.throwOnFailure(obj);
        } else {
            ResultKt.throwOnFailure(obj);
            Pair<Integer, Integer> importBatchConfig1 = AngConfigManager.importBatchConfig1(this.$server, this.this$0.getMainViewModel().getSubscriptionId(), true);
            int intValue = importBatchConfig1.component1().intValue();
            int intValue2 = importBatchConfig1.component2().intValue();
            this.I$0 = intValue;
            this.I$1 = intValue2;
            this.label = 1;
            if (DelayKt.delay(500L, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            i = intValue;
            i2 = intValue2;
        }
        MainCoroutineDispatcher main2 = Dispatchers.getMain();
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(i, this.this$0, i2, null);
        this.label = 2;
        if (BuildersKt.withContext(main2, anonymousClass1, this) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((MainBaseActivity$importBatchConfig$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
