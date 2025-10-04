package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonSerializer;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.reflect.TypeToken;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes3.dex */
public final class JsonAdapterAnnotationTypeAdapterFactory implements TypeAdapterFactory {
    private static final TypeAdapterFactory TREE_TYPE_CLASS_DUMMY_FACTORY;
    private static final TypeAdapterFactory TREE_TYPE_FIELD_DUMMY_FACTORY;
    private final ConcurrentMap<Class<?>, TypeAdapterFactory> adapterFactoryMap = new ConcurrentHashMap();
    private final ConstructorConstructor constructorConstructor;

    /* loaded from: classes3.dex */
    public static class DummyTypeAdapterFactory implements TypeAdapterFactory {
        private DummyTypeAdapterFactory() {
        }

        @Override // com.google.gson.TypeAdapterFactory
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            throw new AssertionError(new ObfuscatedString(new long[]{-808691524465293328L, -2244444788066641868L, -5648309976914290625L, -4766918990966379766L, 1724232799785724769L}).toString());
        }
    }

    static {
        TREE_TYPE_CLASS_DUMMY_FACTORY = new DummyTypeAdapterFactory();
        TREE_TYPE_FIELD_DUMMY_FACTORY = new DummyTypeAdapterFactory();
    }

    public JsonAdapterAnnotationTypeAdapterFactory(ConstructorConstructor constructorConstructor) {
        this.constructorConstructor = constructorConstructor;
    }

    private static Object createAdapter(ConstructorConstructor constructorConstructor, Class<?> cls) {
        return constructorConstructor.get(TypeToken.get((Class) cls)).construct();
    }

    private static JsonAdapter getAnnotation(Class<?> cls) {
        return (JsonAdapter) cls.getAnnotation(JsonAdapter.class);
    }

    private TypeAdapterFactory putFactoryAndGetCurrent(Class<?> cls, TypeAdapterFactory typeAdapterFactory) {
        TypeAdapterFactory putIfAbsent = this.adapterFactoryMap.putIfAbsent(cls, typeAdapterFactory);
        if (putIfAbsent != null) {
            return putIfAbsent;
        }
        return typeAdapterFactory;
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        JsonAdapter annotation = getAnnotation(typeToken.getRawType());
        if (annotation == null) {
            return null;
        }
        return (TypeAdapter<T>) getTypeAdapter(this.constructorConstructor, gson, typeToken, annotation, true);
    }

    public TypeAdapter<?> getTypeAdapter(ConstructorConstructor constructorConstructor, Gson gson, TypeToken<?> typeToken, JsonAdapter jsonAdapter, boolean z) {
        JsonSerializer jsonSerializer;
        JsonDeserializer jsonDeserializer;
        TypeAdapterFactory typeAdapterFactory;
        TypeAdapter<?> treeTypeAdapter;
        Object createAdapter = createAdapter(constructorConstructor, jsonAdapter.value());
        boolean nullSafe = jsonAdapter.nullSafe();
        if (createAdapter instanceof TypeAdapter) {
            treeTypeAdapter = (TypeAdapter) createAdapter;
        } else if (createAdapter instanceof TypeAdapterFactory) {
            TypeAdapterFactory typeAdapterFactory2 = (TypeAdapterFactory) createAdapter;
            if (z) {
                typeAdapterFactory2 = putFactoryAndGetCurrent(typeToken.getRawType(), typeAdapterFactory2);
            }
            treeTypeAdapter = typeAdapterFactory2.create(gson, typeToken);
        } else {
            boolean z2 = createAdapter instanceof JsonSerializer;
            if (!z2 && !(createAdapter instanceof JsonDeserializer)) {
                StringBuilder sb = new StringBuilder();
                sb.append(new ObfuscatedString(new long[]{-919736225861235689L, -63776119166891912L, -8572254682315214545L, 6561073058498576026L, -4372518826547999102L, 2415392023210344256L}).toString());
                sb.append(createAdapter.getClass().getName());
                sb.append(new ObfuscatedString(new long[]{-5995747473038114294L, 5467527674663831545L, -5309473436721112145L, 8511658055955159267L}).toString());
                sb.append(typeToken.toString());
                throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-391261070924748383L, -1332139496754913705L, -7250299109098809982L, -7412296326001183376L, 4890370261591095968L, -3180937864105429395L, 3748092321615997978L, -5530145842121835927L, 117368621795946257L, -875278060006418538L, -691692728300528220L, -259019268344969857L, 6680235906003422278L, 6941063294757559785L}), sb));
            }
            if (z2) {
                jsonSerializer = (JsonSerializer) createAdapter;
            } else {
                jsonSerializer = null;
            }
            if (createAdapter instanceof JsonDeserializer) {
                jsonDeserializer = (JsonDeserializer) createAdapter;
            } else {
                jsonDeserializer = null;
            }
            if (z) {
                typeAdapterFactory = TREE_TYPE_CLASS_DUMMY_FACTORY;
            } else {
                typeAdapterFactory = TREE_TYPE_FIELD_DUMMY_FACTORY;
            }
            treeTypeAdapter = new TreeTypeAdapter<>(jsonSerializer, jsonDeserializer, gson, typeToken, typeAdapterFactory, nullSafe);
            nullSafe = false;
        }
        if (treeTypeAdapter != null && nullSafe) {
            return treeTypeAdapter.nullSafe();
        }
        return treeTypeAdapter;
    }

    public boolean isClassJsonAdapterFactory(TypeToken<?> typeToken, TypeAdapterFactory typeAdapterFactory) {
        Objects.requireNonNull(typeToken);
        Objects.requireNonNull(typeAdapterFactory);
        if (typeAdapterFactory == TREE_TYPE_CLASS_DUMMY_FACTORY) {
            return true;
        }
        Class<? super Object> rawType = typeToken.getRawType();
        TypeAdapterFactory typeAdapterFactory2 = this.adapterFactoryMap.get(rawType);
        if (typeAdapterFactory2 != null) {
            if (typeAdapterFactory2 == typeAdapterFactory) {
                return true;
            }
            return false;
        }
        JsonAdapter annotation = getAnnotation(rawType);
        if (annotation == null) {
            return false;
        }
        Class<?> value = annotation.value();
        if (TypeAdapterFactory.class.isAssignableFrom(value) && putFactoryAndGetCurrent(rawType, (TypeAdapterFactory) createAdapter(this.constructorConstructor, value)) == typeAdapterFactory) {
            return true;
        }
        return false;
    }
}
