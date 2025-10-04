package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.os.Environment;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzbfm {
    private final Context zza;

    public zzbfm(Context context) {
        Preconditions.checkNotNull(context, new ObfuscatedString(new long[]{-6262892154708847070L, -5482653828309329303L, -8503415737295452621L, 4022577767233079928L}).toString());
        this.zza = context;
    }

    public final boolean zza(Intent intent) {
        Preconditions.checkNotNull(intent, new ObfuscatedString(new long[]{3110886641096598995L, 317288338300760792L, 2034605410723566746L, -7904535800088224906L}).toString());
        if (this.zza.getPackageManager().queryIntentActivities(intent, 0).isEmpty()) {
            return false;
        }
        return true;
    }

    public final boolean zzb() {
        return zza(new Intent(new ObfuscatedString(new long[]{-7221373959520095218L, 5789138212082716352L, -4184220186043424020L, 4956156047789384819L, 3994633944025111067L}).toString()).setType(new ObfuscatedString(new long[]{8295186067256745514L, 6922841870212910839L, -2355288310056627739L, 4325617345819663934L, 2620807866593753486L}).toString()));
    }

    public final boolean zzc() {
        if (((Boolean) com.google.android.gms.ads.internal.util.zzch.zza(this.zza, new Callable() { // from class: com.google.android.gms.internal.ads.zzbfl
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return Boolean.valueOf(new ObfuscatedString(new long[]{-1976414242970678399L, 282204769776968289L}).toString().equals(Environment.getExternalStorageState()));
            }
        })).booleanValue() && Wrappers.packageManager(this.zza).checkCallingOrSelfPermission(new ObfuscatedString(new long[]{1033052180902318363L, -5189721204567539893L, -3577070712330589426L, 5865407108508222903L, 558426716770418840L, -7801916333187227717L, -4984712700897777989L}).toString()) == 0) {
            return true;
        }
        return false;
    }
}
