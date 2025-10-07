package com.v2ray.ang.service;

import android.app.Service;
import android.content.Intent;
import app.tunnel.vpncommons.auth.AuthService;
import com.fbd.tunnel.R;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.handler.SettingsManager;
import com.v2ray.ang.handler.SpeedtestManager;
import com.v2ray.ang.util.MessageUtil;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0892xc141c517;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.CoroutineScope;

@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.v2ray.ang.service.V2RayServiceManager$measureV2rayDelay$1", f = "V2RayServiceManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class V2RayServiceManager$measureV2rayDelay$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;

    public V2RayServiceManager$measureV2rayDelay$1(Continuation<? super V2RayServiceManager$measureV2rayDelay$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new V2RayServiceManager$measureV2rayDelay$1(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Service service;
        long j;
        String obfuscatedString;
        String string;
        String remoteIPInfo;
        AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            service = V2RayServiceManager.getService();
            if (service == null) {
                return Unit.INSTANCE;
            }
            String obfuscatedString2 = new ObfuscatedString(new long[]{-8377642166313743983L}).toString();
            try {
                j = V2RayServiceManager.INSTANCE.getCoreController().measureDelay(SettingsManager.getDelayTestUrl$default(SettingsManager.INSTANCE, false, 1, null));
            } catch (Exception e) {
                new ObfuscatedString(new long[]{3540686917281198534L, -5334942188077101551L, 9198633313429594690L}).toString();
                new ObfuscatedString(new long[]{3435042676009765760L, 3230952105209956942L, -4404465452065140022L, -6047110772238931750L, -8861169344106311211L, -533882806903908319L}).toString();
                String message = e.getMessage();
                if (message == null || (obfuscatedString2 = StringsKt__StringsKt.substringAfter$default(message, new ObfuscatedString(new long[]{2650018886445289872L, -8441466757162126489L}).toString(), (String) null, 2, (Object) null)) == null) {
                    obfuscatedString2 = new ObfuscatedString(new long[]{-2006367173693124029L, 2957884349629644172L, -627623268102000754L}).toString();
                }
                j = -1;
            }
            if (j == -1) {
                try {
                    j = V2RayServiceManager.INSTANCE.getCoreController().measureDelay(SettingsManager.INSTANCE.getDelayTestUrl(true));
                } catch (Exception e2) {
                    new ObfuscatedString(new long[]{-7900704577801991388L, -6933275899396808809L, -9006048717208133239L}).toString();
                    new ObfuscatedString(new long[]{318027005811820461L, 4320399977661521610L, -5302193332220592932L, 699704987921535469L, 882973717042490144L, 6695642603969275666L, 8510590893320986771L}).toString();
                    String message2 = e2.getMessage();
                    if (message2 == null || (obfuscatedString = StringsKt__StringsKt.substringAfter$default(message2, new ObfuscatedString(new long[]{7928261911720856571L, -2101651658073999723L}).toString(), (String) null, 2, (Object) null)) == null) {
                        obfuscatedString = new ObfuscatedString(new long[]{61022617077716426L, 4965534003612222070L, -3592019008010002370L}).toString();
                    }
                    obfuscatedString2 = obfuscatedString;
                }
            }
            if (j >= 0) {
                string = service.getString(R.string.connection_test_available, Boxing.boxLong(j));
            } else {
                string = service.getString(R.string.connection_test_error, obfuscatedString2);
            }
            Intrinsics.checkNotNull(string);
            MessageUtil messageUtil = MessageUtil.INSTANCE;
            messageUtil.sendMsg2UI(service, 61, string);
            service.startService(new Intent(service, (Class<?>) AuthService.class));
            if (j >= 0 && (remoteIPInfo = SpeedtestManager.INSTANCE.getRemoteIPInfo()) != null) {
                messageUtil.sendMsg2UI(service, 61, AbstractC0362x4440ab85.m2953x742e2fda(string, "\n", remoteIPInfo));
            }
            return Unit.INSTANCE;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{7014535671187820310L, -8698170165637520330L, 8802414141660962895L, 3034115268688237226L, -5520293218020239899L, 203727354240808108L, -4808329696683041300L}).toString());
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((V2RayServiceManager$measureV2rayDelay$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
