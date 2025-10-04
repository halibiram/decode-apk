package com.v2ray.ang.viewmodel;

import android.content.res.AssetManager;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.handler.SettingsManager;
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
@DebugMetadata(c = "com.v2ray.ang.viewmodel.MainViewModel$initAssets$1", f = "MainViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class MainViewModel$initAssets$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ AssetManager $assets;
    int label;
    final /* synthetic */ MainViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MainViewModel$initAssets$1(MainViewModel mainViewModel, AssetManager assetManager, Continuation<? super MainViewModel$initAssets$1> continuation) {
        super(2, continuation);
        this.this$0 = mainViewModel;
        this.$assets = assetManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainViewModel$initAssets$1(this.this$0, this.$assets, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            SettingsManager.INSTANCE.initAssets(this.this$0.getApplication(), this.$assets);
            return Unit.INSTANCE;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-7342707141084851221L, -1143414072482734389L, 1529610098149847333L, -7609631963677317447L, -6415953251405814844L, 1509736240589341165L, 8149475780653425116L}).toString());
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((MainViewModel$initAssets$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
