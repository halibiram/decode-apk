package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzfvh extends zzfvu {
    final /* synthetic */ zzfvn zza;
    final /* synthetic */ zzfvq zzb;
    final /* synthetic */ TaskCompletionSource zzc;
    final /* synthetic */ zzfvl zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfvh(zzfvl zzfvlVar, TaskCompletionSource taskCompletionSource, zzfvn zzfvnVar, zzfvq zzfvqVar, TaskCompletionSource taskCompletionSource2) {
        super(taskCompletionSource);
        this.zza = zzfvnVar;
        this.zzb = zzfvqVar;
        this.zzc = taskCompletionSource2;
        this.zzd = zzfvlVar;
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [android.os.IInterface, com.google.android.gms.internal.ads.zzfum] */
    @Override // com.google.android.gms.internal.ads.zzfvu
    public final void zza() {
        zzfvt zzfvtVar;
        String str;
        String str2;
        String str3;
        try {
            ?? zze = this.zzd.zza.zze();
            if (zze == 0) {
                return;
            }
            zzfvl zzfvlVar = this.zzd;
            str2 = zzfvlVar.zzd;
            zzfvn zzfvnVar = this.zza;
            str3 = zzfvlVar.zzd;
            Bundle bundle = new Bundle();
            bundle.putBinder(new ObfuscatedString(new long[]{4821031632854944678L, -5892484449975515126L, -8039639614503019740L}).toString(), zzfvnVar.zze());
            bundle.putString(new ObfuscatedString(new long[]{-6325241282523649697L, -962975736460640867L, -6997945957425416219L}).toString(), zzfvnVar.zzf());
            bundle.putInt(new ObfuscatedString(new long[]{-7695920933531504186L, -686073225019790750L, -5953755752338148602L}).toString(), zzfvnVar.zzc());
            bundle.putFloat(new ObfuscatedString(new long[]{4348417140006838875L, -2490235981277313380L, 5676582616484562238L, 798301374875164714L}).toString(), zzfvnVar.zza());
            bundle.putInt(new ObfuscatedString(new long[]{721652057185323527L, -4316154913664547759L, -9194521420091592466L}).toString(), 0);
            bundle.putInt(new ObfuscatedString(new long[]{-7179949486810553730L, -8132866978026491327L, 6195172803295797616L}).toString(), zzfvnVar.zzd());
            bundle.putString(new ObfuscatedString(new long[]{5851448543071365222L, 1677813361480332646L, 2710889897357452932L}).toString(), null);
            bundle.putBoolean(new ObfuscatedString(new long[]{-4057668679804275830L, 7406939978285406282L, 4439485265024534503L, 7477740571183850244L}).toString(), false);
            bundle.putString(new ObfuscatedString(new long[]{3688302233286381727L, 1501362609861996675L, -5384491552562122137L}).toString(), str3);
            if (zzfvnVar.zzg() != null) {
                bundle.putString(new ObfuscatedString(new long[]{-3418097842972371234L, 2111839308575539970L}).toString(), zzfvnVar.zzg());
            }
            zze.zzf(str2, bundle, new zzfvk(this.zzd, this.zzb));
        } catch (RemoteException e) {
            zzfvl zzfvlVar2 = this.zzd;
            zzfvtVar = zzfvl.zzb;
            str = zzfvlVar2.zzd;
            zzfvtVar.zzb(e, new ObfuscatedString(new long[]{3886789529227652932L, 8259468705640134524L, -3104562883726724308L, 5852205556748076438L, -2232209840773907419L}).toString(), str);
            this.zzc.trySetException(new RuntimeException(e));
        }
    }
}
