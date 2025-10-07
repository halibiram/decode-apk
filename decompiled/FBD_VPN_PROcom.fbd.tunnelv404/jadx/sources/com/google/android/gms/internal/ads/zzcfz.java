package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.internal.view.SupportMenu;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes2.dex */
public final class zzcfz extends FrameLayout implements zzcfq {

    @VisibleForTesting
    final zzcgn zza;
    private final zzcgl zzb;
    private final FrameLayout zzc;
    private final View zzd;
    private final zzbgu zze;
    private final long zzf;

    @Nullable
    private final zzcfr zzg;
    private boolean zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;
    private long zzl;
    private long zzm;
    private String zzn;
    private String[] zzo;
    private Bitmap zzp;
    private final ImageView zzq;
    private boolean zzr;

    public zzcfz(Context context, zzcgl zzcglVar, int i, boolean z, zzbgu zzbguVar, zzcgk zzcgkVar) {
        super(context);
        zzcfr zzcfpVar;
        String obfuscatedString;
        this.zzb = zzcglVar;
        this.zze = zzbguVar;
        FrameLayout frameLayout = new FrameLayout(context);
        this.zzc = frameLayout;
        addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
        Preconditions.checkNotNull(zzcglVar.zzj());
        zzcfs zzcfsVar = zzcglVar.zzj().zza;
        zzcgm zzcgmVar = new zzcgm(context, zzcglVar.zzn(), zzcglVar.zzbr(), zzbguVar, zzcglVar.zzk());
        if (i == 2) {
            zzcfpVar = new zzchd(context, zzcgmVar, zzcglVar, z, zzcfs.zza(zzcglVar), zzcgkVar);
        } else {
            zzcfpVar = new zzcfp(context, zzcglVar, z, zzcfs.zza(zzcglVar), zzcgkVar, new zzcgm(context, zzcglVar.zzn(), zzcglVar.zzbr(), zzbguVar, zzcglVar.zzk()));
        }
        this.zzg = zzcfpVar;
        View view = new View(context);
        this.zzd = view;
        view.setBackgroundColor(0);
        frameLayout.addView(zzcfpVar, new FrameLayout.LayoutParams(-1, -1, 17));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzF)).booleanValue()) {
            frameLayout.addView(view, new FrameLayout.LayoutParams(-1, -1));
            frameLayout.bringChildToFront(view);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzC)).booleanValue()) {
            zzn();
        }
        this.zzq = new ImageView(context);
        this.zzf = ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzI)).longValue();
        boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzE)).booleanValue();
        this.zzk = booleanValue;
        if (zzbguVar != null) {
            if (true != booleanValue) {
                obfuscatedString = new ObfuscatedString(new long[]{-2977972617734352175L, -5830034924239345821L}).toString();
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{5159302472360716548L, 7044595910731508069L}).toString();
            }
            zzbguVar.zzd(new ObfuscatedString(new long[]{-8702505073091325093L, -5526117265707607896L, 8912305945359542283L}).toString(), obfuscatedString);
        }
        this.zza = new zzcgn(this);
        zzcfpVar.zzr(this);
    }

    private final void zzJ() {
        if (this.zzb.zzi() != null && this.zzi && !this.zzj) {
            this.zzb.zzi().getWindow().clearFlags(128);
            this.zzi = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzK(String str, String... strArr) {
        HashMap hashMap = new HashMap();
        Integer zzl = zzl();
        if (zzl != null) {
            hashMap.put(new ObfuscatedString(new long[]{7635087182378918550L, -35592018096901785L}).toString(), zzl.toString());
        }
        hashMap.put(new ObfuscatedString(new long[]{7109001170575394787L, -7899239022116682831L}).toString(), str);
        String str2 = null;
        for (String str3 : strArr) {
            if (str2 == null) {
                str2 = str3;
            } else {
                hashMap.put(str2, str3);
                str2 = null;
            }
        }
        this.zzb.zzd(new ObfuscatedString(new long[]{-4264971730195430348L, -841647756422344058L, 3766830221440336026L}).toString(), hashMap);
    }

    private final boolean zzL() {
        if (this.zzq.getParent() != null) {
            return true;
        }
        return false;
    }

    public final void finalize() {
        try {
            this.zza.zza();
            final zzcfr zzcfrVar = this.zzg;
            if (zzcfrVar != null) {
                zzcep.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcft
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzcfr.this.zzt();
                    }
                });
            }
        } finally {
            super.finalize();
        }
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(final boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            this.zza.zzb();
        } else {
            this.zza.zza();
            this.zzm = this.zzl;
        }
        com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfv
            @Override // java.lang.Runnable
            public final void run() {
                zzcfz.this.zzq(z);
            }
        });
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzcfq
    public final void onWindowVisibilityChanged(int i) {
        boolean z;
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            this.zza.zzb();
            z = true;
        } else {
            this.zza.zza();
            this.zzm = this.zzl;
            z = false;
        }
        com.google.android.gms.ads.internal.util.zzt.zza.post(new zzcfy(this, z));
    }

    public final void zzA(int i) {
        zzcfr zzcfrVar = this.zzg;
        if (zzcfrVar == null) {
            return;
        }
        zzcfrVar.zzz(i);
    }

    public final void zzB(int i) {
        zzcfr zzcfrVar = this.zzg;
        if (zzcfrVar == null) {
            return;
        }
        zzcfrVar.zzA(i);
    }

    public final void zzC(int i) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzF)).booleanValue()) {
            this.zzc.setBackgroundColor(i);
            this.zzd.setBackgroundColor(i);
        }
    }

    public final void zzD(int i) {
        zzcfr zzcfrVar = this.zzg;
        if (zzcfrVar == null) {
            return;
        }
        zzcfrVar.zzB(i);
    }

    public final void zzE(String str, String[] strArr) {
        this.zzn = str;
        this.zzo = strArr;
    }

    public final void zzF(int i, int i2, int i3, int i4) {
        if (com.google.android.gms.ads.internal.util.zze.zzc()) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{5853364680462452107L, 5409512083295622543L, -6623488990596735519L, -3634699078164981844L}).toString() + i + new ObfuscatedString(new long[]{-6390988765246219279L, -1852152974682077598L}).toString() + i2 + new ObfuscatedString(new long[]{-7997681326206702094L, 1472811102628234266L}).toString() + i3 + new ObfuscatedString(new long[]{3600304124456926030L, -369268947320782702L}).toString() + i4);
        }
        if (i3 != 0 && i4 != 0) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i4);
            layoutParams.setMargins(i, i2, 0, 0);
            this.zzc.setLayoutParams(layoutParams);
            requestLayout();
        }
    }

    public final void zzG(float f) {
        zzcfr zzcfrVar = this.zzg;
        if (zzcfrVar == null) {
            return;
        }
        zzcfrVar.zzb.zze(f);
        zzcfrVar.zzn();
    }

    public final void zzH(float f, float f2) {
        zzcfr zzcfrVar = this.zzg;
        if (zzcfrVar != null) {
            zzcfrVar.zzu(f, f2);
        }
    }

    public final void zzI() {
        zzcfr zzcfrVar = this.zzg;
        if (zzcfrVar == null) {
            return;
        }
        zzcfrVar.zzb.zzd(false);
        zzcfrVar.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzcfq
    public final void zza() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbS)).booleanValue()) {
            this.zza.zza();
        }
        zzK(new ObfuscatedString(new long[]{5313944577616709400L, -4815008757397845732L}).toString(), new String[0]);
        zzJ();
    }

    @Override // com.google.android.gms.internal.ads.zzcfq
    public final void zzb(String str, @Nullable String str2) {
        zzK(new ObfuscatedString(new long[]{-3096830789974903473L, 6444223950901157117L}).toString(), new ObfuscatedString(new long[]{1351283907088843901L, -4718228629234649682L}).toString(), str, new ObfuscatedString(new long[]{7325349757084479082L, -7860167926481174233L}).toString(), str2);
    }

    @Override // com.google.android.gms.internal.ads.zzcfq
    public final void zzc(String str, @Nullable String str2) {
        zzK(new ObfuscatedString(new long[]{-8370582949529858472L, -7093370539719609011L, 70399929939486569L}).toString(), new ObfuscatedString(new long[]{8216073570273082324L, 1662774236426800271L}).toString(), new ObfuscatedString(new long[]{6977799140594383386L, -1387083859235683544L, -1121168961271208516L, 4472302225123366227L, -8925473411158227883L}).toString(), new ObfuscatedString(new long[]{1781444009775011878L, -2245867911333886551L}).toString(), str2);
    }

    @Override // com.google.android.gms.internal.ads.zzcfq
    public final void zzd() {
        zzK(new ObfuscatedString(new long[]{5982720843234022755L, -118084004473886442L}).toString(), new String[0]);
        zzJ();
        this.zzh = false;
    }

    @Override // com.google.android.gms.internal.ads.zzcfq
    public final void zze() {
        boolean z;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbS)).booleanValue()) {
            this.zza.zzb();
        }
        if (this.zzb.zzi() != null && !this.zzi) {
            if ((this.zzb.zzi().getWindow().getAttributes().flags & 128) != 0) {
                z = true;
            } else {
                z = false;
            }
            this.zzj = z;
            if (!z) {
                this.zzb.zzi().getWindow().addFlags(128);
                this.zzi = true;
            }
        }
        this.zzh = true;
    }

    @Override // com.google.android.gms.internal.ads.zzcfq
    public final void zzf() {
        zzcfr zzcfrVar = this.zzg;
        if (zzcfrVar != null && this.zzm == 0) {
            float zzc = zzcfrVar.zzc();
            zzcfr zzcfrVar2 = this.zzg;
            zzK(new ObfuscatedString(new long[]{-5159308392416519027L, -2579241015221574698L, 9078864995138991392L}).toString(), new ObfuscatedString(new long[]{-5257580720907076554L, -5245194783919155821L}).toString(), String.valueOf(zzc / 1000.0f), new ObfuscatedString(new long[]{7839605839332876729L, 2774279172320489814L, 169252507371221300L}).toString(), String.valueOf(zzcfrVar2.zze()), new ObfuscatedString(new long[]{-1705313755042476935L, 8893463730502430711L, 48213129782684143L}).toString(), String.valueOf(zzcfrVar2.zzd()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfq
    public final void zzg() {
        this.zzd.setVisibility(4);
        com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfu
            @Override // java.lang.Runnable
            public final void run() {
                zzcfz.this.zzp();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcfq
    public final void zzh() {
        this.zza.zzb();
        com.google.android.gms.ads.internal.util.zzt.zza.post(new zzcfw(this));
    }

    @Override // com.google.android.gms.internal.ads.zzcfq
    public final void zzi() {
        if (this.zzr && this.zzp != null && !zzL()) {
            this.zzq.setImageBitmap(this.zzp);
            this.zzq.invalidate();
            this.zzc.addView(this.zzq, new FrameLayout.LayoutParams(-1, -1));
            this.zzc.bringChildToFront(this.zzq);
        }
        this.zza.zza();
        this.zzm = this.zzl;
        com.google.android.gms.ads.internal.util.zzt.zza.post(new zzcfx(this));
    }

    @Override // com.google.android.gms.internal.ads.zzcfq
    public final void zzj(int i, int i2) {
        if (this.zzk) {
            zzbfu zzbfuVar = zzbgc.zzH;
            int max = Math.max(i / ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar)).intValue(), 1);
            int max2 = Math.max(i2 / ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar)).intValue(), 1);
            Bitmap bitmap = this.zzp;
            if (bitmap != null && bitmap.getWidth() == max && this.zzp.getHeight() == max2) {
                return;
            }
            this.zzp = Bitmap.createBitmap(max, max2, Bitmap.Config.ARGB_8888);
            this.zzr = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfq
    public final void zzk() {
        if (this.zzh && zzL()) {
            this.zzc.removeView(this.zzq);
        }
        if (this.zzg != null && this.zzp != null) {
            long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
            if (this.zzg.getBitmap(this.zzp) != null) {
                this.zzr = true;
            }
            long elapsedRealtime2 = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - elapsedRealtime;
            if (com.google.android.gms.ads.internal.util.zze.zzc()) {
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{8722143698365394842L, 2424599224805031456L, -7571593301003695911L, 894677424703835611L}).toString() + elapsedRealtime2 + new ObfuscatedString(new long[]{5908505354122225853L, 3547192576966181243L}).toString());
            }
            if (elapsedRealtime2 > this.zzf) {
                zzcec.zzj(new ObfuscatedString(new long[]{-7590975854950951596L, 3736415738155241992L, -5745843973538655384L, 3509883962815676700L, -2198746609320444989L, -6797131518219776645L, -8970373843377961698L, 2333835082390543276L, 3188910526491120169L}).toString());
                this.zzk = false;
                this.zzp = null;
                zzbgu zzbguVar = this.zze;
                if (zzbguVar != null) {
                    zzbguVar.zzd(new ObfuscatedString(new long[]{-2508444053278681668L, 5293775724178034117L, 216500668827862723L}).toString(), Long.toString(elapsedRealtime2));
                }
            }
        }
    }

    @Nullable
    public final Integer zzl() {
        zzcfr zzcfrVar = this.zzg;
        if (zzcfrVar != null) {
            return zzcfrVar.zzw();
        }
        return null;
    }

    public final void zzn() {
        String string;
        zzcfr zzcfrVar = this.zzg;
        if (zzcfrVar == null) {
            return;
        }
        TextView textView = new TextView(zzcfrVar.getContext());
        Resources zze = com.google.android.gms.ads.internal.zzt.zzo().zze();
        if (zze == null) {
            string = new ObfuscatedString(new long[]{-5705245913634721954L, -2911857185666272431L}).toString();
        } else {
            string = zze.getString(R.string.watermark_label_prefix);
        }
        textView.setText(String.valueOf(string).concat(this.zzg.zzj()));
        textView.setTextColor(SupportMenu.CATEGORY_MASK);
        textView.setBackgroundColor(-256);
        this.zzc.addView(textView, new FrameLayout.LayoutParams(-2, -2, 17));
        this.zzc.bringChildToFront(textView);
    }

    public final void zzo() {
        this.zza.zza();
        zzcfr zzcfrVar = this.zzg;
        if (zzcfrVar != null) {
            zzcfrVar.zzt();
        }
        zzJ();
    }

    public final /* synthetic */ void zzp() {
        zzK(new ObfuscatedString(new long[]{-3032025081630888712L, 2645952301853416446L, 3381518610946606247L, 3134962016415302615L}).toString(), new String[0]);
    }

    public final /* synthetic */ void zzq(boolean z) {
        zzK(new ObfuscatedString(new long[]{-5143634756206541863L, 3649616058825176953L, 1698313555597430830L, -1572908797073185612L}).toString(), new ObfuscatedString(new long[]{-4867786270666542584L, 2798003165687866053L, 3835472055073296871L}).toString(), String.valueOf(z));
    }

    public final void zzr(Integer num) {
        if (this.zzg == null) {
            return;
        }
        if (!TextUtils.isEmpty(this.zzn)) {
            this.zzg.zzC(this.zzn, this.zzo, num);
        } else {
            zzK(new ObfuscatedString(new long[]{8734887199035850876L, 2195888955808467317L}).toString(), new String[0]);
        }
    }

    public final void zzs() {
        zzcfr zzcfrVar = this.zzg;
        if (zzcfrVar == null) {
            return;
        }
        zzcfrVar.zzb.zzd(true);
        zzcfrVar.zzn();
    }

    public final void zzt() {
        zzcfr zzcfrVar = this.zzg;
        if (zzcfrVar != null) {
            long zza = zzcfrVar.zza();
            if (this.zzl != zza && zza > 0) {
                float f = ((float) zza) / 1000.0f;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbQ)).booleanValue()) {
                    zzK(new ObfuscatedString(new long[]{-3235565615023418752L, -1714328755430323554L, -8018593271256245109L}).toString(), new ObfuscatedString(new long[]{7486398776678958276L, -4034044943154148391L}).toString(), String.valueOf(f), new ObfuscatedString(new long[]{8012596457018309914L, 6264586158284028347L, 3218242525673529648L}).toString(), String.valueOf(this.zzg.zzh()), new ObfuscatedString(new long[]{-3108302158744214510L, 7118242199361934663L, 7720911822355584634L}).toString(), String.valueOf(this.zzg.zzf()), new ObfuscatedString(new long[]{-1835523997093449983L, 4429627950034589637L, 4191509908575067523L}).toString(), String.valueOf(this.zzg.zzg()), new ObfuscatedString(new long[]{7861206603957115718L, 1703841931994763789L, -5281501658313258813L}).toString(), String.valueOf(this.zzg.zzb()), new ObfuscatedString(new long[]{8222465099445987630L, 6238885898093442025L, 7805438482023434219L}).toString(), String.valueOf(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis()));
                } else {
                    zzK(new ObfuscatedString(new long[]{-2469333726218161118L, -6704468475416783357L, 2051445171561120508L}).toString(), new ObfuscatedString(new long[]{-3658293115867326170L, -1556052242225130149L}).toString(), String.valueOf(f));
                }
                this.zzl = zza;
            }
        }
    }

    public final void zzu() {
        zzcfr zzcfrVar = this.zzg;
        if (zzcfrVar == null) {
            return;
        }
        zzcfrVar.zzo();
    }

    public final void zzv() {
        zzcfr zzcfrVar = this.zzg;
        if (zzcfrVar == null) {
            return;
        }
        zzcfrVar.zzp();
    }

    public final void zzw(int i) {
        zzcfr zzcfrVar = this.zzg;
        if (zzcfrVar == null) {
            return;
        }
        zzcfrVar.zzq(i);
    }

    public final void zzx(MotionEvent motionEvent) {
        zzcfr zzcfrVar = this.zzg;
        if (zzcfrVar == null) {
            return;
        }
        zzcfrVar.dispatchTouchEvent(motionEvent);
    }

    public final void zzy(int i) {
        zzcfr zzcfrVar = this.zzg;
        if (zzcfrVar == null) {
            return;
        }
        zzcfrVar.zzx(i);
    }

    public final void zzz(int i) {
        zzcfr zzcfrVar = this.zzg;
        if (zzcfrVar == null) {
            return;
        }
        zzcfrVar.zzy(i);
    }
}
