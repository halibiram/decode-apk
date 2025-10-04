package com.google.gson;

import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.LazilyParsedNumber;
import com.google.gson.internal.Primitives;
import com.google.gson.internal.Streams;
import com.google.gson.internal.bind.ArrayTypeAdapter;
import com.google.gson.internal.bind.CollectionTypeAdapterFactory;
import com.google.gson.internal.bind.DefaultDateTypeAdapter;
import com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory;
import com.google.gson.internal.bind.JsonTreeReader;
import com.google.gson.internal.bind.JsonTreeWriter;
import com.google.gson.internal.bind.MapTypeAdapterFactory;
import com.google.gson.internal.bind.NumberTypeAdapter;
import com.google.gson.internal.bind.ObjectTypeAdapter;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import com.google.gson.internal.bind.SerializationDelegatingTypeAdapter;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.internal.sql.SqlTypesSupport;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.google.gson.stream.MalformedJsonException;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.DesugarCollections;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* loaded from: classes.dex */
public final class Gson {
    static final boolean DEFAULT_COMPLEX_MAP_KEYS = false;
    static final boolean DEFAULT_ESCAPE_HTML = true;
    static final boolean DEFAULT_JSON_NON_EXECUTABLE = false;
    static final boolean DEFAULT_SERIALIZE_NULLS = false;
    static final boolean DEFAULT_SPECIALIZE_FLOAT_VALUES = false;
    static final boolean DEFAULT_USE_JDK_UNSAFE = true;
    final List<TypeAdapterFactory> builderFactories;
    final List<TypeAdapterFactory> builderHierarchyFactories;
    final boolean complexMapKeySerialization;
    private final ConstructorConstructor constructorConstructor;
    final String datePattern;
    final int dateStyle;
    final Excluder excluder;
    final List<TypeAdapterFactory> factories;
    final FieldNamingStrategy fieldNamingStrategy;
    final FormattingStyle formattingStyle;
    final boolean generateNonExecutableJson;
    final boolean htmlSafe;
    final Map<Type, InstanceCreator<?>> instanceCreators;
    private final JsonAdapterAnnotationTypeAdapterFactory jsonAdapterFactory;
    final LongSerializationPolicy longSerializationPolicy;
    final ToNumberStrategy numberToNumberStrategy;
    final ToNumberStrategy objectToNumberStrategy;
    final List<ReflectionAccessFilter> reflectionFilters;
    final boolean serializeNulls;
    final boolean serializeSpecialFloatingPointValues;
    final Strictness strictness;
    private final ThreadLocal<Map<TypeToken<?>, TypeAdapter<?>>> threadLocalAdapterResults;
    final int timeStyle;
    private final ConcurrentMap<TypeToken<?>, TypeAdapter<?>> typeTokenCache;
    final boolean useJdkUnsafe;
    private static final String JSON_NON_EXECUTABLE_PREFIX = new ObfuscatedString(new long[]{-123447878204670724L, 7135407147567586356L}).toString();
    static final Strictness DEFAULT_STRICTNESS = null;
    static final FormattingStyle DEFAULT_FORMATTING_STYLE = FormattingStyle.COMPACT;
    static final String DEFAULT_DATE_PATTERN = null;
    static final FieldNamingStrategy DEFAULT_FIELD_NAMING_STRATEGY = FieldNamingPolicy.IDENTITY;
    static final ToNumberStrategy DEFAULT_OBJECT_TO_NUMBER_STRATEGY = ToNumberPolicy.DOUBLE;
    static final ToNumberStrategy DEFAULT_NUMBER_TO_NUMBER_STRATEGY = ToNumberPolicy.LAZILY_PARSED_NUMBER;

    /* loaded from: classes.dex */
    public static class FutureTypeAdapter<T> extends SerializationDelegatingTypeAdapter<T> {
        private TypeAdapter<T> delegate = null;

        private TypeAdapter<T> delegate() {
            TypeAdapter<T> typeAdapter = this.delegate;
            if (typeAdapter != null) {
                return typeAdapter;
            }
            throw new IllegalStateException(new ObfuscatedString(new long[]{4450652737087090987L, 2582406631900676093L, 6729509919803773082L, -2207406241058585556L, -8573613076096231996L, 2648675664918370392L, -7946882617509872342L, 1107740357710607975L, 8269662674957201946L, -4672690177477996557L, 8954127057264025415L, -5701833305749090513L, 2773467049352210285L}).toString());
        }

