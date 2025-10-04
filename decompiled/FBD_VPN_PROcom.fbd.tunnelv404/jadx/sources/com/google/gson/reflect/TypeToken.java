package com.google.gson.reflect;

import com.google.gson.internal.C$Gson$Types;
import com.google.gson.internal.TroubleshootingGuide;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.Objects;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class TypeToken<T> {
    private final int hashCode;
    private final Class<? super T> rawType;
    private final Type type;

    public TypeToken() {
        Type typeTokenTypeArgument = getTypeTokenTypeArgument();
        this.type = typeTokenTypeArgument;
        this.rawType = (Class<? super T>) C$Gson$Types.getRawType(typeTokenTypeArgument);
        this.hashCode = typeTokenTypeArgument.hashCode();
    }

    private static IllegalArgumentException buildUnsupportedTypeException(Type type, Class<?>... clsArr) {
        StringBuilder sb = new StringBuilder(new ObfuscatedString(new long[]{-4744956439751775966L, -6398725644767041254L, -9043086697114236384L, -2557618485571330324L, 2972541499664061759L, -1802589230126003498L}).toString());
        for (Class<?> cls : clsArr) {
            sb.append(cls.getName());
            sb.append(new ObfuscatedString(new long[]{-1497535139191690281L, 960625256651508577L}).toString());
        }
        sb.append(new ObfuscatedString(new long[]{-1164794967263348003L, -8608228578438262948L, 1138277275584006434L}).toString());
        sb.append(type.getClass().getName());
        sb.append(new ObfuscatedString(new long[]{-7971722494375220912L, -175835183869464423L, -940401367144615312L, -2343126746694484069L}).toString());
        sb.append(type.toString());
        return new IllegalArgumentException(sb.toString());
    }

    public static TypeToken<?> get(Type type) {
        return new TypeToken<>(type);
    }

    public static TypeToken<?> getArray(Type type) {
        return new TypeToken<>(C$Gson$Types.arrayOf(type));
    }

    public static TypeToken<?> getParameterized(Type type, Type... typeArr) {
        Objects.requireNonNull(type);
        Objects.requireNonNull(typeArr);
        if (type instanceof Class) {
            Class cls = (Class) type;
            TypeVariable<Class<T>>[] typeParameters = cls.getTypeParameters();
            int length = typeParameters.length;
            int length2 = typeArr.length;
            if (length2 == length) {
                if (typeArr.length == 0) {
                    return get(cls);
                }
                if (!C$Gson$Types.requiresOwnerType(type)) {
                    for (int i = 0; i < length; i++) {
                        Type type2 = typeArr[i];
                        Objects.requireNonNull(type2, new ObfuscatedString(new long[]{559389629796383167L, 8595625373109254221L, 2316600772493396216L, 7051982109466496632L, -601541815449473543L}).toString());
                        Type type3 = type2;
                        Class<?> rawType = C$Gson$Types.getRawType(type3);
                        TypeVariable<Class<T>> typeVariable = typeParameters[i];
                        for (Type type4 : typeVariable.getBounds()) {
                            if (!C$Gson$Types.getRawType(type4).isAssignableFrom(rawType)) {
                                throw new IllegalArgumentException(new ObfuscatedString(new long[]{6276982352024281999L, -5355669003200646374L, -1650026806137431116L}).toString() + type3 + new ObfuscatedString(new long[]{8581137040679574960L, -407045601521299922L, -366173611414652873L, -5569191506164571685L, -4312043520411125787L, -8448609688746064895L, 747224601826265093L}).toString() + typeVariable + new ObfuscatedString(new long[]{-2029584110366014712L, 3371726114934925942L, -8728813799426583721L}).toString() + type);
                            }
                        }
                    }
                    return new TypeToken<>(C$Gson$Types.newParameterizedTypeWithOwner(null, cls, typeArr));
                }
                StringBuilder sb = new StringBuilder();
                sb.append(new ObfuscatedString(new long[]{1324238131397883163L, 5129984723521450085L, 8253665073024065586L}).toString());
                sb.append(cls.getName());
                throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{6535671192915047859L, 4448242611585895145L, 7097035711661833629L, 4465584807375084279L, -250956257069396649L, 5544714909994590658L, 2615072896848737454L, -2114414721956418455L, -5817141576679941620L}), sb));
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(cls.getName());
            sb2.append(new ObfuscatedString(new long[]{6204426507123309647L, -2974087582720439662L, 4811972147851550848L}).toString());
            sb2.append(length);
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{7515241043595387580L, 9145874362693041488L, -3262214441303987528L, 4512709624273156674L, 5432704749008517594L}), sb2, length2));
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-8733097615744579292L, 4843072327559648347L, 6070355457190423754L, -7071053215408549711L, -114281601905503104L, -1736889505133207439L}).toString() + type);
    }

    private Type getTypeTokenTypeArgument() {
        Type genericSuperclass = getClass().getGenericSuperclass();
        if (genericSuperclass instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) genericSuperclass;
            if (parameterizedType.getRawType() == TypeToken.class) {
                Type canonicalize = C$Gson$Types.canonicalize(parameterizedType.getActualTypeArguments()[0]);
                if (isCapturingTypeVariablesForbidden()) {
                    verifyNoTypeVariable(canonicalize);
                }
                return canonicalize;
            }
        } else if (genericSuperclass == TypeToken.class) {
            throw new IllegalStateException(new ObfuscatedString(new long[]{7550553478430926398L, 1307996396790759655L, -1115475878937138479L, -7389416708986350238L, -105146907384169659L, 2125585083478921084L, -3300780638041989511L, -6620946337153681199L, -4753030398707323651L, -8196178654303850007L, 2038712511589376931L, 6215614302750101632L, -6334318651519115638L, -6335704200313653128L, 6284218623121235323L, -1984055023362452358L, -3655376949535426837L, -3812665302487243153L, -184861004227508865L, -4861857023249316273L, 9030644276675797255L, -1713798793050960089L, -5818762405450981440L}).toString() + TroubleshootingGuide.createUrl(new ObfuscatedString(new long[]{8636894422351782665L, -2567691351897591284L, 5915799716086150164L}).toString()));
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-4475091457262157048L, 367791994080311643L, 701061744555813364L, 8003795115285076894L, 9174405407456954795L, 1041271899903551710L, -1910477208423960555L}).toString());
    }

    private static boolean isCapturingTypeVariablesForbidden() {
        return !Objects.equals(System.getProperty(new ObfuscatedString(new long[]{4581213360905665290L, 2898007381536120039L, 2388788298805944285L, 1283269224984625335L, -107718160235689122L}).toString()), new ObfuscatedString(new long[]{-1476390257443677640L, 6143373806493096961L}).toString());
    }

    private static boolean matches(Type type, Type type2, Map<String, Type> map) {
        if (!type2.equals(type) && (!(type instanceof TypeVariable) || !type2.equals(map.get(((TypeVariable) type).getName())))) {
            return false;
        }
        return true;
    }

    private static boolean typeEquals(ParameterizedType parameterizedType, ParameterizedType parameterizedType2, Map<String, Type> map) {
        if (!parameterizedType.getRawType().equals(parameterizedType2.getRawType())) {
            return false;
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        Type[] actualTypeArguments2 = parameterizedType2.getActualTypeArguments();
        for (int i = 0; i < actualTypeArguments.length; i++) {
            if (!matches(actualTypeArguments[i], actualTypeArguments2[i], map)) {
                return false;
            }
        }
        return true;
    }

    private static void verifyNoTypeVariable(Type type) {
        if (!(type instanceof TypeVariable)) {
            if (type instanceof GenericArrayType) {
                verifyNoTypeVariable(((GenericArrayType) type).getGenericComponentType());
                return;
            }
            int i = 0;
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                Type ownerType = parameterizedType.getOwnerType();
                if (ownerType != null) {
                    verifyNoTypeVariable(ownerType);
                }
                Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                int length = actualTypeArguments.length;
                while (i < length) {
                    verifyNoTypeVariable(actualTypeArguments[i]);
                    i++;
                }
                return;
            }
            if (type instanceof WildcardType) {
                WildcardType wildcardType = (WildcardType) type;
                for (Type type2 : wildcardType.getLowerBounds()) {
                    verifyNoTypeVariable(type2);
                }
                Type[] upperBounds = wildcardType.getUpperBounds();
                int length2 = upperBounds.length;
                while (i < length2) {
                    verifyNoTypeVariable(upperBounds[i]);
                    i++;
                }
                return;
            }
            if (type != null) {
                return;
            } else {
                throw new IllegalArgumentException(new ObfuscatedString(new long[]{798313735804836604L, -1630083009281989962L, -390421950769827809L, -4528778518344696928L, 5353239948010938944L, -3434617869113841900L, 2249609120357763712L, 2445350865894363715L, 932167554079400855L, -8932156268170763355L, 4514023358978826151L}).toString());
            }
        }
        TypeVariable typeVariable = (TypeVariable) type;
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{334988462778240381L, 7386997543135991162L, 1977246311216843161L, -5587776050199687565L, 7093877353414524806L, -6015233794871360017L, -2336962564693012276L, 9024428176797880136L, -7944693120157543723L, -6626733413359653727L, -2381396806445128586L, 3451431523526776681L}).toString() + typeVariable.getName() + new ObfuscatedString(new long[]{-3470154338432483799L, -6327068726818245194L, 6745882897170307691L}).toString() + typeVariable.getGenericDeclaration() + new ObfuscatedString(new long[]{-3960203255229894950L, 6794911673342699434L}).toString() + TroubleshootingGuide.createUrl(new ObfuscatedString(new long[]{2961836865086976819L, -4930704833774258238L, -8959093639477882396L, -1688196681160597076L}).toString()));
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof TypeToken) && C$Gson$Types.equals(this.type, ((TypeToken) obj).type)) {
            return true;
        }
        return false;
    }

    public final Class<? super T> getRawType() {
        return this.rawType;
    }

    public final Type getType() {
        return this.type;
    }

    public final int hashCode() {
        return this.hashCode;
    }

    @Deprecated
    public boolean isAssignableFrom(Class<?> cls) {
        return isAssignableFrom((Type) cls);
    }

    public final String toString() {
        return C$Gson$Types.typeToString(this.type);
    }

    public static <T> TypeToken<T> get(Class<T> cls) {
        return new TypeToken<>(cls);
    }

    @Deprecated
    public boolean isAssignableFrom(Type type) {
        if (type == null) {
            return false;
        }
        if (this.type.equals(type)) {
            return true;
        }
        Type type2 = this.type;
        if (type2 instanceof Class) {
            return this.rawType.isAssignableFrom(C$Gson$Types.getRawType(type));
        }
        if (type2 instanceof ParameterizedType) {
            return isAssignableFrom(type, (ParameterizedType) type2, new HashMap());
        }
        if (type2 instanceof GenericArrayType) {
            return this.rawType.isAssignableFrom(C$Gson$Types.getRawType(type)) && isAssignableFrom(type, (GenericArrayType) this.type);
        }
        throw buildUnsupportedTypeException(type2, Class.class, ParameterizedType.class, GenericArrayType.class);
    }

    private TypeToken(Type type) {
        Objects.requireNonNull(type);
        Type canonicalize = C$Gson$Types.canonicalize(type);
        this.type = canonicalize;
        this.rawType = (Class<? super T>) C$Gson$Types.getRawType(canonicalize);
        this.hashCode = canonicalize.hashCode();
    }

    @Deprecated
    public boolean isAssignableFrom(TypeToken<?> typeToken) {
        return isAssignableFrom(typeToken.getType());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Class] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r1v9 */
    private static boolean isAssignableFrom(Type type, GenericArrayType genericArrayType) {
        Type genericComponentType = genericArrayType.getGenericComponentType();
        if (!(genericComponentType instanceof ParameterizedType)) {
            return true;
        }
        if (type instanceof GenericArrayType) {
            type = ((GenericArrayType) type).getGenericComponentType();
        } else if (type instanceof Class) {
            type = (Class) type;
            while (type.isArray()) {
                type = type.getComponentType();
            }
        }
        return isAssignableFrom(type, (ParameterizedType) genericComponentType, new HashMap());
    }

    private static boolean isAssignableFrom(Type type, ParameterizedType parameterizedType, Map<String, Type> map) {
        if (type == null) {
            return false;
        }
        if (parameterizedType.equals(type)) {
            return true;
        }
        Class<?> rawType = C$Gson$Types.getRawType(type);
        ParameterizedType parameterizedType2 = type instanceof ParameterizedType ? (ParameterizedType) type : null;
        if (parameterizedType2 != null) {
            Type[] actualTypeArguments = parameterizedType2.getActualTypeArguments();
            TypeVariable<Class<?>>[] typeParameters = rawType.getTypeParameters();
            for (int i = 0; i < actualTypeArguments.length; i++) {
                Type type2 = actualTypeArguments[i];
                TypeVariable<Class<?>> typeVariable = typeParameters[i];
                while (type2 instanceof TypeVariable) {
                    type2 = map.get(((TypeVariable) type2).getName());
                }
                map.put(typeVariable.getName(), type2);
            }
            if (typeEquals(parameterizedType2, parameterizedType, map)) {
                return true;
            }
        }
        for (Type type3 : rawType.getGenericInterfaces()) {
            if (isAssignableFrom(type3, parameterizedType, new HashMap(map))) {
                return true;
            }
        }
        return isAssignableFrom(rawType.getGenericSuperclass(), parameterizedType, new HashMap(map));
    }
}
