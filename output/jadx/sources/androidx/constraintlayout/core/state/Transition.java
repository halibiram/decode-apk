package androidx.constraintlayout.core.state;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.motion.Motion;
import androidx.constraintlayout.core.motion.MotionWidget;
import androidx.constraintlayout.core.motion.key.MotionKeyAttributes;
import androidx.constraintlayout.core.motion.key.MotionKeyCycle;
import androidx.constraintlayout.core.motion.key.MotionKeyPosition;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.SpringStopEngine;
import androidx.constraintlayout.core.motion.utils.StopEngine;
import androidx.constraintlayout.core.motion.utils.StopLogicEngine;
import androidx.constraintlayout.core.motion.utils.TypedBundle;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.state.Transition;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import defpackage.C0370x5ac5058d;
import defpackage.C0641x7afeb542;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import okhttp3.internal.http.HttpStatusCodesKt;

/* loaded from: classes.dex */
public class Transition implements TypedValues {
    static final int ANTICIPATE = 6;
    static final int BOUNCE = 4;
    private static final boolean DEBUG = false;
    static final int EASE_IN = 1;
    static final int EASE_IN_OUT = 0;
    static final int EASE_OUT = 2;
    public static final int END = 1;
    public static final int INTERPOLATED = 2;
    private static final int INTERPOLATOR_REFERENCE_ID = -2;
    static final int LINEAR = 3;
    static final int OVERSHOOT = 5;
    private static final int SPLINE_STRING = -1;
    public static final int START = 0;
    int mParentEndHeight;
    int mParentEndWidth;
    int mParentInterpolateHeight;
    int mParentInterpolatedWidth;
    int mParentStartHeight;
    int mParentStartWidth;
    final CorePixelDp mToPixel;
    boolean mWrap;
    private HashMap<Integer, HashMap<String, KeyPosition>> mKeyPositions = new HashMap<>();
    private HashMap<String, WidgetState> mState = new HashMap<>();
    private TypedBundle mBundle = new TypedBundle();
    private int mDefaultInterpolator = 0;
    private String mDefaultInterpolatorString = null;
    private Easing mEasing = null;
    private int mAutoTransition = 0;
    private int mDuration = HttpStatusCodesKt.HTTP_BAD_REQUEST;
    private float mStagger = 0.0f;
    private OnSwipe mOnSwipe = null;

    /* loaded from: classes.dex */
    public static class KeyPosition {
        int mFrame;
        String mTarget;
        int mType;
        float mX;
        float mY;

        public KeyPosition(String str, int i, int i2, float f, float f2) {
            this.mTarget = str;
            this.mFrame = i;
            this.mType = i2;
            this.mX = f;
            this.mY = f2;
        }
    }

    /* loaded from: classes.dex */
    public static class OnSwipe {
        public static final int ANCHOR_SIDE_BOTTOM = 3;
        public static final int ANCHOR_SIDE_END = 6;
        public static final int ANCHOR_SIDE_LEFT = 1;
        public static final int ANCHOR_SIDE_MIDDLE = 4;
        public static final int ANCHOR_SIDE_RIGHT = 2;
        public static final int ANCHOR_SIDE_START = 5;
        public static final int ANCHOR_SIDE_TOP = 0;
        public static final int BOUNDARY_BOUNCE_BOTH = 3;
        public static final int BOUNDARY_BOUNCE_END = 2;
        public static final int BOUNDARY_BOUNCE_START = 1;
        public static final int BOUNDARY_OVERSHOOT = 0;
        public static final int DRAG_ANTICLOCKWISE = 7;
        public static final int DRAG_CLOCKWISE = 6;
        public static final int DRAG_DOWN = 1;
        public static final int DRAG_END = 5;
        public static final int DRAG_LEFT = 2;
        public static final int DRAG_RIGHT = 3;
        public static final int DRAG_START = 4;
        public static final int DRAG_UP = 0;
        public static final int MODE_CONTINUOUS_VELOCITY = 0;
        public static final int MODE_SPRING = 1;
        public static final int ON_UP_AUTOCOMPLETE = 0;
        public static final int ON_UP_AUTOCOMPLETE_TO_END = 2;
        public static final int ON_UP_AUTOCOMPLETE_TO_START = 1;
        public static final int ON_UP_DECELERATE = 4;
        public static final int ON_UP_DECELERATE_AND_COMPLETE = 5;
        public static final int ON_UP_NEVER_COMPLETE_TO_END = 7;
        public static final int ON_UP_NEVER_COMPLETE_TO_START = 6;
        public static final int ON_UP_STOP = 3;
        String mAnchorId;
        private int mAnchorSide;
        private StopEngine mEngine;
        String mLimitBoundsTo;
        private String mRotationCenterId;
        private long mStart;
        public static final String[] SIDES = {"top", "left", "right", "bottom", "middle", "start", "end"};
        private static final float[][] TOUCH_SIDES = {new float[]{0.5f, 0.0f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}, new float[]{0.5f, 1.0f}, new float[]{0.5f, 0.5f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}};
        public static final String[] DIRECTIONS = {"up", "down", "left", "right", "start", "end", "clockwise", "anticlockwise"};
        public static final String[] MODE = {"velocity", "spring"};
        public static final String[] TOUCH_UP = {"autocomplete", "toStart", "toEnd", "stop", "decelerate", "decelerateComplete", "neverCompleteStart", "neverCompleteEnd"};
        public static final String[] BOUNDARY = {"overshoot", "bounceStart", "bounceEnd", "bounceBoth"};
        private static final float[][] TOUCH_DIRECTION = {new float[]{0.0f, -1.0f}, new float[]{0.0f, 1.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}};
        private boolean mDragVertical = true;
        private int mDragDirection = 0;
        private float mDragScale = 1.0f;
        private float mDragThreshold = 10.0f;
        private int mAutoCompleteMode = 0;
        private float mMaxVelocity = 4.0f;
        private float mMaxAcceleration = 1.2f;
        private int mOnTouchUp = 0;
        private float mSpringMass = 1.0f;
        private float mSpringStiffness = 400.0f;
        private float mSpringDamping = 10.0f;
        private float mSpringStopThreshold = 0.01f;
        private float mDestination = 0.0f;
        private int mSpringBoundary = 0;

