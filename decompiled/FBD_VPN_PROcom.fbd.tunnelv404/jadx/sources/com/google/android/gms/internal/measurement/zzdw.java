package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzdw extends zzdt {
    final /* synthetic */ Bundle zza;
    final /* synthetic */ Activity zzb;
    final /* synthetic */ zzed zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdw(zzed zzedVar, Bundle bundle, Activity activity) {
        super(zzedVar.zza, true);
        this.zzc = zzedVar;
        this.zza = bundle;
        this.zzb = activity;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    public final void zza() {
        Bundle bundle;
        zzcc zzccVar;
        if (this.zza != null) {
            bundle = new Bundle();
            if (this.zza.containsKey(new ObfuscatedString(new long[]{-4875126801889147778L, -6130481698209563375L, -5789470855157385887L, 3465878350213118445L, -6588668958963634349L, -1940893532776704752L, -2067790688850338005L}).toString())) {
                Object obj = this.zza.get(new ObfuscatedString(new long[]{-7196078116608213306L, 8954337420461399511L, -8798475467298438325L, -8383088047228340155L, 5138115372057881523L, -1431293736746943872L, 3001345840826179221L}).toString());
                if (obj instanceof Bundle) {
                    bundle.putBundle(new ObfuscatedString(new long[]{-974483510323741029L, -8273903869988691156L, 1225937971843313735L, 8572870437834677313L, -7431254369686088208L, -3261183948175853032L, -1693433897659913747L}).toString(), (Bundle) obj);
                }
            }
        } else {
            bundle = null;
        }
        zzccVar = this.zzc.zza.zzj;
        ((zzcc) Preconditions.checkNotNull(zzccVar)).onActivityCreated(ObjectWrapper.wrap(this.zzb), bundle, this.zzi);
    }
}
