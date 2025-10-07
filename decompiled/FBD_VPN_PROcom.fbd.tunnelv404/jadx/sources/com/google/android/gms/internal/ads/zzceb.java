package com.google.android.gms.internal.ads;

import android.util.JsonWriter;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;
import java.io.StringWriter;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

/* loaded from: classes2.dex */
public final class zzceb {
    public static final /* synthetic */ int zza = 0;

    @GuardedBy("lock")
    private static boolean zzc = false;

    @GuardedBy("lock")
    private static boolean zzd = false;
    private final List zzg;
    private static final Object zzb = new Object();
    private static final Clock zze = DefaultClock.getInstance();
    private static final Set zzf = new HashSet(Arrays.asList(new String[0]));

    public zzceb() {
        this(null);
    }

    public static /* synthetic */ void zza(String str, String str2, Map map, byte[] bArr, JsonWriter jsonWriter) {
        jsonWriter.name(new ObfuscatedString(new long[]{2314478975820760147L, 1621601611567227957L}).toString()).beginObject();
        jsonWriter.name(new ObfuscatedString(new long[]{-3072649160431779058L, -7457093585505500792L, 7033449874019307227L}).toString()).beginObject();
        jsonWriter.name(new ObfuscatedString(new long[]{-2396334620301262477L, 764149173927407621L}).toString()).value(str);
        jsonWriter.name(new ObfuscatedString(new long[]{847112979637213465L, -4088584428119123363L}).toString()).value(str2);
        jsonWriter.endObject();
        zzr(jsonWriter, map);
        if (bArr != null) {
            jsonWriter.name(new ObfuscatedString(new long[]{1577664364373711264L, -167260710269966961L}).toString()).value(Base64Utils.encode(bArr));
        }
        jsonWriter.endObject();
    }

    public static /* synthetic */ void zzb(int i, Map map, JsonWriter jsonWriter) {
        jsonWriter.name(new ObfuscatedString(new long[]{4792162056359021953L, -1466815288195302081L}).toString()).beginObject();
        jsonWriter.name(new ObfuscatedString(new long[]{-3684598820652949401L, -3383172924453788765L, 1537167025920774946L}).toString()).beginObject();
        jsonWriter.name(new ObfuscatedString(new long[]{9168541644437320967L, 5576504002914421168L}).toString()).value(i);
        jsonWriter.endObject();
        zzr(jsonWriter, map);
        jsonWriter.endObject();
    }

    public static void zzi() {
        synchronized (zzb) {
            zzc = false;
            zzd = false;
            zzcec.zzj(new ObfuscatedString(new long[]{-7616171356350120982L, 7216409360198321250L, -3996492936041739071L, -8519247729328375640L, 6690541799973781999L, 8877853785267412831L, 6703609778719333588L}).toString());
        }
    }

    public static void zzj(boolean z) {
        synchronized (zzb) {
            zzc = true;
            zzd = z;
        }
    }

    public static boolean zzk() {
        boolean z;
        synchronized (zzb) {
            try {
                z = false;
                if (zzc && zzd) {
                    z = true;
                }
            } finally {
            }
        }
        return z;
    }

    public static boolean zzl() {
        boolean z;
        synchronized (zzb) {
            z = zzc;
        }
        return z;
    }

    private static synchronized void zzm(String str) {
        synchronized (zzceb.class) {
            try {
                zzcec.zzi(new ObfuscatedString(new long[]{-6648180263949386654L, 5360207365133052220L, -2852642727992720119L}).toString());
                int i = 0;
                while (i < str.length()) {
                    int i2 = i + 4000;
                    zzcec.zzi(new ObfuscatedString(new long[]{2738634679008184698L, -3893578368327173650L, -5506869372175683291L, 5136800843912353330L}).toString().concat(String.valueOf(str.substring(i, Math.min(i2, str.length())))));
                    i = i2;
                }
                zzcec.zzi(new ObfuscatedString(new long[]{-2012889268950628395L, -2746336728586316108L, 3516612286578623805L}).toString());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void zzn(String str, zzcea zzceaVar) {
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            jsonWriter.beginObject();
            jsonWriter.name(new ObfuscatedString(new long[]{-7924079703926226946L, -2597732777349173810L, 3437474937964845048L}).toString()).value(zze.currentTimeMillis());
            jsonWriter.name(new ObfuscatedString(new long[]{4282413411657131337L, -4109220636089360089L}).toString()).value(str);
            jsonWriter.name(new ObfuscatedString(new long[]{2416104491946085650L, -3413970252472083262L, 8724823195192279352L}).toString()).beginArray();
            Iterator it = this.zzg.iterator();
            while (it.hasNext()) {
                jsonWriter.value((String) it.next());
            }
            jsonWriter.endArray();
            zzceaVar.zza(jsonWriter);
            jsonWriter.endObject();
            jsonWriter.flush();
            jsonWriter.close();
        } catch (IOException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{3500073375105203732L, 3084926816989340417L, 4617662276423723014L}).toString(), e);
        }
        zzm(stringWriter.toString());
    }

