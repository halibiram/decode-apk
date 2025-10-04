package junit.framework;

import defpackage.AbstractC0749x8313616e;
import defpackage.C1230xcf80b4d1;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Vector;
import org.junit.internal.MethodSorter;
import org.junit.internal.Throwables;

/* loaded from: classes3.dex */
public class TestSuite implements Test {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public String f1157xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Vector f1158x3271d0aa;

    public TestSuite() {
        this.f1158x3271d0aa = new Vector(10);
    }

    public static Test createTest(Class<?> cls, String str) {
        Object newInstance;
        try {
            Constructor<?> testConstructor = getTestConstructor(cls);
            try {
                if (testConstructor.getParameterTypes().length == 0) {
                    newInstance = testConstructor.newInstance(null);
                    if (newInstance instanceof TestCase) {
                        ((TestCase) newInstance).setName(str);
                    }
                } else {
                    newInstance = testConstructor.newInstance(str);
                }
                return (Test) newInstance;
            } catch (IllegalAccessException e) {
                StringBuilder m3342x4440ab85 = AbstractC0749x8313616e.m3342x4440ab85("Cannot access test case: ", str, " (");
                m3342x4440ab85.append(Throwables.getStacktrace(e));
                m3342x4440ab85.append(")");
                return warning(m3342x4440ab85.toString());
            } catch (InstantiationException e2) {
                StringBuilder m3342x4440ab852 = AbstractC0749x8313616e.m3342x4440ab85("Cannot instantiate test case: ", str, " (");
                m3342x4440ab852.append(Throwables.getStacktrace(e2));
                m3342x4440ab852.append(")");
                return warning(m3342x4440ab852.toString());
            } catch (InvocationTargetException e3) {
                StringBuilder m3342x4440ab853 = AbstractC0749x8313616e.m3342x4440ab85("Exception in constructor: ", str, " (");
                m3342x4440ab853.append(Throwables.getStacktrace(e3.getTargetException()));
                m3342x4440ab853.append(")");
                return warning(m3342x4440ab853.toString());
            }
        } catch (NoSuchMethodException unused) {
            return warning("Class " + cls.getName() + " has no public constructor TestCase(String name) or TestCase()");
        }
    }

    public static Constructor<?> getTestConstructor(Class<?> cls) {
        try {
            return cls.getConstructor(String.class);
        } catch (NoSuchMethodException unused) {
            return cls.getConstructor(null);
        }
    }

    public static Test warning(String str) {
        return new C1230xcf80b4d1(str);
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static boolean m1762xfbe0c504(Method method) {
        if (method.getParameterTypes().length == 0 && method.getName().startsWith("test") && method.getReturnType().equals(Void.TYPE)) {
            return true;
        }
        return false;
    }

    public void addTest(Test test) {
        this.f1158x3271d0aa.add(test);
    }

    public void addTestSuite(Class<? extends TestCase> cls) {
        addTest(new TestSuite(cls));
    }

    @Override // junit.framework.Test
    public int countTestCases() {
        Iterator it = this.f1158x3271d0aa.iterator();
        int i = 0;
        while (it.hasNext()) {
            i += ((Test) it.next()).countTestCases();
        }
        return i;
    }

    public String getName() {
        return this.f1157xfbe0c504;
    }

    @Override // junit.framework.Test
    public void run(TestResult testResult) {
        Iterator it = this.f1158x3271d0aa.iterator();
        while (it.hasNext()) {
            Test test = (Test) it.next();
            if (!testResult.shouldStop()) {
                runTest(test, testResult);
            } else {
                return;
            }
        }
    }

    public void runTest(Test test, TestResult testResult) {
        test.run(testResult);
    }

    public void setName(String str) {
        this.f1157xfbe0c504 = str;
    }

    public Test testAt(int i) {
        return (Test) this.f1158x3271d0aa.get(i);
    }

    public int testCount() {
        return this.f1158x3271d0aa.size();
    }

    public Enumeration<Test> tests() {
        return this.f1158x3271d0aa.elements();
    }

    public String toString() {
        if (getName() != null) {
            return getName();
        }
        return super.toString();
    }

    public TestSuite(Class<?> cls) {
        this.f1158x3271d0aa = new Vector(10);
        this.f1157xfbe0c504 = cls.getName();
        try {
            getTestConstructor(cls);
            if (!Modifier.isPublic(cls.getModifiers())) {
                addTest(warning("Class " + cls.getName() + " is not public"));
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (Class<?> cls2 = cls; Test.class.isAssignableFrom(cls2); cls2 = cls2.getSuperclass()) {
                for (Method method : MethodSorter.getDeclaredMethods(cls2)) {
                    String name = method.getName();
                    if (!arrayList.contains(name)) {
                        if (m1762xfbe0c504(method) && Modifier.isPublic(method.getModifiers())) {
                            arrayList.add(name);
                            addTest(createTest(cls, name));
                        } else if (m1762xfbe0c504(method)) {
                            addTest(warning("Test method isn't public: " + method.getName() + "(" + cls.getCanonicalName() + ")"));
                        }
                    }
                }
            }
            if (this.f1158x3271d0aa.size() == 0) {
                addTest(warning("No tests found in ".concat(cls.getName())));
            }
        } catch (NoSuchMethodException unused) {
            addTest(warning("Class " + cls.getName() + " has no public constructor TestCase(String name) or TestCase()"));
        }
    }

    public TestSuite(Class<? extends TestCase> cls, String str) {
        this(cls);
        setName(str);
    }

    public TestSuite(String str) {
        this.f1158x3271d0aa = new Vector(10);
        setName(str);
    }

    public TestSuite(Class<?>... clsArr) {
        this.f1158x3271d0aa = new Vector(10);
        for (Class<?> cls : clsArr) {
            addTest(TestCase.class.isAssignableFrom(cls) ? new TestSuite(cls.asSubclass(TestCase.class)) : warning(cls.getCanonicalName() + " does not extend TestCase"));
        }
    }

    public TestSuite(Class<? extends TestCase>[] clsArr, String str) {
        this(clsArr);
        setName(str);
    }
}
