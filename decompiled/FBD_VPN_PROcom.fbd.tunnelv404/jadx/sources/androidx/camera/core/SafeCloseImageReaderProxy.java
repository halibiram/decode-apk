package androidx.camera.core;

import android.view.Surface;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.camera.core.ForwardingImageProxy;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.SafeCloseImageReaderProxy;
import androidx.camera.core.impl.ImageReaderProxy;
import defpackage.C1002xf721819d;
import java.util.concurrent.Executor;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class SafeCloseImageReaderProxy implements ImageReaderProxy {
    private ForwardingImageProxy.OnImageCloseListener mForwardingImageCloseListener;

    @GuardedBy("mLock")
    private final ImageReaderProxy mImageReaderProxy;

    @Nullable
    private final Surface mSurface;
    private final Object mLock = new Object();

    @GuardedBy("mLock")
    private int mOutstandingImages = 0;

    @GuardedBy("mLock")
    private boolean mIsClosed = false;
    private final ForwardingImageProxy.OnImageCloseListener mImageCloseListener = new ForwardingImageProxy.OnImageCloseListener() { // from class: 땋땵딟듔뒵뒛땜딟땠딅둥둣뎽돶땄돰딁땻땡딨땰뒈득딅듬듰땡딸땋둡듸뎨땬돷둠땣뒐돠됩땲뒘딜뒛땹둠딁땥됨돼둣두땋땣땳돨뒙딟땲듻땃뒨딜땳땠둡뒨뎠듸땍도둠땫딻땪됨됫땪됴땅땸디땯따땟됨돶땀돷됫딨듰된땃땟뎸뎠딹땳딌뒋듸뒵뒾뒈딻땦땧듼땔뒐딁땧땰된뒼두땦득땲돠둔딃땳듸뒬둘뒤됨뒬돸
        @Override // androidx.camera.core.ForwardingImageProxy.OnImageCloseListener
        public final void onImageClose(ImageProxy imageProxy) {
            SafeCloseImageReaderProxy.this.lambda$new$0(imageProxy);
        }
    };

    public SafeCloseImageReaderProxy(@NonNull ImageReaderProxy imageReaderProxy) {
        this.mImageReaderProxy = imageReaderProxy;
        this.mSurface = imageReaderProxy.getSurface();
    }

    public /* synthetic */ void lambda$new$0(ImageProxy imageProxy) {
        ForwardingImageProxy.OnImageCloseListener onImageCloseListener;
        synchronized (this.mLock) {
            try {
                int i = this.mOutstandingImages - 1;
                this.mOutstandingImages = i;
                if (this.mIsClosed && i == 0) {
                    close();
                }
                onImageCloseListener = this.mForwardingImageCloseListener;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (onImageCloseListener != null) {
            onImageCloseListener.onImageClose(imageProxy);
        }
    }

    public /* synthetic */ void lambda$setOnImageAvailableListener$1(ImageReaderProxy.OnImageAvailableListener onImageAvailableListener, ImageReaderProxy imageReaderProxy) {
        onImageAvailableListener.onImageAvailable(this);
    }

    @Nullable
    @GuardedBy("mLock")
    private ImageProxy wrapImageProxy(@Nullable ImageProxy imageProxy) {
        if (imageProxy != null) {
            this.mOutstandingImages++;
            SingleCloseImageProxy singleCloseImageProxy = new SingleCloseImageProxy(imageProxy);
            singleCloseImageProxy.addOnImageCloseListener(this.mImageCloseListener);
            return singleCloseImageProxy;
        }
        return null;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    @Nullable
    public ImageProxy acquireLatestImage() {
        ImageProxy wrapImageProxy;
        synchronized (this.mLock) {
            wrapImageProxy = wrapImageProxy(this.mImageReaderProxy.acquireLatestImage());
        }
        return wrapImageProxy;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    @Nullable
    public ImageProxy acquireNextImage() {
        ImageProxy wrapImageProxy;
        synchronized (this.mLock) {
            wrapImageProxy = wrapImageProxy(this.mImageReaderProxy.acquireNextImage());
        }
        return wrapImageProxy;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public void clearOnImageAvailableListener() {
        synchronized (this.mLock) {
            this.mImageReaderProxy.clearOnImageAvailableListener();
        }
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public void close() {
        synchronized (this.mLock) {
            try {
                Surface surface = this.mSurface;
                if (surface != null) {
                    surface.release();
                }
                this.mImageReaderProxy.close();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int getCapacity() {
        int maxImages;
        synchronized (this.mLock) {
            maxImages = this.mImageReaderProxy.getMaxImages() - this.mOutstandingImages;
        }
        return maxImages;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public int getHeight() {
        int height;
        synchronized (this.mLock) {
            height = this.mImageReaderProxy.getHeight();
        }
        return height;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public int getImageFormat() {
        int imageFormat;
        synchronized (this.mLock) {
            imageFormat = this.mImageReaderProxy.getImageFormat();
        }
        return imageFormat;
    }

    @NonNull
    @VisibleForTesting
    public ImageReaderProxy getImageReaderProxy() {
        ImageReaderProxy imageReaderProxy;
        synchronized (this.mLock) {
            imageReaderProxy = this.mImageReaderProxy;
        }
        return imageReaderProxy;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public int getMaxImages() {
        int maxImages;
        synchronized (this.mLock) {
            maxImages = this.mImageReaderProxy.getMaxImages();
        }
        return maxImages;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    @Nullable
    public Surface getSurface() {
        Surface surface;
        synchronized (this.mLock) {
            surface = this.mImageReaderProxy.getSurface();
        }
        return surface;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public int getWidth() {
        int width;
        synchronized (this.mLock) {
            width = this.mImageReaderProxy.getWidth();
        }
        return width;
    }

    @VisibleForTesting
    public boolean isClosed() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mIsClosed;
        }
        return z;
    }

    public void safeClose() {
        synchronized (this.mLock) {
            try {
                this.mIsClosed = true;
                this.mImageReaderProxy.clearOnImageAvailableListener();
                if (this.mOutstandingImages == 0) {
                    close();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public void setOnImageAvailableListener(@NonNull ImageReaderProxy.OnImageAvailableListener onImageAvailableListener, @NonNull Executor executor) {
        synchronized (this.mLock) {
            this.mImageReaderProxy.setOnImageAvailableListener(new C1002xf721819d(this, onImageAvailableListener, 1), executor);
        }
    }

    public void setOnImageCloseListener(@NonNull ForwardingImageProxy.OnImageCloseListener onImageCloseListener) {
        synchronized (this.mLock) {
            this.mForwardingImageCloseListener = onImageCloseListener;
        }
    }
}
