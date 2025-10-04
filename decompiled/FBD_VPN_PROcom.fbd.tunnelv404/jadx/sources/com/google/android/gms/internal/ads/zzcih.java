package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import app.tunnel.logger.utils.TrafficData;
import com.panda912.muddy.ObfuscatedString;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.NoRouteToHostException;
import java.net.ProtocolException;
import java.net.Socket;
import java.net.SocketException;
import java.net.URL;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

/* loaded from: classes2.dex */
final class zzcih extends zzgq implements zzht {
    private static final Pattern zzb = Pattern.compile(new ObfuscatedString(new long[]{2904580252071948480L, -9014152908902376329L, 5586083972797169856L, 8167233621416022245L, -2030113915126911168L}).toString());
    private static final AtomicReference zzc = new AtomicReference();
    private final SSLSocketFactory zzd;
    private final int zze;
    private final int zzf;
    private final String zzg;
    private final zzhs zzh;
    private zzhb zzi;
    private HttpURLConnection zzj;
    private InputStream zzk;
    private boolean zzl;
    private int zzm;
    private long zzn;
    private long zzo;
    private long zzp;
    private long zzq;
    private int zzr;
    private final Set zzs;

    public zzcih(String str, zzhy zzhyVar, int i, int i2, int i3) {
        super(true);
        this.zzd = new zzcig(this);
        this.zzs = new HashSet();
        zzek.zzc(str);
        this.zzg = str;
        this.zzh = new zzhs();
        this.zze = i;
        this.zzf = i2;
        this.zzr = i3;
        if (zzhyVar != null) {
            zzf(zzhyVar);
        }
    }

