package com.google.android.gms.internal.common;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import org.jspecify.nullness.NullMarked;

@NullMarked
/* loaded from: classes2.dex */
public final class zzs {
    @CanIgnoreReturnValue
    public static int zza(int i, int i2, String str) {
        String zza;
        if (i >= 0 && i < i2) {
            return i;
        }
        String obfuscatedString = new ObfuscatedString(new long[]{-5885551776507719723L, -2592477711865715091L}).toString();
        if (i >= 0) {
            if (i2 < 0) {
                throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{4653014715109501887L, 1765038536718833268L, 8562382650472726543L}), new StringBuilder(), i2));
            }
            zza = zzy.zza(new ObfuscatedString(new long[]{2975241865092620768L, -5142606544984361023L, -2861120092444481009L, -3280932348516072324L, -4815012962025276778L, 2125100544240729732L}).toString(), obfuscatedString, Integer.valueOf(i), Integer.valueOf(i2));
        } else {
            zza = zzy.zza(new ObfuscatedString(new long[]{-3539424794218372292L, 1765892637585819865L, -1402152139912089600L, 4965774801613808397L, 2186738921539418733L}).toString(), obfuscatedString, Integer.valueOf(i));
        }
        throw new IndexOutOfBoundsException(zza);
    }

    @CanIgnoreReturnValue
    public static int zzb(int i, int i2, String str) {
        if (i >= 0 && i <= i2) {
            return i;
        }
        throw new IndexOutOfBoundsException(zzd(i, i2, new ObfuscatedString(new long[]{484348568552961676L, 4827603661752396894L}).toString()));
    }

    public static void zzc(int i, int i2, int i3) {
        String zzd;
        if (i >= 0 && i2 >= i && i2 <= i3) {
            return;
        }
        if (i >= 0 && i <= i3) {
            if (i2 >= 0 && i2 <= i3) {
                zzd = zzy.zza(new ObfuscatedString(new long[]{8061203338296142699L, 5064223873839226901L, -5398240393241339448L, -6737700586242769427L, -6107843469818918064L, 4862202249322608066L, -7424552092711780275L, -1029720359196215523L}).toString(), Integer.valueOf(i2), Integer.valueOf(i));
            } else {
                zzd = zzd(i2, i3, new ObfuscatedString(new long[]{2836807485398812606L, -4607621652837568380L, 5300964206808115557L}).toString());
            }
        } else {
            zzd = zzd(i, i3, new ObfuscatedString(new long[]{-954899847313902586L, 838000851063507257L, 4496614664847533818L}).toString());
        }
        throw new IndexOutOfBoundsException(zzd);
    }

    private static String zzd(int i, int i2, String str) {
        if (i < 0) {
            return zzy.zza(new ObfuscatedString(new long[]{1074339415470565772L, -8146371014093523196L, -1315176981439276135L, 6435590927661548522L, -1171287185165176568L}).toString(), str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return zzy.zza(new ObfuscatedString(new long[]{-618640022690291519L, -3859937244595682432L, 6711760563186484998L, 5050207979781226315L, 63303116928794312L, 9002171634232845218L, 3315433870995705767L}).toString(), str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-4098966331276787553L, 7097409667637830802L, -375772404237657863L}), new StringBuilder(), i2));
    }
}