        @Override // com.google.gson.internal.bind.SerializationDelegatingTypeAdapter
        public TypeAdapter<T> getSerializationDelegate() {
            return delegate();
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: read */
        public T read2(JsonReader jsonReader) {
            return delegate().read2(jsonReader);
        }

        public void setDelegate(TypeAdapter<T> typeAdapter) {
            if (this.delegate == null) {
                this.delegate = typeAdapter;
                return;
            }
            throw new AssertionError(new ObfuscatedString(new long[]{2313205369524783887L, 5830089724848915610L, 2667475667142403220L, -2620498293674898795L}).toString());
        }

        @Override // com.google.gson.TypeAdapter
        public void write(JsonWriter jsonWriter, T t) {
            delegate().write(jsonWriter, t);
        }
    }

    public Gson() {
        this(Excluder.DEFAULT, DEFAULT_FIELD_NAMING_STRATEGY, Collections.emptyMap(), false, false, false, true, DEFAULT_FORMATTING_STYLE, DEFAULT_STRICTNESS, false, true, LongSerializationPolicy.DEFAULT, DEFAULT_DATE_PATTERN, 2, 2, Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), DEFAULT_OBJECT_TO_NUMBER_STRATEGY, DEFAULT_NUMBER_TO_NUMBER_STRATEGY, Collections.emptyList());
    }

    private static void assertFullConsumption(Object obj, JsonReader jsonReader) {
        if (obj != null) {
            try {
                if (jsonReader.peek() != JsonToken.END_DOCUMENT) {
                    throw new JsonSyntaxException(new ObfuscatedString(new long[]{3081467221657347133L, 2107389682557109089L, -7954754867371087369L, 7300067882186707465L, 2318500634067155512L, -158392844212745007L}).toString());
                }
            } catch (MalformedJsonException e) {
                throw new JsonSyntaxException(e);
            } catch (IOException e2) {
                throw new JsonIOException(e2);
            }
        }
    }

    private static TypeAdapter<AtomicLong> atomicLongAdapter(final TypeAdapter<Number> typeAdapter) {
        return new TypeAdapter<AtomicLong>() { // from class: com.google.gson.Gson.4
            @Override // com.google.gson.TypeAdapter
            /* renamed from: read, reason: avoid collision after fix types in other method */
            public AtomicLong read2(JsonReader jsonReader) {
                return new AtomicLong(((Number) TypeAdapter.this.read2(jsonReader)).longValue());
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, AtomicLong atomicLong) {
                TypeAdapter.this.write(jsonWriter, Long.valueOf(atomicLong.get()));
            }
        }.nullSafe();
    }

