package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzaxp extends zzaxx {
    private final StackTraceElement[] zzi;

    public zzaxp(zzawj zzawjVar, String str, String str2, zzasg zzasgVar, int i, int i2, StackTraceElement[] stackTraceElementArr) {
        super(zzawjVar, new ObfuscatedString(new long[]{4197626852109060831L, -6454866548159958120L, 8756780785871836790L, -6939461427580114159L, 224093785687195538L, -8010846038667293838L, 8591491633082238620L, 5760941814338792471L, 8377940170889099736L}).toString(), new ObfuscatedString(new long[]{5429076680553426289L, 6886659963493274760L, 6339433349061018778L, 4407432497309298183L, 6564597184271271622L, 4537232260232664L, 4642010625406888114L}).toString(), zzasgVar, i, 45);
        this.zzi = stackTraceElementArr;
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final void zza() {
        int i = 1;
        StackTraceElement[] stackTraceElementArr = this.zzi;
        if (stackTraceElementArr != null) {
            zzawa zzawaVar = new zzawa((String) this.zzf.invoke(null, stackTraceElementArr));
            synchronized (this.zze) {
                try {
                    this.zze.zzF(zzawaVar.zza.longValue());
                    if (zzawaVar.zzb.booleanValue()) {
                        zzasg zzasgVar = this.zze;
                        if (true != zzawaVar.zzc.booleanValue()) {
                            i = 2;
                        }
                        zzasgVar.zzac(i);
                    } else {
                        this.zze.zzac(3);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
