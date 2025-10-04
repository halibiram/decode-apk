package androidx.camera.core;

import androidx.annotation.NonNull;
import androidx.camera.core.SurfaceOutput;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class AutoValue_SurfaceOutput_Event extends SurfaceOutput.Event {
    private final int eventCode;
    private final SurfaceOutput surfaceOutput;

    public AutoValue_SurfaceOutput_Event(int i, SurfaceOutput surfaceOutput) {
        this.eventCode = i;
        if (surfaceOutput != null) {
            this.surfaceOutput = surfaceOutput;
            return;
        }
        throw new NullPointerException("Null surfaceOutput");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SurfaceOutput.Event)) {
            return false;
        }
        SurfaceOutput.Event event = (SurfaceOutput.Event) obj;
        if (this.eventCode == event.getEventCode() && this.surfaceOutput.equals(event.getSurfaceOutput())) {
            return true;
        }
        return false;
    }

    @Override // androidx.camera.core.SurfaceOutput.Event
    public int getEventCode() {
        return this.eventCode;
    }

    @Override // androidx.camera.core.SurfaceOutput.Event
    @NonNull
    public SurfaceOutput getSurfaceOutput() {
        return this.surfaceOutput;
    }

    public int hashCode() {
        return ((this.eventCode ^ 1000003) * 1000003) ^ this.surfaceOutput.hashCode();
    }

    public String toString() {
        return "Event{eventCode=" + this.eventCode + ", surfaceOutput=" + this.surfaceOutput + "}";
    }
}
