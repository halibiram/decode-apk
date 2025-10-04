package com.google.gson;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.InlineMe;
import com.google.gson.internal.C$Gson$Preconditions;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.bind.DefaultDateTypeAdapter;
import com.google.gson.internal.bind.TreeTypeAdapter;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.internal.sql.SqlTypesSupport;
import com.google.gson.reflect.TypeToken;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.Objects;
import java.lang.reflect.Type;
import java.text.SimpleDateFormat;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class GsonBuilder {
    private boolean complexMapKeySerialization;
    private String datePattern;
    private int dateStyle;
    private boolean escapeHtmlChars;
    private Excluder excluder;
    private final List<TypeAdapterFactory> factories;
    private FieldNamingStrategy fieldNamingPolicy;
    private FormattingStyle formattingStyle;
    private boolean generateNonExecutableJson;
    private final List<TypeAdapterFactory> hierarchyFactories;
    private final Map<Type, InstanceCreator<?>> instanceCreators;
    private LongSerializationPolicy longSerializationPolicy;
    private ToNumberStrategy numberToNumberStrategy;
    private ToNumberStrategy objectToNumberStrategy;
    private final ArrayDeque<ReflectionAccessFilter> reflectionFilters;
    private boolean serializeNulls;
    private boolean serializeSpecialFloatingPointValues;
    private Strictness strictness;
    private int timeStyle;
    private boolean useJdkUnsafe;

    public GsonBuilder() {
        this.excluder = Excluder.DEFAULT;
        this.longSerializationPolicy = LongSerializationPolicy.DEFAULT;
        this.fieldNamingPolicy = FieldNamingPolicy.IDENTITY;
        this.instanceCreators = new HashMap();
        this.factories = new ArrayList();
        this.hierarchyFactories = new ArrayList();
        this.serializeNulls = false;
        this.datePattern = Gson.DEFAULT_DATE_PATTERN;
        this.dateStyle = 2;
        this.timeStyle = 2;
        this.complexMapKeySerialization = false;
        this.serializeSpecialFloatingPointValues = false;
        this.escapeHtmlChars = true;
        this.formattingStyle = Gson.DEFAULT_FORMATTING_STYLE;
        this.generateNonExecutableJson = false;
        this.strictness = Gson.DEFAULT_STRICTNESS;
        this.useJdkUnsafe = true;
        this.objectToNumberStrategy = Gson.DEFAULT_OBJECT_TO_NUMBER_STRATEGY;
        this.numberToNumberStrategy = Gson.DEFAULT_NUMBER_TO_NUMBER_STRATEGY;
        this.reflectionFilters = new ArrayDeque<>();
    }

    private static void addTypeAdaptersForDate(String str, int i, int i2, List<TypeAdapterFactory> list) {
        TypeAdapterFactory typeAdapterFactory;
        TypeAdapterFactory typeAdapterFactory2;
        boolean z = SqlTypesSupport.SUPPORTS_SQL_TYPES;
        TypeAdapterFactory typeAdapterFactory3 = null;
        if (str != null && !str.trim().isEmpty()) {
            typeAdapterFactory = DefaultDateTypeAdapter.DateType.DATE.createAdapterFactory(str);
            if (z) {
                typeAdapterFactory3 = SqlTypesSupport.TIMESTAMP_DATE_TYPE.createAdapterFactory(str);
                typeAdapterFactory2 = SqlTypesSupport.DATE_DATE_TYPE.createAdapterFactory(str);
            }
            typeAdapterFactory2 = null;
        } else {
            if (i == 2 && i2 == 2) {
                return;
            }
            TypeAdapterFactory createAdapterFactory = DefaultDateTypeAdapter.DateType.DATE.createAdapterFactory(i, i2);
            if (z) {
                typeAdapterFactory3 = SqlTypesSupport.TIMESTAMP_DATE_TYPE.createAdapterFactory(i, i2);
                TypeAdapterFactory createAdapterFactory2 = SqlTypesSupport.DATE_DATE_TYPE.createAdapterFactory(i, i2);
                typeAdapterFactory = createAdapterFactory;
                typeAdapterFactory2 = createAdapterFactory2;
            } else {
                typeAdapterFactory = createAdapterFactory;
                typeAdapterFactory2 = null;
            }
        }
        list.add(typeAdapterFactory);
        if (z) {
            list.add(typeAdapterFactory3);
            list.add(typeAdapterFactory2);
        }
    }

    private static int checkDateFormatStyle(int i) {
        if (i >= 0 && i <= 3) {
            return i;
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-5871485474612343214L, -4927445241045779603L, 2842024148699703267L}), new StringBuilder(), i));
    }

    private static boolean hasNonOverridableAdapter(Type type) {
        if (type == Object.class) {
            return true;
        }
        return false;
    }

    @CanIgnoreReturnValue
    public GsonBuilder addDeserializationExclusionStrategy(ExclusionStrategy exclusionStrategy) {
        Objects.requireNonNull(exclusionStrategy);
        this.excluder = this.excluder.withExclusionStrategy(exclusionStrategy, false, true);
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder addReflectionAccessFilter(ReflectionAccessFilter reflectionAccessFilter) {
        Objects.requireNonNull(reflectionAccessFilter);
        this.reflectionFilters.addFirst(reflectionAccessFilter);
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder addSerializationExclusionStrategy(ExclusionStrategy exclusionStrategy) {
        Objects.requireNonNull(exclusionStrategy);
        this.excluder = this.excluder.withExclusionStrategy(exclusionStrategy, true, false);
        return this;
    }

    public Gson create() {
        ArrayList arrayList = new ArrayList(this.hierarchyFactories.size() + this.factories.size() + 3);
        arrayList.addAll(this.factories);
        Collections.reverse(arrayList);
        ArrayList arrayList2 = new ArrayList(this.hierarchyFactories);
        Collections.reverse(arrayList2);
        arrayList.addAll(arrayList2);
        addTypeAdaptersForDate(this.datePattern, this.dateStyle, this.timeStyle, arrayList);
        return new Gson(this.excluder, this.fieldNamingPolicy, new HashMap(this.instanceCreators), this.serializeNulls, this.complexMapKeySerialization, this.generateNonExecutableJson, this.escapeHtmlChars, this.formattingStyle, this.strictness, this.serializeSpecialFloatingPointValues, this.useJdkUnsafe, this.longSerializationPolicy, this.datePattern, this.dateStyle, this.timeStyle, new ArrayList(this.factories), new ArrayList(this.hierarchyFactories), arrayList, this.objectToNumberStrategy, this.numberToNumberStrategy, new ArrayList(this.reflectionFilters));
    }

    @CanIgnoreReturnValue
    public GsonBuilder disableHtmlEscaping() {
        this.escapeHtmlChars = false;
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder disableInnerClassSerialization() {
        this.excluder = this.excluder.disableInnerClassSerialization();
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder disableJdkUnsafe() {
        this.useJdkUnsafe = false;
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder enableComplexMapKeySerialization() {
        this.complexMapKeySerialization = true;
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder excludeFieldsWithModifiers(int... iArr) {
        Objects.requireNonNull(iArr);
        this.excluder = this.excluder.withModifiers(iArr);
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder excludeFieldsWithoutExposeAnnotation() {
        this.excluder = this.excluder.excludeFieldsWithoutExposeAnnotation();
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder generateNonExecutableJson() {
        this.generateNonExecutableJson = true;
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder registerTypeAdapter(Type type, Object obj) {
        boolean z;
        Objects.requireNonNull(type);
        boolean z2 = obj instanceof JsonSerializer;
        if (!z2 && !(obj instanceof JsonDeserializer) && !(obj instanceof InstanceCreator) && !(obj instanceof TypeAdapter)) {
            z = false;
        } else {
            z = true;
        }
        C$Gson$Preconditions.checkArgument(z);
        if (!hasNonOverridableAdapter(type)) {
            if (obj instanceof InstanceCreator) {
                this.instanceCreators.put(type, (InstanceCreator) obj);
            }
            if (z2 || (obj instanceof JsonDeserializer)) {
                this.factories.add(TreeTypeAdapter.newFactoryWithMatchRawType(TypeToken.get(type), obj));
            }
            if (obj instanceof TypeAdapter) {
                this.factories.add(TypeAdapters.newFactory(TypeToken.get(type), (TypeAdapter) obj));
            }
            return this;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{6556981083559734874L, 1760157756888882050L, -3794953611094726440L, 3055218791945809375L, 2899892897097667701L, 2545881336846196641L}).toString() + type);
    }

    @CanIgnoreReturnValue
    public GsonBuilder registerTypeAdapterFactory(TypeAdapterFactory typeAdapterFactory) {
        Objects.requireNonNull(typeAdapterFactory);
        this.factories.add(typeAdapterFactory);
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder registerTypeHierarchyAdapter(Class<?> cls, Object obj) {
        boolean z;
        Objects.requireNonNull(cls);
        boolean z2 = obj instanceof JsonSerializer;
        if (!z2 && !(obj instanceof JsonDeserializer) && !(obj instanceof TypeAdapter)) {
            z = false;
        } else {
            z = true;
        }
        C$Gson$Preconditions.checkArgument(z);
        if ((obj instanceof JsonDeserializer) || z2) {
            this.hierarchyFactories.add(TreeTypeAdapter.newTypeHierarchyFactory(cls, obj));
        }
        if (obj instanceof TypeAdapter) {
            this.factories.add(TypeAdapters.newTypeHierarchyFactory(cls, (TypeAdapter) obj));
        }
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder serializeNulls() {
        this.serializeNulls = true;
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder serializeSpecialFloatingPointValues() {
        this.serializeSpecialFloatingPointValues = true;
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder setDateFormat(String str) {
        if (str != null) {
            try {
                new SimpleDateFormat(str);
            } catch (IllegalArgumentException e) {
                StringBuilder sb = new StringBuilder();
                sb.append(new ObfuscatedString(new long[]{7858097055388465141L, 8183079136806938701L, 808541898326620129L, 2768917170931461535L}).toString());
                sb.append(str);
                throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{3938104128170306457L, -2823793185231709401L, -1606410790031809541L}), sb), e);
            }
        }
        this.datePattern = str;
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder setExclusionStrategies(ExclusionStrategy... exclusionStrategyArr) {
        Objects.requireNonNull(exclusionStrategyArr);
        for (ExclusionStrategy exclusionStrategy : exclusionStrategyArr) {
            this.excluder = this.excluder.withExclusionStrategy(exclusionStrategy, true, true);
        }
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder setFieldNamingPolicy(FieldNamingPolicy fieldNamingPolicy) {
        return setFieldNamingStrategy(fieldNamingPolicy);
    }

    @CanIgnoreReturnValue
    public GsonBuilder setFieldNamingStrategy(FieldNamingStrategy fieldNamingStrategy) {
        Objects.requireNonNull(fieldNamingStrategy);
        this.fieldNamingPolicy = fieldNamingStrategy;
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder setFormattingStyle(FormattingStyle formattingStyle) {
        Objects.requireNonNull(formattingStyle);
        this.formattingStyle = formattingStyle;
        return this;
    }

    @CanIgnoreReturnValue
    @InlineMe(imports = {"com.google.gson.Strictness"}, replacement = "this.setStrictness(Strictness.LENIENT)")
    @Deprecated
    public GsonBuilder setLenient() {
        return setStrictness(Strictness.LENIENT);
    }

    @CanIgnoreReturnValue
    public GsonBuilder setLongSerializationPolicy(LongSerializationPolicy longSerializationPolicy) {
        Objects.requireNonNull(longSerializationPolicy);
        this.longSerializationPolicy = longSerializationPolicy;
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder setNumberToNumberStrategy(ToNumberStrategy toNumberStrategy) {
        Objects.requireNonNull(toNumberStrategy);
        this.numberToNumberStrategy = toNumberStrategy;
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder setObjectToNumberStrategy(ToNumberStrategy toNumberStrategy) {
        Objects.requireNonNull(toNumberStrategy);
        this.objectToNumberStrategy = toNumberStrategy;
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder setPrettyPrinting() {
        return setFormattingStyle(FormattingStyle.PRETTY);
    }

    @CanIgnoreReturnValue
    public GsonBuilder setStrictness(Strictness strictness) {
        Objects.requireNonNull(strictness);
        this.strictness = strictness;
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder setVersion(double d) {
        if (!Double.isNaN(d) && d >= 0.0d) {
            this.excluder = this.excluder.withVersion(d);
            return this;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{3664823535074457827L, 8921821269682503141L, -6783363836533311383L, -3927209342934493546L}).toString() + d);
    }

    @CanIgnoreReturnValue
    @Deprecated
    public GsonBuilder setDateFormat(int i) {
        this.dateStyle = checkDateFormatStyle(i);
        this.datePattern = null;
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder setDateFormat(int i, int i2) {
        this.dateStyle = checkDateFormatStyle(i);
        this.timeStyle = checkDateFormatStyle(i2);
        this.datePattern = null;
        return this;
    }

    public GsonBuilder(Gson gson) {
        this.excluder = Excluder.DEFAULT;
        this.longSerializationPolicy = LongSerializationPolicy.DEFAULT;
        this.fieldNamingPolicy = FieldNamingPolicy.IDENTITY;
        HashMap hashMap = new HashMap();
        this.instanceCreators = hashMap;
        ArrayList arrayList = new ArrayList();
        this.factories = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.hierarchyFactories = arrayList2;
        this.serializeNulls = false;
        this.datePattern = Gson.DEFAULT_DATE_PATTERN;
        this.dateStyle = 2;
        this.timeStyle = 2;
        this.complexMapKeySerialization = false;
        this.serializeSpecialFloatingPointValues = false;
        this.escapeHtmlChars = true;
        this.formattingStyle = Gson.DEFAULT_FORMATTING_STYLE;
        this.generateNonExecutableJson = false;
        this.strictness = Gson.DEFAULT_STRICTNESS;
        this.useJdkUnsafe = true;
        this.objectToNumberStrategy = Gson.DEFAULT_OBJECT_TO_NUMBER_STRATEGY;
        this.numberToNumberStrategy = Gson.DEFAULT_NUMBER_TO_NUMBER_STRATEGY;
        ArrayDeque<ReflectionAccessFilter> arrayDeque = new ArrayDeque<>();
        this.reflectionFilters = arrayDeque;
        this.excluder = gson.excluder;
        this.fieldNamingPolicy = gson.fieldNamingStrategy;
        hashMap.putAll(gson.instanceCreators);
        this.serializeNulls = gson.serializeNulls;
        this.complexMapKeySerialization = gson.complexMapKeySerialization;
        this.generateNonExecutableJson = gson.generateNonExecutableJson;
        this.escapeHtmlChars = gson.htmlSafe;
        this.formattingStyle = gson.formattingStyle;
        this.strictness = gson.strictness;
        this.serializeSpecialFloatingPointValues = gson.serializeSpecialFloatingPointValues;
        this.longSerializationPolicy = gson.longSerializationPolicy;
        this.datePattern = gson.datePattern;
        this.dateStyle = gson.dateStyle;
        this.timeStyle = gson.timeStyle;
        arrayList.addAll(gson.builderFactories);
        arrayList2.addAll(gson.builderHierarchyFactories);
        this.useJdkUnsafe = gson.useJdkUnsafe;
        this.objectToNumberStrategy = gson.objectToNumberStrategy;
        this.numberToNumberStrategy = gson.numberToNumberStrategy;
        arrayDeque.addAll(gson.reflectionFilters);
    }
}
