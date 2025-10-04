package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzevn implements zzexq {
    private final zzgey zza;
    private final zzfhh zzb;

    @Nullable
    private final PackageInfo zzc;
    private final com.google.android.gms.ads.internal.util.zzg zzd;

    public zzevn(zzgey zzgeyVar, zzfhh zzfhhVar, @Nullable PackageInfo packageInfo, com.google.android.gms.ads.internal.util.zzg zzgVar) {
        this.zza = zzgeyVar;
        this.zzb = zzfhhVar;
        this.zzc = packageInfo;
        this.zzd = zzgVar;
    }

    public static /* synthetic */ zzevo zzc(final zzevn zzevnVar) {
        final ArrayList arrayList = zzevnVar.zzb.zzg;
        if (arrayList == null) {
            return new zzevo() { // from class: com.google.android.gms.internal.ads.zzevk
                @Override // com.google.android.gms.internal.ads.zzexp
                public final void zzj(Object obj) {
                }
            };
        }
        if (arrayList.isEmpty()) {
            return new zzevo() { // from class: com.google.android.gms.internal.ads.zzevl
                @Override // com.google.android.gms.internal.ads.zzexp
                public final void zzj(Object obj) {
                    ((Bundle) obj).putInt(new ObfuscatedString(new long[]{-144565953977280387L, 631051535262855677L, -214619983079057721L}).toString(), 0);
                }
            };
        }
        return new zzevo() { // from class: com.google.android.gms.internal.ads.zzevm
            @Override // com.google.android.gms.internal.ads.zzexp
            public final void zzj(Object obj) {
                zzevn.this.zzd(arrayList, (Bundle) obj);
            }
        };
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final int zza() {
        return 26;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzevj
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzevn.zzc(zzevn.this);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x02c7  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:79:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0192  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final /* synthetic */ void zzd(ArrayList arrayList, Bundle bundle) {
        ObfuscatedString obfuscatedString;
        String obfuscatedString2;
        zzbjb zzbjbVar;
        PackageInfo packageInfo;
        int i;
        JSONObject zzp;
        String str;
        int i2;
        zzbpp zzbppVar;
        ObfuscatedString obfuscatedString3;
        String obfuscatedString4;
        ObfuscatedString obfuscatedString5;
        JSONArray optJSONArray;
        ObfuscatedString obfuscatedString6;
        String obfuscatedString7;
        bundle.putInt(new ObfuscatedString(new long[]{3784575809986859568L, -2888323655261096644L, 5509161014867063373L}).toString(), 3);
        bundle.putStringArrayList(new ObfuscatedString(new long[]{-2634447503651389831L, -5064749790024696375L, 3735430926001715506L}).toString(), arrayList);
        bundle.putStringArrayList(new ObfuscatedString(new long[]{-1291930849472402746L, -6268053257715172618L, 6164123575590085268L, -8347657807390868608L}).toString(), this.zzb.zzh);
        if (this.zzb.zzi.zza > 3) {
            bundle.putBoolean(new ObfuscatedString(new long[]{-3480667858360438543L, 710546427322371162L, 3132557896344694309L, -3814591265255431124L, -6732561466922256183L}).toString(), true);
            int i3 = this.zzb.zzi.zzh;
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 != 3) {
                        if (i3 != 4) {
                            obfuscatedString7 = new ObfuscatedString(new long[]{-1655670755798607693L, 8889781767700959619L}).toString();
                            if (!new ObfuscatedString(new long[]{-2071741318750138051L, 5023771378599699875L}).toString().equals(obfuscatedString7)) {
                                bundle.putString(new ObfuscatedString(new long[]{3951168057306817602L, 670510759427986024L, -6690536259403358383L, 1796469278463744545L}).toString(), obfuscatedString7);
                            }
                        } else {
                            obfuscatedString6 = new ObfuscatedString(new long[]{-1777859134264594266L, 39862525818487937L});
                        }
                    } else {
                        obfuscatedString6 = new ObfuscatedString(new long[]{5230202921190538706L, -7048815738865565911L});
                    }
                } else {
                    obfuscatedString6 = new ObfuscatedString(new long[]{480801850249403530L, 5667999340578517398L, -1240224343636887986L});
                }
            } else {
                obfuscatedString6 = new ObfuscatedString(new long[]{8265056640132838320L, -4259611151907154801L});
            }
            obfuscatedString7 = obfuscatedString6.toString();
            if (!new ObfuscatedString(new long[]{-2071741318750138051L, 5023771378599699875L}).toString().equals(obfuscatedString7)) {
            }
        }
        int i4 = this.zzb.zzi.zzc;
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    obfuscatedString2 = new ObfuscatedString(new long[]{-479553294886126038L, -3896801506167539780L}).toString();
                    if (!new ObfuscatedString(new long[]{-8440902262099109334L, -9118294929503508988L}).toString().equals(obfuscatedString2)) {
                        bundle.putString(new ObfuscatedString(new long[]{1014428128760441160L, 2018514365522651170L, -1164255219872119998L, -1077104936626881100L}).toString(), obfuscatedString2);
                    }
                    bundle.putBoolean(new ObfuscatedString(new long[]{-6921594787671186457L, 8302500139617721370L, 8039740948099574357L, -1391859790419654168L}).toString(), this.zzb.zzi.zzd);
                    bundle.putBoolean(new ObfuscatedString(new long[]{-6686565734674199803L, 4281013072552063958L, 745441440621750307L}).toString(), this.zzb.zzi.zzg);
                    zzbjbVar = this.zzb.zzi;
                    if (zzbjbVar.zzi != 0) {
                        bundle.putBoolean(new ObfuscatedString(new long[]{-6389084501499977072L, -479801014456366245L}).toString(), zzbjbVar.zzj);
                        bundle.putInt(new ObfuscatedString(new long[]{4171501220996888342L, -5999462890867997511L}).toString(), this.zzb.zzi.zzi);
                    }
                    packageInfo = this.zzc;
                    if (packageInfo != null) {
                        i = 0;
                    } else {
                        i = packageInfo.versionCode;
                    }
                    if (i > this.zzd.zza()) {
                        this.zzd.zzs();
                        this.zzd.zzv(i);
                    }
                    zzp = this.zzd.zzp();
                    str = null;
                    if (zzp != null && (optJSONArray = zzp.optJSONArray(this.zzb.zzf)) != null) {
                        str = optJSONArray.toString();
                    }
                    if (!TextUtils.isEmpty(str)) {
                        bundle.putString(new ObfuscatedString(new long[]{-2291998674648058656L, -5773891825058789942L, 9204654224346165695L, 6972610079435128001L}).toString(), str);
                    }
                    i2 = this.zzb.zzk;
                    if (i2 > 1) {
                        bundle.putInt(new ObfuscatedString(new long[]{4687456293335798528L, -1699173756133617326L, -2626686480659270062L}).toString(), i2);
                    }
                    zzbppVar = this.zzb.zzb;
                    if (zzbppVar != null) {
                        if (TextUtils.isEmpty(zzbppVar.zzc)) {
                            if (zzbppVar.zza >= 2) {
                                int i5 = zzbppVar.zzd;
                                if (i5 != 2) {
                                    if (i5 != 3) {
                                        obfuscatedString4 = new ObfuscatedString(new long[]{-928269970753650547L, 2204728104436008378L}).toString();
                                    } else {
                                        obfuscatedString5 = new ObfuscatedString(new long[]{-6474057952071207830L, 6238511624475212575L});
                                    }
                                } else {
                                    obfuscatedString5 = new ObfuscatedString(new long[]{7014731100255841997L, -7093742605637904170L});
                                }
                                obfuscatedString4 = obfuscatedString5.toString();
                            } else {
                                int i6 = zzbppVar.zzb;
                                if (i6 != 1) {
                                    if (i6 != 2) {
                                        zzcec.zzg(new ObfuscatedString(new long[]{360698290277350094L, 796828262844978835L, 1984649182796671985L, -1099690656180563496L, 5660257493557715045L}).toString() + i6 + new ObfuscatedString(new long[]{6946209806434069355L, 5160830914106130899L, -3769610845961710494L}).toString());
                                        obfuscatedString3 = new ObfuscatedString(new long[]{551934265947711748L, -6050964508897854405L});
                                    } else {
                                        obfuscatedString3 = new ObfuscatedString(new long[]{853523488403305307L, 1125310276219026872L});
                                    }
                                } else {
                                    obfuscatedString3 = new ObfuscatedString(new long[]{-5756793162260093656L, 2813899840607270101L});
                                }
                                obfuscatedString4 = obfuscatedString3.toString();
                            }
                            bundle.putString(new ObfuscatedString(new long[]{8105759688400051810L, 8367289269556787749L}).toString(), obfuscatedString4);
                        } else {
                            bundle.putString(new ObfuscatedString(new long[]{2807855590004863399L, 6488104729576638593L}).toString(), zzbppVar.zzc);
                        }
                        bundle.putBoolean(new ObfuscatedString(new long[]{-4731022608070218781L, 551757569909004537L}).toString(), true);
                    }
                    if (this.zzb.zza() != null) {
                        bundle.putBoolean(new ObfuscatedString(new long[]{4790312615264982636L, 1233932595395019869L, 1856417773006426247L, 2428232540874620933L, 812873663896242626L}).toString(), true);
                    }
                    if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzlj)).booleanValue()) {
                        if (this.zzb.zzi.zzf != null) {
                            Bundle bundle2 = new Bundle();
                            bundle2.putBoolean(new ObfuscatedString(new long[]{-8258573374580105662L, -6905392071160858499L, 1949836199900917084L}).toString(), this.zzb.zzi.zzf.zza);
                            bundle2.putBoolean(new ObfuscatedString(new long[]{-3530217268072400410L, -1405581763878913382L, 7204937932940285208L, 2723013137865960441L}).toString(), this.zzb.zzi.zzf.zzc);
                            bundle2.putBoolean(new ObfuscatedString(new long[]{-1943493744743549011L, -1417169090507203812L, 1731234908548164979L, 4210863016051026823L}).toString(), this.zzb.zzi.zzf.zzb);
                            bundle.putBundle(new ObfuscatedString(new long[]{-1655690830763561214L, 4234831061222000001L}).toString(), bundle2);
                        }
                        bundle.putBoolean(new ObfuscatedString(new long[]{-6910593446965724088L, -8581138401381839589L, 228325204807614471L, 5127907891622733755L}).toString(), this.zzb.zzi.zzb);
                        bundle.putInt(new ObfuscatedString(new long[]{8227035883236727065L, -2704851371421431201L, -6826838821472613008L, -5293541850565874186L, -2931669030894823366L}).toString(), this.zzb.zzi.zze);
                        return;
                    }
                    return;
                }
                obfuscatedString = new ObfuscatedString(new long[]{7966768070107616642L, 5386274394677289911L, 8618233762543528611L});
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{7730686824223293965L, -2698692907691506056L});
            }
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{-5350194382454314835L, 2922204820197936070L});
        }
        obfuscatedString2 = obfuscatedString.toString();
        if (!new ObfuscatedString(new long[]{-8440902262099109334L, -9118294929503508988L}).toString().equals(obfuscatedString2)) {
        }
        bundle.putBoolean(new ObfuscatedString(new long[]{-6921594787671186457L, 8302500139617721370L, 8039740948099574357L, -1391859790419654168L}).toString(), this.zzb.zzi.zzd);
        bundle.putBoolean(new ObfuscatedString(new long[]{-6686565734674199803L, 4281013072552063958L, 745441440621750307L}).toString(), this.zzb.zzi.zzg);
        zzbjbVar = this.zzb.zzi;
        if (zzbjbVar.zzi != 0) {
        }
        packageInfo = this.zzc;
        if (packageInfo != null) {
        }
        if (i > this.zzd.zza()) {
        }
        zzp = this.zzd.zzp();
        str = null;
        if (zzp != null) {
            str = optJSONArray.toString();
        }
        if (!TextUtils.isEmpty(str)) {
        }
        i2 = this.zzb.zzk;
        if (i2 > 1) {
        }
        zzbppVar = this.zzb.zzb;
        if (zzbppVar != null) {
        }
        if (this.zzb.zza() != null) {
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzlj)).booleanValue()) {
        }
    }
}
