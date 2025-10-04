package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.PointF;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzcec;
import com.google.android.gms.internal.ads.zzcep;
import com.google.android.gms.internal.ads.zzdyz;
import com.google.android.gms.internal.ads.zzdzd;
import com.google.android.gms.internal.ads.zzgey;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public final class zzau {
    private final Context zza;
    private final zzdzd zzb;
    private String zzc;
    private String zzd;
    private String zze;

    @Nullable
    private String zzf;
    private int zzg;
    private int zzh;
    private PointF zzi;
    private PointF zzj;
    private Handler zzk;
    private Runnable zzl;

    public zzau(Context context) {
        this.zzg = 0;
        this.zzl = new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzah
            @Override // java.lang.Runnable
            public final void run() {
                zzau.this.zzg();
            }
        };
        this.zza = context;
        this.zzh = ViewConfiguration.get(context).getScaledTouchSlop();
        com.google.android.gms.ads.internal.zzt.zzt().zzb();
        this.zzk = com.google.android.gms.ads.internal.zzt.zzt().zza();
        this.zzb = com.google.android.gms.ads.internal.zzt.zzs().zza();
    }

    private final void zzs(Context context) {
        final int i;
        ArrayList arrayList = new ArrayList();
        int zzu = zzu(arrayList, new ObfuscatedString(new long[]{-4554829786268654521L, -4561231943681319066L}).toString(), true);
        final int zzu2 = zzu(arrayList, new ObfuscatedString(new long[]{-1357868820213829719L, -3339461290633640436L}).toString(), true);
        final int zzu3 = zzu(arrayList, new ObfuscatedString(new long[]{-1465388873048774156L, 1861841090886188807L}).toString(), true);
        zzdyz zzdyzVar = zzdyz.zza;
        int ordinal = this.zzb.zza().ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                i = zzu;
            } else {
                i = zzu3;
            }
        } else {
            i = zzu2;
        }
        com.google.android.gms.ads.internal.zzt.zzp();
        AlertDialog.Builder zzJ = zzt.zzJ(context);
        final AtomicInteger atomicInteger = new AtomicInteger(i);
        zzJ.setTitle(new ObfuscatedString(new long[]{4377190937234809061L, 4173998719167833051L, -3733557764562118590L}).toString());
        zzJ.setSingleChoiceItems((CharSequence[]) arrayList.toArray(new String[0]), i, new DialogInterface.OnClickListener() { // from class: com.google.android.gms.ads.internal.util.zzap
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                atomicInteger.set(i2);
            }
        });
        zzJ.setNegativeButton(new ObfuscatedString(new long[]{6045737440783998104L, 6642680283093788746L}).toString(), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.ads.internal.util.zzaq
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                zzau.this.zzr();
            }
        });
        zzJ.setPositiveButton(new ObfuscatedString(new long[]{5626485368415904556L, -1675887072167800409L}).toString(), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.ads.internal.util.zzar
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                zzau.this.zzh(atomicInteger, i, zzu2, zzu3, dialogInterface, i2);
            }
        });
        zzJ.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.google.android.gms.ads.internal.util.zzas
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                zzau.this.zzr();
            }
        });
        zzJ.create().show();
    }

    private final boolean zzt(float f, float f2, float f3, float f4) {
        if (Math.abs(this.zzi.x - f) < this.zzh && Math.abs(this.zzi.y - f2) < this.zzh && Math.abs(this.zzj.x - f3) < this.zzh && Math.abs(this.zzj.y - f4) < this.zzh) {
            return true;
        }
        return false;
    }

    private static final int zzu(List list, String str, boolean z) {
        if (!z) {
            return -1;
        }
        list.add(str);
        return list.size() - 1;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append(new ObfuscatedString(new long[]{5563002120201310173L, -7828319007253058823L, 6209831677093118432L}).toString());
        sb.append(this.zzc);
        sb.append(new ObfuscatedString(new long[]{6805577338254398102L, 9008986881386420486L, 7150778859721628511L}).toString());
        sb.append(this.zzf);
        sb.append(new ObfuscatedString(new long[]{-8208497674801178123L, 857648598305708557L, -4566948077349468412L}).toString());
        sb.append(this.zze);
        sb.append(new ObfuscatedString(new long[]{-2682312682702400543L, 5794253247373477484L, 6480767444166258846L}).toString());
        sb.append(this.zzd);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{4269933899604746369L, 7322040439627556674L}), sb);
    }

    public final /* synthetic */ void zza() {
        zzs(this.zza);
    }

    public final /* synthetic */ void zzb() {
        zzs(this.zza);
    }

    public final /* synthetic */ void zzc(zzgey zzgeyVar) {
        if (!com.google.android.gms.ads.internal.zzt.zzs().zzj(this.zza, this.zzd, this.zze)) {
            com.google.android.gms.ads.internal.zzt.zzs().zzd(this.zza, this.zzd, this.zze);
        } else {
            zzgeyVar.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzan
                @Override // java.lang.Runnable
                public final void run() {
                    zzau.this.zzb();
                }
            });
        }
    }

    public final /* synthetic */ void zzd(zzgey zzgeyVar) {
        if (!com.google.android.gms.ads.internal.zzt.zzs().zzj(this.zza, this.zzd, this.zze)) {
            com.google.android.gms.ads.internal.zzt.zzs().zzd(this.zza, this.zzd, this.zze);
        } else {
            zzgeyVar.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzam
                @Override // java.lang.Runnable
                public final void run() {
                    zzau.this.zzf();
                }
            });
        }
    }

    public final /* synthetic */ void zze() {
        com.google.android.gms.ads.internal.zzt.zzs().zzc(this.zza);
    }

    public final /* synthetic */ void zzf() {
        com.google.android.gms.ads.internal.zzt.zzs().zzc(this.zza);
    }

    public final /* synthetic */ void zzg() {
        this.zzg = 4;
        zzr();
    }

    public final /* synthetic */ void zzh(AtomicInteger atomicInteger, int i, int i2, int i3, DialogInterface dialogInterface, int i4) {
        if (atomicInteger.get() != i) {
            if (atomicInteger.get() == i2) {
                this.zzb.zzl(zzdyz.zzb);
            } else if (atomicInteger.get() == i3) {
                this.zzb.zzl(zzdyz.zzc);
            } else {
                this.zzb.zzl(zzdyz.zza);
            }
        }
        zzr();
    }

    public final /* synthetic */ void zzi(String str, DialogInterface dialogInterface, int i) {
        com.google.android.gms.ads.internal.zzt.zzp();
        zzt.zzS(this.zza, Intent.createChooser(new Intent(new ObfuscatedString(new long[]{3177346456294437856L, 8791953025365534883L, -7636049636824433946L, -792709952621572614L, -4371336320246564131L}).toString()).setType(new ObfuscatedString(new long[]{1837271528365749111L, 3358397846508072070L, 7896032796585867658L}).toString()).putExtra(new ObfuscatedString(new long[]{-5142159801836028310L, -6080190769660838010L, 422837402364365059L, -8819834952439586562L, 4337859706292902139L}).toString(), str), new ObfuscatedString(new long[]{3207814251704379854L, 1465400003985039500L, -2787602566196090104L}).toString()));
    }

    public final /* synthetic */ void zzj(int i, int i2, int i3, int i4, int i5, DialogInterface dialogInterface, int i6) {
        final String trim;
        if (i6 == i) {
            if (!(this.zza instanceof Activity)) {
                zzcec.zzi(new ObfuscatedString(new long[]{1423056658131392051L, 8814410065182248478L, -291404301079465373L, 8064902336246274767L, 5534186894113926671L, 3261303783461880540L, -6983332912760314447L}).toString());
                return;
            }
            String str = this.zzc;
            if (TextUtils.isEmpty(str)) {
                trim = new ObfuscatedString(new long[]{-5251643710688865019L, 1342205675189912620L, 4569610293385406848L, 4251371589815504835L}).toString();
            } else {
                Uri build = new Uri.Builder().encodedQuery(str.replaceAll(new ObfuscatedString(new long[]{-7866818030571583000L, -582676135057194302L}).toString(), new ObfuscatedString(new long[]{5025854311071740922L, 4536808987988965384L}).toString())).build();
                StringBuilder sb = new StringBuilder();
                com.google.android.gms.ads.internal.zzt.zzp();
                Map zzO = zzt.zzO(build);
                for (String str2 : zzO.keySet()) {
                    sb.append(str2);
                    sb.append(new ObfuscatedString(new long[]{-1221725382789494815L, 4392368892418265198L}).toString());
                    sb.append((String) zzO.get(str2));
                    sb.append(new ObfuscatedString(new long[]{4459312998586739406L, 5864566552961245902L}).toString());
                }
                trim = sb.toString().trim();
                if (TextUtils.isEmpty(trim)) {
                    trim = new ObfuscatedString(new long[]{-6578770961833241437L, -8329987648004878813L, 6597712566468922109L, -6779299726398816602L}).toString();
                }
            }
            com.google.android.gms.ads.internal.zzt.zzp();
            AlertDialog.Builder zzJ = zzt.zzJ(this.zza);
            zzJ.setMessage(trim);
            zzJ.setTitle(new ObfuscatedString(new long[]{8623874821560836197L, 3380804533340818186L, -3205942117635769570L}).toString());
            zzJ.setPositiveButton(new ObfuscatedString(new long[]{-561203415386104541L, -8092932874139572284L}).toString(), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.ads.internal.util.zzaj
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface2, int i7) {
                    zzau.this.zzi(trim, dialogInterface2, i7);
                }
            });
            zzJ.setNegativeButton(new ObfuscatedString(new long[]{317190412490064804L, -1340419936894623837L}).toString(), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.ads.internal.util.zzak
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface2, int i7) {
                }
            });
            zzJ.create().show();
            return;
        }
        if (i6 == i2) {
            zzcec.zze(new ObfuscatedString(new long[]{4267624840533186655L, -4443841835864541991L, -3439746010871549401L, 745507628613991977L, -2107831719094722031L, 8959145042068748739L}).toString());
            zzcep.zza.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzai
                @Override // java.lang.Runnable
                public final void run() {
                    zzau.this.zzl();
                }
            });
            return;
        }
        if (i6 == i3) {
            zzcec.zze(new ObfuscatedString(new long[]{2331421839400719846L, 6878920847832357659L, -5359619158280261306L, -4255189634265842548L, -3666397606288068992L, -7174842602601421907L}).toString());
            zzcep.zza.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzag
                @Override // java.lang.Runnable
                public final void run() {
                    zzau.this.zzk();
                }
            });
            return;
        }
        if (i6 == i4) {
            zzdzd zzdzdVar = this.zzb;
            final zzgey zzgeyVar = zzcep.zze;
            zzgey zzgeyVar2 = zzcep.zza;
            if (zzdzdVar.zzp()) {
                zzgeyVar.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzat
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzau.this.zze();
                    }
                });
                return;
            } else {
                zzgeyVar2.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzaf
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzau.this.zzd(zzgeyVar);
                    }
                });
                return;
            }
        }
        if (i6 == i5) {
            zzdzd zzdzdVar2 = this.zzb;
            final zzgey zzgeyVar3 = zzcep.zze;
            zzgey zzgeyVar4 = zzcep.zza;
            if (zzdzdVar2.zzp()) {
                zzgeyVar3.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzae
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzau.this.zza();
                    }
                });
            } else {
                zzgeyVar4.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzal
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzau.this.zzc(zzgeyVar3);
                    }
                });
            }
        }
    }

    public final /* synthetic */ void zzk() {
        zzay zzs = com.google.android.gms.ads.internal.zzt.zzs();
        String str = this.zzd;
        String str2 = this.zze;
        String str3 = this.zzf;
        boolean zzm = zzs.zzm();
        Context context = this.zza;
        zzs.zzh(zzs.zzj(context, str, str2));
        if (zzs.zzm()) {
            if (!zzm && !TextUtils.isEmpty(str3)) {
                zzs.zze(context, str2, str3, str);
            }
            zzcec.zze(new ObfuscatedString(new long[]{-7102570806146805830L, -1560638724874850796L, 605000062805740846L, -147821865218345902L, 8375901939935106422L, -8275969095746160865L}).toString());
            zzs.zzi(context, new ObfuscatedString(new long[]{2693305445131930307L, 2435085744145049213L, 5950576042242999133L, -5298886724808248702L, -3174217277218003380L, -7603276817116709823L, 7596022146857774829L, 6137952064716414367L}).toString(), false, true);
            return;
        }
        zzs.zzd(context, str, str2);
    }

    public final /* synthetic */ void zzl() {
        zzay zzs = com.google.android.gms.ads.internal.zzt.zzs();
        Context context = this.zza;
        String str = this.zzd;
        String str2 = this.zze;
        if (!zzs.zzk(context, str, str2)) {
            zzs.zzi(context, new ObfuscatedString(new long[]{4940695673978141508L, 7585999079266549464L, -1392811533666671551L, 3949511600789845106L, -7962629004172989446L, -8246159204718084167L, 8834137218948740999L, -6207642431459405806L, -870324273180370895L, 4132888049850970909L, 3720106202925611106L}).toString(), true, true);
            return;
        }
        if (new ObfuscatedString(new long[]{1762908565315070085L, -8230711579786077402L}).toString().equals(zzs.zza)) {
            zzcec.zze(new ObfuscatedString(new long[]{7539692165747910418L, 6229962922023688288L, 4096743986169640546L, -790941656559297524L, 3026605726125980052L, 9192316768749886247L}).toString());
            zzs.zzi(context, new ObfuscatedString(new long[]{-4865674056471346370L, -7595626008372578798L, -3350566922923668819L, -1884103196534896415L, -3123438793275396656L, 2289416482992110634L, 3992071105413953015L, 3917681849112602899L}).toString(), false, false);
            return;
        }
        if (new ObfuscatedString(new long[]{7789728207500372077L, 2418290139604623423L}).toString().equals(zzs.zza)) {
            zzcec.zze(new ObfuscatedString(new long[]{-3830819335006699530L, 7309874083844311737L, -2549299404987646204L, -2929819496306364703L, -8807474660123458135L, -8951414618976795364L, 2559972023959295709L}).toString());
            zzs.zzd(context, str, str2);
            return;
        }
        if (new ObfuscatedString(new long[]{-5199565634032564187L, -344857722226901349L}).toString().equals(zzs.zza)) {
            zzcec.zze(new ObfuscatedString(new long[]{2104237779016632334L, 818463019085096131L, -3558626783711289074L, -4572321489095795087L, 5069690224088620544L, -6680903898839889801L}).toString());
            zzs.zzi(context, new ObfuscatedString(new long[]{7001503147507535266L, -6745310786650377335L, 879985388325076370L, 3326724181446933774L, 552769482160087712L, 609657919703540159L, 8655361830997600107L, 8709907816904813618L}).toString(), false, true);
        }
    }

    public final void zzm(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        int historySize = motionEvent.getHistorySize();
        int pointerCount = motionEvent.getPointerCount();
        if (actionMasked == 0) {
            this.zzg = 0;
            this.zzi = new PointF(motionEvent.getX(0), motionEvent.getY(0));
            return;
        }
        int i = this.zzg;
        if (i != -1) {
            if (i == 0) {
                if (actionMasked == 5) {
                    this.zzg = 5;
                    this.zzj = new PointF(motionEvent.getX(1), motionEvent.getY(1));
                    this.zzk.postDelayed(this.zzl, ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeB)).longValue());
                    return;
                }
                return;
            }
            if (i == 5) {
                if (pointerCount == 2) {
                    if (actionMasked == 2) {
                        boolean z = false;
                        for (int i2 = 0; i2 < historySize; i2++) {
                            z |= !zzt(motionEvent.getHistoricalX(0, i2), motionEvent.getHistoricalY(0, i2), motionEvent.getHistoricalX(1, i2), motionEvent.getHistoricalY(1, i2));
                        }
                        if (zzt(motionEvent.getX(), motionEvent.getY(), motionEvent.getX(1), motionEvent.getY(1)) && !z) {
                            return;
                        }
                    } else {
                        return;
                    }
                }
                this.zzg = -1;
                this.zzk.removeCallbacks(this.zzl);
            }
        }
    }

    public final void zzn(String str) {
        this.zzd = str;
    }

    public final void zzo(String str) {
        this.zze = str;
    }

    public final void zzp(String str) {
        this.zzc = str;
    }

    public final void zzq(String str) {
        this.zzf = str;
    }

    public final void zzr() {
        try {
            if (!(this.zza instanceof Activity)) {
                zzcec.zzi(new ObfuscatedString(new long[]{-767712554300469908L, -5559117511631656581L, -9151700769203520046L, -1317016412311650090L, -3971628095288239493L, -7948979023040307366L, -6606276667225085861L}).toString());
                return;
            }
            boolean isEmpty = TextUtils.isEmpty(com.google.android.gms.ads.internal.zzt.zzs().zzb());
            String obfuscatedString = new ObfuscatedString(new long[]{1338091772254333486L, 163787867482625817L, -2765886875720549787L, -4836867605051165552L, 7161460096569428328L}).toString();
            String obfuscatedString2 = new ObfuscatedString(new long[]{-5967348683408001165L, -4701101656372024865L, 5282205904103365330L}).toString();
            if (true == isEmpty) {
                obfuscatedString = obfuscatedString2;
            }
            boolean zzm = com.google.android.gms.ads.internal.zzt.zzs().zzm();
            String obfuscatedString3 = new ObfuscatedString(new long[]{-2258352465867250019L, 793315182215798409L, -4776857425965599717L, -3108244274793386925L, -1065624445317959297L}).toString();
            String obfuscatedString4 = new ObfuscatedString(new long[]{-8252893496905122357L, -4696773556995513179L, -4897390409778237369L}).toString();
            if (true != zzm) {
                obfuscatedString3 = obfuscatedString4;
            }
            ArrayList arrayList = new ArrayList();
            final int zzu = zzu(arrayList, new ObfuscatedString(new long[]{-1569113346919749084L, -8381174563537382121L, 1642068383906221914L}).toString(), true);
            final int zzu2 = zzu(arrayList, obfuscatedString, true);
            final int zzu3 = zzu(arrayList, obfuscatedString3, true);
            boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjc)).booleanValue();
            final int zzu4 = zzu(arrayList, new ObfuscatedString(new long[]{-5394777006602534982L, -4495425550939681956L, 4561442067811940234L, 7613337334713749077L}).toString(), booleanValue);
            final int zzu5 = zzu(arrayList, new ObfuscatedString(new long[]{2435137198594380028L, -2897271493461173322L, -8734676436967253227L, 7211179420843090580L}).toString(), booleanValue);
            com.google.android.gms.ads.internal.zzt.zzp();
            AlertDialog.Builder zzJ = zzt.zzJ(this.zza);
            zzJ.setTitle(new ObfuscatedString(new long[]{4816070051086519142L, -8094909717680199915L, 3119020751475303942L, 7175146412658706962L}).toString()).setItems((CharSequence[]) arrayList.toArray(new String[0]), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.ads.internal.util.zzao
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    zzau.this.zzj(zzu, zzu2, zzu3, zzu4, zzu5, dialogInterface, i);
                }
            });
            zzJ.create().show();
        } catch (WindowManager.BadTokenException e) {
            zze.zzb(new ObfuscatedString(new long[]{-3019763861265704630L}).toString(), e);
        }
    }

    public zzau(Context context, String str) {
        this(context);
        this.zzc = str;
    }
}
