package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.graphics.Bitmap;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.google.android.gms.common.util.CollectionUtils;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbvq extends zzbvw {
    static final Set zza = CollectionUtils.setOf(new ObfuscatedString(new long[]{-8275007338676473931L, 3585063583070409771L}).toString(), new ObfuscatedString(new long[]{4412923660615305319L, -274095926742796227L, -8365006306667912750L}).toString(), new ObfuscatedString(new long[]{4246969028037373769L, 123850943012491757L, 5100267580946722976L}).toString(), new ObfuscatedString(new long[]{4137879688813249607L, 9041997416448245104L}).toString(), new ObfuscatedString(new long[]{-4405148045030782293L, -1957362134520813013L, 808066384492035208L}).toString(), new ObfuscatedString(new long[]{-2777333966222226438L, 2436747227474612914L, 1329296222270860992L}).toString(), new ObfuscatedString(new long[]{-3699898955350099673L, -8307707368138160617L, -7845841745994536542L}).toString());
    private String zzb;
    private boolean zzc;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private final Object zzj;
    private final zzcjk zzk;
    private final Activity zzl;
    private zzcla zzm;
    private ImageView zzn;
    private LinearLayout zzo;
    private final zzbvx zzp;
    private PopupWindow zzq;
    private RelativeLayout zzr;
    private ViewGroup zzs;

    public zzbvq(zzcjk zzcjkVar, zzbvx zzbvxVar) {
        super(zzcjkVar, new ObfuscatedString(new long[]{-6698204573297200316L, -4953155158732940441L}).toString());
        this.zzb = new ObfuscatedString(new long[]{-8087282547987331337L, 1460870611524637816L, -529308409868137233L}).toString();
        this.zzc = true;
        this.zzd = 0;
        this.zze = 0;
        this.zzf = -1;
        this.zzg = 0;
        this.zzh = 0;
        this.zzi = -1;
        this.zzj = new Object();
        this.zzk = zzcjkVar;
        this.zzl = zzcjkVar.zzi();
        this.zzp = zzbvxVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzm, reason: merged with bridge method [inline-methods] */
    public final void zzc(boolean z) {
        this.zzq.dismiss();
        this.zzr.removeView((View) this.zzk);
        ViewGroup viewGroup = this.zzs;
        if (viewGroup != null) {
            viewGroup.removeView(this.zzn);
            this.zzs.addView((View) this.zzk);
            this.zzk.zzah(this.zzm);
        }
        if (z) {
            zzl(new ObfuscatedString(new long[]{8166273248232402205L, -3052142934514017986L}).toString());
            zzbvx zzbvxVar = this.zzp;
            if (zzbvxVar != null) {
                zzbvxVar.zzb();
            }
        }
        this.zzq = null;
        this.zzr = null;
        this.zzs = null;
        this.zzo = null;
    }

    public final void zza(final boolean z) {
        synchronized (this.zzj) {
            try {
                if (this.zzq != null) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkp)).booleanValue() && Looper.getMainLooper().getThread() != Thread.currentThread()) {
                        zzcep.zze.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbvo
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzbvq.this.zzc(z);
                            }
                        });
                    } else {
                        zzc(z);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x039a, code lost:
    
        zzh(new com.panda912.muddy.ObfuscatedString(new long[]{-683963809168433340L, -7009497028256740444L, -3981445572581273985L, -7212139425274169729L, -7637798270371509226L, -5282472626252417781L, -4341010728271865240L, -4307944489491346304L, -493452961832665515L}).toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x03ae, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0314 A[Catch: all -> 0x0024, TryCatch #0 {all -> 0x0024, blocks: (B:4:0x000d, B:6:0x0011, B:7:0x0022, B:10:0x0027, B:12:0x002f, B:13:0x0040, B:15:0x0042, B:17:0x004e, B:18:0x005f, B:20:0x0061, B:22:0x0069, B:23:0x007a, B:25:0x007c, B:27:0x0096, B:28:0x00b3, B:30:0x00cd, B:31:0x00ea, B:33:0x0104, B:34:0x0121, B:36:0x013b, B:37:0x0158, B:39:0x0172, B:40:0x018c, B:42:0x01a6, B:43:0x01a8, B:45:0x01ac, B:47:0x01b0, B:49:0x01b8, B:52:0x01c0, B:56:0x01e4, B:62:0x01f0, B:64:0x039a, B:65:0x03ad, B:67:0x03af, B:69:0x03cf, B:71:0x03d3, B:73:0x03e0, B:74:0x041d, B:90:0x0521, B:91:0x0558, B:93:0x057c, B:94:0x059d, B:96:0x05a5, B:97:0x05ac, B:98:0x05de, B:102:0x05e1, B:104:0x0612, B:105:0x0627, B:107:0x0528, B:108:0x052f, B:109:0x0536, B:110:0x053f, B:111:0x0545, B:112:0x054e, B:129:0x041a, B:130:0x0629, B:131:0x063c, B:133:0x0203, B:135:0x0207, B:148:0x02a8, B:150:0x02b0, B:152:0x0314, B:154:0x0317, B:156:0x031c, B:159:0x0323, B:160:0x02b6, B:162:0x02be, B:164:0x02cc, B:166:0x02d5, B:167:0x02d7, B:170:0x02df, B:171:0x02e7, B:173:0x02f1, B:174:0x02fa, B:176:0x0304, B:177:0x0306, B:178:0x030a, B:195:0x0332, B:199:0x0360, B:202:0x0370, B:203:0x0366, B:205:0x036e, B:206:0x0356, B:208:0x035c, B:210:0x0375, B:211:0x0387, B:212:0x063e, B:213:0x0651, B:215:0x0653, B:216:0x0664), top: B:3:0x000d, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x03cf A[Catch: all -> 0x0024, TryCatch #0 {all -> 0x0024, blocks: (B:4:0x000d, B:6:0x0011, B:7:0x0022, B:10:0x0027, B:12:0x002f, B:13:0x0040, B:15:0x0042, B:17:0x004e, B:18:0x005f, B:20:0x0061, B:22:0x0069, B:23:0x007a, B:25:0x007c, B:27:0x0096, B:28:0x00b3, B:30:0x00cd, B:31:0x00ea, B:33:0x0104, B:34:0x0121, B:36:0x013b, B:37:0x0158, B:39:0x0172, B:40:0x018c, B:42:0x01a6, B:43:0x01a8, B:45:0x01ac, B:47:0x01b0, B:49:0x01b8, B:52:0x01c0, B:56:0x01e4, B:62:0x01f0, B:64:0x039a, B:65:0x03ad, B:67:0x03af, B:69:0x03cf, B:71:0x03d3, B:73:0x03e0, B:74:0x041d, B:90:0x0521, B:91:0x0558, B:93:0x057c, B:94:0x059d, B:96:0x05a5, B:97:0x05ac, B:98:0x05de, B:102:0x05e1, B:104:0x0612, B:105:0x0627, B:107:0x0528, B:108:0x052f, B:109:0x0536, B:110:0x053f, B:111:0x0545, B:112:0x054e, B:129:0x041a, B:130:0x0629, B:131:0x063c, B:133:0x0203, B:135:0x0207, B:148:0x02a8, B:150:0x02b0, B:152:0x0314, B:154:0x0317, B:156:0x031c, B:159:0x0323, B:160:0x02b6, B:162:0x02be, B:164:0x02cc, B:166:0x02d5, B:167:0x02d7, B:170:0x02df, B:171:0x02e7, B:173:0x02f1, B:174:0x02fa, B:176:0x0304, B:177:0x0306, B:178:0x030a, B:195:0x0332, B:199:0x0360, B:202:0x0370, B:203:0x0366, B:205:0x036e, B:206:0x0356, B:208:0x035c, B:210:0x0375, B:211:0x0387, B:212:0x063e, B:213:0x0651, B:215:0x0653, B:216:0x0664), top: B:3:0x000d, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzb(Map map) {
        ViewParent parent;
        char c;
        int i;
        char c2;
        int i2;
        int i3;
        int i4;
        int m2926x3271d0aa;
        int i5;
        synchronized (this.zzj) {
            try {
                if (this.zzl == null) {
                    zzh(new ObfuscatedString(new long[]{-8174832458179470375L, -5215748132037260003L, 880526426636249515L, 7086023934757819323L, 46455025755680223L, 6608643620546123293L}).toString());
                    return;
                }
                if (this.zzk.zzO() == null) {
                    zzh(new ObfuscatedString(new long[]{-7255285818413208727L, 5825432427916678042L, 8940612814579228270L, 5725234936929493519L, 1331374644733185662L, -5894730053571812702L, 6580732877362453370L}).toString());
                    return;
                }
                if (this.zzk.zzO().zzi()) {
                    zzh(new ObfuscatedString(new long[]{4184966320086278481L, -3637003415139696183L, -7901373627501683157L, -388895976859721246L, 8416173029692630371L, -5708809701379646287L, 2233121787162676252L}).toString());
                    return;
                }
                if (this.zzk.zzaC()) {
                    zzh(new ObfuscatedString(new long[]{-6381046237699183000L, -8739134643319937866L, 2043228821381538090L, -3269086303318735156L, -1540774612406658016L, 9102890158205423991L}).toString());
                    return;
                }
                if (!TextUtils.isEmpty((CharSequence) map.get(new ObfuscatedString(new long[]{-2792525941926983975L, 4598651660174497489L}).toString()))) {
                    com.google.android.gms.ads.internal.zzt.zzp();
                    this.zzi = com.google.android.gms.ads.internal.util.zzt.zzN((String) map.get(new ObfuscatedString(new long[]{120388199547617292L, 4828845456630158651L}).toString()));
                }
                if (!TextUtils.isEmpty((CharSequence) map.get(new ObfuscatedString(new long[]{5423649887546829212L, -6130945037496394201L}).toString()))) {
                    com.google.android.gms.ads.internal.zzt.zzp();
                    this.zzf = com.google.android.gms.ads.internal.util.zzt.zzN((String) map.get(new ObfuscatedString(new long[]{-5663490766021044322L, 7597011511071630610L}).toString()));
                }
                if (!TextUtils.isEmpty((CharSequence) map.get(new ObfuscatedString(new long[]{8861058965119102452L, 1560346274741031839L}).toString()))) {
                    com.google.android.gms.ads.internal.zzt.zzp();
                    this.zzg = com.google.android.gms.ads.internal.util.zzt.zzN((String) map.get(new ObfuscatedString(new long[]{6320282821436179892L, -2800983465903546307L}).toString()));
                }
                if (!TextUtils.isEmpty((CharSequence) map.get(new ObfuscatedString(new long[]{1113616174167801634L, -5686761421416833178L}).toString()))) {
                    com.google.android.gms.ads.internal.zzt.zzp();
                    this.zzh = com.google.android.gms.ads.internal.util.zzt.zzN((String) map.get(new ObfuscatedString(new long[]{5758635696601023168L, -2975084560731836969L}).toString()));
                }
                if (!TextUtils.isEmpty((CharSequence) map.get(new ObfuscatedString(new long[]{-2171770595055330709L, -8770559152353010590L, 5587826932033336838L}).toString()))) {
                    this.zzc = Boolean.parseBoolean((String) map.get(new ObfuscatedString(new long[]{-3786495450345806708L, -8826346262858639116L, 1046007052121824052L}).toString()));
                }
                String str = (String) map.get(new ObfuscatedString(new long[]{-7117893488397408287L, -3695213839666776338L, -8472786183675821946L, -3206256675853166414L}).toString());
                if (!TextUtils.isEmpty(str)) {
                    this.zzb = str;
                }
                if (this.zzi >= 0 && this.zzf >= 0) {
                    Window window = this.zzl.getWindow();
                    if (window != null && window.getDecorView() != null) {
                        com.google.android.gms.ads.internal.zzt.zzp();
                        int[] zzU = com.google.android.gms.ads.internal.util.zzt.zzU(this.zzl);
                        com.google.android.gms.ads.internal.zzt.zzp();
                        int[] zzQ = com.google.android.gms.ads.internal.util.zzt.zzQ(this.zzl);
                        int i6 = zzU[0];
                        int i7 = zzU[1];
                        int i8 = this.zzi;
                        int[] iArr = null;
                        if (i8 >= 50 && i8 <= i6) {
                            int i9 = this.zzf;
                            if (i9 >= 50 && i9 <= i7) {
                                if (i9 == i7 && i8 == i6) {
                                    zzcec.zzj(new ObfuscatedString(new long[]{8987007131779268117L, 3402319489227289297L, -7631701016086672587L, -1916920907904727980L, -8837170128795510739L, -5067729563030197834L}).toString());
                                } else if (this.zzc) {
                                    String str2 = this.zzb;
                                    switch (str2.hashCode()) {
                                        case -1364013995:
                                            if (str2.equals(new ObfuscatedString(new long[]{-6503941450448847062L, -3343044842580485566L}).toString())) {
                                                c2 = 2;
                                                break;
                                            }
                                            c2 = 65535;
                                            break;
                                        case -1012429441:
                                            if (str2.equals(new ObfuscatedString(new long[]{-5229886579239565690L, -7803955267254282589L}).toString())) {
                                                c2 = 0;
                                                break;
                                            }
                                            c2 = 65535;
                                            break;
                                        case -655373719:
                                            if (str2.equals(new ObfuscatedString(new long[]{3812397050469530238L, 2652306002269764633L, 5942600923909521317L}).toString())) {
                                                c2 = 3;
                                                break;
                                            }
                                            c2 = 65535;
                                            break;
                                        case 1163912186:
                                            if (str2.equals(new ObfuscatedString(new long[]{-6751282907485814236L, 8629152236997612582L, -747752794395250701L}).toString())) {
                                                c2 = 5;
                                                break;
                                            }
                                            c2 = 65535;
                                            break;
                                        case 1288627767:
                                            if (str2.equals(new ObfuscatedString(new long[]{-8402340433230238779L, -8852870484484820606L, 7763015820915756318L}).toString())) {
                                                c2 = 4;
                                                break;
                                            }
                                            c2 = 65535;
                                            break;
                                        case 1755462605:
                                            if (str2.equals(new ObfuscatedString(new long[]{5818081205577394930L, 2879502044970503761L, 4436199422194663239L}).toString())) {
                                                c2 = 1;
                                                break;
                                            }
                                            c2 = 65535;
                                            break;
                                        default:
                                            c2 = 65535;
                                            break;
                                    }
                                    if (c2 != 0) {
                                        if (c2 != 1) {
                                            if (c2 != 2) {
                                                if (c2 != 3) {
                                                    if (c2 != 4) {
                                                        if (c2 != 5) {
                                                            i2 = AbstractC0362x4440ab85.m2926x3271d0aa(this.zzd, this.zzg, i8, -50);
                                                            i4 = this.zze + this.zzh;
                                                        } else {
                                                            int m2926x3271d0aa2 = AbstractC0362x4440ab85.m2926x3271d0aa(this.zzd, this.zzg, i8, -50);
                                                            i4 = AbstractC0362x4440ab85.m2926x3271d0aa(this.zze, this.zzh, i9, -50);
                                                            i2 = m2926x3271d0aa2;
                                                        }
                                                        if (i2 >= 0 && i2 + 50 <= i6 && i4 >= zzQ[0] && i4 + 50 <= zzQ[1]) {
                                                            iArr = new int[]{this.zzd + this.zzg, this.zze + this.zzh};
                                                        }
                                                    } else {
                                                        m2926x3271d0aa = AbstractC0362x4440ab85.m2926x3271d0aa(this.zzd, this.zzg, i8 >> 1, -25);
                                                        i5 = this.zze;
                                                    }
                                                } else {
                                                    m2926x3271d0aa = this.zzd + this.zzg;
                                                    i5 = this.zze;
                                                }
                                                i4 = AbstractC0362x4440ab85.m2926x3271d0aa(i5, this.zzh, i9, -50);
                                            } else {
                                                m2926x3271d0aa = AbstractC0362x4440ab85.m2926x3271d0aa(this.zzd, this.zzg, i8 >> 1, -25);
                                                i4 = ((this.zze + this.zzh) + (i9 >> 1)) - 25;
                                            }
                                            i2 = m2926x3271d0aa;
                                            if (i2 >= 0) {
                                                iArr = new int[]{this.zzd + this.zzg, this.zze + this.zzh};
                                            }
                                        } else {
                                            i2 = AbstractC0362x4440ab85.m2926x3271d0aa(this.zzd, this.zzg, i8 >> 1, -25);
                                            i3 = this.zze;
                                        }
                                    } else {
                                        i2 = this.zzg + this.zzd;
                                        i3 = this.zze;
                                    }
                                    i4 = this.zzh + i3;
                                    if (i2 >= 0) {
                                    }
                                } else {
                                    com.google.android.gms.ads.internal.zzt.zzp();
                                    int[] zzU2 = com.google.android.gms.ads.internal.util.zzt.zzU(this.zzl);
                                    com.google.android.gms.ads.internal.zzt.zzp();
                                    int[] zzQ2 = com.google.android.gms.ads.internal.util.zzt.zzQ(this.zzl);
                                    int i10 = zzU2[0];
                                    int i11 = this.zzd + this.zzg;
                                    int i12 = this.zze + this.zzh;
                                    if (i11 < 0) {
                                        i = 0;
                                    } else {
                                        int i13 = this.zzi;
                                        if (i11 + i13 > i10) {
                                            i = i10 - i13;
                                        } else {
                                            i = i11;
                                        }
                                    }
                                    int i14 = zzQ2[0];
                                    if (i12 < i14) {
                                        i12 = i14;
                                    } else {
                                        int i15 = this.zzf;
                                        int i16 = i12 + i15;
                                        int i17 = zzQ2[1];
                                        if (i16 > i17) {
                                            i12 = i17 - i15;
                                        }
                                    }
                                    iArr = new int[]{i, i12};
                                }
                                com.google.android.gms.ads.internal.client.zzay.zzb();
                                int zzx = zzcdv.zzx(this.zzl, this.zzi);
                                com.google.android.gms.ads.internal.client.zzay.zzb();
                                int zzx2 = zzcdv.zzx(this.zzl, this.zzf);
                                parent = ((View) this.zzk).getParent();
                                if (parent == null && (parent instanceof ViewGroup)) {
                                    ViewGroup viewGroup = (ViewGroup) parent;
                                    viewGroup.removeView((View) this.zzk);
                                    PopupWindow popupWindow = this.zzq;
                                    if (popupWindow == null) {
                                        this.zzs = viewGroup;
                                        com.google.android.gms.ads.internal.zzt.zzp();
                                        Object obj = this.zzk;
                                        ((View) obj).setDrawingCacheEnabled(true);
                                        Bitmap createBitmap = Bitmap.createBitmap(((View) obj).getDrawingCache());
                                        ((View) obj).setDrawingCacheEnabled(false);
                                        ImageView imageView = new ImageView(this.zzl);
                                        this.zzn = imageView;
                                        imageView.setImageBitmap(createBitmap);
                                        this.zzm = this.zzk.zzO();
                                        this.zzs.addView(this.zzn);
                                    } else {
                                        popupWindow.dismiss();
                                    }
                                    RelativeLayout relativeLayout = new RelativeLayout(this.zzl);
                                    this.zzr = relativeLayout;
                                    relativeLayout.setBackgroundColor(0);
                                    this.zzr.setLayoutParams(new ViewGroup.LayoutParams(zzx, zzx2));
                                    com.google.android.gms.ads.internal.zzt.zzp();
                                    PopupWindow popupWindow2 = new PopupWindow((View) this.zzr, zzx, zzx2, false);
                                    this.zzq = popupWindow2;
                                    popupWindow2.setOutsideTouchable(false);
                                    this.zzq.setTouchable(true);
                                    this.zzq.setClippingEnabled(!this.zzc);
                                    this.zzr.addView((View) this.zzk, -1, -1);
                                    this.zzo = new LinearLayout(this.zzl);
                                    com.google.android.gms.ads.internal.client.zzay.zzb();
                                    int zzx3 = zzcdv.zzx(this.zzl, 50);
                                    com.google.android.gms.ads.internal.client.zzay.zzb();
                                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(zzx3, zzcdv.zzx(this.zzl, 50));
                                    String str3 = this.zzb;
                                    switch (str3.hashCode()) {
                                        case -1364013995:
                                            if (str3.equals(new ObfuscatedString(new long[]{3730897277341478359L, -521430114781927264L}).toString())) {
                                                c = 2;
                                                break;
                                            }
                                            c = 65535;
                                            break;
                                        case -1012429441:
                                            if (str3.equals(new ObfuscatedString(new long[]{-2539148353745151930L, -8351914666760708017L}).toString())) {
                                                c = 0;
                                                break;
                                            }
                                            c = 65535;
                                            break;
                                        case -655373719:
                                            if (str3.equals(new ObfuscatedString(new long[]{-4649556448988305490L, 8228954162683895298L, 8317821158776838293L}).toString())) {
                                                c = 3;
                                                break;
                                            }
                                            c = 65535;
                                            break;
                                        case 1163912186:
                                            if (str3.equals(new ObfuscatedString(new long[]{3203632609881642312L, -74787442762389474L, 420405507873631828L}).toString())) {
                                                c = 5;
                                                break;
                                            }
                                            c = 65535;
                                            break;
                                        case 1288627767:
                                            if (str3.equals(new ObfuscatedString(new long[]{2791795264146439879L, -2135334765597390808L, -728051093725021820L}).toString())) {
                                                c = 4;
                                                break;
                                            }
                                            c = 65535;
                                            break;
                                        case 1755462605:
                                            if (str3.equals(new ObfuscatedString(new long[]{-6910674884623722901L, -1893746446978413646L, -1298731222510031087L}).toString())) {
                                                c = 1;
                                                break;
                                            }
                                            c = 65535;
                                            break;
                                        default:
                                            c = 65535;
                                            break;
                                    }
                                    if (c != 0) {
                                        if (c != 1) {
                                            if (c != 2) {
                                                if (c != 3) {
                                                    if (c != 4) {
                                                        if (c != 5) {
                                                            layoutParams.addRule(10);
                                                            layoutParams.addRule(11);
                                                        } else {
                                                            layoutParams.addRule(12);
                                                            layoutParams.addRule(11);
                                                        }
                                                    } else {
                                                        layoutParams.addRule(12);
                                                        layoutParams.addRule(14);
                                                    }
                                                } else {
                                                    layoutParams.addRule(12);
                                                    layoutParams.addRule(9);
                                                }
                                            } else {
                                                layoutParams.addRule(13);
                                            }
                                        } else {
                                            layoutParams.addRule(10);
                                            layoutParams.addRule(14);
                                        }
                                    } else {
                                        layoutParams.addRule(10);
                                        layoutParams.addRule(9);
                                    }
                                    this.zzo.setOnClickListener(new zzbvp(this));
                                    this.zzo.setContentDescription(new ObfuscatedString(new long[]{-8193748053495388385L, -7779726235146318264L, -7972060454169471623L}).toString());
                                    this.zzr.addView(this.zzo, layoutParams);
                                    try {
                                        PopupWindow popupWindow3 = this.zzq;
                                        View decorView = window.getDecorView();
                                        com.google.android.gms.ads.internal.client.zzay.zzb();
                                        int zzx4 = zzcdv.zzx(this.zzl, iArr[0]);
                                        com.google.android.gms.ads.internal.client.zzay.zzb();
                                        popupWindow3.showAtLocation(decorView, 0, zzx4, zzcdv.zzx(this.zzl, iArr[1]));
                                        int i18 = iArr[0];
                                        int i19 = iArr[1];
                                        zzbvx zzbvxVar = this.zzp;
                                        if (zzbvxVar != null) {
                                            zzbvxVar.zza(i18, i19, this.zzi, this.zzf);
                                        }
                                        this.zzk.zzah(zzcla.zzb(zzx, zzx2));
                                        int i20 = iArr[0];
                                        int i21 = iArr[1];
                                        com.google.android.gms.ads.internal.zzt.zzp();
                                        zzk(i20, i21 - com.google.android.gms.ads.internal.util.zzt.zzQ(this.zzl)[0], this.zzi, this.zzf);
                                        zzl(new ObfuscatedString(new long[]{-4743999397123974523L, -7174679079909410778L}).toString());
                                        return;
                                    } catch (RuntimeException e) {
                                        zzh(new ObfuscatedString(new long[]{-5037412905861450861L, -4880536367168699147L, 6636443020109850867L, 3497421828807025304L, -6992522508680204166L}).toString() + e.getMessage());
                                        this.zzr.removeView((View) this.zzk);
                                        ViewGroup viewGroup2 = this.zzs;
                                        if (viewGroup2 != null) {
                                            viewGroup2.removeView(this.zzn);
                                            this.zzs.addView((View) this.zzk);
                                            this.zzk.zzah(this.zzm);
                                        }
                                        return;
                                    }
                                }
                                zzh(new ObfuscatedString(new long[]{254993473449652025L, 834036779781031094L, 9054726770042356075L, 2217121310029676957L, -4286215520199629909L, 3717664964082901261L, -3705310390438479845L, -8012914209453311038L, -4930426351463085349L, 2706286849633256059L}).toString());
                                return;
                            }
                            zzcec.zzj(new ObfuscatedString(new long[]{-6306274124100436845L, 2554856805695140216L, -4589122612898474357L, -2680254508261647316L, 2946904378039167770L, -3904598795160823006L}).toString());
                            com.google.android.gms.ads.internal.client.zzay.zzb();
                            int zzx5 = zzcdv.zzx(this.zzl, this.zzi);
                            com.google.android.gms.ads.internal.client.zzay.zzb();
                            int zzx22 = zzcdv.zzx(this.zzl, this.zzf);
                            parent = ((View) this.zzk).getParent();
                            if (parent == null) {
                            }
                            zzh(new ObfuscatedString(new long[]{254993473449652025L, 834036779781031094L, 9054726770042356075L, 2217121310029676957L, -4286215520199629909L, 3717664964082901261L, -3705310390438479845L, -8012914209453311038L, -4930426351463085349L, 2706286849633256059L}).toString());
                            return;
                        }
                        zzcec.zzj(new ObfuscatedString(new long[]{6905308956928425419L, 8401329986120768810L, 3189605114052608443L, 9061971088938476538L, 2887278155478284889L}).toString());
                        com.google.android.gms.ads.internal.client.zzay.zzb();
                        int zzx52 = zzcdv.zzx(this.zzl, this.zzi);
                        com.google.android.gms.ads.internal.client.zzay.zzb();
                        int zzx222 = zzcdv.zzx(this.zzl, this.zzf);
                        parent = ((View) this.zzk).getParent();
                        if (parent == null) {
                        }
                        zzh(new ObfuscatedString(new long[]{254993473449652025L, 834036779781031094L, 9054726770042356075L, 2217121310029676957L, -4286215520199629909L, 3717664964082901261L, -3705310390438479845L, -8012914209453311038L, -4930426351463085349L, 2706286849633256059L}).toString());
                        return;
                    }
                    zzh(new ObfuscatedString(new long[]{-4589146069915815672L, -7098234380843250167L, 7507813270319070122L, -8476027710376334806L, 7708887901195593913L, -5204585865813509438L, 8478619374701681878L, 8568231628921119332L, 2739847644861892125L}).toString());
                    return;
                }
                zzh(new ObfuscatedString(new long[]{3553703124949056972L, -4002921248051046846L, -4732867472235781460L, -8709592512503182064L, -4857133164552518824L, -736555997578977268L, -8788389902780150365L}).toString());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzd(int i, int i2, boolean z) {
        synchronized (this.zzj) {
            this.zzd = i;
            this.zze = i2;
        }
    }

    public final void zze(int i, int i2) {
        this.zzd = i;
        this.zze = i2;
    }

    public final boolean zzf() {
        boolean z;
        synchronized (this.zzj) {
            if (this.zzq != null) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }
}
