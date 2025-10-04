package com.airbnb.lottie;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import androidx.annotation.RequiresApi;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatImageView;
import com.airbnb.lottie.LottieAnimationView;
import com.airbnb.lottie.LottieResult;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.LottieFrameInfo;
import com.airbnb.lottie.value.LottieValueCallback;
import com.airbnb.lottie.value.SimpleLottieValueCallback;
import com.google.android.material.color.utilities.Contrast;
import com.panda912.muddy.ObfuscatedString;
import defpackage.CallableC0480x61c0fd8c;
import j$.util.Objects;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.zip.ZipInputStream;

/* loaded from: classes.dex */
public class LottieAnimationView extends AppCompatImageView {
    private static final LottieListener<Throwable> DEFAULT_FAILURE_LISTENER = new Object();
    private static final String TAG = "LottieAnimationView";
    private String animationName;

    @RawRes
    private int animationResId;
    private boolean autoPlay;
    private boolean cacheComposition;

    @Nullable
    private LottieTask<LottieComposition> compositionTask;

    @Nullable
    private LottieListener<Throwable> failureListener;

    @DrawableRes
    private int fallbackResource;
    private boolean ignoreUnschedule;
    private final LottieListener<LottieComposition> loadedListener;
    private final LottieDrawable lottieDrawable;
    private final Set<LottieOnCompositionLoadedListener> lottieOnCompositionLoadedListeners;
    private final Set<UserActionTaken> userActionsTaken;
    private final LottieListener<Throwable> wrappedFailureListener;

    /* renamed from: com.airbnb.lottie.LottieAnimationView$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1<T> extends LottieValueCallback<T> {
        final /* synthetic */ SimpleLottieValueCallback val$callback;

        public AnonymousClass1(SimpleLottieValueCallback simpleLottieValueCallback) {
            r2 = simpleLottieValueCallback;
        }

