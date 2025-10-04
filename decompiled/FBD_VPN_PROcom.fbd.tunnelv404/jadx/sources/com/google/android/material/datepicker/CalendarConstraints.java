package com.google.android.material.datepicker;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.ObjectsCompat;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class CalendarConstraints implements Parcelable {
    public static final Parcelable.Creator<CalendarConstraints> CREATOR = new Parcelable.Creator<CalendarConstraints>() { // from class: com.google.android.material.datepicker.CalendarConstraints.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NonNull
        public CalendarConstraints createFromParcel(@NonNull Parcel parcel) {
            return new CalendarConstraints((Month) parcel.readParcelable(Month.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), (DateValidator) parcel.readParcelable(DateValidator.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NonNull
        public CalendarConstraints[] newArray(int i) {
            return new CalendarConstraints[i];
        }
    };

    @NonNull
    private final Month end;
    private final int firstDayOfWeek;
    private final int monthSpan;

    @Nullable
    private Month openAt;

    @NonNull
    private final Month start;

    @NonNull
    private final DateValidator validator;
    private final int yearSpan;

    /* loaded from: classes2.dex */
    public interface DateValidator extends Parcelable {
        boolean isValid(long j);
    }

    public Month clamp(Month month) {
        if (month.compareTo(this.start) < 0) {
            return this.start;
        }
        if (month.compareTo(this.end) > 0) {
            return this.end;
        }
        return month;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CalendarConstraints)) {
            return false;
        }
        CalendarConstraints calendarConstraints = (CalendarConstraints) obj;
        if (this.start.equals(calendarConstraints.start) && this.end.equals(calendarConstraints.end) && ObjectsCompat.equals(this.openAt, calendarConstraints.openAt) && this.firstDayOfWeek == calendarConstraints.firstDayOfWeek && this.validator.equals(calendarConstraints.validator)) {
            return true;
        }
        return false;
    }

    public DateValidator getDateValidator() {
        return this.validator;
    }

    @NonNull
    public Month getEnd() {
        return this.end;
    }

    public long getEndMs() {
        return this.end.timeInMillis;
    }

    public int getFirstDayOfWeek() {
        return this.firstDayOfWeek;
    }

    public int getMonthSpan() {
        return this.monthSpan;
    }

    @Nullable
    public Month getOpenAt() {
        return this.openAt;
    }

    @Nullable
    public Long getOpenAtMs() {
        Month month = this.openAt;
        if (month == null) {
            return null;
        }
        return Long.valueOf(month.timeInMillis);
    }

    @NonNull
    public Month getStart() {
        return this.start;
    }

    public long getStartMs() {
        return this.start.timeInMillis;
    }

    public int getYearSpan() {
        return this.yearSpan;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.start, this.end, this.openAt, Integer.valueOf(this.firstDayOfWeek), this.validator});
    }

    public boolean isWithinBounds(long j) {
        if (this.start.getDay(1) <= j) {
            Month month = this.end;
            if (j <= month.getDay(month.daysInMonth)) {
                return true;
            }
        }
        return false;
    }

    public void setOpenAt(@Nullable Month month) {
        this.openAt = month;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.start, 0);
        parcel.writeParcelable(this.end, 0);
        parcel.writeParcelable(this.openAt, 0);
        parcel.writeParcelable(this.validator, 0);
        parcel.writeInt(this.firstDayOfWeek);
    }

    private CalendarConstraints(@NonNull Month month, @NonNull Month month2, @NonNull DateValidator dateValidator, @Nullable Month month3, int i) {
        Objects.requireNonNull(month, new ObfuscatedString(new long[]{-7032807682275829120L, 4424481112033768590L, -1381921271816025642L, -2760363693637722386L}).toString());
        Objects.requireNonNull(month2, new ObfuscatedString(new long[]{4972389149846255685L, 5990732655092256784L, 2907601648962891177L, -3688994996691595178L}).toString());
        Objects.requireNonNull(dateValidator, new ObfuscatedString(new long[]{6045222685572653864L, -4269252048659661194L, -1062712650094059069L, 7612955582362208038L}).toString());
        this.start = month;
        this.end = month2;
        this.openAt = month3;
        this.firstDayOfWeek = i;
        this.validator = dateValidator;
        if (month3 != null && month.compareTo(month3) > 0) {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{3585441382108813078L, -7631846063017380102L, 8132226162465970478L, -7199603882337936187L, -3250947656739661073L, -2926473893576309115L, -4601678782032720536L}).toString());
        }
        if (month3 != null && month3.compareTo(month2) > 0) {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-3604309039264373125L, -8704275503092268921L, 8713961774331472311L, 3387818188595469052L, -335147968272018947L, -7914784901412264959L}).toString());
        }
        if (i >= 0 && i <= UtcDates.getUtcCalendar().getMaximum(7)) {
            this.monthSpan = month.monthsUntil(month2) + 1;
            this.yearSpan = (month2.year - month.year) + 1;
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-8267745315022911636L, 5536916120347342511L, -5142664773927435271L, -4344553251167127793L, 1472397063040847211L}).toString());
    }

    /* loaded from: classes2.dex */
    public static final class Builder {
        private long end;
        private int firstDayOfWeek;
        private Long openAt;
        private long start;
        private DateValidator validator;
        private static final String DEEP_COPY_VALIDATOR_KEY = new ObfuscatedString(new long[]{-1489387507266081905L, 1625965477960656605L, -8357439574856573596L, 1954483760265064872L}).toString();
        static final long DEFAULT_START = UtcDates.canonicalYearMonthDay(Month.create(1900, 0).timeInMillis);
        static final long DEFAULT_END = UtcDates.canonicalYearMonthDay(Month.create(2100, 11).timeInMillis);

        public Builder() {
            this.start = DEFAULT_START;
            this.end = DEFAULT_END;
            this.validator = DateValidatorPointForward.from(Long.MIN_VALUE);
        }

        @NonNull
        public CalendarConstraints build() {
            Month create;
            Bundle bundle = new Bundle();
            bundle.putParcelable(new ObfuscatedString(new long[]{5011290721574206409L, 6503913685565527677L, 8741704201148020050L, -7558130325484260107L}).toString(), this.validator);
            Month create2 = Month.create(this.start);
            Month create3 = Month.create(this.end);
            DateValidator dateValidator = (DateValidator) bundle.getParcelable(new ObfuscatedString(new long[]{-6768388617368255435L, 3410449605100357090L, -6902343169828777943L, 8749291446470204447L}).toString());
            Long l = this.openAt;
            if (l == null) {
                create = null;
            } else {
                create = Month.create(l.longValue());
            }
            return new CalendarConstraints(create2, create3, dateValidator, create, this.firstDayOfWeek);
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setEnd(long j) {
            this.end = j;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setFirstDayOfWeek(int i) {
            this.firstDayOfWeek = i;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setOpenAt(long j) {
            this.openAt = Long.valueOf(j);
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setStart(long j) {
            this.start = j;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setValidator(@NonNull DateValidator dateValidator) {
            Objects.requireNonNull(dateValidator, new ObfuscatedString(new long[]{-2304729404597869633L, 8071357404811836703L, 2306547399152131247L, 7896974769099030634L}).toString());
            this.validator = dateValidator;
            return this;
        }

        public Builder(@NonNull CalendarConstraints calendarConstraints) {
            this.start = DEFAULT_START;
            this.end = DEFAULT_END;
            this.validator = DateValidatorPointForward.from(Long.MIN_VALUE);
            this.start = calendarConstraints.start.timeInMillis;
            this.end = calendarConstraints.end.timeInMillis;
            this.openAt = Long.valueOf(calendarConstraints.openAt.timeInMillis);
            this.firstDayOfWeek = calendarConstraints.firstDayOfWeek;
            this.validator = calendarConstraints.validator;
        }
    }
}
