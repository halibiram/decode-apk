package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
import app.tunnel.logger.utils.TrafficData;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;

/* loaded from: classes2.dex */
public final class zzhj extends zzgq implements zzht {
    private final boolean zzb;
    private final int zzc;
    private final int zzd;

    @Nullable
    private final String zze;

    @Nullable
    private final zzhs zzf;
    private final zzhs zzg;

    @Nullable
    private zzhb zzh;

    @Nullable
    private HttpURLConnection zzi;

    @Nullable
    private InputStream zzj;
    private boolean zzk;
    private int zzl;
    private long zzm;
    private long zzn;

    /* JADX WARN: Removed duplicated region for block: B:12:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00d0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final HttpURLConnection zzk(URL url, int i, @Nullable byte[] bArr, long j, long j2, boolean z, boolean z2, Map map) {
        String sb;
        String str;
        String obfuscatedString;
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.zzc);
        httpURLConnection.setReadTimeout(this.zzd);
        HashMap hashMap = new HashMap();
        hashMap.putAll(this.zzf.zza());
        hashMap.putAll(this.zzg.zza());
        hashMap.putAll(map);
        for (Map.Entry entry : hashMap.entrySet()) {
            httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        if (j == 0) {
            if (j2 == -1) {
                sb = null;
                if (sb != null) {
                    httpURLConnection.setRequestProperty(new ObfuscatedString(new long[]{6543136317996649100L, 4214505037337526912L}).toString(), sb);
                }
                str = this.zze;
                if (str != null) {
                    httpURLConnection.setRequestProperty(new ObfuscatedString(new long[]{-1830790047482557187L, -1071334843665438887L, 4725906310143871372L}).toString(), str);
                }
                if (true == z) {
                    obfuscatedString = new ObfuscatedString(new long[]{7040491262478035356L, -1783510125466193511L}).toString();
                } else {
                    obfuscatedString = new ObfuscatedString(new long[]{-1284398693146171837L, 4958711696962377L}).toString();
                }
                httpURLConnection.setRequestProperty(new ObfuscatedString(new long[]{8588487156257656557L, 5715242059985937413L, 2595163571885135075L}).toString(), obfuscatedString);
                httpURLConnection.setInstanceFollowRedirects(z2);
                httpURLConnection.setDoOutput(false);
                int i2 = zzhb.zzj;
                httpURLConnection.setRequestMethod(new ObfuscatedString(new long[]{-5069784617279460533L, 8109748784104447479L}).toString());
                httpURLConnection.connect();
                return httpURLConnection;
            }
            j = 0;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(new ObfuscatedString(new long[]{915502637017394899L, 1797835613589324556L}).toString());
        sb2.append(j);
        sb2.append(new ObfuscatedString(new long[]{8948710692286417505L, -3118176799358247935L}).toString());
        if (j2 != -1) {
            sb2.append((j + j2) - 1);
        }
        sb = sb2.toString();
        if (sb != null) {
        }
        str = this.zze;
        if (str != null) {
        }
        if (true == z) {
        }
        httpURLConnection.setRequestProperty(new ObfuscatedString(new long[]{8588487156257656557L, 5715242059985937413L, 2595163571885135075L}).toString(), obfuscatedString);
        httpURLConnection.setInstanceFollowRedirects(z2);
        httpURLConnection.setDoOutput(false);
        int i22 = zzhb.zzj;
        httpURLConnection.setRequestMethod(new ObfuscatedString(new long[]{-5069784617279460533L, 8109748784104447479L}).toString());
        httpURLConnection.connect();
        return httpURLConnection;
    }

    private final URL zzl(URL url, @Nullable String str, zzhb zzhbVar) {
        if (str != null) {
            try {
                URL url2 = new URL(url, str);
                String protocol = url2.getProtocol();
                if (!new ObfuscatedString(new long[]{-2535943117827714895L, -2018458940853018103L}).toString().equals(protocol) && !new ObfuscatedString(new long[]{-3741296690809630649L, 8657514810660873058L}).toString().equals(protocol)) {
                    throw new zzhp(new ObfuscatedString(new long[]{1904392867693966370L, -2482767619052096012L, 758527172351278632L, 2536716712073110388L, -277920405990383941L}).toString().concat(String.valueOf(protocol)), zzhbVar, 2001, 1);
                }
                if (!this.zzb && !protocol.equals(url.getProtocol())) {
                    String protocol2 = url.getProtocol();
                    StringBuilder sb = new StringBuilder();
                    sb.append(new ObfuscatedString(new long[]{1745308879394419195L, 7070644463223400992L, 6574016460823132983L, 7000711887639648592L, -9082015256353831547L, 7562205047384974797L}).toString());
                    sb.append(protocol2);
                    sb.append(new ObfuscatedString(new long[]{-1477105442942938396L, 4990104685799526610L}).toString());
                    sb.append(protocol);
                    throw new zzhp(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{8303959690753612428L, 8767010515128318451L}), sb), zzhbVar, 2001, 1);
                }
                return url2;
            } catch (MalformedURLException e) {
                throw new zzhp(e, zzhbVar, 2001, 1);
            }
        }
        throw new zzhp(new ObfuscatedString(new long[]{4636663002845296910L, -2587586663538072649L, 3481613198626543138L, 8595783607587447112L}).toString(), zzhbVar, 2001, 1);
    }

    private final void zzm() {
        HttpURLConnection httpURLConnection = this.zzi;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                zzff.zzd(new ObfuscatedString(new long[]{344915697057254471L, -4986635368867936215L, 1369004734916409442L, -4054354390495651574L}).toString(), new ObfuscatedString(new long[]{859444124585811880L, -2568885403293563709L, 7298537382925282622L, -6199362626052625733L, 1407585721395206874L, 3064381152234885555L}).toString(), e);
            }
            this.zzi = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzu
    public final int zza(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        try {
            long j = this.zzm;
            if (j != -1) {
                long j2 = j - this.zzn;
                if (j2 != 0) {
                    i2 = (int) Math.min(i2, j2);
                }
                return -1;
            }
            InputStream inputStream = this.zzj;
            int i3 = zzfy.zza;
            int read = inputStream.read(bArr, i, i2);
            if (read == -1) {
                return -1;
            }
            this.zzn += read;
            zzg(read);
            return read;
        } catch (IOException e) {
            zzhb zzhbVar = this.zzh;
            int i4 = zzfy.zza;
            throw zzhp.zza(e, zzhbVar, 2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x00d2, code lost:
    
        if (r10 == r22) goto L34;
     */
    @Override // com.google.android.gms.internal.ads.zzgw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long zzb(zzhb zzhbVar) {
        long j;
        HttpURLConnection zzk;
        byte[] bArr;
        zzgx zzgxVar;
        long j2;
        this.zzh = zzhbVar;
        this.zzn = 0L;
        this.zzm = 0L;
        zzi(zzhbVar);
        try {
            URL url = new URL(zzhbVar.zza.toString());
            long j3 = zzhbVar.zzf;
            long j4 = zzhbVar.zzg;
            boolean zza = zzhbVar.zza(1);
            if (!this.zzb) {
                j = 0;
                zzk = zzk(url, 1, null, j3, j4, zza, true, zzhbVar.zzd);
            } else {
                j = 0;
                URL url2 = url;
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    if (i <= 20) {
                        long j5 = j3;
                        URL url3 = url2;
                        zzk = zzk(url2, 1, null, j3, j4, zza, false, zzhbVar.zzd);
                        int responseCode = zzk.getResponseCode();
                        String headerField = zzk.getHeaderField(new ObfuscatedString(new long[]{-5107673505857005735L, 977863562924405948L}).toString());
                        if (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303 && responseCode != 307 && responseCode != 308) {
                            break;
                        }
                        zzk.disconnect();
                        url2 = zzl(url3, headerField, zzhbVar);
                        j3 = j5;
                        i = i2;
                    } else {
                        throw new zzhp(new NoRouteToHostException(new ObfuscatedString(new long[]{8295499308756614780L, 7556067494741232649L, -1221566588291182665L, 1614281043058723712L}).toString() + i2), zzhbVar, 2001, 1);
                    }
                }
            }
            this.zzi = zzk;
            this.zzl = zzk.getResponseCode();
            String responseMessage = zzk.getResponseMessage();
            int i3 = this.zzl;
            long j6 = -1;
            if (i3 >= 200 && i3 <= 299) {
                zzk.getContentType();
                if (this.zzl == 200) {
                    j2 = zzhbVar.zzf;
                }
                j2 = j;
                boolean equalsIgnoreCase = new ObfuscatedString(new long[]{-6414614685514459469L, 3888954114502855866L}).toString().equalsIgnoreCase(zzk.getHeaderField(new ObfuscatedString(new long[]{-958030694624087646L, -2115125743712779075L, 5096187219157161351L}).toString()));
                if (!equalsIgnoreCase) {
                    long j7 = zzhbVar.zzg;
                    if (j7 != -1) {
                        this.zzm = j7;
                    } else {
                        long zza2 = zzhu.zza(zzk.getHeaderField(new ObfuscatedString(new long[]{-910479021114254830L, 1100144000064015915L, 2955612129485650926L}).toString()), zzk.getHeaderField(new ObfuscatedString(new long[]{-3238244189475871485L, -5525956009014438648L, -3030822137383666598L}).toString()));
                        if (zza2 != -1) {
                            j6 = zza2 - j2;
                        }
                        this.zzm = j6;
                    }
                } else {
                    this.zzm = zzhbVar.zzg;
                }
                try {
                    this.zzj = zzk.getInputStream();
                    if (equalsIgnoreCase) {
                        this.zzj = new GZIPInputStream(this.zzj);
                    }
                    this.zzk = true;
                    zzj(zzhbVar);
                    if (j2 != j) {
                        try {
                            byte[] bArr2 = new byte[4096];
                            while (j2 > j) {
                                int min = (int) Math.min(j2, 4096L);
                                InputStream inputStream = this.zzj;
                                int i4 = zzfy.zza;
                                int read = inputStream.read(bArr2, 0, min);
                                if (!Thread.currentThread().isInterrupted()) {
                                    if (read != -1) {
                                        j2 -= read;
                                        zzg(read);
                                    } else {
                                        throw new zzhp(zzhbVar, 2008, 1);
                                    }
                                } else {
                                    throw new zzhp(new InterruptedIOException(), zzhbVar, TrafficData.INTERVAL_TIME, 1);
                                }
                            }
                        } catch (IOException e) {
                            zzm();
                            if (e instanceof zzhp) {
                                throw ((zzhp) e);
                            }
                            throw new zzhp(e, zzhbVar, TrafficData.INTERVAL_TIME, 1);
                        }
                    }
                    return this.zzm;
                } catch (IOException e2) {
                    zzm();
                    throw new zzhp(e2, zzhbVar, TrafficData.INTERVAL_TIME, 1);
                }
            }
            Map<String, List<String>> headerFields = zzk.getHeaderFields();
            if (this.zzl == 416) {
                if (zzhbVar.zzf == zzhu.zzb(zzk.getHeaderField(new ObfuscatedString(new long[]{-3275892276257638137L, 7042105607508164577L, -1747803484805243228L}).toString()))) {
                    this.zzk = true;
                    zzj(zzhbVar);
                    long j8 = zzhbVar.zzg;
                    if (j8 != -1) {
                        return j8;
                    }
                    return j;
                }
            }
            InputStream errorStream = zzk.getErrorStream();
            try {
                if (errorStream != null) {
                    int i5 = zzfy.zza;
                    byte[] bArr3 = new byte[4096];
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    while (true) {
                        int read2 = errorStream.read(bArr3);
                        if (read2 == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr3, 0, read2);
                    }
                    bArr = byteArrayOutputStream.toByteArray();
                } else {
                    bArr = zzfy.zzf;
                }
            } catch (IOException unused) {
                bArr = zzfy.zzf;
            }
            byte[] bArr4 = bArr;
            zzm();
            if (this.zzl == 416) {
                zzgxVar = new zzgx(2008);
            } else {
                zzgxVar = null;
            }
            throw new zzhr(this.zzl, responseMessage, zzgxVar, headerFields, zzhbVar, bArr4);
        } catch (IOException e3) {
            zzm();
            throw zzhp.zza(e3, zzhbVar, 1);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    @Nullable
    public final Uri zzc() {
        HttpURLConnection httpURLConnection = this.zzi;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final void zzd() {
        try {
            InputStream inputStream = this.zzj;
            if (inputStream != null) {
                if (this.zzi != null) {
                    int i = zzfy.zza;
                }
                try {
                    inputStream.close();
                } catch (IOException e) {
                    zzhb zzhbVar = this.zzh;
                    int i2 = zzfy.zza;
                    throw new zzhp(e, zzhbVar, TrafficData.INTERVAL_TIME, 3);
                }
            }
        } finally {
            this.zzj = null;
            zzm();
            if (this.zzk) {
                this.zzk = false;
                zzh();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgq, com.google.android.gms.internal.ads.zzgw
    public final Map zze() {
        HttpURLConnection httpURLConnection = this.zzi;
        if (httpURLConnection == null) {
            return zzgad.zzd();
        }
        return new zzhh(httpURLConnection.getHeaderFields());
    }

    @Deprecated
    public zzhj() {
        this(null, 8000, 8000, false, null, null, false);
    }

    private zzhj(@Nullable String str, int i, int i2, boolean z, @Nullable zzhs zzhsVar, @Nullable zzfxf zzfxfVar, boolean z2) {
        super(true);
        this.zze = str;
        this.zzc = i;
        this.zzd = i2;
        this.zzb = z;
        this.zzf = zzhsVar;
        this.zzg = new zzhs();
    }
}
