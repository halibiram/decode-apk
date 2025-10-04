package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.util.IOUtils;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzcec;
import com.google.android.gms.internal.ads.zzdzc;
import com.google.android.gms.internal.ads.zzdzd;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzay {
    private zzdzd zzg;
    private final Object zzb = new Object();
    private String zzc = new ObfuscatedString(new long[]{-246492626469024159L}).toString();
    private String zzd = new ObfuscatedString(new long[]{-4996955342373334642L}).toString();
    private boolean zze = false;
    private boolean zzf = false;

    @VisibleForTesting
    protected String zza = new ObfuscatedString(new long[]{2094916374558662612L}).toString();

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    @VisibleForTesting
    public static final String zzo(Context context, String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put(new ObfuscatedString(new long[]{-1670939641425320159L, 960459879574751847L, 2867434564173702871L}).toString(), com.google.android.gms.ads.internal.zzt.zzp().zzc(context, str2));
        ListenableFuture zzb = new zzbq(context).zzb(0, str, hashMap, null);
        try {
            return (String) zzb.get(((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeG)).intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-1377201862455718068L, -8787407591762487361L, -2695491819658774827L, 1446891778400766195L, 60564645056412593L, 1480672125117377200L, 8628981989965817718L}).toString().concat(String.valueOf(str)), e);
            zzb.cancel(true);
            return null;
        } catch (TimeoutException e2) {
            zzcec.zzh(new ObfuscatedString(new long[]{-7871924431053276547L, -4726189428049619587L, -1050374723196220978L, 926775090447036697L, 7947009559169454425L, 8871949008458828618L, 5501511834750295260L}).toString().concat(String.valueOf(str)), e2);
            zzb.cancel(true);
            return null;
        } catch (Exception e3) {
            zzcec.zzh(new ObfuscatedString(new long[]{-3226372405084860165L, 3322803618599021212L, -4207406043350585467L, -8708848303308074806L, 8340628160615510944L, 5414056429800885777L}).toString().concat(String.valueOf(str)), e3);
            return null;
        }
    }

    private final Uri zzp(Context context, String str, String str2, String str3) {
        String str4;
        String obfuscatedString;
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        synchronized (this.zzb) {
            if (TextUtils.isEmpty(this.zzc)) {
                com.google.android.gms.ads.internal.zzt.zzp();
                try {
                    obfuscatedString = new String(IOUtils.readInputStreamFully(context.openFileInput(new ObfuscatedString(new long[]{-4265232343623530614L, 1610957929695455997L, -2708789662335822529L, -7826179410609927438L}).toString()), true), new ObfuscatedString(new long[]{-70661051305580738L, 5283159938062916679L}).toString());
                } catch (IOException unused) {
                    zzcec.zze(new ObfuscatedString(new long[]{-4611652749027043287L, -6231605532902957601L, 1035750207121956359L, 2285104724436725240L, -2929395000672217073L, -690346923789261935L}).toString());
                    obfuscatedString = new ObfuscatedString(new long[]{4034510039145604390L}).toString();
                }
                this.zzc = obfuscatedString;
                if (TextUtils.isEmpty(obfuscatedString)) {
                    com.google.android.gms.ads.internal.zzt.zzp();
                    this.zzc = UUID.randomUUID().toString();
                    com.google.android.gms.ads.internal.zzt.zzp();
                    String str5 = this.zzc;
                    try {
                        FileOutputStream openFileOutput = context.openFileOutput(new ObfuscatedString(new long[]{168302651607412310L, -1891391786948810405L, -9076098871578280812L, 7821263307653295059L}).toString(), 0);
                        openFileOutput.write(str5.getBytes(new ObfuscatedString(new long[]{2142347810936463961L, -4906712775840267755L}).toString()));
                        openFileOutput.close();
                    } catch (Exception e) {
                        zzcec.zzh(new ObfuscatedString(new long[]{-983996000268931218L, -5608621781614661020L, -2045177016137670200L, -5564668395526061081L, 5272173837739827272L, 2834210507668692394L, -2616315584901019454L}).toString(), e);
                    }
                }
            }
            str4 = this.zzc;
        }
        buildUpon.appendQueryParameter(new ObfuscatedString(new long[]{2209216912832211581L, -916984950490111688L, 8616045541598012864L}).toString(), str4);
        buildUpon.appendQueryParameter(new ObfuscatedString(new long[]{-3359890927577966886L, 1686947533939600000L, 3627914831783744808L}).toString(), str2);
        buildUpon.appendQueryParameter(new ObfuscatedString(new long[]{-1572790293059425461L, 3481333758891752270L, 2455248321807978408L}).toString(), str3);
        return buildUpon.build();
    }

    public final zzdzd zza() {
        return this.zzg;
    }

    public final String zzb() {
        String str;
        synchronized (this.zzb) {
            str = this.zzd;
        }
        return str;
    }

    public final void zzc(Context context) {
        zzdzd zzdzdVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjc)).booleanValue() && (zzdzdVar = this.zzg) != null) {
            zzdzdVar.zzh(new zzav(this, context), zzdzc.zzd);
        }
    }

    public final void zzd(Context context, String str, String str2) {
        com.google.android.gms.ads.internal.zzt.zzp();
        zzt.zzT(context, zzp(context, (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeC), str, str2));
    }

    public final void zze(Context context, String str, String str2, String str3) {
        Uri.Builder buildUpon = zzp(context, (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeF), str3, str).buildUpon();
        buildUpon.appendQueryParameter(new ObfuscatedString(new long[]{-5199566288093493025L, 1978197693133953439L, -6151689538352480122L}).toString(), str2);
        com.google.android.gms.ads.internal.zzt.zzp();
        zzt.zzK(context, str, buildUpon.build().toString());
    }

    public final void zzf(boolean z) {
        synchronized (this.zzb) {
            try {
                this.zzf = z;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjc)).booleanValue()) {
                    com.google.android.gms.ads.internal.zzt.zzo().zzi().zzB(z);
                    zzdzd zzdzdVar = this.zzg;
                    if (zzdzdVar != null) {
                        zzdzdVar.zzk(z);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzg(zzdzd zzdzdVar) {
        this.zzg = zzdzdVar;
    }

    public final void zzh(boolean z) {
        synchronized (this.zzb) {
            this.zze = z;
        }
    }

    @VisibleForTesting
    public final void zzi(Context context, String str, boolean z, boolean z2) {
        if (!(context instanceof Activity)) {
            zzcec.zzi(new ObfuscatedString(new long[]{7364423279289318284L, -4596144988640288460L, -817943343277916871L, -8451752160814922461L, 7619437370327763643L, -4014234415078823309L, 724040890420090367L}).toString());
        } else {
            zzt.zza.post(new zzax(this, context, str, z, z2));
        }
    }

    public final boolean zzj(Context context, String str, String str2) {
        String zzo = zzo(context, zzp(context, (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeE), str, str2).toString(), str2);
        if (TextUtils.isEmpty(zzo)) {
            zzcec.zze(new ObfuscatedString(new long[]{6318976099307854047L, 8441572413518804147L, -2024890583559132257L, -2247573775630167391L, 3556624767313842392L}).toString());
            return false;
        }
        try {
            boolean equals = new ObfuscatedString(new long[]{1260987779131361442L, -6251546589520419627L}).toString().equals(new JSONObject(zzo.trim()).optString(new ObfuscatedString(new long[]{4641158999738048490L, 5493940731662764127L, -8212556515553948940L}).toString()));
            zzf(equals);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjc)).booleanValue()) {
                zzg zzi = com.google.android.gms.ads.internal.zzt.zzo().zzi();
                if (true != equals) {
                    str = new ObfuscatedString(new long[]{238513280423236404L}).toString();
                }
                zzi.zzA(str);
            }
            return equals;
        } catch (JSONException e) {
            zzcec.zzk(new ObfuscatedString(new long[]{-8681601100901602177L, 6774978912251095924L, -6694462984410931689L, -3481778271380601374L, -5264648261669702636L, -6586343424328327004L}).toString(), e);
            return false;
        }
    }

    @VisibleForTesting
    public final boolean zzk(Context context, String str, String str2) {
        boolean z;
        String zzo = zzo(context, zzp(context, (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeD), str, str2).toString(), str2);
        if (TextUtils.isEmpty(zzo)) {
            zzcec.zze(new ObfuscatedString(new long[]{-7305339479152417323L, -6789991505943048813L, 4850659533834535668L, -196111048568177600L, 2416897417266631076L}).toString());
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(zzo.trim());
            String optString = jSONObject.optString(new ObfuscatedString(new long[]{3934008285523425613L, -6189529123615314846L}).toString());
            this.zza = jSONObject.optString(new ObfuscatedString(new long[]{-3919548886053169977L, -1148664249127277315L}).toString());
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjc)).booleanValue()) {
                if (new ObfuscatedString(new long[]{8255220039634330537L, -7468069270459527781L}).toString().equals(this.zza) || new ObfuscatedString(new long[]{8033422747092330571L, -947400377773548020L}).toString().equals(this.zza)) {
                    z = true;
                } else {
                    z = false;
                }
                zzf(z);
                zzg zzi = com.google.android.gms.ads.internal.zzt.zzo().zzi();
                if (!z) {
                    str = new ObfuscatedString(new long[]{1694821456018271257L}).toString();
                }
                zzi.zzA(str);
            }
            synchronized (this.zzb) {
                this.zzd = optString;
            }
            return true;
        } catch (JSONException e) {
            zzcec.zzk(new ObfuscatedString(new long[]{5629271874266430509L, 619185636363935800L, -6908955672266920728L, -265508993452075032L, -993641696892729078L, 2279073116857773356L, -9075145765516235751L}).toString(), e);
            return false;
        }
    }

    public final boolean zzl() {
        boolean z;
        synchronized (this.zzb) {
            z = this.zzf;
        }
        return z;
    }

    public final boolean zzm() {
        boolean z;
        synchronized (this.zzb) {
            z = this.zze;
        }
        return z;
    }

    public final boolean zzn(Context context, String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str2) && zzm()) {
            zzcec.zze(new ObfuscatedString(new long[]{2452430588839188418L, -1917109729313747523L, 5114049228638313771L, 5669004032602062555L, -5379632896099180935L, 7398312196697652528L, 5587058269114195040L}).toString());
            zze(context, str, str2, str3);
            return true;
        }
        return false;
    }
}
