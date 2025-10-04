package androidx.constraintlayout.core.parser;

import androidx.annotation.NonNull;
import j$.util.Objects;
import java.util.Arrays;

/* loaded from: classes.dex */
public class CLElement implements Cloneable {
    protected static int sBaseIndent = 2;
    protected static int sMaxLine = 80;
    protected CLContainer mContainer;
    private final char[] mContent;
    private int mLine;
    protected long mStart = -1;
    protected long mEnd = Long.MAX_VALUE;

    public CLElement(char[] cArr) {
        this.mContent = cArr;
    }

    public void addIndent(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(' ');
        }
    }

    public String content() {
        String str = new String(this.mContent);
        if (str.length() < 1) {
            return "";
        }
        long j = this.mEnd;
        if (j != Long.MAX_VALUE) {
            long j2 = this.mStart;
            if (j >= j2) {
                return str.substring((int) j2, ((int) j) + 1);
            }
        }
        long j3 = this.mStart;
        return str.substring((int) j3, ((int) j3) + 1);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CLElement)) {
            return false;
        }
        CLElement cLElement = (CLElement) obj;
        if (this.mStart != cLElement.mStart || this.mEnd != cLElement.mEnd || this.mLine != cLElement.mLine || !Arrays.equals(this.mContent, cLElement.mContent)) {
            return false;
        }
        return Objects.equals(this.mContainer, cLElement.mContainer);
    }

    public CLElement getContainer() {
        return this.mContainer;
    }

    public String getDebugName() {
        if (CLParser.sDebug) {
            return getStrClass() + " -> ";
        }
        return "";
    }

    public long getEnd() {
        return this.mEnd;
    }

    public float getFloat() {
        if (this instanceof CLNumber) {
            return ((CLNumber) this).getFloat();
        }
        return Float.NaN;
    }

    public int getInt() {
        if (this instanceof CLNumber) {
            return ((CLNumber) this).getInt();
        }
        return 0;
    }

    public int getLine() {
        return this.mLine;
    }

    public long getStart() {
        return this.mStart;
    }

    public String getStrClass() {
        String cls = getClass().toString();
        return cls.substring(cls.lastIndexOf(46) + 1);
    }

    public boolean hasContent() {
        char[] cArr = this.mContent;
        if (cArr != null && cArr.length >= 1) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i;
        int hashCode = Arrays.hashCode(this.mContent) * 31;
        long j = this.mStart;
        int i2 = (hashCode + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.mEnd;
        int i3 = (i2 + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        CLContainer cLContainer = this.mContainer;
        if (cLContainer != null) {
            i = cLContainer.hashCode();
        } else {
            i = 0;
        }
        return ((i3 + i) * 31) + this.mLine;
    }

    public boolean isDone() {
        if (this.mEnd != Long.MAX_VALUE) {
            return true;
        }
        return false;
    }

    public boolean isStarted() {
        if (this.mStart > -1) {
            return true;
        }
        return false;
    }

    public boolean notStarted() {
        if (this.mStart == -1) {
            return true;
        }
        return false;
    }

    public void setContainer(CLContainer cLContainer) {
        this.mContainer = cLContainer;
    }

    public void setEnd(long j) {
        if (this.mEnd != Long.MAX_VALUE) {
            return;
        }
        this.mEnd = j;
        if (CLParser.sDebug) {
            System.out.println("closing " + hashCode() + " -> " + this);
        }
        CLContainer cLContainer = this.mContainer;
        if (cLContainer != null) {
            cLContainer.add(this);
        }
    }

    public void setLine(int i) {
        this.mLine = i;
    }

    public void setStart(long j) {
        this.mStart = j;
    }

    public String toFormattedJSON(int i, int i2) {
        return "";
    }

    public String toJSON() {
        return "";
    }

    public String toString() {
        long j = this.mStart;
        long j2 = this.mEnd;
        if (j <= j2 && j2 != Long.MAX_VALUE) {
            return getStrClass() + " (" + this.mStart + " : " + this.mEnd + ") <<" + new String(this.mContent).substring((int) this.mStart, ((int) this.mEnd) + 1) + ">>";
        }
        return getClass() + " (INVALID, " + this.mStart + "-" + this.mEnd + ")";
    }

    @Override // 
    @NonNull
    /* renamed from: clone */
    public CLElement mo512clone() {
        try {
            return (CLElement) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }
}
