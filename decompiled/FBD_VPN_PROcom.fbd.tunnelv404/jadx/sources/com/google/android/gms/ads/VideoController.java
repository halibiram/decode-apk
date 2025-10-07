package com.google.android.gms.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzdq;
import com.google.android.gms.ads.internal.client.zzfj;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class VideoController {

    @KeepForSdk
    public static final int PLAYBACK_STATE_ENDED = 3;

    @KeepForSdk
    public static final int PLAYBACK_STATE_PAUSED = 2;

    @KeepForSdk
    public static final int PLAYBACK_STATE_PLAYING = 1;

    @KeepForSdk
    public static final int PLAYBACK_STATE_READY = 5;

    @KeepForSdk
    public static final int PLAYBACK_STATE_UNKNOWN = 0;
    private final Object zza = new Object();

    @Nullable
    private zzdq zzb;

    @Nullable
    private VideoLifecycleCallbacks zzc;

    /* loaded from: classes2.dex */
    public static abstract class VideoLifecycleCallbacks {
        public void onVideoEnd() {
        }

        public void onVideoMute(boolean z) {
        }

        public void onVideoPause() {
        }

        public void onVideoPlay() {
        }

        public void onVideoStart() {
        }
    }

    @KeepForSdk
    public int getPlaybackState() {
        synchronized (this.zza) {
            zzdq zzdqVar = this.zzb;
            if (zzdqVar == null) {
                return 0;
            }
            try {
                return zzdqVar.zzh();
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{7812714122999421101L, -440677831135659976L, -3654118443863932805L, -5788873720532061117L, 2077754354031733789L, 1042700539764094520L, -1567916855790984692L, 3896042825250640165L}).toString(), e);
                return 0;
            }
        }
    }

    @Nullable
    public VideoLifecycleCallbacks getVideoLifecycleCallbacks() {
        VideoLifecycleCallbacks videoLifecycleCallbacks;
        synchronized (this.zza) {
            videoLifecycleCallbacks = this.zzc;
        }
        return videoLifecycleCallbacks;
    }

    public boolean hasVideoContent() {
        boolean z;
        synchronized (this.zza) {
            if (this.zzb != null) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    public boolean isClickToExpandEnabled() {
        synchronized (this.zza) {
            zzdq zzdqVar = this.zzb;
            if (zzdqVar == null) {
                return false;
            }
            try {
                return zzdqVar.zzo();
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{-5704018082851907381L, 7470038904722709148L, 8887065025126730537L, -6462272448417669738L, 6492256354355096222L, -4541741363685737027L}).toString(), e);
                return false;
            }
        }
    }

    public boolean isCustomControlsEnabled() {
        synchronized (this.zza) {
            zzdq zzdqVar = this.zzb;
            if (zzdqVar == null) {
                return false;
            }
            try {
                return zzdqVar.zzp();
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{-7953417896178810221L, -3669790208617874571L, 145931827639655806L, 7209969175114906842L, 3206516756333221504L, -875556591456489080L, 2470058305103854020L}).toString(), e);
                return false;
            }
        }
    }

    public boolean isMuted() {
        synchronized (this.zza) {
            zzdq zzdqVar = this.zzb;
            if (zzdqVar == null) {
                return true;
            }
            try {
                return zzdqVar.zzq();
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{-112875271550815492L, -5797376925035786498L, 6756527503975053922L, 6763447738878944457L, 7284524429206966795L, 7312895808734651535L, -2660607620777896816L}).toString(), e);
                return true;
            }
        }
    }

    public void mute(boolean z) {
        synchronized (this.zza) {
            zzdq zzdqVar = this.zzb;
            if (zzdqVar == null) {
                return;
            }
            try {
                zzdqVar.zzj(z);
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{3188939929768742820L, 2365635051075648533L, 211695771107460538L, 8860055886642267990L, -6920631618679934776L, 4576312383934441874L}).toString(), e);
            }
        }
    }

    public void pause() {
        synchronized (this.zza) {
            zzdq zzdqVar = this.zzb;
            if (zzdqVar == null) {
                return;
            }
            try {
                zzdqVar.zzk();
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{6521584445911227444L, -4135593707973081352L, 5741811347443539935L, -964335429955811525L, -6785478183762231281L, 1263286581226617681L, 9204982036385193724L}).toString(), e);
            }
        }
    }

    public void play() {
        synchronized (this.zza) {
            zzdq zzdqVar = this.zzb;
            if (zzdqVar == null) {
                return;
            }
            try {
                zzdqVar.zzl();
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{4525029714450613008L, 4376172066641016049L, -2139184514471020231L, 3011089051811852566L, -94929910410923538L, -2378116911987250007L}).toString(), e);
            }
        }
    }

    public void setVideoLifecycleCallbacks(@Nullable VideoLifecycleCallbacks videoLifecycleCallbacks) {
        zzfj zzfjVar;
        synchronized (this.zza) {
            this.zzc = videoLifecycleCallbacks;
            zzdq zzdqVar = this.zzb;
            if (zzdqVar == null) {
                return;
            }
            if (videoLifecycleCallbacks == null) {
                zzfjVar = null;
            } else {
                try {
                    zzfjVar = new zzfj(videoLifecycleCallbacks);
                } catch (RemoteException e) {
                    zzcec.zzh(new ObfuscatedString(new long[]{-3414703974265308872L, -3839294484518465282L, -2052498059351079954L, -6786290707695765726L, 5865510893192764574L, 565930942056949788L, 3334404409852141080L, -7614944823293373555L, 4150403119683087026L}).toString(), e);
                }
            }
            zzdqVar.zzm(zzfjVar);
        }
    }

    public void stop() {
        synchronized (this.zza) {
            zzdq zzdqVar = this.zzb;
            if (zzdqVar == null) {
                return;
            }
            try {
                zzdqVar.zzn();
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{2991048371505528371L, -4398361428579624790L, 1040623826285042114L, -8562792711514747533L, -2647014115897906909L, 4171755435856018500L}).toString(), e);
            }
        }
    }

    @Nullable
    public final zzdq zza() {
        zzdq zzdqVar;
        synchronized (this.zza) {
            zzdqVar = this.zzb;
        }
        return zzdqVar;
    }

    public final void zzb(@Nullable zzdq zzdqVar) {
        synchronized (this.zza) {
            try {
                this.zzb = zzdqVar;
                VideoLifecycleCallbacks videoLifecycleCallbacks = this.zzc;
                if (videoLifecycleCallbacks != null) {
                    setVideoLifecycleCallbacks(videoLifecycleCallbacks);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