    private final void zzn() {
        HttpURLConnection httpURLConnection = this.zzj;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                zzcec.zzh(new ObfuscatedString(new long[]{-6725331040031937463L, -5516547460096538126L, 201309182922861997L, -7747700497923333693L, 7291625413576594501L, 2818331686319358698L}).toString(), e);
            }
            this.zzj = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzu
    public final int zza(byte[] bArr, int i, int i2) {
        try {
            if (this.zzp != this.zzn) {
                byte[] bArr2 = (byte[]) zzc.getAndSet(null);
                if (bArr2 == null) {
                    bArr2 = new byte[4096];
                }
                while (true) {
                    long j = this.zzp;
                    long j2 = this.zzn;
                    if (j != j2) {
                        int read = this.zzk.read(bArr2, 0, (int) Math.min(j2 - j, bArr2.length));
                        if (!Thread.interrupted()) {
                            if (read != -1) {
                                this.zzp += read;
                                zzg(read);
                            } else {
                                throw new EOFException();
                            }
                        } else {
                            throw new InterruptedIOException();
                        }
                    } else {
                        zzc.set(bArr2);
                        break;
                    }
                }
            }
            if (i2 == 0) {
                return 0;
            }
            long j3 = this.zzo;
            if (j3 != -1) {
                long j4 = j3 - this.zzq;
                if (j4 != 0) {
                    i2 = (int) Math.min(i2, j4);
                }
                return -1;
            }
            int read2 = this.zzk.read(bArr, i, i2);
            if (read2 == -1) {
                if (this.zzo == -1) {
                    return -1;
                }
                throw new EOFException();
            }
            this.zzq += read2;
            zzg(read2);
            return read2;
        } catch (IOException e) {
            throw new zzhp(e, this.zzi, TrafficData.INTERVAL_TIME, 2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x0154, code lost:
    
        if (r2 == 0) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0323 A[Catch: IOException -> 0x003b, TryCatch #4 {IOException -> 0x003b, blocks: (B:3:0x000e, B:4:0x0022, B:6:0x0028, B:8:0x0032, B:9:0x003f, B:10:0x0057, B:12:0x005d, B:19:0x0081, B:21:0x00b5, B:22:0x00c7, B:23:0x00d8, B:25:0x00ee, B:26:0x010e, B:39:0x013a, B:101:0x030c, B:103:0x0323, B:105:0x0340, B:108:0x0356, B:109:0x0372, B:113:0x037a, B:114:0x038e, B:117:0x038f, B:118:0x03b2), top: B:2:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x037a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ee A[Catch: IOException -> 0x003b, TryCatch #4 {IOException -> 0x003b, blocks: (B:3:0x000e, B:4:0x0022, B:6:0x0028, B:8:0x0032, B:9:0x003f, B:10:0x0057, B:12:0x005d, B:19:0x0081, B:21:0x00b5, B:22:0x00c7, B:23:0x00d8, B:25:0x00ee, B:26:0x010e, B:39:0x013a, B:101:0x030c, B:103:0x0323, B:105:0x0340, B:108:0x0356, B:109:0x0372, B:113:0x037a, B:114:0x038e, B:117:0x038f, B:118:0x03b2), top: B:2:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x028f  */
    @Override // com.google.android.gms.internal.ads.zzgw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long zzb(zzhb zzhbVar) {
        int responseCode;
        String headerField;
        long j;
        long parseLong;
        String headerField2;
        long j2;
        this.zzi = zzhbVar;
        long j3 = 0;
        this.zzq = 0L;
        this.zzp = 0L;
        try {
            URL url = new URL(zzhbVar.zza.toString());
            long j4 = zzhbVar.zzf;
            long j5 = zzhbVar.zzg;
            boolean zza = zzhbVar.zza(1);
            int i = 0;
            while (true) {
                int i2 = i + 1;
                if (i <= 20) {
                    HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                    if (httpURLConnection instanceof HttpsURLConnection) {
                        ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(this.zzd);
                    }
                    httpURLConnection.setConnectTimeout(this.zze);
                    httpURLConnection.setReadTimeout(this.zzf);
                    for (Map.Entry entry : this.zzh.zza().entrySet()) {
                        httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                    }
                    if (j4 == j3) {
                        if (j5 != -1) {
                        }
                        httpURLConnection.setRequestProperty(new ObfuscatedString(new long[]{6617920606043662352L, 4417247477495665240L, -7608746016716159472L}).toString(), this.zzg);
                        if (!zza) {
                            httpURLConnection.setRequestProperty(new ObfuscatedString(new long[]{-5220060121608851778L, -9055819790737564019L, -5513531384772295144L}).toString(), new ObfuscatedString(new long[]{5044637149613945707L, -8675276538083553430L}).toString());
                        }
                        httpURLConnection.setInstanceFollowRedirects(false);
                        httpURLConnection.setDoOutput(false);
                        httpURLConnection.connect();
                        responseCode = httpURLConnection.getResponseCode();
                        if (responseCode == 300 && responseCode != 301 && responseCode != 302 && responseCode != 303 && responseCode != 307 && responseCode != 308) {
                            this.zzj = httpURLConnection;
                            try {
                                int responseCode2 = httpURLConnection.getResponseCode();
                                this.zzm = responseCode2;
                                if (responseCode2 >= 200 && responseCode2 <= 299) {
                                    if (responseCode2 == 200) {
                                        j = zzhbVar.zzf;
                                    }
                                    j = 0;
                                    this.zzn = j;
                                    if (!zzhbVar.zza(1)) {
                                        long j6 = zzhbVar.zzg;
                                        if (j6 != -1) {
                                            this.zzo = j6;
                                        } else {
                                            HttpURLConnection httpURLConnection2 = this.zzj;
                                            String headerField3 = httpURLConnection2.getHeaderField(new ObfuscatedString(new long[]{-7963778069402648590L, 6812701976918540621L, 606622070392354498L}).toString());
                                            if (!TextUtils.isEmpty(headerField3)) {
                                                try {
                                                    parseLong = Long.parseLong(headerField3);
                                                } catch (NumberFormatException unused) {
                                                    zzcec.zzg(new ObfuscatedString(new long[]{4004431630455877967L, 2000235046273851311L, -6287896072142059152L, -4047125423427450575L, 1907498089115117131L}).toString() + headerField3 + new ObfuscatedString(new long[]{7220549649355477535L, 5017210745924364400L}).toString());
                                                }
                                                headerField2 = httpURLConnection2.getHeaderField(new ObfuscatedString(new long[]{-7633305982521243330L, 5706249802898144009L, 7520850277800450755L}).toString());
                                                if (!TextUtils.isEmpty(headerField2)) {
                                                    Matcher matcher = zzb.matcher(headerField2);
                                                    if (matcher.find()) {
                                                        try {
                                                            long parseLong2 = (Long.parseLong(matcher.group(2)) - Long.parseLong(matcher.group(1))) + 1;
                                                            if (parseLong < 0) {
                                                                parseLong = parseLong2;
                                                            } else if (parseLong != parseLong2) {
                                                                zzcec.zzj(new ObfuscatedString(new long[]{-9090548896958253365L, -3813361269923725757L, -7146999889134847498L, -4883684585923588115L}).toString() + headerField3 + new ObfuscatedString(new long[]{8848866081794242868L, 4136758729302957698L}).toString() + headerField2 + new ObfuscatedString(new long[]{2939910695048411740L, 4625269166950595019L}).toString());
                                                                parseLong = Math.max(parseLong, parseLong2);
                                                            }
                                                        } catch (NumberFormatException unused2) {
                                                            zzcec.zzg(new ObfuscatedString(new long[]{8026735735620598434L, 4605532846730048894L, 8648681451138801212L, -4499526186606627215L, -4388190694536117453L}).toString() + headerField2 + new ObfuscatedString(new long[]{7040597962321689037L, 6060506634098675413L}).toString());
                                                        }
                                                    }
                                                }
                                                if (parseLong == -1) {
                                                    j2 = parseLong - this.zzn;
                                                } else {
                                                    j2 = -1;
                                                }
                                                this.zzo = j2;
                                            }
                                            parseLong = -1;
                                            headerField2 = httpURLConnection2.getHeaderField(new ObfuscatedString(new long[]{-7633305982521243330L, 5706249802898144009L, 7520850277800450755L}).toString());
                                            if (!TextUtils.isEmpty(headerField2)) {
                                            }
                                            if (parseLong == -1) {
                                            }
                                            this.zzo = j2;
                                        }
                                    } else {
                                        this.zzo = zzhbVar.zzg;
                                    }
                                    try {
                                        this.zzk = this.zzj.getInputStream();
                                        this.zzl = true;
                                        zzj(zzhbVar);
                                        return this.zzo;
                                    } catch (IOException e) {
                                        zzn();
                                        throw new zzhp(e, zzhbVar, TrafficData.INTERVAL_TIME, 1);
                                    }
                                }
                                Map<String, List<String>> headerFields = this.zzj.getHeaderFields();
                                zzn();
                                zzhr zzhrVar = new zzhr(this.zzm, null, null, headerFields, zzhbVar, zzfy.zzf);
                                if (this.zzm == 416) {
                                    zzhrVar.initCause(new zzgx(2008));
                                    throw zzhrVar;
                                }
                                throw zzhrVar;
                            } catch (IOException e2) {
                                zzn();
                                throw new zzhp(new ObfuscatedString(new long[]{5428462571808106867L, 2286366936623640787L, 4125730143307962381L, 1170841199146686524L}).toString().concat(String.valueOf(zzhbVar.zza.toString())), e2, zzhbVar, TrafficData.INTERVAL_TIME, 1);
                            }
                        }
                        headerField = httpURLConnection.getHeaderField(new ObfuscatedString(new long[]{2271033604898363213L, 5948163937783105197L}).toString());
                        httpURLConnection.disconnect();
                        if (headerField == null) {
                            URL url2 = new URL(url, headerField);
                            String protocol = url2.getProtocol();
                            if (!new ObfuscatedString(new long[]{-3637709003345247620L, 3032180443279746038L}).toString().equals(protocol) && !new ObfuscatedString(new long[]{-7605983259165645729L, 1522509968103895940L}).toString().equals(protocol)) {
                                throw new ProtocolException(new ObfuscatedString(new long[]{8486354788683353663L, -2386428864099618863L, 4980301866281981074L, -5758158375255617038L, -5282900975949916024L}).toString().concat(String.valueOf(protocol)));
                            }
                            i = i2;
                            url = url2;
                            j3 = 0;
                        } else {
                            throw new ProtocolException(new ObfuscatedString(new long[]{7865348268838420695L, -5392128621795391934L, -5176161843436076655L, 7841148596104911110L}).toString());
                        }
                    } else {
                        j3 = j4;
                    }
                    String str = new ObfuscatedString(new long[]{8989602178298845778L, 6578170759313121393L}).toString() + j3 + new ObfuscatedString(new long[]{-6470595686637627219L, -1803458029202543566L}).toString();
                    if (j5 != -1) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(str);
                        sb.append((j3 + j5) - 1);
                        str = sb.toString();
                    }
                    httpURLConnection.setRequestProperty(new ObfuscatedString(new long[]{-1237231921709374118L, -2968114586082603099L}).toString(), str);
                    httpURLConnection.setRequestProperty(new ObfuscatedString(new long[]{6617920606043662352L, 4417247477495665240L, -7608746016716159472L}).toString(), this.zzg);
                    if (!zza) {
                    }
                    httpURLConnection.setInstanceFollowRedirects(false);
                    httpURLConnection.setDoOutput(false);
                    httpURLConnection.connect();
                    responseCode = httpURLConnection.getResponseCode();
                    if (responseCode == 300) {
                    }
                    headerField = httpURLConnection.getHeaderField(new ObfuscatedString(new long[]{2271033604898363213L, 5948163937783105197L}).toString());
                    httpURLConnection.disconnect();
                    if (headerField == null) {
                    }
                } else {
                    throw new NoRouteToHostException(new ObfuscatedString(new long[]{-5936497692959741273L, 4526085984421720316L, -836085528538448114L, 162731655650556167L}).toString() + i2);
                }
            }
        } catch (IOException e3) {
            throw new zzhp(new ObfuscatedString(new long[]{6471395090250244361L, 3476917982486490902L, -5088815476137396550L, -1338484217293600475L}).toString().concat(String.valueOf(zzhbVar.zza.toString())), e3, zzhbVar, TrafficData.INTERVAL_TIME, 1);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    @Nullable
    public final Uri zzc() {
        HttpURLConnection httpURLConnection = this.zzj;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final void zzd() {
        try {
            InputStream inputStream = this.zzk;
            if (inputStream != null) {
                int i = zzfy.zza;
                try {
                    inputStream.close();
                } catch (IOException e) {
                    throw new zzhp(e, this.zzi, TrafficData.INTERVAL_TIME, 3);
                }
            }
        } finally {
            this.zzk = null;
            zzn();
            if (this.zzl) {
                this.zzl = false;
                zzh();
            }
            this.zzs.clear();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgq, com.google.android.gms.internal.ads.zzgw
    @Nullable
    public final Map zze() {
        HttpURLConnection httpURLConnection = this.zzj;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }

    public final void zzm(int i) {
        this.zzr = i;
        for (Socket socket : this.zzs) {
            if (!socket.isClosed()) {
                try {
                    socket.setReceiveBufferSize(this.zzr);
                } catch (SocketException e) {
                    zzcec.zzk(new ObfuscatedString(new long[]{6098989650107384726L, 3058223377906561166L, 5637553628027599953L, 8205375793803919214L, 2652487330880061137L, -1310771199608762030L}).toString(), e);
                }
            }
        }
    }
}
