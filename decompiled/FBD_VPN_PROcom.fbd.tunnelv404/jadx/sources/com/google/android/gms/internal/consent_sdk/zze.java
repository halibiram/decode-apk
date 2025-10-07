package com.google.android.gms.internal.consent_sdk;

import android.text.TextUtils;
import androidx.annotation.AnyThread;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zze {
    private final Executor zza;

    public zze(Executor executor) {
        this.zza = executor;
    }

    @AnyThread
    public final Executor zza() {
        return this.zza;
    }

    @AnyThread
    public final void zzb(@Nullable final String str, @Nullable final String str2, final zzd... zzdVarArr) {
        this.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzc
            @Override // java.lang.Runnable
            public final void run() {
                final JSONObject jSONObject;
                String str3 = str;
                if (TextUtils.isEmpty(str3)) {
                    new ObfuscatedString(new long[]{4121874477733963626L, 3379638960586085317L, 4449822313625257395L, -6775812742271829697L}).toString();
                    new ObfuscatedString(new long[]{4491675837690079864L, 8262079405969457594L, -3930665398169997231L, -7275107408009994202L, -1885646674461156967L, -6598400309438660959L}).toString();
                    return;
                }
                String str4 = str2;
                final String lowerCase = str3.toLowerCase();
                if (TextUtils.isEmpty(str4)) {
                    jSONObject = new JSONObject();
                } else {
                    try {
                        jSONObject = new JSONObject(str4);
                    } catch (JSONException unused) {
                        new ObfuscatedString(new long[]{1098968100627377095L, -3619865864681627708L}).toString();
                        new ObfuscatedString(new long[]{7890793943288724787L, -5188868286906027167L, 385171086284215834L, -3723424495300937653L, -5919276546468256393L}).toString();
                        new ObfuscatedString(new long[]{-7910164194015191491L, -7904196569843234900L, 3518736244942258742L, 7075403057322220232L}).toString();
                        return;
                    }
                }
                zzd[] zzdVarArr2 = zzdVarArr;
                jSONObject.toString();
                new ObfuscatedString(new long[]{-2662142400707553274L, 244921596816101845L}).toString();
                new ObfuscatedString(new long[]{2082371844520993191L, -96847181435869487L}).toString();
                new ObfuscatedString(new long[]{-2834446664544290253L, 6867592266957999873L, 1092042088209797293L, 904292374497539062L}).toString();
                for (final zzd zzdVar : zzdVarArr2) {
                    FutureTask futureTask = new FutureTask(new Callable() { // from class: com.google.android.gms.internal.consent_sdk.zzb
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return Boolean.valueOf(zzd.this.zzb(lowerCase, jSONObject));
                        }
                    });
                    zzdVar.zza().execute(futureTask);
                    try {
                    } catch (InterruptedException unused2) {
                        new ObfuscatedString(new long[]{-1791262349473452864L, -7815485411554492989L, -5053333477934695368L, -2990174796498614683L, -6598242740971709210L}).toString();
                        new ObfuscatedString(new long[]{6023378805001345797L, 4151008138141816700L}).toString();
                        new ObfuscatedString(new long[]{-4724907572161338355L, -4240282366466119757L, -7455124238590156979L, 2403144999398230342L}).toString();
                    } catch (ExecutionException e) {
                        new ObfuscatedString(new long[]{8009902921747564290L, -6744680818614696394L, 2157741885368168444L, -6435684337557892579L}).toString();
                        new ObfuscatedString(new long[]{9161062276270978750L, 3080706888722090608L}).toString();
                        new ObfuscatedString(new long[]{4941022827628131327L, -8612279961526291963L, -3152763238870390192L, 2892518944884777383L}).toString();
                        e.getCause();
                    }
                    if (((Boolean) futureTask.get()).booleanValue()) {
                        return;
                    }
                }
            }
        });
    }
}
