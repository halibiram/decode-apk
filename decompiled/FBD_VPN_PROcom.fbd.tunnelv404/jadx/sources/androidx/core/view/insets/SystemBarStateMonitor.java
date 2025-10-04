package androidx.core.view.insets;

import android.content.res.Configuration;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class SystemBarStateMonitor {
    private final ArrayList<Callback> mCallbacks = new ArrayList<>();
    private int mColorHint;
    private final View mDetector;
    private Insets mInsets;
    private Insets mInsetsIgnoringVisibility;

    /* loaded from: classes.dex */
    public interface Callback {
        void onAnimationEnd();

        void onAnimationProgress(int i, Insets insets, RectF rectF);

        void onAnimationStart();

        void onColorHintChanged(int i);

        void onInsetsChanged(Insets insets, Insets insets2);
    }

    public SystemBarStateMonitor(final ViewGroup viewGroup) {
        int i;
        Insets insets = Insets.NONE;
        this.mInsets = insets;
        this.mInsetsIgnoringVisibility = insets;
        Drawable background = viewGroup.getBackground();
        int i2 = 0;
        if (background instanceof ColorDrawable) {
            i = ((ColorDrawable) background).getColor();
        } else {
            i = 0;
        }
        this.mColorHint = i;
        View view = new View(viewGroup.getContext()) { // from class: androidx.core.view.insets.SystemBarStateMonitor.1
            @Override // android.view.View
            public void onConfigurationChanged(Configuration configuration) {
                int i3;
                Drawable background2 = viewGroup.getBackground();
                if (background2 instanceof ColorDrawable) {
                    i3 = ((ColorDrawable) background2).getColor();
                } else {
                    i3 = 0;
                }
                if (SystemBarStateMonitor.this.mColorHint != i3) {
                    SystemBarStateMonitor.this.mColorHint = i3;
                    for (int size = SystemBarStateMonitor.this.mCallbacks.size() - 1; size >= 0; size--) {
                        ((Callback) SystemBarStateMonitor.this.mCallbacks.get(size)).onColorHintChanged(i3);
                    }
                }
            }
        };
        this.mDetector = view;
        view.setWillNotDraw(true);
        ViewCompat.setOnApplyWindowInsetsListener(view, new OnApplyWindowInsetsListener() { // from class: androidx.core.view.insets.뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat) {
                WindowInsetsCompat lambda$new$0;
                lambda$new$0 = SystemBarStateMonitor.this.lambda$new$0(view2, windowInsetsCompat);
                return lambda$new$0;
            }
        });
        ViewCompat.setWindowInsetsAnimationCallback(view, new WindowInsetsAnimationCompat.Callback(i2) { // from class: androidx.core.view.insets.SystemBarStateMonitor.2
            private final HashMap<WindowInsetsAnimationCompat, Integer> mAnimationSidesMap = new HashMap<>();

            private boolean animatesSystemBars(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
                if ((windowInsetsAnimationCompat.getTypeMask() & WindowInsetsCompat.Type.systemBars()) != 0) {
                    return true;
                }
                return false;
            }

            @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
            public void onEnd(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
                if (!animatesSystemBars(windowInsetsAnimationCompat)) {
                    return;
                }
                this.mAnimationSidesMap.remove(windowInsetsAnimationCompat);
                for (int size = SystemBarStateMonitor.this.mCallbacks.size() - 1; size >= 0; size--) {
                    ((Callback) SystemBarStateMonitor.this.mCallbacks.get(size)).onAnimationEnd();
                }
            }

            @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
            public void onPrepare(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
                if (!animatesSystemBars(windowInsetsAnimationCompat)) {
                    return;
                }
                for (int size = SystemBarStateMonitor.this.mCallbacks.size() - 1; size >= 0; size--) {
                    ((Callback) SystemBarStateMonitor.this.mCallbacks.get(size)).onAnimationStart();
                }
            }

            @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
            public WindowInsetsCompat onProgress(WindowInsetsCompat windowInsetsCompat, List<WindowInsetsAnimationCompat> list) {
                RectF rectF = new RectF(1.0f, 1.0f, 1.0f, 1.0f);
                int i3 = 0;
                for (int size = list.size() - 1; size >= 0; size--) {
                    WindowInsetsAnimationCompat windowInsetsAnimationCompat = list.get(size);
                    Integer num = this.mAnimationSidesMap.get(windowInsetsAnimationCompat);
                    if (num != null) {
                        int intValue = num.intValue();
                        float alpha = windowInsetsAnimationCompat.getAlpha();
                        if ((intValue & 1) != 0) {
                            rectF.left = alpha;
                        }
                        if ((intValue & 2) != 0) {
                            rectF.top = alpha;
                        }
                        if ((intValue & 4) != 0) {
                            rectF.right = alpha;
                        }
                        if ((intValue & 8) != 0) {
                            rectF.bottom = alpha;
                        }
                        i3 |= intValue;
                    }
                }
                Insets insets2 = SystemBarStateMonitor.this.getInsets(windowInsetsCompat);
                for (int size2 = SystemBarStateMonitor.this.mCallbacks.size() - 1; size2 >= 0; size2--) {
                    ((Callback) SystemBarStateMonitor.this.mCallbacks.get(size2)).onAnimationProgress(i3, insets2, rectF);
                }
                return windowInsetsCompat;
            }

            @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
            public WindowInsetsAnimationCompat.BoundsCompat onStart(WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsAnimationCompat.BoundsCompat boundsCompat) {
                int i3;
                if (!animatesSystemBars(windowInsetsAnimationCompat)) {
                    return boundsCompat;
                }
                Insets upperBound = boundsCompat.getUpperBound();
                Insets lowerBound = boundsCompat.getLowerBound();
                if (upperBound.left != lowerBound.left) {
                    i3 = 1;
                } else {
                    i3 = 0;
                }
                if (upperBound.top != lowerBound.top) {
                    i3 |= 2;
                }
                if (upperBound.right != lowerBound.right) {
                    i3 |= 4;
                }
                if (upperBound.bottom != lowerBound.bottom) {
                    i3 |= 8;
                }
                this.mAnimationSidesMap.put(windowInsetsAnimationCompat, Integer.valueOf(i3));
                return boundsCompat;
            }
        });
        viewGroup.addView(view, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Insets getInsets(WindowInsetsCompat windowInsetsCompat) {
        return Insets.min(windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars()), windowInsetsCompat.getInsets(WindowInsetsCompat.Type.tappableElement()));
    }

    private Insets getInsetsIgnoringVisibility(WindowInsetsCompat windowInsetsCompat) {
        return Insets.min(windowInsetsCompat.getInsetsIgnoringVisibility(WindowInsetsCompat.Type.systemBars()), windowInsetsCompat.getInsetsIgnoringVisibility(WindowInsetsCompat.Type.tappableElement()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$detachFromWindow$1() {
        ViewParent parent = this.mDetector.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.mDetector);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ WindowInsetsCompat lambda$new$0(View view, WindowInsetsCompat windowInsetsCompat) {
        Insets insets = getInsets(windowInsetsCompat);
        Insets insetsIgnoringVisibility = getInsetsIgnoringVisibility(windowInsetsCompat);
        if (!insets.equals(this.mInsets) || !insetsIgnoringVisibility.equals(this.mInsetsIgnoringVisibility)) {
            this.mInsets = insets;
            this.mInsetsIgnoringVisibility = insetsIgnoringVisibility;
            for (int size = this.mCallbacks.size() - 1; size >= 0; size--) {
                this.mCallbacks.get(size).onInsetsChanged(insets, insetsIgnoringVisibility);
            }
        }
        return windowInsetsCompat;
    }

    public void addCallback(Callback callback) {
        if (this.mCallbacks.contains(callback)) {
            return;
        }
        this.mCallbacks.add(callback);
        callback.onInsetsChanged(this.mInsets, this.mInsetsIgnoringVisibility);
        callback.onColorHintChanged(this.mColorHint);
    }

    public void detachFromWindow() {
        this.mDetector.post(new Runnable() { // from class: androidx.core.view.insets.뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉
            @Override // java.lang.Runnable
            public final void run() {
                SystemBarStateMonitor.this.lambda$detachFromWindow$1();
            }
        });
    }

    public boolean hasCallback() {
        return !this.mCallbacks.isEmpty();
    }

    public void removeCallback(Callback callback) {
        this.mCallbacks.remove(callback);
    }
}
