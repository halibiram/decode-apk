package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.common.util.IOUtils;
import com.panda912.muddy.ObfuscatedString;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzefa implements zzfkp {
    protected final Context zza;
    protected final String zzb;
    protected final zzbzq zzc;

    public zzefa(Context context, String str, zzbzq zzbzqVar, int i) {
        this.zza = context;
        this.zzb = str;
        this.zzc = zzbzqVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:97:0x0257, code lost:
    
        com.google.android.gms.internal.ads.zzcec.zzj(new com.panda912.muddy.ObfuscatedString(new long[]{5783387277218033905L, -7022442544698912978L, -7097359935261953958L, -2156384438105071268L, 7531797485213954926L, -2220436931703535689L}).toString() + r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x029b, code lost:
    
        throw new com.google.android.gms.internal.ads.zzead(1, new com.panda912.muddy.ObfuscatedString(new long[]{-8788411103370861710L, 3654214950560670098L, -5821848293477037453L, -7610837460264102367L, 2345810552468722043L, 9173947705394134458L}).toString() + r10);
     */
    @Override // com.google.android.gms.internal.ads.zzfkp
    /* renamed from: zzb, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final zzeez zza(zzeey zzeeyVar) {
        zzeez zzeezVar;
        HttpURLConnection httpURLConnection;
        byte[] bArr;
        Map map;
        InputStreamReader inputStreamReader;
        String str = zzeeyVar.zza;
        int i = zzeeyVar.zzb;
        Map map2 = zzeeyVar.zzc;
        byte[] bArr2 = zzeeyVar.zzd;
        String str2 = zzeeyVar.zze;
        long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
        try {
            zzeez zzeezVar2 = new zzeez();
            zzcec.zzi(new ObfuscatedString(new long[]{3766255616299495366L, 9130808076922055740L, -7917745123317599443L}).toString() + this.zzb);
            zzcec.zze(new ObfuscatedString(new long[]{-8844446583829161455L, -788923615792416255L, 4966740498137848993L, -883170405549518891L, -1650356560355029448L, -3676826577980272974L}).toString() + str);
            URL url = new URL(str);
            HashMap hashMap = new HashMap();
            int i2 = 0;
            while (true) {
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) url.openConnection();
                try {
                    try {
                        httpURLConnection = httpURLConnection2;
                        zzeezVar = zzeezVar2;
                        bArr = bArr2;
                        map = map2;
                    } catch (Throwable th) {
                        th = th;
                    }
                    try {
                        com.google.android.gms.ads.internal.zzt.zzp().zzf(this.zza, this.zzb, false, httpURLConnection, false, i);
                        for (Map.Entry entry : map.entrySet()) {
                            httpURLConnection2 = httpURLConnection;
                            try {
                                httpURLConnection2.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                                httpURLConnection = httpURLConnection2;
                            } catch (zzead e) {
                                e = e;
                                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzih)).booleanValue()) {
                                    zzeezVar.zzd = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - elapsedRealtime;
                                    httpURLConnection2.disconnect();
                                    return zzeezVar;
                                }
                                throw e;
                            }
                        }
                        httpURLConnection2 = httpURLConnection;
                        if (!TextUtils.isEmpty(str2)) {
                            httpURLConnection2.setRequestProperty(new ObfuscatedString(new long[]{-4719201843560536117L, -3943236327387116046L, 5964603133165048657L}).toString(), str2);
                        }
                        int length = bArr.length;
                        BufferedOutputStream bufferedOutputStream = null;
                        if (length > 0) {
                            httpURLConnection2.setDoOutput(true);
                            httpURLConnection2.setFixedLengthStreamingMode(length);
                            try {
                                BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(httpURLConnection2.getOutputStream());
                                try {
                                    bufferedOutputStream2.write(bArr);
                                    IOUtils.closeQuietly(bufferedOutputStream2);
                                } catch (Throwable th2) {
                                    th = th2;
                                    bufferedOutputStream = bufferedOutputStream2;
                                    IOUtils.closeQuietly(bufferedOutputStream);
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        }
                        zzceb zzcebVar = new zzceb(null);
                        zzcebVar.zzc(httpURLConnection2, bArr);
                        int responseCode = httpURLConnection2.getResponseCode();
                        for (Map.Entry<String, List<String>> entry2 : httpURLConnection2.getHeaderFields().entrySet()) {
                            String key = entry2.getKey();
                            List<String> value = entry2.getValue();
                            if (hashMap.containsKey(key)) {
                                ((List) hashMap.get(key)).addAll(value);
                            } else {
                                hashMap.put(key, new ArrayList(value));
                            }
                        }
                        zzcebVar.zze(httpURLConnection2, responseCode);
                        zzeezVar.zza = responseCode;
                        zzeezVar.zzb = hashMap;
                        zzeezVar.zzc = new ObfuscatedString(new long[]{-3772726805292952240L}).toString();
                        if (responseCode >= 200 && responseCode < 300) {
                            try {
                                InputStreamReader inputStreamReader2 = new InputStreamReader(httpURLConnection2.getInputStream());
                                try {
                                    com.google.android.gms.ads.internal.zzt.zzp();
                                    String zzM = com.google.android.gms.ads.internal.util.zzt.zzM(inputStreamReader2);
                                    IOUtils.closeQuietly(inputStreamReader2);
                                    zzcebVar.zzg(zzM);
                                    zzeezVar.zzc = zzM;
                                    if (TextUtils.isEmpty(zzM) && !((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzft)).booleanValue()) {
                                        throw new zzead(3);
                                    }
                                    zzeezVar.zzd = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - elapsedRealtime;
                                } catch (Throwable th4) {
                                    th = th4;
                                    inputStreamReader = inputStreamReader2;
                                    IOUtils.closeQuietly(inputStreamReader);
                                    throw th;
                                }
                            } catch (Throwable th5) {
                                th = th5;
                                inputStreamReader = null;
                            }
                        } else {
                            if (responseCode < 300 || responseCode >= 400) {
                                break;
                            }
                            String headerField = httpURLConnection2.getHeaderField(new ObfuscatedString(new long[]{2828702207203792043L, -6248593501088050068L}).toString());
                            if (!TextUtils.isEmpty(headerField)) {
                                URL url2 = new URL(headerField);
                                int i3 = i2 + 1;
                                if (i3 <= ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeT)).intValue()) {
                                    httpURLConnection2.disconnect();
                                    bArr2 = bArr;
                                    zzeezVar2 = zzeezVar;
                                    i2 = i3;
                                    url = url2;
                                    map2 = map;
                                } else {
                                    zzcec.zzj(new ObfuscatedString(new long[]{6435195710472801178L, -7287576587161185079L, 834564991837919352L, 7381552824319743485L}).toString());
                                    throw new zzead(1, new ObfuscatedString(new long[]{294587498926493182L, -9113368659504406909L, 888072871547864251L, -2303050299228343398L}).toString());
                                }
                            } else {
                                zzcec.zzj(new ObfuscatedString(new long[]{7812141583069049571L, 2222451030711864785L, -7311375246350380737L, 3706135406698325395L, 54745475724617995L, -2090449728564726191L}).toString());
                                throw new zzead(1, new ObfuscatedString(new long[]{3571394996576140001L, -1606761089829513274L, 4465145907110448575L, -5761292926492742023L, -4687234041202756139L, -4301306828727894250L}).toString());
                            }
                        }
                    } catch (zzead e2) {
                        e = e2;
                        httpURLConnection2 = httpURLConnection;
                    } catch (Throwable th6) {
                        th = th6;
                        httpURLConnection2 = httpURLConnection;
                        httpURLConnection2.disconnect();
                        throw th;
                    }
                } catch (zzead e3) {
                    e = e3;
                    zzeezVar = zzeezVar2;
                }
            }
        } catch (IOException e4) {
            String concat = new ObfuscatedString(new long[]{4131020116883676726L, -7912727921410037762L, -3948292284098702210L, 7556280947155381889L, -494714955536197703L, -7830529478422954527L}).toString().concat(String.valueOf(e4.getMessage()));
            zzcec.zzj(concat);
            throw new zzead(1, concat, e4);
        }
    }
}
