package com.google.android.material.datepicker;

import android.annotation.TargetApi;
import android.content.res.Resources;
import android.icu.text.DateFormat;
import android.icu.text.DisplayContext;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.R;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.DesugarTimeZone;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class UtcDates {
    static final String UTC = new ObfuscatedString(new long[]{-6195158656412374317L, -6272387584396792729L}).toString();
    static AtomicReference<TimeSource> timeSourceRef = new AtomicReference<>();

    private UtcDates() {
    }

    public static long canonicalYearMonthDay(long j) {
        Calendar utcCalendar = getUtcCalendar();
        utcCalendar.setTimeInMillis(j);
        return getDayCopy(utcCalendar).getTimeInMillis();
    }

    private static int findCharactersInDateFormatPattern(@NonNull String str, @NonNull String str2, int i, int i2) {
        while (i2 >= 0 && i2 < str.length() && str2.indexOf(str.charAt(i2)) == -1) {
            if (str.charAt(i2) != '\'') {
                i2 += i;
            }
            do {
                i2 += i;
                if (i2 >= 0 && i2 < str.length()) {
                }
                i2 += i;
            } while (str.charAt(i2) != '\'');
            i2 += i;
        }
        return i2;
    }

    @TargetApi(24)
    public static DateFormat getAbbrMonthDayFormat(Locale locale) {
        return getAndroidFormat(new ObfuscatedString(new long[]{7659943936269472741L, 286907547015324203L}).toString(), locale);
    }

    @TargetApi(24)
    private static DateFormat getAndroidFormat(String str, Locale locale) {
        DateFormat instanceForSkeleton;
        DisplayContext displayContext;
        instanceForSkeleton = DateFormat.getInstanceForSkeleton(str, locale);
        instanceForSkeleton.setTimeZone(getUtcAndroidTimeZone());
        displayContext = DisplayContext.CAPITALIZATION_FOR_STANDALONE;
        instanceForSkeleton.setContext(displayContext);
        return instanceForSkeleton;
    }

    @NonNull
    public static String getDatePatternAsInputFormat(@NonNull String str) {
        return str.replaceAll(new ObfuscatedString(new long[]{-6159004873500484689L, -1105144702087329878L, 860435404215177736L}).toString(), new ObfuscatedString(new long[]{-636104670351615582L}).toString()).replaceAll(new ObfuscatedString(new long[]{-5968457684298182471L, -3748621397175517404L}).toString(), new ObfuscatedString(new long[]{-2267371045294325867L, 6113978768120341335L}).toString()).replaceAll(new ObfuscatedString(new long[]{-4611005096078719270L, 8346411044171532045L}).toString(), new ObfuscatedString(new long[]{-8462395435236918158L, 6446443965985328436L}).toString()).replaceAll(new ObfuscatedString(new long[]{-9006807768177255755L, 7562705525018936058L}).toString(), new ObfuscatedString(new long[]{-1409536338679201543L, 1465665461180057363L}).toString()).replaceAll(new ObfuscatedString(new long[]{-8771237237522514673L, -9141798417535244185L}).toString(), new ObfuscatedString(new long[]{-1351123796710201437L}).toString()).replaceAll(new ObfuscatedString(new long[]{-994260975275912262L, 3545829296538615150L}).toString(), new ObfuscatedString(new long[]{-8579462943133617023L, -5005056526164722664L}).toString());
    }

    public static Calendar getDayCopy(Calendar calendar) {
        Calendar utcCalendarOf = getUtcCalendarOf(calendar);
        Calendar utcCalendar = getUtcCalendar();
        utcCalendar.set(utcCalendarOf.get(1), utcCalendarOf.get(2), utcCalendarOf.get(5));
        return utcCalendar;
    }

    public static SimpleDateFormat getDefaultTextInputFormat() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(getDatePatternAsInputFormat(((SimpleDateFormat) java.text.DateFormat.getDateInstance(3, Locale.getDefault())).toPattern()), Locale.getDefault());
        simpleDateFormat.setTimeZone(getTimeZone());
        simpleDateFormat.setLenient(false);
        return simpleDateFormat;
    }

    public static String getDefaultTextInputHint(Resources resources, SimpleDateFormat simpleDateFormat) {
        String pattern = simpleDateFormat.toPattern();
        String string = resources.getString(R.string.mtrl_picker_text_input_year_abbr);
        String string2 = resources.getString(R.string.mtrl_picker_text_input_month_abbr);
        String string3 = resources.getString(R.string.mtrl_picker_text_input_day_abbr);
        if (Locale.getDefault().getLanguage().equals(Locale.KOREAN.getLanguage())) {
            pattern = pattern.replaceAll(new ObfuscatedString(new long[]{-8116459514153709317L, -3942580764055135655L}).toString(), new ObfuscatedString(new long[]{-6134222011707923043L, 7605230710279225239L}).toString()).replaceAll(new ObfuscatedString(new long[]{3118120055413128686L, 4289393996041159592L}).toString(), new ObfuscatedString(new long[]{-1099760501758702600L, -894085262834268461L}).toString()).replaceAll(new ObfuscatedString(new long[]{4132133923703754436L, 2712240845258305122L}).toString(), new ObfuscatedString(new long[]{8032462941789866923L, 8880484328607898956L}).toString());
        }
        return pattern.replace(new ObfuscatedString(new long[]{-1562330332320887214L, -9010992961562659287L}).toString(), string3).replace(new ObfuscatedString(new long[]{-8716686320712823874L, -1666736541901781664L}).toString(), string2).replace(new ObfuscatedString(new long[]{-8620775924117931336L, -3865772709712888894L}).toString(), string);
    }

    private static java.text.DateFormat getFormat(int i, Locale locale) {
        java.text.DateFormat dateInstance = java.text.DateFormat.getDateInstance(i, locale);
        dateInstance.setTimeZone(getTimeZone());
        return dateInstance;
    }

    public static java.text.DateFormat getFullFormat() {
        return getFullFormat(Locale.getDefault());
    }

    public static java.text.DateFormat getMediumFormat() {
        return getMediumFormat(Locale.getDefault());
    }

    public static java.text.DateFormat getMediumNoYear() {
        return getMediumNoYear(Locale.getDefault());
    }

    @TargetApi(24)
    public static DateFormat getMonthWeekdayDayFormat(Locale locale) {
        return getAndroidFormat(new ObfuscatedString(new long[]{-2435375699754082225L, 7320800588522236063L, -4855470844116434798L}).toString(), locale);
    }

    public static java.text.DateFormat getNormalizedFormat(@NonNull java.text.DateFormat dateFormat) {
        java.text.DateFormat dateFormat2 = (java.text.DateFormat) dateFormat.clone();
        dateFormat2.setTimeZone(getTimeZone());
        return dateFormat2;
    }

    public static SimpleDateFormat getSimpleFormat(String str) {
        return getSimpleFormat(str, Locale.getDefault());
    }

    public static TimeSource getTimeSource() {
        TimeSource timeSource = timeSourceRef.get();
        if (timeSource == null) {
            return TimeSource.system();
        }
        return timeSource;
    }

    private static TimeZone getTimeZone() {
        return DesugarTimeZone.getTimeZone(new ObfuscatedString(new long[]{-1665476673429788519L, -5064139140995543586L}).toString());
    }

    public static Calendar getTodayCalendar() {
        Calendar now = getTimeSource().now();
        now.set(11, 0);
        now.set(12, 0);
        now.set(13, 0);
        now.set(14, 0);
        now.setTimeZone(getTimeZone());
        return now;
    }

    @TargetApi(24)
    private static android.icu.util.TimeZone getUtcAndroidTimeZone() {
        android.icu.util.TimeZone timeZone;
        timeZone = android.icu.util.TimeZone.getTimeZone(new ObfuscatedString(new long[]{-7325760539543157966L, 4346586546004926335L}).toString());
        return timeZone;
    }

    public static Calendar getUtcCalendar() {
        return getUtcCalendarOf(null);
    }

    public static Calendar getUtcCalendarOf(@Nullable Calendar calendar) {
        Calendar calendar2 = Calendar.getInstance(getTimeZone());
        if (calendar == null) {
            calendar2.clear();
        } else {
            calendar2.setTimeInMillis(calendar.getTimeInMillis());
        }
        return calendar2;
    }

    @TargetApi(24)
    public static DateFormat getYearAbbrMonthDayFormat(Locale locale) {
        return getAndroidFormat(new ObfuscatedString(new long[]{-4214294448589483174L, -8844544426192575659L}).toString(), locale);
    }

    @TargetApi(24)
    public static DateFormat getYearMonthFormat(Locale locale) {
        return getAndroidFormat(new ObfuscatedString(new long[]{-6914760246332913830L, 8278874729819396059L}).toString(), locale);
    }

    @TargetApi(24)
    public static DateFormat getYearMonthWeekdayDayFormat(Locale locale) {
        return getAndroidFormat(new ObfuscatedString(new long[]{800813557191506280L, 8742786713232411041L, 3932943227067285244L}).toString(), locale);
    }

    @NonNull
    private static String removeYearFromDateFormatPattern(@NonNull String str) {
        int findCharactersInDateFormatPattern = findCharactersInDateFormatPattern(str, new ObfuscatedString(new long[]{6086634432346694981L, -969462657460183267L}).toString(), 1, 0);
        if (findCharactersInDateFormatPattern >= str.length()) {
            return str;
        }
        String obfuscatedString = new ObfuscatedString(new long[]{-2684589617344490634L, 7165172643395955897L}).toString();
        int findCharactersInDateFormatPattern2 = findCharactersInDateFormatPattern(str, obfuscatedString, 1, findCharactersInDateFormatPattern);
        if (findCharactersInDateFormatPattern2 < str.length()) {
            obfuscatedString = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{7953248382085423023L, 3442404149001095053L}), AbstractC0749x8313616e.m3341xc20437a5(obfuscatedString));
        }
        return str.replace(str.substring(findCharactersInDateFormatPattern(str, obfuscatedString, -1, findCharactersInDateFormatPattern) + 1, findCharactersInDateFormatPattern2), new ObfuscatedString(new long[]{6819622672178863929L, -4836567467134108095L}).toString()).trim();
    }

    public static void setTimeSource(@Nullable TimeSource timeSource) {
        timeSourceRef.set(timeSource);
    }

    public static java.text.DateFormat getFullFormat(Locale locale) {
        return getFormat(0, locale);
    }

    public static java.text.DateFormat getMediumFormat(Locale locale) {
        return getFormat(2, locale);
    }

    public static java.text.DateFormat getMediumNoYear(Locale locale) {
        SimpleDateFormat simpleDateFormat = (SimpleDateFormat) getMediumFormat(locale);
        simpleDateFormat.applyPattern(removeYearFromDateFormatPattern(simpleDateFormat.toPattern()));
        return simpleDateFormat;
    }

    private static SimpleDateFormat getSimpleFormat(String str, Locale locale) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, locale);
        simpleDateFormat.setTimeZone(getTimeZone());
        return simpleDateFormat;
    }
}
