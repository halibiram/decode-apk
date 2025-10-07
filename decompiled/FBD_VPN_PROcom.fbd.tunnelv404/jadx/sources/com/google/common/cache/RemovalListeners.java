package com.google.common.cache;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.cache.RemovalListeners;
import com.google.common.cache.RemovalNotification;
import defpackage.RunnableC0938xaa9be1e3;
import java.util.concurrent.Executor;

@ElementTypesAreNonnullByDefault
@GwtIncompatible
/* loaded from: classes2.dex */
public final class RemovalListeners {
    private RemovalListeners() {
    }

    public static <K, V> RemovalListener<K, V> asynchronous(final RemovalListener<K, V> removalListener, final Executor executor) {
        Preconditions.checkNotNull(removalListener);
        Preconditions.checkNotNull(executor);
        return new RemovalListener() { // from class: 땅듼뒷딽딝됫땁돼땰뒋돨둔돤돼둔뒨뒹듻드둬땝듌듐땃됐뒻땧딹도딨따뒐땭땻돤땠땲둘뎽땻뒈돷돝뒤땸돼뒛딞든뒼땳도딽딀돼뎬둔됴딽딻뎹땹둔땡둑딅됐뒙듸돷됩됨돴뒋땭됩땱돠득돰땣딨땋뒤둑돳뒷뎽뒤딝땄될둬땱될땐딃뒾땹뒵뎰땲뒋됩땻됩땪땰땔둥딤돨땮뒹딞뒘뎸돼땟땧땪뎨땬땄뒘땝딄땄두듟
            @Override // com.google.common.cache.RemovalListener
            public final void onRemoval(RemovalNotification removalNotification) {
                RemovalListeners.lambda$asynchronous$1(executor, removalListener, removalNotification);
            }
        };
    }

    public static /* synthetic */ void lambda$asynchronous$1(Executor executor, RemovalListener removalListener, RemovalNotification removalNotification) {
        executor.execute(new RunnableC0938xaa9be1e3(removalListener, removalNotification, 11));
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    public static /* synthetic */ void m1262xfbe0c504(RemovalListener removalListener, RemovalNotification removalNotification) {
        removalListener.onRemoval(removalNotification);
    }
}
