package com.google.android.gms.ads;

import android.os.Bundle;
import androidx.annotation.NonNull;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AbstractAdRequestBuilder;
import com.google.android.gms.ads.internal.client.zzdw;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class AbstractAdRequestBuilder<T extends AbstractAdRequestBuilder<T>> {
    protected final zzdw zza;

    public AbstractAdRequestBuilder() {
        zzdw zzdwVar = new zzdw();
        this.zza = zzdwVar;
        zzdwVar.zzt(new ObfuscatedString(new long[]{-4965111145121938088L, -2882669727093299436L, -1275782472250817603L, 5713221636768665834L, 7507612808217842455L}).toString());
    }

    @NonNull
    @Deprecated
    public T addCustomEventExtrasBundle(@NonNull Class<? extends CustomEvent> cls, @NonNull Bundle bundle) {
        this.zza.zzo(cls, bundle);
        return self();
    }

    @NonNull
    public T addKeyword(@NonNull String str) {
        this.zza.zzq(str);
        return self();
    }

    @NonNull
    public T addNetworkExtrasBundle(@NonNull Class<? extends MediationExtrasReceiver> cls, @NonNull Bundle bundle) {
        this.zza.zzr(cls, bundle);
        if (cls.equals(AdMobAdapter.class) && bundle.getBoolean(new ObfuscatedString(new long[]{3516890489239408418L, -2966000213900586707L, 9122057667554574658L}).toString())) {
            this.zza.zzu(new ObfuscatedString(new long[]{3074550760571345239L, 252180093592909271L, -6497323536563091738L, 8194600530835573015L, -7152615810370483832L}).toString());
        }
        return self();
    }

    @NonNull
    public abstract T self();

    @NonNull
    public T setAdString(@NonNull String str) {
        this.zza.zzv(str);
        return self();
    }

    @NonNull
    public T setContentUrl(@NonNull String str) {
        Preconditions.checkNotNull(str, new ObfuscatedString(new long[]{119485651963108158L, -1496641138116464021L, 3828680221665385962L, -6628318208209912364L, 7958068316959550558L}).toString());
        Preconditions.checkNotEmpty(str, new ObfuscatedString(new long[]{420668091340800407L, -3752630724532601012L, 2709795722822940715L, 5297466256841957726L, 599360157756640874L}).toString());
        int length = str.length();
        boolean z = false;
        Object[] objArr = {512, Integer.valueOf(str.length())};
        if (length <= 512) {
            z = true;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-6369645473234074314L, -7855651363687311312L, -448829290854805586L, 9097270355970738747L, 5648326165026650272L, 2412251651066674815L, 3295405704276702083L, -1075583762808926838L, 5220737811417655602L, -532406007525762748L}).toString(), objArr);
        this.zza.zzw(str);
        return self();
    }

    @NonNull
    public T setHttpTimeoutMillis(int i) {
        this.zza.zzx(i);
        return self();
    }

    @NonNull
    public T setNeighboringContentUrls(@NonNull List<String> list) {
        if (list == null) {
            zzcec.zzj(new ObfuscatedString(new long[]{-3989282544972966743L, 5421064789478129288L, 9115272823666844546L, -9177818963792088914L, 2349963940218337601L, -2067522000597787670L, -827910423214693224L}).toString());
            return self();
        }
        this.zza.zzz(list);
        return self();
    }

    @NonNull
    public T setRequestAgent(@NonNull String str) {
        this.zza.zzB(str);
        return self();
    }

    @NonNull
    @Deprecated
    public final AbstractAdRequestBuilder zza(@NonNull String str) {
        this.zza.zzt(str);
        return self();
    }

    @NonNull
    @Deprecated
    public final AbstractAdRequestBuilder zzb(boolean z) {
        this.zza.zzy(z);
        return self();
    }

    @NonNull
    @Deprecated
    public final AbstractAdRequestBuilder zzc(boolean z) {
        this.zza.zzC(z);
        return self();
    }
}
