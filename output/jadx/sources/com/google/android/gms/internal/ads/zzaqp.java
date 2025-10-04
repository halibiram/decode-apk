package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import com.panda912.muddy.ObfuscatedString;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

/* loaded from: classes2.dex */
public class zzaqp implements zzapt {
    protected final zzaqr zza;

    @Deprecated
    protected final zzaqo zzb;
    private final zzaqo zzc;

    public zzaqp(zzaqo zzaqoVar) {
        zzaqr zzaqrVar = new zzaqr(4096);
        this.zzc = zzaqoVar;
        this.zzb = zzaqoVar;
        this.zza = zzaqrVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x032e, code lost:
    
        if (r0 < 200) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0332, code lost:
    
        if (r0 > 299) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0349, code lost:
    
        return new com.google.android.gms.internal.ads.zzapw(r0, r2, false, android.os.SystemClock.elapsedRealtime() - r9, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0351, code lost:
    
        throw new java.io.IOException();
     */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0375 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0382  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x03a0  */
    @Override // com.google.android.gms.internal.ads.zzapt
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzapw zza(zzaqa zzaqaVar) {
        zzaqy zzaqyVar;
        byte[] bArr;
        zzarc zzarcVar;
        zzarc zzarcVar2;
        int zzb;
        String str;
        zzaqj zzaqjVar;
        String str2;
        Map map;
        boolean z;
        byte[] bArr2;
        String obfuscatedString;
        Object obfuscatedString2;
        Integer valueOf;
        Integer valueOf2;
        Object[] objArr;
        byte[] bArr3;
        int i = 6;
        int i2 = 4;
        int i3 = 3;
        boolean z2 = true;
        int i4 = 2;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            Collections.emptyList();
            try {
                zzapj zzd = zzaqaVar.zzd();
                if (zzd == null) {
                    map = Collections.emptyMap();
                } else {
                    HashMap hashMap = new HashMap();
                    String str3 = zzd.zzb;
                    if (str3 != null) {
                        long[] jArr = new long[i3];
                        // fill-array-data instruction
                        jArr[0] = -427611465806499906L;
                        jArr[1] = 7722520659667838911L;
                        jArr[2] = -6680575010347236158L;
                        hashMap.put(new ObfuscatedString(jArr).toString(), str3);
                    }
                    long j = zzd.zzd;
                    if (j > 0) {
                        long[] jArr2 = new long[i2];
                        // fill-array-data instruction
                        jArr2[0] = 804744708111738768L;
                        jArr2[1] = 5971238314336391316L;
                        jArr2[2] = -1456504463832599681L;
                        jArr2[3] = -1638719511527233564L;
                        hashMap.put(new ObfuscatedString(jArr2).toString(), zzaqx.zzc(j));
                    }
                    map = hashMap;
                }
                String obfuscatedString3 = new ObfuscatedString(new long[]{5187716369997565029L, -8046061833544977972L, 69080289058250345L, -7802331480820360802L, 5499671977052208685L, 3001029008218139361L, -3250957274367635924L}).toString();
                String zzk = zzaqaVar.zzk();
                HashMap hashMap2 = new HashMap();
                hashMap2.putAll(map);
                hashMap2.putAll(zzaqaVar.zzl());
                URL url = new URL(zzk);
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                httpURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
                int zzb2 = zzaqaVar.zzb();
                httpURLConnection.setConnectTimeout(zzb2);
                httpURLConnection.setReadTimeout(zzb2);
                httpURLConnection.setUseCaches(false);
                httpURLConnection.setDoInput(z2);
                long[] jArr3 = new long[i4];
                // fill-array-data instruction
                jArr3[0] = 8756535818222447068L;
                jArr3[1] = -7334440052419006186L;
                new ObfuscatedString(jArr3).toString().equals(url.getProtocol());
                try {
                    for (String str4 : hashMap2.keySet()) {
                        httpURLConnection.setRequestProperty(str4, (String) hashMap2.get(str4));
                    }
                    if (zzaqaVar.zza() != 0) {
                        long[] jArr4 = new long[i4];
                        // fill-array-data instruction
                        jArr4[0] = -2424546789769429746L;
                        jArr4[1] = 2047993663907519963L;
                        httpURLConnection.setRequestMethod(new ObfuscatedString(jArr4).toString());
                        byte[] zzx = zzaqaVar.zzx();
                        if (zzx != null) {
                            httpURLConnection.setDoOutput(z2);
                            long[] jArr5 = new long[i3];
                            // fill-array-data instruction
                            jArr5[0] = -543154447106999067L;
                            jArr5[1] = 4223965631562794558L;
                            jArr5[2] = 803845625738256434L;
                            if (!httpURLConnection.getRequestProperties().containsKey(new ObfuscatedString(jArr5).toString())) {
                                long[] jArr6 = new long[i3];
                                // fill-array-data instruction
                                jArr6[0] = 4195106081501618832L;
                                jArr6[1] = 1910301665606030051L;
                                jArr6[2] = 6496171833446753571L;
                                httpURLConnection.setRequestProperty(new ObfuscatedString(jArr6).toString(), obfuscatedString3);
                            }
                            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                            dataOutputStream.write(zzx);
                            dataOutputStream.close();
                        }
                    } else {
                        long[] jArr7 = new long[i4];
                        // fill-array-data instruction
                        jArr7[0] = 329271898203779150L;
                        jArr7[1] = -5663976236852848633L;
                        httpURLConnection.setRequestMethod(new ObfuscatedString(jArr7).toString());
                    }
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode != -1) {
                        zzaqaVar.zza();
                        if ((responseCode < 100 || responseCode >= 200) && responseCode != 204 && responseCode != 304) {
                            try {
                                zzaqyVar = new zzaqy(responseCode, zzara.zza(httpURLConnection.getHeaderFields()), httpURLConnection.getContentLength(), new zzaqz(httpURLConnection));
                            } catch (Throwable th) {
                                th = th;
                                z = true;
                                if (!z) {
                                }
                                throw th;
                                break;
                            }
                        } else {
                            zzaqyVar = new zzaqy(responseCode, zzara.zza(httpURLConnection.getHeaderFields()), -1, null);
                            httpURLConnection.disconnect();
                        }
                        try {
                            int zzb3 = zzaqyVar.zzb();
                            List zzd2 = zzaqyVar.zzd();
                            if (zzb3 == 304) {
                                long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
                                zzapj zzd3 = zzaqaVar.zzd();
                                if (zzd3 == null) {
                                    return new zzapw(304, (byte[]) null, true, elapsedRealtime2, zzd2);
                                }
                                TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
                                if (!zzd2.isEmpty()) {
                                    Iterator it = zzd2.iterator();
                                    while (it.hasNext()) {
                                        treeSet.add(((zzaps) it.next()).zza());
                                    }
                                }
                                ArrayList arrayList = new ArrayList(zzd2);
                                List list = zzd3.zzh;
                                if (list != null) {
                                    if (!list.isEmpty()) {
                                        for (zzaps zzapsVar : zzd3.zzh) {
                                            if (!treeSet.contains(zzapsVar.zza())) {
                                                arrayList.add(zzapsVar);
                                            }
                                        }
                                    }
                                } else if (!zzd3.zzg.isEmpty()) {
                                    for (Map.Entry entry : zzd3.zzg.entrySet()) {
                                        if (!treeSet.contains(entry.getKey())) {
                                            arrayList.add(new zzaps((String) entry.getKey(), (String) entry.getValue()));
                                        }
                                    }
                                }
                                return new zzapw(304, zzd3.zza, true, elapsedRealtime2, (List) arrayList);
                            }
                            InputStream zzc = zzaqyVar.zzc();
                            if (zzc != null) {
                                int zza = zzaqyVar.zza();
                                try {
                                    zzaqr zzaqrVar = this.zza;
                                    zzard zzardVar = new zzard(zzaqrVar, zza);
                                    try {
                                        bArr3 = zzaqrVar.zzb(1024);
                                        while (true) {
                                            try {
                                                int read = zzc.read(bArr3);
                                                if (read == -1) {
                                                    break;
                                                }
                                                zzardVar.write(bArr3, 0, read);
                                            } catch (Throwable th2) {
                                                th = th2;
                                                try {
                                                    zzc.close();
                                                } catch (IOException unused) {
                                                    long[] jArr8 = new long[i];
                                                    // fill-array-data instruction
                                                    jArr8[0] = -6569896270501590246L;
                                                    jArr8[1] = -2454338773142597132L;
                                                    jArr8[2] = -5300052583643619753L;
                                                    jArr8[3] = 6529926731807152061L;
                                                    jArr8[4] = 5888548065256650403L;
                                                    jArr8[5] = 2603674784412844758L;
                                                    zzaqm.zzd(new ObfuscatedString(jArr8).toString(), new Object[0]);
                                                }
                                                zzaqrVar.zza(bArr3);
                                                zzardVar.close();
                                                throw th;
                                                break;
                                            }
                                        }
                                        bArr2 = zzardVar.toByteArray();
                                        try {
                                            zzc.close();
                                        } catch (IOException unused2) {
                                            long[] jArr9 = new long[i];
                                            // fill-array-data instruction
                                            jArr9[0] = 3722499786880363308L;
                                            jArr9[1] = -4569951809667601117L;
                                            jArr9[2] = 6807525856153224726L;
                                            jArr9[3] = -4151756670907588355L;
                                            jArr9[4] = -7478943102045654416L;
                                            jArr9[5] = -2326775126036301499L;
                                            zzaqm.zzd(new ObfuscatedString(jArr9).toString(), new Object[0]);
                                        }
                                        zzaqrVar.zza(bArr3);
                                        zzardVar.close();
                                    } catch (Throwable th3) {
                                        th = th3;
                                        bArr3 = null;
                                    }
                                } catch (IOException e) {
                                    e = e;
                                    bArr = null;
                                    if (e instanceof SocketTimeoutException) {
                                    }
                                    zzapo zzy = zzaqaVar.zzy();
                                    zzb = zzaqaVar.zzb();
                                    try {
                                        zzaqjVar = zzarcVar2.zzb;
                                        zzy.zzc(zzaqjVar);
                                        str2 = zzarcVar2.zza;
                                        zzaqaVar.zzm(String.format(new ObfuscatedString(new long[]{-195172121510579833L, 1956814468248307713L, 1969344536644611639L, 5872868649498314780L}).toString(), str2, Integer.valueOf(zzb)));
                                        i = 6;
                                        i2 = 4;
                                        i3 = 3;
                                        z2 = true;
                                        i4 = 2;
                                    } catch (zzaqj e2) {
                                        str = zzarcVar2.zza;
                                        zzaqaVar.zzm(String.format(new ObfuscatedString(new long[]{3621844090120834509L, -6496200589590881237L, -92639764534474107L, 4497545242730347230L, 3306866213191320680L}).toString(), str, Integer.valueOf(zzb)));
                                        throw e2;
                                    }
                                }
                            } else {
                                bArr2 = new byte[0];
                            }
                            try {
                                long elapsedRealtime3 = SystemClock.elapsedRealtime() - elapsedRealtime;
                                if (!zzaqm.zzb && elapsedRealtime3 <= 3000) {
                                    break;
                                }
                                obfuscatedString = new ObfuscatedString(new long[]{4917697647829523510L, -8776354542451975561L, -8048164362137427156L, -4298697392123547167L, 7762183843037277567L, 2583720053760799343L, -2271466667831146110L, 8272823371317999218L, 3305333372966277212L, 4566682067240043545L, -2571520681830788135L, -4193153417621715954L}).toString();
                                Long valueOf3 = Long.valueOf(elapsedRealtime3);
                                if (bArr2 != null) {
                                    obfuscatedString2 = Integer.valueOf(bArr2.length);
                                } else {
                                    long[] jArr10 = new long[i4];
                                    // fill-array-data instruction
                                    jArr10[0] = -1032620493113547271L;
                                    jArr10[1] = -7560928668264644360L;
                                    obfuscatedString2 = new ObfuscatedString(jArr10).toString();
                                }
                                valueOf = Integer.valueOf(zzb3);
                                valueOf2 = Integer.valueOf(zzaqaVar.zzy().zza());
                                objArr = new Object[5];
                                objArr[0] = zzaqaVar;
                                objArr[1] = valueOf3;
                                objArr[2] = obfuscatedString2;
                            } catch (IOException e3) {
                                e = e3;
                            }
                            try {
                                objArr[3] = valueOf;
                                objArr[4] = valueOf2;
                                zzaqm.zza(obfuscatedString, objArr);
                                break;
                            } catch (IOException e4) {
                                e = e4;
                                bArr = bArr2;
                                if (e instanceof SocketTimeoutException) {
                                }
                                zzapo zzy2 = zzaqaVar.zzy();
                                zzb = zzaqaVar.zzb();
                                zzaqjVar = zzarcVar2.zzb;
                                zzy2.zzc(zzaqjVar);
                                str2 = zzarcVar2.zza;
                                zzaqaVar.zzm(String.format(new ObfuscatedString(new long[]{-195172121510579833L, 1956814468248307713L, 1969344536644611639L, 5872868649498314780L}).toString(), str2, Integer.valueOf(zzb)));
                                i = 6;
                                i2 = 4;
                                i3 = 3;
                                z2 = true;
                                i4 = 2;
                            }
                        } catch (IOException e5) {
                            e = e5;
                        }
                    } else {
                        try {
                            throw new IOException(new ObfuscatedString(new long[]{6000948483225627554L, -6254793463102997234L, 8485905263900683323L, 1904201864254831580L, -3147411600919042846L, -8327065959802543688L, 1814948129238485575L, -2597169792491520992L}).toString());
                            break;
                        } catch (Throwable th4) {
                            th = th4;
                            z = false;
                            if (!z) {
                                try {
                                    httpURLConnection.disconnect();
                                } catch (IOException e6) {
                                    e = e6;
                                    zzaqyVar = null;
                                    bArr = null;
                                    if (e instanceof SocketTimeoutException) {
                                        zzarcVar2 = new zzarc(new ObfuscatedString(new long[]{7639295147351319296L, -6702863053536725270L}).toString(), new zzaqi(), null);
                                    } else if (!(e instanceof MalformedURLException)) {
                                        if (zzaqyVar != null) {
                                            int zzb4 = zzaqyVar.zzb();
                                            zzaqm.zzb(new ObfuscatedString(new long[]{1706872298902985941L, 9110027183354398321L, 8329316672007230249L, -6002752594795144423L, -6823192965126222200L, 2278533056907207279L}).toString(), Integer.valueOf(zzb4), zzaqaVar.zzk());
                                            if (bArr != null) {
                                                zzapw zzapwVar = new zzapw(zzb4, bArr, false, SystemClock.elapsedRealtime() - elapsedRealtime, zzaqyVar.zzd());
                                                if (zzb4 != 401 && zzb4 != 403) {
                                                    if (zzb4 >= 400 && zzb4 <= 499) {
                                                        throw new zzapn(zzapwVar);
                                                    }
                                                    throw new zzaqh(zzapwVar);
                                                }
                                                zzarcVar = new zzarc(new ObfuscatedString(new long[]{6607270009519531334L, 2210432309738570715L}).toString(), new zzapi(zzapwVar), null);
                                            } else {
                                                zzarcVar = new zzarc(new ObfuscatedString(new long[]{-4286579978588997315L, -3894543152536625338L}).toString(), new zzapv(), null);
                                            }
                                            zzarcVar2 = zzarcVar;
                                        } else {
                                            throw new zzapx(e);
                                        }
                                    } else {
                                        throw new RuntimeException(new ObfuscatedString(new long[]{-6912828023198124781L, -4905912914230654050L}).toString().concat(String.valueOf(zzaqaVar.zzk())), e);
                                    }
                                    zzapo zzy22 = zzaqaVar.zzy();
                                    zzb = zzaqaVar.zzb();
                                    zzaqjVar = zzarcVar2.zzb;
                                    zzy22.zzc(zzaqjVar);
                                    str2 = zzarcVar2.zza;
                                    zzaqaVar.zzm(String.format(new ObfuscatedString(new long[]{-195172121510579833L, 1956814468248307713L, 1969344536644611639L, 5872868649498314780L}).toString(), str2, Integer.valueOf(zzb)));
                                    i = 6;
                                    i2 = 4;
                                    i3 = 3;
                                    z2 = true;
                                    i4 = 2;
                                }
                            }
                            throw th;
                            break;
                            break;
                        }
                    }
                } catch (Throwable th5) {
                    th = th5;
                }
            } catch (IOException e7) {
                e = e7;
            }
            str2 = zzarcVar2.zza;
            zzaqaVar.zzm(String.format(new ObfuscatedString(new long[]{-195172121510579833L, 1956814468248307713L, 1969344536644611639L, 5872868649498314780L}).toString(), str2, Integer.valueOf(zzb)));
            i = 6;
            i2 = 4;
            i3 = 3;
            z2 = true;
            i4 = 2;
        }
    }
}
