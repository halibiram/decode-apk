package org.junit.runners;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import org.junit.rules.MethodRule;
import org.junit.rules.TestRule;
import org.junit.runner.Description;
import org.junit.runners.model.FrameworkMethod;
import org.junit.runners.model.Statement;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class RuleContainer {
    static final Comparator<RuleEntry> ENTRY_COMPARATOR = new Comparator<RuleEntry>() { // from class: org.junit.runners.RuleContainer.1
        private int compareInt(int i, int i2) {
            if (i < i2) {
                return 1;
            }
            return i == i2 ? 0 : -1;
        }

        @Override // java.util.Comparator
        public int compare(RuleEntry ruleEntry, RuleEntry ruleEntry2) {
            int compareInt = compareInt(ruleEntry.order, ruleEntry2.order);
            return compareInt != 0 ? compareInt : ruleEntry.type - ruleEntry2.type;
        }
    };
    private final IdentityHashMap<Object, Integer> orderValues = new IdentityHashMap<>();
    private final List<TestRule> testRules = new ArrayList();
    private final List<MethodRule> methodRules = new ArrayList();

    /* loaded from: classes3.dex */
    public static class RuleEntry {
        static final int TYPE_METHOD_RULE = 0;
        static final int TYPE_TEST_RULE = 1;
        final int order;
        final Object rule;
        final int type;

        public RuleEntry(Object obj, int i, Integer num) {
            int i2;
            this.rule = obj;
            this.type = i;
            if (num != null) {
                i2 = num.intValue();
            } else {
                i2 = -1;
            }
            this.order = i2;
        }
    }

    private List<RuleEntry> getSortedEntries() {
        ArrayList arrayList = new ArrayList(this.testRules.size() + this.methodRules.size());
        for (MethodRule methodRule : this.methodRules) {
            arrayList.add(new RuleEntry(methodRule, 0, this.orderValues.get(methodRule)));
        }
        for (TestRule testRule : this.testRules) {
            arrayList.add(new RuleEntry(testRule, 1, this.orderValues.get(testRule)));
        }
        Collections.sort(arrayList, ENTRY_COMPARATOR);
        return arrayList;
    }

    public void add(MethodRule methodRule) {
        this.methodRules.add(methodRule);
    }

    public Statement apply(FrameworkMethod frameworkMethod, Description description, Object obj, Statement statement) {
        if (this.methodRules.isEmpty() && this.testRules.isEmpty()) {
            return statement;
        }
        for (RuleEntry ruleEntry : getSortedEntries()) {
            if (ruleEntry.type == 1) {
                statement = ((TestRule) ruleEntry.rule).apply(statement, description);
            } else {
                statement = ((MethodRule) ruleEntry.rule).apply(statement, frameworkMethod, obj);
            }
        }
        return statement;
    }

    public List<Object> getSortedRules() {
        ArrayList arrayList = new ArrayList();
        Iterator<RuleEntry> it = getSortedEntries().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().rule);
        }
        return arrayList;
    }

    public void setOrder(Object obj, int i) {
        this.orderValues.put(obj, Integer.valueOf(i));
    }

    public void add(TestRule testRule) {
        this.testRules.add(testRule);
    }
}