        public void config(float f, float f2, long j, float f3) {
            SpringStopEngine springStopEngine;
            StopLogicEngine stopLogicEngine;
            StopLogicEngine.Decelerate decelerate;
            this.mStart = j;
            float abs = Math.abs(f2);
            float f4 = this.mMaxVelocity;
            if (abs > f4) {
                f2 = Math.signum(f2) * f4;
            }
            float f5 = f2;
            float destinationPosition = getDestinationPosition(f, f5, f3);
            this.mDestination = destinationPosition;
            if (destinationPosition == f) {
                this.mEngine = null;
                return;
            }
            if (this.mOnTouchUp == 4 && this.mAutoCompleteMode == 0) {
                StopEngine stopEngine = this.mEngine;
                if (stopEngine instanceof StopLogicEngine.Decelerate) {
                    decelerate = (StopLogicEngine.Decelerate) stopEngine;
                } else {
                    decelerate = new StopLogicEngine.Decelerate();
                    this.mEngine = decelerate;
                }
                decelerate.config(f, this.mDestination, f5);
                return;
            }
            if (this.mAutoCompleteMode == 0) {
                StopEngine stopEngine2 = this.mEngine;
                if (stopEngine2 instanceof StopLogicEngine) {
                    stopLogicEngine = (StopLogicEngine) stopEngine2;
                } else {
                    stopLogicEngine = new StopLogicEngine();
                    this.mEngine = stopLogicEngine;
                }
                stopLogicEngine.config(f, this.mDestination, f5, f3, this.mMaxAcceleration, this.mMaxVelocity);
                return;
            }
            StopEngine stopEngine3 = this.mEngine;
            if (stopEngine3 instanceof SpringStopEngine) {
                springStopEngine = (SpringStopEngine) stopEngine3;
            } else {
                springStopEngine = new SpringStopEngine();
                this.mEngine = springStopEngine;
            }
            springStopEngine.springConfig(f, this.mDestination, f5, this.mSpringMass, this.mSpringStiffness, this.mSpringDamping, this.mSpringStopThreshold, this.mSpringBoundary);
        }

        public float getDestinationPosition(float f, float f2, float f3) {
            float abs = (((Math.abs(f2) * 0.5f) * f2) / this.mMaxAcceleration) + f;
            switch (this.mOnTouchUp) {
                case 1:
                    if (f < 1.0f) {
                        return 0.0f;
                    }
                    return 1.0f;
                case 2:
                    if (f <= 0.0f) {
                        return 0.0f;
                    }
                    return 1.0f;
                case 3:
                    return Float.NaN;
                case 4:
                    return Math.max(0.0f, Math.min(1.0f, abs));
                case 5:
                    if (abs > 0.2f && abs < 0.8f) {
                        return abs;
                    }
                    if (abs <= 0.5f) {
                        return 0.0f;
                    }
                    return 1.0f;
                case 6:
                    return 1.0f;
                case 7:
                    return 0.0f;
                default:
                    if (abs <= 0.5d) {
                        return 0.0f;
                    }
                    return 1.0f;
            }
        }

        public float[] getDirection() {
            return TOUCH_DIRECTION[this.mDragDirection];
        }

