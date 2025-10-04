package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.MuteThisAdListener;
import com.google.android.gms.ads.MuteThisAdReason;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.nativead.NativeAd;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzbwb extends NativeAd {
    private final zzblj zza;

    @Nullable
    private final zzbwa zzc;

    @Nullable
    private final NativeAd.AdChoicesInfo zzd;
    private final List zzb = new ArrayList();
    private final List zze = new ArrayList();

    /* JADX WARN: Can't wrap try/catch for region: R(12:1|(3:2|3|(2:5|(5:8|(1:10)(1:17)|(3:12|13|14)(1:16)|15|6)))|(3:19|20|(2:22|(5:25|(1:27)(1:34)|(3:29|30|31)(1:33)|32|23)))|(2:36|37)|(7:39|40|41|42|(2:44|45)|47|48)|53|40|41|42|(0)|47|48) */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00df, code lost:
    
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00e0, code lost:
    
        com.google.android.gms.internal.ads.zzcec.zzh(new com.panda912.muddy.ObfuscatedString(new long[]{-6291149886560076012L}).toString(), r8);
     */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d2 A[Catch: RemoteException -> 0x00df, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x00df, blocks: (B:42:0x00ca, B:44:0x00d2), top: B:41:0x00ca }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzbwb(zzblj zzbljVar) {
        zzbwa zzbwaVar;
        zzbjm zzk;
        com.google.android.gms.ads.internal.client.zzcw zzcwVar;
        zzbjm zzbjmVar;
        this.zza = zzbljVar;
        zzbvy zzbvyVar = null;
        try {
            List zzu = zzbljVar.zzu();
            if (zzu != null) {
                for (Object obj : zzu) {
                    if (obj instanceof IBinder) {
                        zzbjmVar = zzbjl.zzg((IBinder) obj);
                    } else {
                        zzbjmVar = null;
                    }
                    if (zzbjmVar != null) {
                        this.zzb.add(new zzbwa(zzbjmVar));
                    }
                }
            }
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{3084930454763724772L}).toString(), e);
        }
        try {
            List zzv = this.zza.zzv();
            if (zzv != null) {
                for (Object obj2 : zzv) {
                    if (obj2 instanceof IBinder) {
                        zzcwVar = com.google.android.gms.ads.internal.client.zzcv.zzb((IBinder) obj2);
                    } else {
                        zzcwVar = null;
                    }
                    if (zzcwVar != null) {
                        this.zze.add(new com.google.android.gms.ads.internal.client.zzcx(zzcwVar));
                    }
                }
            }
        } catch (RemoteException e2) {
            zzcec.zzh(new ObfuscatedString(new long[]{7408552374212405685L}).toString(), e2);
        }
        try {
            zzk = this.zza.zzk();
        } catch (RemoteException e3) {
            zzcec.zzh(new ObfuscatedString(new long[]{-2800245259254083459L}).toString(), e3);
        }
        if (zzk != null) {
            zzbwaVar = new zzbwa(zzk);
            this.zzc = zzbwaVar;
            if (this.zza.zzi() != null) {
                zzbvyVar = new zzbvy(this.zza.zzi());
            }
            this.zzd = zzbvyVar;
        }
        zzbwaVar = null;
        this.zzc = zzbwaVar;
        if (this.zza.zzi() != null) {
        }
        this.zzd = zzbvyVar;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void cancelUnconfirmedClick() {
        try {
            this.zza.zzw();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{7343333583677887548L, -1928621301243075925L, -8672240564163596714L, -8508724548239353599L, 7873767686250318369L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void destroy() {
        try {
            this.zza.zzx();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{763529536126716359L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void enableCustomClickGesture() {
        try {
            this.zza.zzC();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-7411154897405986648L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    @Nullable
    public final NativeAd.AdChoicesInfo getAdChoicesInfo() {
        return this.zzd;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    @Nullable
    public final String getAdvertiser() {
        try {
            return this.zza.zzn();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-4799264290033766252L}).toString(), e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    @Nullable
    public final String getBody() {
        try {
            return this.zza.zzo();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-4719924188335572087L}).toString(), e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    @Nullable
    public final String getCallToAction() {
        try {
            return this.zza.zzp();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-390652483169764516L}).toString(), e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final Bundle getExtras() {
        try {
            Bundle zzf = this.zza.zzf();
            if (zzf != null) {
                return zzf;
            }
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-5665348204991224295L}).toString(), e);
        }
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    @Nullable
    public final String getHeadline() {
        try {
            return this.zza.zzq();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-6970349911321080653L}).toString(), e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    @Nullable
    public final NativeAd.Image getIcon() {
        return this.zzc;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final List<NativeAd.Image> getImages() {
        return this.zzb;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    @Nullable
    public final MediaContent getMediaContent() {
        try {
            if (this.zza.zzj() != null) {
                return new com.google.android.gms.ads.internal.client.zzep(this.zza.zzj(), null);
            }
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{8750489517653862637L}).toString(), e);
        }
        return null;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final List<MuteThisAdReason> getMuteThisAdReasons() {
        return this.zze;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    @Nullable
    public final String getPrice() {
        try {
            return this.zza.zzs();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{1290036282631902134L}).toString(), e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    @Nullable
    public final ResponseInfo getResponseInfo() {
        com.google.android.gms.ads.internal.client.zzdn zzdnVar;
        try {
            zzdnVar = this.zza.zzg();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{5988068283172139401L}).toString(), e);
            zzdnVar = null;
        }
        return ResponseInfo.zza(zzdnVar);
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    @Nullable
    public final Double getStarRating() {
        try {
            double zze = this.zza.zze();
            if (zze == -1.0d) {
                return null;
            }
            return Double.valueOf(zze);
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-4794124018328115144L}).toString(), e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    @Nullable
    public final String getStore() {
        try {
            return this.zza.zzt();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-1021924612969203104L}).toString(), e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final boolean isCustomClickGestureEnabled() {
        try {
            return this.zza.zzG();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-8513797347126634939L}).toString(), e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final boolean isCustomMuteThisAdEnabled() {
        try {
            return this.zza.zzH();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-7605998251626244768L}).toString(), e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void muteThisAd(MuteThisAdReason muteThisAdReason) {
        try {
            try {
                if (this.zza.zzH()) {
                    if (muteThisAdReason == null) {
                        this.zza.zzy(null);
                        return;
                    } else if (muteThisAdReason instanceof com.google.android.gms.ads.internal.client.zzcx) {
                        this.zza.zzy(((com.google.android.gms.ads.internal.client.zzcx) muteThisAdReason).zza());
                        return;
                    } else {
                        zzcec.zzg(new ObfuscatedString(new long[]{-2140387396723233137L, 5592756667365221563L, -8859605111138214425L, 5365965747220398128L, -606860691269786326L, -8844698312159147893L, -3387005924659728705L, -4639460252961530890L, 2922182491683414644L, 5364392256867570611L}).toString());
                        return;
                    }
                }
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{-6596420580862193486L}).toString(), e);
            }
            zzcec.zzg(new ObfuscatedString(new long[]{288298324134802033L, 132836933635749439L, -6951848844744553466L, -8846883099645987599L, -6957810215813252023L}).toString());
        } catch (RemoteException e2) {
            zzcec.zzh(new ObfuscatedString(new long[]{5547826444891866500L}).toString(), e2);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void performClick(Bundle bundle) {
        try {
            this.zza.zzz(bundle);
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-4388445452479051172L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void recordCustomClickGesture() {
        try {
            this.zza.zzA();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{6112365861584138455L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final boolean recordImpression(Bundle bundle) {
        try {
            return this.zza.zzI(bundle);
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-6787049650939348066L}).toString(), e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void reportTouchEvent(Bundle bundle) {
        try {
            this.zza.zzB(bundle);
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-1324894812896088308L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void setMuteThisAdListener(MuteThisAdListener muteThisAdListener) {
        try {
            this.zza.zzD(new com.google.android.gms.ads.internal.client.zzct(muteThisAdListener));
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-2051393167669439581L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void setOnPaidEventListener(@Nullable OnPaidEventListener onPaidEventListener) {
        try {
            this.zza.zzE(new com.google.android.gms.ads.internal.client.zzfe(onPaidEventListener));
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{166942904848135526L, -6440381484800197226L, -2665776450390825954L, -4215907241470009045L, 8995351689939202222L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void setUnconfirmedClickListener(NativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        try {
            this.zza.zzF(new zzbwj(unconfirmedClickListener));
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{8699645963285913759L, 6746104597613933481L, -4963893231521872791L, 6822175112949977765L, 969593919213526416L, -1924414726196856638L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    @Nullable
    public final /* bridge */ /* synthetic */ Object zza() {
        try {
            return this.zza.zzm();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{6729220274150899809L}).toString(), e);
            return null;
        }
    }
}
