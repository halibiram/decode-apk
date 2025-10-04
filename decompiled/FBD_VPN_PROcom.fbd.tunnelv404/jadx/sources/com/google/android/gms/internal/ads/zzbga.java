package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.ConditionVariable;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.lifecycle.CoroutineLiveDataKt;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.wrappers.Wrappers;
import com.panda912.muddy.ObfuscatedString;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;

@ParametersAreNonnullByDefault
/* loaded from: classes2.dex */
public final class zzbga implements SharedPreferences.OnSharedPreferenceChangeListener {
    private Context zzg;
    private final Object zzb = new Object();
    private final ConditionVariable zzc = new ConditionVariable();
    private volatile boolean zzd = false;

    @VisibleForTesting
    volatile boolean zza = false;

    @Nullable
    private SharedPreferences zze = null;
    private Bundle zzf = new Bundle();
    private JSONObject zzh = new JSONObject();

    private final void zzd(final SharedPreferences sharedPreferences) {
        if (sharedPreferences == null) {
            return;
        }
        try {
            this.zzh = new JSONObject((String) zzbgh.zza(new zzfxu() { // from class: com.google.android.gms.internal.ads.zzbfx
                @Override // com.google.android.gms.internal.ads.zzfxu
                public final Object zza() {
                    return sharedPreferences.getString(new ObfuscatedString(new long[]{367174363897495163L, -4111242244136319568L, 7288310981431225102L, 6186680986794981678L}).toString(), new ObfuscatedString(new long[]{-7283407188307632009L, 5189817368548057987L}).toString());
                }
            }));
        } catch (JSONException unused) {
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (new ObfuscatedString(new long[]{-8000079105283429911L, -1962395393177518125L, -8622517004761941724L, -3908375503507525657L}).toString().equals(str)) {
            zzd(sharedPreferences);
        }
    }

    public final Object zza(final zzbfu zzbfuVar) {
        if (!this.zzc.block(CoroutineLiveDataKt.DEFAULT_TIMEOUT)) {
            synchronized (this.zzb) {
                try {
                    if (!this.zza) {
                        throw new IllegalStateException(new ObfuscatedString(new long[]{-6084126498550652630L, -2316961473492847701L, -9009562641491972407L, -6005029522833112663L, 7985770965148580344L, -6487286683277259491L}).toString());
                    }
                } finally {
                }
            }
        }
        if (!this.zzd || this.zze == null) {
            synchronized (this.zzb) {
                if (this.zzd && this.zze != null) {
                }
                return zzbfuVar.zzm();
            }
        }
        if (zzbfuVar.zze() == 2) {
            Bundle bundle = this.zzf;
            if (bundle == null) {
                return zzbfuVar.zzm();
            }
            return zzbfuVar.zzb(bundle);
        }
        if (zzbfuVar.zze() == 1 && this.zzh.has(zzbfuVar.zzn())) {
            return zzbfuVar.zza(this.zzh);
        }
        return zzbgh.zza(new zzfxu() { // from class: com.google.android.gms.internal.ads.zzbfy
            @Override // com.google.android.gms.internal.ads.zzfxu
            public final Object zza() {
                return zzbga.this.zzb(zzbfuVar);
            }
        });
    }

    public final /* synthetic */ Object zzb(zzbfu zzbfuVar) {
        return zzbfuVar.zzc(this.zze);
    }

    public final void zzc(Context context) {
        if (this.zzd) {
            return;
        }
        synchronized (this.zzb) {
            try {
                if (this.zzd) {
                    return;
                }
                if (!this.zza) {
                    this.zza = true;
                }
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                this.zzg = context;
                try {
                    this.zzf = Wrappers.packageManager(context).getApplicationInfo(this.zzg.getPackageName(), 128).metaData;
                } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
                }
                try {
                    Context context2 = this.zzg;
                    Context remoteContext = GooglePlayServicesUtilLight.getRemoteContext(context2);
                    if (remoteContext != null || context2 == null || (remoteContext = context2.getApplicationContext()) != null) {
                        context2 = remoteContext;
                    }
                    if (context2 == null) {
                        return;
                    }
                    com.google.android.gms.ads.internal.client.zzba.zzb();
                    SharedPreferences zza = zzbfw.zza(context2);
                    this.zze = zza;
                    if (zza != null) {
                        zza.registerOnSharedPreferenceChangeListener(this);
                    }
                    zzbis.zzc(new zzbfz(this, this.zze));
                    zzd(this.zze);
                    this.zzd = true;
                } finally {
                    this.zza = false;
                    this.zzc.open();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
