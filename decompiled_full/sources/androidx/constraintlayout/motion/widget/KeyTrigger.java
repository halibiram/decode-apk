package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.R;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;

/* loaded from: classes.dex */
public class KeyTrigger extends Key {
    public static final String CROSS = "CROSS";
    public static final int KEY_TYPE = 5;
    static final String NAME = "KeyTrigger";
    public static final String NEGATIVE_CROSS = "negativeCross";
    public static final String POSITIVE_CROSS = "positiveCross";
    public static final String POST_LAYOUT = "postLayout";
    private static final String TAG = "KeyTrigger";
    public static final String TRIGGER_COLLISION_ID = "triggerCollisionId";
    public static final String TRIGGER_COLLISION_VIEW = "triggerCollisionView";
    public static final String TRIGGER_ID = "triggerID";
    public static final String TRIGGER_RECEIVER = "triggerReceiver";
    public static final String TRIGGER_SLACK = "triggerSlack";
    public static final String VIEW_TRANSITION_ON_CROSS = "viewTransitionOnCross";
    public static final String VIEW_TRANSITION_ON_NEGATIVE_CROSS = "viewTransitionOnNegativeCross";
    public static final String VIEW_TRANSITION_ON_POSITIVE_CROSS = "viewTransitionOnPositiveCross";
    RectF mCollisionRect;
    private String mCross;
    private int mCurveFit;
    private boolean mFireCrossReset;
    private float mFireLastPos;
    private boolean mFireNegativeReset;
    private boolean mFirePositiveReset;
    private float mFireThreshold;
    HashMap<String, Method> mMethodHashMap;
    private String mNegativeCross;
    private String mPositiveCross;
    private boolean mPostLayout;
    RectF mTargetRect;
    private int mTriggerCollisionId;
    private View mTriggerCollisionView;
    private int mTriggerID;
    private int mTriggerReceiver;
    float mTriggerSlack = 0.1f;
    int mViewTransitionOnCross;
    int mViewTransitionOnNegativeCross;
    int mViewTransitionOnPositiveCross;

