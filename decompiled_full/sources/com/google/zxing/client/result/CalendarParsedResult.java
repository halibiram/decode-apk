package com.google.zxing.client.result;

import com.panda912.muddy.ObfuscatedString;
import j$.util.DesugarTimeZone;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class CalendarParsedResult extends ParsedResult {
    private final String[] attendees;
    private final String description;
    private final long end;
    private final boolean endAllDay;
    private final double latitude;
    private final String location;
    private final double longitude;
    private final String organizer;
    private final long start;
    private final boolean startAllDay;
    private final String summary;
    private static final Pattern RFC2445_DURATION = Pattern.compile(new ObfuscatedString(new long[]{6058154769463283939L, -4447249602977288418L, 4225909996316183512L, 8167757257179371458L, -6483270835271331505L, 4788783049256194607L, 7550057976669861344L, -3378523383847752382L, 8335071339453029099L}).toString());
    private static final long[] RFC2445_DURATION_FIELD_UNITS = {604800000, 86400000, 3600000, 60000, 1000};
    private static final Pattern DATE_TIME = Pattern.compile(new ObfuscatedString(new long[]{-3217888126573947650L, 1089466369687997719L, 3675817133179162216L, 2602316952851614532L}).toString());

    public CalendarParsedResult(String str, String str2, String str3, String str4, String str5, String str6, String[] strArr, String str7, double d, double d2) {
        super(ParsedResultType.CALENDAR);
        this.summary = str;
        try {
            long parseDate = parseDate(str2);
            this.start = parseDate;
            if (str3 == null) {
                long parseDurationMS = parseDurationMS(str4);
                this.end = parseDurationMS < 0 ? -1L : parseDate + parseDurationMS;
            } else {
                try {
                    this.end = parseDate(str3);
                } catch (ParseException e) {
                    throw new IllegalArgumentException(e.toString());
                }
            }
            boolean z = false;
            this.startAllDay = str2.length() == 8;
            if (str3 != null && str3.length() == 8) {
                z = true;
            }
            this.endAllDay = z;
            this.location = str5;
            this.organizer = str6;
            this.attendees = strArr;
            this.description = str7;
            this.latitude = d;
            this.longitude = d2;
        } catch (ParseException e2) {
            throw new IllegalArgumentException(e2.toString());
        }
    }

    private static String format(boolean z, long j) {
        DateFormat dateTimeInstance;
        if (j < 0) {
            return null;
        }
        if (z) {
            dateTimeInstance = DateFormat.getDateInstance(2);
        } else {
            dateTimeInstance = DateFormat.getDateTimeInstance(2, 2);
        }
        return dateTimeInstance.format(Long.valueOf(j));
    }

    private static long parseDate(String str) {
        if (DATE_TIME.matcher(str).matches()) {
            if (str.length() == 8) {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat(new ObfuscatedString(new long[]{-2301234326681044469L, -3068184570259263087L}).toString(), Locale.ENGLISH);
                simpleDateFormat.setTimeZone(DesugarTimeZone.getTimeZone(new ObfuscatedString(new long[]{5866465586073166163L, 1882073657566343897L}).toString()));
                return simpleDateFormat.parse(str).getTime();
            }
            if (str.length() == 16 && str.charAt(15) == 'Z') {
                long parseDateTimeString = parseDateTimeString(str.substring(0, 15));
                long j = parseDateTimeString + r6.get(15);
                new GregorianCalendar().setTime(new Date(j));
                return j + r6.get(16);
            }
            return parseDateTimeString(str);
        }
        throw new ParseException(str, 0);
    }

    private static long parseDateTimeString(String str) {
        return new SimpleDateFormat(new ObfuscatedString(new long[]{848554645786372390L, 1244851182086882964L, 5254123924325920983L, 26126908336320491L}).toString(), Locale.ENGLISH).parse(str).getTime();
    }

    private static long parseDurationMS(CharSequence charSequence) {
        if (charSequence == null) {
            return -1L;
        }
        Matcher matcher = RFC2445_DURATION.matcher(charSequence);
        if (!matcher.matches()) {
            return -1L;
        }
        long j = 0;
        int i = 0;
        while (true) {
            long[] jArr = RFC2445_DURATION_FIELD_UNITS;
            if (i < jArr.length) {
                int i2 = i + 1;
                if (matcher.group(i2) != null) {
                    j = (jArr[i] * Integer.parseInt(r5)) + j;
                }
                i = i2;
            } else {
                return j;
            }
        }
    }

    public String[] getAttendees() {
        return this.attendees;
    }

    public String getDescription() {
        return this.description;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(100);
        ParsedResult.maybeAppend(this.summary, sb);
        ParsedResult.maybeAppend(format(this.startAllDay, this.start), sb);
        ParsedResult.maybeAppend(format(this.endAllDay, this.end), sb);
        ParsedResult.maybeAppend(this.location, sb);
        ParsedResult.maybeAppend(this.organizer, sb);
        ParsedResult.maybeAppend(this.attendees, sb);
        ParsedResult.maybeAppend(this.description, sb);
        return sb.toString();
    }

    @Deprecated
    public Date getEnd() {
        if (this.end < 0) {
            return null;
        }
        return new Date(this.end);
    }

    public long getEndTimestamp() {
        return this.end;
    }

    public double getLatitude() {
        return this.latitude;
    }

    public String getLocation() {
        return this.location;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public String getOrganizer() {
        return this.organizer;
    }

    @Deprecated
    public Date getStart() {
        return new Date(this.start);
    }

    public long getStartTimestamp() {
        return this.start;
    }

    public String getSummary() {
        return this.summary;
    }

    public boolean isEndAllDay() {
        return this.endAllDay;
    }

    public boolean isStartAllDay() {
        return this.startAllDay;
    }
}
