package org.junit.experimental.theories;

/* loaded from: classes3.dex */
public abstract class PotentialAssignment {

    /* loaded from: classes3.dex */
    public static class CouldNotGenerateValueException extends Exception {
        private static final long serialVersionUID = 1;

        public CouldNotGenerateValueException() {
        }

        public CouldNotGenerateValueException(Throwable th) {
            super(th);
        }
    }

    public static PotentialAssignment forValue(final String str, final Object obj) {
        return new PotentialAssignment() { // from class: org.junit.experimental.theories.PotentialAssignment.1
            @Override // org.junit.experimental.theories.PotentialAssignment
            public String getDescription() {
                String str2;
                Object obj2 = obj;
                if (obj2 == null) {
                    str2 = "null";
                } else {
                    try {
                        str2 = String.format("\"%s\"", obj2);
                    } catch (Throwable th) {
                        str2 = "[toString() threw " + th.getClass().getSimpleName() + ": " + th.getMessage() + "]";
                    }
                }
                return str2 + " <from " + str + ">";
            }

            @Override // org.junit.experimental.theories.PotentialAssignment
            public Object getValue() {
                return obj;
            }

            public String toString() {
                return String.format("[%s]", obj);
            }
        };
    }

    public abstract String getDescription();

    public abstract Object getValue();
}
