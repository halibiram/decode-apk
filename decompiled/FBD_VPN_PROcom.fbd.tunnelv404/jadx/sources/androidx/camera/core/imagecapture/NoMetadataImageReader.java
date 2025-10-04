package androidx.camera.core.imagecapture;

import android.util.Pair;
import android.util.Size;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.SettableImageProxy;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.camera.core.impl.TagBundle;
import androidx.camera.core.internal.CameraCaptureResultImageInfo;
import androidx.camera.core.streamsharing.VirtualCameraCaptureResult;
import androidx.core.util.Preconditions;
import defpackage.C1002xf721819d;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class NoMetadataImageReader implements ImageReaderProxy {

    @Nullable
    private ProcessingRequest mPendingRequest;

    @NonNull
    private final ImageReaderProxy mWrappedImageReader;

    public NoMetadataImageReader(@NonNull ImageReaderProxy imageReaderProxy) {
        this.mWrappedImageReader = imageReaderProxy;
    }

    @Nullable
    private ImageProxy createImageProxyWithEmptyMetadata(@Nullable ImageProxy imageProxy) {
        TagBundle create;
        if (imageProxy == null) {
            return null;
        }
        if (this.mPendingRequest == null) {
            create = TagBundle.emptyBundle();
        } else {
            create = TagBundle.create(new Pair(this.mPendingRequest.getTagBundleKey(), this.mPendingRequest.getStageIds().get(0)));
        }
        this.mPendingRequest = null;
        return new SettableImageProxy(imageProxy, new Size(imageProxy.getWidth(), imageProxy.getHeight()), new CameraCaptureResultImageInfo(new VirtualCameraCaptureResult(create, imageProxy.getImageInfo().getTimestamp())));
    }

    public /* synthetic */ void lambda$setOnImageAvailableListener$0(ImageReaderProxy.OnImageAvailableListener onImageAvailableListener, ImageReaderProxy imageReaderProxy) {
        onImageAvailableListener.onImageAvailable(this);
    }

    public void acceptProcessingRequest(@NonNull ProcessingRequest processingRequest) {
        boolean z;
        if (this.mPendingRequest == null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z, "Pending request should be null");
        this.mPendingRequest = processingRequest;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    @Nullable
    public ImageProxy acquireLatestImage() {
        return createImageProxyWithEmptyMetadata(this.mWrappedImageReader.acquireLatestImage());
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    @Nullable
    public ImageProxy acquireNextImage() {
        return createImageProxyWithEmptyMetadata(this.mWrappedImageReader.acquireNextImage());
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public void clearOnImageAvailableListener() {
        this.mWrappedImageReader.clearOnImageAvailableListener();
    }

    public void clearProcessingRequest() {
        this.mPendingRequest = null;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public void close() {
        this.mWrappedImageReader.close();
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public int getHeight() {
        return this.mWrappedImageReader.getHeight();
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public int getImageFormat() {
        return this.mWrappedImageReader.getImageFormat();
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public int getMaxImages() {
        return this.mWrappedImageReader.getMaxImages();
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    @Nullable
    public Surface getSurface() {
        return this.mWrappedImageReader.getSurface();
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public int getWidth() {
        return this.mWrappedImageReader.getWidth();
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public void setOnImageAvailableListener(@NonNull ImageReaderProxy.OnImageAvailableListener onImageAvailableListener, @NonNull Executor executor) {
        this.mWrappedImageReader.setOnImageAvailableListener(new C1002xf721819d(this, onImageAvailableListener, 0), executor);
    }
}
