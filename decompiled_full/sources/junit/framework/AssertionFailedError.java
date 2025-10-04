package junit.framework;

/* loaded from: classes3.dex */
public class AssertionFailedError extends AssertionError {
    private static final long serialVersionUID = 1;

    public AssertionFailedError() {
    }

    public AssertionFailedError(String str) {
        super(str == null ? "" : str);
    }
}