    private final void zzo(@Nullable final String str) {
        zzn(new ObfuscatedString(new long[]{-2960077676242431316L, 8758892799257856237L, -7955246539469137310L, 9112669878799875540L}).toString(), new zzcea() { // from class: com.google.android.gms.internal.ads.zzcdy
            @Override // com.google.android.gms.internal.ads.zzcea
            public final void zza(JsonWriter jsonWriter) {
                int i = zzceb.zza;
                jsonWriter.name(new ObfuscatedString(new long[]{-3478466019238719464L, 7949713188808349287L}).toString()).beginObject();
                String str2 = str;
                if (str2 != null) {
                    jsonWriter.name(new ObfuscatedString(new long[]{-7638433348998577354L, 1202341122108556041L, -1020016270095057330L, 3400441760908536801L}).toString()).value(str2);
                }
                jsonWriter.endObject();
            }
        });
    }

    private final void zzp(final String str, final String str2, @Nullable final Map map, @Nullable final byte[] bArr) {
        zzn(new ObfuscatedString(new long[]{-5559167277863274688L, -3969288861530533824L, 6946475802071679491L}).toString(), new zzcea() { // from class: com.google.android.gms.internal.ads.zzcdw
            @Override // com.google.android.gms.internal.ads.zzcea
            public final void zza(JsonWriter jsonWriter) {
                zzceb.zza(str, str2, map, bArr, jsonWriter);
            }
        });
    }

    private final void zzq(@Nullable final Map map, final int i) {
        zzn(new ObfuscatedString(new long[]{2992262289386637579L, -8040235010162987383L, -7518918763332053212L, -6663021138847846037L}).toString(), new zzcea() { // from class: com.google.android.gms.internal.ads.zzcdz
            @Override // com.google.android.gms.internal.ads.zzcea
            public final void zza(JsonWriter jsonWriter) {
                zzceb.zzb(i, map, jsonWriter);
            }
        });
    }

