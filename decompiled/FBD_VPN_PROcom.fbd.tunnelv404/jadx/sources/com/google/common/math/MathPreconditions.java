package com.google.common.math;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1320xaf50c7e8;
import java.math.BigInteger;
import java.math.RoundingMode;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
@CanIgnoreReturnValue
@GwtCompatible
/* loaded from: classes2.dex */
public final class MathPreconditions {
    private MathPreconditions() {
    }

    public static void checkInRangeForRoundingInputs(boolean z, double d, RoundingMode roundingMode) {
        if (z) {
            return;
        }
        String valueOf = String.valueOf(roundingMode);
        StringBuilder sb = new StringBuilder(valueOf.length() + 83);
        sb.append(new ObfuscatedString(new long[]{-5964068023257083841L, -1799152031835716745L, 8197652053610875852L, 4214375443990291536L, -2226126959333460104L, -7406776928865336099L}).toString());
        sb.append(d);
        throw new ArithmeticException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-5806649765062340373L, -4033758980419498811L, -1960777583747078520L, -7438649844766908148L}), sb, valueOf));
    }

    public static void checkNoOverflow(boolean z, String str, int i, int i2) {
        if (z) {
            return;
        }
        StringBuilder sb = new StringBuilder(AbstractC1320xaf50c7e8.m4356x1378447b(36, str));
        sb.append(new ObfuscatedString(new long[]{2320031723017901131L, 4278847039646924859L, 5016344340488938744L}).toString());
        sb.append(str);
        sb.append(new ObfuscatedString(new long[]{-7489783825120863473L, -399982788487557615L}).toString());
        sb.append(i);
        sb.append(new ObfuscatedString(new long[]{2667471209840930468L, 6091515884196700379L}).toString());
        sb.append(i2);
        throw new ArithmeticException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-8265366394384333930L, -3637014317846067593L}), sb));
    }

    public static int checkNonNegative(String str, int i) {
        if (i >= 0) {
            return i;
        }
        StringBuilder m2938x1aebc6d9 = AbstractC0362x4440ab85.m2938x1aebc6d9(AbstractC1320xaf50c7e8.m4356x1378447b(27, str), str);
        m2938x1aebc6d9.append(new ObfuscatedString(new long[]{-9106729311161557591L, 5773173327162366483L}).toString());
        m2938x1aebc6d9.append(i);
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{1453981580127214021L, 7612272959143504362L, 7527820472294391836L}), m2938x1aebc6d9));
    }

    public static int checkPositive(String str, int i) {
        if (i > 0) {
            return i;
        }
        StringBuilder m2938x1aebc6d9 = AbstractC0362x4440ab85.m2938x1aebc6d9(AbstractC1320xaf50c7e8.m4356x1378447b(26, str), str);
        m2938x1aebc6d9.append(new ObfuscatedString(new long[]{984787959692112523L, -8718504878248148508L}).toString());
        m2938x1aebc6d9.append(i);
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1932176989145137561L, 5639261689427043268L, -6835372987721141486L}), m2938x1aebc6d9));
    }

    public static void checkRoundingUnnecessary(boolean z) {
        if (z) {
        } else {
            throw new ArithmeticException(new ObfuscatedString(new long[]{6477297969129475610L, 3212006735073873656L, 4637200179372363590L, -7696614245394851587L, -7992196329311814025L, 9157678856004774380L, 6711071973801635372L}).toString());
        }
    }

    public static void checkNoOverflow(boolean z, String str, long j, long j2) {
        if (z) {
            return;
        }
        StringBuilder sb = new StringBuilder(AbstractC1320xaf50c7e8.m4356x1378447b(54, str));
        sb.append(new ObfuscatedString(new long[]{-5509558974677596695L, 1986717931612388790L, -4706765245515785259L}).toString());
        sb.append(str);
        sb.append(new ObfuscatedString(new long[]{317311565255415371L, 5679976945483118297L}).toString());
        sb.append(j);
        sb.append(new ObfuscatedString(new long[]{511707491391165426L, 4467698620175026842L}).toString());
        sb.append(j2);
        throw new ArithmeticException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{8878739981104530496L, 7892276939343692172L}), sb));
    }

    public static long checkNonNegative(String str, long j) {
        if (j >= 0) {
            return j;
        }
        StringBuilder m2938x1aebc6d9 = AbstractC0362x4440ab85.m2938x1aebc6d9(AbstractC1320xaf50c7e8.m4356x1378447b(36, str), str);
        m2938x1aebc6d9.append(new ObfuscatedString(new long[]{-725567398608383275L, 5827180393048151333L}).toString());
        m2938x1aebc6d9.append(j);
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{1573179383119502901L, 1627701577501180599L, -4179989929987566594L}), m2938x1aebc6d9));
    }

    public static long checkPositive(String str, long j) {
        if (j > 0) {
            return j;
        }
        StringBuilder m2938x1aebc6d9 = AbstractC0362x4440ab85.m2938x1aebc6d9(AbstractC1320xaf50c7e8.m4356x1378447b(35, str), str);
        m2938x1aebc6d9.append(new ObfuscatedString(new long[]{-2946331992741125079L, -7588660116517906332L}).toString());
        m2938x1aebc6d9.append(j);
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{6287017372772911241L, -656694980305357495L, -2855185338883938211L}), m2938x1aebc6d9));
    }

    public static BigInteger checkNonNegative(String str, BigInteger bigInteger) {
        if (bigInteger.signum() >= 0) {
            return bigInteger;
        }
        String valueOf = String.valueOf(bigInteger);
        StringBuilder m2938x1aebc6d9 = AbstractC0362x4440ab85.m2938x1aebc6d9(valueOf.length() + AbstractC1320xaf50c7e8.m4356x1378447b(16, str), str);
        m2938x1aebc6d9.append(new ObfuscatedString(new long[]{-5761341988604789321L, -3174571449291518243L}).toString());
        m2938x1aebc6d9.append(valueOf);
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-129473854077067758L, -3802920120195375108L, -9203335370612539536L}), m2938x1aebc6d9));
    }

    public static BigInteger checkPositive(String str, BigInteger bigInteger) {
        if (bigInteger.signum() > 0) {
            return bigInteger;
        }
        String valueOf = String.valueOf(bigInteger);
        StringBuilder m2938x1aebc6d9 = AbstractC0362x4440ab85.m2938x1aebc6d9(valueOf.length() + AbstractC1320xaf50c7e8.m4356x1378447b(15, str), str);
        m2938x1aebc6d9.append(new ObfuscatedString(new long[]{8286122046072599356L, -2460562288348645662L}).toString());
        m2938x1aebc6d9.append(valueOf);
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4310442973598576685L, -5698963004676068722L, 4674655722109901268L}), m2938x1aebc6d9));
    }

    public static double checkNonNegative(String str, double d) {
        if (d >= 0.0d) {
            return d;
        }
        StringBuilder m2938x1aebc6d9 = AbstractC0362x4440ab85.m2938x1aebc6d9(AbstractC1320xaf50c7e8.m4356x1378447b(40, str), str);
        m2938x1aebc6d9.append(new ObfuscatedString(new long[]{2693955360183016842L, 7110689986147455216L}).toString());
        m2938x1aebc6d9.append(d);
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{6583743441357078409L, 892435630728132105L, -5101511363521666986L}), m2938x1aebc6d9));
    }
}
