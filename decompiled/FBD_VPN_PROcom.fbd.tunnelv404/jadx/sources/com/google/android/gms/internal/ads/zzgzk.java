package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzgzk {
    private static final zzgzk zzb = new zzgzk(true);
    final zzhcl zza = new zzhcb(16);
    private boolean zzc;
    private boolean zzd;

    private zzgzk() {
    }

    public static zzgzk zza() {
        throw null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0015. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static final void zzd(zzgzj zzgzjVar, Object obj) {
        boolean z;
        zzhdf zzb2 = zzgzjVar.zzb();
        byte[] bArr = zzhae.zzd;
        obj.getClass();
        zzhdf zzhdfVar = zzhdf.zza;
        zzhdg zzhdgVar = zzhdg.zza;
        switch (zzb2.zza().ordinal()) {
            case 0:
                z = obj instanceof Integer;
                if (z) {
                    return;
                }
                throw new IllegalArgumentException(String.format(new ObfuscatedString(new long[]{-5944538529483728030L, 2784796015717797571L, -886951161898203230L, -8656436074551203361L, 2645442169644199108L, -6653473087358315067L, -402659886403512954L, 1856375275806172291L, -6133664907117341533L, 8620554049287398350L, -8870090943405152900L, -3475298174053667880L, 4827844986503726204L, -2729969800414986774L, 3580117965641894990L}).toString(), Integer.valueOf(zzgzjVar.zza()), zzgzjVar.zzb().zza(), obj.getClass().getName()));
            case 1:
                z = obj instanceof Long;
                if (z) {
                }
                throw new IllegalArgumentException(String.format(new ObfuscatedString(new long[]{-5944538529483728030L, 2784796015717797571L, -886951161898203230L, -8656436074551203361L, 2645442169644199108L, -6653473087358315067L, -402659886403512954L, 1856375275806172291L, -6133664907117341533L, 8620554049287398350L, -8870090943405152900L, -3475298174053667880L, 4827844986503726204L, -2729969800414986774L, 3580117965641894990L}).toString(), Integer.valueOf(zzgzjVar.zza()), zzgzjVar.zzb().zza(), obj.getClass().getName()));
            case 2:
                z = obj instanceof Float;
                if (z) {
                }
                throw new IllegalArgumentException(String.format(new ObfuscatedString(new long[]{-5944538529483728030L, 2784796015717797571L, -886951161898203230L, -8656436074551203361L, 2645442169644199108L, -6653473087358315067L, -402659886403512954L, 1856375275806172291L, -6133664907117341533L, 8620554049287398350L, -8870090943405152900L, -3475298174053667880L, 4827844986503726204L, -2729969800414986774L, 3580117965641894990L}).toString(), Integer.valueOf(zzgzjVar.zza()), zzgzjVar.zzb().zza(), obj.getClass().getName()));
            case 3:
                z = obj instanceof Double;
                if (z) {
                }
                throw new IllegalArgumentException(String.format(new ObfuscatedString(new long[]{-5944538529483728030L, 2784796015717797571L, -886951161898203230L, -8656436074551203361L, 2645442169644199108L, -6653473087358315067L, -402659886403512954L, 1856375275806172291L, -6133664907117341533L, 8620554049287398350L, -8870090943405152900L, -3475298174053667880L, 4827844986503726204L, -2729969800414986774L, 3580117965641894990L}).toString(), Integer.valueOf(zzgzjVar.zza()), zzgzjVar.zzb().zza(), obj.getClass().getName()));
            case 4:
                z = obj instanceof Boolean;
                if (z) {
                }
                throw new IllegalArgumentException(String.format(new ObfuscatedString(new long[]{-5944538529483728030L, 2784796015717797571L, -886951161898203230L, -8656436074551203361L, 2645442169644199108L, -6653473087358315067L, -402659886403512954L, 1856375275806172291L, -6133664907117341533L, 8620554049287398350L, -8870090943405152900L, -3475298174053667880L, 4827844986503726204L, -2729969800414986774L, 3580117965641894990L}).toString(), Integer.valueOf(zzgzjVar.zza()), zzgzjVar.zzb().zza(), obj.getClass().getName()));
            case 5:
                z = obj instanceof String;
                if (z) {
                }
                throw new IllegalArgumentException(String.format(new ObfuscatedString(new long[]{-5944538529483728030L, 2784796015717797571L, -886951161898203230L, -8656436074551203361L, 2645442169644199108L, -6653473087358315067L, -402659886403512954L, 1856375275806172291L, -6133664907117341533L, 8620554049287398350L, -8870090943405152900L, -3475298174053667880L, 4827844986503726204L, -2729969800414986774L, 3580117965641894990L}).toString(), Integer.valueOf(zzgzjVar.zza()), zzgzjVar.zzb().zza(), obj.getClass().getName()));
            case 6:
                if ((obj instanceof zzgyl) || (obj instanceof byte[])) {
                    return;
                }
                throw new IllegalArgumentException(String.format(new ObfuscatedString(new long[]{-5944538529483728030L, 2784796015717797571L, -886951161898203230L, -8656436074551203361L, 2645442169644199108L, -6653473087358315067L, -402659886403512954L, 1856375275806172291L, -6133664907117341533L, 8620554049287398350L, -8870090943405152900L, -3475298174053667880L, 4827844986503726204L, -2729969800414986774L, 3580117965641894990L}).toString(), Integer.valueOf(zzgzjVar.zza()), zzgzjVar.zzb().zza(), obj.getClass().getName()));
            case 7:
                if ((obj instanceof Integer) || (obj instanceof zzgzw)) {
                    return;
                }
                throw new IllegalArgumentException(String.format(new ObfuscatedString(new long[]{-5944538529483728030L, 2784796015717797571L, -886951161898203230L, -8656436074551203361L, 2645442169644199108L, -6653473087358315067L, -402659886403512954L, 1856375275806172291L, -6133664907117341533L, 8620554049287398350L, -8870090943405152900L, -3475298174053667880L, 4827844986503726204L, -2729969800414986774L, 3580117965641894990L}).toString(), Integer.valueOf(zzgzjVar.zza()), zzgzjVar.zzb().zza(), obj.getClass().getName()));
            case 8:
                if ((obj instanceof zzhbe) || (obj instanceof zzhaj)) {
                    return;
                }
                throw new IllegalArgumentException(String.format(new ObfuscatedString(new long[]{-5944538529483728030L, 2784796015717797571L, -886951161898203230L, -8656436074551203361L, 2645442169644199108L, -6653473087358315067L, -402659886403512954L, 1856375275806172291L, -6133664907117341533L, 8620554049287398350L, -8870090943405152900L, -3475298174053667880L, 4827844986503726204L, -2729969800414986774L, 3580117965641894990L}).toString(), Integer.valueOf(zzgzjVar.zza()), zzgzjVar.zzb().zza(), obj.getClass().getName()));
            default:
                throw new IllegalArgumentException(String.format(new ObfuscatedString(new long[]{-5944538529483728030L, 2784796015717797571L, -886951161898203230L, -8656436074551203361L, 2645442169644199108L, -6653473087358315067L, -402659886403512954L, 1856375275806172291L, -6133664907117341533L, 8620554049287398350L, -8870090943405152900L, -3475298174053667880L, 4827844986503726204L, -2729969800414986774L, 3580117965641894990L}).toString(), Integer.valueOf(zzgzjVar.zza()), zzgzjVar.zzb().zza(), obj.getClass().getName()));
        }
    }

    public final /* bridge */ /* synthetic */ Object clone() {
        zzgzk zzgzkVar = new zzgzk();
        for (int i = 0; i < this.zza.zzb(); i++) {
            Map.Entry zzg = this.zza.zzg(i);
            zzgzkVar.zzc((zzgzj) zzg.getKey(), zzg.getValue());
        }
        for (Map.Entry entry : this.zza.zzc()) {
            zzgzkVar.zzc((zzgzj) entry.getKey(), entry.getValue());
        }
        zzgzkVar.zzd = this.zzd;
        return zzgzkVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzgzk)) {
            return false;
        }
        return this.zza.equals(((zzgzk) obj).zza);
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final void zzb() {
        if (!this.zzc) {
            for (int i = 0; i < this.zza.zzb(); i++) {
                Map.Entry zzg = this.zza.zzg(i);
                if (zzg.getValue() instanceof zzgzu) {
                    ((zzgzu) zzg.getValue()).zzaS();
                }
            }
            this.zza.zza();
            this.zzc = true;
        }
    }

    public final void zzc(zzgzj zzgzjVar, Object obj) {
        if (zzgzjVar.zzc()) {
            if (obj instanceof List) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll((List) obj);
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    zzd(zzgzjVar, arrayList.get(i));
                }
                obj = arrayList;
            } else {
                throw new IllegalArgumentException(new ObfuscatedString(new long[]{-2303984787113455187L, 8924010012271367639L, -4173412186343627428L, -204120667949987889L, 8885901348226314953L, -1847966995742699230L, 8709605406289151172L, 9095259443206102703L}).toString());
            }
        } else {
            zzd(zzgzjVar, obj);
        }
        if (obj instanceof zzhaj) {
            this.zzd = true;
        }
        this.zza.put(zzgzjVar, obj);
    }

    private zzgzk(boolean z) {
        zzb();
        zzb();
    }
}
