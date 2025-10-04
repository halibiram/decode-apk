package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.NativeAd;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzbjg extends NativeAd.AdChoicesInfo {
    private final zzbjf zza;
    private final List zzb = new ArrayList();
    private String zzc;

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0080, code lost:
    
        r7.zzb.add(new com.google.android.gms.internal.ads.zzbjn(r4));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzbjg(zzbjf zzbjfVar) {
        IBinder iBinder;
        this.zza = zzbjfVar;
        try {
            this.zzc = zzbjfVar.zzg();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-4136848619440412545L}).toString(), e);
            this.zzc = new ObfuscatedString(new long[]{8390381010466780250L}).toString();
        }
        try {
            for (Object obj : zzbjfVar.zzh()) {
                zzbjm zzbjmVar = null;
                if ((obj instanceof IBinder) && (iBinder = (IBinder) obj) != null) {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-4548290519864187877L, -5692801326520861383L, -3848754919129811475L, 4835911713888460999L, -6458964129923670769L, 2619706448233830906L, -5179027405854296577L, -1300449880600523762L, -2717833769534678417L, 5198863674163430114L}).toString());
                    zzbjmVar = queryLocalInterface instanceof zzbjm ? (zzbjm) queryLocalInterface : new zzbjk(iBinder);
                }
            }
        } catch (RemoteException e2) {
            zzcec.zzh(new ObfuscatedString(new long[]{-6142920093955616448L}).toString(), e2);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.AdChoicesInfo
    public final List<NativeAd.Image> getImages() {
        return this.zzb;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.AdChoicesInfo
    public final CharSequence getText() {
        return this.zzc;
    }
}
