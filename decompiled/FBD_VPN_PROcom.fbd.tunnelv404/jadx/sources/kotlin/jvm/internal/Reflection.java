package kotlin.jvm.internal;

import java.util.Arrays;
import java.util.Collections;
import kotlin.SinceKotlin;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KFunction;
import kotlin.reflect.KMutableProperty0;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.KMutableProperty2;
import kotlin.reflect.KProperty0;
import kotlin.reflect.KProperty1;
import kotlin.reflect.KProperty2;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.KVariance;

/* loaded from: classes3.dex */
public class Reflection {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final ReflectionFactory f1462xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final KClass[] f1463x3271d0aa;

    static {
        ReflectionFactory reflectionFactory = null;
        try {
            reflectionFactory = (ReflectionFactory) Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
        }
        if (reflectionFactory == null) {
            reflectionFactory = new ReflectionFactory();
        }
        f1462xfbe0c504 = reflectionFactory;
        f1463x3271d0aa = new KClass[0];
    }

    public static KClass createKotlinClass(Class cls) {
        return f1462xfbe0c504.createKotlinClass(cls);
    }

    public static KFunction function(FunctionReference functionReference) {
        return f1462xfbe0c504.function(functionReference);
    }

    public static KClass getOrCreateKotlinClass(Class cls) {
        return f1462xfbe0c504.getOrCreateKotlinClass(cls);
    }

    public static KClass[] getOrCreateKotlinClasses(Class[] clsArr) {
        int length = clsArr.length;
        if (length == 0) {
            return f1463x3271d0aa;
        }
        KClass[] kClassArr = new KClass[length];
        for (int i = 0; i < length; i++) {
            kClassArr[i] = getOrCreateKotlinClass(clsArr[i]);
        }
        return kClassArr;
    }

    @SinceKotlin(version = "1.4")
    public static KDeclarationContainer getOrCreateKotlinPackage(Class cls) {
        return f1462xfbe0c504.getOrCreateKotlinPackage(cls, "");
    }

    @SinceKotlin(version = "1.6")
    public static KType mutableCollectionType(KType kType) {
        return f1462xfbe0c504.mutableCollectionType(kType);
    }

    public static KMutableProperty0 mutableProperty0(MutablePropertyReference0 mutablePropertyReference0) {
        return f1462xfbe0c504.mutableProperty0(mutablePropertyReference0);
    }

    public static KMutableProperty1 mutableProperty1(MutablePropertyReference1 mutablePropertyReference1) {
        return f1462xfbe0c504.mutableProperty1(mutablePropertyReference1);
    }

    public static KMutableProperty2 mutableProperty2(MutablePropertyReference2 mutablePropertyReference2) {
        return f1462xfbe0c504.mutableProperty2(mutablePropertyReference2);
    }

    @SinceKotlin(version = "1.6")
    public static KType nothingType(KType kType) {
        return f1462xfbe0c504.nothingType(kType);
    }

    @SinceKotlin(version = "1.4")
    public static KType nullableTypeOf(KClassifier kClassifier) {
        return f1462xfbe0c504.typeOf(kClassifier, Collections.emptyList(), true);
    }

    @SinceKotlin(version = "1.6")
    public static KType platformType(KType kType, KType kType2) {
        return f1462xfbe0c504.platformType(kType, kType2);
    }

    public static KProperty0 property0(PropertyReference0 propertyReference0) {
        return f1462xfbe0c504.property0(propertyReference0);
    }

    public static KProperty1 property1(PropertyReference1 propertyReference1) {
        return f1462xfbe0c504.property1(propertyReference1);
    }

    public static KProperty2 property2(PropertyReference2 propertyReference2) {
        return f1462xfbe0c504.property2(propertyReference2);
    }

    @SinceKotlin(version = "1.1")
    public static String renderLambdaToString(Lambda lambda) {
        return f1462xfbe0c504.renderLambdaToString(lambda);
    }

