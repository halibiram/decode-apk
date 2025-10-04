package androidx.test.ext.junit.rules;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.test.core.app.ActivityScenario;
import androidx.test.internal.util.Checks;
import org.junit.rules.ExternalResource;

/* loaded from: classes.dex */
public final class ActivityScenarioRule<A extends Activity> extends ExternalResource {

    @Nullable
    private ActivityScenario<A> scenario;
    private final Supplier<ActivityScenario<A>> scenarioSupplier;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public interface Supplier<T> {
        T get();
    }

    public ActivityScenarioRule(final Class<A> cls) {
        final int i = 0;
        this.scenarioSupplier = new Supplier() { // from class: androidx.test.ext.junit.rules.뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫
            @Override // androidx.test.ext.junit.rules.ActivityScenarioRule.Supplier
            public final Object get() {
                ActivityScenario lambda$new$0;
                ActivityScenario lambda$new$2;
                switch (i) {
                    case 0:
                        lambda$new$0 = ActivityScenarioRule.lambda$new$0((Class) cls);
                        return lambda$new$0;
                    default:
                        lambda$new$2 = ActivityScenarioRule.lambda$new$2((Intent) cls);
                        return lambda$new$2;
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ActivityScenario lambda$new$0(Class cls) {
        return ActivityScenario.launch((Class) Checks.checkNotNull(cls));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ActivityScenario lambda$new$1(Class cls, Bundle bundle) {
        return ActivityScenario.launch((Class) Checks.checkNotNull(cls), bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ActivityScenario lambda$new$2(Intent intent) {
        return ActivityScenario.launch((Intent) Checks.checkNotNull(intent));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ActivityScenario lambda$new$3(Intent intent, Bundle bundle) {
        return ActivityScenario.launch((Intent) Checks.checkNotNull(intent), bundle);
    }

    @Override // org.junit.rules.ExternalResource
    public void after() {
        this.scenario.close();
    }

    @Override // org.junit.rules.ExternalResource
    public void before() {
        this.scenario = this.scenarioSupplier.get();
    }

    public ActivityScenario<A> getScenario() {
        return (ActivityScenario) Checks.checkNotNull(this.scenario);
    }

    public ActivityScenarioRule(final Class<A> cls, @Nullable final Bundle bundle) {
        final int i = 0;
        this.scenarioSupplier = new Supplier() { // from class: androidx.test.ext.junit.rules.뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸
            @Override // androidx.test.ext.junit.rules.ActivityScenarioRule.Supplier
            public final Object get() {
                ActivityScenario lambda$new$1;
                ActivityScenario lambda$new$3;
                switch (i) {
                    case 0:
                        lambda$new$1 = ActivityScenarioRule.lambda$new$1((Class) cls, bundle);
                        return lambda$new$1;
                    default:
                        lambda$new$3 = ActivityScenarioRule.lambda$new$3((Intent) cls, bundle);
                        return lambda$new$3;
                }
            }
        };
    }

    public ActivityScenarioRule(final Intent intent) {
        final int i = 1;
        this.scenarioSupplier = new Supplier() { // from class: androidx.test.ext.junit.rules.뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫
            @Override // androidx.test.ext.junit.rules.ActivityScenarioRule.Supplier
            public final Object get() {
                ActivityScenario lambda$new$0;
                ActivityScenario lambda$new$2;
                switch (i) {
                    case 0:
                        lambda$new$0 = ActivityScenarioRule.lambda$new$0((Class) intent);
                        return lambda$new$0;
                    default:
                        lambda$new$2 = ActivityScenarioRule.lambda$new$2((Intent) intent);
                        return lambda$new$2;
                }
            }
        };
    }

    public ActivityScenarioRule(final Intent intent, @Nullable final Bundle bundle) {
        final int i = 1;
        this.scenarioSupplier = new Supplier() { // from class: androidx.test.ext.junit.rules.뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸
            @Override // androidx.test.ext.junit.rules.ActivityScenarioRule.Supplier
            public final Object get() {
                ActivityScenario lambda$new$1;
                ActivityScenario lambda$new$3;
                switch (i) {
                    case 0:
                        lambda$new$1 = ActivityScenarioRule.lambda$new$1((Class) intent, bundle);
                        return lambda$new$1;
                    default:
                        lambda$new$3 = ActivityScenarioRule.lambda$new$3((Intent) intent, bundle);
                        return lambda$new$3;
                }
            }
        };
    }
}
