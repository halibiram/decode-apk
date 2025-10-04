package kotlin.jvm.internal;

import defpackage.AbstractC0362x4440ab85;
import java.util.Arrays;
import kotlin.KotlinNullPointerException;
import kotlin.SinceKotlin;
import kotlin.UninitializedPropertyAccessException;

/* loaded from: classes3.dex */
public class Intrinsics {

    @SinceKotlin(version = "1.4")
    /* loaded from: classes3.dex */
    public static class Kotlin {
    }

    public static boolean areEqual(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static void checkExpressionValueIsNotNull(Object obj, String str) {
        if (obj != null) {
            return;
        }
        IllegalStateException illegalStateException = new IllegalStateException(AbstractC0362x4440ab85.m2931x34271fae(str, " must not be null"));
        m1986x3271d0aa(illegalStateException, Intrinsics.class.getName());
        throw illegalStateException;
    }

    public static void checkFieldIsNotNull(Object obj, String str, String str2) {
        if (obj != null) {
            return;
        }
        IllegalStateException illegalStateException = new IllegalStateException("Field specified as non-null is null: " + str + "." + str2);
        m1986x3271d0aa(illegalStateException, Intrinsics.class.getName());
        throw illegalStateException;
    }

    public static void checkHasClass(String str) {
        String replace = str.replace('/', '.');
        try {
            Class.forName(replace);
        } catch (ClassNotFoundException e) {
            ClassNotFoundException classNotFoundException = new ClassNotFoundException(AbstractC0362x4440ab85.m2932x95f25580("Class ", replace, " is not found. Please update the Kotlin runtime to the latest version"), e);
            m1986x3271d0aa(classNotFoundException, Intrinsics.class.getName());
            throw classNotFoundException;
        }
    }

    public static void checkNotNull(Object obj) {
        if (obj == null) {
            throwJavaNpe();
        }
    }

    public static void checkNotNullExpressionValue(Object obj, String str) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(AbstractC0362x4440ab85.m2931x34271fae(str, " must not be null"));
        m1986x3271d0aa(nullPointerException, Intrinsics.class.getName());
        throw nullPointerException;
    }

