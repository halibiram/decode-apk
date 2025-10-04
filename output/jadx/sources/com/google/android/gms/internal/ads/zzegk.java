package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.SparseArray;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class zzegk extends zzegl {
    private static final SparseArray zzb;
    private final Context zzc;
    private final zzdab zzd;
    private final TelephonyManager zze;
    private final zzegc zzf;
    private int zzg;

    static {
        SparseArray sparseArray = new SparseArray();
        zzb = sparseArray;
        sparseArray.put(NetworkInfo.DetailedState.CONNECTED.ordinal(), zzbec.zzc);
        int ordinal = NetworkInfo.DetailedState.AUTHENTICATING.ordinal();
        zzbec zzbecVar = zzbec.zzb;
        sparseArray.put(ordinal, zzbecVar);
        sparseArray.put(NetworkInfo.DetailedState.CONNECTING.ordinal(), zzbecVar);
        sparseArray.put(NetworkInfo.DetailedState.OBTAINING_IPADDR.ordinal(), zzbecVar);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTING.ordinal(), zzbec.zzd);
        int ordinal2 = NetworkInfo.DetailedState.BLOCKED.ordinal();
        zzbec zzbecVar2 = zzbec.zze;
        sparseArray.put(ordinal2, zzbecVar2);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTED.ordinal(), zzbecVar2);
        sparseArray.put(NetworkInfo.DetailedState.FAILED.ordinal(), zzbecVar2);
        sparseArray.put(NetworkInfo.DetailedState.IDLE.ordinal(), zzbecVar2);
        sparseArray.put(NetworkInfo.DetailedState.SCANNING.ordinal(), zzbecVar2);
        sparseArray.put(NetworkInfo.DetailedState.SUSPENDED.ordinal(), zzbec.zzf);
        sparseArray.put(NetworkInfo.DetailedState.CAPTIVE_PORTAL_CHECK.ordinal(), zzbecVar);
        sparseArray.put(NetworkInfo.DetailedState.VERIFYING_POOR_LINK.ordinal(), zzbecVar);
    }

    public zzegk(Context context, zzdab zzdabVar, zzegc zzegcVar, zzefy zzefyVar, com.google.android.gms.ads.internal.util.zzg zzgVar) {
        super(zzefyVar, zzgVar);
        this.zzc = context;
        this.zzd = zzdabVar;
        this.zzf = zzegcVar;
        this.zze = (TelephonyManager) context.getSystemService(new ObfuscatedString(new long[]{-698754168567601558L, -7847681996866939926L}).toString());
    }

    public static /* bridge */ /* synthetic */ zzbdt zza(zzegk zzegkVar, Bundle bundle) {
        int i = 2;
        String obfuscatedString = new ObfuscatedString(new long[]{-4488119880775728528L, -2982411537122395423L}).toString();
        String obfuscatedString2 = new ObfuscatedString(new long[]{-198890260303563366L, 5017665723210384445L}).toString();
        zzbdm zza = zzbdt.zza();
        int i2 = bundle.getInt(obfuscatedString, -2);
        int i3 = bundle.getInt(obfuscatedString2, 0);
        if (i2 == -1) {
            zzegkVar.zzg = 2;
        } else {
            zzegkVar.zzg = 1;
            if (i2 != 0) {
                if (i2 != 1) {
                    zza.zzb(1);
                } else {
                    zza.zzb(3);
                }
            } else {
                zza.zzb(2);
            }
            switch (i3) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                case 16:
                    break;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                    i = 3;
                    break;
                case 13:
                    i = 5;
                    break;
                default:
                    i = 1;
                    break;
            }
            zza.zza(i);
        }
        return (zzbdt) zza.zzal();
    }

    public static /* bridge */ /* synthetic */ zzbec zzb(zzegk zzegkVar, Bundle bundle) {
        return (zzbec) zzb.get(zzfhv.zza(zzfhv.zza(bundle, new ObfuscatedString(new long[]{3954773631880963901L, -8557279852812873011L}).toString()), new ObfuscatedString(new long[]{-4367425471975557290L, -3302210944360766762L}).toString()).getInt(new ObfuscatedString(new long[]{6888833775550940606L, -8693830109632793215L, 4540828901911978762L, -7340846869264924930L}).toString(), -1), zzbec.zza);
    }

    public static /* bridge */ /* synthetic */ byte[] zze(zzegk zzegkVar, boolean z, ArrayList arrayList, zzbdt zzbdtVar, zzbec zzbecVar) {
        boolean z2;
        zzbdx zzg = zzbdy.zzg();
        zzg.zza(arrayList);
        boolean z3 = false;
        if (Settings.Global.getInt(zzegkVar.zzc.getContentResolver(), new ObfuscatedString(new long[]{-8219171228951249021L, -3419718685410833817L, 7296207224671599119L}).toString(), 0) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        zzg.zzi(zzg(z2));
        zzg.zzj(com.google.android.gms.ads.internal.zzt.zzq().zzi(zzegkVar.zzc, zzegkVar.zze));
        zzg.zzf(zzegkVar.zzf.zze());
        zzg.zze(zzegkVar.zzf.zzb());
        zzg.zzb(zzegkVar.zzf.zza());
        zzg.zzc(zzbecVar);
        zzg.zzd(zzbdtVar);
        zzg.zzk(zzegkVar.zzg);
        zzg.zzl(zzg(z));
        zzg.zzh(zzegkVar.zzf.zzd());
        zzg.zzg(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis());
        if (Settings.Global.getInt(zzegkVar.zzc.getContentResolver(), new ObfuscatedString(new long[]{5140218799950985367L, -4801226884108976233L}).toString(), 0) != 0) {
            z3 = true;
        }
        zzg.zzm(zzg(z3));
        return ((zzbdy) zzg.zzal()).zzax();
    }

    private static final int zzg(boolean z) {
        return z ? 2 : 1;
    }

    public final void zzd(boolean z) {
        zzgen.zzr(this.zzd.zzb(), new zzegj(this, z), zzcep.zzf);
    }
}
