package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.lifecycle.CoroutineLiveDataKt;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.ads.zzbfu;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzbrn;
import com.google.android.gms.internal.ads.zzbrr;
import com.google.android.gms.internal.ads.zzbru;
import com.google.android.gms.internal.ads.zzbrx;
import com.google.android.gms.internal.ads.zzcdf;
import com.google.android.gms.internal.ads.zzcec;
import com.google.android.gms.internal.ads.zzcei;
import com.google.android.gms.internal.ads.zzcep;
import com.google.android.gms.internal.ads.zzces;
import com.google.android.gms.internal.ads.zzfmn;
import com.google.android.gms.internal.ads.zzfmo;
import com.google.android.gms.internal.ads.zzfnc;
import com.google.android.gms.internal.ads.zzgdu;
import com.google.android.gms.internal.ads.zzgen;
import com.google.android.gms.internal.ads.zzgey;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;

@ParametersAreNonnullByDefault
/* loaded from: classes2.dex */
public final class zze {
    private Context zza;
    private long zzb = 0;

    public final void zza(Context context, zzcei zzceiVar, String str, @Nullable Runnable runnable, zzfnc zzfncVar) {
        zzb(context, zzceiVar, true, null, str, null, runnable, zzfncVar);
    }

    @VisibleForTesting
    public final void zzb(Context context, zzcei zzceiVar, boolean z, @Nullable zzcdf zzcdfVar, String str, @Nullable String str2, @Nullable Runnable runnable, final zzfnc zzfncVar) {
        PackageInfo packageInfo;
        if (zzt.zzB().elapsedRealtime() - this.zzb < CoroutineLiveDataKt.DEFAULT_TIMEOUT) {
            zzcec.zzj(new ObfuscatedString(new long[]{-5851358027066938556L, -219060894214761404L, 3974419602204986090L, -6573696410836787967L, 5705064801046094461L, 7272159383814409950L}).toString());
            return;
        }
        this.zzb = zzt.zzB().elapsedRealtime();
        if (zzcdfVar != null && !TextUtils.isEmpty(zzcdfVar.zzc())) {
            if (zzt.zzB().currentTimeMillis() - zzcdfVar.zza() <= ((Long) zzba.zzc().zza(zzbgc.zzdY)).longValue() && zzcdfVar.zzi()) {
                return;
            }
        }
        if (context == null) {
            zzcec.zzj(new ObfuscatedString(new long[]{-4670880239103697731L, -2392488233638614654L, -4436221542877685985L, 7838332394311593683L, 8220568272496237197L, 2954633988246350491L, -1084066944783155414L, 8445490026722382192L}).toString());
            return;
        }
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            zzcec.zzj(new ObfuscatedString(new long[]{7754642149710539160L, -7692475093431731465L, -8691869526237120941L, 7949289724588536783L, 8513478636398536634L, 4469328479669661966L, 5856776506853766747L, 4225633961255274327L, 2681183562998354312L}).toString());
            return;
        }
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            applicationContext = context;
        }
        this.zza = applicationContext;
        final zzfmo zza = zzfmn.zza(context, 4);
        zza.zzh();
        zzbrx zza2 = zzt.zzf().zza(this.zza, zzceiVar, zzfncVar);
        String obfuscatedString = new ObfuscatedString(new long[]{2695622004118175656L, -1339287106779836777L, -1240435043056750604L, 86568373765069598L, -7495029589241357443L, -500892904407395797L}).toString();
        zzbrr zzbrrVar = zzbru.zza;
        zzbrn zza3 = zza2.zza(obfuscatedString, zzbrrVar, zzbrrVar);
        try {
            JSONObject jSONObject = new JSONObject();
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put(new ObfuscatedString(new long[]{-541590152390216188L, -6706405441819611042L}).toString(), str);
            } else if (!TextUtils.isEmpty(str2)) {
                jSONObject.put(new ObfuscatedString(new long[]{-2475780388910430795L, -4841231106423862921L, 8534418991703561104L}).toString(), str2);
            }
            jSONObject.put(new ObfuscatedString(new long[]{5156117767290713890L, -53609882296297358L}).toString(), z);
            jSONObject.put(new ObfuscatedString(new long[]{-7827241137577514363L, -3677387998398554123L}).toString(), context.getPackageName());
            String obfuscatedString2 = new ObfuscatedString(new long[]{9203895911227203588L, -4031209463538579260L, -3943094080675510210L}).toString();
            String obfuscatedString3 = new ObfuscatedString(new long[]{-6056562615744428908L, -3998667290257904336L}).toString();
            zzbfu zzbfuVar = zzbgc.zza;
            jSONObject.put(obfuscatedString2, TextUtils.join(obfuscatedString3, zzba.zza().zza()));
            jSONObject.put(new ObfuscatedString(new long[]{-61964826185870544L, -1762092792725767950L}).toString(), zzceiVar.zza);
            try {
                ApplicationInfo applicationInfo = this.zza.getApplicationInfo();
                if (applicationInfo != null && (packageInfo = Wrappers.packageManager(context).getPackageInfo(applicationInfo.packageName, 0)) != null) {
                    jSONObject.put(new ObfuscatedString(new long[]{5278696290962827911L, -2374111942252553884L}).toString(), packageInfo.versionCode);
                }
            } catch (PackageManager.NameNotFoundException unused) {
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{7188061055381298334L, -5051833869002442477L, -3190285599793421721L, 949945374472544970L, -3112791944608227190L}).toString());
            }
            ListenableFuture zzb = zza3.zzb(jSONObject);
            zzgdu zzgduVar = new zzgdu() { // from class: com.google.android.gms.ads.internal.zzd
                @Override // com.google.android.gms.internal.ads.zzgdu
                public final ListenableFuture zza(Object obj) {
                    JSONObject jSONObject2 = (JSONObject) obj;
                    boolean optBoolean = jSONObject2.optBoolean(new ObfuscatedString(new long[]{-3603715062267100314L, 1065917928520498225L, 141445923114757141L}).toString(), false);
                    if (optBoolean) {
                        zzt.zzo().zzi().zzu(jSONObject2.getString(new ObfuscatedString(new long[]{-8646826857705536497L, -3545167201405764528L, -6763047422573436722L}).toString()));
                    }
                    zzfmo zzfmoVar = zza;
                    zzfnc zzfncVar2 = zzfnc.this;
                    zzfmoVar.zzf(optBoolean);
                    zzfncVar2.zzb(zzfmoVar.zzl());
                    return zzgen.zzh(null);
                }
            };
            zzgey zzgeyVar = zzcep.zzf;
            ListenableFuture zzn = zzgen.zzn(zzb, zzgduVar, zzgeyVar);
            if (runnable != null) {
                zzb.addListener(runnable, zzgeyVar);
            }
            zzces.zza(zzn, new ObfuscatedString(new long[]{-6170418059866272583L, -1808403072568752351L, 4512435440291320496L, 2491085478151988986L, -2522550888165150085L, 4203670265085461940L}).toString());
        } catch (Exception e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-1856249082547547677L, -1992980954765092166L, 8863000885577289540L, -5978384258129044552L, -1945964538600187148L, 3560221550941892588L}).toString(), e);
            zza.zzg(e);
            zza.zzf(false);
            zzfncVar.zzb(zza.zzl());
        }
    }

    public final void zzc(Context context, zzcei zzceiVar, String str, zzcdf zzcdfVar, zzfnc zzfncVar) {
        String str2;
        if (zzcdfVar != null) {
            str2 = zzcdfVar.zzb();
        } else {
            str2 = null;
        }
        zzb(context, zzceiVar, false, zzcdfVar, str2, str, null, zzfncVar);
    }
}