    public static void checkNotNullParameter(Object obj, String str) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(m1985xfbe0c504(str));
        m1986x3271d0aa(nullPointerException, Intrinsics.class.getName());
        throw nullPointerException;
    }

    public static void checkParameterIsNotNull(Object obj, String str) {
        if (obj != null) {
            return;
        }
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException(m1985xfbe0c504(str));
        m1986x3271d0aa(illegalArgumentException, Intrinsics.class.getName());
        throw illegalArgumentException;
    }

    public static void checkReturnedValueIsNotNull(Object obj, String str, String str2) {
        if (obj != null) {
            return;
        }
        IllegalStateException illegalStateException = new IllegalStateException("Method specified as non-null returned null: " + str + "." + str2);
        m1986x3271d0aa(illegalStateException, Intrinsics.class.getName());
        throw illegalStateException;
    }

    public static int compare(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i == i2 ? 0 : 1;
    }

    public static void needClassReification() {
        throwUndefinedForReified();
    }

    public static void reifiedOperationMarker(int i, String str) {
        throwUndefinedForReified();
    }

    public static String stringPlus(String str, Object obj) {
        return str + obj;
    }

    public static void throwAssert() {
        AssertionError assertionError = new AssertionError();
        m1986x3271d0aa(assertionError, Intrinsics.class.getName());
        throw assertionError;
    }

    public static void throwIllegalArgument() {
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException();
        m1986x3271d0aa(illegalArgumentException, Intrinsics.class.getName());
        throw illegalArgumentException;
    }

    public static void throwIllegalState() {
        IllegalStateException illegalStateException = new IllegalStateException();
        m1986x3271d0aa(illegalStateException, Intrinsics.class.getName());
        throw illegalStateException;
    }

    @SinceKotlin(version = "1.4")
    public static void throwJavaNpe() {
        NullPointerException nullPointerException = new NullPointerException();
        m1986x3271d0aa(nullPointerException, Intrinsics.class.getName());
        throw nullPointerException;
    }

    public static void throwNpe() {
        KotlinNullPointerException kotlinNullPointerException = new KotlinNullPointerException();
        m1986x3271d0aa(kotlinNullPointerException, Intrinsics.class.getName());
        throw kotlinNullPointerException;
    }

    public static void throwUndefinedForReified() {
        throwUndefinedForReified("This function has a reified type parameter and thus can only be inlined at compilation time, not called directly.");
    }

    public static void throwUninitializedProperty(String str) {
        UninitializedPropertyAccessException uninitializedPropertyAccessException = new UninitializedPropertyAccessException(str);
        m1986x3271d0aa(uninitializedPropertyAccessException, Intrinsics.class.getName());
        throw uninitializedPropertyAccessException;
    }

    public static void throwUninitializedPropertyAccessException(String str) {
        throwUninitializedProperty("lateinit property " + str + " has not been initialized");
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static String m1985xfbe0c504(String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        String name = Intrinsics.class.getName();
        int i = 0;
        while (!stackTrace[i].getClassName().equals(name)) {
            i++;
        }
        while (stackTrace[i].getClassName().equals(name)) {
            i++;
        }
        StackTraceElement stackTraceElement = stackTrace[i];
        StringBuilder m2944x4440ab85 = AbstractC0362x4440ab85.m2944x4440ab85("Parameter specified as non-null is null: method ", stackTraceElement.getClassName(), ".", stackTraceElement.getMethodName(), ", parameter ");
        m2944x4440ab85.append(str);
        return m2944x4440ab85.toString();
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static void m1986x3271d0aa(Throwable th, String str) {
        StackTraceElement[] stackTrace = th.getStackTrace();
        int length = stackTrace.length;
        int i = -1;
        for (int i2 = 0; i2 < length; i2++) {
            if (str.equals(stackTrace[i2].getClassName())) {
                i = i2;
            }
        }
        th.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i + 1, length));
    }

    @SinceKotlin(version = "1.1")
    public static boolean areEqual(Double d, Double d2) {
        if (d == null) {
            if (d2 != null) {
                return false;
            }
        } else if (d2 == null || d.doubleValue() != d2.doubleValue()) {
            return false;
        }
        return true;
    }

    public static void checkNotNull(Object obj, String str) {
        if (obj == null) {
            throwJavaNpe(str);
        }
    }

    public static int compare(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        return j == j2 ? 0 : 1;
    }

    public static void needClassReification(String str) {
        throwUndefinedForReified(str);
    }

    public static void reifiedOperationMarker(int i, String str, String str2) {
        throwUndefinedForReified(str2);
    }

    public static void throwUndefinedForReified(String str) {
        throw new UnsupportedOperationException(str);
    }

    @SinceKotlin(version = "1.1")
    public static boolean areEqual(Double d, double d2) {
        return d != null && d.doubleValue() == d2;
    }

    @SinceKotlin(version = "1.1")
    public static boolean areEqual(double d, Double d2) {
        return d2 != null && d == d2.doubleValue();
    }

    public static void checkFieldIsNotNull(Object obj, String str) {
        if (obj != null) {
            return;
        }
        IllegalStateException illegalStateException = new IllegalStateException(str);
        m1986x3271d0aa(illegalStateException, Intrinsics.class.getName());
        throw illegalStateException;
    }

    public static void checkReturnedValueIsNotNull(Object obj, String str) {
        if (obj != null) {
            return;
        }
        IllegalStateException illegalStateException = new IllegalStateException(str);
        m1986x3271d0aa(illegalStateException, Intrinsics.class.getName());
        throw illegalStateException;
    }

    public static void throwAssert(String str) {
        AssertionError assertionError = new AssertionError(str);
        m1986x3271d0aa(assertionError, Intrinsics.class.getName());
        throw assertionError;
    }

    public static void throwIllegalArgument(String str) {
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException(str);
        m1986x3271d0aa(illegalArgumentException, Intrinsics.class.getName());
        throw illegalArgumentException;
    }

    public static void throwIllegalState(String str) {
        IllegalStateException illegalStateException = new IllegalStateException(str);
        m1986x3271d0aa(illegalStateException, Intrinsics.class.getName());
        throw illegalStateException;
    }

    @SinceKotlin(version = "1.4")
    public static void throwJavaNpe(String str) {
        NullPointerException nullPointerException = new NullPointerException(str);
        m1986x3271d0aa(nullPointerException, Intrinsics.class.getName());
        throw nullPointerException;
    }

    public static void throwNpe(String str) {
        KotlinNullPointerException kotlinNullPointerException = new KotlinNullPointerException(str);
        m1986x3271d0aa(kotlinNullPointerException, Intrinsics.class.getName());
        throw kotlinNullPointerException;
    }

    @SinceKotlin(version = "1.1")
    public static boolean areEqual(Float f, Float f2) {
        if (f == null) {
            if (f2 != null) {
                return false;
            }
        } else if (f2 == null || f.floatValue() != f2.floatValue()) {
            return false;
        }
        return true;
    }

    @SinceKotlin(version = "1.1")
    public static boolean areEqual(Float f, float f2) {
        return f != null && f.floatValue() == f2;
    }

    @SinceKotlin(version = "1.1")
    public static boolean areEqual(float f, Float f2) {
        return f2 != null && f == f2.floatValue();
    }

    public static void checkHasClass(String str, String str2) {
        String replace = str.replace('/', '.');
        try {
            Class.forName(replace);
        } catch (ClassNotFoundException e) {
            ClassNotFoundException classNotFoundException = new ClassNotFoundException("Class " + replace + " is not found: this code requires the Kotlin runtime of version at least " + str2, e);
            m1986x3271d0aa(classNotFoundException, Intrinsics.class.getName());
            throw classNotFoundException;
        }
    }
}
