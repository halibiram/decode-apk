package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import app.tunnel.logger.utils.TrafficData;
import com.panda912.muddy.ObfuscatedString;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.SequenceInputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
final class zzcja extends zzgq implements zzht {
    private static final Pattern zzb = Pattern.compile(new ObfuscatedString(new long[]{8668784577479268306L, 5602717581818668459L, 8345544414426710675L, 4803465182795722775L, -1413677614396506605L}).toString());
    private final int zzc;
    private final int zzd;
    private final String zze;
    private final zzhs zzf;
    private zzhb zzg;
    private HttpURLConnection zzh;
    private final Queue zzi;
    private InputStream zzj;
    private boolean zzk;
    private int zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private long zzp;
    private long zzq;
    private final long zzr;
    private final long zzs;

    public zzcja(String str, zzhy zzhyVar, int i, int i2, long j, long j2) {
        super(true);
        zzek.zzc(str);
        this.zze = str;
        this.zzf = new zzhs();
        this.zzc = i;
        this.zzd = i2;
        this.zzi = new ArrayDeque();
        this.zzr = j;
        this.zzs = j2;
        if (zzhyVar != null) {
            zzf(zzhyVar);
        }
    }

    private final void zzl() {
        while (!this.zzi.isEmpty()) {
            try {
                ((HttpURLConnection) this.zzi.remove()).disconnect();
            } catch (Exception e) {
                zzcec.zzh(new ObfuscatedString(new long[]{-7395623064169792707L, 4345676862732557599L, 3339902524829966844L, 8363564124259294331L, -7227079695456015720L, -4634973262880737970L}).toString(), e);
            }
        }
        this.zzh = null;
    }

