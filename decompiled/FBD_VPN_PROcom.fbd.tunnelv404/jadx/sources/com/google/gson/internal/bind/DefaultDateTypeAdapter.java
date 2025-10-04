package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.JavaVersion;
import com.google.gson.internal.PreJava9DateFormatProvider;
import com.google.gson.internal.bind.util.ISO8601Utils;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes3.dex */
public final class DefaultDateTypeAdapter<T extends Date> extends TypeAdapter<T> {
    private final List<DateFormat> dateFormats;
    private final DateType<T> dateType;
    private static final String SIMPLE_NAME = new ObfuscatedString(new long[]{-6425286545988911231L, 4497968042668336814L, -7619823330522599075L, -5116382129659177551L}).toString();
    public static final TypeAdapterFactory DEFAULT_STYLE_FACTORY = new TypeAdapterFactory() { // from class: com.google.gson.internal.bind.DefaultDateTypeAdapter.1
        @Override // com.google.gson.TypeAdapterFactory
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            if (typeToken.getRawType() != Date.class) {
                return null;
            }
            int i = 2;
            return new DefaultDateTypeAdapter(DateType.DATE, i, i);
        }

        public String toString() {
            return new ObfuscatedString(new long[]{2837256954842818774L, -1202157545195626038L, 8758452181543601179L, -1635884486432451292L, 1314859205706551410L, 568979120290652299L, -4472338302552185454L}).toString();
        }
    };

    /* loaded from: classes3.dex */
    public static abstract class DateType<T extends Date> {
        public static final DateType<Date> DATE = new DateType<Date>(Date.class) { // from class: com.google.gson.internal.bind.DefaultDateTypeAdapter.DateType.1
            @Override // com.google.gson.internal.bind.DefaultDateTypeAdapter.DateType
            public Date deserialize(Date date) {
                return date;
            }
        };
        private final Class<T> dateClass;

        public DateType(Class<T> cls) {
            this.dateClass = cls;
        }

        private TypeAdapterFactory createFactory(DefaultDateTypeAdapter<T> defaultDateTypeAdapter) {
            return TypeAdapters.newFactory(this.dateClass, defaultDateTypeAdapter);
        }

        public final TypeAdapterFactory createAdapterFactory(String str) {
            return createFactory(new DefaultDateTypeAdapter<>(this, str));
        }

        public abstract T deserialize(Date date);

        public final TypeAdapterFactory createAdapterFactory(int i, int i2) {
            return createFactory(new DefaultDateTypeAdapter<>(this, i, i2));
        }
    }

    private Date deserializeToDate(JsonReader jsonReader) {
        String nextString = jsonReader.nextString();
        synchronized (this.dateFormats) {
            try {
                Iterator<DateFormat> it = this.dateFormats.iterator();
                while (it.hasNext()) {
                    DateFormat next = it.next();
                    TimeZone timeZone = next.getTimeZone();
                    try {
                        try {
                            return next.parse(nextString);
                        } finally {
                            next.setTimeZone(timeZone);
                        }
                    } catch (ParseException unused) {
                        next.setTimeZone(timeZone);
                    }
                }
                try {
                    return ISO8601Utils.parse(nextString, new ParsePosition(0));
                } catch (ParseException e) {
                    throw new JsonSyntaxException(new ObfuscatedString(new long[]{8981441385940340535L, 6376531373709833125L, 6796408366555919754L}).toString() + nextString + new ObfuscatedString(new long[]{-7699532601263135561L, -7178437208157937523L, -6029602185156060441L, 8951283890702892916L}).toString() + jsonReader.getPreviousPath(), e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String toString() {
        DateFormat dateFormat = this.dateFormats.get(0);
        if (dateFormat instanceof SimpleDateFormat) {
            return new ObfuscatedString(new long[]{2663503611238528004L, 4873896875312283998L, -7697209168107805897L, -8719817856594172246L}).toString() + ((SimpleDateFormat) dateFormat).toPattern() + ')';
        }
        return new ObfuscatedString(new long[]{-8332218076501528402L, 3447026306592342150L, -2036686933632132652L, 1007959056723908297L}).toString() + dateFormat.getClass().getSimpleName() + ')';
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: read */
    public T read2(JsonReader jsonReader) {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        return this.dateType.deserialize(deserializeToDate(jsonReader));
    }

    @Override // com.google.gson.TypeAdapter
    public void write(JsonWriter jsonWriter, Date date) {
        String format;
        if (date == null) {
            jsonWriter.nullValue();
            return;
        }
        DateFormat dateFormat = this.dateFormats.get(0);
        synchronized (this.dateFormats) {
            format = dateFormat.format(date);
        }
        jsonWriter.value(format);
    }

    private DefaultDateTypeAdapter(DateType<T> dateType, String str) {
        ArrayList arrayList = new ArrayList();
        this.dateFormats = arrayList;
        Objects.requireNonNull(dateType);
        this.dateType = dateType;
        Locale locale = Locale.US;
        arrayList.add(new SimpleDateFormat(str, locale));
        if (Locale.getDefault().equals(locale)) {
            return;
        }
        arrayList.add(new SimpleDateFormat(str));
    }

    private DefaultDateTypeAdapter(DateType<T> dateType, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        this.dateFormats = arrayList;
        Objects.requireNonNull(dateType);
        this.dateType = dateType;
        Locale locale = Locale.US;
        arrayList.add(DateFormat.getDateTimeInstance(i, i2, locale));
        if (!Locale.getDefault().equals(locale)) {
            arrayList.add(DateFormat.getDateTimeInstance(i, i2));
        }
        if (JavaVersion.isJava9OrLater()) {
            arrayList.add(PreJava9DateFormatProvider.getUsDateTimeFormat(i, i2));
        }
    }
}
