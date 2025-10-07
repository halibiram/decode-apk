package com.google.android.gms.ads.identifier;

import androidx.annotation.WorkerThread;
import com.google.android.gms.internal.ads_identifier.zzi;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* loaded from: classes2.dex */
public final class zzc {
    @WorkerThread
    public static final void zza(String str) {
        try {
            try {
                zzi.zzb(263);
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                try {
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode < 200 || responseCode >= 300) {
                        new ObfuscatedString(new long[]{-9018059522648295373L, -6883824289355248092L, 4170546324395740157L}).toString();
                        new StringBuilder(String.valueOf(str).length() + 65);
                        new ObfuscatedString(new long[]{-4129094331823876482L, 6134939166982261246L, -7388238002744902686L, 8288888469859526343L, 6480774468554919719L, 4263983726132085726L}).toString();
                        new ObfuscatedString(new long[]{-5682589244968195359L, -6767279636496629262L, 2990536042430988603L, 659829714808322753L}).toString();
                    }
                    zzi.zza();
                } finally {
                    httpURLConnection.disconnect();
                }
            } catch (IOException e) {
                e = e;
                new ObfuscatedString(new long[]{1230002504587509396L, 2425166263518586657L, 4259924246819657811L}).toString();
                new StringBuilder(String.valueOf(str).length() + 27 + String.valueOf(e.getMessage()).length());
                new ObfuscatedString(new long[]{-2325677675684966787L, 599087850587102530L, -6874232959350071889L, -446575668566345629L, -575778491144963741L}).toString();
                new ObfuscatedString(new long[]{180711436431697597L, -732184556423666130L}).toString();
                zzi.zza();
            } catch (IndexOutOfBoundsException e2) {
                new ObfuscatedString(new long[]{-5346273037083871470L, 5778743280190694741L, 6413383892679783344L}).toString();
                new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(e2.getMessage()).length());
                new ObfuscatedString(new long[]{4007520754564790253L, 6711961050911435243L, -1991081754390858377L, 8306224663898373540L, 4333974152223289941L}).toString();
                new ObfuscatedString(new long[]{6737473619435050399L, -7049498913781982931L}).toString();
                zzi.zza();
            } catch (RuntimeException e3) {
                e = e3;
                new ObfuscatedString(new long[]{1230002504587509396L, 2425166263518586657L, 4259924246819657811L}).toString();
                new StringBuilder(String.valueOf(str).length() + 27 + String.valueOf(e.getMessage()).length());
                new ObfuscatedString(new long[]{-2325677675684966787L, 599087850587102530L, -6874232959350071889L, -446575668566345629L, -575778491144963741L}).toString();
                new ObfuscatedString(new long[]{180711436431697597L, -732184556423666130L}).toString();
                zzi.zza();
            }
        } catch (Throwable th) {
            zzi.zza();
            throw th;
        }
    }
}
