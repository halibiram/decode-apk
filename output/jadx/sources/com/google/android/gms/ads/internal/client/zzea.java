package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzaze;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzbhy;
import com.google.android.gms.internal.ads.zzbsr;
import com.google.android.gms.internal.ads.zzcdv;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.atomic.AtomicBoolean;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* loaded from: classes2.dex */
public final class zzea {

    @VisibleForTesting
    final zzaz zza;
    private final zzbsr zzb;
    private final zzp zzc;
    private final AtomicBoolean zzd;
    private final VideoController zze;

    @Nullable
    private zza zzf;
    private AdListener zzg;
    private AdSize[] zzh;

    @Nullable
    private AppEventListener zzi;

    @Nullable
    private zzbu zzj;
    private VideoOptions zzk;
    private String zzl;

    @NotOnlyInitialized
    private final ViewGroup zzm;
    private int zzn;
    private boolean zzo;

    @Nullable
    private OnPaidEventListener zzp;

    public zzea(ViewGroup viewGroup) {
        this(viewGroup, null, false, zzp.zza, null, 0);
    }

    private static zzq zzC(Context context, AdSize[] adSizeArr, int i) {
        for (AdSize adSize : adSizeArr) {
            if (adSize.equals(AdSize.INVALID)) {
                return zzq.zze();
            }
        }
        zzq zzqVar = new zzq(context, adSizeArr);
        zzqVar.zzj = zzD(i);
        return zzqVar;
    }

    private static boolean zzD(int i) {
        return i == 1;
    }

