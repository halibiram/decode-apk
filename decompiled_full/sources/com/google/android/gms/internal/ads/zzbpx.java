package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbpx extends zzayh implements zzbpy {
    public static zzbpy zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-7310192930499351775L, 5695386680107620538L, 8994609607488810756L, -3172077870848183253L, -8593662995748850922L, -8382135477536305585L, 1248073107107835500L, -863901316909098409L, -8505407099148534342L, -4337781851550031118L, 4336199424597887641L}).toString());
        if (queryLocalInterface instanceof zzbpy) {
            return (zzbpy) queryLocalInterface;
        }
        return new zzbpw(iBinder);
    }
}
