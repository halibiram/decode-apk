package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzchv implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ String zzd;
    final /* synthetic */ zzchw zze;

    public zzchv(zzchw zzchwVar, String str, String str2, String str3, String str4) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = str4;
        this.zze = zzchwVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b7, code lost:
    
        if (r2.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-7964337824715551276L, -7114708759669403942L}).toString()) != false) goto L45;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        ObfuscatedString obfuscatedString;
        String obfuscatedString2;
        char c = 4;
        HashMap hashMap = new HashMap();
        hashMap.put(new ObfuscatedString(new long[]{904549666252620904L, -7796288232979913248L}).toString(), new ObfuscatedString(new long[]{-2146350165256164116L, 5278224592693605195L, 7658193178170148773L}).toString());
        hashMap.put(new ObfuscatedString(new long[]{127945718056734464L, 1069252320769548725L}).toString(), this.zza);
        if (!TextUtils.isEmpty(this.zzb)) {
            hashMap.put(new ObfuscatedString(new long[]{-6890598569251360830L, -6054156329897258975L, -1239440113590868732L}).toString(), this.zzb);
        }
        String str = this.zzc;
        switch (str.hashCode()) {
            case -1947652542:
                if (str.equals(new ObfuscatedString(new long[]{-8232742701174770301L, 682572722691281901L, 6825290724125129656L}).toString())) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -1396664534:
                if (str.equals(new ObfuscatedString(new long[]{-3151687844809718330L, -1164346986435301362L}).toString())) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case -1347010958:
                if (str.equals(new ObfuscatedString(new long[]{-483393589286136L, 5766825103290688622L, -1109003293276543413L}).toString())) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -918817863:
                if (str.equals(new ObfuscatedString(new long[]{-1339303287890929147L, -1338806738045853917L, -80787942197315826L}).toString())) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case -659376217:
                if (str.equals(new ObfuscatedString(new long[]{-6406424533717643316L, -5171562309523046139L, 7958529743556807706L, -4167663331360377713L}).toString())) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -642208130:
                if (str.equals(new ObfuscatedString(new long[]{7102947185484356054L, 1679866070843721048L, -7021657062299501977L}).toString())) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -354048396:
                if (str.equals(new ObfuscatedString(new long[]{4435535474092355901L, -404963545362836547L, -9118699827053766251L}).toString())) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case -32082395:
                if (str.equals(new ObfuscatedString(new long[]{-7465491749172136278L, 591612423506007998L, 5317502820750858705L}).toString())) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 3387234:
                break;
            case 96784904:
                if (str.equals(new ObfuscatedString(new long[]{8747316757704712982L, 4382579298242533657L}).toString())) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 580119100:
                if (str.equals(new ObfuscatedString(new long[]{-3243882146975306146L, 5195967885577904001L, 6926659001003284170L}).toString())) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 725497484:
                if (str.equals(new ObfuscatedString(new long[]{8520140969616754602L, 8851351471406213038L, 2766956646945026803L}).toString())) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                obfuscatedString = new ObfuscatedString(new long[]{1344046895575500665L, 7399048365465965995L});
                obfuscatedString2 = obfuscatedString.toString();
                break;
            case 6:
            case 7:
                obfuscatedString = new ObfuscatedString(new long[]{5170108224881143762L, 3102449979467060751L});
                obfuscatedString2 = obfuscatedString.toString();
                break;
            case '\b':
            case '\t':
                obfuscatedString = new ObfuscatedString(new long[]{-9047241450676907664L, 400424178276903713L});
                obfuscatedString2 = obfuscatedString.toString();
                break;
            case '\n':
            case 11:
                obfuscatedString = new ObfuscatedString(new long[]{-5792706500736734722L, 8733610786304206451L});
                obfuscatedString2 = obfuscatedString.toString();
                break;
            default:
                obfuscatedString2 = new ObfuscatedString(new long[]{-3014712782510670941L, 1073654370693434868L}).toString();
                break;
        }
        hashMap.put(new ObfuscatedString(new long[]{6176317040194123552L, 8752755595452468948L}).toString(), obfuscatedString2);
        hashMap.put(new ObfuscatedString(new long[]{-2224882826743175722L, -7889652530962146848L}).toString(), this.zzc);
        if (!TextUtils.isEmpty(this.zzd)) {
            hashMap.put(new ObfuscatedString(new long[]{-1365977440970326882L, 4707992790043004144L}).toString(), this.zzd);
        }
        zzchw.zze(this.zze, new ObfuscatedString(new long[]{8130426682749645068L, -1648659086777730464L, -6280673345251672839L}).toString(), hashMap);
    }
}