    private static void zzr(JsonWriter jsonWriter, @Nullable Map map) {
        if (map == null) {
            return;
        }
        jsonWriter.name(new ObfuscatedString(new long[]{4601892539436004675L, -4911320003541763656L}).toString()).beginArray();
        Iterator it = map.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) it.next();
            String str = (String) entry.getKey();
            if (!zzf.contains(str)) {
                if (entry.getValue() instanceof List) {
                    for (String str2 : (List) entry.getValue()) {
                        jsonWriter.beginObject();
                        jsonWriter.name(new ObfuscatedString(new long[]{-8836902676824397522L, 4826965007120944400L}).toString()).value(str);
                        jsonWriter.name(new ObfuscatedString(new long[]{-6200872396113661219L, -8593576283323354217L}).toString()).value(str2);
                        jsonWriter.endObject();
                    }
                } else if (entry.getValue() instanceof String) {
                    jsonWriter.beginObject();
                    jsonWriter.name(new ObfuscatedString(new long[]{3364414973901226180L, -5178804559130334827L}).toString()).value(str);
                    jsonWriter.name(new ObfuscatedString(new long[]{8706722432882461387L, -6119691475095743673L}).toString()).value((String) entry.getValue());
                    jsonWriter.endObject();
                } else {
                    zzcec.zzg(new ObfuscatedString(new long[]{-2697401145275748852L, 172202474940559659L, -7926365155313770989L, 3808220239521690814L, 2238350897546924120L, 1370164513835572959L, -4174287944209139175L, 5762438829184407208L, 6610552071976162992L, 6261264427017225563L, -7608818275091035388L, -6213986966098487155L}).toString());
                    break;
                }
            }
        }
        jsonWriter.endArray();
    }

    public final void zzc(HttpURLConnection httpURLConnection, @Nullable byte[] bArr) {
        HashMap hashMap;
        if (!zzk()) {
            return;
        }
        if (httpURLConnection.getRequestProperties() == null) {
            hashMap = null;
        } else {
            hashMap = new HashMap(httpURLConnection.getRequestProperties());
        }
        zzp(new String(httpURLConnection.getURL().toString()), new String(httpURLConnection.getRequestMethod()), hashMap, bArr);
    }

    public final void zzd(String str, String str2, @Nullable Map map, @Nullable byte[] bArr) {
        if (!zzk()) {
            return;
        }
        zzp(str, new ObfuscatedString(new long[]{-3384737169134949844L, -5082170704596163364L}).toString(), map, bArr);
    }

    public final void zze(HttpURLConnection httpURLConnection, int i) {
        HashMap hashMap;
        if (zzk()) {
            String str = null;
            if (httpURLConnection.getHeaderFields() == null) {
                hashMap = null;
            } else {
                hashMap = new HashMap(httpURLConnection.getHeaderFields());
            }
            zzq(hashMap, i);
            if (i >= 200 && i < 300) {
                return;
            }
            try {
                str = httpURLConnection.getResponseMessage();
            } catch (IOException e) {
                AbstractC0749x8313616e.m3347xe1f61061(new ObfuscatedString(new long[]{-2228841652802585566L, 895065744573570080L, -6863142841060481430L, 6527916322012172063L, -3293962380912154206L, 8952440109161131051L, -5547063599120246625L, 598706944846469507L}), String.valueOf(e.getMessage()));
            }
            zzo(str);
        }
    }

    public final void zzf(@Nullable Map map, int i) {
        if (zzk()) {
            zzq(map, i);
            if (i >= 200 && i < 300) {
                return;
            }
            zzo(null);
        }
    }

    public final void zzg(@Nullable String str) {
        if (zzk() && str != null) {
            zzh(str.getBytes());
        }
    }

    public final void zzh(final byte[] bArr) {
        zzn(new ObfuscatedString(new long[]{4490507611813885344L, -8556751797851394445L, 5790439525995046494L, -7360517708921551174L}).toString(), new zzcea() { // from class: com.google.android.gms.internal.ads.zzcdx
            @Override // com.google.android.gms.internal.ads.zzcea
            public final void zza(JsonWriter jsonWriter) {
                int i = zzceb.zza;
                jsonWriter.name(new ObfuscatedString(new long[]{-3495427074268706817L, 3312088229011227169L}).toString()).beginObject();
                byte[] bArr2 = bArr;
                int length = bArr2.length;
                String encode = Base64Utils.encode(bArr2);
                if (length < 10000) {
                    jsonWriter.name(new ObfuscatedString(new long[]{-6943149948056419732L, -3375808162154101902L}).toString()).value(encode);
                } else {
                    String zze2 = zzcdv.zze(encode);
                    if (zze2 != null) {
                        jsonWriter.name(new ObfuscatedString(new long[]{6495048910451378853L, 3357424234859512210L, 7948636224167058039L}).toString()).value(zze2);
                    }
                }
                jsonWriter.name(new ObfuscatedString(new long[]{-6808199324859373648L, 8315441172416757882L, -5077268131444428876L}).toString()).value(length);
                jsonWriter.endObject();
            }
        });
    }

    public zzceb(@Nullable String str) {
        List asList;
        if (!zzk()) {
            asList = new ArrayList();
        } else {
            asList = Arrays.asList(new ObfuscatedString(new long[]{-179647513463500480L, -2622932569926997817L, -984884891847013295L}).toString().concat(String.valueOf(UUID.randomUUID().toString())));
        }
        this.zzg = asList;
    }
}