        @Override // com.airbnb.lottie.value.LottieValueCallback
        public T getValue(LottieFrameInfo<T> lottieFrameInfo) {
            return (T) r2.getValue(lottieFrameInfo);
        }
    }

    /* loaded from: classes.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.airbnb.lottie.LottieAnimationView.SavedState.1
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        String animationName;
        int animationResId;
        String imageAssetsFolder;
        boolean isAnimating;
        float progress;
        int repeatCount;
        int repeatMode;

        /* renamed from: com.airbnb.lottie.LottieAnimationView$SavedState$1 */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public /* synthetic */ SavedState(Parcel parcel, AnonymousClass1 anonymousClass1) {
            this(parcel);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.animationName);
            parcel.writeFloat(this.progress);
            parcel.writeInt(this.isAnimating ? 1 : 0);
            parcel.writeString(this.imageAssetsFolder);
            parcel.writeInt(this.repeatMode);
            parcel.writeInt(this.repeatCount);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.animationName = parcel.readString();
            this.progress = parcel.readFloat();
            this.isAnimating = parcel.readInt() == 1;
            this.imageAssetsFolder = parcel.readString();
            this.repeatMode = parcel.readInt();
            this.repeatCount = parcel.readInt();
        }
    }

    /* loaded from: classes.dex */
    public enum UserActionTaken {
        SET_ANIMATION,
        SET_PROGRESS,
        SET_REPEAT_MODE,
        SET_REPEAT_COUNT,
        SET_IMAGE_ASSETS,
        PLAY_OPTION
    }

    /* loaded from: classes.dex */
    public static class WeakFailureListener implements LottieListener<Throwable> {
        private final WeakReference<LottieAnimationView> targetReference;

        public WeakFailureListener(LottieAnimationView lottieAnimationView) {
            this.targetReference = new WeakReference<>(lottieAnimationView);
        }

        @Override // com.airbnb.lottie.LottieListener
        public void onResult(Throwable th) {
            LottieAnimationView lottieAnimationView = this.targetReference.get();
            if (lottieAnimationView == null) {
                return;
            }
            if (lottieAnimationView.fallbackResource != 0) {
                lottieAnimationView.setImageResource(lottieAnimationView.fallbackResource);
            }
            (lottieAnimationView.failureListener == null ? LottieAnimationView.DEFAULT_FAILURE_LISTENER : lottieAnimationView.failureListener).onResult(th);
        }
    }

    /* loaded from: classes.dex */
    public static class WeakSuccessListener implements LottieListener<LottieComposition> {
        private final WeakReference<LottieAnimationView> targetReference;

        public WeakSuccessListener(LottieAnimationView lottieAnimationView) {
            this.targetReference = new WeakReference<>(lottieAnimationView);
        }

        @Override // com.airbnb.lottie.LottieListener
        public void onResult(LottieComposition lottieComposition) {
            LottieAnimationView lottieAnimationView = this.targetReference.get();
            if (lottieAnimationView == null) {
                return;
            }
            lottieAnimationView.setComposition(lottieComposition);
        }
    }

    public LottieAnimationView(Context context) {
        super(context);
        this.loadedListener = new WeakSuccessListener(this);
        this.wrappedFailureListener = new WeakFailureListener(this);
        this.fallbackResource = 0;
        this.lottieDrawable = new LottieDrawable();
        this.ignoreUnschedule = false;
        this.autoPlay = false;
        this.cacheComposition = true;
        this.userActionsTaken = new HashSet();
        this.lottieOnCompositionLoadedListeners = new HashSet();
        init(null, R.attr.lottieAnimationViewStyle);
    }

    private void cancelLoaderTask() {
        LottieTask<LottieComposition> lottieTask = this.compositionTask;
        if (lottieTask != null) {
            lottieTask.removeListener(this.loadedListener);
            this.compositionTask.removeFailureListener(this.wrappedFailureListener);
        }
    }

    private void clearComposition() {
        this.lottieDrawable.clearComposition();
    }

    private LottieTask<LottieComposition> fromAssets(String str) {
        if (isInEditMode()) {
            return new LottieTask<>(new CallableC0480x61c0fd8c(this, str, 1), true);
        }
        if (this.cacheComposition) {
            return LottieCompositionFactory.fromAsset(getContext(), str);
        }
        return LottieCompositionFactory.fromAsset(getContext(), str, null);
    }

    private LottieTask<LottieComposition> fromRawRes(@RawRes final int i) {
        if (isInEditMode()) {
            return new LottieTask<>(new Callable() { // from class: 딌땨딸뒤딌뎻듐됩뎻땍돝뒛뒉뎨듼듻돸뒛땐딟땡될돛땥된땐돛뒛뎽땱딻땬뎬땬뒝됫딜뎠뒤듔땤뒝땜둑땧듬돨됩뒵땀땄뒤듐뒐뒼둠딀딟뒐땲돨디땵듟딅땐돝뎰땩땀득땸딝땋돝듬뎸뒈뒀땍땜뎰된돨듽뒋뒋뒋땍돸뎻땡땃듟뒉뎨딠딜뎡드뒘땠딎둥됩둬딄땀땨땸돼돛돝듻뒬딨뒷뒐딽딝땱딌되땀됩뒉딨뒵땥땔
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    LottieResult lambda$fromRawRes$1;
                    lambda$fromRawRes$1 = LottieAnimationView.this.lambda$fromRawRes$1(i);
                    return lambda$fromRawRes$1;
                }
            }, true);
        }
        if (this.cacheComposition) {
            return LottieCompositionFactory.fromRawRes(getContext(), i);
        }
        return LottieCompositionFactory.fromRawRes(getContext(), i, null);
    }

    private void init(@Nullable AttributeSet attributeSet, @AttrRes int i) {
        String string;
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.LottieAnimationView, i, 0);
        this.cacheComposition = obtainStyledAttributes.getBoolean(R.styleable.LottieAnimationView_lottie_cacheComposition, true);
        int i2 = R.styleable.LottieAnimationView_lottie_rawRes;
        boolean hasValue = obtainStyledAttributes.hasValue(i2);
        int i3 = R.styleable.LottieAnimationView_lottie_fileName;
        boolean hasValue2 = obtainStyledAttributes.hasValue(i3);
        int i4 = R.styleable.LottieAnimationView_lottie_url;
        boolean hasValue3 = obtainStyledAttributes.hasValue(i4);
        if (hasValue && hasValue2) {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{4812901469772858307L, 35120492678134270L, 2961355088831033018L, 6160049801911197639L, -2171692545026754374L, 3294065147182592423L, -6576785081719031177L, -9090961886807330344L, -4164860424941587707L, -305446426912913650L, -8011557659009988610L, 8570502637218977167L, -4575908272674733266L}).toString());
        }
        if (hasValue) {
            int resourceId = obtainStyledAttributes.getResourceId(i2, 0);
            if (resourceId != 0) {
                setAnimation(resourceId);
            }
        } else if (hasValue2) {
            String string2 = obtainStyledAttributes.getString(i3);
            if (string2 != null) {
                setAnimation(string2);
            }
        } else if (hasValue3 && (string = obtainStyledAttributes.getString(i4)) != null) {
            setAnimationFromUrl(string);
        }
        setFallbackResource(obtainStyledAttributes.getResourceId(R.styleable.LottieAnimationView_lottie_fallbackRes, 0));
        if (obtainStyledAttributes.getBoolean(R.styleable.LottieAnimationView_lottie_autoPlay, false)) {
            this.autoPlay = true;
        }
        if (obtainStyledAttributes.getBoolean(R.styleable.LottieAnimationView_lottie_loop, false)) {
            this.lottieDrawable.setRepeatCount(-1);
        }
        int i5 = R.styleable.LottieAnimationView_lottie_repeatMode;
        if (obtainStyledAttributes.hasValue(i5)) {
            setRepeatMode(obtainStyledAttributes.getInt(i5, 1));
        }
        int i6 = R.styleable.LottieAnimationView_lottie_repeatCount;
        if (obtainStyledAttributes.hasValue(i6)) {
            setRepeatCount(obtainStyledAttributes.getInt(i6, -1));
        }
        int i7 = R.styleable.LottieAnimationView_lottie_speed;
        if (obtainStyledAttributes.hasValue(i7)) {
            setSpeed(obtainStyledAttributes.getFloat(i7, 1.0f));
        }
        int i8 = R.styleable.LottieAnimationView_lottie_clipToCompositionBounds;
        if (obtainStyledAttributes.hasValue(i8)) {
            setClipToCompositionBounds(obtainStyledAttributes.getBoolean(i8, true));
        }
        int i9 = R.styleable.LottieAnimationView_lottie_clipTextToBoundingBox;
        if (obtainStyledAttributes.hasValue(i9)) {
            setClipTextToBoundingBox(obtainStyledAttributes.getBoolean(i9, false));
        }
        int i10 = R.styleable.LottieAnimationView_lottie_defaultFontFileExtension;
        if (obtainStyledAttributes.hasValue(i10)) {
            setDefaultFontFileExtension(obtainStyledAttributes.getString(i10));
        }
        setImageAssetsFolder(obtainStyledAttributes.getString(R.styleable.LottieAnimationView_lottie_imageAssetsFolder));
        int i11 = R.styleable.LottieAnimationView_lottie_progress;
        setProgressInternal(obtainStyledAttributes.getFloat(i11, 0.0f), obtainStyledAttributes.hasValue(i11));
        enableMergePathsForKitKatAndAbove(obtainStyledAttributes.getBoolean(R.styleable.LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove, false));
        setApplyingOpacityToLayersEnabled(obtainStyledAttributes.getBoolean(R.styleable.LottieAnimationView_lottie_applyOpacityToLayers, false));
        setApplyingShadowToLayersEnabled(obtainStyledAttributes.getBoolean(R.styleable.LottieAnimationView_lottie_applyShadowToLayers, true));
        int i12 = R.styleable.LottieAnimationView_lottie_colorFilter;
        if (obtainStyledAttributes.hasValue(i12)) {
            addValueCallback(new KeyPath(new ObfuscatedString(new long[]{1360617691225330782L, 2487008257977542414L}).toString()), (KeyPath) LottieProperty.COLOR_FILTER, (LottieValueCallback<KeyPath>) new LottieValueCallback(new SimpleColorFilter(AppCompatResources.getColorStateList(getContext(), obtainStyledAttributes.getResourceId(i12, -1)).getDefaultColor())));
        }
        int i13 = R.styleable.LottieAnimationView_lottie_renderMode;
        if (obtainStyledAttributes.hasValue(i13)) {
            RenderMode renderMode = RenderMode.AUTOMATIC;
            int i14 = obtainStyledAttributes.getInt(i13, renderMode.ordinal());
            if (i14 >= RenderMode.values().length) {
                i14 = renderMode.ordinal();
            }
            setRenderMode(RenderMode.values()[i14]);
        }
        int i15 = R.styleable.LottieAnimationView_lottie_asyncUpdates;
        if (obtainStyledAttributes.hasValue(i15)) {
            AsyncUpdates asyncUpdates = AsyncUpdates.AUTOMATIC;
            int i16 = obtainStyledAttributes.getInt(i15, asyncUpdates.ordinal());
            if (i16 >= RenderMode.values().length) {
                i16 = asyncUpdates.ordinal();
            }
            setAsyncUpdates(AsyncUpdates.values()[i16]);
        }
        setIgnoreDisabledSystemAnimations(obtainStyledAttributes.getBoolean(R.styleable.LottieAnimationView_lottie_ignoreDisabledSystemAnimations, false));
        int i17 = R.styleable.LottieAnimationView_lottie_useCompositionFrameRate;
        if (obtainStyledAttributes.hasValue(i17)) {
            setUseCompositionFrameRate(obtainStyledAttributes.getBoolean(i17, false));
        }
        obtainStyledAttributes.recycle();
    }

    public /* synthetic */ LottieResult lambda$fromAssets$2(String str) {
        if (this.cacheComposition) {
            return LottieCompositionFactory.fromAssetSync(getContext(), str);
        }
        return LottieCompositionFactory.fromAssetSync(getContext(), str, null);
    }

    public /* synthetic */ LottieResult lambda$fromRawRes$1(int i) {
        if (this.cacheComposition) {
            return LottieCompositionFactory.fromRawResSync(getContext(), i);
        }
        return LottieCompositionFactory.fromRawResSync(getContext(), i, null);
    }

    public static /* synthetic */ void lambda$static$0(Throwable th) {
        if (Utils.isNetworkException(th)) {
            Logger.warning(new ObfuscatedString(new long[]{-700055637351905726L, 1608562587771422131L, 6778125010195212830L, -4327817994447817311L, 8595622979003150475L}).toString(), th);
            return;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{908342115743044687L, -4159767648638122533L, 8743432619479061472L, -1092725899936372702L, 2507393315943622118L}).toString(), th);
    }

    private void setCompositionTask(LottieTask<LottieComposition> lottieTask) {
        LottieResult<LottieComposition> result = lottieTask.getResult();
        LottieDrawable lottieDrawable = this.lottieDrawable;
        if (result != null && lottieDrawable == getDrawable() && lottieDrawable.getComposition() == result.getValue()) {
            return;
        }
        this.userActionsTaken.add(UserActionTaken.SET_ANIMATION);
        clearComposition();
        cancelLoaderTask();
        this.compositionTask = lottieTask.addListener(this.loadedListener).addFailureListener(this.wrappedFailureListener);
    }

    private void setLottieDrawable() {
        boolean isAnimating = isAnimating();
        setImageDrawable(null);
        setImageDrawable(this.lottieDrawable);
        if (isAnimating) {
            this.lottieDrawable.resumeAnimation();
        }
    }

    private void setProgressInternal(@FloatRange(from = 0.0d, to = 1.0d) float f, boolean z) {
        if (z) {
            this.userActionsTaken.add(UserActionTaken.SET_PROGRESS);
        }
        this.lottieDrawable.setProgress(f);
    }

    public void addAnimatorListener(Animator.AnimatorListener animatorListener) {
        this.lottieDrawable.addAnimatorListener(animatorListener);
    }

    @RequiresApi(api = 19)
    public void addAnimatorPauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.lottieDrawable.addAnimatorPauseListener(animatorPauseListener);
    }

    public void addAnimatorUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.lottieDrawable.addAnimatorUpdateListener(animatorUpdateListener);
    }

    public boolean addLottieOnCompositionLoadedListener(@NonNull LottieOnCompositionLoadedListener lottieOnCompositionLoadedListener) {
        LottieComposition composition = getComposition();
        if (composition != null) {
            lottieOnCompositionLoadedListener.onCompositionLoaded(composition);
        }
        return this.lottieOnCompositionLoadedListeners.add(lottieOnCompositionLoadedListener);
    }

    public <T> void addValueCallback(KeyPath keyPath, T t, LottieValueCallback<T> lottieValueCallback) {
        this.lottieDrawable.addValueCallback(keyPath, (KeyPath) t, (LottieValueCallback<KeyPath>) lottieValueCallback);
    }

    @MainThread
    public void cancelAnimation() {
        this.autoPlay = false;
        this.userActionsTaken.add(UserActionTaken.PLAY_OPTION);
        this.lottieDrawable.cancelAnimation();
    }

    public <T> void clearValueCallback(KeyPath keyPath, T t) {
        this.lottieDrawable.addValueCallback(keyPath, (KeyPath) t, (LottieValueCallback<KeyPath>) null);
    }

    @Deprecated
    public void disableExtraScaleModeInFitXY() {
        this.lottieDrawable.disableExtraScaleModeInFitXY();
    }

    public void enableFeatureFlag(LottieFeatureFlag lottieFeatureFlag, boolean z) {
        this.lottieDrawable.enableFeatureFlag(lottieFeatureFlag, z);
    }

    public void enableMergePathsForKitKatAndAbove(boolean z) {
        this.lottieDrawable.enableFeatureFlag(LottieFeatureFlag.MergePathsApi19, z);
    }

    public AsyncUpdates getAsyncUpdates() {
        return this.lottieDrawable.getAsyncUpdates();
    }

    public boolean getAsyncUpdatesEnabled() {
        return this.lottieDrawable.getAsyncUpdatesEnabled();
    }

    public boolean getClipTextToBoundingBox() {
        return this.lottieDrawable.getClipTextToBoundingBox();
    }

    public boolean getClipToCompositionBounds() {
        return this.lottieDrawable.getClipToCompositionBounds();
    }

    @Nullable
    public LottieComposition getComposition() {
        Drawable drawable = getDrawable();
        LottieDrawable lottieDrawable = this.lottieDrawable;
        if (drawable == lottieDrawable) {
            return lottieDrawable.getComposition();
        }
        return null;
    }

    public long getDuration() {
        if (getComposition() != null) {
            return r0.getDuration();
        }
        return 0L;
    }

    public int getFrame() {
        return this.lottieDrawable.getFrame();
    }

    @Nullable
    public String getImageAssetsFolder() {
        return this.lottieDrawable.getImageAssetsFolder();
    }

    public boolean getMaintainOriginalImageBounds() {
        return this.lottieDrawable.getMaintainOriginalImageBounds();
    }

    public float getMaxFrame() {
        return this.lottieDrawable.getMaxFrame();
    }

    public float getMinFrame() {
        return this.lottieDrawable.getMinFrame();
    }

    @Nullable
    public PerformanceTracker getPerformanceTracker() {
        return this.lottieDrawable.getPerformanceTracker();
    }

    @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN)
    public float getProgress() {
        return this.lottieDrawable.getProgress();
    }

    public RenderMode getRenderMode() {
        return this.lottieDrawable.getRenderMode();
    }

    public int getRepeatCount() {
        return this.lottieDrawable.getRepeatCount();
    }

    public int getRepeatMode() {
        return this.lottieDrawable.getRepeatMode();
    }

    public float getSpeed() {
        return this.lottieDrawable.getSpeed();
    }

    public boolean hasMasks() {
        return this.lottieDrawable.hasMasks();
    }

    public boolean hasMatte() {
        return this.lottieDrawable.hasMatte();
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        Drawable drawable = getDrawable();
        if ((drawable instanceof LottieDrawable) && ((LottieDrawable) drawable).getRenderMode() == RenderMode.SOFTWARE) {
            this.lottieDrawable.invalidateSelf();
        }
    }

    @Override // android.widget.ImageView, android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable drawable2 = getDrawable();
        LottieDrawable lottieDrawable = this.lottieDrawable;
        if (drawable2 == lottieDrawable) {
            super.invalidateDrawable(lottieDrawable);
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    public boolean isAnimating() {
        return this.lottieDrawable.isAnimating();
    }

    public boolean isFeatureFlagEnabled(LottieFeatureFlag lottieFeatureFlag) {
        return this.lottieDrawable.isFeatureFlagEnabled(lottieFeatureFlag);
    }

    public boolean isMergePathsEnabledForKitKatAndAbove() {
        return this.lottieDrawable.isFeatureFlagEnabled(LottieFeatureFlag.MergePathsApi19);
    }

    @Deprecated
    public void loop(boolean z) {
        int i;
        LottieDrawable lottieDrawable = this.lottieDrawable;
        if (z) {
            i = -1;
        } else {
            i = 0;
        }
        lottieDrawable.setRepeatCount(i);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isInEditMode() && this.autoPlay) {
            this.lottieDrawable.playAnimation();
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        int i;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.animationName = savedState.animationName;
        Set<UserActionTaken> set = this.userActionsTaken;
        UserActionTaken userActionTaken = UserActionTaken.SET_ANIMATION;
        if (!set.contains(userActionTaken) && !TextUtils.isEmpty(this.animationName)) {
            setAnimation(this.animationName);
        }
        this.animationResId = savedState.animationResId;
        if (!this.userActionsTaken.contains(userActionTaken) && (i = this.animationResId) != 0) {
            setAnimation(i);
        }
        if (!this.userActionsTaken.contains(UserActionTaken.SET_PROGRESS)) {
            setProgressInternal(savedState.progress, false);
        }
        if (!this.userActionsTaken.contains(UserActionTaken.PLAY_OPTION) && savedState.isAnimating) {
            playAnimation();
        }
        if (!this.userActionsTaken.contains(UserActionTaken.SET_IMAGE_ASSETS)) {
            setImageAssetsFolder(savedState.imageAssetsFolder);
        }
        if (!this.userActionsTaken.contains(UserActionTaken.SET_REPEAT_MODE)) {
            setRepeatMode(savedState.repeatMode);
        }
        if (!this.userActionsTaken.contains(UserActionTaken.SET_REPEAT_COUNT)) {
            setRepeatCount(savedState.repeatCount);
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.animationName = this.animationName;
        savedState.animationResId = this.animationResId;
        savedState.progress = this.lottieDrawable.getProgress();
        savedState.isAnimating = this.lottieDrawable.isAnimatingOrWillAnimateOnVisible();
        savedState.imageAssetsFolder = this.lottieDrawable.getImageAssetsFolder();
        savedState.repeatMode = this.lottieDrawable.getRepeatMode();
        savedState.repeatCount = this.lottieDrawable.getRepeatCount();
        return savedState;
    }

    @MainThread
    public void pauseAnimation() {
        this.autoPlay = false;
        this.lottieDrawable.pauseAnimation();
    }

    @MainThread
    public void playAnimation() {
        this.userActionsTaken.add(UserActionTaken.PLAY_OPTION);
        this.lottieDrawable.playAnimation();
    }

    public void removeAllAnimatorListeners() {
        this.lottieDrawable.removeAllAnimatorListeners();
    }

    public void removeAllLottieOnCompositionLoadedListener() {
        this.lottieOnCompositionLoadedListeners.clear();
    }

    public void removeAllUpdateListeners() {
        this.lottieDrawable.removeAllUpdateListeners();
    }

    public void removeAnimatorListener(Animator.AnimatorListener animatorListener) {
        this.lottieDrawable.removeAnimatorListener(animatorListener);
    }

    @RequiresApi(api = 19)
    public void removeAnimatorPauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.lottieDrawable.removeAnimatorPauseListener(animatorPauseListener);
    }

    public boolean removeLottieOnCompositionLoadedListener(@NonNull LottieOnCompositionLoadedListener lottieOnCompositionLoadedListener) {
        return this.lottieOnCompositionLoadedListeners.remove(lottieOnCompositionLoadedListener);
    }

    public void removeUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.lottieDrawable.removeAnimatorUpdateListener(animatorUpdateListener);
    }

    public List<KeyPath> resolveKeyPath(KeyPath keyPath) {
        return this.lottieDrawable.resolveKeyPath(keyPath);
    }

    @MainThread
    public void resumeAnimation() {
        this.userActionsTaken.add(UserActionTaken.PLAY_OPTION);
        this.lottieDrawable.resumeAnimation();
    }

    public void reverseAnimationSpeed() {
        this.lottieDrawable.reverseAnimationSpeed();
    }

    public void setAnimation(@RawRes int i) {
        this.animationResId = i;
        this.animationName = null;
        setCompositionTask(fromRawRes(i));
    }

    @Deprecated
    public void setAnimationFromJson(String str) {
        setAnimationFromJson(str, null);
    }

    public void setAnimationFromUrl(String str) {
        setCompositionTask(this.cacheComposition ? LottieCompositionFactory.fromUrl(getContext(), str) : LottieCompositionFactory.fromUrl(getContext(), str, null));
    }

    public void setApplyingOpacityToLayersEnabled(boolean z) {
        this.lottieDrawable.setApplyingOpacityToLayersEnabled(z);
    }

    public void setApplyingShadowToLayersEnabled(boolean z) {
        this.lottieDrawable.setApplyingShadowToLayersEnabled(z);
    }

    public void setAsyncUpdates(AsyncUpdates asyncUpdates) {
        this.lottieDrawable.setAsyncUpdates(asyncUpdates);
    }

    public void setCacheComposition(boolean z) {
        this.cacheComposition = z;
    }

    public void setClipTextToBoundingBox(boolean z) {
        this.lottieDrawable.setClipTextToBoundingBox(z);
    }

    public void setClipToCompositionBounds(boolean z) {
        this.lottieDrawable.setClipToCompositionBounds(z);
    }

    public void setComposition(@NonNull LottieComposition lottieComposition) {
        if (L.DBG) {
            new ObfuscatedString(new long[]{-8203505160632844781L, 2526241322873620031L, -7214260799502888059L, 2262004868432621225L}).toString();
            Objects.toString(lottieComposition);
        }
        this.lottieDrawable.setCallback(this);
        this.ignoreUnschedule = true;
        boolean composition = this.lottieDrawable.setComposition(lottieComposition);
        if (this.autoPlay) {
            this.lottieDrawable.playAnimation();
        }
        this.ignoreUnschedule = false;
        if (getDrawable() == this.lottieDrawable && !composition) {
            return;
        }
        if (!composition) {
            setLottieDrawable();
        }
        onVisibilityChanged(this, getVisibility());
        requestLayout();
        Iterator<LottieOnCompositionLoadedListener> it = this.lottieOnCompositionLoadedListeners.iterator();
        while (it.hasNext()) {
            it.next().onCompositionLoaded(lottieComposition);
        }
    }

    public void setDefaultFontFileExtension(String str) {
        this.lottieDrawable.setDefaultFontFileExtension(str);
    }

    public void setFailureListener(@Nullable LottieListener<Throwable> lottieListener) {
        this.failureListener = lottieListener;
    }

    public void setFallbackResource(@DrawableRes int i) {
        this.fallbackResource = i;
    }

    public void setFontAssetDelegate(FontAssetDelegate fontAssetDelegate) {
        this.lottieDrawable.setFontAssetDelegate(fontAssetDelegate);
    }

    public void setFontMap(@Nullable Map<String, Typeface> map) {
        this.lottieDrawable.setFontMap(map);
    }

    public void setFrame(int i) {
        this.lottieDrawable.setFrame(i);
    }

    @Deprecated
    public void setIgnoreDisabledSystemAnimations(boolean z) {
        this.lottieDrawable.setIgnoreDisabledSystemAnimations(z);
    }

    public void setImageAssetDelegate(ImageAssetDelegate imageAssetDelegate) {
        this.lottieDrawable.setImageAssetDelegate(imageAssetDelegate);
    }

    public void setImageAssetsFolder(String str) {
        this.lottieDrawable.setImagesAssetsFolder(str);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        this.animationResId = 0;
        this.animationName = null;
        cancelLoaderTask();
        super.setImageBitmap(bitmap);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        this.animationResId = 0;
        this.animationName = null;
        cancelLoaderTask();
        super.setImageDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i) {
        this.animationResId = 0;
        this.animationName = null;
        cancelLoaderTask();
        super.setImageResource(i);
    }

    public void setMaintainOriginalImageBounds(boolean z) {
        this.lottieDrawable.setMaintainOriginalImageBounds(z);
    }

    public void setMaxFrame(int i) {
        this.lottieDrawable.setMaxFrame(i);
    }

    public void setMaxProgress(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        this.lottieDrawable.setMaxProgress(f);
    }

    public void setMinAndMaxFrame(String str) {
        this.lottieDrawable.setMinAndMaxFrame(str);
    }

    public void setMinAndMaxProgress(@FloatRange(from = 0.0d, to = 1.0d) float f, @FloatRange(from = 0.0d, to = 1.0d) float f2) {
        this.lottieDrawable.setMinAndMaxProgress(f, f2);
    }

    public void setMinFrame(int i) {
        this.lottieDrawable.setMinFrame(i);
    }

    public void setMinProgress(float f) {
        this.lottieDrawable.setMinProgress(f);
    }

    public void setOutlineMasksAndMattes(boolean z) {
        this.lottieDrawable.setOutlineMasksAndMattes(z);
    }

    public void setPerformanceTrackingEnabled(boolean z) {
        this.lottieDrawable.setPerformanceTrackingEnabled(z);
    }

    public void setProgress(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        setProgressInternal(f, true);
    }

    public void setRenderMode(RenderMode renderMode) {
        this.lottieDrawable.setRenderMode(renderMode);
    }

    public void setRepeatCount(int i) {
        this.userActionsTaken.add(UserActionTaken.SET_REPEAT_COUNT);
        this.lottieDrawable.setRepeatCount(i);
    }

    public void setRepeatMode(int i) {
        this.userActionsTaken.add(UserActionTaken.SET_REPEAT_MODE);
        this.lottieDrawable.setRepeatMode(i);
    }

    public void setSafeMode(boolean z) {
        this.lottieDrawable.setSafeMode(z);
    }

    public void setSpeed(float f) {
        this.lottieDrawable.setSpeed(f);
    }

    public void setTextDelegate(TextDelegate textDelegate) {
        this.lottieDrawable.setTextDelegate(textDelegate);
    }

    public void setUseCompositionFrameRate(boolean z) {
        this.lottieDrawable.setUseCompositionFrameRate(z);
    }

    @Override // android.view.View
    public void unscheduleDrawable(Drawable drawable) {
        LottieDrawable lottieDrawable;
        if (!this.ignoreUnschedule && drawable == (lottieDrawable = this.lottieDrawable) && lottieDrawable.isAnimating()) {
            pauseAnimation();
        } else if (!this.ignoreUnschedule && (drawable instanceof LottieDrawable)) {
            LottieDrawable lottieDrawable2 = (LottieDrawable) drawable;
            if (lottieDrawable2.isAnimating()) {
                lottieDrawable2.pauseAnimation();
            }
        }
        super.unscheduleDrawable(drawable);
    }

    @Nullable
    public Bitmap updateBitmap(String str, @Nullable Bitmap bitmap) {
        return this.lottieDrawable.updateBitmap(str, bitmap);
    }

    public <T> void addValueCallback(KeyPath keyPath, T t, SimpleLottieValueCallback<T> simpleLottieValueCallback) {
        this.lottieDrawable.addValueCallback(keyPath, (KeyPath) t, (LottieValueCallback<KeyPath>) new LottieValueCallback<T>() { // from class: com.airbnb.lottie.LottieAnimationView.1
            final /* synthetic */ SimpleLottieValueCallback val$callback;

            public AnonymousClass1(SimpleLottieValueCallback simpleLottieValueCallback2) {
                r2 = simpleLottieValueCallback2;
            }

            @Override // com.airbnb.lottie.value.LottieValueCallback
            public T getValue(LottieFrameInfo<T> lottieFrameInfo) {
                return (T) r2.getValue(lottieFrameInfo);
            }
        });
    }

    public void setAnimationFromJson(String str, @Nullable String str2) {
        setAnimation(new ByteArrayInputStream(str.getBytes()), str2);
    }

    public void setMaxFrame(String str) {
        this.lottieDrawable.setMaxFrame(str);
    }

    public void setMinAndMaxFrame(String str, String str2, boolean z) {
        this.lottieDrawable.setMinAndMaxFrame(str, str2, z);
    }

    public void setMinFrame(String str) {
        this.lottieDrawable.setMinFrame(str);
    }

    public void setMinAndMaxFrame(int i, int i2) {
        this.lottieDrawable.setMinAndMaxFrame(i, i2);
    }

    public void setAnimation(String str) {
        this.animationName = str;
        this.animationResId = 0;
        setCompositionTask(fromAssets(str));
    }

    public void setAnimationFromUrl(String str, @Nullable String str2) {
        setCompositionTask(LottieCompositionFactory.fromUrl(getContext(), str, str2));
    }

    public void setAnimation(InputStream inputStream, @Nullable String str) {
        setCompositionTask(LottieCompositionFactory.fromJsonInputStream(inputStream, str));
    }

    public void setAnimation(ZipInputStream zipInputStream, @Nullable String str) {
        setCompositionTask(LottieCompositionFactory.fromZipStream(zipInputStream, str));
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.loadedListener = new WeakSuccessListener(this);
        this.wrappedFailureListener = new WeakFailureListener(this);
        this.fallbackResource = 0;
        this.lottieDrawable = new LottieDrawable();
        this.ignoreUnschedule = false;
        this.autoPlay = false;
        this.cacheComposition = true;
        this.userActionsTaken = new HashSet();
        this.lottieOnCompositionLoadedListeners = new HashSet();
        init(attributeSet, R.attr.lottieAnimationViewStyle);
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.loadedListener = new WeakSuccessListener(this);
        this.wrappedFailureListener = new WeakFailureListener(this);
        this.fallbackResource = 0;
        this.lottieDrawable = new LottieDrawable();
        this.ignoreUnschedule = false;
        this.autoPlay = false;
        this.cacheComposition = true;
        this.userActionsTaken = new HashSet();
        this.lottieOnCompositionLoadedListeners = new HashSet();
        init(attributeSet, i);
    }
}
