package androidx.camera.core.imagecapture;

import androidx.annotation.NonNull;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.imagecapture.ProcessingNode;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class AutoValue_ProcessingNode_InputPacket extends ProcessingNode.InputPacket {
    private final ImageProxy imageProxy;
    private final ProcessingRequest processingRequest;

    public AutoValue_ProcessingNode_InputPacket(ProcessingRequest processingRequest, ImageProxy imageProxy) {
        if (processingRequest != null) {
            this.processingRequest = processingRequest;
            if (imageProxy != null) {
                this.imageProxy = imageProxy;
                return;
            }
            throw new NullPointerException("Null imageProxy");
        }
        throw new NullPointerException("Null processingRequest");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ProcessingNode.InputPacket)) {
            return false;
        }
        ProcessingNode.InputPacket inputPacket = (ProcessingNode.InputPacket) obj;
        if (this.processingRequest.equals(inputPacket.getProcessingRequest()) && this.imageProxy.equals(inputPacket.getImageProxy())) {
            return true;
        }
        return false;
    }

    @Override // androidx.camera.core.imagecapture.ProcessingNode.InputPacket
    @NonNull
    public ImageProxy getImageProxy() {
        return this.imageProxy;
    }

    @Override // androidx.camera.core.imagecapture.ProcessingNode.InputPacket
    @NonNull
    public ProcessingRequest getProcessingRequest() {
        return this.processingRequest;
    }

    public int hashCode() {
        return ((this.processingRequest.hashCode() ^ 1000003) * 1000003) ^ this.imageProxy.hashCode();
    }

    public String toString() {
        return "InputPacket{processingRequest=" + this.processingRequest + ", imageProxy=" + this.imageProxy + "}";
    }
}
