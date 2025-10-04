package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.android.gms.ads.impl.R;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzbvt extends zzbvw {
    private final Map zza;
    private final Context zzb;

    public zzbvt(zzcjk zzcjkVar, Map map) {
        super(zzcjkVar, new ObfuscatedString(new long[]{4714227631262648303L, 1728831508680253168L, -9055277161505240933L}).toString());
        this.zza = map;
        this.zzb = zzcjkVar.zzi();
    }

    public final void zzb() {
        String obfuscatedString;
        String obfuscatedString2;
        String obfuscatedString3;
        String obfuscatedString4;
        if (this.zzb == null) {
            zzh(new ObfuscatedString(new long[]{-2773126266357166256L, 5237039564873823897L, -60638284755358634L, -9022359233122350359L, -7695195548429038302L, 2593428155714130940L}).toString());
            return;
        }
        com.google.android.gms.ads.internal.zzt.zzp();
        if (!new zzbfm(this.zzb).zzc()) {
            zzh(new ObfuscatedString(new long[]{416151463834909947L, -6633486166614551464L, -224191923628651430L, 9127099936830790406L, 3197299240106611630L, -5020662529738418792L}).toString());
            return;
        }
        String str = (String) this.zza.get(new ObfuscatedString(new long[]{-7946899676174138222L, 240436507420813154L}).toString());
        if (TextUtils.isEmpty(str)) {
            zzh(new ObfuscatedString(new long[]{-698332686826646229L, -165648339308879054L, 749145371694980662L, 8322189379703282642L, 9138345467162404778L}).toString());
            return;
        }
        if (URLUtil.isValidUrl(str)) {
            String lastPathSegment = Uri.parse(str).getLastPathSegment();
            com.google.android.gms.ads.internal.zzt.zzp();
            if (!TextUtils.isEmpty(lastPathSegment) && lastPathSegment.matches(new ObfuscatedString(new long[]{4779123516248190552L, 6266781781004611451L, 7361885098155853773L, 7144635369374306320L, -1884798964875876701L, 7862033058477612981L}).toString())) {
                Resources zze = com.google.android.gms.ads.internal.zzt.zzo().zze();
                com.google.android.gms.ads.internal.zzt.zzp();
                AlertDialog.Builder zzJ = com.google.android.gms.ads.internal.util.zzt.zzJ(this.zzb);
                if (zze != null) {
                    obfuscatedString = zze.getString(R.string.s1);
                } else {
                    obfuscatedString = new ObfuscatedString(new long[]{-6802781895084732408L, 965465264502310249L, -2701614851270664849L}).toString();
                }
                zzJ.setTitle(obfuscatedString);
                if (zze != null) {
                    obfuscatedString2 = zze.getString(R.string.s2);
                } else {
                    obfuscatedString2 = new ObfuscatedString(new long[]{735000563336791719L, 2844488302075421340L, -434173480343089933L, 6027719310428638170L, 5513817646210693777L, -6654534520353435728L, 1268366217561650517L}).toString();
                }
                zzJ.setMessage(obfuscatedString2);
                if (zze != null) {
                    obfuscatedString3 = zze.getString(R.string.s3);
                } else {
                    obfuscatedString3 = new ObfuscatedString(new long[]{-4545202748760404247L, -1520383373770869815L}).toString();
                }
                zzJ.setPositiveButton(obfuscatedString3, new zzbvr(this, str, lastPathSegment));
                if (zze != null) {
                    obfuscatedString4 = zze.getString(R.string.s4);
                } else {
                    obfuscatedString4 = new ObfuscatedString(new long[]{552748392644844294L, 8463350982751588586L}).toString();
                }
                zzJ.setNegativeButton(obfuscatedString4, new zzbvs(this));
                zzJ.create().show();
                return;
            }
            zzh(new ObfuscatedString(new long[]{1663574923803136705L, 7744214768524844857L, -1128728885132476868L, 9194217416379141920L, -4414566108378381180L}).toString().concat(String.valueOf(lastPathSegment)));
            return;
        }
        zzh(new ObfuscatedString(new long[]{-6201558713354204493L, 3413827130808909885L, 7976298275942274268L, 2041330973768684414L}).toString().concat(String.valueOf(str)));
    }
}
