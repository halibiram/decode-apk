package androidx.camera.core.processing;

import androidx.annotation.NonNull;
import androidx.camera.core.processing.SurfaceProcessorNode;
import androidx.camera.core.processing.util.OutConfig;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class AutoValue_SurfaceProcessorNode_In extends SurfaceProcessorNode.In {
    private final List<OutConfig> outConfigs;
    private final SurfaceEdge surfaceEdge;

    public AutoValue_SurfaceProcessorNode_In(SurfaceEdge surfaceEdge, List<OutConfig> list) {
        if (surfaceEdge != null) {
            this.surfaceEdge = surfaceEdge;
            if (list != null) {
                this.outConfigs = list;
                return;
            }
            throw new NullPointerException("Null outConfigs");
        }
        throw new NullPointerException("Null surfaceEdge");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SurfaceProcessorNode.In)) {
            return false;
        }
        SurfaceProcessorNode.In in = (SurfaceProcessorNode.In) obj;
        if (this.surfaceEdge.equals(in.getSurfaceEdge()) && this.outConfigs.equals(in.getOutConfigs())) {
            return true;
        }
        return false;
    }

    @Override // androidx.camera.core.processing.SurfaceProcessorNode.In
    @NonNull
    public List<OutConfig> getOutConfigs() {
        return this.outConfigs;
    }

    @Override // androidx.camera.core.processing.SurfaceProcessorNode.In
    @NonNull
    public SurfaceEdge getSurfaceEdge() {
        return this.surfaceEdge;
    }

    public int hashCode() {
        return ((this.surfaceEdge.hashCode() ^ 1000003) * 1000003) ^ this.outConfigs.hashCode();
    }

    public String toString() {
        return "In{surfaceEdge=" + this.surfaceEdge + ", outConfigs=" + this.outConfigs + "}";
    }
}
