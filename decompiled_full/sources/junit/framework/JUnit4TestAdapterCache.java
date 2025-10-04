package junit.framework;

import defpackage.C0897x4f8c8d0a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.junit.runner.Description;
import org.junit.runner.notification.RunNotifier;

/* loaded from: classes3.dex */
public class JUnit4TestAdapterCache extends HashMap<Description, Test> {
    private static final long serialVersionUID = 1;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final JUnit4TestAdapterCache f1153xfbe0c504 = new JUnit4TestAdapterCache();

    public static JUnit4TestAdapterCache getDefault() {
        return f1153xfbe0c504;
    }

    public Test asTest(Description description) {
        if (description.isSuite()) {
            return m1760x1378447b(description);
        }
        if (!containsKey(description)) {
            put(description, m1760x1378447b(description));
        }
        return get(description);
    }

    public List<Test> asTestList(Description description) {
        if (description.isTest()) {
            return Arrays.asList(asTest(description));
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Description> it = description.getChildren().iterator();
        while (it.hasNext()) {
            arrayList.add(asTest(it.next()));
        }
        return arrayList;
    }

    public RunNotifier getNotifier(TestResult testResult, JUnit4TestAdapter jUnit4TestAdapter) {
        RunNotifier runNotifier = new RunNotifier();
        runNotifier.addListener(new C0897x4f8c8d0a(this, testResult));
        return runNotifier;
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final Test m1760x1378447b(Description description) {
        if (description.isTest()) {
            return new JUnit4TestCaseFacade(description);
        }
        TestSuite testSuite = new TestSuite(description.getDisplayName());
        Iterator<Description> it = description.getChildren().iterator();
        while (it.hasNext()) {
            testSuite.addTest(asTest(it.next()));
        }
        return testSuite;
    }
}
