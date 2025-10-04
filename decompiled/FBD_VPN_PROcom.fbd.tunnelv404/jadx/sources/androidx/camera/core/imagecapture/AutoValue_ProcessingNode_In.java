package androidx.camera.core.imagecapture;

import androidx.camera.core.imagecapture.ProcessingNode;
import androidx.camera.core.processing.Edge;
import defpackage.AbstractC0362x4440ab85;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class AutoValue_ProcessingNode_In extends ProcessingNode.In {
    private final Edge<ProcessingNode.InputPacket> edge;
    private final int inputFormat;
    private final int outputFormat;
    private final Edge<ProcessingNode.InputPacket> postviewEdge;

    public AutoValue_ProcessingNode_In(Edge<ProcessingNode.InputPacket> edge, Edge<ProcessingNode.InputPacket> edge2, int i, int i2) {
        if (edge != null) {
            this.edge = edge;
            if (edge2 != null) {
                this.postviewEdge = edge2;
                this.inputFormat = i;
                this.outputFormat = i2;
                return;
            }
            throw new NullPointerException("Null postviewEdge");
        }
        throw new NullPointerException("Null edge");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ProcessingNode.In)) {
            return false;
        }
        ProcessingNode.In in = (ProcessingNode.In) obj;
        if (this.edge.equals(in.getEdge()) && this.postviewEdge.equals(in.getPostviewEdge()) && this.inputFormat == in.getInputFormat() && this.outputFormat == in.getOutputFormat()) {
            return true;
        }
        return false;
    }

    @Override // androidx.camera.core.imagecapture.ProcessingNode.In
    public Edge<ProcessingNode.InputPacket> getEdge() {
        return this.edge;
    }

    @Override // androidx.camera.core.imagecapture.ProcessingNode.In
    public int getInputFormat() {
        return this.inputFormat;
    }

    @Override // androidx.camera.core.imagecapture.ProcessingNode.In
    public int getOutputFormat() {
        return this.outputFormat;
    }

    @Override // androidx.camera.core.imagecapture.ProcessingNode.In
    public Edge<ProcessingNode.InputPacket> getPostviewEdge() {
        return this.postviewEdge;
    }

    public int hashCode() {
        return ((((((this.edge.hashCode() ^ 1000003) * 1000003) ^ this.postviewEdge.hashCode()) * 1000003) ^ this.inputFormat) * 1000003) ^ this.outputFormat;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("In{edge=");
        sb.append(this.edge);
        sb.append(", postviewEdge=");
        sb.append(this.postviewEdge);
        sb.append(", inputFormat=");
        sb.append(this.inputFormat);
        sb.append(", outputFormat=");
        return AbstractC0362x4440ab85.m2935x1db10c9d(sb, "}", this.outputFormat);
    }
}
