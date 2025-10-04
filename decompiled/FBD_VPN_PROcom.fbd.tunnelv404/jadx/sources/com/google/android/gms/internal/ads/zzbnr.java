package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.NotificationManagerCompat;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzbnr implements zzbng {

    @Nullable
    private final com.google.android.gms.ads.internal.zzb zza;

    @Nullable
    private final zzdwf zzb;

    @Nullable
    private final zzflw zzc;

    @Nullable
    private final zzbvq zze;

    @Nullable
    private final zzehh zzf;

    @Nullable
    private final zzcse zzg;
    private com.google.android.gms.ads.internal.overlay.zzy zzh = null;
    private final zzgey zzi = zzcep.zzf;
    private final zzceh zzd = new zzceh(null);

    public zzbnr(com.google.android.gms.ads.internal.zzb zzbVar, zzbvq zzbvqVar, zzehh zzehhVar, zzdwf zzdwfVar, zzflw zzflwVar, zzcse zzcseVar) {
        this.zza = zzbVar;
        this.zze = zzbvqVar;
        this.zzf = zzehhVar;
        this.zzb = zzdwfVar;
        this.zzc = zzflwVar;
        this.zzg = zzcseVar;
    }

    public static int zzb(Map map) {
        String str = (String) map.get(new ObfuscatedString(new long[]{5622296070524465162L, -2161101258975759095L}).toString());
        if (str != null) {
            if (new ObfuscatedString(new long[]{-4821311984706755775L, -444373456754110596L}).toString().equalsIgnoreCase(str)) {
                return 7;
            }
            if (new ObfuscatedString(new long[]{1365512014519179669L, 6061644058803526443L}).toString().equalsIgnoreCase(str)) {
                return 6;
            }
            if (new ObfuscatedString(new long[]{2116503208742000582L, 4928337543692899360L}).toString().equalsIgnoreCase(str)) {
                return 14;
            }
            return -1;
        }
        return -1;
    }

    @VisibleForTesting
    public static Uri zzc(Context context, zzavi zzaviVar, Uri uri, View view, @Nullable Activity activity, @Nullable zzfhl zzfhlVar) {
        if (zzaviVar == null) {
            return uri;
        }
        try {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzlr)).booleanValue() && zzfhlVar != null) {
                if (zzaviVar.zze(uri)) {
                    uri = zzfhlVar.zza(uri, context, view, activity);
                }
            } else if (zzaviVar.zze(uri)) {
                uri = zzaviVar.zza(uri, context, view, activity);
            }
        } catch (zzavj unused) {
        } catch (Exception e) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-5106640368587090235L, 3474189216638044325L, -2011098587596521676L, -266209061246724150L, 3065377511077912723L, -7933031304111714616L, 4851007659120262178L}).toString());
        }
        return uri;
    }

    @VisibleForTesting
    public static Uri zzd(Uri uri) {
        try {
            if (uri.getQueryParameter(new ObfuscatedString(new long[]{525352038491303484L, -1689847288934823971L}).toString()) != null) {
                return uri.buildUpon().appendQueryParameter(new ObfuscatedString(new long[]{5376539373599088868L, 1367615009029316513L, -8294843012333512733L}).toString(), String.valueOf(SystemClock.uptimeMillis())).build();
            }
        } catch (UnsupportedOperationException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-1342011536285255688L, 1113841239165466205L, 6027359695007291881L, 7397224897997036502L, -5063589960895914065L, 7876752074899684247L, 8127364155271651750L}).toString().concat(String.valueOf(uri.toString())), e);
        }
        return uri;
    }

    public static boolean zzf(Map map) {
        return new ObfuscatedString(new long[]{1038694856396265403L, 1785159911721275922L}).toString().equals(map.get(new ObfuscatedString(new long[]{-8539851066548695425L, -857577496678942759L, 6723636863327788557L}).toString()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzh(String str, com.google.android.gms.ads.internal.client.zza zzaVar, Map map, String str2) {
        String str3;
        boolean z;
        boolean z2;
        HashMap hashMap;
        boolean z3;
        String str4;
        boolean z4;
        zzcjk zzcjkVar = (zzcjk) zzaVar;
        zzfgm zzD = zzcjkVar.zzD();
        zzfgp zzP = zzcjkVar.zzP();
        boolean z5 = true;
        boolean z6 = false;
        String obfuscatedString = new ObfuscatedString(new long[]{-6367029918535854502L}).toString();
        if (zzD != null && zzP != null) {
            String str5 = zzP.zzb;
            z = zzD.zzaj;
            str3 = str5;
        } else {
            str3 = obfuscatedString;
            z = false;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkk)).booleanValue() && map.containsKey(new ObfuscatedString(new long[]{-6450341477552404703L, 5860676198246616893L}).toString()) && ((String) map.get(new ObfuscatedString(new long[]{6194366241249962983L, 7073527552014962374L}).toString())).equals(new ObfuscatedString(new long[]{-7514649163891674052L, -8291265416543660388L}).toString())) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (new ObfuscatedString(new long[]{133486841073895812L, -5356740312633291892L}).toString().equalsIgnoreCase(str2)) {
            if (zzcjkVar.zzaC()) {
                zzcec.zzj(new ObfuscatedString(new long[]{6108172006888657947L, 7182600940720724755L, -5098091325851917789L, 6283626752740315573L, -7401019942049783215L, 8524332620646044243L, 4615269695247713165L}).toString());
                return;
            } else {
                zzk(false);
                ((zzckq) zzaVar).zzaH(zzf(map), zzb(map), z2);
                return;
            }
        }
        if (new ObfuscatedString(new long[]{-2943817111875210019L, 1759555625012888606L}).toString().equalsIgnoreCase(str2)) {
            zzk(false);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzlm)).booleanValue() && Objects.equals(map.get(new ObfuscatedString(new long[]{7386409364203138299L, -7863549215613099721L, -3355478924792511644L, -7741011862756038363L, -3360829747029365714L}).toString()), new ObfuscatedString(new long[]{-6256108323738996447L, 7034106505467078942L}).toString())) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (str != null) {
                ((zzckq) zzaVar).zzaJ(zzf(map), zzb(map), str, z2, z4);
                return;
            } else {
                ((zzckq) zzaVar).zzaI(zzf(map), zzb(map), (String) map.get(new ObfuscatedString(new long[]{61495220043299640L, 8532434161422981981L}).toString()), (String) map.get(new ObfuscatedString(new long[]{-6430266422178366037L, 7200857901880952838L}).toString()), z2);
                return;
            }
        }
        if (new ObfuscatedString(new long[]{6543374248388518200L, 316966461270331L, 1229362873977326386L, -8436762242971497680L}).toString().equalsIgnoreCase(str2)) {
            zzcjkVar.getContext();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzew)).booleanValue()) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeA)).booleanValue()) {
                    com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{661828108695588269L, 2782932587680610973L, 2516907840833276643L, 5274347025896316935L, -6755519366697072981L}).toString());
                } else {
                    z6 = true;
                }
            }
            boolean zzg = zzbhd.zzg(zzcjkVar.getContext());
            if (z6) {
                if (!zzg) {
                    zzm(4);
                } else {
                    zzk(true);
                    if (TextUtils.isEmpty(str)) {
                        zzcec.zzj(new ObfuscatedString(new long[]{4933935977075612629L, 8076225822589580793L, 571096945946779508L, 7032862623063340990L, -3954731935082797208L, -1302110182066883684L, -3245848177830568414L}).toString());
                        zzm(7);
                        return;
                    }
                    Uri zzd = zzd(zzc(zzcjkVar.getContext(), zzcjkVar.zzI(), Uri.parse(str), zzcjkVar.zzF(), zzcjkVar.zzi(), zzcjkVar.zzQ()));
                    if (!z || this.zzf == null || !zzl(zzaVar, zzcjkVar.getContext(), zzd.toString(), str3)) {
                        this.zzh = new zzbno(this);
                        ((zzckq) zzaVar).zzaF(new com.google.android.gms.ads.internal.overlay.zzc(null, zzd.toString(), null, null, null, null, null, null, ObjectWrapper.wrap(this.zzh).asBinder(), true), z2);
                        return;
                    }
                    return;
                }
            }
            map.put(new ObfuscatedString(new long[]{-5569002213026893198L, -3302457286575942240L, -7364379809152873789L, -3879578274583573395L}).toString(), new ObfuscatedString(new long[]{8715503323584195639L, 8692632056124880633L}).toString());
            map.put(new ObfuscatedString(new long[]{5762840235845665467L, 1731393609586135268L, 4055684687439930903L, -3184898778118294760L}).toString(), new ObfuscatedString(new long[]{7811280666863603851L, -8722413551249231672L}).toString());
            zzj(zzaVar, map, z, str3, z2);
            return;
        }
        if (new ObfuscatedString(new long[]{5790637133968901938L, -5420873122221258086L}).toString().equalsIgnoreCase(str2) && new ObfuscatedString(new long[]{-2820603687915118132L, -1037519761502689616L}).toString().equalsIgnoreCase((String) map.get(new ObfuscatedString(new long[]{-2349890457514597833L, -4846976199940959677L, -5984154121244750540L}).toString()))) {
            zzj(zzaVar, map, z, str3, z2);
            return;
        }
        if (new ObfuscatedString(new long[]{-2772027273466673695L, 5111384830774795562L}).toString().equalsIgnoreCase(str2)) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzid)).booleanValue()) {
                zzk(true);
                String str6 = (String) map.get(new ObfuscatedString(new long[]{-3483366787602416396L, 4860869435347939011L}).toString());
                if (str6 == null) {
                    zzcec.zzj(new ObfuscatedString(new long[]{212859582931828745L, -577067795280256573L, -3348050499589212296L, -7392214998070743835L, -5263555239623226883L, -5217812835376573801L, -6069392483606331443L}).toString());
                    return;
                }
                if (!z || this.zzf == null || !zzl(zzaVar, zzcjkVar.getContext(), str6, str3)) {
                    PackageManager packageManager = zzcjkVar.getContext().getPackageManager();
                    if (packageManager == null) {
                        zzcec.zzj(new ObfuscatedString(new long[]{-5693040941378970378L, -3928550810507142481L, 819239774928789332L, -4871975664619207557L, -7022920832968306271L, 4344071319839601749L, -5279062429842526152L}).toString());
                        return;
                    }
                    Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(str6);
                    if (launchIntentForPackage != null) {
                        ((zzckq) zzaVar).zzaF(new com.google.android.gms.ads.internal.overlay.zzc(launchIntentForPackage, this.zzh), z2);
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        zzk(true);
        String str7 = (String) map.get(new ObfuscatedString(new long[]{4160544456022058025L, -8217086266289600890L, -5531000008935604792L}).toString());
        Intent intent = null;
        if (!TextUtils.isEmpty(str7)) {
            try {
                intent = Intent.parseUri(str7, 0);
            } catch (URISyntaxException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{-3177403300147942109L, 6722407523583147472L, -4595216023733411403L, 9169651959720856443L}).toString().concat(String.valueOf(str7)), e);
            }
        }
        Intent intent2 = intent;
        if (intent2 != null && intent2.getData() != null) {
            Uri data = intent2.getData();
            if (!Uri.EMPTY.equals(data)) {
                Uri zzd2 = zzd(zzc(zzcjkVar.getContext(), zzcjkVar.zzI(), data, zzcjkVar.zzF(), zzcjkVar.zzi(), zzcjkVar.zzQ()));
                if (!TextUtils.isEmpty(intent2.getType()) && ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzie)).booleanValue()) {
                    intent2.setDataAndType(zzd2, intent2.getType());
                } else {
                    intent2.setData(zzd2);
                }
            }
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziv)).booleanValue() || !new ObfuscatedString(new long[]{1732488945500328968L, 8853876392250853143L, 7976777812949073414L}).toString().equalsIgnoreCase(str2) || !map.containsKey(new ObfuscatedString(new long[]{-571299286881285500L, -6906397205936931341L}).toString())) {
            z5 = false;
        }
        HashMap hashMap2 = new HashMap();
        if (z5) {
            hashMap = hashMap2;
            this.zzh = new zzbnp(this, z2, zzaVar, hashMap2, map);
            z3 = false;
        } else {
            hashMap = hashMap2;
            z3 = z2;
        }
        if (intent2 != null) {
            if (z && this.zzf != null && zzl(zzaVar, zzcjkVar.getContext(), intent2.getData().toString(), str3)) {
                if (z5) {
                    HashMap hashMap3 = hashMap;
                    hashMap3.put((String) map.get(new ObfuscatedString(new long[]{-5992904581945388034L, -3705247080613552749L}).toString()), Boolean.TRUE);
                    ((zzbqa) zzaVar).zzd(new ObfuscatedString(new long[]{718758562675143740L, -1272834031219990632L, -1479541819519700395L}).toString(), hashMap3);
                    return;
                }
                return;
            }
            ((zzckq) zzaVar).zzaF(new com.google.android.gms.ads.internal.overlay.zzc(intent2, this.zzh), z3);
            return;
        }
        HashMap hashMap4 = hashMap;
        if (!TextUtils.isEmpty(str)) {
            str4 = zzd(zzc(zzcjkVar.getContext(), zzcjkVar.zzI(), Uri.parse(str), zzcjkVar.zzF(), zzcjkVar.zzi(), zzcjkVar.zzQ())).toString();
        } else {
            str4 = str;
        }
        if (z && this.zzf != null && zzl(zzaVar, zzcjkVar.getContext(), str4, str3)) {
            if (z5) {
                hashMap4.put((String) map.get(new ObfuscatedString(new long[]{-219828341740044377L, -7090141714643088678L}).toString()), Boolean.TRUE);
                ((zzbqa) zzaVar).zzd(new ObfuscatedString(new long[]{177877753582546883L, -6094828146998027815L, 6351932679708123898L}).toString(), hashMap4);
                return;
            }
            return;
        }
        ((zzckq) zzaVar).zzaF(new com.google.android.gms.ads.internal.overlay.zzc((String) map.get(new ObfuscatedString(new long[]{9213336942726307916L, 2508235803711937684L}).toString()), str4, (String) map.get(new ObfuscatedString(new long[]{8360026338888621639L, -7327870903665234172L}).toString()), (String) map.get(new ObfuscatedString(new long[]{5853248361863752015L, 3339369868343437679L}).toString()), (String) map.get(new ObfuscatedString(new long[]{-5441873398048311244L, -9038356036603453931L}).toString()), (String) map.get(new ObfuscatedString(new long[]{-1152824421074333746L, 1354462619127099108L}).toString()), (String) map.get(new ObfuscatedString(new long[]{-4048580504935168069L, 379347312762493109L}).toString()), this.zzh), z3);
    }

    private final void zzi(Context context, String str, String str2) {
        this.zzf.zzc(str);
        zzdwf zzdwfVar = this.zzb;
        if (zzdwfVar != null) {
            zzehs.zzc(context, zzdwfVar, this.zzc, this.zzf, str, new ObfuscatedString(new long[]{6369016080913451232L, -2287785553256483102L, -6852887704284565359L}).toString(), zzgad.zze(new ObfuscatedString(new long[]{-1041135690406040712L, -5827067410834229685L, 1136860089246594450L, -7519068084420201092L}).toString(), str2));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x01cc, code lost:
    
        r21 = r6;
        r11 = r16;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:5:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00fd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void zzj(com.google.android.gms.ads.internal.client.zza zzaVar, Map map, boolean z, String str, boolean z2) {
        boolean z3;
        Intent intent;
        ResolveInfo zzd;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        ResolveInfo zzc;
        com.google.android.gms.ads.internal.client.zza zzaVar2;
        zzk(true);
        zzcjk zzcjkVar = (zzcjk) zzaVar;
        Context context = zzcjkVar.getContext();
        zzavi zzI = zzcjkVar.zzI();
        View zzF = zzcjkVar.zzF();
        zzfhl zzQ = zzcjkVar.zzQ();
        ActivityManager activityManager = (ActivityManager) context.getSystemService(new ObfuscatedString(new long[]{9148987018105519140L, 6116203664513530120L}).toString());
        String str2 = (String) map.get(new ObfuscatedString(new long[]{-5746093377363017085L, -382328726536738396L}).toString());
        Intent intent2 = null;
        Uri build = null;
        try {
            if (!TextUtils.isEmpty(str2)) {
                Uri zzd2 = zzd(zzc(context, zzI, Uri.parse(str2), zzF, null, zzQ));
                boolean parseBoolean = Boolean.parseBoolean((String) map.get(new ObfuscatedString(new long[]{-643229334510808958L, -5179588906687005988L, 2112500082505120990L, 5764165695525351636L}).toString()));
                boolean parseBoolean2 = Boolean.parseBoolean((String) map.get(new ObfuscatedString(new long[]{-4903151649343390424L, 6771616907573700181L, -1922188271231411172L, -786327041864745735L}).toString()));
                if (!Boolean.parseBoolean((String) map.get(new ObfuscatedString(new long[]{8754712584671113668L, 7325067025520900541L, -6221860575380744073L}).toString()))) {
                    if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeu)).booleanValue()) {
                        z3 = false;
                        if (!new ObfuscatedString(new long[]{-4400942677338097805L, -5774249969542203061L}).toString().equalsIgnoreCase(zzd2.getScheme())) {
                            build = zzd2.buildUpon().scheme(new ObfuscatedString(new long[]{5002378971665455125L, -5813439966917582612L}).toString()).build();
                        } else if (new ObfuscatedString(new long[]{-5061816381862170317L, 1990083005533228093L}).toString().equalsIgnoreCase(zzd2.getScheme())) {
                            build = zzd2.buildUpon().scheme(new ObfuscatedString(new long[]{1162046805313036052L, -1822864344137478415L}).toString()).build();
                        }
                        Uri uri = build;
                        ArrayList arrayList = new ArrayList();
                        Intent zza = zzbnq.zza(zzd2, context, zzI, zzF, zzQ);
                        Intent zza2 = zzbnq.zza(uri, context, zzI, zzF, zzQ);
                        if (z3) {
                            com.google.android.gms.ads.internal.zzt.zzp();
                            com.google.android.gms.ads.internal.util.zzt.zzo(context, zza);
                            com.google.android.gms.ads.internal.zzt.zzp();
                            com.google.android.gms.ads.internal.util.zzt.zzo(context, zza2);
                        }
                        intent = zza;
                        ArrayList arrayList2 = arrayList;
                        zzd = zzbnq.zzd(zza, arrayList, context, zzI, zzF, zzQ);
                        if (zzd == null) {
                            intent2 = zzbnq.zzb(intent, zzd, context, zzI, zzF, zzQ);
                        } else {
                            if (zza2 != null && (zzc = zzbnq.zzc(zza2, context, zzI, zzF, zzQ)) != null) {
                                Intent zzb = zzbnq.zzb(intent, zzc, context, zzI, zzF, zzQ);
                                if (zzbnq.zzc(zzb, context, zzI, zzF, zzQ) != null) {
                                    intent = zzb;
                                    if (!z && this.zzf != null && intent != null) {
                                        zzaVar2 = zzaVar;
                                        if (zzl(zzaVar2, zzcjkVar.getContext(), intent.getData().toString(), str)) {
                                            return;
                                        }
                                    } else {
                                        zzaVar2 = zzaVar;
                                    }
                                    ((zzckq) zzaVar2).zzaF(new com.google.android.gms.ads.internal.overlay.zzc(intent, this.zzh), z2);
                                    return;
                                }
                            }
                            if (!arrayList2.isEmpty()) {
                                if (parseBoolean2 && activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null) {
                                    int size = arrayList2.size();
                                    int i = 0;
                                    loop0: while (i < size) {
                                        ArrayList arrayList3 = arrayList2;
                                        ResolveInfo resolveInfo = (ResolveInfo) arrayList3.get(i);
                                        Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
                                        do {
                                            int i2 = i + 1;
                                            if (it.hasNext()) {
                                            }
                                        } while (!it.next().processName.equals(resolveInfo.activityInfo.packageName));
                                        intent2 = zzbnq.zzb(intent, resolveInfo, context, zzI, zzF, zzQ);
                                        break loop0;
                                    }
                                }
                                ArrayList arrayList4 = arrayList2;
                                if (parseBoolean) {
                                    intent2 = zzbnq.zzb(intent, (ResolveInfo) arrayList4.get(0), context, zzI, zzF, zzQ);
                                }
                            }
                            if (!z) {
                            }
                            zzaVar2 = zzaVar;
                            ((zzckq) zzaVar2).zzaF(new com.google.android.gms.ads.internal.overlay.zzc(intent, this.zzh), z2);
                            return;
                        }
                    }
                }
                z3 = true;
                if (!new ObfuscatedString(new long[]{-4400942677338097805L, -5774249969542203061L}).toString().equalsIgnoreCase(zzd2.getScheme())) {
                }
                Uri uri2 = build;
                ArrayList arrayList5 = new ArrayList();
                Intent zza3 = zzbnq.zza(zzd2, context, zzI, zzF, zzQ);
                Intent zza22 = zzbnq.zza(uri2, context, zzI, zzF, zzQ);
                if (z3) {
                }
                intent = zza3;
                ArrayList arrayList22 = arrayList5;
                zzd = zzbnq.zzd(zza3, arrayList5, context, zzI, zzF, zzQ);
                if (zzd == null) {
                }
            }
            ((zzckq) zzaVar2).zzaF(new com.google.android.gms.ads.internal.overlay.zzc(intent, this.zzh), z2);
            return;
        } catch (ActivityNotFoundException e) {
            zzcec.zzj(e.getMessage());
            return;
        }
        intent = intent2;
        if (!z) {
        }
        zzaVar2 = zzaVar;
    }

    private final void zzk(boolean z) {
        zzbvq zzbvqVar = this.zze;
        if (zzbvqVar != null) {
            zzbvqVar.zza(z);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00ac, code lost:
    
        if (r5 != false) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final boolean zzl(com.google.android.gms.ads.internal.client.zza zzaVar, Context context, String str, String str2) {
        boolean z;
        boolean booleanValue;
        zzdwf zzdwfVar = this.zzb;
        if (zzdwfVar != null) {
            zzehs.zzc(context, zzdwfVar, this.zzc, this.zzf, str2, new ObfuscatedString(new long[]{-3602677144573619100L, 4088826359685774195L, 3730951857041880009L}).toString(), new HashMap());
        }
        if (com.google.android.gms.ads.internal.zzt.zzo().zzz(context)) {
            this.zzf.zzh(this.zzd, str2);
            return false;
        }
        com.google.android.gms.ads.internal.zzt.zzp();
        com.google.android.gms.ads.internal.util.zzbt zzy = com.google.android.gms.ads.internal.util.zzt.zzy(context);
        com.google.android.gms.ads.internal.zzt.zzp();
        boolean areNotificationsEnabled = NotificationManagerCompat.from(context).areNotificationsEnabled();
        boolean zzh = com.google.android.gms.ads.internal.zzt.zzq().zzh(context, new ObfuscatedString(new long[]{-8011752507976162849L, -7946318814718091731L, 4442636601882400894L, -6144091200334917001L, -5599991464026466669L}).toString());
        zzcjk zzcjkVar = (zzcjk) zzaVar;
        if (zzcjkVar.zzO().zzi() && zzcjkVar.zzi() == null) {
            z = true;
        } else {
            z = false;
        }
        if (!areNotificationsEnabled) {
            com.google.android.gms.ads.internal.zzt.zzp();
            if (!NotificationManagerCompat.from(context).areNotificationsEnabled()) {
                if (Build.VERSION.SDK_INT < 33) {
                    booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzio)).booleanValue();
                } else {
                    booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzin)).booleanValue();
                }
            }
            zzi(context, str2, new ObfuscatedString(new long[]{-51468208336470968L, -3217760746901665436L, 6640854657761909974L, -8561614179355325765L}).toString());
            return false;
        }
        if (zzh) {
            zzi(context, str2, new ObfuscatedString(new long[]{1818997811080112466L, 2558024204667584992L, 408717955739673274L, 430641050688103688L, -3728894141495320543L}).toString());
            return false;
        }
        if (zzy == null) {
            zzi(context, str2, new ObfuscatedString(new long[]{-4643404536624799633L, 1619967207407211883L, -2763680113005729277L, -4766972663529575191L}).toString());
            return false;
        }
        if (z) {
            zzi(context, str2, new ObfuscatedString(new long[]{-2802994918587452430L, 7050189510886665258L, -6307490993466683198L}).toString());
            return false;
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzil)).booleanValue()) {
            zzi(context, str2, new ObfuscatedString(new long[]{4157480118766430411L, 384567065313622470L, -2427275945360969961L, 1222736599726406354L, -87201344412664793L}).toString());
            return false;
        }
        if (zzcjkVar.zzL() != null && zzcjkVar.zzi() != null) {
            zzeht zze = zzehu.zze();
            zze.zza(zzcjkVar.zzi());
            zze.zzb(null);
            zze.zzc(str2);
            zze.zzd(str);
            try {
                zzcjkVar.zzL().zzf(zze.zze());
            } catch (Exception e) {
                zzi(context, str2, e.getMessage());
                return false;
            }
        } else {
            ((zzckq) zzaVar).zzaG(str2, str, 14);
        }
        zzaVar.onAdClicked();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzm(int i) {
        if (this.zzb == null) {
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziz)).booleanValue()) {
            zzflw zzflwVar = this.zzc;
            String zza = zzbhc.zza(i);
            zzflv zzb = zzflv.zzb(new ObfuscatedString(new long[]{-6900068732601782108L, -3172432699798213907L, 193992729161831747L}).toString());
            zzb.zza(new ObfuscatedString(new long[]{-5676522740278319914L, -6622090083831366869L, 1776472837232000971L}).toString(), zza);
            zzflwVar.zzb(zzb);
            return;
        }
        zzdwe zza2 = this.zzb.zza();
        zza2.zzb(new ObfuscatedString(new long[]{1578232260154217208L, 3017073729577203611L}).toString(), new ObfuscatedString(new long[]{-3386054877368244858L, -1751970122382671037L, 8606526755756857246L}).toString());
        zza2.zzb(new ObfuscatedString(new long[]{2334075828188119265L, 6984368151284356028L, 7650277024420778752L}).toString(), zzbhc.zza(i));
        zza2.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzbng
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        ListenableFuture zzh;
        com.google.android.gms.ads.internal.client.zza zzaVar = (com.google.android.gms.ads.internal.client.zza) obj;
        String zzc = zzccj.zzc((String) map.get(new ObfuscatedString(new long[]{6584544664681122419L, -7083071558773144197L}).toString()), ((zzcjk) zzaVar).getContext(), true);
        String str = (String) map.get(new ObfuscatedString(new long[]{-981407084064412996L, 2756218871275568289L}).toString());
        if (str == null) {
            zzcec.zzj(new ObfuscatedString(new long[]{6131334945006523128L, 8866935067539789397L, -8331247378120904459L, 8279406820485157966L, -40361601620110612L, -3042749878304058658L}).toString());
            return;
        }
        com.google.android.gms.ads.internal.zzb zzbVar = this.zza;
        if (zzbVar != null && !zzbVar.zzc()) {
            zzbVar.zzb(zzc);
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjL)).booleanValue() && this.zzg != null && zzcse.zzh(zzc)) {
            zzh = this.zzg.zzb(zzc, com.google.android.gms.ads.internal.client.zzay.zze());
        } else {
            zzh = zzgen.zzh(zzc);
        }
        zzgen.zzr(zzh, new zzbnn(this, zzaVar, map, str), this.zzi);
    }
}
