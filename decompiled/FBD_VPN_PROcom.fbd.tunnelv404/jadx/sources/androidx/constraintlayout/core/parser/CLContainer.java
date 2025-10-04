package androidx.constraintlayout.core.parser;

import androidx.annotation.NonNull;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class CLContainer extends CLElement {
    ArrayList<CLElement> mElements;

    public CLContainer(char[] cArr) {
        super(cArr);
        this.mElements = new ArrayList<>();
    }

    public static CLElement allocate(char[] cArr) {
        return new CLContainer(cArr);
    }

    public void add(CLElement cLElement) {
        this.mElements.add(cLElement);
        if (CLParser.sDebug) {
            System.out.println("added element " + cLElement + " to " + this);
        }
    }

    public void clear() {
        this.mElements.clear();
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CLContainer)) {
            return false;
        }
        return this.mElements.equals(((CLContainer) obj).mElements);
    }

    public CLElement get(String str) {
        Iterator<CLElement> it = this.mElements.iterator();
        while (it.hasNext()) {
            CLKey cLKey = (CLKey) it.next();
            if (cLKey.content().equals(str)) {
                return cLKey.getValue();
            }
        }
        throw new CLParsingException(AbstractC0362x4440ab85.m2932x95f25580("no element for key <", str, ">"), this);
    }

    public CLArray getArray(String str) {
        CLElement cLElement = get(str);
        if (cLElement instanceof CLArray) {
            return (CLArray) cLElement;
        }
        StringBuilder m3342x4440ab85 = AbstractC0749x8313616e.m3342x4440ab85("no array found for key <", str, ">, found [");
        m3342x4440ab85.append(cLElement.getStrClass());
        m3342x4440ab85.append("] : ");
        m3342x4440ab85.append(cLElement);
        throw new CLParsingException(m3342x4440ab85.toString(), this);
    }

    public CLArray getArrayOrCreate(String str) {
        CLArray arrayOrNull = getArrayOrNull(str);
        if (arrayOrNull != null) {
            return arrayOrNull;
        }
        CLArray cLArray = new CLArray(new char[0]);
        put(str, cLArray);
        return cLArray;
    }

    public CLArray getArrayOrNull(String str) {
        CLElement orNull = getOrNull(str);
        if (orNull instanceof CLArray) {
            return (CLArray) orNull;
        }
        return null;
    }

    public boolean getBoolean(String str) {
        CLElement cLElement = get(str);
        if (cLElement instanceof CLToken) {
            return ((CLToken) cLElement).getBoolean();
        }
        StringBuilder m3342x4440ab85 = AbstractC0749x8313616e.m3342x4440ab85("no boolean found for key <", str, ">, found [");
        m3342x4440ab85.append(cLElement.getStrClass());
        m3342x4440ab85.append("] : ");
        m3342x4440ab85.append(cLElement);
        throw new CLParsingException(m3342x4440ab85.toString(), this);
    }

    public float getFloat(String str) {
        CLElement cLElement = get(str);
        if (cLElement != null) {
            return cLElement.getFloat();
        }
        StringBuilder m3342x4440ab85 = AbstractC0749x8313616e.m3342x4440ab85("no float found for key <", str, ">, found [");
        m3342x4440ab85.append(cLElement.getStrClass());
        m3342x4440ab85.append("] : ");
        m3342x4440ab85.append(cLElement);
        throw new CLParsingException(m3342x4440ab85.toString(), this);
    }

    public float getFloatOrNaN(String str) {
        CLElement orNull = getOrNull(str);
        if (orNull instanceof CLNumber) {
            return orNull.getFloat();
        }
        return Float.NaN;
    }

    public int getInt(String str) {
        CLElement cLElement = get(str);
        if (cLElement != null) {
            return cLElement.getInt();
        }
        StringBuilder m3342x4440ab85 = AbstractC0749x8313616e.m3342x4440ab85("no int found for key <", str, ">, found [");
        m3342x4440ab85.append(cLElement.getStrClass());
        m3342x4440ab85.append("] : ");
        m3342x4440ab85.append(cLElement);
        throw new CLParsingException(m3342x4440ab85.toString(), this);
    }

    public CLObject getObject(String str) {
        CLElement cLElement = get(str);
        if (cLElement instanceof CLObject) {
            return (CLObject) cLElement;
        }
        StringBuilder m3342x4440ab85 = AbstractC0749x8313616e.m3342x4440ab85("no object found for key <", str, ">, found [");
        m3342x4440ab85.append(cLElement.getStrClass());
        m3342x4440ab85.append("] : ");
        m3342x4440ab85.append(cLElement);
        throw new CLParsingException(m3342x4440ab85.toString(), this);
    }

    public CLObject getObjectOrNull(String str) {
        CLElement orNull = getOrNull(str);
        if (orNull instanceof CLObject) {
            return (CLObject) orNull;
        }
        return null;
    }

    public CLElement getOrNull(String str) {
        Iterator<CLElement> it = this.mElements.iterator();
        while (it.hasNext()) {
            CLKey cLKey = (CLKey) it.next();
            if (cLKey.content().equals(str)) {
                return cLKey.getValue();
            }
        }
        return null;
    }

    public String getString(String str) {
        CLElement cLElement = get(str);
        if (cLElement instanceof CLString) {
            return cLElement.content();
        }
        StringBuilder m2944x4440ab85 = AbstractC0362x4440ab85.m2944x4440ab85("no string found for key <", str, ">, found [", cLElement != null ? cLElement.getStrClass() : null, "] : ");
        m2944x4440ab85.append(cLElement);
        throw new CLParsingException(m2944x4440ab85.toString(), this);
    }

    public String getStringOrNull(String str) {
        CLElement orNull = getOrNull(str);
        if (orNull instanceof CLString) {
            return orNull.content();
        }
        return null;
    }

    public boolean has(String str) {
        Iterator<CLElement> it = this.mElements.iterator();
        while (it.hasNext()) {
            CLElement next = it.next();
            if ((next instanceof CLKey) && ((CLKey) next).content().equals(str)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public int hashCode() {
        return Objects.hash(this.mElements, Integer.valueOf(super.hashCode()));
    }

    public ArrayList<String> names() {
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<CLElement> it = this.mElements.iterator();
        while (it.hasNext()) {
            CLElement next = it.next();
            if (next instanceof CLKey) {
                arrayList.add(((CLKey) next).content());
            }
        }
        return arrayList;
    }

    public void put(String str, CLElement cLElement) {
        Iterator<CLElement> it = this.mElements.iterator();
        while (it.hasNext()) {
            CLKey cLKey = (CLKey) it.next();
            if (cLKey.content().equals(str)) {
                cLKey.set(cLElement);
                return;
            }
        }
        this.mElements.add((CLKey) CLKey.allocate(str, cLElement));
    }

    public void putNumber(String str, float f) {
        put(str, new CLNumber(f));
    }

    public void putString(String str, String str2) {
        CLString cLString = new CLString(str2.toCharArray());
        cLString.setStart(0L);
        cLString.setEnd(str2.length() - 1);
        put(str, cLString);
    }

    public void remove(String str) {
        ArrayList arrayList = new ArrayList();
        Iterator<CLElement> it = this.mElements.iterator();
        while (it.hasNext()) {
            CLElement next = it.next();
            if (((CLKey) next).content().equals(str)) {
                arrayList.add(next);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            this.mElements.remove((CLElement) it2.next());
        }
    }

    public int size() {
        return this.mElements.size();
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toString() {
        StringBuilder sb = new StringBuilder();
        Iterator<CLElement> it = this.mElements.iterator();
        while (it.hasNext()) {
            CLElement next = it.next();
            if (sb.length() > 0) {
                sb.append("; ");
            }
            sb.append(next);
        }
        return super.toString() + " = <" + ((Object) sb) + " >";
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    @NonNull
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public CLContainer mo512clone() {
        CLContainer cLContainer = (CLContainer) super.mo512clone();
        ArrayList<CLElement> arrayList = new ArrayList<>(this.mElements.size());
        Iterator<CLElement> it = this.mElements.iterator();
        while (it.hasNext()) {
            CLElement mo512clone = it.next().mo512clone();
            mo512clone.setContainer(cLContainer);
            arrayList.add(mo512clone);
        }
        cLContainer.mElements = arrayList;
        return cLContainer;
    }

    public String getStringOrNull(int i) {
        CLElement orNull = getOrNull(i);
        if (orNull instanceof CLString) {
            return orNull.content();
        }
        return null;
    }

    public CLElement getOrNull(int i) {
        if (i < 0 || i >= this.mElements.size()) {
            return null;
        }
        return this.mElements.get(i);
    }

    public float getFloat(int i) {
        CLElement cLElement = get(i);
        if (cLElement != null) {
            return cLElement.getFloat();
        }
        throw new CLParsingException(AbstractC0362x4440ab85.m2929x9738a56c(i, "no float at index "), this);
    }

    public int getInt(int i) {
        CLElement cLElement = get(i);
        if (cLElement != null) {
            return cLElement.getInt();
        }
        throw new CLParsingException(AbstractC0362x4440ab85.m2929x9738a56c(i, "no int at index "), this);
    }

    public CLArray getArray(int i) {
        CLElement cLElement = get(i);
        if (cLElement instanceof CLArray) {
            return (CLArray) cLElement;
        }
        throw new CLParsingException(AbstractC0362x4440ab85.m2929x9738a56c(i, "no array at index "), this);
    }

    public boolean getBoolean(int i) {
        CLElement cLElement = get(i);
        if (cLElement instanceof CLToken) {
            return ((CLToken) cLElement).getBoolean();
        }
        throw new CLParsingException(AbstractC0362x4440ab85.m2929x9738a56c(i, "no boolean at index "), this);
    }

    public CLObject getObject(int i) {
        CLElement cLElement = get(i);
        if (cLElement instanceof CLObject) {
            return (CLObject) cLElement;
        }
        throw new CLParsingException(AbstractC0362x4440ab85.m2929x9738a56c(i, "no object at index "), this);
    }

    public CLElement get(int i) {
        if (i >= 0 && i < this.mElements.size()) {
            return this.mElements.get(i);
        }
        throw new CLParsingException(AbstractC0362x4440ab85.m2929x9738a56c(i, "no element at index "), this);
    }

    public String getString(int i) {
        CLElement cLElement = get(i);
        if (cLElement instanceof CLString) {
            return cLElement.content();
        }
        throw new CLParsingException(AbstractC0362x4440ab85.m2929x9738a56c(i, "no string at index "), this);
    }
}