    @SinceKotlin(version = "1.4")
    public static void setUpperBounds(KTypeParameter kTypeParameter, KType kType) {
        f1462xfbe0c504.setUpperBounds(kTypeParameter, Collections.singletonList(kType));
    }

    @SinceKotlin(version = "1.4")
    public static KType typeOf(KClassifier kClassifier) {
        return f1462xfbe0c504.typeOf(kClassifier, Collections.emptyList(), false);
    }

    @SinceKotlin(version = "1.4")
    public static KTypeParameter typeParameter(Object obj, String str, KVariance kVariance, boolean z) {
        return f1462xfbe0c504.typeParameter(obj, str, kVariance, z);
    }

    public static KClass createKotlinClass(Class cls, String str) {
        return f1462xfbe0c504.createKotlinClass(cls, str);
    }

    public static KClass getOrCreateKotlinClass(Class cls, String str) {
        return f1462xfbe0c504.getOrCreateKotlinClass(cls, str);
    }

    public static KDeclarationContainer getOrCreateKotlinPackage(Class cls, String str) {
        return f1462xfbe0c504.getOrCreateKotlinPackage(cls, str);
    }

    @SinceKotlin(version = "1.4")
    public static KType nullableTypeOf(Class cls) {
        return f1462xfbe0c504.typeOf(getOrCreateKotlinClass(cls), Collections.emptyList(), true);
    }

    @SinceKotlin(version = "1.3")
    public static String renderLambdaToString(FunctionBase functionBase) {
        return f1462xfbe0c504.renderLambdaToString(functionBase);
    }

    @SinceKotlin(version = "1.4")
    public static void setUpperBounds(KTypeParameter kTypeParameter, KType... kTypeArr) {
        f1462xfbe0c504.setUpperBounds(kTypeParameter, ArraysKt___ArraysKt.toList(kTypeArr));
    }

    @SinceKotlin(version = "1.4")
    public static KType typeOf(Class cls) {
        return f1462xfbe0c504.typeOf(getOrCreateKotlinClass(cls), Collections.emptyList(), false);
    }

    @SinceKotlin(version = "1.4")
    public static KType nullableTypeOf(Class cls, KTypeProjection kTypeProjection) {
        return f1462xfbe0c504.typeOf(getOrCreateKotlinClass(cls), Collections.singletonList(kTypeProjection), true);
    }

    @SinceKotlin(version = "1.4")
    public static KType typeOf(Class cls, KTypeProjection kTypeProjection) {
        return f1462xfbe0c504.typeOf(getOrCreateKotlinClass(cls), Collections.singletonList(kTypeProjection), false);
    }

    @SinceKotlin(version = "1.4")
    public static KType nullableTypeOf(Class cls, KTypeProjection kTypeProjection, KTypeProjection kTypeProjection2) {
        return f1462xfbe0c504.typeOf(getOrCreateKotlinClass(cls), Arrays.asList(kTypeProjection, kTypeProjection2), true);
    }

    @SinceKotlin(version = "1.4")
    public static KType typeOf(Class cls, KTypeProjection kTypeProjection, KTypeProjection kTypeProjection2) {
        return f1462xfbe0c504.typeOf(getOrCreateKotlinClass(cls), Arrays.asList(kTypeProjection, kTypeProjection2), false);
    }

    @SinceKotlin(version = "1.4")
    public static KType nullableTypeOf(Class cls, KTypeProjection... kTypeProjectionArr) {
        return f1462xfbe0c504.typeOf(getOrCreateKotlinClass(cls), ArraysKt___ArraysKt.toList(kTypeProjectionArr), true);
    }

    @SinceKotlin(version = "1.4")
    public static KType typeOf(Class cls, KTypeProjection... kTypeProjectionArr) {
        return f1462xfbe0c504.typeOf(getOrCreateKotlinClass(cls), ArraysKt___ArraysKt.toList(kTypeProjectionArr), false);
    }
}
