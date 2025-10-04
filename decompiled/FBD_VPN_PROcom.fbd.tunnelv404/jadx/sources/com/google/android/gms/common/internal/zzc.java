package com.google.android.gms.common.internal;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public abstract class zzc {

    @Nullable
    private Object zza;
    private boolean zzb = false;
    final /* synthetic */ BaseGmsClient zzd;

    public zzc(BaseGmsClient baseGmsClient, Object obj) {
        this.zzd = baseGmsClient;
        this.zza = obj;
    }

    public abstract void zza(Object obj);

    public abstract void zzc();

    public final void zze() {
        Object obj;
        synchronized (this) {
            try {
                obj = this.zza;
                if (this.zzb) {
                    new ObfuscatedString(new long[]{943953064565016159L, -4348325777798038746L, 4478120801547352720L}).toString();
                    toString();
                    new ObfuscatedString(new long[]{-1122654664940700445L, -7574917271532209464L, -8021451883251123200L}).toString();
                    new ObfuscatedString(new long[]{2950633884214455370L, 7195718646578205677L, 6888107349171398890L, 5948116597651156469L, -7292574746556362471L}).toString();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (obj != null) {
            zza(obj);
        }
        synchronized (this) {
            this.zzb = true;
        }
        zzg();
    }

    public final void zzf() {
        synchronized (this) {
            this.zza = null;
        }
    }

    public final void zzg() {
        ArrayList arrayList;
        ArrayList arrayList2;
        zzf();
        arrayList = this.zzd.zzt;
        synchronized (arrayList) {
            arrayList2 = this.zzd.zzt;
            arrayList2.remove(this);
        }
    }
}
