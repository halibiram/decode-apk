package org.junit.runner.manipulation;

import defpackage.AbstractC0362x4440ab85;
import java.util.Iterator;
import org.junit.runner.Description;

/* loaded from: classes3.dex */
public abstract class Filter {
    public static final Filter ALL = new Filter() { // from class: org.junit.runner.manipulation.Filter.1
        @Override // org.junit.runner.manipulation.Filter
        public void apply(Object obj) {
        }

        @Override // org.junit.runner.manipulation.Filter
        public String describe() {
            return "all tests";
        }

        @Override // org.junit.runner.manipulation.Filter
        public Filter intersect(Filter filter) {
            return filter;
        }

        @Override // org.junit.runner.manipulation.Filter
        public boolean shouldRun(Description description) {
            return true;
        }
    };

    public static Filter matchMethodDescription(final Description description) {
        return new Filter() { // from class: org.junit.runner.manipulation.Filter.2
            @Override // org.junit.runner.manipulation.Filter
            public String describe() {
                return AbstractC0362x4440ab85.m2952x5ac5058d("Method ", Description.this.getDisplayName());
            }

            @Override // org.junit.runner.manipulation.Filter
            public boolean shouldRun(Description description2) {
                if (description2.isTest()) {
                    return Description.this.equals(description2);
                }
                Iterator<Description> it = description2.getChildren().iterator();
                while (it.hasNext()) {
                    if (shouldRun(it.next())) {
                        return true;
                    }
                }
                return false;
            }
        };
    }

    public void apply(Object obj) {
        if (!(obj instanceof Filterable)) {
            return;
        }
        ((Filterable) obj).filter(this);
    }

    public abstract String describe();

    public Filter intersect(final Filter filter) {
        if (filter != this && filter != ALL) {
            return new Filter() { // from class: org.junit.runner.manipulation.Filter.3
                @Override // org.junit.runner.manipulation.Filter
                public String describe() {
                    return this.describe() + " and " + filter.describe();
                }

                @Override // org.junit.runner.manipulation.Filter
                public boolean shouldRun(Description description) {
                    if (this.shouldRun(description) && filter.shouldRun(description)) {
                        return true;
                    }
                    return false;
                }
            };
        }
        return this;
    }

    public abstract boolean shouldRun(Description description);
}
