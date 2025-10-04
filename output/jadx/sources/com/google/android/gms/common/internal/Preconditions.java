package com.google.android.gms.common.internal;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.FormatMethod;
import com.google.errorprone.annotations.FormatString;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

@KeepForSdk
/* loaded from: classes2.dex */
public final class Preconditions {
    private Preconditions() {
        throw new AssertionError(new ObfuscatedString(new long[]{1684177019738665019L, -8598299105229719062L, -5805200936818974662L}).toString());
    }

    @KeepForSdk
    public static void checkArgument(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    @KeepForSdk
    public static double checkArgumentInRange(double d, double d2, double d3, @NonNull String str) {
        if (d < d2) {
            throw new IllegalArgumentException(zza(new ObfuscatedString(new long[]{-3198290569661367469L, 5766251550446090678L, -2577659016891590561L, -7475770209888886623L, 6147458686615489386L, 659708458699269259L}).toString(), str, Double.valueOf(d2), Double.valueOf(d3)));
        }
        if (d <= d3) {
            return d;
        }
        throw new IllegalArgumentException(zza(new ObfuscatedString(new long[]{-5805251177584745703L, -7873830467384192595L, -469581916464575309L, -1809046093986421519L, 6517827703691516212L, -5326738988054816296L, 7523908079213262895L}).toString(), str, Double.valueOf(d2), Double.valueOf(d3)));
    }

    @KeepForSdk
    public static void checkHandlerThread(@NonNull Handler handler) {
        String obfuscatedString;
        Looper myLooper = Looper.myLooper();
        if (myLooper != handler.getLooper()) {
            if (myLooper != null) {
                obfuscatedString = myLooper.getThread().getName();
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{4157874100290092056L, -7890629853564716239L, 7426581957695294756L, -4117150391364773193L}).toString();
            }
            String name = handler.getLooper().getThread().getName();
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{2573559022682269916L, 8557380633443787692L, -8858641424893886912L, 8366765314907901705L}).toString());
            sb.append(name);
            sb.append(new ObfuscatedString(new long[]{4945750670669745703L, -7891185651401332950L, 3225658596050216590L, -3384647939197509986L}).toString());
            sb.append(obfuscatedString);
            throw new IllegalStateException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{6176508677913081738L, 5952085400356957510L}), sb));
        }
    }

    @KeepForSdk
    public static void checkMainThread() {
        checkMainThread(new ObfuscatedString(new long[]{3040500097672943279L, -3218504053664676017L, -5035353109606868803L, -4174090150732328206L, -1550051184929975505L, 4801724559845628790L, -7301326968545893168L}).toString());
    }

    @NonNull
    @EnsuresNonNull({"#1"})
    @CanIgnoreReturnValue
    @KeepForSdk
    public static String checkNotEmpty(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{2451273478418828618L, 6073777329492987877L, 2223696906960934038L, 5972240294590387643L, 1977087337356153513L}).toString());
        }
        return str;
    }

    @KeepForSdk
    public static void checkNotGoogleApiHandlerThread() {
        checkNotGoogleApiHandlerThread(new ObfuscatedString(new long[]{-8802470801053029891L, -8988946915086136487L, 8479480328278673476L, -9009747146405467425L, -3600275115274646440L, 8701710621953434594L, -4890165792183484709L}).toString());
    }

    @KeepForSdk
    public static void checkNotMainThread() {
        checkNotMainThread(new ObfuscatedString(new long[]{-9074762042832082515L, -6684034250270295258L, 8041963030682075353L, -197640563251058929L, -8876862796488586351L, 5418129612764003019L, 3536718540263332698L, 1963574080612433490L}).toString());
    }

    @NonNull
    @EnsuresNonNull({"#1"})
    @CanIgnoreReturnValue
    @KeepForSdk
    public static <T> T checkNotNull(@Nullable T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(new ObfuscatedString(new long[]{-1061838330787364497L, 6615651034572953590L, -3955632611039598334L}).toString());
    }

    @CanIgnoreReturnValue
    @KeepForSdk
    public static int checkNotZero(int i) {
        if (i != 0) {
            return i;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-7773722657157790910L, 2226064746563073754L, 5019876664229962364L, -3357749035653297175L}).toString());
    }

    @KeepForSdk
    public static void checkState(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    public static String zza(String str, Object... objArr) {
        int indexOf;
        StringBuilder sb = new StringBuilder(str.length() + 48);
        int i = 0;
        int i2 = 0;
        while (i < 3 && (indexOf = str.indexOf(new ObfuscatedString(new long[]{6607384842909739523L, -5006911978504710021L}).toString(), i2)) != -1) {
            sb.append(str.substring(i2, indexOf));
            sb.append(objArr[i]);
            i2 = indexOf + 2;
            i++;
        }
        sb.append(str.substring(i2));
        if (i < 3) {
            sb.append(new ObfuscatedString(new long[]{-5905153479303497323L, -3163612053441036527L}).toString());
            sb.append(objArr[i]);
            for (int i3 = i + 1; i3 < 3; i3++) {
                sb.append(new ObfuscatedString(new long[]{-6275971915697305140L, -887444569439349331L}).toString());
                sb.append(objArr[i3]);
            }
            sb.append(new ObfuscatedString(new long[]{-1966815468787423003L, 753962235853031340L}).toString());
        }
        return sb.toString();
    }

    @KeepForSdk
    public static void checkArgument(boolean z, @NonNull Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    @KeepForSdk
    public static void checkMainThread(@NonNull String str) {
        if (!com.google.android.gms.common.util.zzb.zza()) {
            throw new IllegalStateException(str);
        }
    }

    @KeepForSdk
    public static void checkNotGoogleApiHandlerThread(@NonNull String str) {
        Looper myLooper = Looper.myLooper();
        if (myLooper != null) {
            String name = myLooper.getThread().getName();
            String obfuscatedString = new ObfuscatedString(new long[]{1551480208124593496L, 8544657784706981599L, -8889801937585811450L}).toString();
            if (name == obfuscatedString || (name != null && name.equals(obfuscatedString))) {
                throw new IllegalStateException(str);
            }
        }
    }

    @KeepForSdk
    public static void checkNotMainThread(@NonNull String str) {
        if (com.google.android.gms.common.util.zzb.zza()) {
            throw new IllegalStateException(str);
        }
    }

    @NonNull
    @EnsuresNonNull({"#1"})
    @CanIgnoreReturnValue
    @KeepForSdk
    public static <T> T checkNotNull(@NonNull T t, @NonNull Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    @CanIgnoreReturnValue
    @KeepForSdk
    public static int checkNotZero(int i, @NonNull Object obj) {
        if (i != 0) {
            return i;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    @KeepForSdk
    public static void checkState(boolean z, @NonNull Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    @KeepForSdk
    public static void checkArgument(boolean z, @NonNull String str, @NonNull Object... objArr) {
        if (!z) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    @NonNull
    @EnsuresNonNull({"#1"})
    @CanIgnoreReturnValue
    @KeepForSdk
    public static String checkNotEmpty(@Nullable String str, @NonNull Object obj) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
        return str;
    }

    @CanIgnoreReturnValue
    @KeepForSdk
    public static long checkNotZero(long j) {
        if (j != 0) {
            return j;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-8187471051160812154L, 4206925811417515197L, 1171307083609935642L, -4221149460102310995L}).toString());
    }

    @KeepForSdk
    @FormatMethod
    public static void checkState(boolean z, @NonNull @FormatString String str, @NonNull Object... objArr) {
        if (!z) {
            throw new IllegalStateException(String.format(str, objArr));
        }
    }

    @KeepForSdk
    public static float checkArgumentInRange(float f, float f2, float f3, @NonNull String str) {
        if (f < f2) {
            throw new IllegalArgumentException(zza(new ObfuscatedString(new long[]{-1698311181690530959L, 4641242545097043529L, 2812199280203837261L, -995436473842311159L, -7383657012233950985L, -2611092410158947564L}).toString(), str, Float.valueOf(f2), Float.valueOf(f3)));
        }
        if (f <= f3) {
            return f;
        }
        throw new IllegalArgumentException(zza(new ObfuscatedString(new long[]{-9030675621872334427L, 3943667373531690202L, 1739832814796407644L, 671664367150293122L, -4594713336219966338L, 6410665417856979771L, -6807673163874611563L}).toString(), str, Float.valueOf(f2), Float.valueOf(f3)));
    }

    @CanIgnoreReturnValue
    @KeepForSdk
    public static long checkNotZero(long j, @NonNull Object obj) {
        if (j != 0) {
            return j;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    @CanIgnoreReturnValue
    @KeepForSdk
    public static int checkArgumentInRange(int i, int i2, int i3, @NonNull String str) {
        if (i < i2) {
            throw new IllegalArgumentException(zza(new ObfuscatedString(new long[]{8691332602478959251L, -3005924858114034621L, 4842951571913781382L, 3082298810987593355L, 1649183545336230057L, -1521839247509641231L}).toString(), str, Integer.valueOf(i2), Integer.valueOf(i3)));
        }
        if (i <= i3) {
            return i;
        }
        throw new IllegalArgumentException(zza(new ObfuscatedString(new long[]{-3491452943786202306L, -2659881807720317406L, 6511212508656699560L, 5522457367642829267L, -5805107375908843277L, -1984268218446602782L, -5041614775852287357L}).toString(), str, Integer.valueOf(i2), Integer.valueOf(i3)));
    }

    @KeepForSdk
    public static long checkArgumentInRange(long j, long j2, long j3, @NonNull String str) {
        if (j < j2) {
            throw new IllegalArgumentException(zza(new ObfuscatedString(new long[]{-6851361756913435463L, 3477205362260751194L, -3570522467537412387L, -3952010344044636354L, -5269492498534015050L, 431972989904008743L}).toString(), str, Long.valueOf(j2), Long.valueOf(j3)));
        }
        if (j <= j3) {
            return j;
        }
        throw new IllegalArgumentException(zza(new ObfuscatedString(new long[]{-4448901893131132303L, 6440265442163963795L, 9164513364717867003L, -6939517468145834121L, -7339105739456349120L, 6632212064386844948L, 4232262988166162351L}).toString(), str, Long.valueOf(j2), Long.valueOf(j3)));
    }

    @KeepForSdk
    public static void checkHandlerThread(@NonNull Handler handler, @NonNull String str) {
        if (Looper.myLooper() != handler.getLooper()) {
            throw new IllegalStateException(str);
        }
    }
}
