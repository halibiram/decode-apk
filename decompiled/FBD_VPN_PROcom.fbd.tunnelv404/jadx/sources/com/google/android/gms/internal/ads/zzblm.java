package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;

/* loaded from: classes2.dex */
public final class zzblm extends RemoteCreator {
    @VisibleForTesting
    public zzblm() {
        super(new ObfuscatedString(new long[]{-1579823488193004327L, -184457538627045603L, -523956785845205186L, 4756514145049573573L, 8210416788403639423L, 4760203477357292887L, -2911730047031955358L, -9080082333484378582L, -2057559307791910031L}).toString());
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* synthetic */ Object getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-164768684064955507L, -7168849988933944109L, -6767134897478576925L, 3095694960230056045L, 3770093590276754397L, -5800808580913551370L, 1802628600267170844L, 4346653867696612729L, -2958450210199490392L, 6644639925136910853L, -8691740647126283862L, 4894112441475394976L}).toString());
        if (queryLocalInterface instanceof zzbjz) {
            return (zzbjz) queryLocalInterface;
        }
        return new zzbjx(iBinder);
    }

    @Nullable
    public final zzbjw zza(View view, HashMap hashMap, HashMap hashMap2) {
        zzbjw zzbjuVar;
        try {
            IBinder zze = ((zzbjz) getRemoteCreatorInstance(view.getContext())).zze(ObjectWrapper.wrap(view), ObjectWrapper.wrap(hashMap), ObjectWrapper.wrap(hashMap2));
            if (zze == null) {
                return null;
            }
            IInterface queryLocalInterface = zze.queryLocalInterface(new ObfuscatedString(new long[]{7219658297903667638L, 2484608564602891794L, -3972746126761414578L, -7235983297209117803L, -6238455810029056190L, -8183512223681549542L, 1850949226408258170L, -5920457389875510896L, 6299537459438714902L, -5743930407800727485L, 8495293004712969294L}).toString());
            if (queryLocalInterface instanceof zzbjw) {
                zzbjuVar = (zzbjw) queryLocalInterface;
            } else {
                zzbjuVar = new zzbju(zze);
            }
            return zzbjuVar;
        } catch (RemoteException e) {
            e = e;
            zzcec.zzk(new ObfuscatedString(new long[]{5350495620089494671L, 9073543237620389808L, 2987411761849058835L, -182506819246478882L, -8027680874869025229L, 3539175601355897658L, 3367914539041942979L, -342438109160852391L}).toString(), e);
            return null;
        } catch (RemoteCreator.RemoteCreatorException e2) {
            e = e2;
            zzcec.zzk(new ObfuscatedString(new long[]{5350495620089494671L, 9073543237620389808L, 2987411761849058835L, -182506819246478882L, -8027680874869025229L, 3539175601355897658L, 3367914539041942979L, -342438109160852391L}).toString(), e);
            return null;
        }
    }
}
