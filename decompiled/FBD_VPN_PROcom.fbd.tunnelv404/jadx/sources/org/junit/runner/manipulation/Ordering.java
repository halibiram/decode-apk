package org.junit.runner.manipulation;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import org.junit.runner.Description;

/* loaded from: classes3.dex */
public abstract class Ordering {
    private static final String CONSTRUCTOR_ERROR_FORMAT = "Ordering class %s should have a public constructor with signature %s(Ordering.Context context)";

    /* loaded from: classes3.dex */
    public static class Context {
        private final Description description;

        public Description getTarget() {
            return this.description;
        }

        private Context(Description description) {
            this.description = description;
        }
    }

    /* loaded from: classes3.dex */
    public interface Factory {
        Ordering create(Context context);
    }

    public static Ordering definedBy(Class<? extends Factory> cls, Description description) {
        if (cls == null) {
            throw new NullPointerException("factoryClass cannot be null");
        }
        if (description != null) {
            try {
                return definedBy(cls.getConstructor(null).newInstance(null), description);
            } catch (NoSuchMethodException unused) {
                throw new InvalidOrderingException("Ordering class " + getClassName(cls) + " should have a public constructor with signature " + cls.getSimpleName() + "(Ordering.Context context)");
            } catch (Exception e) {
                throw new InvalidOrderingException("Could not create ordering for " + description, e);
            }
        }
        throw new NullPointerException("annotatedTestClass cannot be null");
    }

    private static String getClassName(Class<?> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            return cls.getName();
        }
        return canonicalName;
    }

    public static Ordering shuffledBy(final Random random) {
        return new Ordering() { // from class: org.junit.runner.manipulation.Ordering.1
            @Override // org.junit.runner.manipulation.Ordering
            public List<Description> orderItems(Collection<Description> collection) {
                ArrayList arrayList = new ArrayList(collection);
                Collections.shuffle(arrayList, random);
                return arrayList;
            }

            @Override // org.junit.runner.manipulation.Ordering
            public boolean validateOrderingIsCorrect() {
                return false;
            }
        };
    }

    public void apply(Object obj) {
        if (obj instanceof Orderable) {
            ((Orderable) obj).order(new Orderer(this));
        }
    }

    public abstract List<Description> orderItems(Collection<Description> collection);

    public boolean validateOrderingIsCorrect() {
        return true;
    }

    public static Ordering definedBy(Factory factory, Description description) {
        if (factory == null) {
            throw new NullPointerException("factory cannot be null");
        }
        if (description != null) {
            return factory.create(new Context(description));
        }
        throw new NullPointerException("annotatedTestClass cannot be null");
    }
}
