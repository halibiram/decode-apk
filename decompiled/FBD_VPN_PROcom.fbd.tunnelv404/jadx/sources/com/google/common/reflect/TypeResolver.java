package com.google.common.reflect;

import com.google.common.base.Joiner;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.common.reflect.Types;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1320xaf50c7e8;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.CheckForNull;
import kotlin.text.Typography;

@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class TypeResolver {
    private final TypeTable typeTable;

    /* loaded from: classes2.dex */
    public static final class TypeMappingIntrospector extends TypeVisitor {
        private final Map<TypeVariableKey, Type> mappings = Maps.newHashMap();

        private TypeMappingIntrospector() {
        }

        public static ImmutableMap<TypeVariableKey, Type> getTypeMappings(Type type) {
            Preconditions.checkNotNull(type);
            TypeMappingIntrospector typeMappingIntrospector = new TypeMappingIntrospector();
            typeMappingIntrospector.visit(type);
            return ImmutableMap.copyOf((Map) typeMappingIntrospector.mappings);
        }

        private void map(TypeVariableKey typeVariableKey, Type type) {
            if (this.mappings.containsKey(typeVariableKey)) {
                return;
            }
            Type type2 = type;
            while (type2 != null) {
                if (typeVariableKey.equalsType(type2)) {
                    while (type != null) {
                        type = this.mappings.remove(TypeVariableKey.forLookup(type));
                    }
                    return;
                }
                type2 = this.mappings.get(TypeVariableKey.forLookup(type2));
            }
            this.mappings.put(typeVariableKey, type);
        }

        @Override // com.google.common.reflect.TypeVisitor
        public void visitClass(Class<?> cls) {
            visit(cls.getGenericSuperclass());
            visit(cls.getGenericInterfaces());
        }

        @Override // com.google.common.reflect.TypeVisitor
        public void visitParameterizedType(ParameterizedType parameterizedType) {
            boolean z;
            Class cls = (Class) parameterizedType.getRawType();
            TypeVariable[] typeParameters = cls.getTypeParameters();
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            if (typeParameters.length == actualTypeArguments.length) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkState(z);
            for (int i = 0; i < typeParameters.length; i++) {
                map(new TypeVariableKey(typeParameters[i]), actualTypeArguments[i]);
            }
            visit(cls);
            visit(parameterizedType.getOwnerType());
        }

        @Override // com.google.common.reflect.TypeVisitor
        public void visitTypeVariable(TypeVariable<?> typeVariable) {
            visit(typeVariable.getBounds());
        }

        @Override // com.google.common.reflect.TypeVisitor
        public void visitWildcardType(WildcardType wildcardType) {
            visit(wildcardType.getUpperBounds());
        }
    }

    /* loaded from: classes2.dex */
    public static final class TypeVariableKey {
        private final TypeVariable<?> var;

        public TypeVariableKey(TypeVariable<?> typeVariable) {
            this.var = (TypeVariable) Preconditions.checkNotNull(typeVariable);
        }

        private boolean equalsTypeVariable(TypeVariable<?> typeVariable) {
            if (this.var.getGenericDeclaration().equals(typeVariable.getGenericDeclaration()) && this.var.getName().equals(typeVariable.getName())) {
                return true;
            }
            return false;
        }

        @CheckForNull
        public static TypeVariableKey forLookup(Type type) {
            if (type instanceof TypeVariable) {
                return new TypeVariableKey((TypeVariable) type);
            }
            return null;
        }

        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof TypeVariableKey) {
                return equalsTypeVariable(((TypeVariableKey) obj).var);
            }
            return false;
        }

        public boolean equalsType(Type type) {
            if (type instanceof TypeVariable) {
                return equalsTypeVariable((TypeVariable) type);
            }
            return false;
        }

        public int hashCode() {
            return Objects.hashCode(this.var.getGenericDeclaration(), this.var.getName());
        }

        public String toString() {
            return this.var.toString();
        }
    }

    /* loaded from: classes2.dex */
    public static class WildcardCapturer {
        static final WildcardCapturer INSTANCE = new WildcardCapturer();
        private final AtomicInteger id;

        @CheckForNull
        private Type captureNullable(@CheckForNull Type type) {
            if (type == null) {
                return null;
            }
            return capture(type);
        }

        private WildcardCapturer forTypeVariable(final TypeVariable<?> typeVariable) {
            return new WildcardCapturer(this, this.id) { // from class: com.google.common.reflect.TypeResolver.WildcardCapturer.1
                @Override // com.google.common.reflect.TypeResolver.WildcardCapturer
                public TypeVariable<?> captureAsTypeVariable(Type[] typeArr) {
                    LinkedHashSet linkedHashSet = new LinkedHashSet(Arrays.asList(typeArr));
                    linkedHashSet.addAll(Arrays.asList(typeVariable.getBounds()));
                    if (linkedHashSet.size() > 1) {
                        linkedHashSet.remove(Object.class);
                    }
                    return super.captureAsTypeVariable((Type[]) linkedHashSet.toArray(new Type[0]));
                }
            };
        }

        private WildcardCapturer notForTypeVariable() {
            return new WildcardCapturer(this.id);
        }

        public final Type capture(Type type) {
            Preconditions.checkNotNull(type);
            if (type instanceof Class) {
                return type;
            }
            if (type instanceof TypeVariable) {
                return type;
            }
            if (type instanceof GenericArrayType) {
                return Types.newArrayType(notForTypeVariable().capture(((GenericArrayType) type).getGenericComponentType()));
            }
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                Class cls = (Class) parameterizedType.getRawType();
                TypeVariable<?>[] typeParameters = cls.getTypeParameters();
                Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                for (int i = 0; i < actualTypeArguments.length; i++) {
                    actualTypeArguments[i] = forTypeVariable(typeParameters[i]).capture(actualTypeArguments[i]);
                }
                return Types.newParameterizedTypeWithOwner(notForTypeVariable().captureNullable(parameterizedType.getOwnerType()), cls, actualTypeArguments);
            }
            if (type instanceof WildcardType) {
                WildcardType wildcardType = (WildcardType) type;
                if (wildcardType.getLowerBounds().length == 0) {
                    return captureAsTypeVariable(wildcardType.getUpperBounds());
                }
                return type;
            }
            throw new AssertionError(new ObfuscatedString(new long[]{7320186405800651948L, -6464313137576405767L, 5727923066006706470L, 4706985537209527980L, 8625834913639879274L, 6690360401351485009L}).toString());
        }

        public TypeVariable<?> captureAsTypeVariable(Type[] typeArr) {
            int incrementAndGet = this.id.incrementAndGet();
            String join = Joiner.on(Typography.amp).join(typeArr);
            StringBuilder sb = new StringBuilder(AbstractC1320xaf50c7e8.m4356x1378447b(33, join));
            sb.append(new ObfuscatedString(new long[]{8986884568621978807L, -6171341564266059662L}).toString());
            sb.append(incrementAndGet);
            return Types.newArtificialTypeVariable(WildcardCapturer.class, AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{1960610562951658311L, 5958925852864748938L, -7514218821837164175L}), sb, join), typeArr);
        }

        private WildcardCapturer() {
            this(new AtomicInteger());
        }

        private WildcardCapturer(AtomicInteger atomicInteger) {
            this.id = atomicInteger;
        }
    }

    public static TypeResolver covariantly(Type type) {
        return new TypeResolver().where(TypeMappingIntrospector.getTypeMappings(type));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> T expectArgument(Class<T> cls, Object obj) {
        try {
            return cls.cast(obj);
        } catch (ClassCastException unused) {
            String valueOf = String.valueOf(obj);
            String simpleName = cls.getSimpleName();
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-886031423963393900L, 5122319840868432816L, 3391738719269488798L}), AbstractC0362x4440ab85.m2938x1aebc6d9(simpleName.length() + valueOf.length() + 10, valueOf), simpleName));
        }
    }

    public static TypeResolver invariantly(Type type) {
        return new TypeResolver().where(TypeMappingIntrospector.getTypeMappings(WildcardCapturer.INSTANCE.capture(type)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void populateTypeMappings(final Map<TypeVariableKey, Type> map, Type type, final Type type2) {
        if (type.equals(type2)) {
            return;
        }
        new TypeVisitor() { // from class: com.google.common.reflect.TypeResolver.1
            @Override // com.google.common.reflect.TypeVisitor
            public void visitClass(Class<?> cls) {
                if (type2 instanceof WildcardType) {
                    return;
                }
                String valueOf = String.valueOf(cls);
                String valueOf2 = String.valueOf(type2);
                StringBuilder sb = new StringBuilder(valueOf2.length() + valueOf.length() + 25);
                sb.append(new ObfuscatedString(new long[]{1143520924956370953L, 4627200437085586640L, 2005739071393270120L, -4690256256180009022L}).toString());
                sb.append(valueOf);
                throw new IllegalArgumentException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{2246222006018458837L, -8550333022046194980L}), sb, valueOf2));
            }

            @Override // com.google.common.reflect.TypeVisitor
            public void visitGenericArrayType(GenericArrayType genericArrayType) {
                boolean z;
                Type type3 = type2;
                if (type3 instanceof WildcardType) {
                    return;
                }
                Type componentType = Types.getComponentType(type3);
                if (componentType != null) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.checkArgument(z, new ObfuscatedString(new long[]{3977232741475725967L, -2252246885500612498L, 8789255008655956584L, 8395692492856542839L}).toString(), type2);
                TypeResolver.populateTypeMappings(map, genericArrayType.getGenericComponentType(), componentType);
            }

            @Override // com.google.common.reflect.TypeVisitor
            public void visitParameterizedType(ParameterizedType parameterizedType) {
                boolean z;
                Type type3 = type2;
                if (type3 instanceof WildcardType) {
                    return;
                }
                ParameterizedType parameterizedType2 = (ParameterizedType) TypeResolver.expectArgument(ParameterizedType.class, type3);
                if (parameterizedType.getOwnerType() != null && parameterizedType2.getOwnerType() != null) {
                    TypeResolver.populateTypeMappings(map, parameterizedType.getOwnerType(), parameterizedType2.getOwnerType());
                }
                Preconditions.checkArgument(parameterizedType.getRawType().equals(parameterizedType2.getRawType()), new ObfuscatedString(new long[]{3804078505454735751L, -2982894389035672525L, -8816648220825443791L, -8966778810886972444L, -7713587094073533876L}).toString(), parameterizedType, type2);
                Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                Type[] actualTypeArguments2 = parameterizedType2.getActualTypeArguments();
                if (actualTypeArguments.length == actualTypeArguments2.length) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.checkArgument(z, new ObfuscatedString(new long[]{942077832277460231L, -2908701060628448663L, 2187081557067959880L, 6488434731542291597L, 1985016884657690883L}).toString(), parameterizedType, parameterizedType2);
                for (int i = 0; i < actualTypeArguments.length; i++) {
                    TypeResolver.populateTypeMappings(map, actualTypeArguments[i], actualTypeArguments2[i]);
                }
            }

            @Override // com.google.common.reflect.TypeVisitor
            public void visitTypeVariable(TypeVariable<?> typeVariable) {
                map.put(new TypeVariableKey(typeVariable), type2);
            }

            @Override // com.google.common.reflect.TypeVisitor
            public void visitWildcardType(WildcardType wildcardType) {
                boolean z;
                Type type3 = type2;
                if (!(type3 instanceof WildcardType)) {
                    return;
                }
                WildcardType wildcardType2 = (WildcardType) type3;
                Type[] upperBounds = wildcardType.getUpperBounds();
                Type[] upperBounds2 = wildcardType2.getUpperBounds();
                Type[] lowerBounds = wildcardType.getLowerBounds();
                Type[] lowerBounds2 = wildcardType2.getLowerBounds();
                if (upperBounds.length == upperBounds2.length && lowerBounds.length == lowerBounds2.length) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-6905080045743872710L, 3599730019242592780L, 3209761547136573943L, 1724744513792866017L, 239865981560907743L}).toString(), wildcardType, type2);
                for (int i = 0; i < upperBounds.length; i++) {
                    TypeResolver.populateTypeMappings(map, upperBounds[i], upperBounds2[i]);
                }
                for (int i2 = 0; i2 < lowerBounds.length; i2++) {
                    TypeResolver.populateTypeMappings(map, lowerBounds[i2], lowerBounds2[i2]);
                }
            }
        }.visit(type);
    }

    private Type resolveGenericArrayType(GenericArrayType genericArrayType) {
        return Types.newArrayType(resolveType(genericArrayType.getGenericComponentType()));
    }

    private ParameterizedType resolveParameterizedType(ParameterizedType parameterizedType) {
        Type resolveType;
        Type ownerType = parameterizedType.getOwnerType();
        if (ownerType == null) {
            resolveType = null;
        } else {
            resolveType = resolveType(ownerType);
        }
        return Types.newParameterizedTypeWithOwner(resolveType, (Class) resolveType(parameterizedType.getRawType()), resolveTypes(parameterizedType.getActualTypeArguments()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Type[] resolveTypes(Type[] typeArr) {
        Type[] typeArr2 = new Type[typeArr.length];
        for (int i = 0; i < typeArr.length; i++) {
            typeArr2[i] = resolveType(typeArr[i]);
        }
        return typeArr2;
    }

    private WildcardType resolveWildcardType(WildcardType wildcardType) {
        return new Types.WildcardTypeImpl(resolveTypes(wildcardType.getLowerBounds()), resolveTypes(wildcardType.getUpperBounds()));
    }

    public Type resolveType(Type type) {
        Preconditions.checkNotNull(type);
        if (type instanceof TypeVariable) {
            return this.typeTable.resolve((TypeVariable) type);
        }
        if (type instanceof ParameterizedType) {
            return resolveParameterizedType((ParameterizedType) type);
        }
        if (type instanceof GenericArrayType) {
            return resolveGenericArrayType((GenericArrayType) type);
        }
        if (type instanceof WildcardType) {
            return resolveWildcardType((WildcardType) type);
        }
        return type;
    }

    public Type[] resolveTypesInPlace(Type[] typeArr) {
        for (int i = 0; i < typeArr.length; i++) {
            typeArr[i] = resolveType(typeArr[i]);
        }
        return typeArr;
    }

    public TypeResolver where(Type type, Type type2) {
        HashMap newHashMap = Maps.newHashMap();
        populateTypeMappings(newHashMap, (Type) Preconditions.checkNotNull(type), (Type) Preconditions.checkNotNull(type2));
        return where(newHashMap);
    }

    /* loaded from: classes2.dex */
    public static class TypeTable {
        private final ImmutableMap<TypeVariableKey, Type> map;

        public TypeTable() {
            this.map = ImmutableMap.of();
        }

        public final Type resolve(final TypeVariable<?> typeVariable) {
            return resolveInternal(typeVariable, new TypeTable(this) { // from class: com.google.common.reflect.TypeResolver.TypeTable.1
                @Override // com.google.common.reflect.TypeResolver.TypeTable
                public Type resolveInternal(TypeVariable<?> typeVariable2, TypeTable typeTable) {
                    if (typeVariable2.getGenericDeclaration().equals(typeVariable.getGenericDeclaration())) {
                        return typeVariable2;
                    }
                    return this.resolveInternal(typeVariable2, typeTable);
                }
            });
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.reflect.GenericDeclaration] */
        public Type resolveInternal(TypeVariable<?> typeVariable, TypeTable typeTable) {
            Type type = this.map.get(new TypeVariableKey(typeVariable));
            if (type == null) {
                Type[] bounds = typeVariable.getBounds();
                if (bounds.length != 0) {
                    Type[] resolveTypes = new TypeResolver(typeTable).resolveTypes(bounds);
                    if (Types.NativeTypeVariableEquals.NATIVE_TYPE_VARIABLE_ONLY && Arrays.equals(bounds, resolveTypes)) {
                        return typeVariable;
                    }
                    return Types.newArtificialTypeVariable(typeVariable.getGenericDeclaration(), typeVariable.getName(), resolveTypes);
                }
                return typeVariable;
            }
            return new TypeResolver(typeTable).resolveType(type);
        }

        public final TypeTable where(Map<TypeVariableKey, ? extends Type> map) {
            ImmutableMap.Builder builder = ImmutableMap.builder();
            builder.putAll(this.map);
            for (Map.Entry<TypeVariableKey, ? extends Type> entry : map.entrySet()) {
                TypeVariableKey key = entry.getKey();
                Type value = entry.getValue();
                Preconditions.checkArgument(!key.equalsType(value), new ObfuscatedString(new long[]{575917717972535291L, 157163383313607579L, 5124932632345606172L, 7852980522653940947L, 7931948637905047423L}).toString(), key);
                builder.put(key, value);
            }
            return new TypeTable(builder.buildOrThrow());
        }

        private TypeTable(ImmutableMap<TypeVariableKey, Type> immutableMap) {
            this.map = immutableMap;
        }
    }

    public TypeResolver() {
        this.typeTable = new TypeTable();
    }

    private TypeResolver(TypeTable typeTable) {
        this.typeTable = typeTable;
    }

    public TypeResolver where(Map<TypeVariableKey, ? extends Type> map) {
        return new TypeResolver(this.typeTable.where(map));
    }
}