    private static TypeAdapter<AtomicLongArray> atomicLongArrayAdapter(final TypeAdapter<Number> typeAdapter) {
        return new TypeAdapter<AtomicLongArray>() { // from class: com.google.gson.Gson.5
            @Override // com.google.gson.TypeAdapter
            /* renamed from: read, reason: avoid collision after fix types in other method */
            public AtomicLongArray read2(JsonReader jsonReader) {
                ArrayList arrayList = new ArrayList();
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    arrayList.add(Long.valueOf(((Number) TypeAdapter.this.read2(jsonReader)).longValue()));
                }
                jsonReader.endArray();
                int size = arrayList.size();
                AtomicLongArray atomicLongArray = new AtomicLongArray(size);
                for (int i = 0; i < size; i++) {
                    atomicLongArray.set(i, ((Long) arrayList.get(i)).longValue());
                }
                return atomicLongArray;
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, AtomicLongArray atomicLongArray) {
                jsonWriter.beginArray();
                int length = atomicLongArray.length();
                for (int i = 0; i < length; i++) {
                    TypeAdapter.this.write(jsonWriter, Long.valueOf(atomicLongArray.get(i)));
                }
                jsonWriter.endArray();
            }
        }.nullSafe();
    }

    public static void checkValidFloatingPoint(double d) {
        if (!Double.isNaN(d) && !Double.isInfinite(d)) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(d);
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4320001520884472285L, 2347526815584732207L, 4451575250251066835L, -8563845605328613761L, -1884048956579016996L, 7729996191337034236L, -1091626599063244478L, -3141244058183855068L, 4224965023603312666L, 6264355821784971395L, -4161705216261868348L, 7486024603380696106L, 4771089008924442903L, 5513164008597205265L, 2782488585778100004L, -7649268706934092734L, -3198149495851935336L, 6415770176466392814L, -5423060923111203677L}), sb));
    }

    private TypeAdapter<Number> doubleAdapter(boolean z) {
        if (z) {
            return TypeAdapters.DOUBLE;
        }
        return new TypeAdapter<Number>() { // from class: com.google.gson.Gson.1
            @Override // com.google.gson.TypeAdapter
            /* renamed from: read, reason: merged with bridge method [inline-methods] */
            public Number read2(JsonReader jsonReader) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                return Double.valueOf(jsonReader.nextDouble());
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, Number number) {
                if (number == null) {
                    jsonWriter.nullValue();
                    return;
                }
                double doubleValue = number.doubleValue();
                Gson.checkValidFloatingPoint(doubleValue);
                jsonWriter.value(doubleValue);
            }
        };
    }

    private TypeAdapter<Number> floatAdapter(boolean z) {
        if (z) {
            return TypeAdapters.FLOAT;
        }
        return new TypeAdapter<Number>() { // from class: com.google.gson.Gson.2
            @Override // com.google.gson.TypeAdapter
            /* renamed from: read */
            public Number read2(JsonReader jsonReader) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                return Float.valueOf((float) jsonReader.nextDouble());
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, Number number) {
                if (number == null) {
                    jsonWriter.nullValue();
                    return;
                }
                float floatValue = number.floatValue();
                Gson.checkValidFloatingPoint(floatValue);
                if (!(number instanceof Float)) {
                    number = Float.valueOf(floatValue);
                }
                jsonWriter.value(number);
            }
        };
    }

    private static TypeAdapter<Number> longAdapter(LongSerializationPolicy longSerializationPolicy) {
        if (longSerializationPolicy == LongSerializationPolicy.DEFAULT) {
            return TypeAdapters.LONG;
        }
        return new TypeAdapter<Number>() { // from class: com.google.gson.Gson.3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.google.gson.TypeAdapter
            /* renamed from: read */
            public Number read2(JsonReader jsonReader) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                return Long.valueOf(jsonReader.nextLong());
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, Number number) {
                if (number == null) {
                    jsonWriter.nullValue();
                } else {
                    jsonWriter.value(number.toString());
                }
            }
        };
    }

    @Deprecated
    public Excluder excluder() {
        return this.excluder;
    }

    public FieldNamingStrategy fieldNamingStrategy() {
        return this.fieldNamingStrategy;
    }

    public <T> T fromJson(String str, Class<T> cls) {
        return (T) Primitives.wrap(cls).cast(fromJson(str, TypeToken.get((Class) cls)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x005e, code lost:
    
        r2.setDelegate(r4);
        r0.put(r7, r4);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <T> TypeAdapter<T> getAdapter(TypeToken<T> typeToken) {
        boolean z;
        Objects.requireNonNull(typeToken, new ObfuscatedString(new long[]{5986182601637708715L, 971060747379245200L, -866542413774439607L, 2611111309866463948L}).toString());
        TypeAdapter<T> typeAdapter = (TypeAdapter) this.typeTokenCache.get(typeToken);
        if (typeAdapter != null) {
            return typeAdapter;
        }
        Map<? extends TypeToken<?>, ? extends TypeAdapter<?>> map = this.threadLocalAdapterResults.get();
        if (map == null) {
            map = new HashMap<>();
            this.threadLocalAdapterResults.set(map);
            z = true;
        } else {
            TypeAdapter<T> typeAdapter2 = (TypeAdapter) map.get(typeToken);
            if (typeAdapter2 != null) {
                return typeAdapter2;
            }
            z = false;
        }
        try {
            FutureTypeAdapter futureTypeAdapter = new FutureTypeAdapter();
            map.put(typeToken, futureTypeAdapter);
            Iterator<TypeAdapterFactory> it = this.factories.iterator();
            TypeAdapter<T> typeAdapter3 = null;
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                typeAdapter3 = it.next().create(this, typeToken);
                if (typeAdapter3 != null) {
                    break;
                }
            }
            if (typeAdapter3 != null) {
                if (z) {
                    this.typeTokenCache.putAll(map);
                }
                return typeAdapter3;
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-4638685423320367068L, -8746339193987736405L, -4239727080321064945L, -1245433930870400499L, 48576183877315105L}).toString() + typeToken);
        } finally {
            if (z) {
                this.threadLocalAdapterResults.remove();
            }
        }
    }

    public <T> TypeAdapter<T> getDelegateAdapter(TypeAdapterFactory typeAdapterFactory, TypeToken<T> typeToken) {
        Objects.requireNonNull(typeAdapterFactory, new ObfuscatedString(new long[]{-8941460931081328039L, 5849710591814290023L, -8995873635122627350L, 2299839009164441493L, 9207044575919625010L}).toString());
        Objects.requireNonNull(typeToken, new ObfuscatedString(new long[]{5410891234062085760L, 4951607571969087280L, 2988355092758338584L, -7934622447228790491L}).toString());
        if (this.jsonAdapterFactory.isClassJsonAdapterFactory(typeToken, typeAdapterFactory)) {
            typeAdapterFactory = this.jsonAdapterFactory;
        }
        boolean z = false;
        for (TypeAdapterFactory typeAdapterFactory2 : this.factories) {
            if (!z) {
                if (typeAdapterFactory2 == typeAdapterFactory) {
                    z = true;
                }
            } else {
                TypeAdapter<T> create = typeAdapterFactory2.create(this, typeToken);
                if (create != null) {
                    return create;
                }
            }
        }
        if (!z) {
            return getAdapter(typeToken);
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-195609953834237694L, -7249564919118667634L, -30600701875603774L, -1326962317837421318L, -6567208541014024029L, -8057495587249824031L}).toString() + typeToken);
    }

    public boolean htmlSafe() {
        return this.htmlSafe;
    }

    public GsonBuilder newBuilder() {
        return new GsonBuilder(this);
    }

    public JsonReader newJsonReader(Reader reader) {
        JsonReader jsonReader = new JsonReader(reader);
        Strictness strictness = this.strictness;
        if (strictness == null) {
            strictness = Strictness.LEGACY_STRICT;
        }
        jsonReader.setStrictness(strictness);
        return jsonReader;
    }

    public JsonWriter newJsonWriter(Writer writer) {
        if (this.generateNonExecutableJson) {
            writer.write(new ObfuscatedString(new long[]{-2715176235830299426L, -6869323988735069281L}).toString());
        }
        JsonWriter jsonWriter = new JsonWriter(writer);
        jsonWriter.setFormattingStyle(this.formattingStyle);
        jsonWriter.setHtmlSafe(this.htmlSafe);
        Strictness strictness = this.strictness;
        if (strictness == null) {
            strictness = Strictness.LEGACY_STRICT;
        }
        jsonWriter.setStrictness(strictness);
        jsonWriter.setSerializeNulls(this.serializeNulls);
        return jsonWriter;
    }

    public boolean serializeNulls() {
        return this.serializeNulls;
    }

    public String toJson(Object obj) {
        if (obj == null) {
            return toJson((JsonElement) JsonNull.INSTANCE);
        }
        return toJson(obj, obj.getClass());
    }

    public JsonElement toJsonTree(Object obj) {
        if (obj == null) {
            return JsonNull.INSTANCE;
        }
        return toJsonTree(obj, obj.getClass());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-3810237362988624321L, 5916466686158224474L, -3421740618588533532L}).toString());
        sb.append(this.serializeNulls);
        sb.append(new ObfuscatedString(new long[]{-5449112878611016577L, -6612789341008887483L, -8128853034763015666L}).toString());
        sb.append(this.factories);
        sb.append(new ObfuscatedString(new long[]{8355960588215664952L, 5333617633989358997L, 4734231916715770103L, -2734683368550191779L}).toString());
        sb.append(this.constructorConstructor);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-192740785296142714L, 6337249311385119946L}), sb);
    }

    public <T> T fromJson(String str, Type type) {
        return (T) fromJson(str, TypeToken.get(type));
    }

    public String toJson(Object obj, Type type) {
        StringWriter stringWriter = new StringWriter();
        toJson(obj, type, stringWriter);
        return stringWriter.toString();
    }

    public JsonElement toJsonTree(Object obj, Type type) {
        JsonTreeWriter jsonTreeWriter = new JsonTreeWriter();
        toJson(obj, type, jsonTreeWriter);
        return jsonTreeWriter.get();
    }

    public <T> T fromJson(String str, TypeToken<T> typeToken) {
        if (str == null) {
            return null;
        }
        return (T) fromJson(new StringReader(str), typeToken);
    }

    public <T> T fromJson(Reader reader, Class<T> cls) {
        return (T) Primitives.wrap(cls).cast(fromJson(reader, TypeToken.get((Class) cls)));
    }

    public void toJson(Object obj, Appendable appendable) {
        if (obj != null) {
            toJson(obj, obj.getClass(), appendable);
        } else {
            toJson((JsonElement) JsonNull.INSTANCE, appendable);
        }
    }

    public Gson(Excluder excluder, FieldNamingStrategy fieldNamingStrategy, Map<Type, InstanceCreator<?>> map, boolean z, boolean z2, boolean z3, boolean z4, FormattingStyle formattingStyle, Strictness strictness, boolean z5, boolean z6, LongSerializationPolicy longSerializationPolicy, String str, int i, int i2, List<TypeAdapterFactory> list, List<TypeAdapterFactory> list2, List<TypeAdapterFactory> list3, ToNumberStrategy toNumberStrategy, ToNumberStrategy toNumberStrategy2, List<ReflectionAccessFilter> list4) {
        this.threadLocalAdapterResults = new ThreadLocal<>();
        this.typeTokenCache = new ConcurrentHashMap();
        this.excluder = excluder;
        this.fieldNamingStrategy = fieldNamingStrategy;
        this.instanceCreators = map;
        ConstructorConstructor constructorConstructor = new ConstructorConstructor(map, z6, list4);
        this.constructorConstructor = constructorConstructor;
        this.serializeNulls = z;
        this.complexMapKeySerialization = z2;
        this.generateNonExecutableJson = z3;
        this.htmlSafe = z4;
        this.formattingStyle = formattingStyle;
        this.strictness = strictness;
        this.serializeSpecialFloatingPointValues = z5;
        this.useJdkUnsafe = z6;
        this.longSerializationPolicy = longSerializationPolicy;
        this.datePattern = str;
        this.dateStyle = i;
        this.timeStyle = i2;
        this.builderFactories = list;
        this.builderHierarchyFactories = list2;
        this.objectToNumberStrategy = toNumberStrategy;
        this.numberToNumberStrategy = toNumberStrategy2;
        this.reflectionFilters = list4;
        ArrayList arrayList = new ArrayList();
        arrayList.add(TypeAdapters.JSON_ELEMENT_FACTORY);
        arrayList.add(ObjectTypeAdapter.getFactory(toNumberStrategy));
        arrayList.add(excluder);
        arrayList.addAll(list3);
        arrayList.add(TypeAdapters.STRING_FACTORY);
        arrayList.add(TypeAdapters.INTEGER_FACTORY);
        arrayList.add(TypeAdapters.BOOLEAN_FACTORY);
        arrayList.add(TypeAdapters.BYTE_FACTORY);
        arrayList.add(TypeAdapters.SHORT_FACTORY);
        TypeAdapter<Number> longAdapter = longAdapter(longSerializationPolicy);
        arrayList.add(TypeAdapters.newFactory(Long.TYPE, Long.class, longAdapter));
        arrayList.add(TypeAdapters.newFactory(Double.TYPE, Double.class, doubleAdapter(z5)));
        arrayList.add(TypeAdapters.newFactory(Float.TYPE, Float.class, floatAdapter(z5)));
        arrayList.add(NumberTypeAdapter.getFactory(toNumberStrategy2));
        arrayList.add(TypeAdapters.ATOMIC_INTEGER_FACTORY);
        arrayList.add(TypeAdapters.ATOMIC_BOOLEAN_FACTORY);
        arrayList.add(TypeAdapters.newFactory(AtomicLong.class, atomicLongAdapter(longAdapter)));
        arrayList.add(TypeAdapters.newFactory(AtomicLongArray.class, atomicLongArrayAdapter(longAdapter)));
        arrayList.add(TypeAdapters.ATOMIC_INTEGER_ARRAY_FACTORY);
        arrayList.add(TypeAdapters.CHARACTER_FACTORY);
        arrayList.add(TypeAdapters.STRING_BUILDER_FACTORY);
        arrayList.add(TypeAdapters.STRING_BUFFER_FACTORY);
        arrayList.add(TypeAdapters.newFactory(BigDecimal.class, TypeAdapters.BIG_DECIMAL));
        arrayList.add(TypeAdapters.newFactory(BigInteger.class, TypeAdapters.BIG_INTEGER));
        arrayList.add(TypeAdapters.newFactory(LazilyParsedNumber.class, TypeAdapters.LAZILY_PARSED_NUMBER));
        arrayList.add(TypeAdapters.URL_FACTORY);
        arrayList.add(TypeAdapters.URI_FACTORY);
        arrayList.add(TypeAdapters.UUID_FACTORY);
        arrayList.add(TypeAdapters.CURRENCY_FACTORY);
        arrayList.add(TypeAdapters.LOCALE_FACTORY);
        arrayList.add(TypeAdapters.INET_ADDRESS_FACTORY);
        arrayList.add(TypeAdapters.BIT_SET_FACTORY);
        arrayList.add(DefaultDateTypeAdapter.DEFAULT_STYLE_FACTORY);
        arrayList.add(TypeAdapters.CALENDAR_FACTORY);
        if (SqlTypesSupport.SUPPORTS_SQL_TYPES) {
            arrayList.add(SqlTypesSupport.TIME_FACTORY);
            arrayList.add(SqlTypesSupport.DATE_FACTORY);
            arrayList.add(SqlTypesSupport.TIMESTAMP_FACTORY);
        }
        arrayList.add(ArrayTypeAdapter.FACTORY);
        arrayList.add(TypeAdapters.CLASS_FACTORY);
        arrayList.add(new CollectionTypeAdapterFactory(constructorConstructor));
        arrayList.add(new MapTypeAdapterFactory(constructorConstructor, z2));
        JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory = new JsonAdapterAnnotationTypeAdapterFactory(constructorConstructor);
        this.jsonAdapterFactory = jsonAdapterAnnotationTypeAdapterFactory;
        arrayList.add(jsonAdapterAnnotationTypeAdapterFactory);
        arrayList.add(TypeAdapters.ENUM_FACTORY);
        arrayList.add(new ReflectiveTypeAdapterFactory(constructorConstructor, fieldNamingStrategy, excluder, jsonAdapterAnnotationTypeAdapterFactory, list4));
        this.factories = DesugarCollections.unmodifiableList(arrayList);
    }

    public <T> T fromJson(Reader reader, Type type) {
        return (T) fromJson(reader, TypeToken.get(type));
    }

    public void toJson(Object obj, Type type, Appendable appendable) {
        try {
            toJson(obj, type, newJsonWriter(Streams.writerForAppendable(appendable)));
        } catch (IOException e) {
            throw new JsonIOException(e);
        }
    }

    public <T> T fromJson(Reader reader, TypeToken<T> typeToken) {
        JsonReader newJsonReader = newJsonReader(reader);
        T t = (T) fromJson(newJsonReader, typeToken);
        assertFullConsumption(t, newJsonReader);
        return t;
    }

    public void toJson(Object obj, Type type, JsonWriter jsonWriter) {
        TypeAdapter adapter = getAdapter(TypeToken.get(type));
        Strictness strictness = jsonWriter.getStrictness();
        Strictness strictness2 = this.strictness;
        if (strictness2 != null) {
            jsonWriter.setStrictness(strictness2);
        } else if (jsonWriter.getStrictness() == Strictness.LEGACY_STRICT) {
            jsonWriter.setStrictness(Strictness.LENIENT);
        }
        boolean isHtmlSafe = jsonWriter.isHtmlSafe();
        boolean serializeNulls = jsonWriter.getSerializeNulls();
        jsonWriter.setHtmlSafe(this.htmlSafe);
        jsonWriter.setSerializeNulls(this.serializeNulls);
        try {
            try {
                try {
                    adapter.write(jsonWriter, obj);
                } catch (AssertionError e) {
                    throw new AssertionError(new ObfuscatedString(new long[]{7715136820299479769L, -1550997751216407357L, 4000932666268671711L, 5515010193667116504L, -5868891445870748164L}).toString() + e.getMessage(), e);
                }
            } catch (IOException e2) {
                throw new JsonIOException(e2);
            }
        } finally {
            jsonWriter.setStrictness(strictness);
            jsonWriter.setHtmlSafe(isHtmlSafe);
            jsonWriter.setSerializeNulls(serializeNulls);
        }
    }

    public <T> T fromJson(JsonReader jsonReader, Type type) {
        return (T) fromJson(jsonReader, TypeToken.get(type));
    }

    public <T> T fromJson(JsonReader jsonReader, TypeToken<T> typeToken) {
        boolean z;
        Strictness strictness = jsonReader.getStrictness();
        Strictness strictness2 = this.strictness;
        if (strictness2 != null) {
            jsonReader.setStrictness(strictness2);
        } else if (jsonReader.getStrictness() == Strictness.LEGACY_STRICT) {
            jsonReader.setStrictness(Strictness.LENIENT);
        }
        try {
            try {
                try {
                    try {
                        jsonReader.peek();
                        z = false;
                        try {
                            return getAdapter(typeToken).read2(jsonReader);
                        } catch (EOFException e) {
                            e = e;
                            if (z) {
                                jsonReader.setStrictness(strictness);
                                return null;
                            }
                            throw new JsonSyntaxException(e);
                        }
                    } finally {
                        jsonReader.setStrictness(strictness);
                    }
                } catch (EOFException e2) {
                    e = e2;
                    z = true;
                }
            } catch (IOException e3) {
                throw new JsonSyntaxException(e3);
            }
        } catch (AssertionError e4) {
            throw new AssertionError(new ObfuscatedString(new long[]{5180328119359511148L, 7526517570857576916L, -5073910483110601501L, -1386198931741428459L, 4278768322942000095L}).toString() + e4.getMessage(), e4);
        } catch (IllegalStateException e5) {
            throw new JsonSyntaxException(e5);
        }
    }

    public <T> TypeAdapter<T> getAdapter(Class<T> cls) {
        return getAdapter(TypeToken.get((Class) cls));
    }

    public <T> T fromJson(JsonElement jsonElement, Class<T> cls) {
        return (T) Primitives.wrap(cls).cast(fromJson(jsonElement, TypeToken.get((Class) cls)));
    }

    public <T> T fromJson(JsonElement jsonElement, Type type) {
        return (T) fromJson(jsonElement, TypeToken.get(type));
    }

    public String toJson(JsonElement jsonElement) {
        StringWriter stringWriter = new StringWriter();
        toJson(jsonElement, (Appendable) stringWriter);
        return stringWriter.toString();
    }

    public <T> T fromJson(JsonElement jsonElement, TypeToken<T> typeToken) {
        if (jsonElement == null) {
            return null;
        }
        return (T) fromJson(new JsonTreeReader(jsonElement), typeToken);
    }

    public void toJson(JsonElement jsonElement, Appendable appendable) {
        try {
            toJson(jsonElement, newJsonWriter(Streams.writerForAppendable(appendable)));
        } catch (IOException e) {
            throw new JsonIOException(e);
        }
    }

    public void toJson(JsonElement jsonElement, JsonWriter jsonWriter) {
        Strictness strictness = jsonWriter.getStrictness();
        boolean isHtmlSafe = jsonWriter.isHtmlSafe();
        boolean serializeNulls = jsonWriter.getSerializeNulls();
        jsonWriter.setHtmlSafe(this.htmlSafe);
        jsonWriter.setSerializeNulls(this.serializeNulls);
        Strictness strictness2 = this.strictness;
        if (strictness2 != null) {
            jsonWriter.setStrictness(strictness2);
        } else if (jsonWriter.getStrictness() == Strictness.LEGACY_STRICT) {
            jsonWriter.setStrictness(Strictness.LENIENT);
        }
        try {
            try {
                Streams.write(jsonElement, jsonWriter);
            } catch (IOException e) {
                throw new JsonIOException(e);
            } catch (AssertionError e2) {
                throw new AssertionError(new ObfuscatedString(new long[]{3166270357913007014L, 3040454830924446973L, 7488353657378057794L, 477808551516705188L, -7946623240912140901L}).toString() + e2.getMessage(), e2);
            }
        } finally {
            jsonWriter.setStrictness(strictness);
            jsonWriter.setHtmlSafe(isHtmlSafe);
            jsonWriter.setSerializeNulls(serializeNulls);
        }
    }
}
