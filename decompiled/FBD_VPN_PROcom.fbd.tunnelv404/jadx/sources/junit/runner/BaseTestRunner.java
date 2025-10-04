package junit.runner;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringReader;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.text.NumberFormat;
import java.util.Properties;
import junit.framework.AssertionFailedError;
import junit.framework.Test;
import junit.framework.TestListener;
import junit.framework.TestSuite;
import org.junit.internal.Throwables;

/* loaded from: classes3.dex */
public abstract class BaseTestRunner implements TestListener {
    public static final String SUITE_METHODNAME = "suite";

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static Properties f1159x3271d0aa = null;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final int f1160x1378447b = getPreference("maxmessage", 500);

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public static boolean f1161x75d576dc = true;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public boolean f1162xfbe0c504 = true;

    public static String getFilteredTrace(Throwable th) {
        return getFilteredTrace(Throwables.getStacktrace(th));
    }

    public static String getPreference(String str) {
        return getPreferences().getProperty(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0060, code lost:
    
        if (r0 == null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x005c, code lost:
    
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005a, code lost:
    
        if (r0 == null) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Properties getPreferences() {
        FileInputStream fileInputStream;
        Throwable th;
        if (f1159x3271d0aa == null) {
            Properties properties = new Properties();
            f1159x3271d0aa = properties;
            properties.put("loading", "true");
            f1159x3271d0aa.put("filterstack", "true");
            FileInputStream fileInputStream2 = null;
            try {
                try {
                    fileInputStream = new FileInputStream(new File(System.getProperty("user.home"), "junit.properties"));
                    try {
                        setPreferences(new Properties(getPreferences()));
                        getPreferences().load(fileInputStream);
                        fileInputStream.close();
                    } catch (IOException unused) {
                        fileInputStream2 = fileInputStream;
                    } catch (SecurityException unused2) {
                        fileInputStream2 = fileInputStream;
                    } catch (Throwable th2) {
                        th = th2;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException unused3) {
                            }
                        }
                        throw th;
                    }
                } catch (IOException unused4) {
                }
            } catch (IOException unused5) {
            } catch (SecurityException unused6) {
            } catch (Throwable th3) {
                fileInputStream = null;
                th = th3;
            }
        }
        return f1159x3271d0aa;
    }

    public static void savePreferences() {
        FileOutputStream fileOutputStream = new FileOutputStream(new File(System.getProperty("user.home"), "junit.properties"));
        try {
            getPreferences().store(fileOutputStream, "");
        } finally {
            fileOutputStream.close();
        }
    }

    public static void setPreference(String str, String str2) {
        getPreferences().put(str, str2);
    }

    public static void setPreferences(Properties properties) {
        f1159x3271d0aa = properties;
    }

    public static boolean showStackRaw() {
        if (getPreference("filterstack").equals("true") && f1161x75d576dc) {
            return false;
        }
        return true;
    }

    public static String truncate(String str) {
        int i = f1160x1378447b;
        if (i != -1 && str.length() > i) {
            return str.substring(0, i) + "...";
        }
        return str;
    }

    @Override // junit.framework.TestListener
    public synchronized void addError(Test test, Throwable th) {
        testFailed(1, test, th);
    }

    @Override // junit.framework.TestListener
    public synchronized void addFailure(Test test, AssertionFailedError assertionFailedError) {
        testFailed(2, test, assertionFailedError);
    }

    public void clearStatus() {
    }

    public String elapsedTimeAsString(long j) {
        return NumberFormat.getInstance().format(j / 1000.0d);
    }

    @Override // junit.framework.TestListener
    public synchronized void endTest(Test test) {
        testEnded(test.toString());
    }

    public String extractClassName(String str) {
        if (str.startsWith("Default package for")) {
            return str.substring(str.lastIndexOf(".") + 1);
        }
        return str;
    }

    public Test getTest(String str) {
        if (str.length() <= 0) {
            clearStatus();
            return null;
        }
        try {
            Class<?> loadSuiteClass = loadSuiteClass(str);
            try {
                Method method = loadSuiteClass.getMethod(SUITE_METHODNAME, null);
                if (!Modifier.isStatic(method.getModifiers())) {
                    runFailed("Suite() method must be static");
                    return null;
                }
                try {
                    Test test = (Test) method.invoke(null, null);
                    if (test == null) {
                        return test;
                    }
                    clearStatus();
                    return test;
                } catch (IllegalAccessException e) {
                    runFailed("Failed to invoke suite():" + e.toString());
                    return null;
                } catch (InvocationTargetException e2) {
                    runFailed("Failed to invoke suite():" + e2.getTargetException().toString());
                    return null;
                }
            } catch (Exception unused) {
                clearStatus();
                return new TestSuite(loadSuiteClass);
            }
        } catch (ClassNotFoundException e3) {
            String message = e3.getMessage();
            if (message != null) {
                str = message;
            }
            runFailed("Class not found \"" + str + "\"");
            return null;
        } catch (Exception e4) {
            runFailed("Error: " + e4.toString());
            return null;
        }
    }

    public Class<?> loadSuiteClass(String str) {
        return Class.forName(str);
    }

    public String processArguments(String[] strArr) {
        String str = null;
        int i = 0;
        while (i < strArr.length) {
            if (strArr[i].equals("-noloading")) {
                setLoading(false);
            } else if (strArr[i].equals("-nofilterstack")) {
                f1161x75d576dc = false;
            } else if (strArr[i].equals("-c")) {
                i++;
                if (strArr.length > i) {
                    str = extractClassName(strArr[i]);
                } else {
                    System.out.println("Missing Test class name");
                }
            } else {
                str = strArr[i];
            }
            i++;
        }
        return str;
    }

    public abstract void runFailed(String str);

    public void setLoading(boolean z) {
        this.f1162xfbe0c504 = z;
    }

    @Override // junit.framework.TestListener
    public synchronized void startTest(Test test) {
        testStarted(test.toString());
    }

    public abstract void testEnded(String str);

    public abstract void testFailed(int i, Test test, Throwable th);

    public abstract void testStarted(String str);

    public boolean useReloadingTestSuiteLoader() {
        if (getPreference("loading").equals("true") && this.f1162xfbe0c504) {
            return true;
        }
        return false;
    }

    public static String getFilteredTrace(String str) {
        if (showStackRaw()) {
            return str;
        }
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        BufferedReader bufferedReader = new BufferedReader(new StringReader(str));
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    String[] strArr = {"junit.framework.TestCase", "junit.framework.TestResult", "junit.framework.TestSuite", "junit.framework.Assert.", "junit.swingui.TestRunner", "junit.awtui.TestRunner", "junit.textui.TestRunner", "java.lang.reflect.Method.invoke("};
                    boolean z = false;
                    int i = 0;
                    while (true) {
                        if (i >= 8) {
                            break;
                        }
                        if (readLine.indexOf(strArr[i]) > 0) {
                            z = true;
                            break;
                        }
                        i++;
                    }
                    if (!z) {
                        printWriter.println(readLine);
                    }
                } else {
                    return stringWriter.toString();
                }
            } catch (Exception unused) {
                return str;
            }
        }
    }

    public static int getPreference(String str, int i) {
        String preference = getPreference(str);
        if (preference == null) {
            return i;
        }
        try {
            return Integer.parseInt(preference);
        } catch (NumberFormatException unused) {
            return i;
        }
    }
}
