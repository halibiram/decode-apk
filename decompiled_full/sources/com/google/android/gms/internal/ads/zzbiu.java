package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IInterface;
import android.os.RemoteException;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
public final class zzbiu {
    private final Context zza;

    public zzbiu(Context context) {
        this.zza = context;
    }

    public final void zza(zzbyd zzbydVar) {
        try {
            ((zzbiv) zzceg.zzb(this.zza, new ObfuscatedString(new long[]{-4456688725841733900L, -6755764216096112950L, 3133360833017092376L, 6276821291298473472L, -1974767693092544412L, -7576628250642285708L, -1968475585640441342L, -488351410200917341L, -6353777580687394335L}).toString(), new zzcee() { // from class: com.google.android.gms.internal.ads.zzbit
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.android.gms.internal.ads.zzcee
                public final Object zza(Object obj) {
                    if (obj == 0) {
                        return null;
                    }
                    IInterface queryLocalInterface = obj.queryLocalInterface(new ObfuscatedString(new long[]{1645903623886716990L, 4737605920403671608L, -1119381455264272841L, -2593844048676622642L, 2446847332062660759L, -4365628789642525081L, -1571501380545547425L, 965335678782685845L, -6950872611585804535L, 7303872946695937281L}).toString());
                    if (queryLocalInterface instanceof zzbiv) {
                        return (zzbiv) queryLocalInterface;
                    }
                    return new zzbiv(obj);
                }
            })).zze(zzbydVar);
        } catch (RemoteException e) {
            AbstractC0749x8313616e.m3347xe1f61061(new ObfuscatedString(new long[]{5079938712794886801L, -2496343394734096747L, -6131046671881923317L, 324707872637571748L, -6251824066572576647L, 2991936317170986494L, -7929770742349645582L, -7272837367033661268L, -5918577684695823288L}), String.valueOf(e.getMessage()));
        } catch (zzcef e2) {
            AbstractC0749x8313616e.m3347xe1f61061(new ObfuscatedString(new long[]{-729944768473376707L, 9113029090064937255L, 5087879349098672038L, -8320957087234729137L, -5590768673928610995L, -1233845826567060048L, -8644997682612484454L, 2147991983366258429L, -4957072974195287850L, 2682826115267623021L, 3139862359481850324L}), String.valueOf(e2.getMessage()));
        }
    }
}
