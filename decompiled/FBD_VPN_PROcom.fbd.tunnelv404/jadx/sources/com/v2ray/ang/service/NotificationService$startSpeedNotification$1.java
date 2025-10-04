package com.v2ray.ang.service;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0892xc141c517;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.DelayKt;

@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.v2ray.ang.service.NotificationService$startSpeedNotification$1", f = "NotificationService.kt", i = {0}, l = {84}, m = "invokeSuspend", n = {"$this$launch"}, s = {"L$0"})
@SourceDebugExtension({"SMAP\nNotificationService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationService.kt\ncom/v2ray/ang/service/NotificationService$startSpeedNotification$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,252:1\n1869#2,2:253\n*S KotlinDebug\n*F\n+ 1 NotificationService.kt\ncom/v2ray/ang/service/NotificationService$startSpeedNotification$1\n*L\n61#1:253,2\n*E\n"})
/* loaded from: classes3.dex */
public final class NotificationService$startSpeedNotification$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Ref.BooleanRef $lastZeroSpeed;
    final /* synthetic */ List<String> $outboundTags;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationService$startSpeedNotification$1(List<String> list, Ref.BooleanRef booleanRef, Continuation<? super NotificationService$startSpeedNotification$1> continuation) {
        super(2, continuation);
        this.$outboundTags = list;
        this.$lastZeroSpeed = booleanRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        NotificationService$startSpeedNotification$1 notificationService$startSpeedNotification$1 = new NotificationService$startSpeedNotification$1(this.$outboundTags, this.$lastZeroSpeed, continuation);
        notificationService$startSpeedNotification$1.L$0 = obj;
        return notificationService$startSpeedNotification$1;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x003b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x017b -> B:5:0x017e). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        CoroutineScope coroutineScope;
        long j;
        boolean z;
        long j2;
        long j3;
        Object obj2;
        String str;
        int i = 2;
        Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        int i2 = this.label;
        if (i2 != 0) {
            if (i2 == 1) {
                coroutineScope = (CoroutineScope) this.L$0;
                ResultKt.throwOnFailure(obj);
                Object obj3 = coroutine_suspended;
                coroutine_suspended = obj3;
                i = 2;
                if (CoroutineScopeKt.isActive(coroutineScope)) {
                    long currentTimeMillis = System.currentTimeMillis();
                    j = NotificationService.lastQueryTime;
                    double d = (currentTimeMillis - j) / 1000.0d;
                    Ref.LongRef longRef = new Ref.LongRef();
                    StringBuilder sb = new StringBuilder();
                    List<String> list = this.$outboundTags;
                    if (list != null) {
                        for (String str2 : list) {
                            V2RayServiceManager v2RayServiceManager = V2RayServiceManager.INSTANCE;
                            long[] jArr = new long[i];
                            // fill-array-data instruction
                            jArr[0] = 1574932032717205139L;
                            jArr[1] = -8118075515320469495L;
                            long queryStats = v2RayServiceManager.queryStats(str2, new ObfuscatedString(jArr).toString());
                            long[] jArr2 = new long[i];
                            // fill-array-data instruction
                            jArr2[0] = -6644216362411137245L;
                            jArr2[1] = 789030487002555588L;
                            long queryStats2 = v2RayServiceManager.queryStats(str2, new ObfuscatedString(jArr2).toString());
                            long j4 = queryStats + queryStats2;
                            if (j4 > 0) {
                                NotificationService.INSTANCE.appendSpeedString(sb, str2, queryStats / d, queryStats2 / d);
                                longRef.element += j4;
                            }
                        }
                    }
                    V2RayServiceManager v2RayServiceManager2 = V2RayServiceManager.INSTANCE;
                    long[] jArr3 = new long[i];
                    // fill-array-data instruction
                    jArr3[0] = -5515927312029304943L;
                    jArr3[1] = -2374805786079299683L;
                    long[] jArr4 = new long[i];
                    // fill-array-data instruction
                    jArr4[0] = 4736116127674570958L;
                    jArr4[1] = -8128526460722214977L;
                    long queryStats3 = v2RayServiceManager2.queryStats(new ObfuscatedString(jArr3).toString(), new ObfuscatedString(jArr4).toString());
                    long[] jArr5 = new long[i];
                    // fill-array-data instruction
                    jArr5[0] = 3634741008223463380L;
                    jArr5[1] = -6846023782645211000L;
                    long[] jArr6 = new long[i];
                    // fill-array-data instruction
                    jArr6[0] = 7948503131328396679L;
                    jArr6[1] = 5071129368610018858L;
                    long queryStats4 = v2RayServiceManager2.queryStats(new ObfuscatedString(jArr5).toString(), new ObfuscatedString(jArr6).toString());
                    long j5 = longRef.element;
                    if (j5 == 0 && queryStats3 == 0 && queryStats4 == 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z && this.$lastZeroSpeed.element) {
                        obj2 = coroutine_suspended;
                    } else {
                        if (j5 == 0) {
                            NotificationService notificationService = NotificationService.INSTANCE;
                            List<String> list2 = this.$outboundTags;
                            if (list2 != null) {
                                str = (String) CollectionsKt___CollectionsKt.firstOrNull((List) list2);
                            } else {
                                str = null;
                            }
                            j2 = queryStats4;
                            String str3 = str;
                            j3 = queryStats3;
                            notificationService.appendSpeedString(sb, str3, 0.0d, 0.0d);
                        } else {
                            j2 = queryStats4;
                            j3 = queryStats3;
                        }
                        NotificationService notificationService2 = NotificationService.INSTANCE;
                        long[] jArr7 = new long[i];
                        // fill-array-data instruction
                        jArr7[0] = -2922680341517630729L;
                        jArr7[1] = -5440715666465661580L;
                        obj2 = coroutine_suspended;
                        long j6 = j2;
                        notificationService2.appendSpeedString(sb, new ObfuscatedString(jArr7).toString(), j3 / d, j6 / d);
                        notificationService2.updateNotification(sb.toString(), longRef.element, j6 + j3);
                    }
                    this.$lastZeroSpeed.element = z;
                    NotificationService.lastQueryTime = currentTimeMillis;
                    this.L$0 = coroutineScope;
                    this.label = 1;
                    obj3 = obj2;
                    if (DelayKt.delay(3000L, this) == obj3) {
                        return obj3;
                    }
                    coroutine_suspended = obj3;
                    i = 2;
                    if (CoroutineScopeKt.isActive(coroutineScope)) {
                        return Unit.INSTANCE;
                    }
                }
            } else {
                throw new IllegalStateException(new ObfuscatedString(new long[]{4185062531901411963L, 3125055414434233676L, -2378332838353268584L, -417109620141594994L, 7651589488463220627L, 8408473558325359878L, -1683208215537076165L}).toString());
            }
        } else {
            ResultKt.throwOnFailure(obj);
            coroutineScope = (CoroutineScope) this.L$0;
            if (CoroutineScopeKt.isActive(coroutineScope)) {
            }
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((NotificationService$startSpeedNotification$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
