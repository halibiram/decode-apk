package com.google.android.gms.internal.consent_sdk;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
public final class zzcw {
    public static int zza(int i, int i2, String str) {
        String zza;
        if (i >= 0 && i < i2) {
            return i;
        }
        String obfuscatedString = new ObfuscatedString(new long[]{2290359229491474050L, -6828580973569116894L}).toString();
        if (i >= 0) {
            if (i2 < 0) {
                throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-9014287978822540456L, 3528749883757492247L, -3888602905021148959L}), new StringBuilder(), i2));
            }
            zza = zzcx.zza(new ObfuscatedString(new long[]{-3401626899385368679L, -9190209048618182161L, 1235824098735634653L, -572047653065790247L, -2023617748711435021L, 6505005261522989735L}).toString(), obfuscatedString, Integer.valueOf(i), Integer.valueOf(i2));
        } else {
            zza = zzcx.zza(new ObfuscatedString(new long[]{2965042045725534078L, -5252445325929205257L, 770460286892329L, -2990758819306148551L, -96043051233088314L}).toString(), obfuscatedString, Integer.valueOf(i));
        }
        throw new IndexOutOfBoundsException(zza);
    }

    public static int zzb(int i, int i2, String str) {
        if (i >= 0 && i <= i2) {
            return i;
        }
        throw new IndexOutOfBoundsException(zzd(i, i2, new ObfuscatedString(new long[]{-4662085408631793724L, 707910946319557522L}).toString()));
    }

    public static void zzc(int i, int i2, int i3) {
        String zzd;
        if (i >= 0 && i2 >= i && i2 <= i3) {
            return;
        }
        if (i >= 0 && i <= i3) {
            if (i2 >= 0 && i2 <= i3) {
                zzd = zzcx.zza(new ObfuscatedString(new long[]{-5800344299377587859L, -5259132715800680407L, -8019267454158178116L, -3059238726757773723L, -1384113263256853445L, 8008677012256790138L, 8095238163915587885L, 17064567889827923L}).toString(), Integer.valueOf(i2), Integer.valueOf(i));
            } else {
                zzd = zzd(i2, i3, new ObfuscatedString(new long[]{-124008910598133369L, -6437834802475699796L, -3969987640449158179L}).toString());
            }
        } else {
            zzd = zzd(i, i3, new ObfuscatedString(new long[]{2222215999277020033L, 3175129810668410163L, 3689850038578921493L}).toString());
        }
        throw new IndexOutOfBoundsException(zzd);
    }

    private static String zzd(int i, int i2, String str) {
        if (i < 0) {
            return zzcx.zza(new ObfuscatedString(new long[]{6403158663684108123L, -3872146894904701042L, -3512628180911347583L, 5701474149930113011L, -5440407914583022234L}).toString(), str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return zzcx.zza(new ObfuscatedString(new long[]{4075440270641879817L, 2605509014129692950L, 3139847891352586246L, -3977978351168523006L, 6489365156911175038L, 763380247754686989L, -1209361403237030055L}).toString(), str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{1574149827619818808L, -1653789898978400238L, -568798035394172907L}), new StringBuilder(), i2));
    }
}