    @Override // com.google.android.gms.internal.ads.zzu
    public final int zza(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        try {
            long j = this.zzm;
            long j2 = this.zzn;
            if (j - j2 == 0) {
                return -1;
            }
            long j3 = this.zzo + j2;
            long j4 = i2;
            long j5 = j3 + j4 + this.zzs;
            long j6 = this.zzq;
            long j7 = j6 + 1;
            if (j5 > j7) {
                long j8 = this.zzp;
                if (j6 < j8) {
                    long min = Math.min(j8, Math.max(((this.zzr + j7) - r3) - 1, (-1) + j7 + j4));
                    zzk(j7, min, 2);
                    this.zzq = min;
                    j6 = min;
                }
            }
            int read = this.zzj.read(bArr, i, (int) Math.min(j4, ((j6 + 1) - this.zzo) - this.zzn));
            if (read != -1) {
                this.zzn += read;
                zzg(read);
                return read;
            }
            throw new EOFException();
        } catch (IOException e) {
            throw new zzhp(e, this.zzg, TrafficData.INTERVAL_TIME, 2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final long zzb(zzhb zzhbVar) {
        long min;
        this.zzg = zzhbVar;
        this.zzn = 0L;
        long j = zzhbVar.zzf;
        long j2 = zzhbVar.zzg;
        if (j2 == -1) {
            min = this.zzr;
        } else {
            min = Math.min(this.zzr, j2);
        }
        this.zzo = j;
        HttpURLConnection zzk = zzk(j, (min + j) - 1, 1);
        this.zzh = zzk;
        String headerField = zzk.getHeaderField(new ObfuscatedString(new long[]{2758467248066434743L, 8637415969983183783L, 2920276548254913495L}).toString());
        if (!TextUtils.isEmpty(headerField)) {
            Matcher matcher = zzb.matcher(headerField);
            if (matcher.find()) {
                try {
                    Long.parseLong(matcher.group(1));
                    long parseLong = Long.parseLong(matcher.group(2));
                    long parseLong2 = Long.parseLong(matcher.group(3));
                    long j3 = zzhbVar.zzg;
                    if (j3 != -1) {
                        this.zzm = j3;
                        this.zzp = Math.max(parseLong, (this.zzo + j3) - 1);
                    } else {
                        this.zzm = parseLong2 - this.zzo;
                        this.zzp = parseLong2 - 1;
                    }
                    this.zzq = parseLong;
                    this.zzk = true;
                    zzj(zzhbVar);
                    return this.zzm;
                } catch (NumberFormatException unused) {
                    zzcec.zzg(new ObfuscatedString(new long[]{-5567614153365167144L, 8723089505641914873L, -3803651140883116373L, -1488900120510571855L, 456365574152032695L}).toString() + headerField + new ObfuscatedString(new long[]{2606332183726231059L, -4383329067402145391L}).toString());
                }
            }
        }
        throw new zzciy(headerField, zzhbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    @Nullable
    public final Uri zzc() {
        HttpURLConnection httpURLConnection = this.zzh;
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
                try {
                    inputStream.close();
                } catch (IOException e) {
                    throw new zzhp(e, this.zzg, TrafficData.INTERVAL_TIME, 3);
                }
            }
        } finally {
            this.zzj = null;
            zzl();
            if (this.zzk) {
                this.zzk = false;
                zzh();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgq, com.google.android.gms.internal.ads.zzgw
    @Nullable
    public final Map zze() {
        HttpURLConnection httpURLConnection = this.zzh;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }

    @VisibleForTesting
    public final HttpURLConnection zzk(long j, long j2, int i) {
        String uri = this.zzg.zza.toString();
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(uri).openConnection();
            httpURLConnection.setConnectTimeout(this.zzc);
            httpURLConnection.setReadTimeout(this.zzd);
            for (Map.Entry entry : this.zzf.zza().entrySet()) {
                httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
            httpURLConnection.setRequestProperty(new ObfuscatedString(new long[]{6049601358758822735L, 5276857579719727400L}).toString(), new ObfuscatedString(new long[]{4623965302579227030L, -6235099501111657127L}).toString() + j + new ObfuscatedString(new long[]{-7613038280653121237L, -5091485445877111036L}).toString() + j2);
            httpURLConnection.setRequestProperty(new ObfuscatedString(new long[]{-1642540137144694023L, 3074091220459583236L, -3082426544226935316L}).toString(), this.zze);
            httpURLConnection.setRequestProperty(new ObfuscatedString(new long[]{-282690749438667351L, 2670068920667641117L, 854639269254430019L}).toString(), new ObfuscatedString(new long[]{7736304813376443126L, 2487705985927320752L}).toString());
            httpURLConnection.setRequestMethod(new ObfuscatedString(new long[]{2093570988311346460L, 527238936453293143L}).toString());
            httpURLConnection.connect();
            this.zzi.add(httpURLConnection);
            String uri2 = this.zzg.zza.toString();
            try {
                int responseCode = httpURLConnection.getResponseCode();
                this.zzl = responseCode;
                if (responseCode >= 200 && responseCode <= 299) {
                    try {
                        InputStream inputStream = httpURLConnection.getInputStream();
                        if (this.zzj != null) {
                            inputStream = new SequenceInputStream(this.zzj, inputStream);
                        }
                        this.zzj = inputStream;
                        return httpURLConnection;
                    } catch (IOException e) {
                        zzl();
                        throw new zzhp(e, this.zzg, TrafficData.INTERVAL_TIME, i);
                    }
                }
                Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
                zzl();
                throw new zzciz(this.zzl, headerFields, this.zzg, i);
            } catch (IOException e2) {
                zzl();
                throw new zzhp(new ObfuscatedString(new long[]{-6137316930010305858L, -4845270668820682662L, 7733314841214536557L, -6067312962142937911L}).toString().concat(String.valueOf(uri2)), e2, this.zzg, TrafficData.INTERVAL_TIME, i);
            }
        } catch (IOException e3) {
            throw new zzhp(new ObfuscatedString(new long[]{-8600298073602550816L, -1969135376586034065L, -4358254851506478469L, -8619379102738532345L}).toString().concat(String.valueOf(uri)), e3, this.zzg, TrafficData.INTERVAL_TIME, i);
        }
    }
}
