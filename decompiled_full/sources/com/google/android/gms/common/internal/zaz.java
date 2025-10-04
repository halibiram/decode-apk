package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
public final class zaz extends RemoteCreator<zam> {
    private static final zaz zaa = new zaz();

    private zaz() {
        super(new ObfuscatedString(new long[]{2152815696905989901L, -372113482016437323L, 2805308108438236543L, -1672287027663505081L, -5986128421036673483L, -8209239076785012054L, -2969809247759618637L, -5400652562654742625L}).toString());
    }

    public static View zaa(Context context, int i, int i2) {
        zaz zazVar = zaa;
        try {
            zax zaxVar = new zax(1, i, i2, null);
            return (View) ObjectWrapper.unwrap(zazVar.getRemoteCreatorInstance(context).zae(ObjectWrapper.wrap(context), zaxVar));
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder(64);
            sb.append(new ObfuscatedString(new long[]{5401264678635070813L, -3163689212607537820L, -742473010369535372L, 8794342547870751076L, 3897310491009469938L}).toString());
            sb.append(i);
            throw new RemoteCreator.RemoteCreatorException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{908706816236164169L, 9123494423302042913L, 4620784395149101425L}), sb, i2), e);
        }
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* synthetic */ zam getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{5704153972309265965L, 1989642526783594484L, 3478597278558513899L, -8993717878440697198L, 2700566554489509915L, 5448274086142409176L, 3110482904862475621L, -3369298624754402632L, 6669700858619368268L}).toString());
        if (queryLocalInterface instanceof zam) {
            return (zam) queryLocalInterface;
        }
        return new zam(iBinder);
    }
}
