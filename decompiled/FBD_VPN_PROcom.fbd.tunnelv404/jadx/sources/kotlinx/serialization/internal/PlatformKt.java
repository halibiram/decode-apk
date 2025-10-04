package kotlinx.serialization.internal;

import androidx.exifinterface.media.ExifInterface;
import defpackage.AbstractC0961xbc4021d9;
import defpackage.AbstractC1197x89633db9;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UInt;
import kotlin.UIntArray;
import kotlin.ULong;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.Unit;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.BooleanCompanionObject;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.CharCompanionObject;
import kotlin.jvm.internal.DoubleCompanionObject;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ShortCompanionObject;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.reflect.KClass;
import kotlin.time.Duration;
import kotlin.uuid.Uuid;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Polymorphic;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000P\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0018\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010$\n\u0002\b\u0003\u001a(\u0010\u0004\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0080\b¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u001c\u0010\u0004\u001a\u00020\u0007*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0080\b¢\u0006\u0004\b\u0004\u0010\b\u001a#\u0010\u000b\u001a\u00020\u0007\"\b\b\u0000\u0010\u0000*\u00020\t*\b\u0012\u0004\u0012\u00028\u00000\nH\u0000¢\u0006\u0004\b\u000b\u0010\f\u001a+\u0010\u000e\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\r\"\b\b\u0000\u0010\u0000*\u00020\t*\b\u0012\u0004\u0012\u00028\u00000\nH\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u001aM\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00010\u0001\"\b\b\u0000\u0010\u0000*\u00020\t\"\n\b\u0001\u0010\u0010*\u0004\u0018\u00018\u0000*\u0012\u0012\u0004\u0012\u00028\u00010\u0011j\b\u0012\u0004\u0012\u00028\u0001`\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\nH\u0000¢\u0006\u0004\b\u0014\u0010\u0015\u001a\u0017\u0010\u0017\u001a\u00020\u0016*\u0006\u0012\u0002\b\u00030\nH\u0000¢\u0006\u0004\b\u0017\u0010\u0018\u001a\u0017\u0010\u001a\u001a\u00020\u0016*\u0006\u0012\u0002\b\u00030\u0019H\u0000¢\u0006\u0004\b\u001a\u0010\u001b\u001aO\u0010\u001d\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\r\"\b\b\u0000\u0010\u0000*\u00020\t*\b\u0012\u0004\u0012\u00028\u00000\n2\"\u0010\u001c\u001a\u0012\u0012\u000e\b\u0001\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\r0\u0001\"\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\rH\u0000¢\u0006\u0004\b\u001d\u0010\u001e\u001aO\u0010\u001d\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\r\"\b\b\u0000\u0010\u0000*\u00020\t*\b\u0012\u0004\u0012\u00028\u00000\u00192\"\u0010\u001c\u001a\u0012\u0012\u000e\b\u0001\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\r0\u0001\"\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\rH\u0000¢\u0006\u0004\b\u001d\u0010\u001f\u001a\u001d\u0010!\u001a\u00020\u00072\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\t0\nH\u0000¢\u0006\u0004\b!\u0010\f\u001a#\u0010#\u001a\u0016\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n\u0012\b\u0012\u0006\u0012\u0002\b\u00030\r0\"H\u0000¢\u0006\u0004\b#\u0010$¨\u0006%"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "", "", "index", "getChecked", "([Ljava/lang/Object;I)Ljava/lang/Object;", "", "", "([ZI)Z", "", "Lkotlin/reflect/KClass;", "isInterface", "(Lkotlin/reflect/KClass;)Z", "Lkotlinx/serialization/KSerializer;", "compiledSerializerImpl", "(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;", ExifInterface.LONGITUDE_EAST, "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "eClass", "toNativeArrayImpl", "(Ljava/util/ArrayList;Lkotlin/reflect/KClass;)[Ljava/lang/Object;", "", "platformSpecificSerializerNotRegistered", "(Lkotlin/reflect/KClass;)Ljava/lang/Void;", "Ljava/lang/Class;", "serializerNotRegistered", "(Ljava/lang/Class;)Ljava/lang/Void;", "args", "constructSerializerForGivenTypeArgs", "(Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;", "(Ljava/lang/Class;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;", "rootClass", "isReferenceArray", "", "initBuiltins", "()Ljava/util/Map;", "kotlinx-serialization-core"}, k = 2, mv = {2, 0, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPlatform.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Platform.kt\nkotlinx/serialization/internal/PlatformKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,214:1\n208#1,6:251\n208#1,6:257\n208#1,6:263\n208#1,6:269\n208#1,6:275\n208#1,6:281\n1#2:215\n3170#3,11:216\n1310#3,2:227\n3170#3,11:229\n3170#3,11:240\n*S KotlinDebug\n*F\n+ 1 Platform.kt\nkotlinx/serialization/internal/PlatformKt\n*L\n193#1:251,6\n197#1:257,6\n198#1:263,6\n199#1:269,6\n200#1:275,6\n203#1:281,6\n73#1:216,11\n81#1:227,2\n151#1:229,11\n156#1:240,11\n*E\n"})
/* loaded from: classes3.dex */
public final class PlatformKt {
    @Nullable
    public static final <T> KSerializer<T> compiledSerializerImpl(@NotNull KClass<T> kClass) {
        Intrinsics.checkNotNullParameter(kClass, "<this>");
        return constructSerializerForGivenTypeArgs(kClass, (KSerializer<Object>[]) new KSerializer[0]);
    }

    @Nullable
    public static final <T> KSerializer<T> constructSerializerForGivenTypeArgs(@NotNull KClass<T> kClass, @NotNull KSerializer<Object>... args) {
        Intrinsics.checkNotNullParameter(kClass, "<this>");
        Intrinsics.checkNotNullParameter(args, "args");
        return constructSerializerForGivenTypeArgs(JvmClassMappingKt.getJavaClass((KClass) kClass), (KSerializer<Object>[]) Arrays.copyOf(args, args.length));
    }

    public static final <T> T getChecked(@NotNull T[] tArr, int i) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        return tArr[i];
    }

    @NotNull
    public static final Map<KClass<?>, KSerializer<?>> initBuiltins() {
        Map createMapBuilder = AbstractC0961xbc4021d9.createMapBuilder();
        createMapBuilder.put(Reflection.getOrCreateKotlinClass(String.class), BuiltinSerializersKt.serializer(StringCompanionObject.INSTANCE));
        createMapBuilder.put(Reflection.getOrCreateKotlinClass(Character.TYPE), BuiltinSerializersKt.serializer(CharCompanionObject.INSTANCE));
        createMapBuilder.put(Reflection.getOrCreateKotlinClass(char[].class), BuiltinSerializersKt.CharArraySerializer());
        createMapBuilder.put(Reflection.getOrCreateKotlinClass(Double.TYPE), BuiltinSerializersKt.serializer(DoubleCompanionObject.INSTANCE));
        createMapBuilder.put(Reflection.getOrCreateKotlinClass(double[].class), BuiltinSerializersKt.DoubleArraySerializer());
        createMapBuilder.put(Reflection.getOrCreateKotlinClass(Float.TYPE), BuiltinSerializersKt.serializer(FloatCompanionObject.INSTANCE));
        createMapBuilder.put(Reflection.getOrCreateKotlinClass(float[].class), BuiltinSerializersKt.FloatArraySerializer());
        createMapBuilder.put(Reflection.getOrCreateKotlinClass(Long.TYPE), BuiltinSerializersKt.serializer(LongCompanionObject.INSTANCE));
        createMapBuilder.put(Reflection.getOrCreateKotlinClass(long[].class), BuiltinSerializersKt.LongArraySerializer());
        createMapBuilder.put(Reflection.getOrCreateKotlinClass(ULong.class), BuiltinSerializersKt.serializer(ULong.INSTANCE));
        createMapBuilder.put(Reflection.getOrCreateKotlinClass(Integer.TYPE), BuiltinSerializersKt.serializer(IntCompanionObject.INSTANCE));
        createMapBuilder.put(Reflection.getOrCreateKotlinClass(int[].class), BuiltinSerializersKt.IntArraySerializer());
        createMapBuilder.put(Reflection.getOrCreateKotlinClass(UInt.class), BuiltinSerializersKt.serializer(UInt.INSTANCE));
        createMapBuilder.put(Reflection.getOrCreateKotlinClass(Short.TYPE), BuiltinSerializersKt.serializer(ShortCompanionObject.INSTANCE));
        createMapBuilder.put(Reflection.getOrCreateKotlinClass(short[].class), BuiltinSerializersKt.ShortArraySerializer());
        createMapBuilder.put(Reflection.getOrCreateKotlinClass(UShort.class), BuiltinSerializersKt.serializer(UShort.INSTANCE));
        createMapBuilder.put(Reflection.getOrCreateKotlinClass(Byte.TYPE), BuiltinSerializersKt.serializer(ByteCompanionObject.INSTANCE));
        createMapBuilder.put(Reflection.getOrCreateKotlinClass(byte[].class), BuiltinSerializersKt.ByteArraySerializer());
        createMapBuilder.put(Reflection.getOrCreateKotlinClass(UByte.class), BuiltinSerializersKt.serializer(UByte.INSTANCE));
        createMapBuilder.put(Reflection.getOrCreateKotlinClass(Boolean.TYPE), BuiltinSerializersKt.serializer(BooleanCompanionObject.INSTANCE));
        createMapBuilder.put(Reflection.getOrCreateKotlinClass(boolean[].class), BuiltinSerializersKt.BooleanArraySerializer());
        createMapBuilder.put(Reflection.getOrCreateKotlinClass(Unit.class), BuiltinSerializersKt.serializer(Unit.INSTANCE));
        createMapBuilder.put(Reflection.getOrCreateKotlinClass(Void.class), BuiltinSerializersKt.NothingSerializer());
        try {
            createMapBuilder.put(Reflection.getOrCreateKotlinClass(Duration.class), BuiltinSerializersKt.serializer(Duration.INSTANCE));
        } catch (ClassNotFoundException | NoClassDefFoundError unused) {
        }
        try {
            createMapBuilder.put(Reflection.getOrCreateKotlinClass(ULongArray.class), BuiltinSerializersKt.ULongArraySerializer());
        } catch (ClassNotFoundException | NoClassDefFoundError unused2) {
        }
        try {
            createMapBuilder.put(Reflection.getOrCreateKotlinClass(UIntArray.class), BuiltinSerializersKt.UIntArraySerializer());
        } catch (ClassNotFoundException | NoClassDefFoundError unused3) {
        }
        try {
            createMapBuilder.put(Reflection.getOrCreateKotlinClass(UShortArray.class), BuiltinSerializersKt.UShortArraySerializer());
        } catch (ClassNotFoundException | NoClassDefFoundError unused4) {
        }
        try {
            createMapBuilder.put(Reflection.getOrCreateKotlinClass(UByteArray.class), BuiltinSerializersKt.UByteArraySerializer());
        } catch (ClassNotFoundException | NoClassDefFoundError unused5) {
        }
        try {
            createMapBuilder.put(Reflection.getOrCreateKotlinClass(Uuid.class), BuiltinSerializersKt.serializer(Uuid.INSTANCE));
        } catch (ClassNotFoundException | NoClassDefFoundError unused6) {
        }
        return AbstractC0961xbc4021d9.build(createMapBuilder);
    }

    public static final <T> boolean isInterface(@NotNull KClass<T> kClass) {
        Intrinsics.checkNotNullParameter(kClass, "<this>");
        return JvmClassMappingKt.getJavaClass((KClass) kClass).isInterface();
    }

    public static final boolean isReferenceArray(@NotNull KClass<Object> rootClass) {
        Intrinsics.checkNotNullParameter(rootClass, "rootClass");
        return JvmClassMappingKt.getJavaClass((KClass) rootClass).isArray();
    }

    @NotNull
    public static final Void platformSpecificSerializerNotRegistered(@NotNull KClass<?> kClass) {
        Intrinsics.checkNotNullParameter(kClass, "<this>");
        Platform_commonKt.serializerNotRegistered(kClass);
        throw new KotlinNothingValueException();
    }

    @NotNull
    public static final Void serializerNotRegistered(@NotNull Class<?> cls) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        throw new SerializationException(Platform_commonKt.notRegisteredMessage((KClass<?>) JvmClassMappingKt.getKotlinClass(cls)));
    }

    @NotNull
    public static final <T, E extends T> E[] toNativeArrayImpl(@NotNull ArrayList<E> arrayList, @NotNull KClass<T> eClass) {
        Intrinsics.checkNotNullParameter(arrayList, "<this>");
        Intrinsics.checkNotNullParameter(eClass, "eClass");
        Object newInstance = Array.newInstance((Class<?>) JvmClassMappingKt.getJavaClass((KClass) eClass), arrayList.size());
        Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type kotlin.Array<E of kotlinx.serialization.internal.PlatformKt.toNativeArrayImpl>");
        E[] eArr = (E[]) arrayList.toArray((Object[]) newInstance);
        Intrinsics.checkNotNullExpressionValue(eArr, "toArray(...)");
        return eArr;
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final KSerializer m2388xfbe0c504(Object obj, KSerializer... kSerializerArr) {
        Class[] clsArr;
        try {
            if (kSerializerArr.length == 0) {
                clsArr = new Class[0];
            } else {
                int length = kSerializerArr.length;
                Class[] clsArr2 = new Class[length];
                for (int i = 0; i < length; i++) {
                    clsArr2[i] = KSerializer.class;
                }
                clsArr = clsArr2;
            }
            Object invoke = obj.getClass().getDeclaredMethod("serializer", (Class[]) Arrays.copyOf(clsArr, clsArr.length)).invoke(obj, Arrays.copyOf(kSerializerArr, kSerializerArr.length));
            if (!(invoke instanceof KSerializer)) {
                return null;
            }
            return (KSerializer) invoke;
        } catch (NoSuchMethodException unused) {
            return null;
        } catch (InvocationTargetException e) {
            Throwable cause = e.getCause();
            if (cause != null) {
                String message = cause.getMessage();
                if (message == null) {
                    message = e.getMessage();
                }
                throw new InvocationTargetException(cause, message);
            }
            throw e;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:58|(1:(2:60|(1:63)(1:62))(2:112|113))|(5:107|108|109|(8:81|82|(1:(3:84|(1:102)(1:(1:90)(2:87|88))|89)(2:103|(1:105)))|91|(1:101)(1:95)|96|(1:98)|100)|(1:70)(2:71|(1:77)(2:79|80)))|65|(1:67)|81|82|(2:(0)(0)|89)|91|(1:93)|101|96|(0)|100|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0106, code lost:
    
        if (r12 == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x00bc, code lost:
    
        if (r11 == false) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x018f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0118 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01aa A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0175 A[Catch: NoSuchFieldException -> 0x018d, TryCatch #1 {NoSuchFieldException -> 0x018d, blocks: (B:82:0x0167, B:84:0x0175, B:93:0x0194, B:95:0x019a, B:96:0x01a0, B:98:0x01a4, B:89:0x018a), top: B:81:0x0167 }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01a4 A[Catch: NoSuchFieldException -> 0x018d, TRY_LEAVE, TryCatch #1 {NoSuchFieldException -> 0x018d, blocks: (B:82:0x0167, B:84:0x0175, B:93:0x0194, B:95:0x019a, B:96:0x01a0, B:98:0x01a4, B:89:0x018a), top: B:81:0x0167 }] */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> KSerializer<T> constructSerializerForGivenTypeArgs(@NotNull Class<T> cls, @NotNull KSerializer<Object>... args) {
        Object obj;
        KSerializer<T> kSerializer;
        Class<?> cls2;
        Object obj2;
        KSerializer<T> kSerializer2;
        int length;
        int i;
        Object obj3;
        Field field;
        Serializable serializable;
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(args, "args");
        if (cls.isEnum() && cls.getAnnotation(Serializable.class) == null && cls.getAnnotation(Polymorphic.class) == null) {
            T[] enumConstants = cls.getEnumConstants();
            String canonicalName = cls.getCanonicalName();
            Intrinsics.checkNotNullExpressionValue(canonicalName, "getCanonicalName(...)");
            Intrinsics.checkNotNull(enumConstants, "null cannot be cast to non-null type kotlin.Array<out kotlin.Enum<*>>");
            return new EnumSerializer(canonicalName, (Enum[]) enumConstants);
        }
        KSerializer[] kSerializerArr = (KSerializer[]) Arrays.copyOf(args, args.length);
        try {
            Field declaredField = cls.getDeclaredField("Companion");
            declaredField.setAccessible(true);
            obj = declaredField.get(null);
        } catch (Throwable unused) {
            obj = null;
        }
        KSerializer<T> m2388xfbe0c504 = obj == null ? null : m2388xfbe0c504(obj, (KSerializer[]) Arrays.copyOf(kSerializerArr, kSerializerArr.length));
        if (m2388xfbe0c504 != null) {
            return m2388xfbe0c504;
        }
        String canonicalName2 = cls.getCanonicalName();
        if (canonicalName2 != null && !AbstractC1197x89633db9.startsWith$default(canonicalName2, "java.", false, 2, null) && !AbstractC1197x89633db9.startsWith$default(canonicalName2, "kotlin.", false, 2, null)) {
            Field[] declaredFields = cls.getDeclaredFields();
            Intrinsics.checkNotNullExpressionValue(declaredFields, "getDeclaredFields(...)");
            int length2 = declaredFields.length;
            Field field2 = null;
            int i2 = 0;
            boolean z = false;
            while (true) {
                if (i2 < length2) {
                    Field field3 = declaredFields[i2];
                    if (Intrinsics.areEqual(field3.getName(), "INSTANCE") && Intrinsics.areEqual(field3.getType(), cls) && Modifier.isStatic(field3.getModifiers())) {
                        if (z) {
                            break;
                        }
                        field2 = field3;
                        z = true;
                    }
                    i2++;
                }
            }
            field2 = null;
            if (field2 != null) {
                Object obj4 = field2.get(null);
                Method[] methods = cls.getMethods();
                Intrinsics.checkNotNullExpressionValue(methods, "getMethods(...)");
                int length3 = methods.length;
                Method method = null;
                int i3 = 0;
                boolean z2 = false;
                while (true) {
                    if (i3 < length3) {
                        Method method2 = methods[i3];
                        if (Intrinsics.areEqual(method2.getName(), "serializer")) {
                            Class<?>[] parameterTypes = method2.getParameterTypes();
                            Intrinsics.checkNotNullExpressionValue(parameterTypes, "getParameterTypes(...)");
                            if (parameterTypes.length == 0 && Intrinsics.areEqual(method2.getReturnType(), KSerializer.class)) {
                                if (z2) {
                                    break;
                                }
                                method = method2;
                                z2 = true;
                            }
                        }
                        i3++;
                    }
                }
                method = null;
                if (method != null) {
                    Object invoke = method.invoke(obj4, null);
                    if (invoke instanceof KSerializer) {
                        kSerializer = (KSerializer) invoke;
                        if (kSerializer == null) {
                            return kSerializer;
                        }
                        KSerializer[] kSerializerArr2 = (KSerializer[]) Arrays.copyOf(args, args.length);
                        Class<?>[] declaredClasses = cls.getDeclaredClasses();
                        Intrinsics.checkNotNullExpressionValue(declaredClasses, "getDeclaredClasses(...)");
                        int length4 = declaredClasses.length;
                        int i4 = 0;
                        while (true) {
                            if (i4 >= length4) {
                                cls2 = null;
                                break;
                            }
                            cls2 = declaredClasses[i4];
                            if (cls2.getAnnotation(NamedCompanion.class) != null) {
                                break;
                            }
                            i4++;
                        }
                        if (cls2 != null) {
                            String simpleName = cls2.getSimpleName();
                            Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
                            try {
                                Field declaredField2 = cls.getDeclaredField(simpleName);
                                declaredField2.setAccessible(true);
                                obj2 = declaredField2.get(null);
                            } catch (Throwable unused2) {
                            }
                            if (obj2 != null || (kSerializer2 = m2388xfbe0c504(obj2, (KSerializer[]) Arrays.copyOf(kSerializerArr2, kSerializerArr2.length))) == null) {
                                Class<?>[] declaredClasses2 = cls.getDeclaredClasses();
                                Intrinsics.checkNotNullExpressionValue(declaredClasses2, "getDeclaredClasses(...)");
                                length = declaredClasses2.length;
                                Class<?> cls3 = null;
                                i = 0;
                                boolean z3 = false;
                                while (true) {
                                    if (i >= length) {
                                        Class<?> cls4 = declaredClasses2[i];
                                        if (Intrinsics.areEqual(cls4.getSimpleName(), "$serializer")) {
                                            if (z3) {
                                                break;
                                            }
                                            cls3 = cls4;
                                            z3 = true;
                                        }
                                        i++;
                                    } else if (!z3) {
                                    }
                                }
                                cls3 = null;
                                obj3 = (cls3 != null || (field = cls3.getField("INSTANCE")) == null) ? null : field.get(null);
                                if (obj3 instanceof KSerializer) {
                                    kSerializer2 = (KSerializer) obj3;
                                }
                                kSerializer2 = null;
                            }
                            if (kSerializer2 == null) {
                                return kSerializer2;
                            }
                            if (cls.getAnnotation(Polymorphic.class) == null && ((serializable = (Serializable) cls.getAnnotation(Serializable.class)) == null || !Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(serializable.with()), Reflection.getOrCreateKotlinClass(PolymorphicSerializer.class)))) {
                                return null;
                            }
                            return new PolymorphicSerializer(JvmClassMappingKt.getKotlinClass(cls));
                        }
                        obj2 = null;
                        if (obj2 != null) {
                        }
                        Class<?>[] declaredClasses22 = cls.getDeclaredClasses();
                        Intrinsics.checkNotNullExpressionValue(declaredClasses22, "getDeclaredClasses(...)");
                        length = declaredClasses22.length;
                        Class<?> cls32 = null;
                        i = 0;
                        boolean z32 = false;
                        while (true) {
                            if (i >= length) {
                            }
                            i++;
                        }
                        cls32 = null;
                        if (cls32 != null) {
                        }
                        if (obj3 instanceof KSerializer) {
                        }
                        kSerializer2 = null;
                        if (kSerializer2 == null) {
                        }
                    }
                }
            }
        }
        kSerializer = null;
        if (kSerializer == null) {
        }
    }

    public static final boolean getChecked(@NotNull boolean[] zArr, int i) {
        Intrinsics.checkNotNullParameter(zArr, "<this>");
        return zArr[i];
    }
}
