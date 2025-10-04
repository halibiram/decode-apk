package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzeug implements zzexq {
    private final Context zza;
    private final zzgey zzb;

    public zzeug(Context context, zzgey zzgeyVar) {
        this.zza = context;
        this.zzb = zzgeyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final int zza() {
        return 18;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final ListenableFuture zzb() {
        return this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeud
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzeug.this.zzc();
            }
        });
    }

    public final /* synthetic */ zzeuf zzc() {
        String string;
        String string2;
        Bundle bundle;
        com.google.android.gms.ads.internal.zzt.zzp();
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgc)).booleanValue()) {
            string = new ObfuscatedString(new long[]{-5620448024711950824L}).toString();
        } else {
            string = this.zza.getSharedPreferences(new ObfuscatedString(new long[]{-3798026450858375298L, -1051036153316338355L, 3259802857050430086L, 7570497566755070224L}).toString(), 0).getString(new ObfuscatedString(new long[]{-7051518496822110180L, -4320912890227843623L, -6468231686195684748L}).toString(), new ObfuscatedString(new long[]{5518765374399793846L}).toString());
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzge)).booleanValue()) {
            string2 = new ObfuscatedString(new long[]{1087277596301040091L}).toString();
        } else {
            string2 = this.zza.getSharedPreferences(new ObfuscatedString(new long[]{4671160254131645904L, -3360655366215828621L, 2965143458587613391L, -674896124627833649L}).toString(), 0).getString(new ObfuscatedString(new long[]{-7692003160748224797L, 5366276519775517291L, -2795809980910950247L}).toString(), new ObfuscatedString(new long[]{6436607306741858431L}).toString());
        }
        com.google.android.gms.ads.internal.zzt.zzp();
        Context context = this.zza;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgd)).booleanValue()) {
            bundle = null;
        } else {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            bundle = new Bundle();
            if (defaultSharedPreferences.contains(new ObfuscatedString(new long[]{3991935591704768802L, 1825776182779648081L, -4985836198210329072L, -6268373535642633173L}).toString())) {
                bundle.putBoolean(new ObfuscatedString(new long[]{8146127722648211179L, 5555340364682794139L, 5999276716840823055L, -2494066722710364942L}).toString(), defaultSharedPreferences.getBoolean(new ObfuscatedString(new long[]{7711739873285739104L, 7693191043927207450L, -7747332335477262208L, 5319172668798520058L}).toString(), false));
            }
            String[] strArr = {new ObfuscatedString(new long[]{-2581990369401347520L, -3234607502399565734L, -7657663925446562366L, -6935528761363718498L}).toString(), new ObfuscatedString(new long[]{6203975136225165696L, 811809216633017520L, -2284333969403409548L, -282247502587656047L}).toString(), new ObfuscatedString(new long[]{1014538761351713819L, 4217199744264576739L, -6321625801988139138L, 1079620232926243117L, 4319616518483076094L}).toString(), new ObfuscatedString(new long[]{8583814661043085031L, -2724274553368681092L, 8217809659146022349L, -6170785497026136982L, 8839757746461178302L}).toString()};
            for (int i = 0; i < 4; i++) {
                String str = strArr[i];
                if (defaultSharedPreferences.contains(str)) {
                    bundle.putString(str, defaultSharedPreferences.getString(str, null));
                }
            }
        }
        return new zzeuf(string, string2, bundle, null);
    }
}
