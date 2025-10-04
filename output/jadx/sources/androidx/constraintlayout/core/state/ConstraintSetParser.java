package androidx.constraintlayout.core.state;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.constraintlayout.core.motion.utils.TypedBundle;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.parser.CLArray;
import androidx.constraintlayout.core.parser.CLElement;
import androidx.constraintlayout.core.parser.CLKey;
import androidx.constraintlayout.core.parser.CLNumber;
import androidx.constraintlayout.core.parser.CLObject;
import androidx.constraintlayout.core.parser.CLParser;
import androidx.constraintlayout.core.parser.CLParsingException;
import androidx.constraintlayout.core.parser.CLString;
import androidx.constraintlayout.core.state.State;
import androidx.constraintlayout.core.state.helpers.BarrierReference;
import androidx.constraintlayout.core.state.helpers.ChainReference;
import androidx.constraintlayout.core.state.helpers.FlowReference;
import androidx.constraintlayout.core.state.helpers.GridReference;
import androidx.constraintlayout.core.state.helpers.GuidelineReference;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.AbstractC0362x4440ab85;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ConstraintSetParser {
    private static final boolean PARSER_DEBUG = false;

    /* loaded from: classes.dex */
    public static class DesignElement {
        String mId;
        HashMap<String, String> mParams;
        String mType;

        public DesignElement(String str, String str2, HashMap<String, String> hashMap) {
            this.mId = str;
            this.mType = str2;
            this.mParams = hashMap;
        }

        public String getId() {
            return this.mId;
        }

        public HashMap<String, String> getParams() {
            return this.mParams;
        }

        public String getType() {
            return this.mType;
        }
    }

    /* loaded from: classes.dex */
    public static class FiniteGenerator implements GeneratedValue {
        float mFrom;
        float mInitial;
        float mMax;
        String mPostfix;
        String mPrefix;
        float mStep;
        float mTo;
        boolean mStop = false;
        float mCurrent = 0.0f;

        public FiniteGenerator(float f, float f2, float f3, String str, String str2) {
            this.mFrom = f;
            this.mTo = f2;
            this.mStep = f3;
            this.mPrefix = str == null ? "" : str;
            this.mPostfix = str2 == null ? "" : str2;
            this.mMax = f2;
            this.mInitial = f;
        }

        public ArrayList<String> array() {
            ArrayList<String> arrayList = new ArrayList<>();
            int i = (int) this.mInitial;
            int i2 = (int) this.mMax;
            int i3 = i;
            while (i <= i2) {
                arrayList.add(this.mPrefix + i3 + this.mPostfix);
                i3 += (int) this.mStep;
                i++;
            }
            return arrayList;
        }

        @Override // androidx.constraintlayout.core.state.ConstraintSetParser.GeneratedValue
        public float value() {
            float f = this.mCurrent;
            if (f >= this.mMax) {
                this.mStop = true;
            }
            if (!this.mStop) {
                this.mCurrent = f + this.mStep;
            }
            return this.mCurrent;
        }
    }

    /* loaded from: classes.dex */
    public interface GeneratedValue {
        float value();
    }

    /* loaded from: classes.dex */
    public static class Generator implements GeneratedValue {
        float mCurrent;
        float mIncrementBy;
        float mStart;
        boolean mStop = false;

        public Generator(float f, float f2) {
            this.mStart = f;
            this.mIncrementBy = f2;
            this.mCurrent = f;
        }

        @Override // androidx.constraintlayout.core.state.ConstraintSetParser.GeneratedValue
        public float value() {
            if (!this.mStop) {
                this.mCurrent += this.mIncrementBy;
            }
            return this.mCurrent;
        }
    }

    /* loaded from: classes.dex */
    public static class LayoutVariables {
        HashMap<String, Integer> mMargins = new HashMap<>();
        HashMap<String, GeneratedValue> mGenerators = new HashMap<>();
        HashMap<String, ArrayList<String>> mArrayIds = new HashMap<>();

        public float get(Object obj) {
            if (obj instanceof CLString) {
                String content = ((CLString) obj).content();
                if (this.mGenerators.containsKey(content)) {
                    return this.mGenerators.get(content).value();
                }
                if (this.mMargins.containsKey(content)) {
                    return this.mMargins.get(content).floatValue();
                }
                return 0.0f;
            }
            if (obj instanceof CLNumber) {
                return ((CLNumber) obj).getFloat();
            }
            return 0.0f;
        }

        public ArrayList<String> getList(String str) {
            if (this.mArrayIds.containsKey(str)) {
                return this.mArrayIds.get(str);
            }
            return null;
        }

        public void put(String str, int i) {
            this.mMargins.put(str, Integer.valueOf(i));
        }

        public void putOverride(String str, float f) {
            this.mGenerators.put(str, new OverrideValue(f));
        }

        public void put(String str, float f, float f2) {
            if (this.mGenerators.containsKey(str) && (this.mGenerators.get(str) instanceof OverrideValue)) {
                return;
            }
            this.mGenerators.put(str, new Generator(f, f2));
        }

        public void put(String str, float f, float f2, float f3, String str2, String str3) {
            if (this.mGenerators.containsKey(str) && (this.mGenerators.get(str) instanceof OverrideValue)) {
                return;
            }
            FiniteGenerator finiteGenerator = new FiniteGenerator(f, f2, f3, str2, str3);
            this.mGenerators.put(str, finiteGenerator);
            this.mArrayIds.put(str, finiteGenerator.array());
        }

        public void put(String str, ArrayList<String> arrayList) {
            this.mArrayIds.put(str, arrayList);
        }
    }

    /* loaded from: classes.dex */
    public enum MotionLayoutDebugFlags {
        NONE,
        SHOW_ALL,
        UNKNOWN
    }

    /* loaded from: classes.dex */
    public static class OverrideValue implements GeneratedValue {
        float mValue;

        public OverrideValue(float f) {
            this.mValue = f;
        }

        @Override // androidx.constraintlayout.core.state.ConstraintSetParser.GeneratedValue
        public float value() {
            return this.mValue;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x016a, code lost:
    
        if (r8.equals("visible") == false) goto L105;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void applyAttribute(State state, LayoutVariables layoutVariables, ConstraintReference constraintReference, CLObject cLObject, String str) {
        char c;
        ConstraintReference constraints;
        char c2 = 2;
        str.getClass();
        switch (str.hashCode()) {
            case -1448775240:
                if (str.equals("centerVertically")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1364013995:
                if (str.equals("center")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -1349088399:
                if (str.equals("custom")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1249320806:
                if (str.equals("rotationX")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -1249320804:
                if (str.equals("rotationZ")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case -1221029593:
                if (str.equals("height")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case -1068318794:
                if (str.equals("motion")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case -987906986:
                if (str.equals("pivotX")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case -987906985:
                if (str.equals("pivotY")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case -247669061:
                if (str.equals("hRtlBias")) {
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case -61505906:
                if (str.equals("vWeight")) {
                    c = 16;
                    break;
                }
                c = 65535;
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    c = 17;
                    break;
                }
                c = 65535;
                break;
            case 98116417:
                if (str.equals("hBias")) {
                    c = 18;
                    break;
                }
                c = 65535;
                break;
            case 111045711:
                if (str.equals("vBias")) {
                    c = 19;
                    break;
                }
                c = 65535;
                break;
            case 113126854:
                if (str.equals("width")) {
                    c = 20;
                    break;
                }
                c = 65535;
                break;
            case 398344448:
                if (str.equals("hWeight")) {
                    c = 21;
                    break;
                }
                c = 65535;
                break;
            case 1404070310:
                if (str.equals("centerHorizontally")) {
                    c = 22;
                    break;
                }
                c = 65535;
                break;
            case 1941332754:
                if (str.equals("visibility")) {
                    c = 23;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                String string = cLObject.getString(str);
                boolean equals = string.equals("parent");
                Object obj = string;
                if (equals) {
                    obj = State.PARENT;
                }
                ConstraintReference constraints2 = state.constraints(obj);
                constraintReference.topToTop(constraints2);
                constraintReference.bottomToBottom(constraints2);
                return;
            case 1:
                String string2 = cLObject.getString(str);
                if (string2.equals("parent")) {
                    constraints = state.constraints(State.PARENT);
                } else {
                    constraints = state.constraints(string2);
                }
                constraintReference.startToStart(constraints);
                constraintReference.endToEnd(constraints);
                constraintReference.topToTop(constraints);
                constraintReference.bottomToBottom(constraints);
                return;
            case 2:
                parseCustomProperties(cLObject, constraintReference, str);
                return;
            case 3:
                constraintReference.rotationX(layoutVariables.get(cLObject.get(str)));
                return;
            case 4:
                constraintReference.rotationY(layoutVariables.get(cLObject.get(str)));
                return;
            case 5:
                constraintReference.rotationZ(layoutVariables.get(cLObject.get(str)));
                return;
            case 6:
                constraintReference.translationX(toPix(state, layoutVariables.get(cLObject.get(str))));
                return;
            case 7:
                constraintReference.translationY(toPix(state, layoutVariables.get(cLObject.get(str))));
                return;
            case '\b':
                constraintReference.translationZ(toPix(state, layoutVariables.get(cLObject.get(str))));
                return;
            case '\t':
                constraintReference.setHeight(parseDimension(cLObject, str, state, state.getDpToPixel()));
                return;
            case '\n':
                parseMotionProperties(cLObject.get(str), constraintReference);
                return;
            case 11:
                constraintReference.pivotX(layoutVariables.get(cLObject.get(str)));
                return;
            case '\f':
                constraintReference.pivotY(layoutVariables.get(cLObject.get(str)));
                return;
            case '\r':
                constraintReference.scaleX(layoutVariables.get(cLObject.get(str)));
                return;
            case 14:
                constraintReference.scaleY(layoutVariables.get(cLObject.get(str)));
                return;
            case 15:
                float f = layoutVariables.get(cLObject.get(str));
                if (state.isRtl()) {
                    f = 1.0f - f;
                }
                constraintReference.horizontalBias(f);
                return;
            case 16:
                constraintReference.setVerticalChainWeight(layoutVariables.get(cLObject.get(str)));
                return;
            case 17:
                constraintReference.alpha(layoutVariables.get(cLObject.get(str)));
                return;
            case 18:
                constraintReference.horizontalBias(layoutVariables.get(cLObject.get(str)));
                return;
            case 19:
                constraintReference.verticalBias(layoutVariables.get(cLObject.get(str)));
                return;
            case 20:
                constraintReference.setWidth(parseDimension(cLObject, str, state, state.getDpToPixel()));
                return;
            case 21:
                constraintReference.setHorizontalChainWeight(layoutVariables.get(cLObject.get(str)));
                return;
            case 22:
                String string3 = cLObject.getString(str);
                boolean equals2 = string3.equals("parent");
                Object obj2 = string3;
                if (equals2) {
                    obj2 = State.PARENT;
                }
                ConstraintReference constraints3 = state.constraints(obj2);
                constraintReference.startToStart(constraints3);
                constraintReference.endToEnd(constraints3);
                return;
            case 23:
                String string4 = cLObject.getString(str);
                string4.getClass();
                switch (string4.hashCode()) {
                    case -1901805651:
                        if (string4.equals("invisible")) {
                            c2 = 0;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 3178655:
                        if (string4.equals("gone")) {
                            c2 = 1;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 466743410:
                        break;
                    default:
                        c2 = 65535;
                        break;
                }
                switch (c2) {
                    case 0:
                        constraintReference.visibility(4);
                        constraintReference.alpha(0.0f);
                        return;
                    case 1:
                        constraintReference.visibility(8);
                        return;
                    case 2:
                        constraintReference.visibility(0);
                        return;
                    default:
                        return;
                }
            default:
                parseConstraint(state, layoutVariables, cLObject, constraintReference, str);
                return;
        }
    }

    private static int indexOf(String str, String... strArr) {
        for (int i = 0; i < strArr.length; i++) {
            if (strArr[i].equals(str)) {
                return i;
            }
        }
        return -1;
    }

    public static String lookForType(CLObject cLObject) {
        Iterator<String> it = cLObject.names().iterator();
        while (it.hasNext()) {
            if (it.next().equals(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)) {
                return cLObject.getString(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
            }
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0071, code lost:
    
        switch(r5) {
            case 0: goto L36;
            case 1: goto L35;
            case 2: goto L34;
            default: goto L33;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0074, code lost:
    
        r7.remove(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0078, code lost:
    
        r7.remove("width");
        r7.remove("height");
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0083, code lost:
    
        r7.remove("start");
        r7.remove("end");
        r7.remove("top");
        r7.remove("bottom");
        r7.remove("baseline");
        r7.remove("center");
        r7.remove("centerHorizontally");
        r7.remove("centerVertically");
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00ac, code lost:
    
        r7.remove("visibility");
        r7.remove("alpha");
        r7.remove("pivotX");
        r7.remove("pivotY");
        r7.remove("rotationX");
        r7.remove("rotationY");
        r7.remove("rotationZ");
        r7.remove("scaleX");
        r7.remove("scaleY");
        r7.remove("translationX");
        r7.remove("translationY");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void override(CLObject cLObject, String str, CLObject cLObject2) {
        if (!cLObject.has(str)) {
            cLObject.put(str, cLObject2);
            return;
        }
        CLObject object = cLObject.getObject(str);
        Iterator<String> it = cLObject2.names().iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (!next.equals("clear")) {
                object.put(next, cLObject2.get(next));
            } else {
                CLArray array = cLObject2.getArray("clear");
                for (int i = 0; i < array.size(); i++) {
                    String stringOrNull = array.getStringOrNull(i);
                    if (stringOrNull != null) {
                        char c = 65535;
                        switch (stringOrNull.hashCode()) {
                            case -1727069561:
                                if (stringOrNull.equals("transforms")) {
                                    c = 0;
                                    break;
                                }
                                break;
                            case -1606703562:
                                if (stringOrNull.equals("constraints")) {
                                    c = 1;
                                    break;
                                }
                                break;
                            case 414334925:
                                if (stringOrNull.equals("dimensions")) {
                                    c = 2;
                                    break;
                                }
                                break;
                        }
                    }
                }
            }
        }
    }

    public static void parseBarrier(State state, String str, CLObject cLObject) {
        char c;
        char c2;
        boolean isRtl = state.isRtl();
        BarrierReference barrier = state.barrier(str, State.Direction.END);
        ArrayList<String> names = cLObject.names();
        if (names == null) {
            return;
        }
        Iterator<String> it = names.iterator();
        while (it.hasNext()) {
            String next = it.next();
            next.getClass();
            switch (next.hashCode()) {
                case -1081309778:
                    if (next.equals("margin")) {
                        c = 0;
                        break;
                    }
                    break;
                case -962590849:
                    if (next.equals("direction")) {
                        c = 1;
                        break;
                    }
                    break;
                case -567445985:
                    if (next.equals("contains")) {
                        c = 2;
                        break;
                    }
                    break;
            }
            c = 65535;
            switch (c) {
                case 0:
                    float floatOrNaN = cLObject.getFloatOrNaN(next);
                    if (Float.isNaN(floatOrNaN)) {
                        break;
                    } else {
                        barrier.margin(Float.valueOf(toPix(state, floatOrNaN)));
                        break;
                    }
                case 1:
                    String string = cLObject.getString(next);
                    string.getClass();
                    switch (string.hashCode()) {
                        case -1383228885:
                            if (string.equals("bottom")) {
                                c2 = 0;
                                break;
                            }
                            break;
                        case 100571:
                            if (string.equals("end")) {
                                c2 = 1;
                                break;
                            }
                            break;
                        case 115029:
                            if (string.equals("top")) {
                                c2 = 2;
                                break;
                            }
                            break;
                        case 3317767:
                            if (string.equals("left")) {
                                c2 = 3;
                                break;
                            }
                            break;
                        case 108511772:
                            if (string.equals("right")) {
                                c2 = 4;
                                break;
                            }
                            break;
                        case 109757538:
                            if (string.equals("start")) {
                                c2 = 5;
                                break;
                            }
                            break;
                    }
                    c2 = 65535;
                    switch (c2) {
                        case 0:
                            barrier.setBarrierDirection(State.Direction.BOTTOM);
                            break;
                        case 1:
                            if (!isRtl) {
                                barrier.setBarrierDirection(State.Direction.RIGHT);
                                break;
                            } else {
                                barrier.setBarrierDirection(State.Direction.LEFT);
                                break;
                            }
                        case 2:
                            barrier.setBarrierDirection(State.Direction.TOP);
                            break;
                        case 3:
                            barrier.setBarrierDirection(State.Direction.LEFT);
                            break;
                        case 4:
                            barrier.setBarrierDirection(State.Direction.RIGHT);
                            break;
                        case 5:
                            if (!isRtl) {
                                barrier.setBarrierDirection(State.Direction.LEFT);
                                break;
                            } else {
                                barrier.setBarrierDirection(State.Direction.RIGHT);
                                break;
                            }
                    }
                case 2:
                    CLArray arrayOrNull = cLObject.getArrayOrNull(next);
                    if (arrayOrNull != null) {
                        for (int i = 0; i < arrayOrNull.size(); i++) {
                            barrier.add(state.constraints(arrayOrNull.get(i).content()));
                        }
                        break;
                    } else {
                        break;
                    }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00a8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0094 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void parseChain(int i, State state, LayoutVariables layoutVariables, CLArray cLArray) {
        ChainReference verticalChain;
        String content;
        if (i == 0) {
            verticalChain = state.horizontalChain();
        } else {
            verticalChain = state.verticalChain();
        }
        CLElement cLElement = cLArray.get(1);
        if (cLElement instanceof CLArray) {
            CLArray cLArray2 = (CLArray) cLElement;
            if (cLArray2.size() >= 1) {
                for (int i2 = 0; i2 < cLArray2.size(); i2++) {
                    verticalChain.add(cLArray2.getString(i2));
                }
                if (cLArray.size() > 2) {
                    CLElement cLElement2 = cLArray.get(2);
                    if (!(cLElement2 instanceof CLObject)) {
                        return;
                    }
                    CLObject cLObject = (CLObject) cLElement2;
                    Iterator<String> it = cLObject.names().iterator();
                    while (it.hasNext()) {
                        String next = it.next();
                        next.getClass();
                        if (!next.equals("style")) {
                            parseConstraint(state, layoutVariables, cLObject, verticalChain, next);
                        } else {
                            CLElement cLElement3 = cLObject.get(next);
                            if (cLElement3 instanceof CLArray) {
                                CLArray cLArray3 = (CLArray) cLElement3;
                                if (cLArray3.size() > 1) {
                                    content = cLArray3.getString(0);
                                    verticalChain.bias(cLArray3.getFloat(1));
                                    content.getClass();
                                    if (content.equals("packed")) {
                                        if (!content.equals("spread_inside")) {
                                            verticalChain.style(State.Chain.SPREAD);
                                        } else {
                                            verticalChain.style(State.Chain.SPREAD_INSIDE);
                                        }
                                    } else {
                                        verticalChain.style(State.Chain.PACKED);
                                    }
                                }
                            }
                            content = cLElement3.content();
                            content.getClass();
                            if (content.equals("packed")) {
                            }
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:33:0x009b. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009e A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01e8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void parseChainType(String str, State state, String str2, LayoutVariables layoutVariables, CLObject cLObject) {
        ChainReference verticalChain;
        int i;
        CLArray cLArray;
        float f;
        float f2;
        float f3;
        float f4;
        String content;
        int i2 = 6;
        int i3 = 3;
        int i4 = 0;
        if (str.charAt(0) == 'h') {
            verticalChain = state.horizontalChain();
        } else {
            verticalChain = state.verticalChain();
        }
        verticalChain.setKey(str2);
        Iterator<String> it = cLObject.names().iterator();
        while (it.hasNext()) {
            String next = it.next();
            next.getClass();
            char c = 65535;
            switch (next.hashCode()) {
                case -1383228885:
                    if (next.equals("bottom")) {
                        c = 0;
                    }
                    switch (c) {
                        case 0:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                            parseConstraint(state, layoutVariables, cLObject, verticalChain, next);
                            i2 = 6;
                            i3 = 3;
                            i4 = 0;
                        case 1:
                            CLElement cLElement = cLObject.get(next);
                            if (cLElement instanceof CLArray) {
                                CLArray cLArray2 = (CLArray) cLElement;
                                if (cLArray2.size() >= 1) {
                                    int i5 = 0;
                                    while (i5 < cLArray2.size()) {
                                        CLElement cLElement2 = cLArray2.get(i5);
                                        if (cLElement2 instanceof CLArray) {
                                            CLArray cLArray3 = (CLArray) cLElement2;
                                            if (cLArray3.size() > 0) {
                                                String content2 = cLArray3.get(i4).content();
                                                int size = cLArray3.size();
                                                float f5 = Float.NaN;
                                                if (size != 2) {
                                                    if (size != i3) {
                                                        if (size != 4) {
                                                            if (size != i2) {
                                                                f2 = Float.NaN;
                                                                f3 = Float.NaN;
                                                                f = Float.NaN;
                                                            } else {
                                                                f = cLArray3.getFloat(1);
                                                                float pix = toPix(state, cLArray3.getFloat(2));
                                                                float pix2 = toPix(state, cLArray3.getFloat(i3));
                                                                f5 = pix;
                                                                f2 = toPix(state, cLArray3.getFloat(4));
                                                                f3 = pix2;
                                                                f4 = toPix(state, cLArray3.getFloat(5));
                                                                i = i5;
                                                                cLArray = cLArray2;
                                                                verticalChain.addChainElement(content2, f, f5, f3, f2, f4);
                                                            }
                                                        } else {
                                                            f = cLArray3.getFloat(1);
                                                            f5 = toPix(state, cLArray3.getFloat(2));
                                                            f3 = toPix(state, cLArray3.getFloat(3));
                                                        }
                                                    } else {
                                                        float f6 = cLArray3.getFloat(1);
                                                        f3 = toPix(state, cLArray3.getFloat(2));
                                                        f = f6;
                                                        f5 = f3;
                                                    }
                                                    f2 = Float.NaN;
                                                } else {
                                                    f = cLArray3.getFloat(1);
                                                    f2 = Float.NaN;
                                                    f3 = Float.NaN;
                                                }
                                                f4 = Float.NaN;
                                                i = i5;
                                                cLArray = cLArray2;
                                                verticalChain.addChainElement(content2, f, f5, f3, f2, f4);
                                            } else {
                                                i = i5;
                                                cLArray = cLArray2;
                                            }
                                        } else {
                                            i = i5;
                                            cLArray = cLArray2;
                                            verticalChain.add(cLElement2.content());
                                        }
                                        i5 = i + 1;
                                        cLArray2 = cLArray;
                                        i2 = 6;
                                        i3 = 3;
                                        i4 = 0;
                                    }
                                    i2 = 6;
                                    i3 = 3;
                                    i4 = 0;
                                }
                            }
                            PrintStream printStream = System.err;
                            StringBuilder m2943xc20437a5 = AbstractC0362x4440ab85.m2943xc20437a5(str2, " contains should be an array \"");
                            m2943xc20437a5.append(cLElement.content());
                            m2943xc20437a5.append("\"");
                            printStream.println(m2943xc20437a5.toString());
                            return;
                        case 7:
                            CLElement cLElement3 = cLObject.get(next);
                            if (cLElement3 instanceof CLArray) {
                                CLArray cLArray4 = (CLArray) cLElement3;
                                if (cLArray4.size() > 1) {
                                    content = cLArray4.getString(i4);
                                    verticalChain.bias(cLArray4.getFloat(1));
                                    content.getClass();
                                    if (content.equals("packed")) {
                                        if (!content.equals("spread_inside")) {
                                            verticalChain.style(State.Chain.SPREAD);
                                        } else {
                                            verticalChain.style(State.Chain.SPREAD_INSIDE);
                                        }
                                    } else {
                                        verticalChain.style(State.Chain.PACKED);
                                    }
                                }
                            }
                            content = cLElement3.content();
                            content.getClass();
                            if (content.equals("packed")) {
                            }
                        default:
                            i2 = 6;
                            i3 = 3;
                            i4 = 0;
                    }
                case -567445985:
                    if (next.equals("contains")) {
                        c = 1;
                    }
                    switch (c) {
                    }
                case 100571:
                    if (next.equals("end")) {
                        c = 2;
                    }
                    switch (c) {
                    }
                case 115029:
                    if (next.equals("top")) {
                        c = 3;
                    }
                    switch (c) {
                    }
                case 3317767:
                    if (next.equals("left")) {
                        c = 4;
                    }
                    switch (c) {
                    }
                case 108511772:
                    if (next.equals("right")) {
                        c = 5;
                    }
                    switch (c) {
                    }
                case 109757538:
                    if (next.equals("start")) {
                        c = 6;
                    }
                    switch (c) {
                    }
                case 109780401:
                    if (next.equals("style")) {
                        c = 7;
                    }
                    switch (c) {
                    }
                default:
                    switch (c) {
                    }
            }
        }
    }

    public static long parseColorString(String str) {
        if (str.startsWith("#")) {
            String substring = str.substring(1);
            if (substring.length() == 6) {
                substring = "FF".concat(substring);
            }
            return Long.parseLong(substring, 16);
        }
        return -1L;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    public static void parseConstraint(androidx.constraintlayout.core.state.State r20, androidx.constraintlayout.core.state.ConstraintSetParser.LayoutVariables r21, androidx.constraintlayout.core.parser.CLObject r22, androidx.constraintlayout.core.state.ConstraintReference r23, java.lang.String r24) {
        /*
            Method dump skipped, instructions count: 922
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.state.ConstraintSetParser.parseConstraint(androidx.constraintlayout.core.state.State, androidx.constraintlayout.core.state.ConstraintSetParser$LayoutVariables, androidx.constraintlayout.core.parser.CLObject, androidx.constraintlayout.core.state.ConstraintReference, java.lang.String):void");
    }

    public static void parseConstraintSets(CoreMotionScene coreMotionScene, CLObject cLObject) {
        ArrayList<String> names = cLObject.names();
        if (names == null) {
            return;
        }
        Iterator<String> it = names.iterator();
        while (it.hasNext()) {
            String next = it.next();
            CLObject object = cLObject.getObject(next);
            String stringOrNull = object.getStringOrNull("Extends");
            if (stringOrNull != null && !stringOrNull.isEmpty()) {
                String constraintSet = coreMotionScene.getConstraintSet(stringOrNull);
                if (constraintSet != null) {
                    CLObject parse = CLParser.parse(constraintSet);
                    ArrayList<String> names2 = object.names();
                    if (names2 != null) {
                        Iterator<String> it2 = names2.iterator();
                        while (it2.hasNext()) {
                            String next2 = it2.next();
                            CLElement cLElement = object.get(next2);
                            if (cLElement instanceof CLObject) {
                                override(parse, next2, (CLObject) cLElement);
                            }
                        }
                        coreMotionScene.setConstraintSetContent(next, parse.toJSON());
                    }
                }
            } else {
                coreMotionScene.setConstraintSetContent(next, object.toJSON());
            }
        }
    }

    public static void parseCustomProperties(CLObject cLObject, ConstraintReference constraintReference, String str) {
        ArrayList<String> names;
        CLObject objectOrNull = cLObject.getObjectOrNull(str);
        if (objectOrNull == null || (names = objectOrNull.names()) == null) {
            return;
        }
        Iterator<String> it = names.iterator();
        while (it.hasNext()) {
            String next = it.next();
            CLElement cLElement = objectOrNull.get(next);
            if (cLElement instanceof CLNumber) {
                constraintReference.addCustomFloat(next, cLElement.getFloat());
            } else if (cLElement instanceof CLString) {
                long parseColorString = parseColorString(cLElement.content());
                if (parseColorString != -1) {
                    constraintReference.addCustomColor(next, (int) parseColorString);
                }
            }
        }
    }

    public static void parseDesignElementsJSON(String str, ArrayList<DesignElement> arrayList) {
        CLObject parse = CLParser.parse(str);
        ArrayList<String> names = parse.names();
        if (names != null && names.size() > 0) {
            String str2 = names.get(0);
            CLElement cLElement = parse.get(str2);
            str2.getClass();
            if (!str2.equals("Design") || !(cLElement instanceof CLObject)) {
                return;
            }
            CLObject cLObject = (CLObject) cLElement;
            ArrayList<String> names2 = cLObject.names();
            for (int i = 0; i < names2.size(); i++) {
                String str3 = names2.get(i);
                CLObject cLObject2 = (CLObject) cLObject.get(str3);
                System.out.printf(AbstractC0362x4440ab85.m2932x95f25580("element found ", str3, ""), new Object[0]);
                String stringOrNull = cLObject2.getStringOrNull(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
                if (stringOrNull != null) {
                    HashMap hashMap = new HashMap();
                    int size = cLObject2.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        CLKey cLKey = (CLKey) cLObject2.get(i);
                        String content = cLKey.content();
                        String content2 = cLKey.getValue().content();
                        if (content2 != null) {
                            hashMap.put(content, content2);
                        }
                    }
                    arrayList.add(new DesignElement(str2, stringOrNull, hashMap));
                }
            }
        }
    }

    public static Dimension parseDimension(CLObject cLObject, String str, State state, CorePixelDp corePixelDp) {
        CLElement cLElement = cLObject.get(str);
        Dimension createFixed = Dimension.createFixed(0);
        if (cLElement instanceof CLString) {
            return parseDimensionMode(cLElement.content());
        }
        if (cLElement instanceof CLNumber) {
            return Dimension.createFixed(state.convertDimension(Float.valueOf(corePixelDp.toPixels(cLObject.getFloat(str)))));
        }
        if (cLElement instanceof CLObject) {
            CLObject cLObject2 = (CLObject) cLElement;
            String stringOrNull = cLObject2.getStringOrNull("value");
            if (stringOrNull != null) {
                createFixed = parseDimensionMode(stringOrNull);
            }
            CLElement orNull = cLObject2.getOrNull("min");
            if (orNull != null) {
                if (orNull instanceof CLNumber) {
                    createFixed.min(state.convertDimension(Float.valueOf(corePixelDp.toPixels(((CLNumber) orNull).getFloat()))));
                } else if (orNull instanceof CLString) {
                    createFixed.min(Dimension.WRAP_DIMENSION);
                }
            }
            CLElement orNull2 = cLObject2.getOrNull("max");
            if (orNull2 != null) {
                if (orNull2 instanceof CLNumber) {
                    createFixed.max(state.convertDimension(Float.valueOf(corePixelDp.toPixels(((CLNumber) orNull2).getFloat()))));
                    return createFixed;
                }
                if (orNull2 instanceof CLString) {
                    createFixed.max(Dimension.WRAP_DIMENSION);
                    return createFixed;
                }
                return createFixed;
            }
            return createFixed;
        }
        return createFixed;
    }

    public static Dimension parseDimensionMode(String str) {
        Dimension createFixed = Dimension.createFixed(0);
        str.getClass();
        char c = 65535;
        switch (str.hashCode()) {
            case -1460244870:
                if (str.equals("preferWrap")) {
                    c = 0;
                    break;
                }
                break;
            case -995424086:
                if (str.equals("parent")) {
                    c = 1;
                    break;
                }
                break;
            case -895684237:
                if (str.equals("spread")) {
                    c = 2;
                    break;
                }
                break;
            case 3657802:
                if (str.equals("wrap")) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return Dimension.createSuggested(Dimension.WRAP_DIMENSION);
            case 1:
                return Dimension.createParent();
            case 2:
                return Dimension.createSuggested(Dimension.SPREAD_DIMENSION);
            case 3:
                return Dimension.createWrap();
            default:
                if (str.endsWith("%")) {
                    return Dimension.createPercent(0, Float.parseFloat(str.substring(0, str.indexOf(37))) / 100.0f).suggested(0);
                }
                if (str.contains(":")) {
                    return Dimension.createRatio(str).suggested(Dimension.SPREAD_DIMENSION);
                }
                return createFixed;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0310  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x044d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x03b7 A[Catch: NumberFormatException -> 0x0243, TryCatch #1 {NumberFormatException -> 0x0243, blocks: (B:69:0x022c, B:71:0x023b, B:72:0x0246, B:74:0x024e, B:145:0x03a8, B:147:0x03b7, B:148:0x03be, B:150:0x03c6), top: B:68:0x022c }] */
    /* JADX WARN: Removed duplicated region for block: B:150:0x03c6 A[Catch: NumberFormatException -> 0x0243, TRY_LEAVE, TryCatch #1 {NumberFormatException -> 0x0243, blocks: (B:69:0x022c, B:71:0x023b, B:72:0x0246, B:74:0x024e, B:145:0x03a8, B:147:0x03b7, B:148:0x03be, B:150:0x03c6), top: B:68:0x022c }] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x044d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0403  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0410  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x041d  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x044d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x023b A[Catch: NumberFormatException -> 0x0243, TryCatch #1 {NumberFormatException -> 0x0243, blocks: (B:69:0x022c, B:71:0x023b, B:72:0x0246, B:74:0x024e, B:145:0x03a8, B:147:0x03b7, B:148:0x03be, B:150:0x03c6), top: B:68:0x022c }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x024e A[Catch: NumberFormatException -> 0x0243, TRY_LEAVE, TryCatch #1 {NumberFormatException -> 0x0243, blocks: (B:69:0x022c, B:71:0x023b, B:72:0x0246, B:74:0x024e, B:145:0x03a8, B:147:0x03b7, B:148:0x03be, B:150:0x03c6), top: B:68:0x022c }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x044d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void parseFlowType(String str, State state, String str2, LayoutVariables layoutVariables, CLObject cLObject) {
        boolean z;
        char c;
        String content;
        String str3;
        String str4;
        Float valueOf;
        char c2;
        String content2;
        String str5;
        String str6;
        float f;
        float f2;
        float f3;
        float f4;
        Float valueOf2;
        float f5;
        float f6;
        float f7;
        float f8;
        int i = 4;
        if (str.charAt(0) == 'v') {
            z = true;
        } else {
            z = false;
        }
        FlowReference flow = state.getFlow(str2, z);
        Iterator<String> it = cLObject.names().iterator();
        while (it.hasNext()) {
            String next = it.next();
            next.getClass();
            switch (next.hashCode()) {
                case -1254185091:
                    if (next.equals("hAlign")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1237307863:
                    if (next.equals("hStyle")) {
                        c = 1;
                        break;
                    }
                    break;
                case -1198076529:
                    if (next.equals("hFlowBias")) {
                        c = 2;
                        break;
                    }
                    break;
                case -853376977:
                    if (next.equals("vAlign")) {
                        c = 3;
                        break;
                    }
                    break;
                case -836499749:
                    if (next.equals("vStyle")) {
                        c = 4;
                        break;
                    }
                    break;
                case -806339567:
                    if (next.equals("padding")) {
                        c = 5;
                        break;
                    }
                    break;
                case -732635235:
                    if (next.equals("vFlowBias")) {
                        c = 6;
                        break;
                    }
                    break;
                case -567445985:
                    if (next.equals("contains")) {
                        c = 7;
                        break;
                    }
                    break;
                case -488900360:
                    if (next.equals("maxElement")) {
                        c = '\b';
                        break;
                    }
                    break;
                case 3169614:
                    if (next.equals("hGap")) {
                        c = '\t';
                        break;
                    }
                    break;
                case 3575610:
                    if (next.equals(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)) {
                        c = '\n';
                        break;
                    }
                    break;
                case 3586688:
                    if (next.equals("vGap")) {
                        c = 11;
                        break;
                    }
                    break;
                case 3657802:
                    if (next.equals("wrap")) {
                        c = '\f';
                        break;
                    }
                    break;
            }
            c = 65535;
            switch (c) {
                case 0:
                    String content3 = cLObject.get(next).content();
                    content3.getClass();
                    if (!content3.equals("end")) {
                        if (!content3.equals("start")) {
                            flow.setHorizontalAlign(2);
                            break;
                        } else {
                            flow.setHorizontalAlign(0);
                            break;
                        }
                    } else {
                        flow.setHorizontalAlign(1);
                        break;
                    }
                case 1:
                    CLElement cLElement = cLObject.get(next);
                    if (cLElement instanceof CLArray) {
                        CLArray cLArray = (CLArray) cLElement;
                        if (cLArray.size() > 1) {
                            str3 = cLArray.getString(0);
                            content = cLArray.getString(1);
                            if (cLArray.size() <= 2) {
                                str4 = "";
                            } else {
                                str4 = cLArray.getString(2);
                            }
                            if (!content.equals("")) {
                                flow.setHorizontalStyle(State.Chain.getValueByString(content));
                            }
                            if (!str3.equals("")) {
                                flow.setFirstHorizontalStyle(State.Chain.getValueByString(str3));
                            }
                            if (!str4.equals("")) {
                                break;
                            } else {
                                flow.setLastHorizontalStyle(State.Chain.getValueByString(str4));
                                break;
                            }
                        }
                    }
                    content = cLElement.content();
                    str3 = "";
                    str4 = str3;
                    if (!content.equals("")) {
                    }
                    if (!str3.equals("")) {
                    }
                    if (!str4.equals("")) {
                    }
                case 2:
                    CLElement cLElement2 = cLObject.get(next);
                    Float valueOf3 = Float.valueOf(0.5f);
                    Float valueOf4 = Float.valueOf(0.5f);
                    if (cLElement2 instanceof CLArray) {
                        CLArray cLArray2 = (CLArray) cLElement2;
                        if (cLArray2.size() > 1) {
                            valueOf3 = Float.valueOf(cLArray2.getFloat(0));
                            valueOf = Float.valueOf(cLArray2.getFloat(1));
                            if (cLArray2.size() > 2) {
                                valueOf4 = Float.valueOf(cLArray2.getFloat(2));
                            }
                            flow.horizontalBias(valueOf.floatValue());
                            if (valueOf3.floatValue() != 0.5f) {
                                flow.setFirstHorizontalBias(valueOf3.floatValue());
                            }
                            if (valueOf4.floatValue() != 0.5f) {
                                break;
                            } else {
                                flow.setLastHorizontalBias(valueOf4.floatValue());
                                break;
                            }
                        }
                    }
                    valueOf = Float.valueOf(cLElement2.getFloat());
                    flow.horizontalBias(valueOf.floatValue());
                    if (valueOf3.floatValue() != 0.5f) {
                    }
                    if (valueOf4.floatValue() != 0.5f) {
                    }
                case 3:
                    String content4 = cLObject.get(next).content();
                    content4.getClass();
                    switch (content4.hashCode()) {
                        case -1720785339:
                            if (content4.equals("baseline")) {
                                c2 = 0;
                                break;
                            }
                            break;
                        case -1383228885:
                            if (content4.equals("bottom")) {
                                c2 = 1;
                                break;
                            }
                            break;
                        case 115029:
                            if (content4.equals("top")) {
                                c2 = 2;
                                break;
                            }
                            break;
                    }
                    c2 = 65535;
                    switch (c2) {
                        case 0:
                            flow.setVerticalAlign(3);
                            break;
                        case 1:
                            flow.setVerticalAlign(1);
                            break;
                        case 2:
                            flow.setVerticalAlign(0);
                            break;
                        default:
                            flow.setVerticalAlign(2);
                            break;
                    }
                case 4:
                    CLElement cLElement3 = cLObject.get(next);
                    if (cLElement3 instanceof CLArray) {
                        CLArray cLArray3 = (CLArray) cLElement3;
                        if (cLArray3.size() > 1) {
                            str5 = cLArray3.getString(0);
                            content2 = cLArray3.getString(1);
                            if (cLArray3.size() <= 2) {
                                str6 = "";
                            } else {
                                str6 = cLArray3.getString(2);
                            }
                            if (!content2.equals("")) {
                                flow.setVerticalStyle(State.Chain.getValueByString(content2));
                            }
                            if (!str5.equals("")) {
                                flow.setFirstVerticalStyle(State.Chain.getValueByString(str5));
                            }
                            if (!str6.equals("")) {
                                break;
                            } else {
                                flow.setLastVerticalStyle(State.Chain.getValueByString(str6));
                                break;
                            }
                        }
                    }
                    content2 = cLElement3.content();
                    str5 = "";
                    str6 = str5;
                    if (!content2.equals("")) {
                    }
                    if (!str5.equals("")) {
                    }
                    if (!str6.equals("")) {
                    }
                case 5:
                    CLElement cLElement4 = cLObject.get(next);
                    if (cLElement4 instanceof CLArray) {
                        CLArray cLArray4 = (CLArray) cLElement4;
                        if (cLArray4.size() > 1) {
                            f = cLArray4.getInt(0);
                            f4 = cLArray4.getInt(1);
                            if (cLArray4.size() > 2) {
                                f3 = cLArray4.getInt(2);
                                try {
                                    f2 = ((CLArray) cLElement4).getInt(3);
                                } catch (ArrayIndexOutOfBoundsException unused) {
                                    f2 = 0.0f;
                                }
                            } else {
                                f3 = f;
                                f2 = f4;
                            }
                            flow.setPaddingLeft(Math.round(toPix(state, f)));
                            flow.setPaddingTop(Math.round(toPix(state, f4)));
                            flow.setPaddingRight(Math.round(toPix(state, f3)));
                            flow.setPaddingBottom(Math.round(toPix(state, f2)));
                            break;
                        }
                    }
                    f = cLElement4.getInt();
                    f2 = f;
                    f3 = f2;
                    f4 = f3;
                    flow.setPaddingLeft(Math.round(toPix(state, f)));
                    flow.setPaddingTop(Math.round(toPix(state, f4)));
                    flow.setPaddingRight(Math.round(toPix(state, f3)));
                    flow.setPaddingBottom(Math.round(toPix(state, f2)));
                case 6:
                    CLElement cLElement5 = cLObject.get(next);
                    Float valueOf5 = Float.valueOf(0.5f);
                    Float valueOf6 = Float.valueOf(0.5f);
                    try {
                        if (cLElement5 instanceof CLArray) {
                            CLArray cLArray5 = (CLArray) cLElement5;
                            if (cLArray5.size() > 1) {
                                valueOf5 = Float.valueOf(cLArray5.getFloat(0));
                                valueOf2 = Float.valueOf(cLArray5.getFloat(1));
                                if (cLArray5.size() > 2) {
                                    valueOf6 = Float.valueOf(cLArray5.getFloat(2));
                                }
                                flow.verticalBias(valueOf2.floatValue());
                                if (valueOf5.floatValue() != 0.5f) {
                                    flow.setFirstVerticalBias(valueOf5.floatValue());
                                }
                                if (valueOf6.floatValue() != 0.5f) {
                                    break;
                                } else {
                                    flow.setLastVerticalBias(valueOf6.floatValue());
                                    break;
                                }
                            }
                        }
                        flow.verticalBias(valueOf2.floatValue());
                        if (valueOf5.floatValue() != 0.5f) {
                        }
                        if (valueOf6.floatValue() != 0.5f) {
                        }
                    } catch (NumberFormatException unused2) {
                        break;
                    }
                    valueOf2 = Float.valueOf(cLElement5.getFloat());
                case 7:
                    CLElement cLElement6 = cLObject.get(next);
                    if (cLElement6 instanceof CLArray) {
                        CLArray cLArray6 = (CLArray) cLElement6;
                        if (cLArray6.size() >= 1) {
                            int i2 = 0;
                            while (i2 < cLArray6.size()) {
                                CLElement cLElement7 = cLArray6.get(i2);
                                if (cLElement7 instanceof CLArray) {
                                    CLArray cLArray7 = (CLArray) cLElement7;
                                    if (cLArray7.size() > 0) {
                                        String content5 = cLArray7.get(0).content();
                                        int size = cLArray7.size();
                                        if (size != 2) {
                                            if (size != 3) {
                                                if (size != i) {
                                                    f6 = Float.NaN;
                                                    f5 = Float.NaN;
                                                } else {
                                                    f8 = cLArray7.getFloat(1);
                                                    float pix = toPix(state, cLArray7.getFloat(2));
                                                    f6 = toPix(state, cLArray7.getFloat(3));
                                                    f7 = pix;
                                                }
                                            } else {
                                                f8 = cLArray7.getFloat(1);
                                                f6 = toPix(state, cLArray7.getFloat(2));
                                                f7 = f6;
                                            }
                                            f5 = f8;
                                            flow.addFlowElement(content5, f5, f7, f6);
                                        } else {
                                            f5 = cLArray7.getFloat(1);
                                            f6 = Float.NaN;
                                        }
                                        f7 = Float.NaN;
                                        flow.addFlowElement(content5, f5, f7, f6);
                                    }
                                } else {
                                    flow.add(cLElement7.content());
                                }
                                i2++;
                                i = 4;
                            }
                            break;
                        }
                    }
                    PrintStream printStream = System.err;
                    StringBuilder m2943xc20437a5 = AbstractC0362x4440ab85.m2943xc20437a5(str2, " contains should be an array \"");
                    m2943xc20437a5.append(cLElement6.content());
                    m2943xc20437a5.append("\"");
                    printStream.println(m2943xc20437a5.toString());
                    return;
                case '\b':
                    flow.setMaxElementsWrap(cLObject.get(next).getInt());
                    break;
                case '\t':
                    flow.setHorizontalGap(cLObject.get(next).getInt());
                    break;
                case '\n':
                    if (cLObject.get(next).content().equals("hFlow")) {
                        flow.setOrientation(0);
                        break;
                    } else {
                        flow.setOrientation(1);
                        break;
                    }
                case 11:
                    flow.setVerticalGap(cLObject.get(next).getInt());
                    break;
                case '\f':
                    flow.setWrapMode(State.Wrap.getValueByString(cLObject.get(next).content()));
                    break;
                default:
                    applyAttribute(state, layoutVariables, state.constraints(str2), cLObject, next);
                    break;
            }
            i = 4;
        }
    }

    public static void parseGenerate(State state, LayoutVariables layoutVariables, CLObject cLObject) {
        ArrayList<String> names = cLObject.names();
        if (names == null) {
            return;
        }
        Iterator<String> it = names.iterator();
        while (it.hasNext()) {
            String next = it.next();
            CLElement cLElement = cLObject.get(next);
            ArrayList<String> list = layoutVariables.getList(next);
            if (list != null && (cLElement instanceof CLObject)) {
                Iterator<String> it2 = list.iterator();
                while (it2.hasNext()) {
                    parseWidget(state, layoutVariables, it2.next(), (CLObject) cLElement);
                }
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0028. Please report as an issue. */
    private static void parseGridType(String str, State state, String str2, LayoutVariables layoutVariables, CLObject cLObject) {
        float f;
        float f2;
        float f3;
        float f4;
        int i;
        CLElement cLElement;
        GridReference grid = state.getGrid(str2, str);
        Iterator<String> it = cLObject.names().iterator();
        while (it.hasNext()) {
            String next = it.next();
            next.getClass();
            char c = 65535;
            switch (next.hashCode()) {
                case -1439500848:
                    if (next.equals("orientation")) {
                        c = 0;
                        break;
                    }
                    break;
                case -806339567:
                    if (next.equals("padding")) {
                        c = 1;
                        break;
                    }
                    break;
                case -567445985:
                    if (next.equals("contains")) {
                        c = 2;
                        break;
                    }
                    break;
                case 3169614:
                    if (next.equals("hGap")) {
                        c = 3;
                        break;
                    }
                    break;
                case 3506649:
                    if (next.equals("rows")) {
                        c = 4;
                        break;
                    }
                    break;
                case 3586688:
                    if (next.equals("vGap")) {
                        c = 5;
                        break;
                    }
                    break;
                case 97513095:
                    if (next.equals("flags")) {
                        c = 6;
                        break;
                    }
                    break;
                case 109497044:
                    if (next.equals("skips")) {
                        c = 7;
                        break;
                    }
                    break;
                case 109638249:
                    if (next.equals("spans")) {
                        c = '\b';
                        break;
                    }
                    break;
                case 144441793:
                    if (next.equals("rowWeights")) {
                        c = '\t';
                        break;
                    }
                    break;
                case 949721053:
                    if (next.equals("columns")) {
                        c = '\n';
                        break;
                    }
                    break;
                case 2033353925:
                    if (next.equals("columnWeights")) {
                        c = 11;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    grid.setOrientation(cLObject.get(next).getInt());
                    break;
                case 1:
                    CLElement cLElement2 = cLObject.get(next);
                    if (cLElement2 instanceof CLArray) {
                        CLArray cLArray = (CLArray) cLElement2;
                        if (cLArray.size() > 1) {
                            f = cLArray.getInt(0);
                            f4 = cLArray.getInt(1);
                            if (cLArray.size() > 2) {
                                f3 = cLArray.getInt(2);
                                try {
                                    f2 = ((CLArray) cLElement2).getInt(3);
                                } catch (ArrayIndexOutOfBoundsException unused) {
                                    f2 = 0.0f;
                                }
                            } else {
                                f3 = f;
                                f2 = f4;
                            }
                            grid.setPaddingStart(Math.round(toPix(state, f)));
                            grid.setPaddingTop(Math.round(toPix(state, f4)));
                            grid.setPaddingEnd(Math.round(toPix(state, f3)));
                            grid.setPaddingBottom(Math.round(toPix(state, f2)));
                            break;
                        }
                    }
                    f = cLElement2.getInt();
                    f2 = f;
                    f3 = f2;
                    f4 = f3;
                    grid.setPaddingStart(Math.round(toPix(state, f)));
                    grid.setPaddingTop(Math.round(toPix(state, f4)));
                    grid.setPaddingEnd(Math.round(toPix(state, f3)));
                    grid.setPaddingBottom(Math.round(toPix(state, f2)));
                case 2:
                    CLArray arrayOrNull = cLObject.getArrayOrNull(next);
                    if (arrayOrNull != null) {
                        for (int i2 = 0; i2 < arrayOrNull.size(); i2++) {
                            grid.add(state.constraints(arrayOrNull.get(i2).content()));
                        }
                        break;
                    } else {
                        break;
                    }
                case 3:
                    grid.setHorizontalGaps(toPix(state, cLObject.get(next).getFloat()));
                    break;
                case 4:
                    int i3 = cLObject.get(next).getInt();
                    if (i3 > 0) {
                        grid.setRowsSet(i3);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    grid.setVerticalGaps(toPix(state, cLObject.get(next).getFloat()));
                    break;
                case 6:
                    String str3 = "";
                    try {
                        cLElement = cLObject.get(next);
                    } catch (Exception e) {
                        System.err.println("Error parsing grid flags " + e);
                    }
                    if (cLElement instanceof CLNumber) {
                        i = cLElement.getInt();
                        if (str3 == null && !str3.isEmpty()) {
                            grid.setFlags(str3);
                            break;
                        } else {
                            grid.setFlags(i);
                            break;
                        }
                    } else {
                        str3 = cLElement.content();
                        i = 0;
                        if (str3 == null) {
                        }
                        grid.setFlags(i);
                    }
                case 7:
                    String content = cLObject.get(next).content();
                    if (content != null && content.contains(":")) {
                        grid.setSkips(content);
                        break;
                    }
                    break;
                case '\b':
                    String content2 = cLObject.get(next).content();
                    if (content2 != null && content2.contains(":")) {
                        grid.setSpans(content2);
                        break;
                    }
                    break;
                case '\t':
                    String content3 = cLObject.get(next).content();
                    if (content3 != null && content3.contains(",")) {
                        grid.setRowWeights(content3);
                        break;
                    }
                    break;
                case '\n':
                    int i4 = cLObject.get(next).getInt();
                    if (i4 > 0) {
                        grid.setColumnsSet(i4);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    String content4 = cLObject.get(next).content();
                    if (content4 != null && content4.contains(",")) {
                        grid.setColumnWeights(content4);
                        break;
                    }
                    break;
                default:
                    applyAttribute(state, layoutVariables, state.constraints(str2), cLObject, next);
                    break;
            }
        }
    }

    public static void parseGuideline(int i, State state, CLArray cLArray) {
        CLObject cLObject;
        String stringOrNull;
        CLElement cLElement = cLArray.get(1);
        if (!(cLElement instanceof CLObject) || (stringOrNull = (cLObject = (CLObject) cLElement).getStringOrNull("id")) == null) {
            return;
        }
        parseGuidelineParams(i, state, stringOrNull, cLObject);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:19:0x0087. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:43:0x0104. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void parseGuidelineParams(int i, State state, String str, CLObject cLObject) {
        boolean z;
        char c;
        char c2;
        ArrayList<String> names = cLObject.names();
        if (names == null) {
            return;
        }
        ConstraintReference constraints = state.constraints(str);
        if (i == 0) {
            state.horizontalGuideline(str);
        } else {
            state.verticalGuideline(str);
        }
        if (state.isRtl() && i != 0) {
            z = false;
        } else {
            z = true;
        }
        GuidelineReference guidelineReference = (GuidelineReference) constraints.getFacade();
        Iterator<String> it = names.iterator();
        float f = 0.0f;
        boolean z2 = false;
        while (true) {
            boolean z3 = true;
            while (it.hasNext()) {
                String next = it.next();
                next.getClass();
                switch (next.hashCode()) {
                    case -678927291:
                        if (next.equals("percent")) {
                            c = 0;
                            break;
                        }
                        break;
                    case 100571:
                        if (next.equals("end")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 3317767:
                        if (next.equals("left")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 108511772:
                        if (next.equals("right")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 109757538:
                        if (next.equals("start")) {
                            c = 4;
                            break;
                        }
                        break;
                }
                c = 65535;
                switch (c) {
                    case 0:
                        CLArray arrayOrNull = cLObject.getArrayOrNull(next);
                        if (arrayOrNull == null) {
                            f = cLObject.getFloat(next);
                        } else {
                            if (arrayOrNull.size() > 1) {
                                String string = arrayOrNull.getString(0);
                                float f2 = arrayOrNull.getFloat(1);
                                string.getClass();
                                switch (string.hashCode()) {
                                    case 100571:
                                        if (string.equals("end")) {
                                            c2 = 0;
                                            break;
                                        }
                                        break;
                                    case 3317767:
                                        if (string.equals("left")) {
                                            c2 = 1;
                                            break;
                                        }
                                        break;
                                    case 108511772:
                                        if (string.equals("right")) {
                                            c2 = 2;
                                            break;
                                        }
                                        break;
                                    case 109757538:
                                        if (string.equals("start")) {
                                            c2 = 3;
                                            break;
                                        }
                                        break;
                                }
                                c2 = 65535;
                                switch (c2) {
                                    case 0:
                                        z3 = !z;
                                        f = f2;
                                        break;
                                    case 1:
                                        f = f2;
                                        break;
                                    case 2:
                                        f = f2;
                                        z2 = true;
                                        z3 = false;
                                    case 3:
                                        f = f2;
                                        z3 = z;
                                        break;
                                    default:
                                        f = f2;
                                        break;
                                }
                            }
                            z2 = true;
                        }
                        z2 = true;
                    case 1:
                        z3 = !z;
                        f = toPix(state, cLObject.getFloat(next));
                    case 2:
                        f = toPix(state, cLObject.getFloat(next));
                    case 3:
                        f = toPix(state, cLObject.getFloat(next));
                        z3 = false;
                    case 4:
                        f = toPix(state, cLObject.getFloat(next));
                        z3 = z;
                }
                while (it.hasNext()) {
                }
            }
            if (z2) {
                if (z3) {
                    guidelineReference.percent(f);
                    return;
                } else {
                    guidelineReference.percent(1.0f - f);
                    return;
                }
            }
            if (z3) {
                guidelineReference.start(Float.valueOf(f));
                return;
            } else {
                guidelineReference.end(Float.valueOf(f));
                return;
            }
        }
    }

    public static void parseHeader(CoreMotionScene coreMotionScene, CLObject cLObject) {
        String stringOrNull = cLObject.getStringOrNull("export");
        if (stringOrNull != null) {
            coreMotionScene.setDebugName(stringOrNull);
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x0025. Please report as an issue. */
    public static void parseHelpers(State state, LayoutVariables layoutVariables, CLArray cLArray) {
        for (int i = 0; i < cLArray.size(); i++) {
            CLElement cLElement = cLArray.get(i);
            if (cLElement instanceof CLArray) {
                CLArray cLArray2 = (CLArray) cLElement;
                if (cLArray2.size() > 1) {
                    String string = cLArray2.getString(0);
                    string.getClass();
                    char c = 65535;
                    switch (string.hashCode()) {
                        case -1785507558:
                            if (string.equals("vGuideline")) {
                                c = 0;
                                break;
                            }
                            break;
                        case -1252464839:
                            if (string.equals("hChain")) {
                                c = 1;
                                break;
                            }
                            break;
                        case -851656725:
                            if (string.equals("vChain")) {
                                c = 2;
                                break;
                            }
                            break;
                        case 965681512:
                            if (string.equals("hGuideline")) {
                                c = 3;
                                break;
                            }
                            break;
                    }
                    switch (c) {
                        case 0:
                            parseGuideline(1, state, cLArray2);
                            break;
                        case 1:
                            parseChain(0, state, layoutVariables, cLArray2);
                            break;
                        case 2:
                            parseChain(1, state, layoutVariables, cLArray2);
                            break;
                        case 3:
                            parseGuideline(0, state, cLArray2);
                            break;
                    }
                }
            }
        }
    }

    public static void parseJSON(String str, Transition transition, int i) {
        CLObject objectOrNull;
        try {
            CLObject parse = CLParser.parse(str);
            ArrayList<String> names = parse.names();
            if (names == null) {
                return;
            }
            Iterator<String> it = names.iterator();
            while (it.hasNext()) {
                String next = it.next();
                CLElement cLElement = parse.get(next);
                if ((cLElement instanceof CLObject) && (objectOrNull = ((CLObject) cLElement).getObjectOrNull("custom")) != null) {
                    Iterator<String> it2 = objectOrNull.names().iterator();
                    while (it2.hasNext()) {
                        String next2 = it2.next();
                        CLElement cLElement2 = objectOrNull.get(next2);
                        if (cLElement2 instanceof CLNumber) {
                            transition.addCustomFloat(i, next, next2, cLElement2.getFloat());
                        } else if (cLElement2 instanceof CLString) {
                            long parseColorString = parseColorString(cLElement2.content());
                            if (parseColorString != -1) {
                                transition.addCustomColor(i, next, next2, (int) parseColorString);
                            }
                        }
                    }
                }
            }
        } catch (CLParsingException e) {
            System.err.println("Error parsing JSON " + e);
        }
    }

    private static void parseMotionProperties(CLElement cLElement, ConstraintReference constraintReference) {
        char c;
        if (!(cLElement instanceof CLObject)) {
            return;
        }
        CLObject cLObject = (CLObject) cLElement;
        TypedBundle typedBundle = new TypedBundle();
        ArrayList<String> names = cLObject.names();
        if (names == null) {
            return;
        }
        Iterator<String> it = names.iterator();
        while (it.hasNext()) {
            String next = it.next();
            next.getClass();
            switch (next.hashCode()) {
                case -1897525331:
                    if (next.equals("stagger")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1310311125:
                    if (next.equals("easing")) {
                        c = 1;
                        break;
                    }
                    break;
                case -1285003983:
                    if (next.equals("quantize")) {
                        c = 2;
                        break;
                    }
                    break;
                case -791482387:
                    if (next.equals("pathArc")) {
                        c = 3;
                        break;
                    }
                    break;
                case -236944793:
                    if (next.equals("relativeTo")) {
                        c = 4;
                        break;
                    }
                    break;
            }
            c = 65535;
            switch (c) {
                case 0:
                    typedBundle.add(600, cLObject.getFloat(next));
                    break;
                case 1:
                    typedBundle.add(TypedValues.MotionType.TYPE_EASING, cLObject.getString(next));
                    break;
                case 2:
                    CLElement cLElement2 = cLObject.get(next);
                    if (cLElement2 instanceof CLArray) {
                        CLArray cLArray = (CLArray) cLElement2;
                        int size = cLArray.size();
                        if (size <= 0) {
                            break;
                        } else {
                            typedBundle.add(TypedValues.MotionType.TYPE_QUANTIZE_MOTIONSTEPS, cLArray.getInt(0));
                            if (size <= 1) {
                                break;
                            } else {
                                typedBundle.add(TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR_TYPE, cLArray.getString(1));
                                if (size <= 2) {
                                    break;
                                } else {
                                    typedBundle.add(TypedValues.MotionType.TYPE_QUANTIZE_MOTION_PHASE, cLArray.getFloat(2));
                                    break;
                                }
                            }
                        }
                    } else {
                        typedBundle.add(TypedValues.MotionType.TYPE_QUANTIZE_MOTIONSTEPS, cLObject.getInt(next));
                        break;
                    }
                case 3:
                    String string = cLObject.getString(next);
                    int indexOf = indexOf(string, "none", "startVertical", "startHorizontal", "flip", "below", "above");
                    if (indexOf == -1) {
                        System.err.println(cLObject.getLine() + " pathArc = '" + string + "'");
                        break;
                    } else {
                        typedBundle.add(TypedValues.MotionType.TYPE_PATHMOTION_ARC, indexOf);
                        break;
                    }
                case 4:
                    typedBundle.add(TypedValues.MotionType.TYPE_ANIMATE_RELATIVE_TO, cLObject.getString(next));
                    break;
            }
        }
        constraintReference.mMotionProperties = typedBundle;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x006b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void parseMotionSceneJSON(CoreMotionScene coreMotionScene, String str) {
        char c;
        try {
            CLObject parse = CLParser.parse(str);
            ArrayList<String> names = parse.names();
            if (names == null) {
                return;
            }
            Iterator<String> it = names.iterator();
            while (it.hasNext()) {
                String next = it.next();
                CLElement cLElement = parse.get(next);
                if (cLElement instanceof CLObject) {
                    CLObject cLObject = (CLObject) cLElement;
                    int hashCode = next.hashCode();
                    if (hashCode != -2137403731) {
                        if (hashCode != -241441378) {
                            if (hashCode == 1101852654 && next.equals("ConstraintSets")) {
                                c = 0;
                                if (c == 0) {
                                    if (c != 1) {
                                        if (c == 2) {
                                            parseHeader(coreMotionScene, cLObject);
                                        }
                                    } else {
                                        parseTransitions(coreMotionScene, cLObject);
                                    }
                                } else {
                                    parseConstraintSets(coreMotionScene, cLObject);
                                }
                            }
                            c = 65535;
                            if (c == 0) {
                            }
                        } else {
                            if (next.equals(TypedValues.TransitionType.NAME)) {
                                c = 1;
                                if (c == 0) {
                                }
                            }
                            c = 65535;
                            if (c == 0) {
                            }
                        }
                    } else {
                        if (next.equals("Header")) {
                            c = 2;
                            if (c == 0) {
                            }
                        }
                        c = 65535;
                        if (c == 0) {
                        }
                    }
                }
            }
        } catch (CLParsingException e) {
            System.err.println("Error parsing JSON " + e);
        }
    }

    public static void parseTransitions(CoreMotionScene coreMotionScene, CLObject cLObject) {
        ArrayList<String> names = cLObject.names();
        if (names == null) {
            return;
        }
        Iterator<String> it = names.iterator();
        while (it.hasNext()) {
            String next = it.next();
            coreMotionScene.setTransitionContent(next, cLObject.getObject(next).toJSON());
        }
    }

    private static void parseVariables(State state, LayoutVariables layoutVariables, CLObject cLObject) {
        ArrayList<String> names = cLObject.names();
        if (names == null) {
            return;
        }
        Iterator<String> it = names.iterator();
        while (it.hasNext()) {
            String next = it.next();
            CLElement cLElement = cLObject.get(next);
            if (cLElement instanceof CLNumber) {
                layoutVariables.put(next, cLElement.getInt());
            } else if (cLElement instanceof CLObject) {
                CLObject cLObject2 = (CLObject) cLElement;
                if (cLObject2.has(TypedValues.TransitionType.S_FROM) && cLObject2.has(TypedValues.TransitionType.S_TO)) {
                    layoutVariables.put(next, layoutVariables.get(cLObject2.get(TypedValues.TransitionType.S_FROM)), layoutVariables.get(cLObject2.get(TypedValues.TransitionType.S_TO)), 1.0f, cLObject2.getStringOrNull("prefix"), cLObject2.getStringOrNull("postfix"));
                } else if (cLObject2.has(TypedValues.TransitionType.S_FROM) && cLObject2.has("step")) {
                    layoutVariables.put(next, layoutVariables.get(cLObject2.get(TypedValues.TransitionType.S_FROM)), layoutVariables.get(cLObject2.get("step")));
                } else if (cLObject2.has("ids")) {
                    CLArray array = cLObject2.getArray("ids");
                    ArrayList<String> arrayList = new ArrayList<>();
                    for (int i = 0; i < array.size(); i++) {
                        arrayList.add(array.getString(i));
                    }
                    layoutVariables.put(next, arrayList);
                } else if (cLObject2.has("tag")) {
                    layoutVariables.put(next, state.getIdsForTag(cLObject2.getString("tag")));
                }
            }
        }
    }

    public static void parseWidget(State state, LayoutVariables layoutVariables, String str, CLObject cLObject) {
        parseWidget(state, layoutVariables, state.constraints(str), cLObject);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static void populateState(@NonNull CLObject cLObject, @NonNull State state, @NonNull LayoutVariables layoutVariables) {
        char c;
        char c2;
        ArrayList<String> names = cLObject.names();
        if (names == null) {
            return;
        }
        Iterator<String> it = names.iterator();
        while (it.hasNext()) {
            String next = it.next();
            CLElement cLElement = cLObject.get(next);
            next.getClass();
            switch (next.hashCode()) {
                case -1824489883:
                    if (next.equals("Helpers")) {
                        c = 0;
                        break;
                    }
                    break;
                case 1875016085:
                    if (next.equals("Generate")) {
                        c = 1;
                        break;
                    }
                    break;
                case 1921490263:
                    if (next.equals("Variables")) {
                        c = 2;
                        break;
                    }
                    break;
            }
            c = 65535;
            switch (c) {
                case 0:
                    if (!(cLElement instanceof CLArray)) {
                        break;
                    } else {
                        parseHelpers(state, layoutVariables, (CLArray) cLElement);
                        break;
                    }
                case 1:
                    if (!(cLElement instanceof CLObject)) {
                        break;
                    } else {
                        parseGenerate(state, layoutVariables, (CLObject) cLElement);
                        break;
                    }
                case 2:
                    if (!(cLElement instanceof CLObject)) {
                        break;
                    } else {
                        parseVariables(state, layoutVariables, (CLObject) cLElement);
                        break;
                    }
                default:
                    if (cLElement instanceof CLObject) {
                        CLObject cLObject2 = (CLObject) cLElement;
                        String lookForType = lookForType(cLObject2);
                        if (lookForType != null) {
                            switch (lookForType.hashCode()) {
                                case -1785507558:
                                    if (lookForType.equals("vGuideline")) {
                                        c2 = 0;
                                        break;
                                    }
                                    break;
                                case -1354837162:
                                    if (lookForType.equals("column")) {
                                        c2 = 1;
                                        break;
                                    }
                                    break;
                                case -1252464839:
                                    if (lookForType.equals("hChain")) {
                                        c2 = 2;
                                        break;
                                    }
                                    break;
                                case -851656725:
                                    if (lookForType.equals("vChain")) {
                                        c2 = 3;
                                        break;
                                    }
                                    break;
                                case -333143113:
                                    if (lookForType.equals("barrier")) {
                                        c2 = 4;
                                        break;
                                    }
                                    break;
                                case 113114:
                                    if (lookForType.equals("row")) {
                                        c2 = 5;
                                        break;
                                    }
                                    break;
                                case 3181382:
                                    if (lookForType.equals("grid")) {
                                        c2 = 6;
                                        break;
                                    }
                                    break;
                                case 98238902:
                                    if (lookForType.equals("hFlow")) {
                                        c2 = 7;
                                        break;
                                    }
                                    break;
                                case 111168196:
                                    if (lookForType.equals("vFlow")) {
                                        c2 = '\b';
                                        break;
                                    }
                                    break;
                                case 965681512:
                                    if (lookForType.equals("hGuideline")) {
                                        c2 = '\t';
                                        break;
                                    }
                                    break;
                            }
                            c2 = 65535;
                            switch (c2) {
                                case 0:
                                    parseGuidelineParams(1, state, next, cLObject2);
                                    break;
                                case 1:
                                case 5:
                                case 6:
                                    parseGridType(lookForType, state, next, layoutVariables, cLObject2);
                                    break;
                                case 2:
                                case 3:
                                    parseChainType(lookForType, state, next, layoutVariables, cLObject2);
                                    break;
                                case 4:
                                    parseBarrier(state, next, cLObject2);
                                    break;
                                case 7:
                                case '\b':
                                    parseFlowType(lookForType, state, next, layoutVariables, cLObject2);
                                    break;
                                case '\t':
                                    parseGuidelineParams(0, state, next, cLObject2);
                                    break;
                            }
                        } else {
                            parseWidget(state, layoutVariables, next, cLObject2);
                            break;
                        }
                    } else if (!(cLElement instanceof CLNumber)) {
                        break;
                    } else {
                        layoutVariables.put(next, cLElement.getInt());
                        break;
                    }
            }
        }
    }

    private static float toPix(State state, float f) {
        return state.getDpToPixel().toPixels(f);
    }

    public static void parseWidget(State state, LayoutVariables layoutVariables, ConstraintReference constraintReference, CLObject cLObject) {
        if (constraintReference.getWidth() == null) {
            constraintReference.setWidth(Dimension.createWrap());
        }
        if (constraintReference.getHeight() == null) {
            constraintReference.setHeight(Dimension.createWrap());
        }
        ArrayList<String> names = cLObject.names();
        if (names == null) {
            return;
        }
        Iterator<String> it = names.iterator();
        while (it.hasNext()) {
            applyAttribute(state, layoutVariables, constraintReference, cLObject, it.next());
        }
    }

    public static void parseJSON(String str, State state, LayoutVariables layoutVariables) {
        try {
            populateState(CLParser.parse(str), state, layoutVariables);
        } catch (CLParsingException e) {
            System.err.println("Error parsing JSON " + e);
        }
    }
}
