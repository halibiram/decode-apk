package org.junit.runner;

import defpackage.AbstractC0362x4440ab85;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.junit.internal.Classes;
import org.junit.runner.FilterFactory;
import org.junit.runners.model.InitializationError;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class JUnitCommandLineParseResult {
    private final List<String> filterSpecs = new ArrayList();
    private final List<Class<?>> classes = new ArrayList();
    private final List<Throwable> parserErrors = new ArrayList();

    /* loaded from: classes3.dex */
    public static class CommandLineParserError extends Exception {
        private static final long serialVersionUID = 1;

        public CommandLineParserError(String str) {
            super(str);
        }
    }

    private Request applyFilterSpecs(Request request) {
        try {
            Iterator<String> it = this.filterSpecs.iterator();
            while (it.hasNext()) {
                request = request.filterWith(FilterFactories.createFilterFromFilterSpec(request, it.next()));
            }
            return request;
        } catch (FilterFactory.FilterNotCreatedException e) {
            return errorReport(e);
        }
    }

    private String[] copyArray(String[] strArr, int i, int i2) {
        String[] strArr2 = new String[i2 - i];
        for (int i3 = i; i3 != i2; i3++) {
            strArr2[i3 - i] = strArr[i3];
        }
        return strArr2;
    }

    private Request errorReport(Throwable th) {
        return Request.errorReport(JUnitCommandLineParseResult.class, th);
    }

    public static JUnitCommandLineParseResult parse(String[] strArr) {
        JUnitCommandLineParseResult jUnitCommandLineParseResult = new JUnitCommandLineParseResult();
        jUnitCommandLineParseResult.parseArgs(strArr);
        return jUnitCommandLineParseResult;
    }

    private void parseArgs(String[] strArr) {
        parseParameters(parseOptions(strArr));
    }

    public Request createRequest(Computer computer) {
        if (this.parserErrors.isEmpty()) {
            List<Class<?>> list = this.classes;
            return applyFilterSpecs(Request.classes(computer, (Class[]) list.toArray(new Class[list.size()])));
        }
        return errorReport(new InitializationError(this.parserErrors));
    }

    public List<Class<?>> getClasses() {
        return DesugarCollections.unmodifiableList(this.classes);
    }

    public List<String> getFilterSpecs() {
        return DesugarCollections.unmodifiableList(this.filterSpecs);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x007c, code lost:
    
        return new java.lang.String[0];
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String[] parseOptions(String... strArr) {
        String substring;
        int i = 0;
        while (true) {
            if (i == strArr.length) {
                break;
            }
            String str = strArr[i];
            if (str.equals("--")) {
                return copyArray(strArr, i + 1, strArr.length);
            }
            if (str.startsWith("--")) {
                if (!str.startsWith("--filter=") && !str.equals("--filter")) {
                    this.parserErrors.add(new CommandLineParserError(AbstractC0362x4440ab85.m2932x95f25580("JUnit knows nothing about the ", str, " option")));
                } else {
                    if (str.equals("--filter")) {
                        i++;
                        if (i < strArr.length) {
                            substring = strArr[i];
                        } else {
                            this.parserErrors.add(new CommandLineParserError(str.concat(" value not specified")));
                            break;
                        }
                    } else {
                        substring = str.substring(str.indexOf(61) + 1);
                    }
                    this.filterSpecs.add(substring);
                }
                i++;
            } else {
                return copyArray(strArr, i, strArr.length);
            }
        }
    }

    public void parseParameters(String[] strArr) {
        for (String str : strArr) {
            try {
                this.classes.add(Classes.getClass(str));
            } catch (ClassNotFoundException e) {
                this.parserErrors.add(new IllegalArgumentException(AbstractC0362x4440ab85.m2932x95f25580("Could not find class [", str, "]"), e));
            }
        }
    }
}
