package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zacz extends com.google.android.gms.internal.base.zaq {
    final /* synthetic */ zada zaa;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zacz(zada zadaVar, Looper looper) {
        super(looper);
        this.zaa = zadaVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        Object obj;
        zada zadaVar;
        int i = message.what;
        if (i != 0) {
            if (i != 1) {
                new ObfuscatedString(new long[]{8220178526049109637L, 1925057637049200897L, 3215424249701271901L, -7505210622494654785L, -5452062402004164174L, 4810239874828722209L, -2965044553374723698L, -2072544628351472655L, 3650923863828589887L}).toString();
                new ObfuscatedString(new long[]{-3712700136848631437L, 5705149942549271333L, 4930646186596419557L, -468727428107816585L}).toString();
                return;
            }
            RuntimeException runtimeException = (RuntimeException) message.obj;
            String valueOf = String.valueOf(runtimeException.getMessage());
            String obfuscatedString = new ObfuscatedString(new long[]{7813423547502580586L, 3735238198307822164L, 3379144652874142475L, 2501756018210791076L, 7871700707074540032L, -7496465519652198516L, -3164728709499318488L, -2805393550972696135L}).toString();
            if (valueOf.length() != 0) {
                obfuscatedString.concat(valueOf);
            } else {
                new String(obfuscatedString);
            }
            new ObfuscatedString(new long[]{-2775892826648146638L, 4186172823021650645L, -3435706041950052764L, 2342277818597445204L}).toString();
            throw runtimeException;
        }
        PendingResult<?> pendingResult = (PendingResult) message.obj;
        obj = this.zaa.zae;
        synchronized (obj) {
            try {
                zadaVar = this.zaa.zab;
                zada zadaVar2 = (zada) Preconditions.checkNotNull(zadaVar);
                if (pendingResult == null) {
                    zadaVar2.zaj(new Status(13, new ObfuscatedString(new long[]{4033963269650344446L, -5474603114639400633L, -504241166127067123L, -8158224518007140605L}).toString()));
                } else if (pendingResult instanceof zacp) {
                    zadaVar2.zaj(((zacp) pendingResult).zaa());
                } else {
                    zadaVar2.zai(pendingResult);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
