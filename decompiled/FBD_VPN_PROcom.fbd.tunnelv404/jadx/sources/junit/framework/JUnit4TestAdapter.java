package junit.framework;

import java.util.Iterator;
import java.util.List;
import org.junit.Ignore;
import org.junit.runner.Describable;
import org.junit.runner.Description;
import org.junit.runner.Request;
import org.junit.runner.Runner;
import org.junit.runner.manipulation.Filter;
import org.junit.runner.manipulation.Filterable;
import org.junit.runner.manipulation.Orderable;
import org.junit.runner.manipulation.Orderer;
import org.junit.runner.manipulation.Sorter;

/* loaded from: classes3.dex */
public class JUnit4TestAdapter implements Test, Filterable, Orderable, Describable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Class f1150xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Runner f1151x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final JUnit4TestAdapterCache f1152x1378447b;

    public JUnit4TestAdapter(Class<?> cls) {
        this(cls, JUnit4TestAdapterCache.getDefault());
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static Description m1759xfbe0c504(Description description) {
        if (description.getAnnotation(Ignore.class) != null) {
            return Description.EMPTY;
        }
        Description childlessCopy = description.childlessCopy();
        Iterator<Description> it = description.getChildren().iterator();
        while (it.hasNext()) {
            Description m1759xfbe0c504 = m1759xfbe0c504(it.next());
            if (!m1759xfbe0c504.isEmpty()) {
                childlessCopy.addChild(m1759xfbe0c504);
            }
        }
        return childlessCopy;
    }

    @Override // junit.framework.Test
    public int countTestCases() {
        return this.f1151x3271d0aa.testCount();
    }

    @Override // org.junit.runner.manipulation.Filterable
    public void filter(Filter filter) {
        filter.apply(this.f1151x3271d0aa);
    }

    @Override // org.junit.runner.Describable
    public Description getDescription() {
        return m1759xfbe0c504(this.f1151x3271d0aa.getDescription());
    }

    public Class<?> getTestClass() {
        return this.f1150xfbe0c504;
    }

    public List<Test> getTests() {
        return this.f1152x1378447b.asTestList(getDescription());
    }

    @Override // org.junit.runner.manipulation.Orderable
    public void order(Orderer orderer) {
        orderer.apply(this.f1151x3271d0aa);
    }

    @Override // junit.framework.Test
    public void run(TestResult testResult) {
        this.f1151x3271d0aa.run(this.f1152x1378447b.getNotifier(testResult, this));
    }

    @Override // org.junit.runner.manipulation.Sortable
    public void sort(Sorter sorter) {
        sorter.apply(this.f1151x3271d0aa);
    }

    public String toString() {
        return this.f1150xfbe0c504.getName();
    }

    public JUnit4TestAdapter(Class<?> cls, JUnit4TestAdapterCache jUnit4TestAdapterCache) {
        this.f1152x1378447b = jUnit4TestAdapterCache;
        this.f1150xfbe0c504 = cls;
        this.f1151x3271d0aa = Request.classWithoutSuiteMethod(cls).getRunner();
    }
}