        public float getScale() {
            return this.mDragScale;
        }

        public float[] getSide() {
            return TOUCH_SIDES[this.mAnchorSide];
        }

        public float getTouchUpProgress(long j) {
            float interpolation = this.mEngine.getInterpolation(((float) (j - this.mStart)) * 1.0E-9f);
            if (this.mEngine.isStopped()) {
                return this.mDestination;
            }
            return interpolation;
        }

        public boolean isNotDone(float f) {
            StopEngine stopEngine;
            if (this.mOnTouchUp == 3 || (stopEngine = this.mEngine) == null || stopEngine.isStopped()) {
                return false;
            }
            return true;
        }

        public void printInfo() {
            if (this.mAutoCompleteMode == 0) {
                PrintStream printStream = System.out;
                printStream.println("velocity = " + this.mEngine.getVelocity());
                printStream.println("mMaxAcceleration = " + this.mMaxAcceleration);
                printStream.println("mMaxVelocity = " + this.mMaxVelocity);
                return;
            }
            PrintStream printStream2 = System.out;
            printStream2.println("mSpringMass          = " + this.mSpringMass);
            printStream2.println("mSpringStiffness     = " + this.mSpringStiffness);
            printStream2.println("mSpringDamping       = " + this.mSpringDamping);
            printStream2.println("mSpringStopThreshold = " + this.mSpringStopThreshold);
            printStream2.println("mSpringBoundary      = " + this.mSpringBoundary);
        }

        public void setAnchorId(String str) {
            this.mAnchorId = str;
        }

        public void setAnchorSide(int i) {
            this.mAnchorSide = i;
        }

        public void setAutoCompleteMode(int i) {
            this.mAutoCompleteMode = i;
        }

        public void setDragDirection(int i) {
            boolean z;
            this.mDragDirection = i;
            if (i < 2) {
                z = true;
            } else {
                z = false;
            }
            this.mDragVertical = z;
        }

        public void setDragScale(float f) {
            if (Float.isNaN(f)) {
                return;
            }
            this.mDragScale = f;
        }

        public void setDragThreshold(float f) {
            if (Float.isNaN(f)) {
                return;
            }
            this.mDragThreshold = f;
        }

        public void setLimitBoundsTo(String str) {
            this.mLimitBoundsTo = str;
        }

        public void setMaxAcceleration(float f) {
            if (Float.isNaN(f)) {
                return;
            }
            this.mMaxAcceleration = f;
        }

        public void setMaxVelocity(float f) {
            if (Float.isNaN(f)) {
                return;
            }
            this.mMaxVelocity = f;
        }

        public void setOnTouchUp(int i) {
            this.mOnTouchUp = i;
        }

        public void setRotationCenterId(String str) {
            this.mRotationCenterId = str;
        }

        public void setSpringBoundary(int i) {
            this.mSpringBoundary = i;
        }

        public void setSpringDamping(float f) {
            if (Float.isNaN(f)) {
                return;
            }
            this.mSpringDamping = f;
        }

        public void setSpringMass(float f) {
            if (Float.isNaN(f)) {
                return;
            }
            this.mSpringMass = f;
        }

        public void setSpringStiffness(float f) {
            if (Float.isNaN(f)) {
                return;
            }
            this.mSpringStiffness = f;
        }

        public void setSpringStopThreshold(float f) {
            if (Float.isNaN(f)) {
                return;
            }
            this.mSpringStopThreshold = f;
        }
    }

    public Transition(@NonNull CorePixelDp corePixelDp) {
        this.mToPixel = corePixelDp;
    }

    private void calculateParentDimensions(float f) {
        this.mParentInterpolatedWidth = (int) (((this.mParentEndWidth - r0) * f) + this.mParentStartWidth + 0.5f);
        this.mParentInterpolateHeight = (int) (((this.mParentEndHeight - r0) * f) + this.mParentStartHeight + 0.5f);
    }

