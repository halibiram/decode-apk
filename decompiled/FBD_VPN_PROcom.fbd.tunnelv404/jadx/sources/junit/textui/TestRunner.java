package junit.textui;

import java.io.PrintStream;
import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestResult;
import junit.framework.TestSuite;
import junit.runner.BaseTestRunner;
import junit.runner.Version;

/* loaded from: classes3.dex */
public class TestRunner extends BaseTestRunner {
    public static final int EXCEPTION_EXIT = 2;
    public static final int FAILURE_EXIT = 1;
    public static final int SUCCESS_EXIT = 0;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public ResultPrinter f1165x9738a56c;

    public TestRunner() {
        this(System.out);
    }

    public static void main(String[] strArr) {
        try {
            if (!new TestRunner().start(strArr).wasSuccessful()) {
                System.exit(1);
            }
            System.exit(0);
        } catch (Exception e) {
            System.err.println(e.getMessage());
            System.exit(2);
        }
    }

    public static void run(Class<? extends TestCase> cls) {
        run(new TestSuite(cls));
    }

    public static void runAndWait(Test test) {
        new TestRunner().doRun(test, true);
    }

    public TestResult createTestResult() {
        return new TestResult();
    }

    public TestResult doRun(Test test) {
        return doRun(test, false);
    }

    public void pause(boolean z) {
        if (!z) {
            return;
        }
        ResultPrinter resultPrinter = this.f1165x9738a56c;
        resultPrinter.getWriter().println();
        resultPrinter.getWriter().println("<RETURN> to continue");
        try {
            System.in.read();
        } catch (Exception unused) {
        }
    }

    @Override // junit.runner.BaseTestRunner
    public void runFailed(String str) {
        System.err.println(str);
        System.exit(1);
    }

    public TestResult runSingleMethod(String str, String str2, boolean z) {
        return doRun(TestSuite.createTest(loadSuiteClass(str).asSubclass(TestCase.class), str2), z);
    }

    public void setPrinter(ResultPrinter resultPrinter) {
        this.f1165x9738a56c = resultPrinter;
    }

    public TestResult start(String[] strArr) {
        String str = "";
        String str2 = str;
        int i = 0;
        boolean z = false;
        while (i < strArr.length) {
            if (strArr[i].equals("-wait")) {
                z = true;
            } else if (strArr[i].equals("-c")) {
                i++;
                str = extractClassName(strArr[i]);
            } else if (strArr[i].equals("-m")) {
                i++;
                String str3 = strArr[i];
                int lastIndexOf = str3.lastIndexOf(46);
                String substring = str3.substring(0, lastIndexOf);
                str2 = str3.substring(lastIndexOf + 1);
                str = substring;
            } else if (strArr[i].equals("-v")) {
                System.err.println("JUnit " + Version.id() + " by Kent Beck and Erich Gamma");
            } else {
                str = strArr[i];
            }
            i++;
        }
        if (!str.equals("")) {
            try {
                if (!str2.equals("")) {
                    return runSingleMethod(str, str2, z);
                }
                return doRun(getTest(str), z);
            } catch (Exception e) {
                throw new Exception("Could not create and run test suite: " + e);
            }
        }
        throw new Exception("Usage: TestRunner [-wait] testCaseName, where name is the name of the TestCase class");
    }

    @Override // junit.runner.BaseTestRunner
    public void testEnded(String str) {
    }

    @Override // junit.runner.BaseTestRunner
    public void testFailed(int i, Test test, Throwable th) {
    }

    @Override // junit.runner.BaseTestRunner
    public void testStarted(String str) {
    }

    public TestRunner(PrintStream printStream) {
        this(new ResultPrinter(printStream));
    }

    public static TestResult run(Test test) {
        return new TestRunner().doRun(test);
    }

    public TestResult doRun(Test test, boolean z) {
        TestResult createTestResult = createTestResult();
        createTestResult.addListener(this.f1165x9738a56c);
        long currentTimeMillis = System.currentTimeMillis();
        test.run(createTestResult);
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        ResultPrinter resultPrinter = this.f1165x9738a56c;
        synchronized (resultPrinter) {
            resultPrinter.printHeader(currentTimeMillis2);
            resultPrinter.printErrors(createTestResult);
            resultPrinter.printFailures(createTestResult);
            resultPrinter.printFooter(createTestResult);
        }
        pause(z);
        return createTestResult;
    }

    public TestRunner(ResultPrinter resultPrinter) {
        this.f1165x9738a56c = resultPrinter;
    }
}
