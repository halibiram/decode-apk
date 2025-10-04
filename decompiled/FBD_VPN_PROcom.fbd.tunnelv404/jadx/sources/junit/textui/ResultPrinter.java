package junit.textui;

import androidx.exifinterface.media.ExifInterface;
import java.io.PrintStream;
import java.text.NumberFormat;
import java.util.Enumeration;
import junit.framework.AssertionFailedError;
import junit.framework.Test;
import junit.framework.TestFailure;
import junit.framework.TestListener;
import junit.framework.TestResult;
import junit.runner.BaseTestRunner;

/* loaded from: classes3.dex */
public class ResultPrinter implements TestListener {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final PrintStream f1163xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public int f1164x3271d0aa = 0;

    public ResultPrinter(PrintStream printStream) {
        this.f1163xfbe0c504 = printStream;
    }

    @Override // junit.framework.TestListener
    public void addError(Test test, Throwable th) {
        getWriter().print(ExifInterface.LONGITUDE_EAST);
    }

    @Override // junit.framework.TestListener
    public void addFailure(Test test, AssertionFailedError assertionFailedError) {
        getWriter().print("F");
    }

    public String elapsedTimeAsString(long j) {
        return NumberFormat.getInstance().format(j / 1000.0d);
    }

    @Override // junit.framework.TestListener
    public void endTest(Test test) {
    }

    public PrintStream getWriter() {
        return this.f1163xfbe0c504;
    }

    public void printDefect(TestFailure testFailure, int i) {
        printDefectHeader(testFailure, i);
        printDefectTrace(testFailure);
    }

    public void printDefectHeader(TestFailure testFailure, int i) {
        getWriter().print(i + ") " + testFailure.failedTest());
    }

    public void printDefectTrace(TestFailure testFailure) {
        getWriter().print(BaseTestRunner.getFilteredTrace(testFailure.trace()));
    }

    public void printDefects(Enumeration<TestFailure> enumeration, int i, String str) {
        if (i == 0) {
            return;
        }
        if (i == 1) {
            getWriter().println("There was " + i + " " + str + ":");
        } else {
            getWriter().println("There were " + i + " " + str + "s:");
        }
        int i2 = 1;
        while (enumeration.hasMoreElements()) {
            printDefect(enumeration.nextElement(), i2);
            i2++;
        }
    }

    public void printErrors(TestResult testResult) {
        printDefects(testResult.errors(), testResult.errorCount(), "error");
    }

    public void printFailures(TestResult testResult) {
        printDefects(testResult.failures(), testResult.failureCount(), "failure");
    }

    public void printFooter(TestResult testResult) {
        String str;
        if (testResult.wasSuccessful()) {
            getWriter().println();
            getWriter().print("OK");
            PrintStream writer = getWriter();
            StringBuilder sb = new StringBuilder(" (");
            sb.append(testResult.runCount());
            sb.append(" test");
            if (testResult.runCount() == 1) {
                str = "";
            } else {
                str = "s";
            }
            sb.append(str);
            sb.append(")");
            writer.println(sb.toString());
        } else {
            getWriter().println();
            getWriter().println("FAILURES!!!");
            getWriter().println("Tests run: " + testResult.runCount() + ",  Failures: " + testResult.failureCount() + ",  Errors: " + testResult.errorCount());
        }
        getWriter().println();
    }

    public void printHeader(long j) {
        getWriter().println();
        getWriter().println("Time: " + elapsedTimeAsString(j));
    }

    @Override // junit.framework.TestListener
    public void startTest(Test test) {
        getWriter().print(".");
        int i = this.f1164x3271d0aa;
        this.f1164x3271d0aa = i + 1;
        if (i >= 40) {
            getWriter().println();
            this.f1164x3271d0aa = 0;
        }
    }
}
