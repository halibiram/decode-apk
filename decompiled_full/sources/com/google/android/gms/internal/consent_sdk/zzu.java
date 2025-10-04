package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import android.app.Application;
import android.os.Handler;
import android.util.JsonReader;
import android.util.JsonWriter;
import android.util.Log;
import android.webkit.WebSettings;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.ump.ConsentDebugSettings;
import com.google.android.ump.ConsentInformation;
import com.google.android.ump.ConsentRequestParameters;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzu {
    private final Application zza;
    private final zzab zzb;
    private final Handler zzc;
    private final Executor zzd;
    private final zzap zze;
    private final zzbn zzf;
    private final zzl zzg;
    private final zzx zzh;
    private final zze zzi;

    public zzu(Application application, zzab zzabVar, Handler handler, Executor executor, zzap zzapVar, zzbn zzbnVar, zzl zzlVar, zzx zzxVar, zze zzeVar) {
        this.zza = application;
        this.zzb = zzabVar;
        this.zzc = handler;
        this.zzd = executor;
        this.zze = zzapVar;
        this.zzf = zzbnVar;
        this.zzg = zzlVar;
        this.zzh = zzxVar;
        this.zzi = zzeVar;
    }

    @WorkerThread
    private final zzck zzd(zzci zzciVar) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(new ObfuscatedString(new long[]{1298389396546352200L, 247015206285450058L, -344388362543212633L, -5065312345114260412L, -7443331357569161051L, -641028879046220768L, -6340963918863300638L, 6895309569892462691L}).toString()).openConnection();
            httpURLConnection.setRequestProperty(new ObfuscatedString(new long[]{-4293179016537738260L, -1934375732000516444L, 1049323161974545842L}).toString(), WebSettings.getDefaultUserAgent(this.zza));
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setReadTimeout(30000);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setRequestMethod(new ObfuscatedString(new long[]{-1076400392525822737L, -2437974272692724227L}).toString());
            httpURLConnection.setRequestProperty(new ObfuscatedString(new long[]{-3110129435124821840L, -4161333384324284558L, -6563251323893382333L}).toString(), new ObfuscatedString(new long[]{-5350429179642235467L, 1559984164272317632L, 4992857875068678719L}).toString());
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(httpURLConnection.getOutputStream(), new ObfuscatedString(new long[]{-943754856781132649L, -7716649936902782818L}).toString());
            try {
                JsonWriter jsonWriter = new JsonWriter(outputStreamWriter);
                try {
                    jsonWriter.beginObject();
                    String str = zzciVar.zza;
                    if (str != null) {
                        jsonWriter.name(new ObfuscatedString(new long[]{-1336339338604446670L, 6399768741430540348L, -7620264840114115496L}).toString());
                        jsonWriter.value(str);
                    }
                    zzce zzceVar = zzciVar.zzb;
                    if (zzceVar != null) {
                        jsonWriter.name(new ObfuscatedString(new long[]{-8870560255001121236L, 3766148359602502619L, -4541884578635092480L}).toString());
                        jsonWriter.beginObject();
                        int i = zzceVar.zzc;
                        if (i != 1) {
                            jsonWriter.name(new ObfuscatedString(new long[]{3436641334287855041L, -669381672372562706L}).toString());
                            int i2 = i - 1;
                            if (i2 != 0) {
                                if (i2 == 1) {
                                    jsonWriter.value(new ObfuscatedString(new long[]{-3964939279532347869L, -4955298577434349373L}).toString());
                                }
                            } else {
                                jsonWriter.value(new ObfuscatedString(new long[]{-3046333875319524719L, -2823828523651395489L}).toString());
                            }
                        }
                        String str2 = zzceVar.zza;
                        if (str2 != null) {
                            jsonWriter.name(new ObfuscatedString(new long[]{-9219848504550054765L, -2732920383883938818L}).toString());
                            jsonWriter.value(str2);
                        }
                        Integer num = zzceVar.zzb;
                        if (num != null) {
                            jsonWriter.name(new ObfuscatedString(new long[]{-5135845523500023528L, -5525534123501604536L, -8439559316699039651L, 7732617842491387869L}).toString());
                            jsonWriter.value(num);
                        }
                        jsonWriter.endObject();
                    }
                    String str3 = zzciVar.zzc;
                    if (str3 != null) {
                        jsonWriter.name(new ObfuscatedString(new long[]{1317431685146765168L, -6868640556538136807L, 889393623732956484L}).toString());
                        jsonWriter.value(str3);
                    }
                    Boolean bool = zzciVar.zzd;
                    if (bool != null) {
                        jsonWriter.name(new ObfuscatedString(new long[]{-8670755673241603538L, -2034581143563301526L, 6443180446090991639L, 2152994573807765901L, -1996193415796369790L}).toString());
                        jsonWriter.value(bool.booleanValue());
                    }
                    Map map = zzciVar.zze;
                    if (!map.isEmpty()) {
                        jsonWriter.name(new ObfuscatedString(new long[]{8989116884072997948L, 1008063404390373800L, -2425966859899881866L}).toString());
                        jsonWriter.beginObject();
                        for (Map.Entry entry : map.entrySet()) {
                            jsonWriter.name((String) entry.getKey());
                            jsonWriter.value((String) entry.getValue());
                        }
                        jsonWriter.endObject();
                    }
                    zzcg zzcgVar = zzciVar.zzf;
                    if (zzcgVar != null) {
                        jsonWriter.name(new ObfuscatedString(new long[]{4648589181747598820L, 1563769190686955640L, 1196493669227677992L}).toString());
                        jsonWriter.beginObject();
                        Integer num2 = zzcgVar.zza;
                        if (num2 != null) {
                            jsonWriter.name(new ObfuscatedString(new long[]{292681533440478783L, -8773185857432407612L}).toString());
                            jsonWriter.value(num2);
                        }
                        Integer num3 = zzcgVar.zzb;
                        if (num3 != null) {
                            jsonWriter.name(new ObfuscatedString(new long[]{-8898934933363087109L, -1275325489070874524L}).toString());
                            jsonWriter.value(num3);
                        }
                        Double d = zzcgVar.zzc;
                        if (d != null) {
                            jsonWriter.name(new ObfuscatedString(new long[]{7464008800089103708L, 3646246033048603461L}).toString());
                            jsonWriter.value(d);
                        }
                        List<zzcf> list = zzcgVar.zzd;
                        if (!list.isEmpty()) {
                            jsonWriter.name(new ObfuscatedString(new long[]{1600690187975961691L, -7702715240089937373L, 3169853013247983047L}).toString());
                            jsonWriter.beginArray();
                            for (zzcf zzcfVar : list) {
                                jsonWriter.beginObject();
                                Integer num4 = zzcfVar.zza;
                                if (num4 != null) {
                                    jsonWriter.name(new ObfuscatedString(new long[]{1351031347491075008L, 951821017052976699L}).toString());
                                    jsonWriter.value(num4);
                                }
                                Integer num5 = zzcfVar.zzb;
                                if (num5 != null) {
                                    jsonWriter.name(new ObfuscatedString(new long[]{4981306789441191363L, 459656442443914870L}).toString());
                                    jsonWriter.value(num5);
                                }
                                Integer num6 = zzcfVar.zzc;
                                if (num6 != null) {
                                    jsonWriter.name(new ObfuscatedString(new long[]{2824415469106421267L, -6386325769445699805L}).toString());
                                    jsonWriter.value(num6);
                                }
                                Integer num7 = zzcfVar.zzd;
                                if (num7 != null) {
                                    jsonWriter.name(new ObfuscatedString(new long[]{1066453402326071300L, 133687704913385414L}).toString());
                                    jsonWriter.value(num7);
                                }
                                jsonWriter.endObject();
                            }
                            jsonWriter.endArray();
                        }
                        jsonWriter.endObject();
                    }
                    zzcc zzccVar = zzciVar.zzg;
                    if (zzccVar != null) {
                        jsonWriter.name(new ObfuscatedString(new long[]{918335632507351360L, -8740002156852742743L}).toString());
                        jsonWriter.beginObject();
                        String str4 = zzccVar.zza;
                        if (str4 != null) {
                            jsonWriter.name(new ObfuscatedString(new long[]{3520469064123160423L, 2450663912256677927L, 8049787771318169237L}).toString());
                            jsonWriter.value(str4);
                        }
                        String str5 = zzccVar.zzb;
                        if (str5 != null) {
                            jsonWriter.name(new ObfuscatedString(new long[]{8379383072339810989L, -1393790840939040550L, -8267770995838355874L, 5624567487178207657L}).toString());
                            jsonWriter.value(str5);
                        }
                        String str6 = zzccVar.zzc;
                        if (str6 != null) {
                            jsonWriter.name(new ObfuscatedString(new long[]{6789464410179949570L, -1449955694130979622L}).toString());
                            jsonWriter.value(str6);
                        }
                        jsonWriter.endObject();
                    }
                    zzch zzchVar = zzciVar.zzh;
                    if (zzchVar != null) {
                        jsonWriter.name(new ObfuscatedString(new long[]{5726583589347758120L, -3387247233193704237L}).toString());
                        jsonWriter.beginObject();
                        String str7 = zzchVar.zza;
                        if (str7 != null) {
                            jsonWriter.name(new ObfuscatedString(new long[]{8115686668991319523L, 4704044470422826310L}).toString());
                            jsonWriter.value(str7);
                        }
                        jsonWriter.endObject();
                    }
                    List list2 = zzciVar.zzi;
                    if (!list2.isEmpty()) {
                        jsonWriter.name(new ObfuscatedString(new long[]{2068582246688839147L, -282658935995030629L, -7343972569563966538L}).toString());
                        jsonWriter.beginArray();
                        Iterator it = list2.iterator();
                        while (it.hasNext()) {
                            int ordinal = ((zzcd) it.next()).ordinal();
                            if (ordinal != 0) {
                                if (ordinal != 1) {
                                    if (ordinal != 2) {
                                        if (ordinal != 3) {
                                            if (ordinal == 4) {
                                                jsonWriter.value(new ObfuscatedString(new long[]{-5673801994947854202L, 6242009214034143408L, -7245677536985196930L, -1982663887420759727L, -5842209094685917055L}).toString());
                                            }
                                        } else {
                                            jsonWriter.value(new ObfuscatedString(new long[]{-4908622303499853366L, 7345762831746090706L, 8316185418405594330L, -5892935157670396069L}).toString());
                                        }
                                    } else {
                                        jsonWriter.value(new ObfuscatedString(new long[]{-3120049404378247657L, 2080330495303649665L, -5636909000314411752L}).toString());
                                    }
                                } else {
                                    jsonWriter.value(new ObfuscatedString(new long[]{621015443121105635L, 8698079181552041206L, -5768259852250581187L}).toString());
                                }
                            } else {
                                jsonWriter.value(new ObfuscatedString(new long[]{-5768448110939727878L, 4053989200398237330L, 6432255727725459143L, 6078332431115013342L}).toString());
                            }
                        }
                        jsonWriter.endArray();
                    }
                    jsonWriter.endObject();
                    jsonWriter.close();
                    outputStreamWriter.close();
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode == 200) {
                        String headerField = httpURLConnection.getHeaderField(new ObfuscatedString(new long[]{-2186753434463903284L, 3959110036398412562L, -8426244705881787278L, 8595406521517592010L}).toString());
                        if (headerField != null) {
                            zzck zza = zzck.zza(new JsonReader(new StringReader(headerField)));
                            zza.zza = new Scanner(httpURLConnection.getInputStream()).useDelimiter(new ObfuscatedString(new long[]{-524655533126272745L, -6861731888754716169L}).toString()).next();
                            return zza;
                        }
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), new ObfuscatedString(new long[]{-5719460179478690527L, -5578657443643082826L}).toString()));
                        try {
                            bufferedReader.readLine();
                            JsonReader jsonReader = new JsonReader(bufferedReader);
                            try {
                                zzck zza2 = zzck.zza(jsonReader);
                                jsonReader.close();
                                bufferedReader.close();
                                return zza2;
                            } finally {
                            }
                        } catch (Throwable th) {
                            try {
                                bufferedReader.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    }
                    throw new IOException(new ObfuscatedString(new long[]{-1156371018403287376L, 420355222243053497L, 1690174045391460101L, -879204974411388135L}).toString() + responseCode + new ObfuscatedString(new long[]{-1027379841253217369L, 5183772154736143847L}).toString() + new Scanner(httpURLConnection.getErrorStream()).useDelimiter(new ObfuscatedString(new long[]{-3178106544657814200L, -4781155865396602065L}).toString()).next());
                } finally {
                }
            } catch (Throwable th3) {
                try {
                    outputStreamWriter.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        } catch (SocketTimeoutException e) {
            throw new zzg(4, new ObfuscatedString(new long[]{51425187755162027L, -1780009035522002972L, -4334595080175467143L, 7402020246736627846L}).toString(), e);
        } catch (IOException e2) {
            throw new zzg(2, new ObfuscatedString(new long[]{-3456066379697617095L, 8205467309528974314L, -254100911476944110L, -1139653271951808008L}).toString(), e2);
        }
    }

    public final /* synthetic */ void zza(final ConsentInformation.OnConsentInfoUpdateSuccessListener onConsentInfoUpdateSuccessListener, zzz zzzVar) {
        Objects.requireNonNull(onConsentInfoUpdateSuccessListener);
        this.zzc.post(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzt
            @Override // java.lang.Runnable
            public final void run() {
                ConsentInformation.OnConsentInfoUpdateSuccessListener.this.onConsentInfoUpdateSuccess();
            }
        });
        if (zzzVar.zzb != ConsentInformation.PrivacyOptionsRequirementStatus.NOT_REQUIRED) {
            this.zzf.zzc();
        }
    }

    public final /* synthetic */ void zzb(Activity activity, ConsentRequestParameters consentRequestParameters, final ConsentInformation.OnConsentInfoUpdateSuccessListener onConsentInfoUpdateSuccessListener, final ConsentInformation.OnConsentInfoUpdateFailureListener onConsentInfoUpdateFailureListener) {
        try {
            ConsentDebugSettings consentDebugSettings = consentRequestParameters.getConsentDebugSettings();
            if (consentDebugSettings != null) {
                if (!consentDebugSettings.isTestDevice()) {
                }
                final zzz zza = new zzw(this.zzh, zzd(this.zzg.zzc(activity, consentRequestParameters))).zza();
                this.zze.zzg(zza.zza);
                this.zze.zzh(zza.zzb);
                this.zzf.zzd(zza.zzc);
                this.zzi.zza().execute(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzp
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzu.this.zza(onConsentInfoUpdateSuccessListener, zza);
                    }
                });
            }
            zzcl.zza(this.zza);
            new ObfuscatedString(new long[]{7412104728530346765L, -4358721885952726772L, 4246095894203596128L, 4196234921841866911L, 3251335851195908928L, 7915812517979610650L, -2473299135178607627L, -3762264310195395132L, -4473047850847074511L}).toString();
            new ObfuscatedString(new long[]{-3260661926978982652L, -6186079339510032100L, -958004794098567005L, 5705572566472618716L, 4249292829406172974L, -1980878388209007688L}).toString();
            new ObfuscatedString(new long[]{-5251395918331686824L, 5057219955847921836L, 6752049506829096996L, -8693519828072644431L}).toString();
            final zzz zza2 = new zzw(this.zzh, zzd(this.zzg.zzc(activity, consentRequestParameters))).zza();
            this.zze.zzg(zza2.zza);
            this.zze.zzh(zza2.zzb);
            this.zzf.zzd(zza2.zzc);
            this.zzi.zza().execute(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzp
                @Override // java.lang.Runnable
                public final void run() {
                    zzu.this.zza(onConsentInfoUpdateSuccessListener, zza2);
                }
            });
        } catch (zzg e) {
            this.zzc.post(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzr
                @Override // java.lang.Runnable
                public final void run() {
                    ConsentInformation.OnConsentInfoUpdateFailureListener.this.onConsentInfoUpdateFailure(e.zza());
                }
            });
        } catch (RuntimeException e2) {
            final zzg zzgVar = new zzg(1, new ObfuscatedString(new long[]{2747332294298538074L, 2885384016972559492L, -1718754459529167174L, 399730984327761571L, 6219042343929755301L, 6906399331491124566L, 3390377477649937522L, -1619718097640195330L, -2790157783561500085L}).toString().concat(String.valueOf(Log.getStackTraceString(e2))));
            this.zzc.post(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzs
                @Override // java.lang.Runnable
                public final void run() {
                    ConsentInformation.OnConsentInfoUpdateFailureListener.this.onConsentInfoUpdateFailure(zzgVar.zza());
                }
            });
        }
    }

    public final void zzc(@Nullable final Activity activity, final ConsentRequestParameters consentRequestParameters, final ConsentInformation.OnConsentInfoUpdateSuccessListener onConsentInfoUpdateSuccessListener, final ConsentInformation.OnConsentInfoUpdateFailureListener onConsentInfoUpdateFailureListener) {
        this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzq
            @Override // java.lang.Runnable
            public final void run() {
                zzu.this.zzb(activity, consentRequestParameters, onConsentInfoUpdateSuccessListener, onConsentInfoUpdateFailureListener);
            }
        });
    }
}