    public static Interpolator getInterpolator(int i, String str) {
        switch (i) {
            case -1:
                return new C0641x7afeb542(str, 6);
            case 0:
                return new C0370x5ac5058d(25);
            case 1:
                return new C0370x5ac5058d(26);
            case 2:
                return new C0370x5ac5058d(27);
            case 3:
                return new C0370x5ac5058d(28);
            case 4:
                final int i2 = 1;
                return new Interpolator() { // from class: 땬듰둠될둣뒉돴땪땥뎻땱득딽땔돝땠땐뒾따돠뒈딀땔듸땰드땨땲딹듐땬뒉땜듰됴땠딅뒬듔듌들도딠땲두듸둘땫딅땩땠뒤도듐돳땄딹땮듔땀딀듽둡두뎨둥둬뒼땟땝듐드뒬득딸두뎽드땸딞뎻땳뎸딟땰땸뎬땣땁듸돤땋뒐땯뒛뒛딸됨됫땹땡딞땝둘땠딸뒀듬딻땬뒷땨돴땔듸딃돶될듬딞뒝딅뒈듼땜뒋듔딃둬딅
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f) {
                        float lambda$getInterpolator$6;
                        float lambda$getInterpolator$7;
                        switch (i2) {
                            case 0:
                                lambda$getInterpolator$6 = Transition.lambda$getInterpolator$6(f);
                                return lambda$getInterpolator$6;
                            default:
                                lambda$getInterpolator$7 = Transition.lambda$getInterpolator$7(f);
                                return lambda$getInterpolator$7;
                        }
                    }
                };
            case 5:
                final int i3 = 0;
                return new Interpolator() { // from class: 땬듰둠될둣뒉돴땪땥뎻땱득딽땔돝땠땐뒾따돠뒈딀땔듸땰드땨땲딹듐땬뒉땜듰됴땠딅뒬듔듌들도딠땲두듸둘땫딅땩땠뒤도듐돳땄딹땮듔땀딀듽둡두뎨둥둬뒼땟땝듐드뒬득딸두뎽드땸딞뎻땳뎸딟땰땸뎬땣땁듸돤땋뒐땯뒛뒛딸됨됫땹땡딞땝둘땠딸뒀듬딻땬뒷땨돴땔듸딃돶될듬딞뒝딅뒈듼땜뒋듔딃둬딅
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f) {
                        float lambda$getInterpolator$6;
                        float lambda$getInterpolator$7;
                        switch (i3) {
                            case 0:
                                lambda$getInterpolator$6 = Transition.lambda$getInterpolator$6(f);
                                return lambda$getInterpolator$6;
                            default:
                                lambda$getInterpolator$7 = Transition.lambda$getInterpolator$7(f);
                                return lambda$getInterpolator$7;
                        }
                    }
                };
            case 6:
                return new C0370x5ac5058d(29);
            default:
                return null;
        }
    }

    private WidgetState getWidgetState(String str) {
        return this.mState.get(str);
    }

    public static /* synthetic */ float lambda$getInterpolator$0(String str, float f) {
        return (float) Easing.getInterpolator(str).get(f);
    }

    public static /* synthetic */ float lambda$getInterpolator$1(float f) {
        return (float) Easing.getInterpolator("standard").get(f);
    }

    public static /* synthetic */ float lambda$getInterpolator$2(float f) {
        return (float) Easing.getInterpolator("accelerate").get(f);
    }

    public static /* synthetic */ float lambda$getInterpolator$3(float f) {
        return (float) Easing.getInterpolator("decelerate").get(f);
    }

    public static /* synthetic */ float lambda$getInterpolator$4(float f) {
        return (float) Easing.getInterpolator("linear").get(f);
    }

    public static /* synthetic */ float lambda$getInterpolator$5(float f) {
        return (float) Easing.getInterpolator("anticipate").get(f);
    }

    public static /* synthetic */ float lambda$getInterpolator$6(float f) {
        return (float) Easing.getInterpolator("overshoot").get(f);
    }

    public static /* synthetic */ float lambda$getInterpolator$7(float f) {
        return (float) Easing.getInterpolator("spline(0.0, 0.2, 0.4, 0.6, 0.8 ,1.0, 0.8, 1.0, 0.9, 1.0)").get(f);
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    public static /* synthetic */ float m513xfbe0c504(float f) {
        return lambda$getInterpolator$1(f);
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉 */
    public static /* synthetic */ float m515x1378447b(float f) {
        return lambda$getInterpolator$5(f);
    }

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨 */
    public static /* synthetic */ float m517x9738a56c(float f) {
        return lambda$getInterpolator$4(f);
    }

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤 */
    public static /* synthetic */ float m518x9e171bf9(float f) {
        return lambda$getInterpolator$3(f);
    }

    /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두 */
    public static /* synthetic */ float m520x95f25580(float f) {
        return lambda$getInterpolator$2(f);
    }

    public void addCustomColor(int i, String str, String str2, int i2) {
        getWidgetState(str, null, i).getFrame(i).addCustomColor(str2, i2);
    }

    public void addCustomFloat(int i, String str, String str2, float f) {
        getWidgetState(str, null, i).getFrame(i).addCustomFloat(str2, f);
    }

    public void addKeyAttribute(String str, TypedBundle typedBundle) {
        getWidgetState(str, null, 0).setKeyAttribute(typedBundle);
    }

    public void addKeyCycle(String str, TypedBundle typedBundle) {
        getWidgetState(str, null, 0).setKeyCycle(typedBundle);
    }

    public void addKeyPosition(String str, TypedBundle typedBundle) {
        getWidgetState(str, null, 0).setKeyPosition(typedBundle);
    }

    public void calcStagger() {
        boolean z;
        float f;
        float f2;
        float f3 = this.mStagger;
        if (f3 == 0.0f) {
            return;
        }
        if (f3 < 0.0d) {
            z = true;
        } else {
            z = false;
        }
        float abs = Math.abs(f3);
        Iterator<String> it = this.mState.keySet().iterator();
        do {
            f = Float.MAX_VALUE;
            f2 = -3.4028235E38f;
            if (it.hasNext()) {
            } else {
                Iterator<String> it2 = this.mState.keySet().iterator();
                while (it2.hasNext()) {
                    Motion motion = this.mState.get(it2.next()).mMotionControl;
                    float finalY = motion.getFinalY() + motion.getFinalX();
                    f = Math.min(f, finalY);
                    f2 = Math.max(f2, finalY);
                }
                Iterator<String> it3 = this.mState.keySet().iterator();
                while (it3.hasNext()) {
                    Motion motion2 = this.mState.get(it3.next()).mMotionControl;
                    float finalY2 = motion2.getFinalY() + motion2.getFinalX();
                    float f4 = f2 - f;
                    float f5 = abs - (((finalY2 - f) * abs) / f4);
                    if (z) {
                        f5 = abs - (((f2 - finalY2) / f4) * abs);
                    }
                    motion2.setStaggerScale(1.0f / (1.0f - abs));
                    motion2.setStaggerOffset(f5);
                }
                return;
            }
        } while (Float.isNaN(this.mState.get(it.next()).mMotionControl.getMotionStagger()));
        Iterator<String> it4 = this.mState.keySet().iterator();
        while (it4.hasNext()) {
            float motionStagger = this.mState.get(it4.next()).mMotionControl.getMotionStagger();
            if (!Float.isNaN(motionStagger)) {
                f = Math.min(f, motionStagger);
                f2 = Math.max(f2, motionStagger);
            }
        }
        Iterator<String> it5 = this.mState.keySet().iterator();
        while (it5.hasNext()) {
            Motion motion3 = this.mState.get(it5.next()).mMotionControl;
            float motionStagger2 = motion3.getMotionStagger();
            if (!Float.isNaN(motionStagger2)) {
                float f6 = 1.0f / (1.0f - abs);
                float f7 = f2 - f;
                float f8 = abs - (((motionStagger2 - f) * abs) / f7);
                if (z) {
                    f8 = abs - (((f2 - motionStagger2) / f7) * abs);
                }
                motion3.setStaggerScale(f6);
                motion3.setStaggerOffset(f8);
            }
        }
    }

    public void clear() {
        this.mState.clear();
    }

    public boolean contains(String str) {
        return this.mState.containsKey(str);
    }

    public OnSwipe createOnSwipe() {
        OnSwipe onSwipe = new OnSwipe();
        this.mOnSwipe = onSwipe;
        return onSwipe;
    }

    public float dragToProgress(float f, int i, int i2, float f2, float f3) {
        WidgetState widgetState;
        float abs;
        float f4;
        float abs2;
        Iterator<WidgetState> it = this.mState.values().iterator();
        if (it.hasNext()) {
            widgetState = it.next();
        } else {
            widgetState = null;
        }
        OnSwipe onSwipe = this.mOnSwipe;
        if (onSwipe != null && widgetState != null) {
            String str = onSwipe.mAnchorId;
            if (str == null) {
                float[] direction = onSwipe.getDirection();
                int i3 = widgetState.mParentHeight;
                float f5 = i3;
                float f6 = i3;
                float f7 = direction[0];
                if (f7 != 0.0f) {
                    abs2 = (Math.abs(f7) * f2) / f5;
                } else {
                    abs2 = (Math.abs(direction[1]) * f3) / f6;
                }
                return abs2 * this.mOnSwipe.getScale();
            }
            WidgetState widgetState2 = this.mState.get(str);
            float[] direction2 = this.mOnSwipe.getDirection();
            float[] side = this.mOnSwipe.getSide();
            float[] fArr = new float[2];
            widgetState2.interpolate(i, i2, f, this);
            widgetState2.mMotionControl.getDpDt(f, side[0], side[1], fArr);
            float f8 = direction2[0];
            if (f8 != 0.0f) {
                abs = Math.abs(f8) * f2;
                f4 = fArr[0];
            } else {
                abs = Math.abs(direction2[1]) * f3;
                f4 = fArr[1];
            }
            return (abs / f4) * this.mOnSwipe.getScale();
        }
        if (widgetState != null) {
            return (-f3) / widgetState.mParentHeight;
        }
        return 1.0f;
    }

    public void fillKeyPositions(WidgetFrame widgetFrame, float[] fArr, float[] fArr2, float[] fArr3) {
        KeyPosition keyPosition;
        int i = 0;
        for (int i2 = 0; i2 <= 100; i2++) {
            HashMap<String, KeyPosition> hashMap = this.mKeyPositions.get(Integer.valueOf(i2));
            if (hashMap != null && (keyPosition = hashMap.get(widgetFrame.widget.stringId)) != null) {
                fArr[i] = keyPosition.mX;
                fArr2[i] = keyPosition.mY;
                fArr3[i] = keyPosition.mFrame;
                i++;
            }
        }
    }

    public KeyPosition findNextPosition(String str, int i) {
        KeyPosition keyPosition;
        while (i <= 100) {
            HashMap<String, KeyPosition> hashMap = this.mKeyPositions.get(Integer.valueOf(i));
            if (hashMap != null && (keyPosition = hashMap.get(str)) != null) {
                return keyPosition;
            }
            i++;
        }
        return null;
    }

    public KeyPosition findPreviousPosition(String str, int i) {
        KeyPosition keyPosition;
        while (i >= 0) {
            HashMap<String, KeyPosition> hashMap = this.mKeyPositions.get(Integer.valueOf(i));
            if (hashMap != null && (keyPosition = hashMap.get(str)) != null) {
                return keyPosition;
            }
            i--;
        }
        return null;
    }

    public int getAutoTransition() {
        return this.mAutoTransition;
    }

    public WidgetFrame getEnd(String str) {
        WidgetState widgetState = this.mState.get(str);
        if (widgetState == null) {
            return null;
        }
        return widgetState.mEnd;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public int getId(String str) {
        return 0;
    }

    public WidgetFrame getInterpolated(String str) {
        WidgetState widgetState = this.mState.get(str);
        if (widgetState == null) {
            return null;
        }
        return widgetState.mInterpolated;
    }

    public int getInterpolatedHeight() {
        return this.mParentInterpolateHeight;
    }

    public int getInterpolatedWidth() {
        return this.mParentInterpolatedWidth;
    }

    public int getKeyFrames(String str, float[] fArr, int[] iArr, int[] iArr2) {
        return this.mState.get(str).mMotionControl.buildKeyFrames(fArr, iArr, iArr2);
    }

    public Motion getMotion(String str) {
        return getWidgetState(str, null, 0).mMotionControl;
    }

    public int getNumberKeyPositions(WidgetFrame widgetFrame) {
        int i = 0;
        for (int i2 = 0; i2 <= 100; i2++) {
            HashMap<String, KeyPosition> hashMap = this.mKeyPositions.get(Integer.valueOf(i2));
            if (hashMap != null && hashMap.get(widgetFrame.widget.stringId) != null) {
                i++;
            }
        }
        return i;
    }

    public float[] getPath(String str) {
        float[] fArr = new float[124];
        this.mState.get(str).mMotionControl.buildPath(fArr, 62);
        return fArr;
    }

    public WidgetFrame getStart(String str) {
        WidgetState widgetState = this.mState.get(str);
        if (widgetState == null) {
            return null;
        }
        return widgetState.mStart;
    }

    public float getTouchUpProgress(long j) {
        OnSwipe onSwipe = this.mOnSwipe;
        if (onSwipe != null) {
            return onSwipe.getTouchUpProgress(j);
        }
        return 0.0f;
    }

    public boolean hasOnSwipe() {
        if (this.mOnSwipe != null) {
            return true;
        }
        return false;
    }

    public boolean hasPositionKeyframes() {
        if (this.mKeyPositions.size() > 0) {
            return true;
        }
        return false;
    }

    public void interpolate(int i, int i2, float f) {
        if (this.mWrap) {
            calculateParentDimensions(f);
        }
        Easing easing = this.mEasing;
        if (easing != null) {
            f = (float) easing.get(f);
        }
        Iterator<String> it = this.mState.keySet().iterator();
        while (it.hasNext()) {
            this.mState.get(it.next()).interpolate(i, i2, f, this);
        }
    }

    public boolean isEmpty() {
        return this.mState.isEmpty();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean isFirstDownAccepted(float f, float f2) {
        OnSwipe onSwipe = this.mOnSwipe;
        if (onSwipe == null) {
            return false;
        }
        String str = onSwipe.mLimitBoundsTo;
        if (str == null) {
            return true;
        }
        WidgetState widgetState = this.mState.get(str);
        if (widgetState == null) {
            System.err.println("mLimitBoundsTo target is null");
            return false;
        }
        WidgetFrame frame = widgetState.getFrame(2);
        if (f < frame.left || f >= frame.right || f2 < frame.top || f2 >= frame.bottom) {
            return false;
        }
        return true;
    }

    public boolean isTouchNotDone(float f) {
        return this.mOnSwipe.isNotDone(f);
    }

    public void resetProperties() {
        this.mOnSwipe = null;
        this.mBundle.clear();
    }

    public void setTouchUp(float f, long j, float f2, float f3) {
        float f4;
        OnSwipe onSwipe = this.mOnSwipe;
        if (onSwipe != null) {
            WidgetState widgetState = this.mState.get(onSwipe.mAnchorId);
            float[] fArr = new float[2];
            float[] direction = this.mOnSwipe.getDirection();
            float[] side = this.mOnSwipe.getSide();
            widgetState.mMotionControl.getDpDt(f, side[0], side[1], fArr);
            if (Math.abs((direction[1] * fArr[1]) + (direction[0] * fArr[0])) < 0.01d) {
                fArr[0] = 0.01f;
                fArr[1] = 0.01f;
            }
            if (direction[0] != 0.0f) {
                f4 = f2 / fArr[0];
            } else {
                f4 = f3 / fArr[1];
            }
            this.mOnSwipe.config(f, f4 * this.mOnSwipe.getScale(), j, this.mDuration * 0.001f);
        }
    }

    public void setTransitionProperties(TypedBundle typedBundle) {
        typedBundle.applyDelta(this.mBundle);
        typedBundle.applyDelta(this);
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, int i2) {
        return false;
    }

    public void updateFrom(ConstraintWidgetContainer constraintWidgetContainer, int i) {
        boolean z;
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidgetContainer.mListDimensionBehaviors;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        boolean z2 = true;
        if (dimensionBehaviour == dimensionBehaviour2) {
            z = true;
        } else {
            z = false;
        }
        this.mWrap = z;
        if (dimensionBehaviourArr[1] != dimensionBehaviour2) {
            z2 = false;
        }
        this.mWrap = z | z2;
        if (i == 0) {
            int width = constraintWidgetContainer.getWidth();
            this.mParentStartWidth = width;
            this.mParentInterpolatedWidth = width;
            int height = constraintWidgetContainer.getHeight();
            this.mParentStartHeight = height;
            this.mParentInterpolateHeight = height;
        } else {
            this.mParentEndWidth = constraintWidgetContainer.getWidth();
            this.mParentEndHeight = constraintWidgetContainer.getHeight();
        }
        ArrayList<ConstraintWidget> children = constraintWidgetContainer.getChildren();
        int size = children.size();
        WidgetState[] widgetStateArr = new WidgetState[size];
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintWidget constraintWidget = children.get(i2);
            WidgetState widgetState = getWidgetState(constraintWidget.stringId, null, i);
            widgetStateArr[i2] = widgetState;
            widgetState.update(constraintWidget, i);
            String pathRelativeId = widgetState.getPathRelativeId();
            if (pathRelativeId != null) {
                widgetState.setPathRelative(getWidgetState(pathRelativeId, null, i));
            }
        }
        calcStagger();
    }

    public void addKeyAttribute(String str, TypedBundle typedBundle, CustomVariable[] customVariableArr) {
        getWidgetState(str, null, 0).setKeyAttribute(typedBundle, customVariableArr);
    }

    public void addKeyPosition(String str, int i, int i2, float f, float f2) {
        TypedBundle typedBundle = new TypedBundle();
        typedBundle.add(510, 2);
        typedBundle.add(100, i);
        typedBundle.add(506, f);
        typedBundle.add(507, f2);
        getWidgetState(str, null, 0).setKeyPosition(typedBundle);
        KeyPosition keyPosition = new KeyPosition(str, i, i2, f, f2);
        HashMap<String, KeyPosition> hashMap = this.mKeyPositions.get(Integer.valueOf(i));
        if (hashMap == null) {
            hashMap = new HashMap<>();
            this.mKeyPositions.put(Integer.valueOf(i), hashMap);
        }
        hashMap.put(str, keyPosition);
    }

    public WidgetState getWidgetState(String str, ConstraintWidget constraintWidget, int i) {
        WidgetState widgetState = this.mState.get(str);
        if (widgetState == null) {
            widgetState = new WidgetState();
            this.mBundle.applyDelta(widgetState.mMotionControl);
            widgetState.mMotionWidgetStart.updateMotion(widgetState.mMotionControl);
            this.mState.put(str, widgetState);
            if (constraintWidget != null) {
                widgetState.update(constraintWidget, i);
            }
        }
        return widgetState;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, boolean z) {
        return false;
    }

    /* loaded from: classes.dex */
    public static class WidgetState {
        Motion mMotionControl;
        boolean mNeedSetup = true;
        KeyCache mKeyCache = new KeyCache();
        int mParentHeight = -1;
        int mParentWidth = -1;
        WidgetFrame mStart = new WidgetFrame();
        WidgetFrame mEnd = new WidgetFrame();
        WidgetFrame mInterpolated = new WidgetFrame();
        MotionWidget mMotionWidgetStart = new MotionWidget(this.mStart);
        MotionWidget mMotionWidgetEnd = new MotionWidget(this.mEnd);
        MotionWidget mMotionWidgetInterpolated = new MotionWidget(this.mInterpolated);

        public WidgetState() {
            Motion motion = new Motion(this.mMotionWidgetStart);
            this.mMotionControl = motion;
            motion.setStart(this.mMotionWidgetStart);
            this.mMotionControl.setEnd(this.mMotionWidgetEnd);
        }

        public WidgetFrame getFrame(int i) {
            if (i == 0) {
                return this.mStart;
            }
            if (i == 1) {
                return this.mEnd;
            }
            return this.mInterpolated;
        }

        public String getPathRelativeId() {
            return this.mMotionControl.getAnimateRelativeTo();
        }

        public void interpolate(int i, int i2, float f, Transition transition) {
            this.mParentHeight = i2;
            this.mParentWidth = i;
            if (this.mNeedSetup) {
                this.mMotionControl.setup(i, i2, 1.0f, System.nanoTime());
                this.mNeedSetup = false;
            }
            WidgetFrame.interpolate(i, i2, this.mInterpolated, this.mStart, this.mEnd, transition, f);
            this.mInterpolated.interpolatedPos = f;
            this.mMotionControl.interpolate(this.mMotionWidgetInterpolated, f, System.nanoTime(), this.mKeyCache);
        }

        public void setKeyAttribute(TypedBundle typedBundle) {
            MotionKeyAttributes motionKeyAttributes = new MotionKeyAttributes();
            typedBundle.applyDelta(motionKeyAttributes);
            this.mMotionControl.addKey(motionKeyAttributes);
        }

        public void setKeyCycle(TypedBundle typedBundle) {
            MotionKeyCycle motionKeyCycle = new MotionKeyCycle();
            typedBundle.applyDelta(motionKeyCycle);
            this.mMotionControl.addKey(motionKeyCycle);
        }

        public void setKeyPosition(TypedBundle typedBundle) {
            MotionKeyPosition motionKeyPosition = new MotionKeyPosition();
            typedBundle.applyDelta(motionKeyPosition);
            this.mMotionControl.addKey(motionKeyPosition);
        }

        public void setPathRelative(WidgetState widgetState) {
            this.mMotionControl.setupRelative(widgetState.mMotionControl);
        }

        public void update(ConstraintWidget constraintWidget, int i) {
            if (i == 0) {
                this.mStart.update(constraintWidget);
                MotionWidget motionWidget = this.mMotionWidgetStart;
                motionWidget.updateMotion(motionWidget);
                this.mMotionControl.setStart(this.mMotionWidgetStart);
                this.mNeedSetup = true;
            } else if (i == 1) {
                this.mEnd.update(constraintWidget);
                this.mMotionControl.setEnd(this.mMotionWidgetEnd);
                this.mNeedSetup = true;
            }
            this.mParentWidth = -1;
        }

        public void setKeyAttribute(TypedBundle typedBundle, CustomVariable[] customVariableArr) {
            MotionKeyAttributes motionKeyAttributes = new MotionKeyAttributes();
            typedBundle.applyDelta(motionKeyAttributes);
            if (customVariableArr != null) {
                for (int i = 0; i < customVariableArr.length; i++) {
                    motionKeyAttributes.mCustom.put(customVariableArr[i].getName(), customVariableArr[i]);
                }
            }
            this.mMotionControl.addKey(motionKeyAttributes);
        }
    }

    public WidgetFrame getEnd(ConstraintWidget constraintWidget) {
        return getWidgetState(constraintWidget.stringId, null, 1).mEnd;
    }

    public WidgetFrame getInterpolated(ConstraintWidget constraintWidget) {
        return getWidgetState(constraintWidget.stringId, null, 2).mInterpolated;
    }

    public WidgetFrame getStart(ConstraintWidget constraintWidget) {
        return getWidgetState(constraintWidget.stringId, null, 0).mStart;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, float f) {
        if (i != 706) {
            return false;
        }
        this.mStagger = f;
        return false;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, String str) {
        if (i != 705) {
            return false;
        }
        this.mDefaultInterpolatorString = str;
        this.mEasing = Easing.getInterpolator(str);
        return false;
    }

    public Interpolator getInterpolator() {
        return getInterpolator(this.mDefaultInterpolator, this.mDefaultInterpolatorString);
    }
}
