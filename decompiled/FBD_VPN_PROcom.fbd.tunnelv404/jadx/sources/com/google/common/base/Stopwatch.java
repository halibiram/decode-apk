package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1320xaf50c7e8;
import java.util.concurrent.TimeUnit;

@GwtCompatible(emulated = true)
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class Stopwatch {
    private long elapsedNanos;
    private boolean isRunning;
    private long startTick;
    private final Ticker ticker;

    /* renamed from: com.google.common.base.Stopwatch$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$java$util$concurrent$TimeUnit;

        static {
            int[] iArr = new int[TimeUnit.values().length];
            $SwitchMap$java$util$concurrent$TimeUnit = iArr;
            try {
                iArr[TimeUnit.NANOSECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$java$util$concurrent$TimeUnit[TimeUnit.MICROSECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$java$util$concurrent$TimeUnit[TimeUnit.MILLISECONDS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$java$util$concurrent$TimeUnit[TimeUnit.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$java$util$concurrent$TimeUnit[TimeUnit.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$java$util$concurrent$TimeUnit[TimeUnit.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$java$util$concurrent$TimeUnit[TimeUnit.DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public Stopwatch() {
        this.ticker = Ticker.systemTicker();
    }

    private static String abbreviate(TimeUnit timeUnit) {
        switch (AnonymousClass1.$SwitchMap$java$util$concurrent$TimeUnit[timeUnit.ordinal()]) {
            case 1:
                return new ObfuscatedString(new long[]{278945061294474603L, 5805574928547442568L}).toString();
            case 2:
                return new ObfuscatedString(new long[]{9003194374201531870L, -87214006451928932L}).toString();
            case 3:
                return new ObfuscatedString(new long[]{-9182171884168436167L, -26284385983414133L}).toString();
            case 4:
                return new ObfuscatedString(new long[]{-1034316017944240681L, 1648579700304070117L}).toString();
            case 5:
                return new ObfuscatedString(new long[]{7894762403170072209L, -2948920030141030530L}).toString();
            case 6:
                return new ObfuscatedString(new long[]{7120056344885398312L, -1972412200817852056L}).toString();
            case 7:
                return new ObfuscatedString(new long[]{-5178742009376433486L, -4107094665020443942L}).toString();
            default:
                throw new AssertionError();
        }
    }

    private static TimeUnit chooseUnit(long j) {
        TimeUnit timeUnit = TimeUnit.DAYS;
        TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
        if (timeUnit.convert(j, timeUnit2) > 0) {
            return timeUnit;
        }
        TimeUnit timeUnit3 = TimeUnit.HOURS;
        if (timeUnit3.convert(j, timeUnit2) > 0) {
            return timeUnit3;
        }
        TimeUnit timeUnit4 = TimeUnit.MINUTES;
        if (timeUnit4.convert(j, timeUnit2) > 0) {
            return timeUnit4;
        }
        TimeUnit timeUnit5 = TimeUnit.SECONDS;
        if (timeUnit5.convert(j, timeUnit2) > 0) {
            return timeUnit5;
        }
        TimeUnit timeUnit6 = TimeUnit.MILLISECONDS;
        if (timeUnit6.convert(j, timeUnit2) > 0) {
            return timeUnit6;
        }
        TimeUnit timeUnit7 = TimeUnit.MICROSECONDS;
        if (timeUnit7.convert(j, timeUnit2) > 0) {
            return timeUnit7;
        }
        return timeUnit2;
    }

    public static Stopwatch createStarted() {
        return new Stopwatch().start();
    }

    public static Stopwatch createUnstarted() {
        return new Stopwatch();
    }

    private long elapsedNanos() {
        if (this.isRunning) {
            return (this.ticker.read() - this.startTick) + this.elapsedNanos;
        }
        return this.elapsedNanos;
    }

    public long elapsed(TimeUnit timeUnit) {
        return timeUnit.convert(elapsedNanos(), TimeUnit.NANOSECONDS);
    }

    public boolean isRunning() {
        return this.isRunning;
    }

    @CanIgnoreReturnValue
    public Stopwatch reset() {
        this.elapsedNanos = 0L;
        this.isRunning = false;
        return this;
    }

    @CanIgnoreReturnValue
    public Stopwatch start() {
        Preconditions.checkState(!this.isRunning, new ObfuscatedString(new long[]{-4123566290389843388L, -2670969410551849177L, -4719832362701237117L, 4936976223557673059L, 7715299397151031166L, -2197174356532227882L}).toString());
        this.isRunning = true;
        this.startTick = this.ticker.read();
        return this;
    }

    @CanIgnoreReturnValue
    public Stopwatch stop() {
        long read = this.ticker.read();
        Preconditions.checkState(this.isRunning, new ObfuscatedString(new long[]{915564086675148714L, 3350302524096595411L, -6834381534356460548L, 118323343754771145L, -563459568711601069L, 8026042087546989069L}).toString());
        this.isRunning = false;
        this.elapsedNanos = (read - this.startTick) + this.elapsedNanos;
        return this;
    }

    public String toString() {
        long elapsedNanos = elapsedNanos();
        TimeUnit chooseUnit = chooseUnit(elapsedNanos);
        String formatCompact4Digits = Platform.formatCompact4Digits(elapsedNanos / TimeUnit.NANOSECONDS.convert(1L, chooseUnit));
        String abbreviate = abbreviate(chooseUnit);
        return AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-7747874461860366522L, -5114964566718849959L}), AbstractC0362x4440ab85.m2938x1aebc6d9(AbstractC1320xaf50c7e8.m4356x1378447b(AbstractC1320xaf50c7e8.m4356x1378447b(1, formatCompact4Digits), abbreviate), formatCompact4Digits), abbreviate);
    }

    public static Stopwatch createStarted(Ticker ticker) {
        return new Stopwatch(ticker).start();
    }

    public static Stopwatch createUnstarted(Ticker ticker) {
        return new Stopwatch(ticker);
    }

    public Stopwatch(Ticker ticker) {
        this.ticker = (Ticker) Preconditions.checkNotNull(ticker, new ObfuscatedString(new long[]{7195589979597866686L, -8903760236699703001L}).toString());
    }
}
