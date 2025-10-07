package com.v2ray.ang.viewmodel;

import android.app.Application;
import com.fbd.tunnel.R;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.dto.ServersCache;
import com.v2ray.ang.extension._ExtKt;
import com.v2ray.ang.handler.AngConfigManager;
import com.v2ray.ang.handler.MmkvManager;
import defpackage.AbstractC0587xb7546d05;
import defpackage.AbstractC0892xc141c517;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.v2ray.ang.viewmodel.MainViewModel$createIntelligentSelectionAll$1", f = "MainViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
@SourceDebugExtension({"SMAP\nMainViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainViewModel.kt\ncom/v2ray/ang/viewmodel/MainViewModel$createIntelligentSelectionAll$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,505:1\n1563#2:506\n1634#2,3:507\n*S KotlinDebug\n*F\n+ 1 MainViewModel.kt\ncom/v2ray/ang/viewmodel/MainViewModel$createIntelligentSelectionAll$1\n*L\n408#1:506\n408#1:507,3\n*E\n"})
/* loaded from: classes3.dex */
public final class MainViewModel$createIntelligentSelectionAll$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ MainViewModel this$0;

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.v2ray.ang.viewmodel.MainViewModel$createIntelligentSelectionAll$1$1", f = "MainViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.v2ray.ang.viewmodel.MainViewModel$createIntelligentSelectionAll$1$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $key;
        int label;
        final /* synthetic */ MainViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(String str, MainViewModel mainViewModel, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$key = str;
            this.this$0 = mainViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$key, this.this$0, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                String str = this.$key;
                if (str != null && str.length() != 0) {
                    _ExtKt.toastSuccess(this.this$0.getApplication(), R.string.toast_success);
                    MmkvManager.INSTANCE.setSelectServer(this.$key);
                    this.this$0.reloadServerList();
                } else {
                    _ExtKt.toastError(this.this$0.getApplication(), R.string.toast_failure);
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException(new ObfuscatedString(new long[]{8666594146350060848L, 4688080186948996871L, -5181615861771568332L, -8160312945538655552L, -4520722743392497122L, -3376640319158940033L, -8524191783925674958L}).toString());
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MainViewModel$createIntelligentSelectionAll$1(MainViewModel mainViewModel, Continuation<? super MainViewModel$createIntelligentSelectionAll$1> continuation) {
        super(2, continuation);
        this.this$0 = mainViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        MainViewModel$createIntelligentSelectionAll$1 mainViewModel$createIntelligentSelectionAll$1 = new MainViewModel$createIntelligentSelectionAll$1(this.this$0, continuation);
        mainViewModel$createIntelligentSelectionAll$1.L$0 = obj;
        return mainViewModel$createIntelligentSelectionAll$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            AngConfigManager angConfigManager = AngConfigManager.INSTANCE;
            Application application = this.this$0.getApplication();
            List<ServersCache> serversCache = this.this$0.getServersCache();
            ArrayList arrayList = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(serversCache, 10));
            Iterator<T> it = serversCache.iterator();
            while (it.hasNext()) {
                arrayList.add(((ServersCache) it.next()).getGuid());
            }
            BuildersKt.launch$default(coroutineScope, Dispatchers.getMain(), null, new AnonymousClass1(angConfigManager.createIntelligentSelection(application, CollectionsKt___CollectionsKt.toList(arrayList), this.this$0.getSubscriptionId()), this.this$0, null), 2, null);
            return Unit.INSTANCE;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-3408158711329818756L, -2747287638927294053L, -7854723232639542380L, -8500636552761105388L, -4199598932729240441L, 5325453168841710323L, 5175780736560173386L}).toString());
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((MainViewModel$createIntelligentSelectionAll$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
