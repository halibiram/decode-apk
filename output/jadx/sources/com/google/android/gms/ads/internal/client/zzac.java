package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzbsv;
import com.google.android.gms.internal.ads.zzbxw;
import com.google.android.gms.internal.ads.zzcee;
import com.google.android.gms.internal.ads.zzcef;
import com.google.android.gms.internal.ads.zzceg;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzac extends zzax {
    final /* synthetic */ Context zza;
    final /* synthetic */ zzbsv zzb;

    public zzac(zzaw zzawVar, Context context, zzbsv zzbsvVar) {
        this.zza = context;
        this.zzb = zzbsvVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    @Nullable
    public final /* bridge */ /* synthetic */ Object zza() {
        zzaw.zzt(this.zza, new ObfuscatedString(new long[]{-3174522960899817860L, 4203219883164534571L, 4967299298859879993L, 1717904537950624814L}).toString());
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    @Nullable
    public final /* bridge */ /* synthetic */ Object zzb(zzce zzceVar) {
        Context context = this.zza;
        IObjectWrapper wrap = ObjectWrapper.wrap(context);
        zzbgc.zza(context);
        if (((Boolean) zzba.zzc().zza(zzbgc.zzjm)).booleanValue()) {
            return zzceVar.zzh(wrap, this.zzb, 240304000);
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    @Nullable
    public final /* bridge */ /* synthetic */ Object zzc() {
        Context context = this.zza;
        IObjectWrapper wrap = ObjectWrapper.wrap(context);
        zzbgc.zza(context);
        if (!((Boolean) zzba.zzc().zza(zzbgc.zzjm)).booleanValue()) {
            return null;
        }
        try {
            return ((zzdk) zzceg.zzb(this.zza, new ObfuscatedString(new long[]{-8522531177946703232L, -4039737182148374846L, 7919133334392084368L, -5507365066938853875L, -8338728667304417170L, -6627020255792795350L, 7319670874033838857L, -6563360574931844220L, -7467777174795097212L}).toString(), new zzcee() { // from class: com.google.android.gms.ads.internal.client.zzab
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.android.gms.internal.ads.zzcee
                public final Object zza(Object obj) {
                    if (obj == 0) {
                        return null;
                    }
                    IInterface queryLocalInterface = obj.queryLocalInterface(new ObfuscatedString(new long[]{-7573095258067378615L, -3571478915798026265L, 8666980810526773351L, -3367448614700427367L, 7873397772909454262L, -4830430166038111593L, 67033689244796678L, -4775061463364827301L, 426395985722981881L, 1366410016000258104L}).toString());
                    if (queryLocalInterface instanceof zzdk) {
                        return (zzdk) queryLocalInterface;
                    }
                    return new zzdk(obj);
                }
            })).zze(wrap, this.zzb, 240304000);
        } catch (RemoteException | zzcef | NullPointerException e) {
            zzbxw.zza(this.zza).zzg(e, new ObfuscatedString(new long[]{8941362089486951600L, 2143660387766128527L, -1057891674755475939L, -5559908433635877468L, 5815703570950666153L, 4987960321908266306L}).toString());
            return null;
        }
    }
}
