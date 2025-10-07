package com.google.gson.internal.bind;

import com.google.gson.FieldNamingStrategy;
import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSyntaxException;
import com.google.gson.ReflectionAccessFilter;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.internal.C$Gson$Types;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.internal.Primitives;
import com.google.gson.internal.ReflectionAccessFilterHelper;
import com.google.gson.internal.TroubleshootingGuide;
import com.google.gson.internal.reflect.ReflectionHelper;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class ReflectiveTypeAdapterFactory implements TypeAdapterFactory {
    private final ConstructorConstructor constructorConstructor;
    private final Excluder excluder;
    private final FieldNamingStrategy fieldNamingPolicy;
    private final JsonAdapterAnnotationTypeAdapterFactory jsonAdapterFactory;
    private final List<ReflectionAccessFilter> reflectionFilters;

    /* loaded from: classes3.dex */
    public static abstract class Adapter<T, A> extends TypeAdapter<T> {
        private final FieldsData fieldsData;

        public Adapter(FieldsData fieldsData) {
            this.fieldsData = fieldsData;
        }

        public abstract A createAccumulator();

        public abstract T finalize(A a);

        @Override // com.google.gson.TypeAdapter
        /* renamed from: read */
        public T read2(JsonReader jsonReader) {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            A createAccumulator = createAccumulator();
            Map<String, BoundField> map = this.fieldsData.deserializedFields;
            try {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    BoundField boundField = map.get(jsonReader.nextName());
                    if (boundField == null) {
                        jsonReader.skipValue();
                    } else {
                        readField(createAccumulator, jsonReader, boundField);
                    }
                }
                jsonReader.endObject();
                return finalize(createAccumulator);
            } catch (IllegalAccessException e) {
                throw ReflectionHelper.createExceptionForUnexpectedIllegalAccess(e);
            } catch (IllegalStateException e2) {
                throw new JsonSyntaxException(e2);
            }
        }

        public abstract void readField(A a, JsonReader jsonReader, BoundField boundField);

        @Override // com.google.gson.TypeAdapter
        public void write(JsonWriter jsonWriter, T t) {
            if (t == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            try {
                Iterator<BoundField> it = this.fieldsData.serializedFields.iterator();
                while (it.hasNext()) {
                    it.next().write(jsonWriter, t);
                }
                jsonWriter.endObject();
            } catch (IllegalAccessException e) {
                throw ReflectionHelper.createExceptionForUnexpectedIllegalAccess(e);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class BoundField {
        final Field field;
        final String fieldName;
        final String serializedName;

        public BoundField(String str, Field field) {
            this.serializedName = str;
            this.field = field;
            this.fieldName = field.getName();
        }

        public abstract void readIntoArray(JsonReader jsonReader, int i, Object[] objArr);

        public abstract void readIntoField(JsonReader jsonReader, Object obj);

        public abstract void write(JsonWriter jsonWriter, Object obj);
    }

    /* loaded from: classes3.dex */
    public static final class FieldReflectionAdapter<T> extends Adapter<T, T> {
        private final ObjectConstructor<T> constructor;

        public FieldReflectionAdapter(ObjectConstructor<T> objectConstructor, FieldsData fieldsData) {
            super(fieldsData);
            this.constructor = objectConstructor;
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        public T createAccumulator() {
            return this.constructor.construct();
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        public T finalize(T t) {
            return t;
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        public void readField(T t, JsonReader jsonReader, BoundField boundField) {
            boundField.readIntoField(jsonReader, t);
        }
    }

    /* loaded from: classes3.dex */
    public static class FieldsData {
        public static final FieldsData EMPTY = new FieldsData(Collections.emptyMap(), Collections.emptyList());
        public final Map<String, BoundField> deserializedFields;
        public final List<BoundField> serializedFields;

        public FieldsData(Map<String, BoundField> map, List<BoundField> list) {
            this.deserializedFields = map;
            this.serializedFields = list;
        }
    }

    /* loaded from: classes3.dex */
    public static final class RecordAdapter<T> extends Adapter<T, Object[]> {
        static final Map<Class<?>, Object> PRIMITIVE_DEFAULTS = primitiveDefaults();
        private final Map<String, Integer> componentIndices;
        private final Constructor<T> constructor;
        private final Object[] constructorArgsDefaults;

        public RecordAdapter(Class<T> cls, FieldsData fieldsData, boolean z) {
            super(fieldsData);
            this.componentIndices = new HashMap();
            Constructor<T> canonicalRecordConstructor = ReflectionHelper.getCanonicalRecordConstructor(cls);
            this.constructor = canonicalRecordConstructor;
            if (z) {
                ReflectiveTypeAdapterFactory.checkAccessible(null, canonicalRecordConstructor);
            } else {
                ReflectionHelper.makeAccessible(canonicalRecordConstructor);
            }
            String[] recordComponentNames = ReflectionHelper.getRecordComponentNames(cls);
            for (int i = 0; i < recordComponentNames.length; i++) {
                this.componentIndices.put(recordComponentNames[i], Integer.valueOf(i));
            }
            Class<?>[] parameterTypes = this.constructor.getParameterTypes();
            this.constructorArgsDefaults = new Object[parameterTypes.length];
            for (int i2 = 0; i2 < parameterTypes.length; i2++) {
                this.constructorArgsDefaults[i2] = PRIMITIVE_DEFAULTS.get(parameterTypes[i2]);
            }
        }

        private static Map<Class<?>, Object> primitiveDefaults() {
            HashMap hashMap = new HashMap();
            hashMap.put(Byte.TYPE, (byte) 0);
            hashMap.put(Short.TYPE, (short) 0);
            hashMap.put(Integer.TYPE, 0);
            hashMap.put(Long.TYPE, 0L);
            hashMap.put(Float.TYPE, Float.valueOf(0.0f));
            hashMap.put(Double.TYPE, Double.valueOf(0.0d));
            hashMap.put(Character.TYPE, (char) 0);
            hashMap.put(Boolean.TYPE, Boolean.FALSE);
            return hashMap;
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        public Object[] createAccumulator() {
            return (Object[]) this.constructorArgsDefaults.clone();
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        public T finalize(Object[] objArr) {
            try {
                return this.constructor.newInstance(objArr);
            } catch (IllegalAccessException e) {
                throw ReflectionHelper.createExceptionForUnexpectedIllegalAccess(e);
            } catch (IllegalArgumentException e2) {
                e = e2;
                throw new RuntimeException(new ObfuscatedString(new long[]{1477541533616972254L, 730053713014941790L, 388915456860461394L, -215363361003842361L, -6753733346948997500L}).toString() + ReflectionHelper.constructorToString(this.constructor) + new ObfuscatedString(new long[]{4644628419828447796L, 4644959707612133824L, -4344884189035148437L}).toString() + Arrays.toString(objArr), e);
            } catch (InstantiationException e3) {
                e = e3;
                throw new RuntimeException(new ObfuscatedString(new long[]{1477541533616972254L, 730053713014941790L, 388915456860461394L, -215363361003842361L, -6753733346948997500L}).toString() + ReflectionHelper.constructorToString(this.constructor) + new ObfuscatedString(new long[]{4644628419828447796L, 4644959707612133824L, -4344884189035148437L}).toString() + Arrays.toString(objArr), e);
            } catch (InvocationTargetException e4) {
                throw new RuntimeException(new ObfuscatedString(new long[]{-8762848380279602687L, -2926614837877945018L, 6542384985245604709L, -2592819496866863295L, 4013896843852131738L}).toString() + ReflectionHelper.constructorToString(this.constructor) + new ObfuscatedString(new long[]{2262342454614992570L, -7845051523254179257L, -3361781309029864114L}).toString() + Arrays.toString(objArr), e4.getCause());
            }
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        public void readField(Object[] objArr, JsonReader jsonReader, BoundField boundField) {
            Integer num = this.componentIndices.get(boundField.fieldName);
            if (num != null) {
                boundField.readIntoArray(jsonReader, num.intValue(), objArr);
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-950029224326357693L, 6441306780011162078L, 1933286169271838612L, 7991825372679109437L, 4564068476431127223L, -3599755805955181154L, 1676096210624802112L}).toString());
            sb.append(ReflectionHelper.constructorToString(this.constructor));
            sb.append(new ObfuscatedString(new long[]{3329938289838568180L, 7946636327142732089L, 546774624235256318L, -7031586012616877173L}).toString());
            sb.append(boundField.fieldName);
            throw new IllegalStateException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4143143578822178736L, -6083066878339111183L, 6743658046864932767L, -5895774884460642142L, 8355951226316413627L, -1644868193486526543L, 493229377700567674L, 8292488155129934575L, -1203460030270939633L, -9197566177141577905L, -3430239342726789961L, 7195028405565809997L, 2103587278350511391L, -8528109280559229718L, 675663136821024393L, 6328505401295629724L, -7955634736934324961L, 8509873147974408821L, 8051112149806049117L, -3901486086125554507L, -6042325228576311663L, 6093829144294977943L, -7901276319627406421L, 1136465534489498863L, -4946530329767195106L, 6412681034416558020L, 8678802349829948094L, 3834232014418360105L, -5771609687235923174L, -8931878234594905443L, 5106994077590788407L, 4299468388523310355L, 916692354242686107L, 687356965765923998L, 5953115556532707102L, -8339034550232552100L, 8241975166210028864L, -2418102106846221588L, 256022939976285780L, 4615467613721197906L}), sb));
        }
    }

    public ReflectiveTypeAdapterFactory(ConstructorConstructor constructorConstructor, FieldNamingStrategy fieldNamingStrategy, Excluder excluder, JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory, List<ReflectionAccessFilter> list) {
        this.constructorConstructor = constructorConstructor;
        this.fieldNamingPolicy = fieldNamingStrategy;
        this.excluder = excluder;
        this.jsonAdapterFactory = jsonAdapterAnnotationTypeAdapterFactory;
        this.reflectionFilters = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <M extends AccessibleObject & Member> void checkAccessible(Object obj, M m) {
        if (Modifier.isStatic(m.getModifiers())) {
            obj = null;
        }
        if (ReflectionAccessFilterHelper.canAccess(m, obj)) {
            return;
        }
        throw new JsonIOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4576749727591236629L, 4464490248477424243L, 670434293861982372L, 8917471847875744675L, -1028683470883775215L, 7383613518913492187L, 5944026212305756446L, -7894822253525654235L, 9143963269064624440L, -8633685316760903414L, -1843687330403709114L, 7865194856121549267L, -4225718413012526955L, 8027454631502366598L, 3574824571025483206L, 8157396055213431596L, -5668996679587484404L, -8344079376798540132L, -6889258751561823891L, -4622838224464134738L, -751303270450401470L, -6104171514785685871L, 6912750273161858026L, -711805062768645703L, 205470191289731618L, 1117820774442694118L, 8445533885631638734L, -4660792123079472751L, -8642891671405253392L}), AbstractC0749x8313616e.m3341xc20437a5(ReflectionHelper.getAccessibleObjectDescription(m, true))));
    }

    private BoundField createBoundField(Gson gson, Field field, final Method method, String str, TypeToken<?> typeToken, boolean z, final boolean z2) {
        boolean z3;
        TypeAdapter<?> typeAdapter;
        final TypeAdapter<?> typeAdapter2;
        TypeAdapter<?> typeAdapterRuntimeTypeWrapper;
        final boolean isPrimitive = Primitives.isPrimitive(typeToken.getRawType());
        int modifiers = field.getModifiers();
        boolean z4 = false;
        if (Modifier.isStatic(modifiers) && Modifier.isFinal(modifiers)) {
            z3 = true;
        } else {
            z3 = false;
        }
        JsonAdapter jsonAdapter = (JsonAdapter) field.getAnnotation(JsonAdapter.class);
        if (jsonAdapter != null) {
            typeAdapter = this.jsonAdapterFactory.getTypeAdapter(this.constructorConstructor, gson, typeToken, jsonAdapter, false);
        } else {
            typeAdapter = null;
        }
        if (typeAdapter != null) {
            z4 = true;
        }
        if (typeAdapter == null) {
            typeAdapter = gson.getAdapter(typeToken);
        }
        final TypeAdapter<?> typeAdapter3 = typeAdapter;
        if (z) {
            if (z4) {
                typeAdapterRuntimeTypeWrapper = typeAdapter3;
            } else {
                typeAdapterRuntimeTypeWrapper = new TypeAdapterRuntimeTypeWrapper<>(gson, typeAdapter3, typeToken.getType());
            }
            typeAdapter2 = typeAdapterRuntimeTypeWrapper;
        } else {
            typeAdapter2 = typeAdapter3;
        }
        final boolean z5 = z3;
        return new BoundField(str, field) { // from class: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.2
            @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.BoundField
            public void readIntoArray(JsonReader jsonReader, int i, Object[] objArr) {
                Object read2 = typeAdapter3.read2(jsonReader);
                if (read2 == null && isPrimitive) {
                    throw new JsonParseException(new ObfuscatedString(new long[]{6833353311972245211L, 6480024396348695039L, -1346533600562211436L, 1006373870020962148L, -6392760748368067536L, -9151187555522544160L, -4952650602794719609L, 451905649368682841L}).toString() + this.fieldName + new ObfuscatedString(new long[]{4414786307766077493L, 21594290391603956L, -3939860126844533640L, 372563811082509218L, 1867012285322549436L}).toString() + jsonReader.getPath());
                }
                objArr[i] = read2;
            }

            @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.BoundField
            public void readIntoField(JsonReader jsonReader, Object obj) {
                Object read2 = typeAdapter3.read2(jsonReader);
                if (read2 != null || !isPrimitive) {
                    if (z2) {
                        ReflectiveTypeAdapterFactory.checkAccessible(obj, this.field);
                    } else if (z5) {
                        String accessibleObjectDescription = ReflectionHelper.getAccessibleObjectDescription(this.field, false);
                        throw new JsonIOException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-1652854742966559235L, -6944813384077827877L, -1552775316180519666L, -7240772125381710833L, -5887782081920494327L, 3194291734946315865L}), new StringBuilder(), accessibleObjectDescription));
                    }
                    this.field.set(obj, read2);
                }
            }

            @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.BoundField
            public void write(JsonWriter jsonWriter, Object obj) {
                Object obj2;
                if (z2) {
                    Method method2 = method;
                    if (method2 == null) {
                        ReflectiveTypeAdapterFactory.checkAccessible(obj, this.field);
                    } else {
                        ReflectiveTypeAdapterFactory.checkAccessible(obj, method2);
                    }
                }
                Method method3 = method;
                if (method3 != null) {
                    try {
                        obj2 = method3.invoke(obj, null);
                    } catch (InvocationTargetException e) {
                        String accessibleObjectDescription = ReflectionHelper.getAccessibleObjectDescription(method, false);
                        StringBuilder sb = new StringBuilder();
                        sb.append(new ObfuscatedString(new long[]{-1257628263250617508L, 430231065929444284L, 6273602111176880870L}).toString());
                        sb.append(accessibleObjectDescription);
                        throw new JsonIOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{5794334906656309591L, -837237746475910069L, -7804480760783979497L}), sb), e.getCause());
                    }
                } else {
                    obj2 = this.field.get(obj);
                }
                if (obj2 == obj) {
                    return;
                }
                jsonWriter.name(this.serializedName);
                typeAdapter2.write(jsonWriter, obj2);
            }
        };
    }

    private static IllegalArgumentException createDuplicateFieldException(Class<?> cls, String str, Field field, Field field2) {
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-9106805373463339050L, -718603886457146853L}).toString() + cls.getName() + new ObfuscatedString(new long[]{-3440937707177961491L, 7862185903207855532L, -4188847330632710597L, 6973414335654984150L, 4976670775704107067L, 3943303962293323961L}).toString() + str + new ObfuscatedString(new long[]{7404374520583174407L, -3631504717929511880L, 8143749893986933510L, -491035075407699340L, 2091749266091833128L}).toString() + ReflectionHelper.fieldToString(field) + new ObfuscatedString(new long[]{-4722258286008350839L, 175881880821740997L}).toString() + ReflectionHelper.fieldToString(field2) + new ObfuscatedString(new long[]{-7046158523116547069L, -6040351443147960925L}).toString() + TroubleshootingGuide.createUrl(new ObfuscatedString(new long[]{9176187205728730676L, 961813353587826196L, 5541647022324389485L}).toString()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0144  */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private FieldsData getBoundFields(Gson gson, TypeToken<?> typeToken, Class<?> cls, boolean z, boolean z2) {
        boolean z3;
        Method method;
        String str;
        int i;
        int i2;
        Field[] fieldArr;
        BoundField boundField;
        int i3 = 4;
        if (cls.isInterface()) {
            return FieldsData.EMPTY;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        TypeToken<?> typeToken2 = typeToken;
        boolean z4 = z;
        Class<?> cls2 = cls;
        while (cls2 != Object.class) {
            Field[] declaredFields = cls2.getDeclaredFields();
            ?? r6 = 0;
            if (cls2 != cls && declaredFields.length > 0) {
                ReflectionAccessFilter.FilterResult filterResult = ReflectionAccessFilterHelper.getFilterResult(this.reflectionFilters, cls2);
                if (filterResult != ReflectionAccessFilter.FilterResult.BLOCK_ALL) {
                    if (filterResult == ReflectionAccessFilter.FilterResult.BLOCK_INACCESSIBLE) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append(new ObfuscatedString(new long[]{-4699684516733643998L, -7527700078305604655L, 992933281077224162L, 2032787825815002150L, 9015483885879342642L, -3043430790480108703L, -6378405001878107082L, -1306903736916121366L, 1633262611714286388L}).toString());
                    sb.append(cls2);
                    sb.append(new ObfuscatedString(new long[]{5960819291139222468L, -1816213870663719324L, 4472793715397234531L}).toString());
                    sb.append(cls);
                    throw new JsonIOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-886466761987879221L, 5306091971233610217L, 8590346972440135254L, 5735984888236836345L, 2271853363306842204L, -2501308251590432255L, -8254361074083272439L, 4704267258474361678L, -6395911860611667027L, -6374167056302295610L}), sb));
                }
            }
            boolean z5 = z4;
            int length = declaredFields.length;
            int i4 = 0;
            while (i4 < length) {
                Field field = declaredFields[i4];
                boolean includeField = includeField(field, true);
                boolean includeField2 = includeField(field, r6);
                if (!includeField && !includeField2) {
                    i = i4;
                    i2 = length;
                    fieldArr = declaredFields;
                } else {
                    Method method2 = null;
                    if (z2) {
                        if (Modifier.isStatic(field.getModifiers())) {
                            method = null;
                            z3 = false;
                            if (!z5 && method == null) {
                                ReflectionHelper.makeAccessible(field);
                            }
                            Type resolve = C$Gson$Types.resolve(typeToken2.getType(), cls2, field.getGenericType());
                            List<String> fieldNames = getFieldNames(field);
                            str = fieldNames.get(r6);
                            Method method3 = method;
                            i = i4;
                            i2 = length;
                            fieldArr = declaredFields;
                            BoundField createBoundField = createBoundField(gson, field, method3, str, TypeToken.get(resolve), includeField, z5);
                            if (z3) {
                                for (String str2 : fieldNames) {
                                    BoundField boundField2 = (BoundField) linkedHashMap.put(str2, createBoundField);
                                    if (boundField2 != null) {
                                        throw createDuplicateFieldException(cls, str2, boundField2.field, field);
                                    }
                                }
                            }
                            if (includeField && (boundField = (BoundField) linkedHashMap2.put(str, createBoundField)) != null) {
                                throw createDuplicateFieldException(cls, str, boundField.field, field);
                            }
                        } else {
                            method2 = ReflectionHelper.getAccessor(cls2, field);
                            if (!z5) {
                                ReflectionHelper.makeAccessible(method2);
                            }
                            if (method2.getAnnotation(SerializedName.class) != null && field.getAnnotation(SerializedName.class) == null) {
                                String accessibleObjectDescription = ReflectionHelper.getAccessibleObjectDescription(method2, r6);
                                StringBuilder sb2 = new StringBuilder();
                                long[] jArr = new long[i3];
                                // fill-array-data instruction
                                jArr[0] = 5644601984497951031L;
                                jArr[1] = -9126657838761501988L;
                                jArr[2] = -5279188573770036747L;
                                jArr[3] = 5507860392684282573L;
                                sb2.append(new ObfuscatedString(jArr).toString());
                                sb2.append(accessibleObjectDescription);
                                long[] jArr2 = new long[i3];
                                // fill-array-data instruction
                                jArr2[0] = -7256681390352188184L;
                                jArr2[1] = 1503321627490905630L;
                                jArr2[2] = -683229890894523165L;
                                jArr2[3] = -4013482503481172161L;
                                throw new JsonIOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(jArr2), sb2));
                            }
                        }
                    }
                    z3 = includeField2;
                    method = method2;
                    if (!z5) {
                        ReflectionHelper.makeAccessible(field);
                    }
                    Type resolve2 = C$Gson$Types.resolve(typeToken2.getType(), cls2, field.getGenericType());
                    List<String> fieldNames2 = getFieldNames(field);
                    str = fieldNames2.get(r6);
                    Method method32 = method;
                    i = i4;
                    i2 = length;
                    fieldArr = declaredFields;
                    BoundField createBoundField2 = createBoundField(gson, field, method32, str, TypeToken.get(resolve2), includeField, z5);
                    if (z3) {
                    }
                    if (includeField) {
                        throw createDuplicateFieldException(cls, str, boundField.field, field);
                    }
                    continue;
                }
                i4 = i + 1;
                length = i2;
                declaredFields = fieldArr;
                r6 = 0;
                i3 = 4;
            }
            typeToken2 = TypeToken.get(C$Gson$Types.resolve(typeToken2.getType(), cls2, cls2.getGenericSuperclass()));
            cls2 = typeToken2.getRawType();
            z4 = z5;
            i3 = 4;
        }
        return new FieldsData(linkedHashMap, new ArrayList(linkedHashMap2.values()));
    }

    private List<String> getFieldNames(Field field) {
        SerializedName serializedName = (SerializedName) field.getAnnotation(SerializedName.class);
        if (serializedName == null) {
            return Collections.singletonList(this.fieldNamingPolicy.translateName(field));
        }
        String value = serializedName.value();
        String[] alternate = serializedName.alternate();
        if (alternate.length == 0) {
            return Collections.singletonList(value);
        }
        ArrayList arrayList = new ArrayList(alternate.length + 1);
        arrayList.add(value);
        Collections.addAll(arrayList, alternate);
        return arrayList;
    }

    private boolean includeField(Field field, boolean z) {
        return !this.excluder.excludeField(field, z);
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        boolean z;
        Class<? super T> rawType = typeToken.getRawType();
        if (!Object.class.isAssignableFrom(rawType)) {
            return null;
        }
        if (ReflectionHelper.isAnonymousOrNonStaticLocal(rawType)) {
            return new TypeAdapter<T>() { // from class: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.1
                @Override // com.google.gson.TypeAdapter
                /* renamed from: read */
                public T read2(JsonReader jsonReader) {
                    jsonReader.skipValue();
                    return null;
                }

                public String toString() {
                    return new ObfuscatedString(new long[]{7888859620818437422L, 4557560670201436834L, 8519295394158964568L, -1105005033675700779L, 3213380627580128843L, 3562891082536053117L}).toString();
                }

                @Override // com.google.gson.TypeAdapter
                public void write(JsonWriter jsonWriter, T t) {
                    jsonWriter.nullValue();
                }
            };
        }
        ReflectionAccessFilter.FilterResult filterResult = ReflectionAccessFilterHelper.getFilterResult(this.reflectionFilters, rawType);
        if (filterResult != ReflectionAccessFilter.FilterResult.BLOCK_ALL) {
            if (filterResult == ReflectionAccessFilter.FilterResult.BLOCK_INACCESSIBLE) {
                z = true;
            } else {
                z = false;
            }
            if (ReflectionHelper.isRecord(rawType)) {
                return new RecordAdapter(rawType, getBoundFields(gson, typeToken, rawType, z, true), z);
            }
            return new FieldReflectionAdapter(this.constructorConstructor.get(typeToken), getBoundFields(gson, typeToken, rawType, z, false));
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{2010058773986375485L, 3485851270127345341L, -3142493182718038253L, 849106020279185855L, -8251581839427986976L, -3789743776141911978L, 2055746078432526275L, -7786910998380222964L, 5365905761024173791L}).toString());
        sb.append(rawType);
        throw new JsonIOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{5012596843406972964L, 7192071296474992860L, -1020093050439881337L, 424928435183057246L, -6123478796814963465L, -2035648259950654769L, 142910359666013168L, -7125918488960473042L, -2809665447441974961L, 267823679697924313L}), sb));
    }
}
