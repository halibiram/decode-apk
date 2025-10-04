package com.google.android.gms.internal.ads;

import android.net.TrafficStats;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* loaded from: classes2.dex */
public final class zzceh implements zzcdu {

    @Nullable
    private final String zza;

    public zzceh(@Nullable String str) {
        this.zza = str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00c1, code lost:
    
        if (com.google.android.gms.common.util.ClientLibraryUtils.isPackageSide() == false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x014f, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x014c, code lost:
    
        android.net.TrafficStats.clearThreadStatsTag();
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x010b, code lost:
    
        if (com.google.android.gms.common.util.ClientLibraryUtils.isPackageSide() != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x014a, code lost:
    
        if (com.google.android.gms.common.util.ClientLibraryUtils.isPackageSide() == false) goto L41;
     */
    @Override // com.google.android.gms.internal.ads.zzcdu
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zza(String str) {
        boolean z = false;
        try {
            try {
                if (ClientLibraryUtils.isPackageSide()) {
                    TrafficStats.setThreadStatsTag(263);
                }
                zzcec.zze(new ObfuscatedString(new long[]{8029143620281348121L, -8279129885910885365L, -607243753386241700L}).toString() + str);
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                try {
                    com.google.android.gms.ads.internal.client.zzay.zzb();
                    String str2 = this.zza;
                    httpURLConnection.setConnectTimeout(60000);
                    httpURLConnection.setInstanceFollowRedirects(true);
                    httpURLConnection.setReadTimeout(60000);
                    if (str2 != null) {
                        httpURLConnection.setRequestProperty(new ObfuscatedString(new long[]{3100781924386740105L, -2011636074108000981L, 4673722135399578940L}).toString(), str2);
                    }
                    httpURLConnection.setUseCaches(false);
                    zzceb zzcebVar = new zzceb(null);
                    zzcebVar.zzc(httpURLConnection, null);
                    int responseCode = httpURLConnection.getResponseCode();
                    zzcebVar.zze(httpURLConnection, responseCode);
                    if (responseCode >= 200 && responseCode < 300) {
                        z = true;
                    }
                    zzcec.zzj(new ObfuscatedString(new long[]{-8966156282474476242L, -3166584834475146602L, 4070232493687793677L, 4245492264137882042L, -2212137122242438350L, 1932619689982200106L}).toString() + responseCode + new ObfuscatedString(new long[]{289949267885069496L, -8187618797491823015L, -4306414331842787157L, -524857564143076239L}).toString() + str);
                } finally {
                    httpURLConnection.disconnect();
                }
            } catch (Throwable th) {
                if (ClientLibraryUtils.isPackageSide()) {
                    TrafficStats.clearThreadStatsTag();
                }
                throw th;
            }
        } catch (IOException e) {
            e = e;
            zzcec.zzj(new ObfuscatedString(new long[]{-6283513511870453350L, -5921781380128385133L, -7164966749148948146L, 2416287780036984950L, -1647420923179714137L}).toString() + str + new ObfuscatedString(new long[]{-5863085729145082487L, -6288812016318622265L}).toString() + e.getMessage());
        } catch (IndexOutOfBoundsException e2) {
            zzcec.zzj(new ObfuscatedString(new long[]{-1279060190794733337L, -3945000290382320165L, 1003631568411470816L, 2070336555390048344L, -3697113072891960119L}).toString() + str + new ObfuscatedString(new long[]{8505551911594130054L, 334752582929141559L}).toString() + e2.getMessage());
        } catch (RuntimeException e3) {
            e = e3;
            zzcec.zzj(new ObfuscatedString(new long[]{-6283513511870453350L, -5921781380128385133L, -7164966749148948146L, 2416287780036984950L, -1647420923179714137L}).toString() + str + new ObfuscatedString(new long[]{-5863085729145082487L, -6288812016318622265L}).toString() + e.getMessage());
        }
    }

    public zzceh() {
        this.zza = null;
    }
}
