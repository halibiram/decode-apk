package androidx.camera.view;

import androidx.annotation.GuardedBy;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.AsyncFunction;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.FutureChain;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.view.PreviewView;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.lifecycle.MutableLiveData;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class PreviewStreamStateObserver implements Observable.Observer<CameraInternal.State> {
    private static final String TAG = "StreamStateObserver";
    private final CameraInfoInternal mCameraInfoInternal;
    ListenableFuture<Void> mFlowFuture;
    private boolean mHasStartedPreviewStreamFlow = false;

    @GuardedBy("this")
    private PreviewView.StreamState mPreviewStreamState;
    private final MutableLiveData<PreviewView.StreamState> mPreviewStreamStateLiveData;
    private final PreviewViewImplementation mPreviewViewImplementation;

    /* renamed from: androidx.camera.view.PreviewStreamStateObserver$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements FutureCallback<Void> {
        final /* synthetic */ List val$callbacksToClear;
        final /* synthetic */ CameraInfo val$cameraInfo;

        public AnonymousClass1(List list, CameraInfo cameraInfo) {
            r2 = list;
            r3 = cameraInfo;
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onFailure(@NonNull Throwable th) {
            PreviewStreamStateObserver.this.mFlowFuture = null;
            if (!r2.isEmpty()) {
                Iterator it = r2.iterator();
                while (it.hasNext()) {
                    ((CameraInfoInternal) r3).removeSessionCaptureCallback((CameraCaptureCallback) it.next());
                }
                r2.clear();
            }
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onSuccess(@Nullable Void r2) {
            PreviewStreamStateObserver.this.mFlowFuture = null;
        }
    }

    /* renamed from: androidx.camera.view.PreviewStreamStateObserver$2 */
    /* loaded from: classes.dex */
    public class AnonymousClass2 extends CameraCaptureCallback {
        final /* synthetic */ CameraInfo val$cameraInfo;
        final /* synthetic */ CallbackToFutureAdapter.Completer val$completer;

        public AnonymousClass2(CallbackToFutureAdapter.Completer completer, CameraInfo cameraInfo) {
            r2 = completer;
            r3 = cameraInfo;
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public void onCaptureCompleted(int i, @NonNull CameraCaptureResult cameraCaptureResult) {
            r2.set(null);
            ((CameraInfoInternal) r3).removeSessionCaptureCallback(this);
        }
    }

    public PreviewStreamStateObserver(CameraInfoInternal cameraInfoInternal, MutableLiveData<PreviewView.StreamState> mutableLiveData, PreviewViewImplementation previewViewImplementation) {
        this.mCameraInfoInternal = cameraInfoInternal;
        this.mPreviewStreamStateLiveData = mutableLiveData;
        this.mPreviewViewImplementation = previewViewImplementation;
        synchronized (this) {
            this.mPreviewStreamState = mutableLiveData.getValue();
        }
    }

    private void cancelFlow() {
        ListenableFuture<Void> listenableFuture = this.mFlowFuture;
        if (listenableFuture != null) {
            listenableFuture.cancel(false);
            this.mFlowFuture = null;
        }
    }

    public /* synthetic */ ListenableFuture lambda$startPreviewStreamStateFlow$0(Void r1) {
        return this.mPreviewViewImplementation.waitForNextFrame();
    }

    public /* synthetic */ Void lambda$startPreviewStreamStateFlow$1(Void r1) {
        updatePreviewStreamState(PreviewView.StreamState.STREAMING);
        return null;
    }

    public /* synthetic */ Object lambda$waitForCaptureResult$2(CameraInfo cameraInfo, List list, CallbackToFutureAdapter.Completer completer) {
        AnonymousClass2 anonymousClass2 = new CameraCaptureCallback() { // from class: androidx.camera.view.PreviewStreamStateObserver.2
            final /* synthetic */ CameraInfo val$cameraInfo;
            final /* synthetic */ CallbackToFutureAdapter.Completer val$completer;

            public AnonymousClass2(CallbackToFutureAdapter.Completer completer2, CameraInfo cameraInfo2) {
                r2 = completer2;
                r3 = cameraInfo2;
            }

            @Override // androidx.camera.core.impl.CameraCaptureCallback
            public void onCaptureCompleted(int i, @NonNull CameraCaptureResult cameraCaptureResult) {
                r2.set(null);
                ((CameraInfoInternal) r3).removeSessionCaptureCallback(this);
            }
        };
        list.add(anonymousClass2);
        ((CameraInfoInternal) cameraInfo2).addSessionCaptureCallback(CameraXExecutors.directExecutor(), anonymousClass2);
        return "waitForCaptureResult";
    }

    @MainThread
    private void startPreviewStreamStateFlow(CameraInfo cameraInfo) {
        updatePreviewStreamState(PreviewView.StreamState.IDLE);
        ArrayList arrayList = new ArrayList();
        FutureChain transform = FutureChain.from(waitForCaptureResult(cameraInfo, arrayList)).transformAsync(new AsyncFunction() { // from class: androidx.camera.view.뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋
            @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
            public final ListenableFuture apply(Object obj) {
                ListenableFuture lambda$startPreviewStreamStateFlow$0;
                lambda$startPreviewStreamStateFlow$0 = PreviewStreamStateObserver.this.lambda$startPreviewStreamStateFlow$0((Void) obj);
                return lambda$startPreviewStreamStateFlow$0;
            }
        }, CameraXExecutors.directExecutor()).transform(new C0123xfbe0c504(this, 1), CameraXExecutors.directExecutor());
        this.mFlowFuture = transform;
        Futures.addCallback(transform, new FutureCallback<Void>() { // from class: androidx.camera.view.PreviewStreamStateObserver.1
            final /* synthetic */ List val$callbacksToClear;
            final /* synthetic */ CameraInfo val$cameraInfo;

            public AnonymousClass1(List arrayList2, CameraInfo cameraInfo2) {
                r2 = arrayList2;
                r3 = cameraInfo2;
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(@NonNull Throwable th) {
                PreviewStreamStateObserver.this.mFlowFuture = null;
                if (!r2.isEmpty()) {
                    Iterator it = r2.iterator();
                    while (it.hasNext()) {
                        ((CameraInfoInternal) r3).removeSessionCaptureCallback((CameraCaptureCallback) it.next());
                    }
                    r2.clear();
                }
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(@Nullable Void r2) {
                PreviewStreamStateObserver.this.mFlowFuture = null;
            }
        }, CameraXExecutors.directExecutor());
    }

    private ListenableFuture<Void> waitForCaptureResult(CameraInfo cameraInfo, List<CameraCaptureCallback> list) {
        return CallbackToFutureAdapter.getFuture(new C0128x9e171bf9(this, cameraInfo, list));
    }

    public void clear() {
        cancelFlow();
    }

    @Override // androidx.camera.core.impl.Observable.Observer
    @MainThread
    public void onError(@NonNull Throwable th) {
        clear();
        updatePreviewStreamState(PreviewView.StreamState.IDLE);
    }

    public void updatePreviewStreamState(PreviewView.StreamState streamState) {
        synchronized (this) {
            try {
                if (this.mPreviewStreamState.equals(streamState)) {
                    return;
                }
                this.mPreviewStreamState = streamState;
                Logger.d(TAG, "Update Preview stream state to " + streamState);
                this.mPreviewStreamStateLiveData.postValue(streamState);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.impl.Observable.Observer
    @MainThread
    public void onNewData(@Nullable CameraInternal.State state) {
        if (state != CameraInternal.State.CLOSING && state != CameraInternal.State.CLOSED && state != CameraInternal.State.RELEASING && state != CameraInternal.State.RELEASED) {
            if ((state == CameraInternal.State.OPENING || state == CameraInternal.State.OPEN || state == CameraInternal.State.PENDING_OPEN) && !this.mHasStartedPreviewStreamFlow) {
                startPreviewStreamStateFlow(this.mCameraInfoInternal);
                this.mHasStartedPreviewStreamFlow = true;
                return;
            }
            return;
        }
        updatePreviewStreamState(PreviewView.StreamState.IDLE);
        if (this.mHasStartedPreviewStreamFlow) {
            this.mHasStartedPreviewStreamFlow = false;
            cancelFlow();
        }
    }
}
