package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class zzfdr {
    public static void zza(AtomicReference atomicReference, zzfdq zzfdqVar) {
        Object obj = atomicReference.get();
        if (obj == null) {
            return;
        }
        try {
            zzfdqVar.zza(obj);
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-8199616927245661709L, 2318103247265998445L, 2414279582193170614L, -236600445147961968L, -8324092594259809280L, -7250087835205799181L}).toString(), e);
        } catch (NullPointerException e2) {
            zzcec.zzk(new ObfuscatedString(new long[]{-4934269226890101039L, -1962476623015980141L, 3632138002569819734L, -6270457084553905608L, 8416465761718300305L, 5500645694972217652L, 268267633380857561L, 7631485948556174943L, -486180114330611066L, -394909109025665405L, 8010767538363651439L}).toString(), e2);
        }
    }
}
