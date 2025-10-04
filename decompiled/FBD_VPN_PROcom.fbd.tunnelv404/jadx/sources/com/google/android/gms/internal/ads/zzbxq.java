package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.query.UpdateClickUrlCallback;
import com.google.android.gms.ads.query.UpdateImpressionUrlsCallback;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import javax.annotation.Nonnull;

/* loaded from: classes2.dex */
public final class zzbxq {

    @Nonnull
    private final View zza;

    @Nullable
    private final Map zzb;

    @Nullable
    private final zzcct zzc;

    public zzbxq(zzbxp zzbxpVar) {
        View view;
        Map map;
        View view2;
        view = zzbxpVar.zza;
        this.zza = view;
        map = zzbxpVar.zzb;
        this.zzb = map;
        view2 = zzbxpVar.zza;
        zzcct zza = zzbxk.zza(view2.getContext());
        this.zzc = zza;
        if (zza != null && !map.isEmpty()) {
            try {
                zza.zzg(new zzbxr(ObjectWrapper.wrap(view).asBinder(), ObjectWrapper.wrap(map).asBinder()));
            } catch (RemoteException unused) {
                zzcec.zzg(new ObfuscatedString(new long[]{8174441230921645804L, 2178781070272264293L, -4398168900214054352L, -9053335556202638622L, 4636532610535663151L}).toString());
            }
        }
    }

    public final void zza(List list) {
        if (list != null && !list.isEmpty()) {
            if (this.zzc == null) {
                zzcec.zzj(new ObfuscatedString(new long[]{5161825237784548267L, -8207901741210900841L, 1634423196585897611L, 7666378282230543974L, 7458318175327844184L, 5160091226967261063L, -1525626862594057965L, 1990545561029925721L, -6440019334213738914L}).toString());
            }
            try {
                this.zzc.zzh(list, ObjectWrapper.wrap(this.zza), new zzbxo(this, list));
                return;
            } catch (RemoteException e) {
                zzcec.zzg(new ObfuscatedString(new long[]{-972512180844898845L, -6324667881636070909L, 7269552584827903223L, 4718819658292548422L, -3753670957589028872L, -1864783128800855430L}).toString().concat(e.toString()));
                return;
            }
        }
        zzcec.zzj(new ObfuscatedString(new long[]{-4642529937477159113L, -4973436857064639712L, 2613410422215322580L, 7268697406985834166L, -4944190218258763596L, 3972632189387352923L}).toString());
    }

    public final void zzb(List list) {
        if (list != null && !list.isEmpty()) {
            zzcct zzcctVar = this.zzc;
            if (zzcctVar != null) {
                try {
                    zzcctVar.zzi(list, ObjectWrapper.wrap(this.zza), new zzbxn(this, list));
                    return;
                } catch (RemoteException e) {
                    zzcec.zzg(new ObfuscatedString(new long[]{-3020343017895402626L, 906021744078294380L, 331517797289999537L, 8764700821688633448L, -5428102605532739833L, -5338557742954238751L, -4191675265293222415L}).toString().concat(e.toString()));
                    return;
                }
            }
            zzcec.zzj(new ObfuscatedString(new long[]{447840996284624265L, -6062860215373507963L, 3069496300068332518L, -7119854416721733881L, 2184050645921811672L, 1304938661581568385L, 5964322464311183798L, 4534411400349623343L, -3044701913220574439L, -9171655874712251052L}).toString());
            return;
        }
        zzcec.zzj(new ObfuscatedString(new long[]{-7852472293857892364L, -6373140364982250716L, -1067200056464663513L, -5276515027554856243L, 4216801275844275538L, 7173006479574185870L, 6806813600725636762L, 1855447071648793213L}).toString());
    }

    public final void zzc(MotionEvent motionEvent) {
        zzcct zzcctVar = this.zzc;
        if (zzcctVar != null) {
            try {
                zzcctVar.zzk(ObjectWrapper.wrap(motionEvent));
                return;
            } catch (RemoteException unused) {
                zzcec.zzg(new ObfuscatedString(new long[]{2133104983343158121L, 2356878898123632095L, 369452167640415463L, 6363807900093494844L, -8491337084903874125L}).toString());
                return;
            }
        }
        zzcec.zze(new ObfuscatedString(new long[]{1659072218375120933L, 2354193878603784083L, 8309162590385033810L, 481702349753702374L, 5513560464177247291L, 4706009789702261923L, 3727163879228396805L}).toString());
    }

    public final void zzd(Uri uri, UpdateClickUrlCallback updateClickUrlCallback) {
        if (this.zzc == null) {
            updateClickUrlCallback.onFailure(new ObfuscatedString(new long[]{-276471923279421661L, -7890309454232105551L, -2204706658246469724L, 7806794626955354877L, -4414346738744001425L, -6402599508912913440L, -705692198784801310L}).toString());
        }
        try {
            this.zzc.zzl(new ArrayList(Arrays.asList(uri)), ObjectWrapper.wrap(this.zza), new zzbxm(this, updateClickUrlCallback));
        } catch (RemoteException e) {
            updateClickUrlCallback.onFailure(new ObfuscatedString(new long[]{-515244451576535312L, -1995840401401724496L, -6310238369512761747L}).toString().concat(e.toString()));
        }
    }

    public final void zze(List list, UpdateImpressionUrlsCallback updateImpressionUrlsCallback) {
        if (this.zzc == null) {
            updateImpressionUrlsCallback.onFailure(new ObfuscatedString(new long[]{6363361199118766102L, -5638298482630721543L, -5437819930548838067L, -7522529847841970200L, 5323471966082223040L, -844102034211838116L, 6054412897123617801L}).toString());
        }
        try {
            this.zzc.zzm(list, ObjectWrapper.wrap(this.zza), new zzbxl(this, updateImpressionUrlsCallback));
        } catch (RemoteException e) {
            updateImpressionUrlsCallback.onFailure(new ObfuscatedString(new long[]{-2012911710281734575L, 2527582265070124107L, 5036483240008590317L}).toString().concat(e.toString()));
        }
    }
}
