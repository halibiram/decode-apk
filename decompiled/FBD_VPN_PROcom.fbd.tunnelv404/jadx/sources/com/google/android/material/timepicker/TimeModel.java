package com.google.android.material.timepicker;

import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import com.google.android.material.R;
import com.panda912.muddy.ObfuscatedString;
import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class TimeModel implements Parcelable {
    final int format;
    int hour;
    private final MaxInputValidator hourInputValidator;
    int minute;
    private final MaxInputValidator minuteInputValidator;
    int period;
    int selection;
    public static final String ZERO_LEADING_NUMBER_FORMAT = new ObfuscatedString(new long[]{-3249190318523400728L, -1050563483450204656L}).toString();
    public static final String NUMBER_FORMAT = new ObfuscatedString(new long[]{-447122715451605664L, -863467891226230999L}).toString();
    public static final Parcelable.Creator<TimeModel> CREATOR = new Parcelable.Creator<TimeModel>() { // from class: com.google.android.material.timepicker.TimeModel.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TimeModel createFromParcel(Parcel parcel) {
            return new TimeModel(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TimeModel[] newArray(int i) {
            return new TimeModel[i];
        }
    };

    public TimeModel() {
        this(0);
    }

    @Nullable
    public static String formatText(Resources resources, CharSequence charSequence) {
        return formatText(resources, charSequence, new ObfuscatedString(new long[]{-7776177969246303089L, -2420931991551896273L}).toString());
    }

    private static int getPeriod(int i) {
        return i >= 12 ? 1 : 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TimeModel)) {
            return false;
        }
        TimeModel timeModel = (TimeModel) obj;
        if (this.hour == timeModel.hour && this.minute == timeModel.minute && this.format == timeModel.format && this.selection == timeModel.selection) {
            return true;
        }
        return false;
    }

    @StringRes
    public int getHourContentDescriptionResId() {
        if (this.format == 1) {
            return R.string.material_hour_24h_suffix;
        }
        return R.string.material_hour_suffix;
    }

    public int getHourForDisplay() {
        if (this.format == 1) {
            return this.hour % 24;
        }
        int i = this.hour;
        if (i % 12 == 0) {
            return 12;
        }
        if (this.period == 1) {
            return i - 12;
        }
        return i;
    }

    public MaxInputValidator getHourInputValidator() {
        return this.hourInputValidator;
    }

    public MaxInputValidator getMinuteInputValidator() {
        return this.minuteInputValidator;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.format), Integer.valueOf(this.hour), Integer.valueOf(this.minute), Integer.valueOf(this.selection)});
    }

    public void setHour(int i) {
        if (this.format == 1) {
            this.hour = i;
            return;
        }
        int i2 = 12;
        int i3 = i % 12;
        if (this.period != 1) {
            i2 = 0;
        }
        this.hour = i3 + i2;
    }

    public void setHourOfDay(int i) {
        this.period = getPeriod(i);
        this.hour = i;
    }

    public void setMinute(@IntRange(from = 0, to = 59) int i) {
        this.minute = i % 60;
    }

    public void setPeriod(int i) {
        if (i != this.period) {
            this.period = i;
            int i2 = this.hour;
            if (i2 < 12 && i == 1) {
                this.hour = i2 + 12;
            } else if (i2 >= 12 && i == 0) {
                this.hour = i2 - 12;
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.hour);
        parcel.writeInt(this.minute);
        parcel.writeInt(this.selection);
        parcel.writeInt(this.format);
    }

    public TimeModel(int i) {
        this(0, 0, 10, i);
    }

    @Nullable
    public static String formatText(Resources resources, CharSequence charSequence, String str) {
        try {
            return String.format(resources.getConfiguration().locale, str, Integer.valueOf(Integer.parseInt(String.valueOf(charSequence))));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public TimeModel(int i, int i2, int i3, int i4) {
        this.hour = i;
        this.minute = i2;
        this.selection = i3;
        this.format = i4;
        this.period = getPeriod(i);
        this.minuteInputValidator = new MaxInputValidator(59);
        this.hourInputValidator = new MaxInputValidator(i4 == 1 ? 23 : 12);
    }

    public TimeModel(Parcel parcel) {
        this(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
    }
}
