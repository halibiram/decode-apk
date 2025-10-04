package com.google.android.gms.internal.measurement;

import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzjt {
    private static final zzjt zzb = new zzjt(true);
    final zzmh zza = new zzlx(16);
    private boolean zzc;
    private boolean zzd;

    private zzjt() {
    }

    public static zzjt zza() {
        throw null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0013. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static final void zzd(zzjs zzjsVar, Object obj) {
        boolean z;
        zzjsVar.zzb();
        zzkk.zze(obj);
        zznb zznbVar = zznb.zza;
        zznc zzncVar = zznc.zza;
        switch (r0.zza()) {
            case zza:
                z = obj instanceof Integer;
                if (z) {
                    return;
                }
                throw new IllegalArgumentException(String.format(new ObfuscatedString(new long[]{-6307066424774309972L, 5925121405067535014L, -359939034446086025L, -8549838739774289473L, 5753165936048952374L, 2837526611175569062L, -3536739522680835647L, 1029113189819861406L, -803759138290058449L, -1798708321185069625L, -7901233004915596795L, -6755065564878869278L, 8968976513187226506L, 9158952945155312351L, -8317462219770656648L}).toString(), Integer.valueOf(zzjsVar.zza()), zzjsVar.zzb().zza(), obj.getClass().getName()));
            case zzb:
                z = obj instanceof Long;
                if (z) {
                }
                throw new IllegalArgumentException(String.format(new ObfuscatedString(new long[]{-6307066424774309972L, 5925121405067535014L, -359939034446086025L, -8549838739774289473L, 5753165936048952374L, 2837526611175569062L, -3536739522680835647L, 1029113189819861406L, -803759138290058449L, -1798708321185069625L, -7901233004915596795L, -6755065564878869278L, 8968976513187226506L, 9158952945155312351L, -8317462219770656648L}).toString(), Integer.valueOf(zzjsVar.zza()), zzjsVar.zzb().zza(), obj.getClass().getName()));
            case zzc:
                z = obj instanceof Float;
                if (z) {
                }
                throw new IllegalArgumentException(String.format(new ObfuscatedString(new long[]{-6307066424774309972L, 5925121405067535014L, -359939034446086025L, -8549838739774289473L, 5753165936048952374L, 2837526611175569062L, -3536739522680835647L, 1029113189819861406L, -803759138290058449L, -1798708321185069625L, -7901233004915596795L, -6755065564878869278L, 8968976513187226506L, 9158952945155312351L, -8317462219770656648L}).toString(), Integer.valueOf(zzjsVar.zza()), zzjsVar.zzb().zza(), obj.getClass().getName()));
            case zzd:
                z = obj instanceof Double;
                if (z) {
                }
                throw new IllegalArgumentException(String.format(new ObfuscatedString(new long[]{-6307066424774309972L, 5925121405067535014L, -359939034446086025L, -8549838739774289473L, 5753165936048952374L, 2837526611175569062L, -3536739522680835647L, 1029113189819861406L, -803759138290058449L, -1798708321185069625L, -7901233004915596795L, -6755065564878869278L, 8968976513187226506L, 9158952945155312351L, -8317462219770656648L}).toString(), Integer.valueOf(zzjsVar.zza()), zzjsVar.zzb().zza(), obj.getClass().getName()));
            case zze:
                z = obj instanceof Boolean;
                if (z) {
                }
                throw new IllegalArgumentException(String.format(new ObfuscatedString(new long[]{-6307066424774309972L, 5925121405067535014L, -359939034446086025L, -8549838739774289473L, 5753165936048952374L, 2837526611175569062L, -3536739522680835647L, 1029113189819861406L, -803759138290058449L, -1798708321185069625L, -7901233004915596795L, -6755065564878869278L, 8968976513187226506L, 9158952945155312351L, -8317462219770656648L}).toString(), Integer.valueOf(zzjsVar.zza()), zzjsVar.zzb().zza(), obj.getClass().getName()));
            case zzf:
                z = obj instanceof String;
                if (z) {
                }
                throw new IllegalArgumentException(String.format(new ObfuscatedString(new long[]{-6307066424774309972L, 5925121405067535014L, -359939034446086025L, -8549838739774289473L, 5753165936048952374L, 2837526611175569062L, -3536739522680835647L, 1029113189819861406L, -803759138290058449L, -1798708321185069625L, -7901233004915596795L, -6755065564878869278L, 8968976513187226506L, 9158952945155312351L, -8317462219770656648L}).toString(), Integer.valueOf(zzjsVar.zza()), zzjsVar.zzb().zza(), obj.getClass().getName()));
            case zzg:
                if ((obj instanceof zzjb) || (obj instanceof byte[])) {
                    return;
                }
                throw new IllegalArgumentException(String.format(new ObfuscatedString(new long[]{-6307066424774309972L, 5925121405067535014L, -359939034446086025L, -8549838739774289473L, 5753165936048952374L, 2837526611175569062L, -3536739522680835647L, 1029113189819861406L, -803759138290058449L, -1798708321185069625L, -7901233004915596795L, -6755065564878869278L, 8968976513187226506L, 9158952945155312351L, -8317462219770656648L}).toString(), Integer.valueOf(zzjsVar.zza()), zzjsVar.zzb().zza(), obj.getClass().getName()));
            case zzh:
                if ((obj instanceof Integer) || (obj instanceof zzke)) {
                    return;
                }
                throw new IllegalArgumentException(String.format(new ObfuscatedString(new long[]{-6307066424774309972L, 5925121405067535014L, -359939034446086025L, -8549838739774289473L, 5753165936048952374L, 2837526611175569062L, -3536739522680835647L, 1029113189819861406L, -803759138290058449L, -1798708321185069625L, -7901233004915596795L, -6755065564878869278L, 8968976513187226506L, 9158952945155312351L, -8317462219770656648L}).toString(), Integer.valueOf(zzjsVar.zza()), zzjsVar.zzb().zza(), obj.getClass().getName()));
            case zzi:
                if ((obj instanceof zzlj) || (obj instanceof zzko)) {
                    return;
                }
                throw new IllegalArgumentException(String.format(new ObfuscatedString(new long[]{-6307066424774309972L, 5925121405067535014L, -359939034446086025L, -8549838739774289473L, 5753165936048952374L, 2837526611175569062L, -3536739522680835647L, 1029113189819861406L, -803759138290058449L, -1798708321185069625L, -7901233004915596795L, -6755065564878869278L, 8968976513187226506L, 9158952945155312351L, -8317462219770656648L}).toString(), Integer.valueOf(zzjsVar.zza()), zzjsVar.zzb().zza(), obj.getClass().getName()));
            default:
                throw new IllegalArgumentException(String.format(new ObfuscatedString(new long[]{-6307066424774309972L, 5925121405067535014L, -359939034446086025L, -8549838739774289473L, 5753165936048952374L, 2837526611175569062L, -3536739522680835647L, 1029113189819861406L, -803759138290058449L, -1798708321185069625L, -7901233004915596795L, -6755065564878869278L, 8968976513187226506L, 9158952945155312351L, -8317462219770656648L}).toString(), Integer.valueOf(zzjsVar.zza()), zzjsVar.zzb().zza(), obj.getClass().getName()));
        }
    }

    public final /* bridge */ /* synthetic */ Object clone() {
        zzjt zzjtVar = new zzjt();
        for (int i = 0; i < this.zza.zzb(); i++) {
            Map.Entry zzg = this.zza.zzg(i);
            zzjtVar.zzc((zzjs) zzg.getKey(), zzg.getValue());
        }
        for (Map.Entry entry : this.zza.zzc()) {
            zzjtVar.zzc((zzjs) entry.getKey(), entry.getValue());
        }
        zzjtVar.zzd = this.zzd;
        return zzjtVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzjt)) {
            return false;
        }
        return this.zza.equals(((zzjt) obj).zza);
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final void zzb() {
        if (this.zzc) {
            return;
        }
        this.zza.zza();
        this.zzc = true;
    }

    public final void zzc(zzjs zzjsVar, Object obj) {
        if (zzjsVar.zzc()) {
            if (obj instanceof List) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll((List) obj);
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    zzd(zzjsVar, arrayList.get(i));
                }
                obj = arrayList;
            } else {
                throw new IllegalArgumentException(new ObfuscatedString(new long[]{1968082847092713939L, 5818702697219848571L, -3012637025791606572L, 4023055119129116820L, -965311700737173641L, -7244275690000338034L, 4353223201024052579L, 1881302945089793293L}).toString());
            }
        } else {
            zzd(zzjsVar, obj);
        }
        if (obj instanceof zzko) {
            this.zzd = true;
        }
        this.zza.put(zzjsVar, obj);
    }

    private zzjt(boolean z) {
        zzb();
        zzb();
    }
}
