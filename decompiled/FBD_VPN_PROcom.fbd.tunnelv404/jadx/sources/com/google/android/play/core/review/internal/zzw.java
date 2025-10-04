package com.google.android.play.core.review.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class zzw {
    private static final zzi zza = new zzi(new ObfuscatedString(new long[]{-5403594316885239345L, 429719382093638360L, -8990334845491654080L, -5728275933176301485L, -959764575487467776L}).toString());

    public static boolean zza(Context context) {
        try {
            if (!context.getPackageManager().getApplicationInfo(new ObfuscatedString(new long[]{-1145472529450689444L, 2474328864018783827L, -5997130468632855333L, -7572189255687147647L}).toString(), 0).enabled) {
                zza.zzd(new ObfuscatedString(new long[]{4895394995552030817L, 6837051577387542832L, -1037381495504731533L, -7349440383699588631L, 2821953811257531166L}).toString(), new Object[0]);
            } else {
                try {
                    Signature[] signatureArr = context.getPackageManager().getPackageInfo(new ObfuscatedString(new long[]{1461295437035869143L, 6410486242405608712L, 2701057602363355666L, 4283817816992323396L}).toString(), 64).signatures;
                    if (signatureArr != null && (signatureArr.length) != 0) {
                        ArrayList arrayList = new ArrayList();
                        for (Signature signature : signatureArr) {
                            String zza2 = zzv.zza(signature.toByteArray());
                            arrayList.add(zza2);
                            if (!new ObfuscatedString(new long[]{-1822998429254991992L, -5854605522420665969L, 2816193981874223210L, 6283892253886878488L, -4642385740247675225L, 960944121052554670L, 2987369528111271633L}).toString().equals(zza2)) {
                                String str = Build.TAGS;
                                if ((!str.contains(new ObfuscatedString(new long[]{-3560446936438708963L, -7125233867801155825L}).toString()) && !str.contains(new ObfuscatedString(new long[]{-7180103006374360970L, -1164887830899592177L, -364565974686867516L}).toString())) || !new ObfuscatedString(new long[]{-475710778123788174L, -3665822006968722218L, -1445777493575560136L, 5726229204202186512L, 3872169406650783803L, 8878600841781733988L, 118465940754504233L}).toString().equals(zza2)) {
                                }
                            }
                            return true;
                        }
                        zzi zziVar = zza;
                        StringBuilder sb = new StringBuilder();
                        Iterator it = arrayList.iterator();
                        if (it.hasNext()) {
                            while (true) {
                                sb.append((CharSequence) it.next());
                                if (!it.hasNext()) {
                                    break;
                                }
                                sb.append((CharSequence) new ObfuscatedString(new long[]{2474451879889536489L, 1231809909646807915L}).toString());
                            }
                        }
                        zziVar.zzd(String.format(new ObfuscatedString(new long[]{-4735566641124113001L, -221781116307314787L, 5155061812199504054L, -3172538409492602259L, 7229909234597769753L, 6923122773023219664L, 365443568999157998L, -768382524216867715L, 3455174061162519892L, -8599893589568922792L}).toString(), sb.toString()), new Object[0]);
                    } else {
                        zza.zzd(new ObfuscatedString(new long[]{5037166157388322293L, 240958239831781489L, -2869185604730258636L, -5609240375375471610L, 5079020380071548381L, -188589115145525511L, -7573480459766196543L, 8748310217464045873L, 6807117390620293698L, -4879452350523719397L, 8504620552127903547L, -1639885375051988773L}).toString(), new Object[0]);
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                    zza.zzd(new ObfuscatedString(new long[]{5141831999372470038L, 7290068231434291037L, 7235987120262680953L, -2372341626919403976L, 7929931593733258763L}).toString(), new Object[0]);
                }
            }
        } catch (PackageManager.NameNotFoundException unused2) {
            zza.zzd(new ObfuscatedString(new long[]{-8275471272262748720L, 6043448656535330802L, 7891096663871061995L, 1122423983853055700L, -6617197494019812939L}).toString(), new Object[0]);
        }
        return false;
    }
}
