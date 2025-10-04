package androidx.camera.core.imagecapture;

import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.core.ImageReaderProxyProvider;
import androidx.camera.core.imagecapture.CaptureNode;
import androidx.camera.core.imagecapture.TakePictureManager;
import androidx.camera.core.processing.Edge;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class AutoValue_CaptureNode_In extends CaptureNode.In {
    private final Edge<TakePictureManager.CaptureError> errorEdge;
    private final ImageReaderProxyProvider imageReaderProxyProvider;
    private final int inputFormat;
    private final int outputFormat;
    private final int postviewImageFormat;
    private final Size postviewSize;
    private final Edge<ProcessingRequest> requestEdge;
    private final Size size;
    private final boolean virtualCamera;

    public AutoValue_CaptureNode_In(Size size, int i, int i2, boolean z, @Nullable ImageReaderProxyProvider imageReaderProxyProvider, @Nullable Size size2, int i3, Edge<ProcessingRequest> edge, Edge<TakePictureManager.CaptureError> edge2) {
        if (size != null) {
            this.size = size;
            this.inputFormat = i;
            this.outputFormat = i2;
            this.virtualCamera = z;
            this.imageReaderProxyProvider = imageReaderProxyProvider;
            this.postviewSize = size2;
            this.postviewImageFormat = i3;
            if (edge != null) {
                this.requestEdge = edge;
                if (edge2 != null) {
                    this.errorEdge = edge2;
                    return;
                }
                throw new NullPointerException("Null errorEdge");
            }
            throw new NullPointerException("Null requestEdge");
        }
        throw new NullPointerException("Null size");
    }

    public boolean equals(Object obj) {
        ImageReaderProxyProvider imageReaderProxyProvider;
        Size size;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CaptureNode.In)) {
            return false;
        }
        CaptureNode.In in = (CaptureNode.In) obj;
        if (this.size.equals(in.getSize()) && this.inputFormat == in.getInputFormat() && this.outputFormat == in.getOutputFormat() && this.virtualCamera == in.isVirtualCamera() && ((imageReaderProxyProvider = this.imageReaderProxyProvider) != null ? imageReaderProxyProvider.equals(in.getImageReaderProxyProvider()) : in.getImageReaderProxyProvider() == null) && ((size = this.postviewSize) != null ? size.equals(in.getPostviewSize()) : in.getPostviewSize() == null) && this.postviewImageFormat == in.getPostviewImageFormat() && this.requestEdge.equals(in.getRequestEdge()) && this.errorEdge.equals(in.getErrorEdge())) {
            return true;
        }
        return false;
    }

    @Override // androidx.camera.core.imagecapture.CaptureNode.In
    @NonNull
    public Edge<TakePictureManager.CaptureError> getErrorEdge() {
        return this.errorEdge;
    }

    @Override // androidx.camera.core.imagecapture.CaptureNode.In
    @Nullable
    public ImageReaderProxyProvider getImageReaderProxyProvider() {
        return this.imageReaderProxyProvider;
    }

    @Override // androidx.camera.core.imagecapture.CaptureNode.In
    public int getInputFormat() {
        return this.inputFormat;
    }

    @Override // androidx.camera.core.imagecapture.CaptureNode.In
    public int getOutputFormat() {
        return this.outputFormat;
    }

    @Override // androidx.camera.core.imagecapture.CaptureNode.In
    public int getPostviewImageFormat() {
        return this.postviewImageFormat;
    }

    @Override // androidx.camera.core.imagecapture.CaptureNode.In
    @Nullable
    public Size getPostviewSize() {
        return this.postviewSize;
    }

    @Override // androidx.camera.core.imagecapture.CaptureNode.In
    @NonNull
    public Edge<ProcessingRequest> getRequestEdge() {
        return this.requestEdge;
    }

    @Override // androidx.camera.core.imagecapture.CaptureNode.In
    public Size getSize() {
        return this.size;
    }

    public int hashCode() {
        int i;
        int hashCode;
        int hashCode2 = (((((this.size.hashCode() ^ 1000003) * 1000003) ^ this.inputFormat) * 1000003) ^ this.outputFormat) * 1000003;
        if (this.virtualCamera) {
            i = 1231;
        } else {
            i = 1237;
        }
        int i2 = (hashCode2 ^ i) * 1000003;
        ImageReaderProxyProvider imageReaderProxyProvider = this.imageReaderProxyProvider;
        int i3 = 0;
        if (imageReaderProxyProvider == null) {
            hashCode = 0;
        } else {
            hashCode = imageReaderProxyProvider.hashCode();
        }
        int i4 = (i2 ^ hashCode) * 1000003;
        Size size = this.postviewSize;
        if (size != null) {
            i3 = size.hashCode();
        }
        return ((((((i4 ^ i3) * 1000003) ^ this.postviewImageFormat) * 1000003) ^ this.requestEdge.hashCode()) * 1000003) ^ this.errorEdge.hashCode();
    }

    @Override // androidx.camera.core.imagecapture.CaptureNode.In
    public boolean isVirtualCamera() {
        return this.virtualCamera;
    }

    public String toString() {
        return "In{size=" + this.size + ", inputFormat=" + this.inputFormat + ", outputFormat=" + this.outputFormat + ", virtualCamera=" + this.virtualCamera + ", imageReaderProxyProvider=" + this.imageReaderProxyProvider + ", postviewSize=" + this.postviewSize + ", postviewImageFormat=" + this.postviewImageFormat + ", requestEdge=" + this.requestEdge + ", errorEdge=" + this.errorEdge + "}";
    }
}