    /* loaded from: classes.dex */
    public static class Loader {
        private static final int COLLISION = 9;
        private static final int CROSS = 4;
        private static final int FRAME_POS = 8;
        private static final int NEGATIVE_CROSS = 1;
        private static final int POSITIVE_CROSS = 2;
        private static final int POST_LAYOUT = 10;
        private static final int TARGET_ID = 7;
        private static final int TRIGGER_ID = 6;
        private static final int TRIGGER_RECEIVER = 11;
        private static final int TRIGGER_SLACK = 5;
        private static final int VT_CROSS = 12;
        private static final int VT_NEGATIVE_CROSS = 13;
        private static final int VT_POSITIVE_CROSS = 14;
        private static SparseIntArray sAttrMap;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            sAttrMap = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyTrigger_framePosition, 8);
            sAttrMap.append(R.styleable.KeyTrigger_onCross, 4);
            sAttrMap.append(R.styleable.KeyTrigger_onNegativeCross, 1);
            sAttrMap.append(R.styleable.KeyTrigger_onPositiveCross, 2);
            sAttrMap.append(R.styleable.KeyTrigger_motionTarget, 7);
            sAttrMap.append(R.styleable.KeyTrigger_triggerId, 6);
            sAttrMap.append(R.styleable.KeyTrigger_triggerSlack, 5);
            sAttrMap.append(R.styleable.KeyTrigger_motion_triggerOnCollision, 9);
            sAttrMap.append(R.styleable.KeyTrigger_motion_postLayoutCollision, 10);
            sAttrMap.append(R.styleable.KeyTrigger_triggerReceiver, 11);
            sAttrMap.append(R.styleable.KeyTrigger_viewTransitionOnCross, 12);
            sAttrMap.append(R.styleable.KeyTrigger_viewTransitionOnNegativeCross, 13);
            sAttrMap.append(R.styleable.KeyTrigger_viewTransitionOnPositiveCross, 14);
        }

        private Loader() {
        }

        public static void read(KeyTrigger keyTrigger, TypedArray typedArray, Context context) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                switch (sAttrMap.get(index)) {
                    case 1:
                        keyTrigger.mNegativeCross = typedArray.getString(index);
                        break;
                    case 2:
                        keyTrigger.mPositiveCross = typedArray.getString(index);
                        break;
                    case 3:
                    default:
                        Integer.toHexString(index);
                        sAttrMap.get(index);
                        break;
                    case 4:
                        keyTrigger.mCross = typedArray.getString(index);
                        break;
                    case 5:
                        keyTrigger.mTriggerSlack = typedArray.getFloat(index, keyTrigger.mTriggerSlack);
                        break;
                    case 6:
                        keyTrigger.mTriggerID = typedArray.getResourceId(index, keyTrigger.mTriggerID);
                        break;
                    case 7:
                        if (MotionLayout.IS_IN_EDIT_MODE) {
                            int resourceId = typedArray.getResourceId(index, keyTrigger.mTargetId);
                            keyTrigger.mTargetId = resourceId;
                            if (resourceId == -1) {
                                keyTrigger.mTargetString = typedArray.getString(index);
                                break;
                            } else {
                                break;
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            keyTrigger.mTargetString = typedArray.getString(index);
                            break;
                        } else {
                            keyTrigger.mTargetId = typedArray.getResourceId(index, keyTrigger.mTargetId);
                            break;
                        }
                    case 8:
                        int integer = typedArray.getInteger(index, keyTrigger.mFramePosition);
                        keyTrigger.mFramePosition = integer;
                        keyTrigger.mFireThreshold = (integer + 0.5f) / 100.0f;
                        break;
                    case 9:
                        keyTrigger.mTriggerCollisionId = typedArray.getResourceId(index, keyTrigger.mTriggerCollisionId);
                        break;
                    case 10:
                        keyTrigger.mPostLayout = typedArray.getBoolean(index, keyTrigger.mPostLayout);
                        break;
                    case 11:
                        keyTrigger.mTriggerReceiver = typedArray.getResourceId(index, keyTrigger.mTriggerReceiver);
                        break;
                    case 12:
                        keyTrigger.mViewTransitionOnCross = typedArray.getResourceId(index, keyTrigger.mViewTransitionOnCross);
                        break;
                    case 13:
                        keyTrigger.mViewTransitionOnNegativeCross = typedArray.getResourceId(index, keyTrigger.mViewTransitionOnNegativeCross);
                        break;
                    case 14:
                        keyTrigger.mViewTransitionOnPositiveCross = typedArray.getResourceId(index, keyTrigger.mViewTransitionOnPositiveCross);
                        break;
                }
            }
        }
    }

    public KeyTrigger() {
        int i = Key.UNSET;
        this.mViewTransitionOnNegativeCross = i;
        this.mViewTransitionOnPositiveCross = i;
        this.mViewTransitionOnCross = i;
        this.mCollisionRect = new RectF();
        this.mTargetRect = new RectF();
        this.mMethodHashMap = new HashMap<>();
        this.mCurveFit = -1;
        this.mCross = null;
        int i2 = Key.UNSET;
        this.mTriggerReceiver = i2;
        this.mNegativeCross = null;
        this.mPositiveCross = null;
        this.mTriggerID = i2;
        this.mTriggerCollisionId = i2;
        this.mTriggerCollisionView = null;
        this.mFireCrossReset = true;
        this.mFireNegativeReset = true;
        this.mFirePositiveReset = true;
        this.mFireThreshold = Float.NaN;
        this.mPostLayout = false;
        this.mType = 5;
        this.mCustomConstraints = new HashMap<>();
    }

    private void fire(String str, View view) {
        Method method;
        if (str == null) {
            return;
        }
        if (str.startsWith(".")) {
            fireCustom(str, view);
            return;
        }
        if (this.mMethodHashMap.containsKey(str)) {
            method = this.mMethodHashMap.get(str);
            if (method == null) {
                return;
            }
        } else {
            method = null;
        }
        if (method == null) {
            try {
                method = view.getClass().getMethod(str, null);
                this.mMethodHashMap.put(str, method);
            } catch (NoSuchMethodException unused) {
                this.mMethodHashMap.put(str, null);
                view.getClass();
                Debug.getName(view);
                return;
            }
        }
        try {
            method.invoke(view, null);
        } catch (Exception unused2) {
            view.getClass();
            Debug.getName(view);
        }
    }

    private void fireCustom(String str, View view) {
        boolean z;
        if (str.length() == 1) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            str = str.substring(1).toLowerCase(Locale.ROOT);
        }
        for (String str2 : this.mCustomConstraints.keySet()) {
            String lowerCase = str2.toLowerCase(Locale.ROOT);
            if (z || lowerCase.matches(str)) {
                ConstraintAttribute constraintAttribute = this.mCustomConstraints.get(str2);
                if (constraintAttribute != null) {
                    constraintAttribute.applyCustom(view);
                }
            }
        }
    }

    private void setUpRect(RectF rectF, View view, boolean z) {
        rectF.top = view.getTop();
        rectF.bottom = view.getBottom();
        rectF.left = view.getLeft();
        rectF.right = view.getRight();
        if (z) {
            view.getMatrix().mapRect(rectF);
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void addValues(HashMap<String, ViewSpline> hashMap) {
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00a2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void conditionallyFire(float f, View view) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        View findViewById;
        boolean z6;
        if (this.mTriggerCollisionId != Key.UNSET) {
            if (this.mTriggerCollisionView == null) {
                this.mTriggerCollisionView = ((ViewGroup) view.getParent()).findViewById(this.mTriggerCollisionId);
            }
            setUpRect(this.mCollisionRect, this.mTriggerCollisionView, this.mPostLayout);
            setUpRect(this.mTargetRect, view, this.mPostLayout);
            if (this.mCollisionRect.intersect(this.mTargetRect)) {
                if (this.mFireCrossReset) {
                    this.mFireCrossReset = false;
                    z = true;
                } else {
                    z = false;
                }
                if (this.mFirePositiveReset) {
                    this.mFirePositiveReset = false;
                    z6 = true;
                } else {
                    z6 = false;
                }
                this.mFireNegativeReset = true;
                z5 = z6;
                z3 = false;
            } else {
                if (!this.mFireCrossReset) {
                    this.mFireCrossReset = true;
                    z = true;
                } else {
                    z = false;
                }
                if (this.mFireNegativeReset) {
                    this.mFireNegativeReset = false;
                    z3 = true;
                } else {
                    z3 = false;
                }
                this.mFirePositiveReset = true;
                z5 = false;
            }
        } else {
            if (this.mFireCrossReset) {
                float f2 = this.mFireThreshold;
                if ((this.mFireLastPos - f2) * (f - f2) < 0.0f) {
                    this.mFireCrossReset = false;
                    z = true;
                    if (!this.mFireNegativeReset) {
                        float f3 = this.mFireThreshold;
                        float f4 = f - f3;
                        if ((this.mFireLastPos - f3) * f4 < 0.0f && f4 < 0.0f) {
                            this.mFireNegativeReset = false;
                            z2 = true;
                            if (this.mFirePositiveReset) {
                                float f5 = this.mFireThreshold;
                                float f6 = f - f5;
                                if ((this.mFireLastPos - f5) * f6 < 0.0f && f6 > 0.0f) {
                                    this.mFirePositiveReset = false;
                                    z4 = true;
                                } else {
                                    z4 = false;
                                }
                                boolean z7 = z2;
                                z5 = z4;
                                z3 = z7;
                            } else {
                                if (Math.abs(f - this.mFireThreshold) > this.mTriggerSlack) {
                                    this.mFirePositiveReset = true;
                                }
                                z3 = z2;
                                z5 = false;
                            }
                        }
                    } else if (Math.abs(f - this.mFireThreshold) > this.mTriggerSlack) {
                        this.mFireNegativeReset = true;
                    }
                    z2 = false;
                    if (this.mFirePositiveReset) {
                    }
                }
            } else if (Math.abs(f - this.mFireThreshold) > this.mTriggerSlack) {
                this.mFireCrossReset = true;
            }
            z = false;
            if (!this.mFireNegativeReset) {
            }
            z2 = false;
            if (this.mFirePositiveReset) {
            }
        }
        this.mFireLastPos = f;
        if (z3 || z || z5) {
            ((MotionLayout) view.getParent()).fireTrigger(this.mTriggerID, z5, f);
        }
        if (this.mTriggerReceiver == Key.UNSET) {
            findViewById = view;
        } else {
            findViewById = ((MotionLayout) view.getParent()).findViewById(this.mTriggerReceiver);
        }
        if (z3) {
            String str = this.mNegativeCross;
            if (str != null) {
                fire(str, findViewById);
            }
            if (this.mViewTransitionOnNegativeCross != Key.UNSET) {
                ((MotionLayout) view.getParent()).viewTransition(this.mViewTransitionOnNegativeCross, findViewById);
            }
        }
        if (z5) {
            String str2 = this.mPositiveCross;
            if (str2 != null) {
                fire(str2, findViewById);
            }
            if (this.mViewTransitionOnPositiveCross != Key.UNSET) {
                ((MotionLayout) view.getParent()).viewTransition(this.mViewTransitionOnPositiveCross, findViewById);
            }
        }
        if (z) {
            String str3 = this.mCross;
            if (str3 != null) {
                fire(str3, findViewById);
            }
            if (this.mViewTransitionOnCross != Key.UNSET) {
                ((MotionLayout) view.getParent()).viewTransition(this.mViewTransitionOnCross, findViewById);
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public Key copy(Key key) {
        super.copy(key);
        KeyTrigger keyTrigger = (KeyTrigger) key;
        this.mCurveFit = keyTrigger.mCurveFit;
        this.mCross = keyTrigger.mCross;
        this.mTriggerReceiver = keyTrigger.mTriggerReceiver;
        this.mNegativeCross = keyTrigger.mNegativeCross;
        this.mPositiveCross = keyTrigger.mPositiveCross;
        this.mTriggerID = keyTrigger.mTriggerID;
        this.mTriggerCollisionId = keyTrigger.mTriggerCollisionId;
        this.mTriggerCollisionView = keyTrigger.mTriggerCollisionView;
        this.mTriggerSlack = keyTrigger.mTriggerSlack;
        this.mFireCrossReset = keyTrigger.mFireCrossReset;
        this.mFireNegativeReset = keyTrigger.mFireNegativeReset;
        this.mFirePositiveReset = keyTrigger.mFirePositiveReset;
        this.mFireThreshold = keyTrigger.mFireThreshold;
        this.mFireLastPos = keyTrigger.mFireLastPos;
        this.mPostLayout = keyTrigger.mPostLayout;
        this.mCollisionRect = keyTrigger.mCollisionRect;
        this.mTargetRect = keyTrigger.mTargetRect;
        this.mMethodHashMap = keyTrigger.mMethodHashMap;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void getAttributeNames(HashSet<String> hashSet) {
    }

    public int getCurveFit() {
        return this.mCurveFit;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void load(Context context, AttributeSet attributeSet) {
        Loader.read(this, context.obtainStyledAttributes(attributeSet, R.styleable.KeyTrigger), context);
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void setValue(String str, Object obj) {
        str.getClass();
        char c = 65535;
        switch (str.hashCode()) {
            case -1594793529:
                if (str.equals("positiveCross")) {
                    c = 0;
                    break;
                }
                break;
            case -966421266:
                if (str.equals("viewTransitionOnPositiveCross")) {
                    c = 1;
                    break;
                }
                break;
            case -786670827:
                if (str.equals("triggerCollisionId")) {
                    c = 2;
                    break;
                }
                break;
            case -648752941:
                if (str.equals("triggerID")) {
                    c = 3;
                    break;
                }
                break;
            case -638126837:
                if (str.equals("negativeCross")) {
                    c = 4;
                    break;
                }
                break;
            case -76025313:
                if (str.equals("triggerCollisionView")) {
                    c = 5;
                    break;
                }
                break;
            case -9754574:
                if (str.equals("viewTransitionOnNegativeCross")) {
                    c = 6;
                    break;
                }
                break;
            case 64397344:
                if (str.equals("CROSS")) {
                    c = 7;
                    break;
                }
                break;
            case 364489912:
                if (str.equals("triggerSlack")) {
                    c = '\b';
                    break;
                }
                break;
            case 1301930599:
                if (str.equals("viewTransitionOnCross")) {
                    c = '\t';
                    break;
                }
                break;
            case 1401391082:
                if (str.equals("postLayout")) {
                    c = '\n';
                    break;
                }
                break;
            case 1535404999:
                if (str.equals("triggerReceiver")) {
                    c = 11;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                this.mPositiveCross = obj.toString();
                return;
            case 1:
                this.mViewTransitionOnPositiveCross = toInt(obj);
                return;
            case 2:
                this.mTriggerCollisionId = toInt(obj);
                return;
            case 3:
                this.mTriggerID = toInt(obj);
                return;
            case 4:
                this.mNegativeCross = obj.toString();
                return;
            case 5:
                this.mTriggerCollisionView = (View) obj;
                return;
            case 6:
                this.mViewTransitionOnNegativeCross = toInt(obj);
                return;
            case 7:
                this.mCross = obj.toString();
                return;
            case '\b':
                this.mTriggerSlack = toFloat(obj);
                return;
            case '\t':
                this.mViewTransitionOnCross = toInt(obj);
                return;
            case '\n':
                this.mPostLayout = toBoolean(obj);
                return;
            case 11:
                this.mTriggerReceiver = toInt(obj);
                return;
            default:
                return;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: clone */
    public Key mo523clone() {
        return new KeyTrigger().copy(this);
    }
}
