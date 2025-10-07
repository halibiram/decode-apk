package com.google.android.gms.internal.measurement;

import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzlb implements zzlv {
    private static final zzlh zza = new zzkz();
    private final zzlh zzb;

    public zzlb() {
        zzlh zzlhVar;
        zzjx zza2 = zzjx.zza();
        try {
            zzlhVar = (zzlh) Class.forName(new ObfuscatedString(new long[]{-3025456299908221692L, 606841073577583197L, 1931334680820571546L, 8972352880566093437L, -9043525588750807810L, -9109357537814450548L, 2946161820978657587L}).toString()).getDeclaredMethod(new ObfuscatedString(new long[]{6542081250586351564L, 57392073086950091L, -6068142458485830598L}).toString(), null).invoke(null, null);
        } catch (Exception unused) {
            zzlhVar = zza;
        }
        zzla zzlaVar = new zzla(zza2, zzlhVar);
        zzkk.zzf(zzlaVar, new ObfuscatedString(new long[]{1122815707355832077L, -8895172788892260326L, 8648626921323732661L, -154876106003298216L}).toString());
        this.zzb = zzlaVar;
    }

    private static boolean zzb(zzlg zzlgVar) {
        if (zzlgVar.zzc() == 1) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzlv
    public final zzlu zza(Class cls) {
        zzlw.zzG(cls);
        zzlg zzb = this.zzb.zzb(cls);
        if (zzb.zzb()) {
            if (zzkc.class.isAssignableFrom(cls)) {
                return zzln.zzc(zzlw.zzB(), zzjr.zzb(), zzb.zza());
            }
            return zzln.zzc(zzlw.zzz(), zzjr.zza(), zzb.zza());
        }
        if (zzkc.class.isAssignableFrom(cls)) {
            if (zzb(zzb)) {
                return zzlm.zzl(cls, zzb, zzlp.zzb(), zzkx.zzd(), zzlw.zzB(), zzjr.zzb(), zzlf.zzb());
            }
            return zzlm.zzl(cls, zzb, zzlp.zzb(), zzkx.zzd(), zzlw.zzB(), null, zzlf.zzb());
        }
        if (zzb(zzb)) {
            return zzlm.zzl(cls, zzb, zzlp.zza(), zzkx.zzc(), zzlw.zzz(), zzjr.zza(), zzlf.zza());
        }
        return zzlm.zzl(cls, zzb, zzlp.zza(), zzkx.zzc(), zzlw.zzA(), null, zzlf.zza());
    }
}