    public final boolean zzA() {
        try {
            zzbu zzbuVar = this.zzj;
            if (zzbuVar != null) {
                return zzbuVar.zzY();
            }
            return false;
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-1764071983915855326L, 7957152148461328224L, 7234340407658449764L, 4202902733968943939L, 2040099589053805900L, -214873958160693528L}).toString(), e);
            return false;
        }
    }

    public final AdSize[] zzB() {
        return this.zzh;
    }

    public final AdListener zza() {
        return this.zzg;
    }

    @Nullable
    public final AdSize zzb() {
        zzq zzg;
        try {
            zzbu zzbuVar = this.zzj;
            if (zzbuVar != null && (zzg = zzbuVar.zzg()) != null) {
                return com.google.android.gms.ads.zzb.zzc(zzg.zze, zzg.zzb, zzg.zza);
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{5731449168494891458L, -2467982962234073508L, 2293960805115661650L, 2881098513769031307L, -3433415965699788789L, 1492219392772716147L}).toString(), e);
        }
        AdSize[] adSizeArr = this.zzh;
        if (adSizeArr != null) {
            return adSizeArr[0];
        }
        return null;
    }

    @Nullable
    public final OnPaidEventListener zzc() {
        return this.zzp;
    }

    @Nullable
    public final ResponseInfo zzd() {
        zzdn zzdnVar = null;
        try {
            zzbu zzbuVar = this.zzj;
            if (zzbuVar != null) {
                zzdnVar = zzbuVar.zzk();
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-91938265800068247L, 660654589518042805L, -6756549240246252298L, -4041572636306003863L, 9106818798055388591L, 2902172300678840950L}).toString(), e);
        }
        return ResponseInfo.zza(zzdnVar);
    }

    public final VideoController zzf() {
        return this.zze;
    }

    public final VideoOptions zzg() {
        return this.zzk;
    }

    @Nullable
    public final AppEventListener zzh() {
        return this.zzi;
    }

    @Nullable
    public final zzdq zzi() {
        zzbu zzbuVar = this.zzj;
        if (zzbuVar != null) {
            try {
                return zzbuVar.zzl();
            } catch (RemoteException e) {
                zzcec.zzl(new ObfuscatedString(new long[]{-373823524062390366L, -7888323615865729626L, 3400155927963622759L, -8502702847769337149L, 3574761330498886871L, -5459900332323942800L}).toString(), e);
            }
        }
        return null;
    }

    public final String zzj() {
        zzbu zzbuVar;
        if (this.zzl == null && (zzbuVar = this.zzj) != null) {
            try {
                this.zzl = zzbuVar.zzr();
            } catch (RemoteException e) {
                zzcec.zzl(new ObfuscatedString(new long[]{7856862931899642000L, -4945363660524225925L, -5010338184580848527L, -8477261939310892340L, 4411711733401844364L, 5524034411384064841L}).toString(), e);
            }
        }
        return this.zzl;
    }

    public final void zzk() {
        try {
            zzbu zzbuVar = this.zzj;
            if (zzbuVar != null) {
                zzbuVar.zzx();
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-2900837901956704756L, -4577861487354838953L, 9139339439798367589L, 1071832468723151123L, 3578044112772362579L, -2969099732840789435L}).toString(), e);
        }
    }

    public final /* synthetic */ void zzl(IObjectWrapper iObjectWrapper) {
        this.zzm.addView((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    public final void zzm(zzdx zzdxVar) {
        zzbu zzbuVar;
        try {
            if (this.zzj == null) {
                if (this.zzh != null && this.zzl != null) {
                    Context context = this.zzm.getContext();
                    zzq zzC = zzC(context, this.zzh, this.zzn);
                    if (new ObfuscatedString(new long[]{-4415371674144744317L, -4022849009102772859L, 7280854713652124120L}).toString().equals(zzC.zza)) {
                        zzbuVar = (zzbu) new zzal(zzay.zza(), context, zzC, this.zzl).zzd(context, false);
                    } else {
                        zzbuVar = (zzbu) new zzaj(zzay.zza(), context, zzC, this.zzl, this.zzb).zzd(context, false);
                    }
                    this.zzj = zzbuVar;
                    zzbuVar.zzD(new zzg(this.zza));
                    zza zzaVar = this.zzf;
                    if (zzaVar != null) {
                        this.zzj.zzC(new zzb(zzaVar));
                    }
                    AppEventListener appEventListener = this.zzi;
                    if (appEventListener != null) {
                        this.zzj.zzG(new zzaze(appEventListener));
                    }
                    if (this.zzk != null) {
                        this.zzj.zzU(new zzfk(this.zzk));
                    }
                    this.zzj.zzP(new zzfe(this.zzp));
                    this.zzj.zzN(this.zzo);
                    zzbu zzbuVar2 = this.zzj;
                    if (zzbuVar2 != null) {
                        try {
                            final IObjectWrapper zzn = zzbuVar2.zzn();
                            if (zzn != null) {
                                if (((Boolean) zzbhy.zzf.zze()).booleanValue()) {
                                    if (((Boolean) zzba.zzc().zza(zzbgc.zzkG)).booleanValue()) {
                                        zzcdv.zza.post(new Runnable() { // from class: com.google.android.gms.ads.internal.client.zzdy
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                zzea.this.zzl(zzn);
                                            }
                                        });
                                    }
                                }
                                this.zzm.addView((View) ObjectWrapper.unwrap(zzn));
                            }
                        } catch (RemoteException e) {
                            zzcec.zzl(new ObfuscatedString(new long[]{877576869520061443L, -2259802505000883496L, 1703829374477934680L, -2659310904292200098L, -4625310535014483668L, -4097073799327482057L}).toString(), e);
                        }
                    }
                } else {
                    throw new IllegalStateException(new ObfuscatedString(new long[]{-3042783052926906537L, -6649392094418631093L, 2623927806082180003L, 3832997464932384486L, -157615693505401418L, -4575693708080866059L, 1603452368769042949L, -7483878734553787652L, 6296661296524788339L}).toString());
                }
            }
            zzbu zzbuVar3 = this.zzj;
            if (zzbuVar3 != null) {
                zzbuVar3.zzaa(this.zzc.zza(this.zzm.getContext(), zzdxVar));
                return;
            }
            throw null;
        } catch (RemoteException e2) {
            zzcec.zzl(new ObfuscatedString(new long[]{2051359621699114721L, -6776557664000325062L, -5228098249235363244L, 6500367059311031781L, -4229775367770489456L, 4980551955382209175L}).toString(), e2);
        }
    }

    public final void zzn() {
        try {
            zzbu zzbuVar = this.zzj;
            if (zzbuVar != null) {
                zzbuVar.zzz();
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{9062989400444825881L, -8192897010616298487L, 7012212011947493214L, 3753967245421702L, 7932255031664508750L, 2657551974861849844L}).toString(), e);
        }
    }

    public final void zzo() {
        if (!this.zzd.getAndSet(true)) {
            try {
                zzbu zzbuVar = this.zzj;
                if (zzbuVar != null) {
                    zzbuVar.zzA();
                }
            } catch (RemoteException e) {
                zzcec.zzl(new ObfuscatedString(new long[]{-4797394834335416663L, 278863209630635378L, -6917335522467365409L, 2810422997127342195L, -1581008807721370992L, -5873702457830868071L}).toString(), e);
            }
        }
    }

    public final void zzp() {
        try {
            zzbu zzbuVar = this.zzj;
            if (zzbuVar != null) {
                zzbuVar.zzB();
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{6456319564889976453L, 8243925148521392522L, -1856911278564510778L, 5952491530421298710L, 3451124247641982375L, 805555721664983637L}).toString(), e);
        }
    }

    public final void zzq(@Nullable zza zzaVar) {
        zzb zzbVar;
        try {
            this.zzf = zzaVar;
            zzbu zzbuVar = this.zzj;
            if (zzbuVar != null) {
                if (zzaVar != null) {
                    zzbVar = new zzb(zzaVar);
                } else {
                    zzbVar = null;
                }
                zzbuVar.zzC(zzbVar);
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-8899025329641896135L, 5293936335617353634L, -9128929650190135206L, -8688432666044581598L, -7880109021135488941L, -4867808320688790556L}).toString(), e);
        }
    }

    public final void zzr(AdListener adListener) {
        this.zzg = adListener;
        this.zza.zza(adListener);
    }

    public final void zzs(AdSize... adSizeArr) {
        if (this.zzh == null) {
            zzt(adSizeArr);
            return;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{6922311612299934013L, 7694024574575485781L, 2721741598340160522L, 4581212252957927518L, 686740871668194508L, -4368539639028378078L, 194027424421055666L}).toString());
    }

    public final void zzt(AdSize... adSizeArr) {
        this.zzh = adSizeArr;
        try {
            zzbu zzbuVar = this.zzj;
            if (zzbuVar != null) {
                zzbuVar.zzF(zzC(this.zzm.getContext(), this.zzh, this.zzn));
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{7800949002650774947L, -7552921479155246080L, 4367395311647436206L, 5159942017799135153L, -6757287093562864018L, -5193811659856568436L}).toString(), e);
        }
        this.zzm.requestLayout();
    }

    public final void zzu(String str) {
        if (this.zzl == null) {
            this.zzl = str;
            return;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{1071569653590485079L, -6741927203472257113L, -4047049838828449028L, 7444194456569152560L, -8917166717023337768L, -8039362573376989814L, 8435522056153458310L}).toString());
    }

    public final void zzv(@Nullable AppEventListener appEventListener) {
        zzaze zzazeVar;
        try {
            this.zzi = appEventListener;
            zzbu zzbuVar = this.zzj;
            if (zzbuVar != null) {
                if (appEventListener != null) {
                    zzazeVar = new zzaze(appEventListener);
                } else {
                    zzazeVar = null;
                }
                zzbuVar.zzG(zzazeVar);
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-556384892987550248L, 7820901534385151070L, 5975883007228395849L, -3893700033465536703L, 7062836309581333989L, -4288995041421675543L}).toString(), e);
        }
    }

    public final void zzw(boolean z) {
        this.zzo = z;
        try {
            zzbu zzbuVar = this.zzj;
            if (zzbuVar != null) {
                zzbuVar.zzN(z);
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{8703635197835200646L, -6333354048238237988L, 8575593049418141546L, -6549641344890260756L, -4209533692494428088L, -7230405505587734480L}).toString(), e);
        }
    }

    public final void zzx(@Nullable OnPaidEventListener onPaidEventListener) {
        try {
            this.zzp = onPaidEventListener;
            zzbu zzbuVar = this.zzj;
            if (zzbuVar != null) {
                zzbuVar.zzP(new zzfe(onPaidEventListener));
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-7157347980112589912L, 4463865305198594372L, 5898954175544454675L, -3057670060083487793L, -862447074665697170L, 8519349100716385931L}).toString(), e);
        }
    }

    public final void zzy(VideoOptions videoOptions) {
        zzfk zzfkVar;
        this.zzk = videoOptions;
        try {
            zzbu zzbuVar = this.zzj;
            if (zzbuVar != null) {
                if (videoOptions == null) {
                    zzfkVar = null;
                } else {
                    zzfkVar = new zzfk(videoOptions);
                }
                zzbuVar.zzU(zzfkVar);
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{6883563910418541046L, -6270353843092415250L, -2786392571605435309L, 96564924114856608L, 200579020074565855L, -2802433003648869819L}).toString(), e);
        }
    }

    public final boolean zzz(zzbu zzbuVar) {
        try {
            IObjectWrapper zzn = zzbuVar.zzn();
            if (zzn == null || ((View) ObjectWrapper.unwrap(zzn)).getParent() != null) {
                return false;
            }
            this.zzm.addView((View) ObjectWrapper.unwrap(zzn));
            this.zzj = zzbuVar;
            return true;
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{4079353464341754692L, -7740507712730142984L, -8362419174575727275L, -8924381004423022747L, 7616103167293176800L, 2631436010956019983L}).toString(), e);
            return false;
        }
    }

    public zzea(ViewGroup viewGroup, int i) {
        this(viewGroup, null, false, zzp.zza, null, i);
    }

    public zzea(ViewGroup viewGroup, AttributeSet attributeSet, boolean z) {
        this(viewGroup, attributeSet, z, zzp.zza, null, 0);
    }

    public zzea(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, int i) {
        this(viewGroup, attributeSet, z, zzp.zza, null, i);
    }

    @VisibleForTesting
    public zzea(ViewGroup viewGroup, @Nullable AttributeSet attributeSet, boolean z, zzp zzpVar, @Nullable zzbu zzbuVar, int i) {
        zzq zzqVar;
        this.zzb = new zzbsr();
        this.zze = new VideoController();
        this.zza = new zzdz(this);
        this.zzm = viewGroup;
        this.zzc = zzpVar;
        this.zzj = null;
        this.zzd = new AtomicBoolean(false);
        this.zzn = i;
        if (attributeSet != null) {
            Context context = viewGroup.getContext();
            try {
                zzy zzyVar = new zzy(context, attributeSet);
                this.zzh = zzyVar.zzb(z);
                this.zzl = zzyVar.zza();
                if (viewGroup.isInEditMode()) {
                    zzcdv zzb = zzay.zzb();
                    AdSize adSize = this.zzh[0];
                    int i2 = this.zzn;
                    if (adSize.equals(AdSize.INVALID)) {
                        zzqVar = zzq.zze();
                    } else {
                        zzq zzqVar2 = new zzq(context, adSize);
                        zzqVar2.zzj = zzD(i2);
                        zzqVar = zzqVar2;
                    }
                    zzb.zzm(viewGroup, zzqVar, new ObfuscatedString(new long[]{-878457724611904870L, 1200502457719648996L, 7636637778644567669L}).toString());
                }
            } catch (IllegalArgumentException e) {
                zzay.zzb().zzl(viewGroup, new zzq(context, AdSize.BANNER), e.getMessage(), e.getMessage());
            }
        }
    }
}
