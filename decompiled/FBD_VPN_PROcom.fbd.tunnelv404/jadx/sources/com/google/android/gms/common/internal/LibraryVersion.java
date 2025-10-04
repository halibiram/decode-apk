package com.google.android.gms.common.internal;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.IOUtils;
import com.panda912.muddy.ObfuscatedString;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

@KeepForSdk
@Deprecated
/* loaded from: classes2.dex */
public class LibraryVersion {
    private static final GmsLogger zza = new GmsLogger(new ObfuscatedString(new long[]{2439126293258991091L, -5205011988161670182L, 1780953201036223299L}).toString(), new ObfuscatedString(new long[]{3345409799244946552L}).toString());
    private static final LibraryVersion zzb = new LibraryVersion();
    private final ConcurrentHashMap zzc = new ConcurrentHashMap();

    @VisibleForTesting
    public LibraryVersion() {
    }

    @NonNull
    @KeepForSdk
    public static LibraryVersion getInstance() {
        return zzb;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0110  */
    /* JADX WARN: Type inference failed for: r4v11, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.lang.Object, java.lang.String] */
    @NonNull
    @KeepForSdk
    @Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String getVersion(@NonNull String str) {
        Object obj;
        InputStream inputStream;
        Preconditions.checkNotEmpty(str, new ObfuscatedString(new long[]{5686445819898106118L, 293113960553414193L, -5641215753568566305L, -2608166692003644250L, -3992403515186493528L, -547259522287737476L}).toString());
        if (this.zzc.containsKey(str)) {
            return (String) this.zzc.get(str);
        }
        Properties properties = new Properties();
        ?? r4 = 0;
        r4 = 0;
        r4 = 0;
        InputStream inputStream2 = null;
        try {
            try {
                inputStream = LibraryVersion.class.getResourceAsStream(String.format(new ObfuscatedString(new long[]{2188858606132585731L, -3219351903980447436L, 337066950966096617L}).toString(), str));
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e) {
            e = e;
            obj = null;
        }
        try {
            if (inputStream != null) {
                properties.load(inputStream);
                String property = properties.getProperty(new ObfuscatedString(new long[]{-9042250141614367144L, -3592943449712115240L}).toString(), null);
                zza.v(new ObfuscatedString(new long[]{-5130115729101810610L, 7698019286566895620L, 5639000811954058944L}).toString(), str + new ObfuscatedString(new long[]{8318202176722165940L, -4899928417962538504L, -5742207917923959050L}).toString() + property);
                r4 = property;
            } else {
                zza.w(new ObfuscatedString(new long[]{4287504507776059173L, 5769853355912346680L, -804933486567555287L}).toString(), new ObfuscatedString(new long[]{430721505824868286L, -3943967761437043874L, -495121043187985010L, -8696271981372479637L, 1115846597776948827L, 588205301456086734L, 6306510051389883976L}).toString() + str);
            }
        } catch (IOException e2) {
            e = e2;
            obj = r4;
            inputStream2 = inputStream;
            zza.e(new ObfuscatedString(new long[]{-2866993891725479844L, -6078313489314801720L, -7922165470884370789L}).toString(), new ObfuscatedString(new long[]{5699735095010752696L, 7953692079902429230L, 6708003204500717606L, 6260391036087088097L, -7296069950289691979L, 9137479638308283824L, 5303609474169851478L}).toString() + str, e);
            Object obj2 = obj;
            inputStream = inputStream2;
            r4 = obj2;
            if (inputStream != null) {
            }
            if (r4 == 0) {
            }
            this.zzc.put(str, r4);
            return r4;
        } catch (Throwable th2) {
            th = th2;
            r4 = inputStream;
            if (r4 != 0) {
                IOUtils.closeQuietly((Closeable) r4);
            }
            throw th;
        }
        if (inputStream != null) {
            IOUtils.closeQuietly(inputStream);
        }
        if (r4 == 0) {
            zza.d(new ObfuscatedString(new long[]{-357661174668356554L, -7430574022890744171L, 8313843193388226728L}).toString(), new ObfuscatedString(new long[]{5385173749788552767L, -191949238916849841L, -2304533777911823846L, -1020289374634635824L, 7839017479132640676L, -9189931142201280232L, 7592349762877074125L, 5764736308313025591L, 4310043845647353314L, -4688622895583201687L, -6840251543942318903L, 8185980263548054734L, 6039392655280439168L, -2204501923826453380L, -2348151893915561315L, 1495543252223709656L, -6812491829915253474L, 6547567584178756824L, -4050215228427306718L, -6655113273386280009L, 4281873956749063379L, -686590880673349545L}).toString());
            r4 = new ObfuscatedString(new long[]{-4606770973300753117L, -7235866224975563724L}).toString();
        }
        this.zzc.put(str, r4);
        return r4;
    }
}
