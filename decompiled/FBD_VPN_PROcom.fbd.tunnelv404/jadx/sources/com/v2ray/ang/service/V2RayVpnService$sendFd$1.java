package com.v2ray.ang.service;

import android.net.LocalSocket;
import android.net.LocalSocketAddress;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0892xc141c517;
import java.io.FileDescriptor;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.v2ray.ang.service.V2RayVpnService$sendFd$1", f = "V2RayVpnService.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class V2RayVpnService$sendFd$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ FileDescriptor $fd;
    final /* synthetic */ String $path;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public V2RayVpnService$sendFd$1(String str, FileDescriptor fileDescriptor, Continuation<? super V2RayVpnService$sendFd$1> continuation) {
        super(2, continuation);
        this.$path = str;
        this.$fd = fileDescriptor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new V2RayVpnService$sendFd$1(this.$path, this.$fd, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0066, code lost:
    
        return kotlin.Unit.INSTANCE;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            int i = 0;
            while (true) {
                try {
                    Thread.sleep(50 << i);
                    new ObfuscatedString(new long[]{2967586836621175290L, 3532801785354162035L, 9176535567031853701L}).toString();
                    LocalSocket localSocket = new LocalSocket();
                    String str = this.$path;
                    FileDescriptor fileDescriptor = this.$fd;
                    try {
                        localSocket.connect(new LocalSocketAddress(str, LocalSocketAddress.Namespace.FILESYSTEM));
                        localSocket.setFileDescriptorsForSend(new FileDescriptor[]{fileDescriptor});
                        localSocket.getOutputStream().write(42);
                        CloseableKt.closeFinally(localSocket, null);
                        break;
                    } finally {
                        try {
                            break;
                        } catch (Throwable th) {
                        }
                    }
                } catch (Exception unused) {
                    new ObfuscatedString(new long[]{3411272397174556376L, 933939934227858546L, 8171634600048103285L}).toString();
                    if (i > 5) {
                        break;
                    }
                    i++;
                }
            }
        } else {
            throw new IllegalStateException(new ObfuscatedString(new long[]{-7182099189111321758L, 4155912978608173160L, 8922695094304382380L, -7251476795029978540L, 4617149862237231565L, -8464921396370462729L, -3841309508358202836L}).toString());
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((V2RayVpnService$sendFd$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
